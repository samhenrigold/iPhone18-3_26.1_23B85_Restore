uint64_t sub_1CF03F1A8()
{

  return swift_deallocObject();
}

void sub_1CF03F204(uint64_t a1, void *a2, void *a3, char *a4, uint64_t a5, void (*a6)(uint64_t, char *, void (*)(), void *), uint64_t a7)
{
  v81[1] = a7;
  v82 = a6;
  v12 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = sub_1CF9E5268();
  v14 = *(v13 - 8);
  *&v15 = MEMORY[0x1EEE9AC00](v13).n128_u64[0];
  v17 = v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || a2)
  {
    if (a3)
    {
      [a3 unregisterLifetimeExtensionForObject_];
    }

    v45 = &unk_1F4C7FA50;
    if (a2)
    {
      v46 = a2;
    }

    else
    {
      sub_1CF9E50E8();
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF2F1F24(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
      sub_1CF9E57D8();
      v46 = sub_1CF9E50D8();
      (*(v14 + 8))(v17, v13);
    }

    v87 = 0;
    v88 = 0xE000000000000000;
    v47 = a2;
    sub_1CF9E7948();
    v88, v48, v49, v50, v51, v52, v53, v54;
    v87 = 0x746172656D756E65;
    v88 = 0xEF20726F6620726FLL;
    v55 = NSFileProviderItemIdentifier.description.getter(a5);
    v57 = v56;
    MEMORY[0x1D3868CC0](v55);
    v57, v58, v59, v60, v61, v62, v63, v64;
    v65 = v88;
    v66 = [*&a4[OBJC_IVAR____TtC18FileProviderDaemonP33_CD7CE1CB66854C72A9E33E2FB2B98DFB26FPFileTreeLifetimeExtender_requestor] pid];
    v67 = type metadata accessor for FPXPCNonSanitizingErrorProxy();
    v68 = objc_allocWithZone(v67);
    v69 = sub_1CF9E57E8();
    v70 = sub_1CF9E6888();
    v65, v71, v72, v73, v74, v75, v76, v77;
    v86.receiver = v68;
    v86.super_class = v67;
    v78 = objc_msgSendSuper2(&v86, sel_initWithConnection_protocol_orError_name_requestPid_, 0, &unk_1F4C7FA50, v69, v70, v66);

    v85 = &unk_1F4C7FA50;
    v79 = swift_dynamicCastObjCProtocolUnconditional();
    v80 = v78;
    v82(v79, a4, nullsub_1, 0);
  }

  else
  {
    v84 = &unk_1F4C66D40;
    v18 = swift_dynamicCastObjCProtocolUnconditional();
    v87 = 0x746172656D756E65;
    v88 = 0xEB0000000020726FLL;
    swift_unknownObjectRetain_n();
    v19 = &unk_1F4C7FA50;
    v20 = NSFileProviderItemIdentifier.description.getter(a5);
    v22 = v21;
    MEMORY[0x1D3868CC0](v20);
    v22, v23, v24, v25, v26, v27, v28, v29;
    v30 = v88;
    v31 = objc_allocWithZone(MEMORY[0x1E69674B0]);
    v32 = sub_1CF9E6888();
    v30, v33, v34, v35, v36, v37, v38, v39;
    v40 = [v31 initWithConnection:v18 protocol:v19 orError:0 name:v32 requestPid:0];
    swift_unknownObjectRelease();

    v83 = &unk_1F4C7FA50;
    v41 = swift_dynamicCastObjCProtocolUnconditional();
    v42 = swift_allocObject();
    v42[2] = v41;
    v42[3] = a3;
    v42[4] = a4;
    swift_unknownObjectRetain();
    v43 = a4;
    v44 = v40;
    v82(v41, v43, sub_1CF041A58, v42);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1CF03F6C8()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void sub_1CF03F710(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_1CF9E5CF8() - 8);
  v10 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF03FD10(a1, a2, a3, a4, *(v4 + 16), (v4 + v10), *(v4 + v11), *(v4 + v11 + 8), *(v4 + ((v11 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((((v11 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_1CF03F7F4()
{
  v1 = sub_1CF9E6068();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - v9;
  v11 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_opt_self() defaultStore];
  if (*(v0 + qword_1EDEBBE38) == 1)
  {
  }

  else
  {
    v34 = v14;
    sub_1CF042760();
    if ((sub_1CF03B9D0() & 1) != 0 || (v15 = qword_1EC4BFAF0, swift_beginAccess(), v16 = *(*(v0 + v15) + 16), v16 >= [v34 sqlDatabaseOnNextDurableFlushTriggerThreshold]))
    {
      v33 = v0;
      if (qword_1EDEAE980 != -1)
      {
        swift_once();
      }

      v17 = qword_1EDEBBE40;
      (*(v2 + 56))(v10, 1, 1, v1);
      sub_1CEFCCBDC(v10, v7, &unk_1EC4BED20, &unk_1CFA00700);
      v18 = *(v2 + 48);
      if (v18(v7, 1, v1) == 1)
      {
        v19 = v17;
        sub_1CF9E6048();
        if (v18(v7, 1, v1) != 1)
        {
          sub_1CEFCCC44(v7, &unk_1EC4BED20, &unk_1CFA00700);
        }
      }

      else
      {
        (*(v2 + 32))(v4, v7, v1);
      }

      v32 = 0x80000001CFA45480;
      (*(v2 + 16))(v13, v4, v1);
      *&v13[*(v11 + 20)] = v17;
      v20 = &v13[*(v11 + 24)];
      *v20 = "SQLDB: Force flush of database";
      *(v20 + 1) = 30;
      v20[16] = 2;
      v21 = v17;
      v22 = sub_1CF9E7468();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1CF9FA450;
      *(v23 + 56) = MEMORY[0x1E69E6158];
      *(v23 + 64) = sub_1CEFD51C4();
      *(v23 + 32) = 0xD00000000000001CLL;
      *(v23 + 40) = v32;
      sub_1CF9E6028(v22, &dword_1CEFC7000, v21, "SQLDB: Force flush of database", 30, 2, v13, "%s", 2);
      v23, v24, v25, v26, v27, v28, v29, v30;
      (*(v2 + 8))(v4, v1);
      sub_1CEFCCC44(v10, &unk_1EC4BED20, &unk_1CFA00700);
      v31 = *(v33 + qword_1EDEBBDB0);
      [v31 forceBatchStart];
      [v31 flush];
      sub_1CF9E7458();
      sub_1CF9E6038();

      sub_1CEFD5278(v13, type metadata accessor for Signpost);
    }

    else
    {
    }
  }
}

void sub_1CF03FD10(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  v89 = a4;
  v90 = a8;
  v87 = a3;
  v88 = a7;
  v86 = a6;
  v91 = a1;
  v12 = sub_1CF9E5CF8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a5 + 328);
  v17 = *(a5 + 336);
  v92 = a5;
  v18 = qword_1EDEA5AD8;
  v19 = v16;
  v20 = v17;
  if (v18 != -1)
  {
    swift_once();
  }

  v21 = sub_1CF040418(v16, v17, qword_1EDEBB820, *algn_1EDEBB828);

  if (v21)
  {
    (*(v13 + 16))(&v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v86, v12);
    v22 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v23 = (v14 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
    v24 = (v23 + 23) & 0xFFFFFFFFFFFFFFF8;
    v25 = (v24 + 23) & 0xFFFFFFFFFFFFFFF8;
    v26 = swift_allocObject();
    (*(v13 + 32))(v26 + v22, v15, v12);
    v27 = (v26 + v23);
    v28 = v88;
    v30 = v89;
    v29 = v90;
    *v27 = v87;
    v27[1] = v30;
    v31 = (v26 + v24);
    *v31 = v28;
    v31[1] = v29;
    *(v26 + v25) = v92;
    *(v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8)) = a2;
    v97 = sub_1CF2F4554;
    v98 = v26;
    aBlock = MEMORY[0x1E69E9820];
    v94 = 1107296256;
    v95 = sub_1CF9285C4;
    v96 = &block_descriptor_156;
    v32 = _Block_copy(&aBlock);

    v33 = a2;

    [v91 currentSyncAnchorWithCompletion_];
    _Block_release(v32);
  }

  else
  {
    v34 = *(v92 + 328);
    v84 = a2;
    v85 = a9;
    v82 = v12;
    v83 = a10;
    if (v34)
    {
      v35 = *(v13 + 16);
      v36 = v86;
      v86 = v34;
      v35(&v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v36, v12);
      v37 = (*(v13 + 80) + 16) & ~*(v13 + 80);
      v38 = (v14 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
      v39 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
      v40 = (v39 + 15) & 0xFFFFFFFFFFFFFFF8;
      v41 = (v40 + 15) & 0xFFFFFFFFFFFFFFF8;
      v42 = (v41 + 23) & 0xFFFFFFFFFFFFFFF8;
      v43 = (v42 + 23) & 0xFFFFFFFFFFFFFFF8;
      v44 = swift_allocObject();
      (*(v13 + 32))(v44 + v37, v15, v82);
      *(v44 + v38) = v92;
      v45 = v85;
      *(v44 + v39) = v85;
      v46 = v83;
      *(v44 + v40) = v83;
      v47 = (v44 + v41);
      v48 = v88;
      v49 = v89;
      *v47 = v87;
      v47[1] = v49;
      v50 = (v44 + v42);
      v51 = v90;
      *v50 = v48;
      v50[1] = v51;
      v52 = v84;
      *(v44 + v43) = v84;
      v97 = sub_1CF2F443C;
      v98 = v44;
      aBlock = MEMORY[0x1E69E9820];
      v94 = 1107296256;
      v95 = sub_1CF9284C8;
      v96 = &block_descriptor_150;
      v53 = _Block_copy(&aBlock);
      v54 = v46;

      v55 = v52;
      v56 = v86;
      v57 = v45;

      [v91 enumerateItemsFromPage:v56 suggestedPageSize:200 reply:v53];
      _Block_release(v53);
    }

    else
    {
      v58 = *(v92 + 336);
      if (v58)
      {
        v59 = v58;
        v58 = sub_1CF9E5B88();
        v61 = v60;
      }

      else
      {
        v61 = 0xC000000000000000;
      }

      v81 = sub_1CF9E5B48();
      sub_1CEFE4714(v58, v61);
      (*(v13 + 16))(&v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v86, v12);
      v62 = (*(v13 + 80) + 16) & ~*(v13 + 80);
      v63 = (v14 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
      v64 = (v63 + 15) & 0xFFFFFFFFFFFFFFF8;
      v65 = (v64 + 15) & 0xFFFFFFFFFFFFFFF8;
      v66 = (v65 + 15) & 0xFFFFFFFFFFFFFFF8;
      v67 = (v66 + 23) & 0xFFFFFFFFFFFFFFF8;
      v68 = swift_allocObject();
      (*(v13 + 32))(v68 + v62, v15, v82);
      *(v68 + v63) = v92;
      v69 = v84;
      *(v68 + v64) = v85;
      v70 = v83;
      *(v68 + v65) = v83;
      v71 = (v68 + v66);
      v72 = v88;
      v74 = v89;
      v73 = v90;
      *v71 = v87;
      v71[1] = v74;
      v75 = (v68 + v67);
      *v75 = v72;
      v75[1] = v73;
      *(v68 + ((v67 + 23) & 0xFFFFFFFFFFFFFFF8)) = v69;
      v97 = sub_1CF0408E4;
      v98 = v68;
      aBlock = MEMORY[0x1E69E9820];
      v94 = 1107296256;
      v95 = sub_1CF0407BC;
      v96 = &block_descriptor_144;
      v76 = _Block_copy(&aBlock);
      v77 = v70;

      v78 = v69;
      v79 = v85;

      v80 = v81;
      [v91 enumerateChangesFromToken:v81 suggestedBatchSize:200 reply:v76];
      _Block_release(v76);
    }
  }
}

uint64_t sub_1CF040338()
{
  v1 = sub_1CF9E5CF8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (((((((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF040418(void *a1, void *a2, void *a3, void *a4)
{
  if (a1)
  {
    if (!a3)
    {
      return 0;
    }

    v7 = a3;
    v8 = a1;
    v9 = sub_1CF9E5B88();
    v11 = v10;
    v12 = sub_1CF9E5B88();
    v14 = v13;
    v15 = sub_1CF328660(v9, v11, v12, v13);
    sub_1CEFE4714(v12, v14);
    sub_1CEFE4714(v9, v11);

    if (!v15)
    {
      return 0;
    }
  }

  else if (a3)
  {
    return 0;
  }

  if (a2)
  {
    if (a4)
    {
      v16 = a4;
      v17 = a2;
      v18 = sub_1CF9E5B88();
      v20 = v19;
      v21 = sub_1CF9E5B88();
      v23 = v22;
      v24 = sub_1CF328660(v18, v20, v21, v22);
      sub_1CEFE4714(v21, v23);
      sub_1CEFE4714(v18, v20);

      if (v24)
      {
        return 1;
      }
    }
  }

  else if (!a4)
  {
    return 1;
  }

  return 0;
}

void OUTLINED_FUNCTION_0_0(float a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a3 = a1;
  *(a3 + 4) = a4;
  *(a3 + 12) = 2112;
  *(a3 + 14) = v4;
  *(a3 + 22) = 2080;
}

void OUTLINED_FUNCTION_2_6(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

void OUTLINED_FUNCTION_14(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

unint64_t sub_1CF0406C8()
{
  sub_1CF9E7948();
  0xE000000000000000, v1, v2, v3, v4, v5, v6, v7;
  v8 = NSFileProviderItemIdentifier.description.getter(*(v0 + OBJC_IVAR____TtC18FileProviderDaemonP33_CD7CE1CB66854C72A9E33E2FB2B98DFB26FPFileTreeLifetimeExtender_itemIdentifier));
  v10 = v9;
  MEMORY[0x1D3868CC0](v8);
  v10, v11, v12, v13, v14, v15, v16, v17;
  MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
  v18 = [*(v0 + OBJC_IVAR____TtC18FileProviderDaemonP33_CD7CE1CB66854C72A9E33E2FB2B98DFB26FPFileTreeLifetimeExtender_requestor) description];
  v19 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v21 = v20;

  MEMORY[0x1D3868CC0](v19, v21);
  v21, v22, v23, v24, v25, v26, v27, v28;
  return 0xD000000000000014;
}

void sub_1CF0407BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7)
{
  v11 = *(a1 + 32);
  sub_1CEFD57E0(0, &qword_1EDEAB520, 0x1E6967388);
  v12 = sub_1CF9E6D48();
  sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
  v13 = sub_1CF9E6D48();

  v30 = a5;
  v14 = a6;
  v15 = a7;
  v11(v12, v13, a4, a5, a6, a7);

  v12, v16, v17, v18, v19, v20, v21, v22;
  v13, v23, v24, v25, v26, v27, v28, v29;
}

uint64_t sub_1CF0408E4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v10 = a3;
  v13 = *(sub_1CF9E5CF8() - 8);
  v14 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v15 = (*(v13 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF040A10(a1, a2, v10, a4, a5, a6, v6 + v14, *(v6 + v15), *(v6 + v16), *(v6 + v17), *(v6 + v18), *(v6 + v18 + 8), *(v6 + ((v18 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v6 + ((v18 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v6 + ((((v18 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1CF040A10(uint64_t a1, uint64_t a2, int a3, void *a4, void *a5, void *a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  v45 = a4;
  v46 = a2;
  v47 = a3;
  v43 = a15;
  v44 = a1;
  v41 = a13;
  v42 = a14;
  v40 = a11;
  v18 = sub_1CF9E5CF8();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E5CC8();
  sub_1CF9E5C28();
  v23 = v22;
  (*(v19 + 8))(v21, v18);
  v48 = *(a8 + 160);
  v39 = [a9 log];
  v24 = swift_allocObject();
  *(v24 + 16) = a8;
  *(v24 + 24) = a5;
  v26 = v40;
  v25 = v41;
  *(v24 + 32) = a10;
  *(v24 + 40) = v26;
  *(v24 + 48) = a12;
  *(v24 + 56) = a6;
  v28 = v42;
  v27 = v43;
  *(v24 + 64) = v25;
  *(v24 + 72) = v28;
  v29 = v44;
  v30 = v45;
  *(v24 + 80) = v27;
  *(v24 + 88) = v30;
  v31 = v46;
  *(v24 + 96) = v29;
  *(v24 + 104) = v31;
  *(v24 + 112) = v47;
  *(v24 + 120) = v23;

  v32 = a5;
  v33 = a10;

  v34 = a6;
  v35 = v30;

  v36 = v27;
  v37 = v39;
  sub_1CF01001C(v39, "fetchEventStream(domainVersion:completion:)", 43, 2, sub_1CF040CAC, v24);
}

uint64_t sub_1CF040C28()
{

  *(v0 + 96), v1, v2, v3, v4, v5, v6, v7;
  *(v0 + 104), v8, v9, v10, v11, v12, v13, v14;

  return swift_deallocObject();
}

void sub_1CF040CF8(uint64_t a1, void *a2, void *a3, void (*a4)(void), double a5, uint64_t a6, void *a7, char *a8, void *a9, uint64_t a10, void *a11, unint64_t a12, unint64_t a13, char a14)
{
  v131 = a8;
  v21 = sub_1CF9E5FF8();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = v129 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = a1;
  sub_1CF041B2C(a2, a3);
  a4();
  if (!a7)
  {
    v137 = v21;
    v50 = a11;
    if (!a11)
    {
      if (qword_1EDEA5AD8 != -1)
      {
        goto LABEL_54;
      }

      goto LABEL_12;
    }

    v52 = v133;
    v53 = *(v133 + 328);
    v54 = *(v133 + 336);
    *(v133 + 328) = 0;
    *(v52 + 336) = a11;
    while (1)
    {
      v62 = v50;

      v129[1] = a9;
      v130 = a2;
      if (a12 >> 62)
      {
LABEL_51:
        v63 = sub_1CF9E7818();
      }

      else
      {
        v63 = *((a12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      swift_retain_n();
      v138 = a12;
      if (v63)
      {
        v55 = 0;
        v135 = a12 & 0xFFFFFFFFFFFFFF8;
        v136 = a12 & 0xC000000000000001;
        v132 = (v22 + 8);
        v134 = v63;
        a2 = MEMORY[0x1E6969080];
        do
        {
          if (v136)
          {
            v65 = MEMORY[0x1D3869C30](v55, a12);
            v66 = v55 + 1;
            if (__OFADD__(v55, 1))
            {
LABEL_30:
              __break(1u);
              break;
            }
          }

          else
          {
            if (v55 >= *(v135 + 16))
            {
              __break(1u);
              goto LABEL_51;
            }

            v65 = *(a12 + 8 * v55 + 32);
            v66 = v55 + 1;
            if (__OFADD__(v55, 1))
            {
              goto LABEL_30;
            }
          }

          v67 = v65;
          v68 = [v67 extendedAttributes];
          if (v68)
          {
            v69 = v68;
            v70 = sub_1CF9E6638();

            v71 = v133;

            sub_1CF045428(v70, v71);
            v70, v72, v73, v74, v75, v76, v77, v78;

            v22 = sub_1CF9E6618();

            [v67 setExtendedAttributes_];
          }

          v79 = v137;
          if ([v67 isFlattenedPackage])
          {
            v80 = [v67 filename];
            if (!v80)
            {
              __break(1u);
LABEL_56:
              type metadata accessor for FPXPCAutomaticErrorProxyTimeout(0);
              v139 = v55;
              sub_1CF9E80C8();
              __break(1u);
              return;
            }

            v22 = v80;
            v81 = [v80 stringByDeletingPathExtension];

            if (!v81)
            {
              _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
              v22 = v82;
              v81 = sub_1CF9E6888();
              v22, v83, v84, v85, v86, v87, v88, v89;
            }

            [v67 setFilename_];

            sub_1CF9E5FA8();
            v64 = sub_1CF9E5F38();
            (*v132)(v24, v79);
            [v67 setContentType_];
          }

          ++v55;
          a12 = v138;
        }

        while (v66 != v134);
      }

      if (a13 >> 62)
      {
        v22 = sub_1CF9E7818();
      }

      else
      {
        v22 = *((a13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      a9 = v130;
      v24 = v131;
      v90 = MEMORY[0x1E69E7CC0];
      if (!v22)
      {
        goto LABEL_43;
      }

      v139 = MEMORY[0x1E69E7CC0];
      sub_1CF680D2C(0, v22 & ~(v22 >> 63), 0);
      if ((v22 & 0x8000000000000000) == 0)
      {
        break;
      }

      __break(1u);
LABEL_54:
      swift_once();
LABEL_12:
      v59 = qword_1EDEBB820;
      v50 = *algn_1EDEBB828;
      v60 = v133;
      v53 = *(v133 + 328);
      v54 = *(v133 + 336);
      *(v133 + 328) = qword_1EDEBB820;
      *(v60 + 336) = v50;
      v61 = v59;
    }

    v91 = 0;
    v90 = v139;
    do
    {
      if ((a13 & 0xC000000000000001) != 0)
      {
        v92 = MEMORY[0x1D3869C30](v91, a13);
      }

      else
      {
        v92 = *(a13 + 8 * v91 + 32);
      }

      v93 = v92;
      v94 = [v92 identifier];

      v139 = v90;
      v96 = *v90->tree;
      v95 = *v90->tester;
      if (v96 >= v95 >> 1)
      {
        sub_1CF680D2C((v95 > 1), v96 + 1, 1);
        v90 = v139;
      }

      ++v91;
      *v90->tree = v96 + 1;
      *(&v90[1].super.isa + v96) = v94;
    }

    while (v22 != v91);
    a9 = v130;
    v24 = v131;
    a12 = v138;
LABEL_43:
    v139 = a12;
    v140 = v90;
    v141 = a14 & 1;
    v142 = a5;
    v143 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEE00, &qword_1CF9FE720);
    v97 = *(type metadata accessor for SyncState(0) - 8);
    v98 = a12;
    v99 = *(v97 + 72);
    v100 = (*(v97 + 80) + 32) & ~*(v97 + 80);
    v101 = swift_allocObject();
    *(v101 + 16) = xmmword_1CF9FA440;
    v102 = (v101 + v100);
    v104 = *(v133 + 328);
    v103 = *(v133 + 336);
    *v102 = v104;
    v102[1] = v103;
    swift_storeEnumTagMultiPayload();
    v105 = v103;

    v106 = v104;
    *(v102 + v99) = [a9 domainVersion];
    swift_storeEnumTagMultiPayload();
    (v24)(&v139, v101);
    v90, v107, v108, v109, v110, v111, v112, v113;
    v98, v114, v115, v116, v117, v118, v119, v120;
    v101, v121, v122, v123, v124, v125, v126, v127;
    return;
  }

  _s3__C4CodeOMa_1(0);
  v139 = -1002;
  v25 = a7;
  sub_1CF2F1F24(&qword_1EDEA3590, _s3__C4CodeOMa_1, &unk_1CF9F77C0);
  if (sub_1CF9E5658())
  {
    if (qword_1EDEA5AD8 != -1)
    {
      swift_once();
    }

    v26 = qword_1EDEBB820;
    v27 = *algn_1EDEBB828;
    v28 = v133;
    v29 = *(v133 + 328);
    v30 = *(v133 + 336);
    *(v133 + 328) = qword_1EDEBB820;
    *(v28 + 336) = v27;
    v31 = v26;
    v32 = v27;

    v139 = a7;
    v140 = 0;
    v141 = 0;
    v142 = 0.0;
    v143 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEE00, &qword_1CF9FE720);
    v33 = *(type metadata accessor for SyncState(0) - 8);
    v34 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1CF9FA450;
    v36 = (v35 + v34);
    v37 = *(v28 + 328);
    v38 = *(v28 + 336);
    *v36 = v37;
    v36[1] = v38;
    swift_storeEnumTagMultiPayload();
    v39 = a7;
    v40 = v38;
    v41 = v37;
    (v131)(&v139, v35);
    v35, v42, v43, v44, v45, v46, v47, v48;

    v49 = a7;
  }

  else
  {
    v55 = *(a10 + OBJC_IVAR____TtC18FileProviderDaemonP33_CD7CE1CB66854C72A9E33E2FB2B98DFB26FPFileTreeLifetimeExtender_timeoutState);
    if (v55)
    {
      if (v55 == 1)
      {
        sub_1CF2F462C();
        v57 = swift_allocError();
        *v56 = 0;
        *(v56 + 8) = 0;
        v58 = -2;
      }

      else
      {
        if (v55 != 2)
        {
          goto LABEL_56;
        }

        sub_1CF2F462C();
        v57 = swift_allocError();
        *v56 = 0;
        *(v56 + 8) = 0;
        v58 = -3;
      }

      *(v56 + 16) = v58;
    }

    else
    {
      v128 = a7;
      v57 = a7;
    }

    v139 = v57;
    v140 = 0;
    v141 = 0;
    v142 = 0.0;
    v143 = 1;
    (v131)(&v139, MEMORY[0x1E69E7CC0]);

    v49 = v57;
  }
}

void sub_1CF0415C8(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1CF9E6118();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = MEMORY[0x1EEE9AC00](v10).n128_u64[0];
  v13 = aBlock - v12;
  v14 = [a1 domainVersion];
  LOBYTE(a2) = sub_1CF04217C(v14, a2);

  if (a2)
  {
    v15 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v16 = sub_1CF9E6108();
    v17 = sub_1CF9E7288();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1CEFC7000, v16, v17, "found new domain version, setting new domainUserInfo", v18, 2u);
      MEMORY[0x1D386CDC0](v18, -1, -1);
    }

    v19 = *(v7 + 8);
    v19(v13, v6);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong && (v21 = Strong, v22 = [Strong provider], v21, v22))
    {
      v23 = [a1 domainUserInfo];
      if (v23)
      {
        v24 = v23;
        v25 = sub_1CF9E6638();

        v26 = sub_1CF9E6618();
        v25, v27, v28, v29, v30, v31, v32, v33;
      }

      else
      {
        v26 = 0;
      }

      v38 = *(v3 + 280);
      v39 = [v38 pathComponents];
      v40 = sub_1CF9E6D48();

      v41 = *v40->tree;
      v40, v42, v43, v44, v45, v46, v47, v48;
      if (v41 < 2)
      {
        v49 = *MEMORY[0x1E6967178];
      }

      else
      {
        v49 = [v38 lastPathComponent];
        if (!v49)
        {
          _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v51 = v50;
          v49 = sub_1CF9E6888();
          v51, v52, v53, v54, v55, v56, v57, v58;
        }
      }

      v59 = swift_allocObject();
      *(v59 + 16) = v22;
      aBlock[4] = sub_1CF2F6360;
      aBlock[5] = v59;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1CF00A468;
      aBlock[3] = &block_descriptor_838;
      v60 = _Block_copy(aBlock);
      v61 = v22;

      [v61 setDomainUserInfo:v26 forDomainIdentifier:v49 completionHandler:v60];
      _Block_release(v60);
    }

    else
    {
      v34 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v35 = sub_1CF9E6108();
      v36 = sub_1CF9E72A8();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_1CEFC7000, v35, v36, "Error setting new domainUserInfo, provider was nil", v37, 2u);
        MEMORY[0x1D386CDC0](v37, -1, -1);
      }

      v19(v9, v6);
    }
  }
}

uint64_t sub_1CF041A1C()
{

  return swift_deallocObject();
}

id sub_1CF041A58()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  result = [*(v0 + 16) invalidate];
  if (v1)
  {

    return [v1 unregisterLifetimeExtensionForObject_];
  }

  return result;
}

uint64_t objectdestroy_146Tm(void (*a1)(void))
{

  a1(*(v1 + 32));

  return swift_deallocObject();
}

void sub_1CF041B2C(void *a1, void *a2)
{
  v5 = sub_1CF9E6118();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v110 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CF9E64A8();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = (&v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = v2[20];
  *v13 = v14;
  (*(v10 + 104))(v13, *MEMORY[0x1E69E8020], v9, v11);
  v15 = v14;
  LOBYTE(v14) = sub_1CF9E64D8();
  (*(v10 + 8))(v13, v9);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    return;
  }

  if (a1)
  {
    v16 = a1;
    sub_1CF0415C8(v16, a2);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong || (v18 = Strong, v19 = [Strong provider], v18, !v19) || (v20 = objc_msgSend(v19, sel_descriptor), v19, v21 = objc_msgSend(v20, sel_appliesChangesAtomically), v20, (v21 & 1) == 0))
    {

      return;
    }

    v22 = v2[40];
    if (v22 != 1)
    {
      v24 = v2[37];
      v23 = v2[38];
      v25 = v2[39];

      if ([v16 extensionPid] == v24)
      {
        if (v23 < [v16 sequenceNumber])
        {
          sub_1CF24D114(v24, v23, v25, v22, v30, v31, v32, v33);
          v34 = [v16 extensionPid];
          v35 = [v16 sequenceNumber];
          v36 = [v16 callDescription];
          if (v36)
          {
            v37 = v36;
            v38 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v40 = v39;
          }

          else
          {

            v38 = 0;
            v40 = 0;
          }

          v50 = v2[37];
          v51 = v2[38];
          v52 = v2[39];
          v53 = v2[40];
          v2[37] = v34;
          v2[38] = v35;
LABEL_18:
          v2[39] = v38;
          v2[40] = v40;
          sub_1CF24D114(v50, v51, v52, v53, v41, v42, v43, v44);
          return;
        }

        v54 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        sub_1CF2F634C(v24, v23, v25, v22);
        v55 = v16;
        sub_1CF2F634C(v24, v23, v25, v22);
        v56 = v55;
        v57 = sub_1CF9E6108();
        v58 = sub_1CF9E72B8();
        if (os_log_type_enabled(v57, v58))
        {
          v112 = v58;
          v59 = swift_slowAlloc();
          v111 = swift_slowAlloc();
          v113 = v111;
          *v59 = 134219266;
          *(v59 + 4) = [v56 sequenceNumber];
          *(v59 + 12) = 2048;
          *(v59 + 14) = v23;
          *(v59 + 22) = 2048;
          sub_1CF24D114(v24, v23, v25, v22, v60, v61, v62, v63);
          *(v59 + 24) = v23;
          sub_1CF24D114(v24, v23, v25, v22, v64, v65, v66, v67);
          *(v59 + 32) = 2082;
          if (v22)
          {
            v72 = 0x6E776F6E6B6E753CLL;
          }

          else
          {
            sub_1CF24D114(v24, v23, v25, 0, v68, v69, v70, v71);
            v72 = 0x6E776F6E6B6E753CLL;
            v25 = 0x6E776F6E6B6E753CLL;
            v22 = 0xE90000000000003ELL;
          }

          v88 = sub_1CEFD0DF0(v25, v22, &v113);
          v22, v89, v90, v91, v92, v93, v94, v95;
          *(v59 + 34) = v88;
          *(v59 + 42) = 2048;
          v96 = [v56 sequenceNumber];

          *(v59 + 44) = v96;
          *(v59 + 52) = 2082;
          v97 = [v56 callDescription];
          if (v97)
          {
            v98 = v97;
            v72 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v100 = v99;
          }

          else
          {
            v100 = 0xE90000000000003ELL;
          }

          v101 = sub_1CEFD0DF0(v72, v100, &v113);
          v100, v102, v103, v104, v105, v106, v107, v108;
          *(v59 + 54) = v101;
          _os_log_impl(&dword_1CEFC7000, v57, v112, "sequence number received out of order: %ld <= %ld\n    %ld: %{public}s\n    %ld: %{public}s", v59, 0x3Eu);
          v109 = v111;
          swift_arrayDestroy();
          MEMORY[0x1D386CDC0](v109, -1, -1);
          MEMORY[0x1D386CDC0](v59, -1, -1);
        }

        else
        {

          sub_1CF24D114(v24, v23, v25, v22, v73, v74, v75, v76);
          sub_1CF24D114(v24, v23, v25, v22, v77, v78, v79, v80);

          v22, v81, v82, v83, v84, v85, v86, v87;
        }

        (*(v6 + 8))(v8, v5);
        return;
      }

      sub_1CF24D114(v24, v23, v25, v22, v26, v27, v28, v29);
    }

    v45 = [v16 extensionPid];
    v46 = [v16 sequenceNumber];
    v47 = [v16 callDescription];
    if (v47)
    {
      v48 = v47;
      v38 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v40 = v49;
    }

    else
    {

      v38 = 0;
      v40 = 0;
    }

    v50 = v2[37];
    v51 = v2[38];
    v52 = v2[39];
    v53 = v2[40];
    v2[37] = v45;
    v2[38] = v46;
    goto LABEL_18;
  }
}

uint64_t sub_1CF04217C(void *a1, void *a2)
{
  v4 = sub_1CF9E6118();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33[-v9];
  if (!a2)
  {
    return a1 != 0;
  }

  if (a1)
  {
    v11 = a2;
    v12 = a1;
    v13 = [v11 compare_];
    if (v13 == -1)
    {

      return 1;
    }

    if (v13)
    {
      if (v13 != 1)
      {
        v32 = v13;
        type metadata accessor for ComparisonResult(0);
        v35 = v32;
        result = sub_1CF9E80C8();
        __break(1u);
        return result;
      }

      v23 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v24 = v11;
      v25 = v12;
      v26 = sub_1CF9E6108();
      v27 = sub_1CF9E72C8();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v34 = v27;
        v29 = v28;
        v30 = swift_slowAlloc();
        *v29 = 138412546;
        *(v29 + 4) = v24;
        *(v29 + 12) = 2112;
        *(v29 + 14) = v25;
        *v30 = a2;
        v30[1] = a1;
        v31 = v24;
        v24 = v25;
        _os_log_impl(&dword_1CEFC7000, v26, v34, "🌍  ignoring decreasing domain version %@ -> %@", v29, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE350, &unk_1CF9FC3B0);
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v30, -1, -1);
        MEMORY[0x1D386CDC0](v29, -1, -1);
      }

      else
      {
        v31 = v26;
        v26 = v25;
      }

      (*(v5 + 8))(v7, v4);
    }

    else
    {
    }

    return 0;
  }

  else
  {
    v15 = a2;
    v16 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v17 = v15;
    v18 = sub_1CF9E6108();
    v19 = sub_1CF9E72C8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      *(v20 + 4) = v17;
      *v21 = a2;
      v22 = v17;
      _os_log_impl(&dword_1CEFC7000, v18, v19, "🌍  ignoring disappearing domain version %@ -> nil", v20, 0xCu);
      sub_1CF19CAB0(v21);
      MEMORY[0x1D386CDC0](v21, -1, -1);
      MEMORY[0x1D386CDC0](v20, -1, -1);
    }

    else
    {
      v22 = v18;
      v18 = v17;
    }

    (*(v5 + 8))(v10, v4);
    return 1;
  }
}

unint64_t sub_1CF042768()
{
  v1 = v0;
  v2 = type metadata accessor for VFSItem(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v141 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED40, &unk_1CFA00720);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v141 - v7;
  sub_1CEFCCBDC(v1, &v141 - v7, &unk_1EC4BED40, &unk_1CFA00720);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v16 = *v8;
        v17 = *(v8 + 1);
        v18 = v8[16];
        v143[0] = 0;
        v143[1] = 0xE000000000000000;
        sub_1CF9E7948();
        if (v16)
        {
          v19 = 0x6465727265666564;
        }

        else
        {
          v19 = 0;
        }

        if (v16)
        {
          v20 = 0xE900000000000020;
        }

        else
        {
          v20 = 0xE000000000000000;
        }

        MEMORY[0x1D3868CC0](v19, v20);
        v20, v21, v22, v23, v24, v25, v26, v27;
        MEMORY[0x1D3868CC0](0x7473207465736572, 0xEE00203A6D616572);
        v28 = v17;
        v29 = v18;
      }

      else
      {
        v58 = *(v8 + 2);
        v59 = v8[24];
        v60 = *v8;
        v61 = v8[8];
        v143[0] = 0;
        v143[1] = 0xE000000000000000;
        sub_1CF9E7948();
        v143[1], v62, v63, v64, v65, v66, v67, v68;
        strcpy(v143, "rescan below ");
        HIWORD(v143[1]) = -4864;
        v141 = v60;
        v142 = v61;
        v70 = VFSItemID.description.getter(v69);
        v72 = v71;
        MEMORY[0x1D3868CC0](v70);
        v72, v73, v74, v75, v76, v77, v78, v79;
        MEMORY[0x1D3868CC0](8250, 0xE200000000000000);
        v28 = v58;
        v29 = v59;
      }

      v80 = sub_1CF953A9C(v28, v29);
      v82 = v81;
      goto LABEL_38;
    }

    if (!EnumCaseMultiPayload)
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4790, &qword_1CFA00820);
      v12 = *(v11 + 48);
      if (*&v8[*(v11 + 64)])
      {

        v13 = (*(v3 + 48))(&v8[v12], 1, v2);
        if (v13 != 1)
        {
          sub_1CEFE4E00(&v8[v12], v5, type metadata accessor for VFSItem);
          strcpy(v143, "item changed ");
          HIWORD(v143[1]) = -4864;
          v115 = sub_1CF255338();
          v117 = v116;
          MEMORY[0x1D3868CC0](v115);
          v117, v118, v119, v120, v121, v122, v123, v124;
          v125 = v143[0];
          sub_1CF007CB8(v5, type metadata accessor for VFSItem);
          return v125;
        }

        v14 = *v8;
        v15 = v8[8];
        strcpy(v143, "item changed ");
        HIWORD(v143[1]) = -4864;
        v141 = v14;
        v142 = v15;
      }

      else
      {
        v95 = *v8;
        v96 = v8[8];
        v143[0] = 0;
        v143[1] = 0xE000000000000000;
        sub_1CF9E7948();
        v143[1], v97, v98, v99, v100, v101, v102, v103;
        v143[0] = 0xD00000000000001ALL;
        v143[1] = 0x80000001CFA464B0;
        v141 = v95;
        v142 = v96;
      }

      v104 = VFSItemID.description.getter(v13);
      v106 = v105;
      MEMORY[0x1D3868CC0](v104);
      v106, v107, v108, v109, v110, v111, v112, v113;
      v114 = v143[0];
      sub_1CEFCCC44(&v8[v12], &unk_1EC4BEC00, &unk_1CF9FCB60);
      return v114;
    }

    v48 = *v8;
    v49 = v8[8];
    v143[0] = 0;
    v143[1] = 0xE000000000000000;
    sub_1CF9E7948();
    v143[1], v50, v51, v52, v53, v54, v55, v56;
    v143[0] = 0xD000000000000012;
    v143[1] = 0x80000001CFA5A480;
    v141 = v48;
    v142 = v49;
LABEL_37:
    v80 = VFSItemID.description.getter(v57);
    v82 = v133;
LABEL_38:
    MEMORY[0x1D3868CC0](v80);
    v82, v134, v135, v136, v137, v138, v139, v140;
    return v143[0];
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v30 = *v8;
      v143[0] = 0;
      v143[1] = 0xE000000000000000;
      sub_1CF9E7948();
      v143[1], v31, v32, v33, v34, v35, v36, v37;
      v143[0] = 0xD000000000000013;
      v143[1] = 0x80000001CFA5A3C0;
      v141 = v30;
      v38 = sub_1CF9E7F98();
      v40 = v39;
      MEMORY[0x1D3868CC0](v38);
      v40, v41, v42, v43, v44, v45, v46, v47;
      MEMORY[0x1D3868CC0](0x72757020746F6720, 0xEB00000000646567);
      return v143[0];
    }

    v83 = v8[9];
    v84 = *v8;
    v85 = v8[8];
    v143[0] = 0;
    v143[1] = 0xE000000000000000;
    sub_1CF9E7948();
    v143[1], v86, v87, v88, v89, v90, v91, v92;
    v143[0] = 0xD000000000000012;
    v143[1] = 0x80000001CFA5A3A0;
    if (v83 > 1)
    {
      if (v83 == 2)
      {
        v93 = 0xE700000000000000;
        v94 = 0x6B6E696C6D7973;
      }

      else
      {
        v93 = 0xE500000000000000;
        v94 = 0x7361696C61;
      }
    }

    else
    {
      v93 = 0xE300000000000000;
      if (v83)
      {
        v94 = 7498084;
      }

      else
      {
        v94 = 6516580;
      }
    }

    MEMORY[0x1D3868CC0](v94, v93);
    v93, v126, v127, v128, v129, v130, v131, v132;
    v57 = MEMORY[0x1D3868CC0](32, 0xE100000000000000);
    v141 = v84;
    v142 = v85;
    goto LABEL_37;
  }

  if (EnumCaseMultiPayload == 6)
  {
    return 0xD000000000000035;
  }

  if (EnumCaseMultiPayload == 7)
  {
    return 0xD000000000000030;
  }

  return 0xD000000000000013;
}

void sub_1CF042D98(uint64_t a1)
{
  v3 = *(*v1 + 632);
  v8[0] = *(*v1 + 616);
  v8[1] = v3;
  v4 = type metadata accessor for PersistenceTrigger(0, v8);
  v7 = MEMORY[0x1EEE9AC00](v4);
  if (*(v1 + qword_1EDEADB48) == 1)
  {
    (*(v6 + 16))(v8 - v5, a1, v4, v7);
    swift_beginAccess();
    sub_1CF9E6E58();
    sub_1CF9E6E18();
    swift_endAccess();
  }
}

uint64_t sub_1CF042EE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Signpost(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CF042F54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CF042FA8()
{
  sub_1CF042760();
}

void sub_1CF042FE0(uint64_t a1, uint64_t a2, void *a3, int a4, uint64_t (*a5)(void *, uint64_t), uint64_t a6)
{
  v38 = a6;
  v39 = a5;
  v9 = *(a1 + 8);
  v36 = *a1;
  v37 = a2;
  v10 = *(a1 + 24);
  v33 = *(a1 + 16);
  v34 = v10;
  v35 = v9;
  v11 = *(a1 + 32);
  v12 = sub_1CF9E6118();
  v13 = *(v12 - 8);
  *&v14 = MEMORY[0x1EEE9AC00](v12).n128_u64[0];
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a3 indexer];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 needsAuthentication];

    if (((v19 ^ a4) & 1) == 0)
    {
LABEL_10:
      if (v11)
      {
        _s3__C4CodeOMa_1(0);
        v40[0] = -1000;
        sub_1CF2F1F24(&qword_1EDEA3590, _s3__C4CodeOMa_1, &unk_1CF9F77C0);
        if ((sub_1CF9E5658() & 1) == 0)
        {
LABEL_17:
          v39(a1, v37);
          return;
        }

        v28 = [a3 indexer];
        [v28 setNeedsAuth];
      }

      else
      {
        v28 = [a3 indexer];
        [v28 clearNeedsAuth];
      }

      goto LABEL_17;
    }
  }

  else
  {
    if ((a4 & 1) == 0)
    {
      goto LABEL_10;
    }

    v19 = 0;
    LOBYTE(a4) = 1;
  }

  v20 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v21 = sub_1CF9E6108();
  v22 = sub_1CF9E72A8();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 67109376;
    *(v23 + 4) = a4 & 1;
    *(v23 + 8) = 1024;
    *(v23 + 10) = v19;
    _os_log_impl(&dword_1CEFC7000, v21, v22, "Auth state changed underneath fetchEventStream, from %{BOOL}d to %{BOOL}d. Forcing hasMore to cause retry.", v23, 0xEu);
    MEMORY[0x1D386CDC0](v23, -1, -1);
  }

  (*(v13 + 8))(v16, v12);
  v24 = v36;
  if (*(a1 + 32))
  {
    v25 = v36;
    v26 = v35;
    v27 = v33;
  }

  else
  {

    v26 = v35;

    v11 = 0;
    v27 = 1;
  }

  v40[0] = v24;
  v40[1] = v26;
  v29 = v34;
  v40[2] = v27;
  v40[3] = v34;
  v41 = v11 & 1;
  v39(v40, v37);
  sub_1CF060D50(v24, v26, v27, v29, (v11 & 1), v30, v31, v32);
}

uint64_t sub_1CF043498(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CF043504(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CF0435B0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B30, &qword_1CFA084C0);
  result = sub_1CF9E7BE8();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v35 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v36 = (v10 - 1) & v10;
LABEL_16:
    v16 = 16 * (v13 | (v11 << 6));
    v17 = (*(v4 + 48) + v16);
    v18 = *v17;
    v19 = v17[1];
    v20 = (*(v4 + 56) + v16);
    v21 = *v20;
    v22 = v20[1];
    sub_1CF9E81D8();

    sub_1CEFE42D4(v21, v22);
    sub_1CF9E69C8();
    result = sub_1CF9E8228();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = 16 * v26;
    v32 = (*(v9 + 48) + v31);
    *v32 = v18;
    v32[1] = v19;
    v33 = (*(v9 + 56) + v31);
    *v33 = v21;
    v33[1] = v22;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v35;
    v10 = v36;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v36 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_1CF043954(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v56 = a2;
  v54 = *v2;
  v5 = v54[10];
  v57 = v54[12];
  v62 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v55 = *(AssociatedTypeWitness - 8);
  *&v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness).n128_u64[0];
  v9 = &v41 - v8;
  v52 = [a1 longAtIndex_];
  v50 = [a1 unsignedLongAtIndex_];
  v49 = [a1 longAtIndex_];
  v10 = [a1 unsignedLongAtIndex_];
  v53 = [a1 longAtIndex_];
  v51 = [a1 unsignedLongAtIndex_];
  v11 = sub_1CF043D7C([a1 longAtIndex_]);
  if (v11 == 89)
  {
    sub_1CF1DA5D8();
    swift_allocError();
    *v12 = 0;
    swift_willThrow();
  }

  else
  {
    v13 = v11;
    v47 = AssociatedTypeWitness;
    v48 = v9;
    v46 = v10;
    v14 = sub_1CF03D7E8();
    sub_1CF044430(v14, a1, 9);
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v14, v17, v19, v21, v22, v23, v24, v25;
    if (!v3)
    {
      v43 = v16;
      v44 = v18;
      v45 = v20;
      v41 = v2;
      v26 = v47;
      v42 = *(*(swift_getAssociatedConformanceWitness() + 8) + 16);
      v27 = a1;
      v28 = v48;
      v42();
      v29 = [v27 unsignedLongAtIndex_];
      v30 = v43;
      v31 = v44;
      v32 = v45;
      v33 = sub_1CF03E148(v13, v43, v44, v45, v28, v50, v49, v29, v62, v54[11], v57, v54[13]);
      sub_1CF03D7A8(v30, v31, v32);
      (*(v55 + 8))(v28, v26);
      v34 = *(v41 + 16);
      v60 = &type metadata for SQLItemJobID;
      v61 = sub_1CF03E084();
      v58 = v52;
      v59 = v34;
      swift_beginAccess();

      sub_1CF03E0D8(&v58, v33 + 56);
      swift_endAccess();

      v35 = v53;
      v36 = v53 == 0x7FFFFFFFFFFFFFFFLL;
      v37 = v53 == 0x7FFFFFFFFFFFFFFFLL;
      v38 = v51;
      if (v53 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v38 = 0;
        v35 = 0;
      }

      v39 = v56;
      *v56 = v33;
      v39[1] = v38;
      v40 = v46;
      if (v36)
      {
        v40 = 0;
      }

      v39[2] = v35;
      v39[3] = v40;
      *(v39 + 32) = v37;
    }
  }
}

uint64_t sub_1CF043D7C(uint64_t a1)
{
  if (a1 <= 1000)
  {
    v1 = a1 - 1;
    result = 1;
    switch(v1)
    {
      case 0:
        result = 0;
        break;
      case 2:
        return result;
      case 3:
        result = 2;
        break;
      case 4:
        result = 3;
        break;
      case 5:
        result = 4;
        break;
      case 6:
        result = 5;
        break;
      case 7:
        result = 6;
        break;
      case 8:
        result = 7;
        break;
      case 9:
        result = 8;
        break;
      case 10:
        result = 9;
        break;
      case 11:
        result = 10;
        break;
      case 12:
        result = 11;
        break;
      case 14:
        result = 12;
        break;
      case 15:
        result = 13;
        break;
      case 16:
        result = 14;
        break;
      case 17:
        result = 15;
        break;
      case 18:
        result = 16;
        break;
      case 19:
        result = 17;
        break;
      case 20:
        result = 18;
        break;
      case 21:
        result = 19;
        break;
      case 22:
        result = 20;
        break;
      case 23:
        result = 21;
        break;
      case 24:
        result = 22;
        break;
      case 25:
        result = 23;
        break;
      case 26:
        result = 24;
        break;
      case 27:
        result = 25;
        break;
      case 28:
        result = 26;
        break;
      case 29:
        result = 27;
        break;
      case 30:
        result = 28;
        break;
      case 31:
        result = 29;
        break;
      case 32:
        result = 30;
        break;
      case 33:
        result = 31;
        break;
      case 34:
        result = 32;
        break;
      case 35:
        result = 33;
        break;
      case 36:
        result = 34;
        break;
      case 37:
        result = 35;
        break;
      case 38:
        result = 36;
        break;
      case 39:
        result = 37;
        break;
      case 40:
        result = 38;
        break;
      case 41:
        result = 39;
        break;
      case 42:
        result = 40;
        break;
      case 43:
        result = 41;
        break;
      case 44:
        result = 42;
        break;
      case 45:
        result = 43;
        break;
      case 46:
        result = 44;
        break;
      case 47:
        result = 45;
        break;
      case 48:
        result = 46;
        break;
      case 49:
        result = 47;
        break;
      default:
        return 89;
    }

    return result;
  }

  if (a1 <= 3599)
  {
    if (a1 > 2000)
    {
      if (a1 <= 2003)
      {
        if (a1 == 2001)
        {
          return 56;
        }

        if (a1 == 2002)
        {
          return 57;
        }

        return 58;
      }

      if (a1 <= 2005)
      {
        if (a1 == 2004)
        {
          return 59;
        }

        else
        {
          return 60;
        }
      }

      if (a1 == 2006)
      {
        return 61;
      }

      if (a1 == 3500)
      {
        return 62;
      }
    }

    else
    {
      if (a1 <= 1003)
      {
        if (a1 == 1001)
        {
          return 49;
        }

        if (a1 == 1002)
        {
          return 50;
        }

        return 51;
      }

      if (a1 <= 1005)
      {
        if (a1 == 1004)
        {
          return 52;
        }

        else
        {
          return 53;
        }
      }

      if (a1 == 1006)
      {
        return 54;
      }

      if (a1 == 2000)
      {
        return 55;
      }
    }

    return 89;
  }

  if (a1 > 3799)
  {
    if (a1 > 4001)
    {
      if (a1 <= 4003)
      {
        if (a1 == 4002)
        {
          return 84;
        }

        else
        {
          return 85;
        }
      }

      switch(a1)
      {
        case 4004:
          return 86;
        case 4005:
          return 87;
        case 4100:
          return 88;
      }
    }

    else
    {
      if (a1 <= 3801)
      {
        if (a1 == 3800)
        {
          return 79;
        }

        else
        {
          return 80;
        }
      }

      switch(a1)
      {
        case 3802:
          return 81;
        case 4000:
          return 82;
        case 4001:
          return 83;
      }
    }

    return 89;
  }

  switch(a1)
  {
    case 3600:
      result = 63;
      break;
    case 3601:
      result = 64;
      break;
    case 3604:
      result = 65;
      break;
    case 3605:
      result = 66;
      break;
    case 3606:
      result = 67;
      break;
    case 3607:
      result = 68;
      break;
    case 3608:
      result = 69;
      break;
    case 3609:
      result = 70;
      break;
    case 3610:
      result = 71;
      break;
    case 3611:
      result = 72;
      break;
    case 3612:
      result = 73;
      break;
    case 3700:
      result = 74;
      break;
    case 3701:
      result = 75;
      break;
    case 3702:
      result = 76;
      break;
    case 3703:
      result = 77;
      break;
    case 3704:
      result = 78;
      break;
    default:
      return 89;
  }

  return result;
}

void sub_1CF044430(uint64_t a1, id a2, int a3)
{
  v3 = a2;
  v5 = [a2 columns];
  v6 = sub_1CF04489C();
  v7 = MEMORY[0x1D38688F0](v5, &_s9SQLFieldsON_0, MEMORY[0x1E69E7CA0] + 8, v6);
  v8 = *(a1 + 16);
  if (!v8)
  {
LABEL_28:
    sub_1CF051344(v7);
    v7, v33, v34, v35, v36, v37, v38, v39;
    return;
  }

  v9 = 0;
  v49 = a1 + 32;
  v10 = &_swift_FORCE_LOAD___swiftMLCompute___FileProviderDaemon;
  v47 = v8;
  while (1)
  {
    v11 = (a3 + v9);
    if (__OFADD__(a3, v9))
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      sub_1CF9E8108();
      __break(1u);
LABEL_35:
      sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 260);
    }

    v12 = *(v49 + v9);
    if (!*(v49 + v9))
    {
      v13 = [v3 longAtIndex_];
      *(&v52 + 1) = MEMORY[0x1E69E6530];
      goto LABEL_8;
    }

    if (v12 != 1)
    {
      break;
    }

    *(&v52 + 1) = &type metadata for JobWaitCondition;
    v13 = [v3 longAtIndex_];
LABEL_8:
    *&v51 = v13;
LABEL_9:
    sub_1CEFE9EB8(&v51, v53);
    sub_1CEFD1104(v53, &v51);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54 = v7;
    v15 = sub_1CF0448F0(v12);
    v17 = *v7->tree;
    v18 = (v16 & 1) == 0;
    v19 = __OFADD__(v17, v18);
    v20 = v17 + v18;
    if (v19)
    {
      goto LABEL_32;
    }

    v21 = v16;
    if (*v7->tester >= v20)
    {
      v10 = &_swift_FORCE_LOAD___swiftMLCompute___FileProviderDaemon;
      if (isUniquelyReferenced_nonNull_native)
      {
        v7 = v54;
        if ((v16 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v30 = v15;
        sub_1CF7D08AC();
        v10 = &_swift_FORCE_LOAD___swiftMLCompute___FileProviderDaemon;
        v15 = v30;
        v7 = v54;
        if ((v21 & 1) == 0)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
      sub_1CF7C62E4(v20, isUniquelyReferenced_nonNull_native);
      v15 = sub_1CF0448F0(v12);
      if ((v21 & 1) != (v22 & 1))
      {
        goto LABEL_34;
      }

      v10 = &_swift_FORCE_LOAD___swiftMLCompute___FileProviderDaemon;
      v7 = v54;
      if ((v21 & 1) == 0)
      {
LABEL_24:
        *(&v7[2].super.isa + (v15 >> 6)) |= 1 << v15;
        *(*v7[1].tree + v15) = v12;
        sub_1CEFE9EB8(&v51, (*v7[1].tester + 32 * v15));
        __swift_destroy_boxed_opaque_existential_1(v53);
        v31 = *v7->tree;
        v19 = __OFADD__(v31, 1);
        v32 = v31 + 1;
        if (v19)
        {
          goto LABEL_33;
        }

        *v7->tree = v32;
        goto LABEL_26;
      }
    }

    v23 = (*v7[1].tester + 32 * v15);
    __swift_destroy_boxed_opaque_existential_1(v23);
    sub_1CEFE9EB8(&v51, v23);
    __swift_destroy_boxed_opaque_existential_1(v53);
LABEL_26:
    if (v9 == 0x7FFFFFFF)
    {
      goto LABEL_31;
    }

    if (v8 == ++v9)
    {
      goto LABEL_28;
    }
  }

  if ([v3 v10[463]])
  {
    v51 = 0u;
    v52 = 0u;
    sub_1CEFCCC44(&v51, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    goto LABEL_26;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF40, &unk_1CF9FE780);
  v24 = v3;
  if ([v3 v10[463]])
  {
    goto LABEL_35;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 261);
  }

  sub_1CF9E5688();
  swift_allocObject();
  sub_1CF9E5678();
  v25 = [v3 dataAtIndex_];
  v26 = sub_1CF9E5B88();
  v28 = v27;

  sub_1CEFCCCEC(&qword_1EDEA6218, &unk_1EC4BFF40, &unk_1CF9FE780, &unk_1CF9FC930);
  sub_1CF9E5668();
  if (!v48)
  {
    sub_1CEFE4714(v26, v28);

    v29 = v54;
    *(&v52 + 1) = type metadata accessor for Continuation();
    *&v51 = v29;
    v3 = v24;
    v8 = v47;
    goto LABEL_9;
  }

  sub_1CEFE4714(v26, v28);
  v7, v40, v41, v42, v43, v44, v45, v46;
}

unint64_t sub_1CF04489C()
{
  result = qword_1EDEAD430;
  if (!qword_1EDEAD430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAD430);
  }

  return result;
}

unint64_t sub_1CF0448F0(uint64_t a1)
{
  v1 = a1;
  sub_1CF9E81D8();
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 0x80000001CFA2C3F0;
    }

    else
    {
      v2 = 0x80000001CFA2C410;
    }
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  sub_1CF9E69C8();
  v2, v3, v4, v5, v6, v7, v8, v9;
  v10 = sub_1CF9E8228();

  return sub_1CF0511A4(v1, v10, v11, v12, v13, v14, v15, v16);
}

id sub_1CF0449B8()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = [result provider];

    if (v2)
    {
      v3 = [v2 descriptor];

      v4 = [v3 appliesChangesAtomically];
      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF044A50(_TtC18FileProviderDaemon8FSTester *result, const char *a2, char a3, _TtC18FileProviderDaemon8FSTester *a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->tester;
    v11 = (v10 >> 1);
    if ((v10 >> 1) < a2)
    {
      if ((v11 + 0x4000000000000000) < 0)
      {
        __break(1u);
        return result;
      }

      v11 = (v10 & 0xFFFFFFFFFFFFFFFELL);
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *a4->tree;
  if (v11 <= v12)
  {
    v13 = *a4->tree;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE648, &qword_1CF9FE488);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    *v14->tree = v12;
    *v14->tester = 2 * ((v15 - 32) / 56);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    v16 = 56 * v12;
    if (v14 != a4 || &v14[1] >= (&a4[1] + 56 * v12))
    {
      memmove(&v14[1], &a4[1], v16);
    }

    *a4->tree = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE650, &qword_1CF9FE490);
    swift_arrayInitWithCopy();
  }

  a4, a2, v16, a4, a5, a6, a7, a8;
  return v14;
}

uint64_t sub_1CF044BA4()
{
  v1 = v0;
  v2 = sub_1CF9E5CF8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v137 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v1 + 48) & 1) == 0)
  {
    v8 = *(v1 + 40);
    v139 = 0x6574726174732820;
    v140 = 0xEA00000000002064;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v10 = v9;
    result = (*(v3 + 8))(v5, v2);
    v12 = v10 * 1000000000.0;
    if (COERCE__INT64(fabs(v10 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v12 > -9.22337204e18)
    {
      if (v12 < 9.22337204e18)
      {
        v13 = sub_1CF065A84(v12, v8);
        v15 = v14;
        MEMORY[0x1D3868CC0](v13);
        v15, v16, v17, v18, v19, v20, v21, v22;
        MEMORY[0x1D3868CC0](41, 0xE100000000000000);
        v6 = v139;
        v7 = v140;
        goto LABEL_7;
      }

LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    __break(1u);
    goto LABEL_31;
  }

  v6 = 0;
  v7 = 0xE000000000000000;
LABEL_7:
  v139 = 0;
  v140 = 0xE000000000000000;
  sub_1CF9E7948();
  v140, v23, v24, v25, v26, v27, v28, v29;
  v142 = 60;
  v143 = 0xE100000000000000;
  swift_beginAccess();
  sub_1CF053478(v1 + 56, &v139);
  v30 = v141;
  sub_1CF057204(&v139);
  if (!v30)
  {
    v38 = 0xE600000000000000;
    v37 = 0x3E77656E3C4ALL;
LABEL_11:
    MEMORY[0x1D3868CC0](v37, v38);
    v38, v39, v40, v41, v42, v43, v44, v45;
    MEMORY[0x1D3868CC0](32, 0xE100000000000000);
    v46 = *(v1 + 96);
    v47 = *(v1 + 104);
    v48 = *(v1 + 112);
    if (v48 <= 1)
    {
      if (*(v1 + 112))
      {
        v52 = 548376546;
        if (v46)
        {

          v52 = 548966370;
        }
      }

      else
      {

        v52 = 548638690;
      }

      v50 = 0xA400000000000000;
      goto LABEL_28;
    }

    if (v48 == 2)
    {

      v50 = 0xA700000000000000;
      v51 = -273246494;
    }

    else
    {
      if (v48 != 3)
      {
        if (v46 | v47)
        {
          v52 = 545627362;
        }

        else
        {
          v52 = 0x208FB8EFB49CE2;
        }

        if (v46 | v47)
        {
          v50 = 0xA400000000000000;
        }

        else
        {
          v50 = 0xA700000000000000;
        }

        goto LABEL_28;
      }

      v49 = v46;
      v50 = 0xA700000000000000;
      v51 = -272858910;
    }

    v52 = v51 | 0x208FB800000000;
LABEL_28:
    MEMORY[0x1D3868CC0](v52, v50);
    v50, v53, v54, v55, v56, v57, v58, v59;
    sub_1CF03D7A8(v46, v47, v48);
    MEMORY[0x1D3868CC0](v6, v7);
    v7, v60, v61, v62, v63, v64, v65, v66;
    MEMORY[0x1D3868CC0](32, 0xE100000000000000);
    v67 = sub_1CF03C368();
    v69 = v68;
    MEMORY[0x1D3868CC0](v67);
    v69, v70, v71, v72, v73, v74, v75, v76;
    MEMORY[0x1D3868CC0](0x3A79687720, 0xE500000000000000);
    v77 = sub_1CF057288(*(v1 + 136));
    v79 = v78;
    MEMORY[0x1D3868CC0](v77);
    v79, v80, v81, v82, v83, v84, v85, v86;
    v88 = v142;
    v87 = v143;
    v139 = 0x3A646568637320;
    v140 = 0xE700000000000000;
    v142 = sub_1CF057488(*(v1 + 120));
    v143 = v89;
    MEMORY[0x1D3868CC0](35, 0xE100000000000000);
    v90 = sub_1CF9E6F58();
    v92 = v91;
    MEMORY[0x1D3868CC0](v90);
    v92, v93, v94, v95, v96, v97, v98, v99;
    v100 = v143;
    MEMORY[0x1D3868CC0](v142, v143);
    v100, v101, v102, v103, v104, v105, v106, v107;
    v108 = *(v1 + 96);
    v109 = *(v1 + 104);
    v110 = *(v1 + 112);
    sub_1CF03C530(v108, v109, v110);
    v111 = sub_1CF0534E8(v108, v109, v110);
    v113 = v112;
    sub_1CF03D7A8(v108, v109, v110);
    MEMORY[0x1D3868CC0](v111, v113);
    v113, v114, v115, v116, v117, v118, v119, v120;
    MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    v121 = v139;
    v122 = v140;
    v139 = v88;
    v140 = v87;

    MEMORY[0x1D3868CC0](v121, v122);
    v87, v123, v124, v125, v126, v127, v128, v129;
    v122, v130, v131, v132, v133, v134, v135, v136;
    return v139;
  }

  v137 = 0;
  v138 = 0xE000000000000000;
  result = sub_1CF053478(v1 + 56, &v139);
  v31 = v141;
  if (v141)
  {
    v32 = __swift_project_boxed_opaque_existential_1(&v139, v141);
    v33 = *(v31 - 8);
    v34 = MEMORY[0x1EEE9AC00](v32);
    v36 = &v137 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v33 + 16))(v36, v34);
    sub_1CF9E7FE8();
    (*(v33 + 8))(v36, v31);
    __swift_destroy_boxed_opaque_existential_1(&v139);
    v37 = v137;
    v38 = v138;
    goto LABEL_11;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1CF04512C(uint64_t a1, void (*a2)(uint64_t))
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = sub_1CF0452C8(a1);

    a2(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF0451E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 < 0)
  {
    v3 = (a1 & 0x7FFFFFFFFFFFFFFFLL) + 56;
  }

  else
  {
    v3 = a1 + 56;
  }

  swift_beginAccess();
  return sub_1CF053478(v3, a2);
}

uint64_t sub_1CF04523C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1CF0452D0()
{
  v1 = *v0;
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for AnyDatabaseDelegateImpl(0, v1, WitnessTable, v3);

  return sub_1CF058FF0(v4);
}

uint64_t sub_1CF045354()
{

  sub_1CF059264(&v1);

  return v1;
}

uint64_t sub_1CF0453A0()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = (*(*result + 232))(result);

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t *sub_1CF045428(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;
  v10 = swift_retain_n();
  if (v7 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();

      v12 = sub_1CF2F1214(v14, v8, a1, a2);
      MEMORY[0x1D386CDC0](v14, -1, -1);

      return v12;
    }
  }

  MEMORY[0x1EEE9AC00](v10);
  bzero(v15 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0), v9);

  sub_1CF0455E8((v15 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0)), v8, a1, a2);
  v12 = v11;

  if (v3)
  {
    swift_willThrow();
  }

  return v12;
}

void sub_1CF0455E8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v33 = (v8 - 1) & v8;
LABEL_11:
    v30 = v10 | (v4 << 6);
    v13 = *(*(a3 + 48) + 16 * v30 + 8);
    v14 = (*(a3 + 56) + 16 * v30);
    v16 = *v14;
    v15 = v14[1];
    v17 = *(*(a4 + 136) + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_ioContext);
    v18 = sub_1CF9E6978();

    sub_1CEFE42D4(v16, v15);

    LOBYTE(v17) = v17(v18 + 32);

    sub_1CEFE4714(v16, v15);
    v13, v19, v20, v21, v22, v23, v24, v25;
    v8 = v33;
    if (v17)
    {
      *(result + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
      if (__OFADD__(v29++, 1))
      {
        __break(1u);
LABEL_15:
        sub_1CF0435B0(result, a2, v29, a3);
        return;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v33 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1CF0457B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 <= 0;
  if (a1 <= 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0x63732D6C6C756620;
  }

  if (v5)
  {
    v7 = 0xE000000000000000;
  }

  else
  {
    v7 = 0xEA00000000006E61;
  }

  MEMORY[0x1D3868CC0](v6, v7);
  v7, v8, v9, v10, v11, v12, v13, v14;
  if (a2 > 0)
  {
    v15 = 0xD000000000000011;
  }

  else
  {
    v15 = 0;
  }

  if (a2 <= 0)
  {
    v16 = 0xE000000000000000;
  }

  else
  {
    v16 = 0x80000001CFA3FA90;
  }

  MEMORY[0x1D3868CC0](v15, v16);
  v16, v17, v18, v19, v20, v21, v22, v23;
  if (a3 <= 0)
  {
    v24 = 0;
  }

  else
  {
    v24 = 0xD000000000000010;
  }

  if (a3 <= 0)
  {
    v25 = 0xE000000000000000;
  }

  else
  {
    v25 = 0x80000001CFA3FA70;
  }

  MEMORY[0x1D3868CC0](v24, v25);
  v25, v26, v27, v28, v29, v30, v31, v32;
  return 0;
}

uint64_t sub_1CF04590C()
{
  v1 = objc_sync_enter(v0);
  if (v1)
  {
    MEMORY[0x1EEE9AC00](v1);
    v6 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v5, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v2 = v0[qword_1EDEADAA8];
  v3 = objc_sync_exit(v0);
  if (v3)
  {
    MEMORY[0x1EEE9AC00](v3);
    v6 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v5, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return v2;
}

uint64_t sub_1CF045A14()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4800, &unk_1CF9FB4A0);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1CF045A44()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF7B0, &qword_1CFA03108);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1CF045A74()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF7B8, &unk_1CFA03110);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1CF045AA4()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4800, &unk_1CF9FB4A0);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1CF045AD4()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C19D8, &qword_1CFA0C4E8);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1CF045B04(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!MEMORY[0x1E69E7D58])
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }

  type metadata accessor for FileTreeChangeAggregator(255, *a1, a1[2], a4);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1CF9E7068();
  sub_1CF9E6708();
  swift_getTupleTypeMetadata2();
  return sub_1CF9E5EA8();
}

uint64_t sub_1CF045C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!MEMORY[0x1E69E7D58])
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }

  type metadata accessor for FileTreeChangeAggregator(255, *(a1 + 8), *(a1 + 24), a4);
  return sub_1CF9E5EA8();
}

uint64_t sub_1CF045C68@<X0>(char *a1@<X0>, void *a2@<X8>)
{
  v2 = a1;
  v116 = a2;
  v3 = *(a1 + 5);
  v4 = *(a1 + 3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v113 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v111 = &v106.i8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v110.i64[0] = v106.i64 - v7;
  v8 = *(v2 + 4);
  v9 = *(v2 + 2);
  v114 = swift_getAssociatedTypeWitness();
  v112 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v109.i64[0] = v106.i64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v108.i64[0] = v106.i64 - v12;
  v13 = *(v2 - 1);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v106.i8[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v106.i8[-v18];
  v21 = MEMORY[0x1EEE9AC00](v20);
  v117 = v13;
  v22 = *(v13 + 16);
  v24 = &v106.i8[-v23];
  v22(v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 45:
      v57.i64[0] = v9;
      v57.i64[1] = v4;
      v58.i64[0] = v8;
      v58.i64[1] = v3;
      v119 = v58;
      v118 = v57;
      type metadata accessor for PersistenceTrigger.AffectedGlobalJobs(255, &v118);
      v59 = v24;
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v61 = v116;
      *v116 = 1;
      swift_storeEnumTagMultiPayload();
      (*(*(TupleTypeMetadata2 - 8) + 56))(v61, 0, 1, TupleTypeMetadata2);
      v62 = *(v117 + 8);
      v63 = v59;
      break;
    case 28:
      (v22)(v16, v24, v2);
      v36.i64[0] = v9;
      v36.i64[1] = v4;
      v37.i64[0] = v8;
      v37.i64[1] = v3;
      v108 = v37;
      v119 = v37;
      v110 = v36;
      v118 = v36;
      type metadata accessor for TestingOperation(0, &v118);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v118 = vextq_s8(v110, v110, 8uLL);
        v119 = vextq_s8(v108, v108, 8uLL);
        v38 = type metadata accessor for DirectionalTestingOperation(0, &v118);
        v39 = swift_getEnumCaseMultiPayload();
        if (v39 == 3)
        {
          MEMORY[0x1EEE9AC00](v39);
          v107 = v24;
          strcpy(&v106 - 32, " item newName version ");
          v40 = AssociatedTypeWitness;
          v118.i64[0] = AssociatedTypeWitness;
          v114 = type metadata accessor for SnapshotItem(255, v4, v3, v41);
          v118.i64[1] = sub_1CF9E75D8();
          v119.i64[0] = &type metadata for Filename;
          v119.i64[1] = MEMORY[0x1E69E6810];
          TupleTypeMetadata = swift_getTupleTypeMetadata();
          v112 = *(TupleTypeMetadata + 48);
          *&v16[*(TupleTypeMetadata + 64) + 8], v43, v44, v45, v46, v47, v48, v49;
          v50 = *(v113 + 32);
          v51 = v111;
          v50(v111, v16, v40);
          v119 = v108;
          v118 = v110;
          type metadata accessor for PersistenceTrigger.AffectedGlobalJobs(255, &v118);
          v52 = swift_getTupleTypeMetadata2();
          v53 = v116;
          v54 = v116 + *(v52 + 48);
          *v116 = 0x2000;
          v55 = *(swift_getTupleTypeMetadata2() + 48);
          *v54 = 10;
          v50(&v54[v55], v51, v40);
          swift_storeEnumTagMultiPayload();
          (*(*(v52 - 8) + 56))(v53, 0, 1, v52);
          v56 = sub_1CF9E75D8();
          (*(*(v56 - 8) + 8))(&v16[v112], v56);
LABEL_23:
          v62 = *(v117 + 8);
          v63 = v107;
          return v62(v63, v2);
        }
      }

      else
      {
        v118 = v110;
        v119 = v108;
        v38 = type metadata accessor for DirectionalTestingOperation(0, &v118);
        v64 = swift_getEnumCaseMultiPayload();
        if (v64 == 3)
        {
          MEMORY[0x1EEE9AC00](v64);
          v107 = v24;
          strcpy(&v106 - 32, " item newName version ");
          v65 = v114;
          v118.i64[0] = v114;
          type metadata accessor for SnapshotItem(255, v9, v8, v66);
          v118.i64[1] = sub_1CF9E75D8();
          v119.i64[0] = &type metadata for Filename;
          v119.i64[1] = MEMORY[0x1E69E6810];
          v67 = swift_getTupleTypeMetadata();
          v111 = v2;
          AssociatedTypeWitness = *(v67 + 48);
          *&v16[*(v67 + 64) + 8], v68, v69, v70, v71, v72, v73, v74;
          v75 = *(v112 + 32);
          v76 = v109.i64[0];
          v75(v109.i64[0], v16, v65);
          v119 = v108;
          v118 = v110;
          type metadata accessor for PersistenceTrigger.AffectedGlobalJobs(255, &v118);
          v77 = swift_getTupleTypeMetadata2();
          v78 = v116;
          v79 = v16;
          v80 = v116 + *(v77 + 48);
          *v116 = 0x2000;
          v81 = *(swift_getTupleTypeMetadata2() + 48);
          *v80 = 10;
          v75(&v80[v81], v76, v65);
          swift_storeEnumTagMultiPayload();
          (*(*(v77 - 8) + 56))(v78, 0, 1, v77);
          v82 = sub_1CF9E75D8();
          (*(*(v82 - 8) + 8))(&v79[AssociatedTypeWitness], v82);
          return (*(v117 + 8))(v107, v111);
        }
      }

      (*(*(v38 - 8) + 8))(v16, v38);
      break;
    case 14:
      (v22)(v19, v24, v2);
      v107 = v24;
      v111 = v2;
      v26 = v114;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v28 = AssociatedTypeWitness;
      v29 = swift_getAssociatedConformanceWitness();
      v118.i64[0] = v26;
      v118.i64[1] = v28;
      v119.i64[0] = AssociatedConformanceWitness;
      v119.i64[1] = v29;
      v30 = type metadata accessor for ReconciliationID(255, &v118);
      v31 = v19[*(swift_getTupleTypeMetadata2() + 48)];
      if (v31 <= 2)
      {
        (*(*(v30 - 8) + 8))(v19, v30);
        (*(v117 + 8))(v107, v111);
        v32.i64[0] = v9;
        v32.i64[1] = v4;
        v33.i64[0] = v8;
        v33.i64[1] = v3;
        v119 = v33;
        v118 = v32;
        type metadata accessor for PersistenceTrigger.AffectedGlobalJobs(255, &v118);
        v34 = swift_getTupleTypeMetadata2();
        return (*(*(v34 - 8) + 56))(v116, 1, 1, v34);
      }

      v2 = v111;
      v86 = swift_getEnumCaseMultiPayload();
      v87.i64[0] = v8;
      v87.i64[1] = v3;
      v109 = v87;
      v87.i64[0] = v9;
      v87.i64[1] = v4;
      v106 = v87;
      if (v86 == 1)
      {
        v88 = v113;
        v89 = *(v113 + 32);
        v90 = v110.i64[0];
        v91 = AssociatedTypeWitness;
        v89(v110.i64[0], v19, AssociatedTypeWitness);
        v119 = v109;
        v118 = v106;
        type metadata accessor for Job(0, &v118);
        sub_1CF05194C(v31);
        v119 = v109;
        v118 = v106;
        type metadata accessor for ItemJob(0, &v118);
        if (swift_dynamicCastMetatype())
        {
          (*(v88 + 8))(v90, v91);
LABEL_19:
          v119 = v109;
          v118 = v106;
          type metadata accessor for PersistenceTrigger.AffectedGlobalJobs(255, &v118);
          v96 = swift_getTupleTypeMetadata2();
          (*(*(v96 - 8) + 56))(v116, 1, 1, v96);
          goto LABEL_23;
        }

        v118 = v106;
        v119 = v109;
        type metadata accessor for PersistenceTrigger.AffectedGlobalJobs(255, &v118);
        v97 = swift_getTupleTypeMetadata2();
        v98 = v116;
        v99 = v116 + *(v97 + 48);
        *v116 = 262400;
        v100 = *(swift_getTupleTypeMetadata2() + 48);
        *v99 = v31;
        v89(&v99[v100], v90, v91);
        swift_storeEnumTagMultiPayload();
        v101 = *(*(v97 - 8) + 56);
        v102 = v98;
      }

      else
      {
        v92 = v112;
        v93 = *(v112 + 32);
        v94 = v108.i64[0];
        v95 = v114;
        v93(v108.i64[0], v19, v114);
        v119 = v109;
        v118 = v106;
        type metadata accessor for Job(0, &v118);
        sub_1CF05194C(v31);
        v119 = v109;
        v118 = v106;
        type metadata accessor for ItemJob(0, &v118);
        if (swift_dynamicCastMetatype())
        {
          (*(v92 + 8))(v94, v95);
          goto LABEL_19;
        }

        v118 = v106;
        v119 = v109;
        type metadata accessor for PersistenceTrigger.AffectedGlobalJobs(255, &v118);
        v97 = swift_getTupleTypeMetadata2();
        v103 = v116;
        v104 = v116 + *(v97 + 48);
        *v116 = 262400;
        v105 = *(swift_getTupleTypeMetadata2() + 48);
        *v104 = v31;
        v93(&v104[v105], v94, v95);
        swift_storeEnumTagMultiPayload();
        v101 = *(*(v97 - 8) + 56);
        v102 = v103;
      }

      v101(v102, 0, 1, v97);
      goto LABEL_23;
    default:
      v83.i64[0] = v9;
      v83.i64[1] = v4;
      v84.i64[0] = v8;
      v84.i64[1] = v3;
      v119 = v84;
      v118 = v83;
      type metadata accessor for PersistenceTrigger.AffectedGlobalJobs(255, &v118);
      v85 = swift_getTupleTypeMetadata2();
      (*(*(v85 - 8) + 56))(v116, 1, 1, v85);
      v62 = *(v117 + 8);
      v63 = v24;
      break;
  }

  return v62(v63, v2);
}

uint64_t sub_1CF046AF8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v487 = a1;
  v5 = *(a2 + 16);
  v6 = *(a2 + 32);
  v482 = type metadata accessor for SnapshotItem(0, v5, v6, a4);
  v479 = *(v482 - 8);
  MEMORY[0x1EEE9AC00](v482);
  v483 = &v462 - v7;
  v495 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1CF9E75D8();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v490 = &v462 - v10;
  v11 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v471 = &v462 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v470 = (&v462 - v15);
  MEMORY[0x1EEE9AC00](v16);
  v478 = &v462 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v468 = &v462 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v477 = &v462 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v462 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v473 = &v462 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v474 = &v462 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v475 = &v462 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = (&v462 - v32);
  MEMORY[0x1EEE9AC00](v34);
  v472 = &v462 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v476 = &v462 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v481 = &v462 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v485 = &v462 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v486 = &v462 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v469 = &v462 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v484 = &v462 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v488 = &v462 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v462 - v51;
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v462 - v54;
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v462 - v57;
  v492 = AssociatedTypeWitness;
  v491 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v462 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v62);
  v464 = &v462 - v63;
  MEMORY[0x1EEE9AC00](v64);
  v466 = &v462 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v465 = (&v462 - v67);
  MEMORY[0x1EEE9AC00](v68);
  v489 = (&v462 - v69);
  MEMORY[0x1EEE9AC00](v70);
  v467 = &v462 - v71;
  v73 = MEMORY[0x1EEE9AC00](v72);
  v480 = &v462 - v74;
  v493 = v11;
  v75 = *(v11 + 16);
  (v75)(v58, v496, a2, v73);
  v496 = v58;
  v76 = v6;
  v494 = a2;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v77 = v496;
      v78 = v494;
      v75(v33, v496, v494);
      if ((*v33 & 0x8000000000000000) != 0 || (v79 = *(v78 + 24), v80 = *(v78 + 40), v81 = v495, v499 = v495, v500 = v79, v501 = v76, v502 = v80, type metadata accessor for ItemJob(0, &v499), (v82 = swift_dynamicCastClass()) == 0))
      {

        goto LABEL_77;
      }

      v83 = v82;
      v499 = v81;
      v500 = v79;
      v501 = v76;
      v502 = v80;
      v489 = type metadata accessor for PersistenceTrigger.AffectedItemJobs(255, &v499);
      sub_1CF9E7FA8();
      swift_allocObject();

      v84 = sub_1CF9E6D68();
      v487 = v85;
      v488 = v84;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0488, &qword_1CFA10830);
      v86 = swift_allocObject();
      *(v86 + 16) = xmmword_1CF9FA450;
      *(v86 + 32) = sub_1CF03D760();
      v88 = v490;
      v87 = v491;
      v89 = v83 + *(*v83 + 576);
      v90 = v492;
      (*(v491 + 16))(v490, v89, v492);
      (*(v87 + 56))(v88, 0, 1, v90);
      sub_1CF059CE4(0x200000, v86, v88, v495, v79, v76, v80, v487);
      v91 = sub_1CF045898(v488, v489);

      (*(v493 + 8))(v77, v78);
      return v91;
    case 2u:
      v220 = v472;
      v221 = v494;
      v75(v472, v496, v494);
      v222 = *(v221 + 40);
      v223 = *(v221 + 24);
      v224 = swift_getAssociatedTypeWitness();
      v225 = v495;
      v226 = v492;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v228 = swift_getAssociatedConformanceWitness();
      v499 = v226;
      v500 = v224;
      v55 = v220;
      v501 = AssociatedConformanceWitness;
      v502 = v228;
      v101 = type metadata accessor for ReconciliationID(0, &v499);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        goto LABEL_45;
      }

      v229 = v491;
      v230 = v489;
      (*(v491 + 32))(v489, v55, v226);
      v499 = v225;
      v500 = v223;
      v501 = v76;
      v502 = v222;
      v231 = type metadata accessor for PersistenceTrigger.AffectedItemJobs(255, &v499);
      sub_1CF9E7FA8();
      swift_allocObject();
      v488 = sub_1CF9E6D68();
      v233 = v232;
      v234 = v490;
      (*(v229 + 16))(v490, v230, v226);
      (*(v229 + 56))(v234, 0, 1, v226);
      v235 = &unk_1F4BEEBD8;
      v236 = v233;
      v237 = 8;
      v238 = v234;
      v239 = v225;
      v240 = v223;
      v241 = v76;
      goto LABEL_67;
    case 3u:
      v143 = v494;
      v75(v52, v496, v494);
      v144 = *(v143 + 40);
      v145 = *(v143 + 24);
      v146 = swift_getAssociatedTypeWitness();
      v463 = v6;
      v147 = v492;
      v148 = swift_getAssociatedConformanceWitness();
      v149 = swift_getAssociatedConformanceWitness();
      v499 = v147;
      v500 = v146;
      v501 = v148;
      v502 = v149;
      v150 = type metadata accessor for ReconciliationID(0, &v499);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*(*(v150 - 8) + 8))(v52, v150);
        goto LABEL_37;
      }

      v489 = v148;
      v325 = v145;
      v326 = v491;
      v327 = v480;
      v487 = *(v491 + 32);
      (v487)(v480, v52, v147);
      goto LABEL_65;
    case 5u:
      v209 = v486;
      v210 = v494;
      v75(v486, v496, v494);
      v211 = *(v210 + 40);
      v212 = *(v210 + 24);
      v213 = swift_getAssociatedTypeWitness();
      v214 = v492;
      v215 = swift_getAssociatedConformanceWitness();
      v216 = swift_getAssociatedConformanceWitness();
      v499 = v214;
      v500 = v213;
      v501 = v215;
      v502 = v216;
      v137 = type metadata accessor for ReconciliationID(255, &v499);
      v217 = *(swift_getTupleTypeMetadata2() + 48);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v218 = *(*(v137 - 8) + 8);
        v218(v209 + v217, v137);
        v219 = v209;
        goto LABEL_55;
      }

      v339 = v491;
      (*(v491 + 32))(v489, v209, v214);
      v499 = v495;
      v500 = v212;
      v501 = v76;
      v502 = v211;
      v340 = type metadata accessor for PersistenceTrigger.AffectedItemJobs(255, &v499);
      v488 = v217;
      v341 = v340;
      sub_1CF9E7FA8();
      swift_allocObject();
      v487 = sub_1CF9E6D68();
      v343 = v342;
      v344 = v489;
      v345 = v490;
      (*(v339 + 16))(v490, v489, v214);
      (*(v339 + 56))(v345, 0, 1, v214);
      sub_1CF059CE4(64, &unk_1F4BEEA98, v345, v495, v212, v76, v211, v343);
      v91 = sub_1CF045898(v487, v341);
      (*(v339 + 8))(v344, v214);
      (*(*(v137 - 8) + 8))(&v486[v488], v137);
      goto LABEL_99;
    case 6u:
      v151 = v485;
      v152 = v494;
      v75(v485, v496, v494);
      v153 = v482;
      v154 = sub_1CF9E75D8();
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v156 = v479;
      v157 = *(v479 + 48);
      if (v157(&v151[*(TupleTypeMetadata3 + 48)], 1, v153) == 1)
      {
        if (v157(v151, 1, v153) == 1)
        {
          (*(*(v154 - 8) + 8))(v151, v154);
          goto LABEL_77;
        }

        v387 = v483;
        (*(v156 + 32))(v483, v151, v153);
        v388 = *(v152 + 40);
        v488 = *(v152 + 24);
        v489 = v388;
        v389 = v495;
        v499 = v495;
        v500 = v488;
        v501 = v76;
        v502 = v388;
        v390 = type metadata accessor for PersistenceTrigger.AffectedItemJobs(255, &v499);
        sub_1CF9E7FA8();
        swift_allocObject();
        v391 = sub_1CF9E6D68();
        v393 = v392;
        v394 = v490;
        v395 = v491;
        v396 = v492;
        (*(v491 + 16))(v490, v387, v492);
        (*(v395 + 56))(v394, 0, 1, v396);
        sub_1CF059CE4(96, &unk_1F4BEEAC0, v394, v389, v488, v76, v489, v393);
        v91 = sub_1CF045898(v391, v390);
        (*(v156 + 8))(v387, v482);
      }

      else
      {
        v328 = v483;
        (*(v156 + 32))();
        v329 = *(v152 + 40);
        v488 = *(v152 + 24);
        v489 = v329;
        v499 = v495;
        v500 = v488;
        v501 = v76;
        v502 = v329;
        v330 = type metadata accessor for PersistenceTrigger.AffectedItemJobs(255, &v499);
        sub_1CF9E7FA8();
        swift_allocObject();
        v331 = sub_1CF9E6D68();
        v333 = v332;
        v334 = v491;
        v335 = v492;
        v336 = &v328[*(v153 + 36)];
        v337 = v490;
        (*(v491 + 16))(v490, v336, v492);
        (*(v334 + 56))(v337, 0, 1, v335);
        sub_1CF059CE4(8, &unk_1F4BEEAE8, v337, v495, v488, v76, v489, v333);
        v91 = sub_1CF045898(v331, v330);
        (*(v156 + 8))(v483, v153);
        (*(*(v154 - 8) + 8))(v485, v154);
      }

      goto LABEL_99;
    case 0xBu:
      v180 = v481;
      v181 = v494;
      v75(v481, v496, v494);
      v182 = *(v181 + 40);
      v183 = *(v181 + 24);
      v184 = swift_getAssociatedTypeWitness();
      v185 = v6;
      v186 = v492;
      v187 = swift_getAssociatedConformanceWitness();
      v188 = swift_getAssociatedConformanceWitness();
      v499 = v186;
      v500 = v184;
      v501 = v187;
      v502 = v188;
      v499 = type metadata accessor for ReconciliationID(255, &v499);
      v500 = sub_1CF9E75D8();
      v501 = &type metadata for ContentStatus;
      v502 = &type metadata for ContentStatus;
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      v190 = *(TupleTypeMetadata + 48);
      v191 = v180[*(TupleTypeMetadata + 80)];
      v499 = v186;
      v500 = v184;
      v192 = v180;
      v501 = v187;
      v502 = v188;
      v193 = type metadata accessor for ReconciliationID(0, &v499);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v338 = sub_1CF9E75D8();
        (*(*(v338 - 8) + 8))(&v192[v190], v338);
        (*(*(v193 - 8) + 8))(v192, v193);
        goto LABEL_62;
      }

      v194 = *(v193 - 8);
      if ((*(v194 + 48))(&v192[v190], 1, v193) == 1)
      {
        (*(v194 + 8))(v192, v193);
        v195 = sub_1CF9E75D8();
        (*(*(v195 - 8) + 8))(&v192[v190], v195);
LABEL_62:
        v76 = v185;
        goto LABEL_77;
      }

      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v397 = *(v194 + 8);
        v397(&v192[v190], v193);
        v397(v192, v193);
        v76 = v185;
LABEL_77:
        v383 = v494;
        v384 = *(v494 + 24);
        v385 = *(v494 + 40);
        v499 = v495;
        v500 = v384;
        v501 = v76;
        v502 = v385;
        type metadata accessor for PersistenceTrigger.AffectedItemJobs(0, &v499);
        v91 = sub_1CF9E6DA8();
        (*(v493 + 8))(v496, v383);
        return v91;
      }

      if (v191 == 4)
      {
        v454 = v491;
        v455 = v492;
        (*(v491 + 32))(v489, &v192[v190], v492);
        v499 = v495;
        v500 = v183;
        v463 = v185;
        v501 = v185;
        v502 = v182;
        v456 = type metadata accessor for PersistenceTrigger.AffectedItemJobs(255, &v499);
        sub_1CF9E7FA8();
        swift_allocObject();
        v488 = sub_1CF9E6D68();
        v458 = v457;
        v460 = v489;
        v459 = v490;
        (*(v454 + 16))(v490, v489, v455);
        (*(v454 + 56))(v459, 0, 1, v455);
        sub_1CF059CE4(32, &unk_1F4BEEB60, v459, v495, v183, v463, v182, v458);
        v91 = sub_1CF045898(v488, v456);
        (*(v454 + 8))(v460, v455);
      }

      else
      {
        v432 = v491;
        if (v191 == 2)
        {
          v433 = v489;
          v434 = v492;
          (*(v491 + 32))(v489, &v481[v190], v492);
          v499 = v495;
          v500 = v183;
          v463 = v185;
          v501 = v185;
          v502 = v182;
          v435 = v432;
          v436 = type metadata accessor for PersistenceTrigger.AffectedItemJobs(255, &v499);
          sub_1CF9E7FA8();
          swift_allocObject();
          v488 = sub_1CF9E6D68();
          v453 = v452;
          v439 = v490;
          (*(v435 + 16))(v490, v433, v434);
          (*(v435 + 56))(v439, 0, 1, v434);
          v440 = &unk_1F4BEEB38;
          v441 = v453;
          v442 = 32;
        }

        else
        {
          if (v191)
          {
            v461 = v481;
            (*(v491 + 8))(&v481[v190], v492);
            (*(v194 + 8))(v461, v193);
            v76 = v185;
            goto LABEL_77;
          }

          v433 = v489;
          v434 = v492;
          (*(v491 + 32))(v489, &v481[v190], v492);
          v499 = v495;
          v500 = v183;
          v463 = v185;
          v501 = v185;
          v502 = v182;
          v435 = v432;
          v436 = type metadata accessor for PersistenceTrigger.AffectedItemJobs(255, &v499);
          sub_1CF9E7FA8();
          swift_allocObject();
          v488 = sub_1CF9E6D68();
          v438 = v437;
          v439 = v490;
          (*(v435 + 16))(v490, v433, v434);
          (*(v435 + 56))(v439, 0, 1, v434);
          v440 = &unk_1F4BEEB10;
          v441 = v438;
          v442 = 64;
        }

        sub_1CF059CE4(v442, v440, v439, v495, v183, v463, v182, v441);
        v91 = sub_1CF045898(v488, v436);
        (*(v435 + 8))(v433, v434);
      }

      (*(v194 + 8))(v481, v193);
      goto LABEL_99;
    case 0xCu:
      v143 = v494;
      v242 = (v75)(v488, v496, v494);
      v489 = &v462;
      MEMORY[0x1EEE9AC00](v242);
      strcpy(&v462 - 32, " otherID from to ");
      v144 = *(v143 + 40);
      v243 = *(v143 + 24);
      v244 = swift_getAssociatedTypeWitness();
      v463 = v6;
      v147 = v492;
      v245 = swift_getAssociatedConformanceWitness();
      v246 = swift_getAssociatedConformanceWitness();
      v499 = v147;
      v500 = v244;
      v501 = v245;
      v502 = v246;
      v499 = type metadata accessor for ReconciliationID(255, &v499);
      v500 = sub_1CF9E75D8();
      v501 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE9A8, &unk_1CF9FEF60);
      v502 = v501;
      v247 = swift_getTupleTypeMetadata();
      v248 = v488;
      v249 = *(v247 + 48);
      v499 = v147;
      v500 = v244;
      v489 = v245;
      v501 = v245;
      v502 = v246;
      v250 = type metadata accessor for ReconciliationID(0, &v499);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v251 = sub_1CF9E75D8();
        (*(*(v251 - 8) + 8))(v248 + v249, v251);
        (*(*(v250 - 8) + 8))(v248, v250);
LABEL_37:
        v76 = v463;
        goto LABEL_77;
      }

      v325 = v243;
      v326 = v491;
      v346 = v480;
      v487 = *(v491 + 32);
      (v487)(v480, v248, v147);
      v327 = v346;
      v347 = sub_1CF9E75D8();
      (*(*(v347 - 8) + 8))(v248 + v249, v347);
LABEL_65:
      (*(v493 + 8))(v496, v143);
      v348 = v495;
      v499 = v495;
      v500 = v325;
      v488 = v325;
      v501 = v463;
      v502 = v144;
      v349 = type metadata accessor for PersistenceTrigger.AffectedItemJobs(255, &v499);
      v496 = v349;
      sub_1CF9E7FA8();
      v494 = *(*(v349 - 8) + 72);
      swift_allocObject();
      v493 = sub_1CF9E6D68();
      v351 = v350;
      v352 = v144;
      v353 = v490;
      (v487)(v490, v327, v147);
      v354 = *(v326 + 56);
      v354(v353, 0, 1, v147);
      v355 = v348;
      v356 = v348;
      v357 = v488;
      v358 = v463;
      sub_1CF059CE4(32, &unk_1F4BEE9F8, v353, v355, v488, v463, v352, v351);
      (v489[3].Kind)(v147);
      v354(v353, 0, 1, v147);
      sub_1CF059CE4(128, &unk_1F4BEEA20, v353, v356, v357, v358, v352, &v351[v494]);
      v359 = v493;
      v360 = v496;
      return sub_1CF045898(v359, v360);
    case 0xEu:
      v252 = v494;
      v75(v55, v496, v494);
      v253 = *(v252 + 40);
      v254 = *(v252 + 24);
      v255 = swift_getAssociatedTypeWitness();
      v256 = v492;
      v257 = swift_getAssociatedConformanceWitness();
      v258 = swift_getAssociatedConformanceWitness();
      v499 = v256;
      v500 = v255;
      v501 = v257;
      v502 = v258;
      v101 = type metadata accessor for ReconciliationID(255, &v499);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        goto LABEL_45;
      }

      v259 = v55[*(swift_getTupleTypeMetadata2() + 48)];
      v260 = v491;
      (*(v491 + 32))(v489, v55, v256);
      v499 = v495;
      v500 = v254;
      v501 = v6;
      v502 = v253;
      v261 = type metadata accessor for PersistenceTrigger.AffectedItemJobs(255, &v499);
      sub_1CF9E7FA8();
      swift_allocObject();
      v262 = sub_1CF9E6D68();
      v487 = v263;
      v488 = v262;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0488, &qword_1CFA10830);
      v264 = swift_allocObject();
      *(v264 + 16) = xmmword_1CF9FA450;
      *(v264 + 32) = v259;
      v266 = v489;
      v265 = v490;
      (*(v260 + 16))(v490, v489, v256);
      (*(v260 + 56))(v265, 0, 1, v256);
      sub_1CF059CE4(393472, v264, v265, v495, v254, v76, v253, v487);
      v91 = sub_1CF045898(v488, v261);
      (*(v260 + 8))(v266, v256);
      goto LABEL_73;
    case 0xFu:
      v287 = v484;
      v252 = v494;
      v75(v484, v496, v494);
      v288 = *(v252 + 40);
      v298 = *(v252 + 24);
      v299 = swift_getAssociatedTypeWitness();
      v300 = v492;
      v301 = swift_getAssociatedConformanceWitness();
      v302 = swift_getAssociatedConformanceWitness();
      v499 = v300;
      v500 = v299;
      v501 = v301;
      v502 = v302;
      v294 = type metadata accessor for ReconciliationID(255, &v499);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      v303 = *&v287[*(swift_getTupleTypeMetadata2() + 48)];
      if (swift_getEnumCaseMultiPayload() == 1)
      {

LABEL_50:
        (*(*(v294 - 8) + 8))(v287, v294);
        goto LABEL_77;
      }

      v498 = v303;
      if (swift_dynamicCast() && v497 == 3)
      {
        v366 = v491;
        v365 = v492;
        v367 = *(v491 + 32);
        v368 = v288;
        v488 = v288;
        v369 = v489;
        v367(v489, v484, v492);
        v499 = v495;
        v500 = v298;
        v501 = v76;
        v502 = v368;
        v370 = type metadata accessor for PersistenceTrigger.AffectedItemJobs(255, &v499);
        sub_1CF9E7FA8();
        swift_allocObject();
        v371 = sub_1CF9E6D68();
        v373 = v372;
        v374 = v298;
        v375 = v490;
        (*(v366 + 16))(v490, v369, v365);
        (*(v366 + 56))(v375, 0, 1, v365);
        sub_1CF059CE4(64, &unk_1F4BEEA48, v375, v495, v374, v76, v488, v373);
        v91 = sub_1CF045898(v371, v370);
        (*(v366 + 8))(v369, v365);

        goto LABEL_73;
      }

      v295 = v496;
      v489 = v298;

      v297 = v493;
      v296 = v484;
LABEL_85:
      v398 = v491;
      v399 = v492;
      v496 = *(v491 + 32);
      v400 = v467;
      v496(v467, v296, v492);
      (*(v297 + 8))(v295, v252);
      v499 = v495;
      v500 = v489;
      v501 = v76;
      v502 = v288;
      v401 = type metadata accessor for PersistenceTrigger.AffectedItemJobs(255, &v499);
      sub_1CF9E7FA8();
      swift_allocObject();
      v402 = sub_1CF9E6D68();
      v404 = v403;
      v405 = v288;
      v406 = v490;
      v496(v490, v400, v399);
      (*(v398 + 56))(v406, 0, 1, v399);
      sub_1CF059CE4(96, &unk_1F4BEEA70, v406, v495, v489, v76, v405, v404);
      v359 = v402;
      v360 = v401;
      return sub_1CF045898(v359, v360);
    case 0x10u:
      v287 = v469;
      v252 = v494;
      v75(v469, v496, v494);
      v288 = *(v252 + 40);
      v289 = *(v252 + 24);
      v290 = swift_getAssociatedTypeWitness();
      v291 = v492;
      v292 = swift_getAssociatedConformanceWitness();
      v293 = swift_getAssociatedConformanceWitness();
      v499 = v291;
      v500 = v290;
      v501 = v292;
      v502 = v293;
      v294 = type metadata accessor for ReconciliationID(255, &v499);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);

      if (swift_getEnumCaseMultiPayload() == 1)
      {
        goto LABEL_50;
      }

      v295 = v496;
      v489 = v289;
      v296 = v287;
      v297 = v493;
      goto LABEL_85;
    case 0x14u:
      v132 = v475;
      v133 = v494;
      v75(v475, v496, v494);
      LODWORD(v488) = *v132;
      v94 = *(v133 + 40);
      v95 = *(v133 + 24);
      v134 = swift_getAssociatedTypeWitness();
      v97 = v495;
      v98 = v492;
      v135 = swift_getAssociatedConformanceWitness();
      v136 = swift_getAssociatedConformanceWitness();
      v499 = v98;
      v500 = v134;
      v501 = v135;
      v502 = v136;
      v137 = type metadata accessor for ReconciliationID(255, &v499);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
      v138 = swift_getTupleTypeMetadata3();
      v139 = *(v138 + 48);

      if (swift_getEnumCaseMultiPayload() == 1)
      {
        goto LABEL_76;
      }

      v102 = v491;
      v140 = &v132[v139];
      v103 = v489;
      (*(v491 + 32))(v489, v140, v98);
      v499 = v97;
      v500 = v95;
      v501 = v76;
      v502 = v94;
      v104 = type metadata accessor for PersistenceTrigger.AffectedItemJobs(255, &v499);
      sub_1CF9E7FA8();
      swift_allocObject();
      v141 = sub_1CF9E6D68();
      v486 = v142;
      v487 = v141;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0488, &qword_1CFA10830);
      v107 = swift_allocObject();
      *(v107 + 16) = xmmword_1CF9FA450;
      *(v107 + 32) = v488;
      v108 = v76;
      v109 = v490;
      (*(v102 + 16))(v490, v103, v98);
      (*(v102 + 56))(v109, 0, 1, v98);
      v110 = v486;
      v111 = 2048;
      goto LABEL_12;
    case 0x16u:
      v196 = v468;
      v197 = v494;
      v75(v468, v496, v494);
      if ((*v196 & 0x8000000000000000) != 0)
      {
        v198 = *(v197 + 24);
        v199 = *(v197 + 40);
        v499 = v198;
        v500 = v495;
        v501 = v199;
        v502 = v6;
        type metadata accessor for DiskImport.DiskImportFinished(0, &v499);
        v386 = swift_dynamicCastClass();

        if (!v386)
        {
          goto LABEL_77;
        }

LABEL_89:
        (*(v493 + 8))(v496, v494);
        v418 = v495;
        v499 = v495;
        v500 = v198;
        v501 = v76;
        v502 = v199;
        v419 = type metadata accessor for PersistenceTrigger.AffectedItemJobs(255, &v499);
        sub_1CF9E7FA8();
        swift_allocObject();
        v420 = sub_1CF9E6D68();
        v422 = v421;
        v423 = v490;
        (*(v491 + 56))(v490, 1, 1, v492);
        sub_1CF059CE4(0x400000, &unk_1F4BEED68, v423, v418, v198, v76, v199, v422);
        v359 = v420;
        v360 = v419;
        return sub_1CF045898(v359, v360);
      }

      v198 = *(v197 + 24);
      v199 = *(v197 + 40);
      v200 = v495;
      v499 = v198;
      v500 = v495;
      v501 = v199;
      v502 = v6;
      type metadata accessor for Propagation.CreateItem(0, &v499);
      v201 = swift_dynamicCastClass();
      if (!v201)
      {
        v499 = v200;
        v500 = v198;
        v501 = v6;
        v502 = v199;
        type metadata accessor for DiskImport.DiskImportFinished(0, &v499);
        v417 = swift_dynamicCastClass();

        if (!v417)
        {
          goto LABEL_77;
        }

        goto LABEL_89;
      }

      v202 = v201;
      v203 = v197;
      if (v201[112] != 3 || (v204 = *(*v201 + 664), swift_beginAccess(), v205 = v492, v206 = swift_getAssociatedConformanceWitness(), v208 = type metadata accessor for ItemState(0, v205, v206, v207), (*(*(v208 - 8) + 48))(&v202[v204], 1, v208)))
      {
        v499 = v200;
        v500 = v198;
        v501 = v6;
        v502 = v199;
        type metadata accessor for PersistenceTrigger.AffectedItemJobs(0, &v499);
        v91 = sub_1CF9E6DA8();

        (*(v493 + 8))(v496, v203);
        return v91;
      }

      v443 = v491;
      v444 = *(v491 + 16);
      v445 = &v202[v204];
      v446 = v492;
      v444(v61, v445, v492);
      (*(v443 + 32))(v464, v61, v446);
      v499 = v495;
      v500 = v198;
      v463 = v6;
      v501 = v6;
      v502 = v199;
      v447 = type metadata accessor for PersistenceTrigger.AffectedItemJobs(255, &v499);
      sub_1CF9E7FA8();
      swift_allocObject();
      v489 = sub_1CF9E6D68();
      v449 = v448;
      v450 = v490;
      v444(v490, v464, v446);
      (*(v443 + 56))(v450, 0, 1, v446);
      sub_1CF059CE4(32, &unk_1F4BEED40, v450, v495, v198, v463, v199, v449);
      v91 = sub_1CF045898(v489, v447);

      (*(v443 + 8))(v464, v446);
LABEL_99:
      (*(v493 + 8))(v496, v494);
      return v91;
    case 0x17u:
      v160 = v471;
      v75(v471, v496, v494);
      if (*v160)
      {
        goto LABEL_77;
      }

      v112 = v494;
      v113 = v495;
      v114 = *(v494 + 24);
      v115 = *(v494 + 40);
      v499 = v495;
      v500 = v114;
      v501 = v76;
      v502 = v115;
      v116 = type metadata accessor for PersistenceTrigger.AffectedItemJobs(255, &v499);
      sub_1CF9E7FA8();
      swift_allocObject();
      v117 = sub_1CF9E6D68();
      v162 = v161;
      v120 = v490;
      (*(v491 + 56))(v490, 1, 1, v492);
      v121 = &unk_1F4BEED90;
      v122 = v162;
      v123 = 0x2000000;
LABEL_21:
      v163 = v120;
      v164 = v113;
      v165 = v114;
      v166 = v76;
      v167 = v115;
      goto LABEL_58;
    case 0x18u:
      v75(v24, v496, v494);
      if (*v24)
      {
        goto LABEL_77;
      }

      v112 = v494;
      v124 = v495;
      v125 = *(v494 + 24);
      v489 = *(v494 + 40);
      v499 = v495;
      v500 = v125;
      v501 = v76;
      v502 = v489;
      v116 = type metadata accessor for PersistenceTrigger.AffectedItemJobs(255, &v499);
      sub_1CF9E7FA8();
      swift_allocObject();
      v117 = sub_1CF9E6D68();
      v127 = v126;
      v129 = v491;
      v128 = v492;
      v130 = v76;
      v131 = v490;
      (*(v491 + 16))(v490, v487, v492);
      (*(v129 + 56))(v131, 0, 1, v128);
      v121 = &unk_1F4BEECF0;
      v122 = v127;
      v123 = 0x20000;
LABEL_57:
      v163 = v131;
      v164 = v124;
      v165 = v125;
      v166 = v130;
      v167 = v489;
LABEL_58:
      sub_1CF059CE4(v123, v121, v163, v164, v165, v166, v167, v122);
      v91 = sub_1CF045898(v117, v116);
      (*(v493 + 8))(v496, v112);
      return v91;
    case 0x1Cu:
      v55 = v474;
      v267 = v496;
      v268 = v494;
      v75(v474, v496, v494);
      v269 = *(v268 + 24);
      v270 = *(v268 + 40);
      v271 = v495;
      v499 = v495;
      v500 = v269;
      v501 = v76;
      v502 = v270;
      v101 = type metadata accessor for TestingOperation(0, &v499);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        goto LABEL_45;
      }

      v499 = v271;
      v500 = v269;
      v501 = v76;
      v502 = v270;
      v101 = type metadata accessor for DirectionalTestingOperation(0, &v499);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 7)
      {
        v424 = v491;
        v425 = v55;
        v426 = v492;
        (*(v491 + 32))(v489, v425, v492);
        v499 = v271;
        v500 = v269;
        v501 = v76;
        v502 = v270;
        v488 = type metadata accessor for PersistenceTrigger.AffectedItemJobs(255, &v499);
        sub_1CF9E7FA8();
        swift_allocObject();
        v487 = sub_1CF9E6D68();
        v428 = v427;
        v429 = *(v424 + 16);
        v463 = v76;
        v430 = v489;
        v431 = v490;
        v429(v490, v489, v426);
        (*(v424 + 56))(v431, 0, 1, v426);
        sub_1CF059CE4(0x2000, &unk_1F4BEECA0, v431, v271, v269, v463, v270, v428);
        v91 = sub_1CF045898(v487, v488);
        (*(v424 + 8))(v430, v492);
      }

      else
      {
        v273 = v492;
        if (EnumCaseMultiPayload != 5)
        {
LABEL_45:
          (*(*(v101 - 8) + 8))(v55, v101);
          goto LABEL_77;
        }

        v274 = v491;
        v275 = v489;
        (*(v491 + 32))(v489, v55, v492);
        v499 = v271;
        v500 = v269;
        v501 = v76;
        v502 = v270;
        v488 = type metadata accessor for PersistenceTrigger.AffectedItemJobs(255, &v499);
        sub_1CF9E7FA8();
        swift_allocObject();
        v487 = sub_1CF9E6D68();
        v277 = v276;
        v278 = *(v274 + 16);
        v463 = v76;
        v279 = v490;
        v278(v490, v275, v273);
        (*(v274 + 56))(v279, 0, 1, v273);
        sub_1CF059CE4(0x2000, &unk_1F4BEEC78, v279, v271, v269, v463, v270, v277);
        v91 = sub_1CF045898(v487, v488);
        (*(v274 + 8))(v275, v273);
      }

      (*(v493 + 8))(v267, v268);
      return v91;
    case 0x1Eu:
      v280 = v473;
      v281 = v494;
      v75(v473, v496, v494);
      v222 = *(v281 + 40);
      v282 = *(v281 + 24);
      v283 = swift_getAssociatedTypeWitness();
      v284 = v495;
      v226 = v492;
      v285 = swift_getAssociatedConformanceWitness();
      v286 = swift_getAssociatedConformanceWitness();
      v499 = v226;
      v500 = v283;
      v55 = v280;
      v501 = v285;
      v502 = v286;
      v101 = type metadata accessor for ReconciliationID(0, &v499);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        goto LABEL_45;
      }

      v229 = v491;
      v230 = v489;
      (*(v491 + 32))(v489, v55, v226);
      v499 = v284;
      v500 = v282;
      v501 = v76;
      v502 = v222;
      v231 = type metadata accessor for PersistenceTrigger.AffectedItemJobs(255, &v499);
      sub_1CF9E7FA8();
      swift_allocObject();
      v488 = sub_1CF9E6D68();
      v362 = v361;
      v363 = v76;
      v364 = v490;
      (*(v229 + 16))(v490, v230, v226);
      (*(v229 + 56))(v364, 0, 1, v226);
      v235 = &unk_1F4BEECC8;
      v236 = v362;
      v237 = 0x10000;
      v238 = v364;
      v239 = v284;
      v240 = v282;
      v241 = v363;
LABEL_67:
      sub_1CF059CE4(v237, v235, v238, v239, v240, v241, v222, v236);
      v91 = sub_1CF045898(v488, v231);
      (*(v229 + 8))(v230, v226);
      goto LABEL_99;
    case 0x20u:
      v132 = v476;
      v313 = v494;
      v75(v476, v496, v494);
      v314 = *(v313 + 40);
      v315 = *(v313 + 24);
      v316 = swift_getAssociatedTypeWitness();
      v317 = v495;
      v318 = v492;
      v319 = swift_getAssociatedConformanceWitness();
      v320 = swift_getAssociatedConformanceWitness();
      v499 = v318;
      v500 = v316;
      v501 = v319;
      v502 = v320;
      v137 = type metadata accessor for ReconciliationID(255, &v499);
      v139 = *(swift_getTupleTypeMetadata2() + 48);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v218 = *(*(v137 - 8) + 8);
        v218(&v132[v139], v137);
        v219 = v132;
LABEL_55:
        v218(v219, v137);
      }

      else
      {
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          v407 = v491;
          v408 = *(v491 + 32);
          v408(v489, v132, v318);
          v408(v465, &v132[v139], v318);
          v499 = v317;
          v500 = v315;
          v501 = v76;
          v502 = v314;
          v409 = type metadata accessor for PersistenceTrigger.AffectedItemJobs(255, &v499);
          v488 = v409;
          sub_1CF9E7FA8();
          v487 = *(*(v409 - 8) + 72);
          swift_allocObject();
          v410 = sub_1CF9E6D68();
          v412 = v411;
          v485 = *(v407 + 16);
          v486 = v410;
          v413 = v490;
          (v485)(v490, v489, v318);
          v463 = v76;
          v414 = *(v407 + 56);
          v414(v413, 0, 1, v318);
          sub_1CF059CE4(96, &unk_1F4BEEB88, v413, v317, v315, v76, v314, v412);
          v415 = v465;
          (v485)(v413, v465, v318);
          v414(v413, 0, 1, v318);
          sub_1CF059CE4(8, &unk_1F4BEEBB0, v413, v317, v315, v463, v314, &v487[v412]);
          v91 = sub_1CF045898(v486, v488);
          v416 = *(v491 + 8);
          v416(v415, v318);
          v416(v489, v318);
          goto LABEL_99;
        }

        (*(v491 + 8))(v132, v318);
LABEL_76:
        (*(*(v137 - 8) + 8))(&v132[v139], v137);
      }

      goto LABEL_77;
    case 0x23u:
      v304 = v477;
      v252 = v494;
      v75(v477, v496, v494);
      v305 = *(v252 + 40);
      v306 = *(v252 + 24);
      v307 = swift_getAssociatedTypeWitness();
      v308 = v492;
      v309 = swift_getAssociatedConformanceWitness();
      v310 = swift_getAssociatedConformanceWitness();
      v499 = v308;
      v500 = v307;
      v311 = v304;
      v501 = v309;
      v502 = v310;
      v312 = type metadata accessor for ReconciliationID(0, &v499);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*(*(v312 - 8) + 8))(v304, v312);
        goto LABEL_77;
      }

      v376 = v491;
      v377 = v466;
      (*(v491 + 32))(v466, v311, v308);
      if (((*(v309 + 64))(v308, v309) & 1) == 0)
      {
        (*(v376 + 8))(v377, v308);
        goto LABEL_77;
      }

      v499 = v495;
      v500 = v306;
      v501 = v76;
      v502 = v305;
      v378 = type metadata accessor for PersistenceTrigger.AffectedItemJobs(255, &v499);
      sub_1CF9E7FA8();
      swift_allocObject();
      v489 = sub_1CF9E6D68();
      v380 = v379;
      v381 = v76;
      v382 = v490;
      (*(v376 + 16))(v490, v377, v308);
      (*(v376 + 56))(v382, 0, 1, v308);
      sub_1CF059CE4(0x80000, &unk_1F4BEED18, v382, v495, v306, v381, v305, v380);
      v91 = sub_1CF045898(v489, v378);
      (*(v376 + 8))(v377, v308);
LABEL_73:
      (*(v493 + 8))(v496, v252);
      return v91;
    case 0x26u:
      v92 = v478;
      v93 = v494;
      v75(v478, v496, v494);
      v94 = *(v93 + 40);
      v95 = *(v93 + 24);
      v96 = swift_getAssociatedTypeWitness();
      v97 = v495;
      v98 = v492;
      v99 = swift_getAssociatedConformanceWitness();
      v100 = swift_getAssociatedConformanceWitness();
      v499 = v98;
      v500 = v96;
      v55 = v92;
      v501 = v99;
      v502 = v100;
      v101 = type metadata accessor for ReconciliationID(255, &v499);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        goto LABEL_45;
      }

      LODWORD(v488) = v92[*(swift_getTupleTypeMetadata2() + 48)];
      v102 = v491;
      v103 = v489;
      (*(v491 + 32))(v489, v55, v98);
      v499 = v97;
      v500 = v95;
      v501 = v76;
      v502 = v94;
      v104 = type metadata accessor for PersistenceTrigger.AffectedItemJobs(255, &v499);
      sub_1CF9E7FA8();
      swift_allocObject();
      v105 = sub_1CF9E6D68();
      v486 = v106;
      v487 = v105;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0488, &qword_1CFA10830);
      v107 = swift_allocObject();
      *(v107 + 16) = xmmword_1CF9FA450;
      *(v107 + 32) = v488;
      v108 = v76;
      v109 = v490;
      (*(v102 + 16))(v490, v103, v98);
      (*(v102 + 56))(v109, 0, 1, v98);
      v110 = v486;
      v111 = 0x800000;
LABEL_12:
      sub_1CF059CE4(v111, v107, v109, v97, v95, v108, v94, v110);
      v91 = sub_1CF045898(v487, v104);
      (*(v102 + 8))(v103, v98);
      goto LABEL_99;
    case 0x27u:
      v168 = v470;
      v169 = v496;
      v170 = v494;
      v75(v470, v496, v494);
      v489 = *v168;
      v171 = *(v170 + 24);
      v172 = *(v170 + 40);
      v173 = v495;
      v499 = v495;
      v500 = v171;
      v501 = v6;
      v502 = v172;
      v174 = type metadata accessor for PersistenceTrigger.AffectedItemJobs(255, &v499);
      sub_1CF9E7FA8();
      swift_allocObject();
      v175 = sub_1CF9E6D68();
      v177 = v176;
      v178 = v76;
      v179 = v490;
      (*(v491 + 56))(v490, 1, 1, v492);
      sub_1CF059CE4(0x1000000, v489, v179, v173, v171, v178, v172, v177);
      v91 = sub_1CF045898(v175, v174);
      (*(v493 + 8))(v169, v170);
      return v91;
    case 0x2Eu:
      v112 = v494;
      v124 = v495;
      v125 = *(v494 + 24);
      v489 = *(v494 + 40);
      v499 = v495;
      v500 = v125;
      v501 = v76;
      v502 = v489;
      v116 = type metadata accessor for PersistenceTrigger.AffectedItemJobs(255, &v499);
      sub_1CF9E7FA8();
      swift_allocObject();
      v117 = sub_1CF9E6D68();
      v322 = v321;
      v324 = v491;
      v323 = v492;
      v130 = v76;
      v131 = v490;
      (*(v491 + 16))(v490, v487, v492);
      (*(v324 + 56))(v131, 0, 1, v323);
      v121 = &unk_1F4BEEC00;
      v122 = v322;
      v123 = 128;
      goto LABEL_57;
    case 0x2Fu:
      v112 = v494;
      v113 = v495;
      v114 = *(v494 + 24);
      v115 = *(v494 + 40);
      v499 = v495;
      v500 = v114;
      v501 = v76;
      v502 = v115;
      v116 = type metadata accessor for PersistenceTrigger.AffectedItemJobs(255, &v499);
      sub_1CF9E7FA8();
      swift_allocObject();
      v117 = sub_1CF9E6D68();
      v119 = v118;
      v120 = v490;
      (*(v491 + 56))(v490, 1, 1, v492);
      v121 = &unk_1F4BEEC28;
      v122 = v119;
      v123 = 0x200000;
      goto LABEL_21;
    case 0x30u:
      v112 = v494;
      v113 = v495;
      v114 = *(v494 + 24);
      v115 = *(v494 + 40);
      v499 = v495;
      v500 = v114;
      v501 = v76;
      v502 = v115;
      v116 = type metadata accessor for PersistenceTrigger.AffectedItemJobs(255, &v499);
      sub_1CF9E7FA8();
      swift_allocObject();
      v117 = sub_1CF9E6D68();
      v159 = v158;
      v120 = v490;
      (*(v491 + 56))(v490, 1, 1, v492);
      v121 = &unk_1F4BEEC50;
      v122 = v159;
      v123 = 2048;
      goto LABEL_21;
    default:
      goto LABEL_77;
  }
}

uint64_t sub_1CF04AC40()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = sub_1CF033B88();

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF04ADA4()
{

  sub_1CF057204(v0 + 56);
  sub_1CF03D7A8(*(v0 + 96), *(v0 + 104), *(v0 + 112));
  return v0;
}

uint64_t sub_1CF04ADE8(char a1)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = (*(*result + 400))((a1 & 1) == 0);

    return v3 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1CF04AE60(char a1)
{
  if (a1)
  {
    v2 = *(**(v1[5] + 16) + 312);

    LOBYTE(v2) = v2(v3);

    if (v2)
    {
      v4 = 40;
      return *(v1[20] + v4) > 0;
    }
  }

  else
  {
    v5 = *(**(v1[4] + 16) + 312);

    LOBYTE(v5) = v5(v6);

    if (v5)
    {
      v4 = 32;
      return *(v1[20] + v4) > 0;
    }
  }

  return 0;
}

uint64_t sub_1CF04AF48(char a1)
{
  *(v1 + 16) = 0;

  if (*(v1 + 24))
  {

    v3 = sub_1CF04CA2C(a1 & 1);

    a1 |= v3;
  }

  return a1 & 1;
}

void sub_1CF04AFA8(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v5 = a1;
  v106 = a4;
  v6 = *(*a1 + 88);
  v105 = *(*a1 + 80);
  v104 = v6;
  v7 = type metadata accessor for JobLockRule(0, v105, v6, a3);
  v115 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v112 = v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v117 = v98 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v121 = v98 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v98 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v116 = (v98 - v17);
  v102 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v98 - v20;
  v22 = *(v5 + 64);
  if (sub_1CF04B9F0(v5))
  {
    v23 = *(v5 + 80);
    if (v23)
    {
      v24 = *(v5 + 88);

      v23(v25);
      sub_1CF045404(v23, v24);
    }
  }

  v113 = v22;
  v114 = v5;
  if ((a2 & 1) == 0)
  {
    swift_beginAccess();
    swift_getWitnessTable();
    nullsub_1();
    v27 = v26 + 64;
    v28 = 1 << *(v26 + 32);
    v29 = -1;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    v5 = v29 & *(v26 + 64);
    v30 = (v28 + 63) >> 6;
    v31 = v115 + 32;
    v110 = (v115 + 8);
    v111 = (v115 + 16);

    v33 = 0;
    v100 = v27;
    v99 = v30;
    v101 = v21;
    v103 = v32;
    v98[1] = v31;
    if (v5)
    {
LABEL_8:
      v34 = v33;
    }

    else
    {
      do
      {
LABEL_9:
        v34 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          goto LABEL_61;
        }

        if (v34 >= v30)
        {

          v95 = 0;
          goto LABEL_57;
        }

        v5 = *(v27 + 8 * v34);
        ++v33;
      }

      while (!v5);
    }

    v35 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v36 = v115;
    v37 = *(v32 + 48) + *(v115 + 72) * (v35 | (v34 << 6));
    v38 = *(v115 + 16);
    v108 = *(v115 + 72);
    v109 = v38;
    (v38)(v21, v37, v7);
    (*(v36 + 32))(v116, v21, v7);
    v39 = *(v114 + 56);

    v40 = 0;
    v41 = v39;
    do
    {
      if (v40 == sub_1CF9E6DF8())
      {
        (*v110)(v116, v7);
        v39, v45, v46, v47, v48, v49, v50, v51;
        v33 = v34;
        v21 = v101;
        v32 = v103;
        v27 = v100;
        v30 = v99;
        if (!v5)
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }

      v42 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v42)
      {
        v32 = (v109)(v15, v41 + ((*(v115 + 80) + 32) & ~*(v115 + 80)), v7);
        if (__OFADD__(v40, 1))
        {
          goto LABEL_60;
        }
      }

      else
      {
        v32 = sub_1CF9E7998();
        if (v102 != 8)
        {
          goto LABEL_63;
        }

        *&v118[0] = v32;
        (v109)(v15, v118, v7);
        v32 = swift_unknownObjectRelease();
        if (__OFADD__(v40, 1))
        {
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          MEMORY[0x1EEE9AC00](v32);
          v98[-2] = v5;
          fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v98[-4], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
        }
      }

      v43 = sub_1CF068CFC(v116, v7);
      v44 = *v110;
      (*v110)(v15, v7);
      ++v40;
      v41 = (v41 + v108);
    }

    while ((v43 & 1) == 0);
    (v44)(v116, v7);
    v39, v52, v53, v54, v55, v56, v57, v58;

    v22 = v113;
  }

  v59 = v114;
  *(v114 + 73) = 1;
  v60 = *(v59 + 56);

  if (sub_1CF9E6DF8())
  {
    v68 = 0;
    v116 = (v115 + 16);
    v109 = (v115 + 8);
    v110 = (v115 + 32);
    v111 = v60;
    do
    {
      v69 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v69)
      {
        v5 = *(v115 + 16);
        v32 = (v5)(v121, v60 + ((*(v115 + 80) + 32) & ~*(v115 + 80)) + *(v115 + 72) * v68, v7);
        v70 = v68 + 1;
        if (__OFADD__(v68, 1))
        {
          goto LABEL_59;
        }
      }

      else
      {
        v32 = sub_1CF9E7998();
        if (v102 != 8)
        {
          goto LABEL_62;
        }

        *&v118[0] = v32;
        v5 = *v116;
        (*v116)(v121, v118, v7);
        v32 = swift_unknownObjectRelease();
        v70 = v68 + 1;
        if (__OFADD__(v68, 1))
        {
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }
      }

      (*v110)(v117, v121, v7);
      swift_beginAccess();
      swift_getWitnessTable();
      sub_1CF9E6728();
      v71 = v119;
      v72 = v120;
      swift_endAccess();
      if (v71)
      {
        v73 = v72;
      }

      else
      {
        v73 = 0;
      }

      if (v71)
      {
        v74 = v71;
      }

      else
      {
        v74 = MEMORY[0x1E69E7CC0];
      }

      sub_1CF1A91AC(v114 + 16, v118);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v74 = sub_1CF1F7408(0, (*v74->tree + 1), 1, v74);
      }

      v76 = *v74->tree;
      v75 = *v74->tester;
      if (v76 >= v75 >> 1)
      {
        v74 = sub_1CF1F7408((v75 > 1), (v76 + 1), 1, v74);
      }

      *v74->tree = v76 + 1;
      sub_1CF054EA0(v118, &v74[1] + 40 * v76);
      v77 = v117;
      (v5)(v112, v117, v7);
      v119 = v74;
      v120 = v73;
      v22 = v113;
      swift_beginAccess();
      sub_1CF9E6708();
      sub_1CF9E6738();
      swift_endAccess();
      (*v109)(v77, v7);
      v60 = v111;
      ++v68;
    }

    while (v70 != sub_1CF9E6DF8());
  }

  v60, v61, v62, v63, v64, v65, v66, v67;
  v78 = [*(v22 + 40) allObjects];
  type metadata accessor for JobLockAggregator(0, v105, v104, v79);
  v80 = sub_1CF9E6D48();

  if (!sub_1CF9E6DF8())
  {
    goto LABEL_56;
  }

  v88 = 0;
  v89 = v107;
  v90 = v114;
  while (1)
  {
    v91 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if ((v91 & 1) == 0)
    {
      break;
    }

    v5 = *(&v80[1].super.isa + v88);

    v92 = v88 + 1;
    if (__OFADD__(v88, 1))
    {
      goto LABEL_55;
    }

LABEL_48:

    v32 = objc_sync_enter(v93);
    if (v32)
    {
      goto LABEL_64;
    }

    sub_1CF528E74(v5, v90);
    if (v89)
    {

      v96 = objc_sync_exit(v5);
      MEMORY[0x1EEE9AC00](v96);
      v97 = &v98[-4];
      v98[-2] = v5;
      goto LABEL_67;
    }

    v94 = objc_sync_exit(v5);
    if (v94)
    {
      MEMORY[0x1EEE9AC00](v94);
      v97 = &v98[-4];
      v98[-2] = v5;
LABEL_67:
      fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v97, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
    }

    ++v88;
    if (v92 == sub_1CF9E6DF8())
    {
      goto LABEL_56;
    }
  }

  v5 = sub_1CF9E7998();
  v92 = v88 + 1;
  if (!__OFADD__(v88, 1))
  {
    goto LABEL_48;
  }

LABEL_55:
  __break(1u);
LABEL_56:
  v80, v81, v82, v83, v84, v85, v86, v87;
  v95 = 1;
LABEL_57:
  *v106 = v95;
}

uint64_t sub_1CF04B9F0(uint64_t a1)
{
  if (*(a1 + 72))
  {
    return 0;
  }

  *(a1 + 72) = 1;
  v4 = objc_sync_enter(v1);
  if (v4)
  {
    MEMORY[0x1EEE9AC00](v4);
    v7 = v1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v6, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  sub_1CF04BB64(a1, &v8);
  v5 = objc_sync_exit(v1);
  if (v5)
  {
    MEMORY[0x1EEE9AC00](v5);
    v7 = v1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v6, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return v8;
}

void sub_1CF04BB64(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = a1[5];
  v5 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v4);
  v6 = (*(v5 + 16))(v4, v5);
  v8 = v7;
  sub_1CF04BC00(v6, v7, a1[7], v9);
  v11 = v10;
  v8, v12, v13, v14, v15, v16, v17, v18;
  *a2 = v11 & 1;
}

void sub_1CF04BC00(_TtC18FileProviderDaemon8FSTester *a1, _TtC18FileProviderDaemon8FSTester *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v182 = a1;
  TupleTypeMetadata2 = a2;
  v7 = type metadata accessor for JobLockRule(0, *(*v4 + 80), *(*v4 + 88), a4);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v174 = &v166 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v166 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v166 - v14;
  v16 = MEMORY[0x1E69E7CD0];
  v193 = MEMORY[0x1E69E7CD0];
  v17 = sub_1CF9E6DF8();
  v168 = v7;
  if (!v17)
  {
LABEL_61:
    LODWORD(WitnessTable) = 0;
    v107 = (v16 + 56);
    v108 = 1 << v16[32];
    v109 = -1;
    if (v108 < 64)
    {
      v109 = ~(-1 << v108);
    }

    v110 = v109 & *(v16 + 7);
    v111 = (v108 + 63) >> 6;
    v181 = v16;
    v180 = v111;
    v112 = 0;
    if (v110)
    {
      goto LABEL_66;
    }

LABEL_67:
    while (1)
    {
      v120 = v112 + 1;
      if (__OFADD__(v112, 1))
      {
        goto LABEL_79;
      }

      if (v120 >= v111)
      {

        return;
      }

      v110 = v107[v120];
      ++v112;
      if (v110)
      {
        while (1)
        {
          v121 = __clz(__rbit64(v110));
          v110 &= v110 - 1;
          v122 = (*(v16 + 6) + ((v120 << 10) | (16 * v121)));
          v124 = *v122;
          v123 = v122[1];
          swift_beginAccess();
          v184 = v124;
          v191 = v124;
          v192 = v123;
          sub_1CF9E6E58();
          swift_bridgeObjectRetain_n();
          TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
          sub_1CF9E6728();
          v123, v125, v126, v127, v128, v129, v130, v131;
          if (v185)
          {
            v182 = v185;
            v132 = v186;
            swift_endAccess();
            v187[0] = v132;

            swift_getWitnessTable();
            v133 = v5;
            v134 = sub_1CF9E7A08();
            v187[0] = v134;
            swift_getWitnessTable();
            if (sub_1CF9E7128())
            {
              v134, v135, v136, v137, v138, v139, v140, v141;
              v185 = 0;
              v186 = 0;
              v142 = v184;
              v191 = v184;
              v192 = v123;
              swift_beginAccess();
              sub_1CF9E6708();

              sub_1CF9E6738();
              swift_endAccess();
              v143 = v182;
              sub_1CF04BC00(v142, v123, v182, v144);
              v132, v145, v146, v147, v148, v149, v150, v151;
              v143, v152, v153, v154, v155, v156, v157, v158;
              v123, v159, v160, v161, v162, v163, v164, v165;
              LODWORD(WitnessTable) = 1;
              v5 = v133;
              v16 = v181;
              v111 = v180;
              v112 = v120;
              if (!v110)
              {
                goto LABEL_67;
              }
            }

            else
            {
              v132, v135, v136, v137, v138, v139, v140, v141;
              v185 = v182;
              v186 = v134;
              v191 = v184;
              v192 = v123;
              swift_beginAccess();
              sub_1CF9E6708();
              sub_1CF9E6738();
              swift_endAccess();
              v112 = v120;
              v5 = v133;
              v16 = v181;
              v111 = v180;
              if (!v110)
              {
                goto LABEL_67;
              }
            }
          }

          else
          {
            swift_endAccess();
            v123, v113, v114, v115, v116, v117, v118, v119;
            v112 = v120;
            if (!v110)
            {
              goto LABEL_67;
            }
          }

LABEL_66:
          v120 = v112;
        }
      }
    }
  }

  v167 = v9;
  v18 = 0;
  v181 = (v8 + 16);
  v176 = (v8 + 32);
  v175 = (v8 + 8);
  v171 = v5;
  v170 = a3;
  v169 = v8;
  v173 = v12;
  v172 = v15;
  while (1)
  {
    v19 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if (v19)
    {
      v20 = *(v8 + 16);
      v20(v15, a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v18, v7);
      v21 = __OFADD__(v18++, 1);
      if (v21)
      {
        goto LABEL_59;
      }
    }

    else
    {
      v106 = sub_1CF9E7998();
      if (v167 != 8)
      {
        goto LABEL_88;
      }

      v187[0] = v106;
      v20 = *v181;
      (*v181)(v15, v187, v7);
      swift_unknownObjectRelease();
      v21 = __OFADD__(v18++, 1);
      if (v21)
      {
LABEL_59:
        __break(1u);
LABEL_60:
        v16 = v193;
        goto LABEL_61;
      }
    }

    v180 = v20;
    (*v176)(v12, v15, v7);
    swift_beginAccess();
    WitnessTable = swift_getWitnessTable();
    sub_1CF9E6728();
    v22 = v185;
    if (v185)
    {
      break;
    }

    swift_endAccess();
    (*v175)(v12, v7);
LABEL_4:
    if (v18 == sub_1CF9E6DF8())
    {
      goto LABEL_60;
    }
  }

  v178 = v18;
  v177 = v186;
  swift_endAccess();
  v23 = TupleTypeMetadata2;

  v24 = sub_1CF04C7D8(v22, v182, v23);
  v26 = v25;
  v23, v25, v27, v28, v29, v30, v31, v32;
  if (v26)
  {
    v33 = *v22->tree;
    v24 = v33;
LABEL_14:
    if (__OFADD__(v33, v24 - v33))
    {
      goto LABEL_82;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v191 = v22;
    if (!isUniquelyReferenced_nonNull_native || v24 > *v22->tester >> 1)
    {
      if (v33 <= v24)
      {
        v41 = v24;
      }

      else
      {
        v41 = v33;
      }

      v22 = sub_1CF044A50(isUniquelyReferenced_nonNull_native, v41, 1, v22, v37, v38, v39, v40);
      v191 = v22;
    }

    sub_1CF04C8D4(v24, v33, 0);
    v42 = 0;
    v184 = *v22->tree;
    v43 = &v22[1];
    v18 = v178;
    while (v184 != v42)
    {
      if (v42 >= *v22->tree)
      {
        __break(1u);
        goto LABEL_78;
      }

      v42 = (v42 + 1);
      v44 = v43 + 56;
      sub_1CEFCCBDC(v43, v187, &qword_1EC4BE650, &qword_1CF9FE490);
      v45 = v190;
      sub_1CF056B84(v187);
      v43 = v44;
      if (v45 == 1)
      {
        v12 = v173;
        goto LABEL_52;
      }
    }

    v53 = v177;
    v54 = *v177->tree;
    if (v54)
    {
      v185 = MEMORY[0x1E69E7CC0];
      sub_1CEFE95CC(0, v54, 0);
      v55 = v185;
      v56 = &v53[1];
      do
      {
        sub_1CF1A91AC(v56, v187);
        v57 = v188;
        v58 = v189;
        __swift_project_boxed_opaque_existential_1(v187, v188);
        v59 = (*(v58 + 16))(v57, v58);
        v61 = v60;
        __swift_destroy_boxed_opaque_existential_1(v187);
        v185 = v55;
        v63 = *v55->tree;
        v62 = *v55->tester;
        if (v63 >= v62 >> 1)
        {
          sub_1CEFE95CC((v62 > 1), v63 + 1, 1);
          v55 = v185;
        }

        *v55->tree = v63 + 1;
        v64 = v55 + 16 * v63;
        *(v64 + 4) = v59;
        *(v64 + 5) = v61;
        v56 += 40;
        --v54;
      }

      while (v54);
      v5 = v171;
      v7 = v168;
      a3 = v170;
      v8 = v169;
    }

    else
    {
      v55 = MEMORY[0x1E69E7CC0];
    }

    sub_1CF04C9BC(v55);
    v55, v92, v93, v94, v95, v96, v97, v98;
    v12 = v173;
    v18 = v178;
LABEL_52:
    if (v184)
    {
      v180(v174, v12, v7);
      v185 = v22;
      v186 = v177;
    }

    else
    {
      v177, v46, v47, v48, v49, v50, v51, v52;
      v22, v99, v100, v101, v102, v103, v104, v105;
      v180(v174, v12, v7);
      v185 = 0;
      v186 = 0;
    }

    swift_beginAccess();
    sub_1CF9E6708();
    sub_1CF9E6738();
    swift_endAccess();
    (*v175)(v12, v7);
    v15 = v172;
    goto LABEL_4;
  }

  v33 = v24 + 1;
  if (__OFADD__(v24, 1))
  {
    goto LABEL_87;
  }

  tree = v22->tree;
  v34 = *v22->tree;
  if (v33 == v34)
  {
LABEL_12:
    v5 = v171;
    if (v33 < v24)
    {
      goto LABEL_80;
    }

    a3 = v170;
    v8 = v169;
    if (v24 < 0)
    {
      goto LABEL_81;
    }

    goto LABEL_14;
  }

  v65 = 56 * v24 + 88;
  while (v33 < v34)
  {
    sub_1CEFCCBDC(v22 + v65, v187, &qword_1EC4BE650, &qword_1CF9FE490);
    v66 = v188;
    v67 = v189;
    __swift_project_boxed_opaque_existential_1(v187, v188);
    v68 = (*(v67 + 16))(v66, v67);
    if (v68 == v182 && v69 == TupleTypeMetadata2)
    {
      v69, v69, v182, TupleTypeMetadata2, v70, v71, v72, v73;
      sub_1CF056B84(v187);
    }

    else
    {
      v75 = v69;
      v76 = sub_1CF9E8048();
      v75, v77, v78, v79, v80, v81, v82, v83;
      sub_1CF056B84(v187);
      if ((v76 & 1) == 0)
      {
        if (v33 != v24)
        {
          if (v24 < 0)
          {
            goto LABEL_83;
          }

          v84 = *tree;
          if (v24 >= *tree)
          {
            goto LABEL_84;
          }

          sub_1CEFCCBDC(&v22[1] + 56 * v24, v187, &qword_1EC4BE650, &qword_1CF9FE490);
          if (v33 >= v84)
          {
            goto LABEL_85;
          }

          sub_1CEFCCBDC(v22 + v65, &v185, &qword_1EC4BE650, &qword_1CF9FE490);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = sub_1CF7722C0(v22, v85, v86, v87, v88, v89, v90, v91);
          }

          sub_1CF52BDB0(&v185, &v22[1] + 56 * v24);
          if (v33 >= *v22->tree)
          {
            goto LABEL_86;
          }

          sub_1CF52BDB0(v187, v22 + v65);
        }

        ++v24;
      }
    }

    ++v33;
    tree = v22->tree;
    v34 = *v22->tree;
    v65 += 56;
    if (v33 == v34)
    {
      goto LABEL_12;
    }
  }

LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
}

uint64_t sub_1CF04C7D8(uint64_t a1, uint64_t a2, _TtC18FileProviderDaemon8FSTester *a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a1 + 32); ; i += 7)
  {
    v8 = i[3];
    v9 = i[4];
    __swift_project_boxed_opaque_existential_1(i, v8);
    v10 = (*(v9 + 16))(v8, v9);
    v18 = v11;
    if (v10 == a2 && v11 == a3)
    {
      break;
    }

    v20 = sub_1CF9E8048();
    v18, v21, v22, v23, v24, v25, v26, v27;
    if (v20)
    {
      return v6;
    }

    if (v3 == ++v6)
    {
      return 0;
    }
  }

  v11, v11, v12, v13, v14, v15, v16, v17;
  return v6;
}

unint64_t sub_1CF04C8D4(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 56 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE650, &qword_1CF9FE490);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 56 * a3;
  v13 = (v7 + 32 + 56 * a2);
  v14 = 56 * v12;
  if (result != v13 || result >= v13 + v14)
  {
    result = memmove(result, v13, v14);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v16;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

void sub_1CF04C9BC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_1CF6E9AF0(v12, v4, v3);
      v12[1], v5, v6, v7, v8, v9, v10, v11;
      v2 += 2;
      --v1;
    }

    while (v1);
  }
}

uint64_t sub_1CF04CA2C(char a1)
{
  v3 = *(v1 + 64);
  v4 = objc_sync_enter(v3);
  if (v4)
  {
    MEMORY[0x1EEE9AC00](v4);
    v9 = v3;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v8, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  sub_1CF04AFA8(v1, a1 & 1, v5, &v10);
  v6 = objc_sync_exit(v3);
  if (v6)
  {
    MEMORY[0x1EEE9AC00](v6);
    v9 = v3;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v8, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return v10;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF04CB8C(_TtC18FileProviderDaemon8FSTester *result, int64_t a2, int64_t a3, _TtC18FileProviderDaemon8FSTester *a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->tester;
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *a4->tree;
  if (v11 <= v12)
  {
    v13 = *a4->tree;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE018, &unk_1CFA06450);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    *v14->tree = v12;
    *v14->tester = 2 * v15 - 64;
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v16 = &v14[1];
  v17 = &a4[1];
  if (v9)
  {
    if (v14 != a4 || v16 >= &v17[v12])
    {
      memmove(v16, v17, v12);
    }

    *a4->tree = 0;
  }

  else
  {
    memcpy(v16, v17, v12);
  }

  a4, v17, a3, a4, a5, a6, a7, a8;
  return v14;
}

uint64_t sub_1CF04CC80()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v140 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v140 - v5;
  v7 = sub_1CF9E5D98();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v140 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SyncState(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v140 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF04ED74(v0, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v47 = *v13;
        v46 = *(v13 + 1);
        v143[0] = 0;
        v143[1] = 0xE000000000000000;
        sub_1CF9E7948();
        v143[1], v48, v49, v50, v51, v52, v53, v54;
        v143[0] = 0xD000000000000012;
        v143[1] = 0x80000001CFA60620;
        v55 = sub_1CF04D35C(v47, v46);
        v57 = v56;
        MEMORY[0x1D3868CC0](v55);
        v57, v58, v59, v60, v61, v62, v63, v64;
        MEMORY[0x1D3868CC0](41, 0xE100000000000000);
        v65 = v143[0];

        return v65;
      }

      v104 = *v13;
      v143[0] = 0;
      v143[1] = 0xE000000000000000;
      sub_1CF9E7948();
      v143[1], v105, v106, v107, v108, v109, v110, v111;
      strcpy(v143, "domainVersion(");
      HIBYTE(v143[1]) = -18;
      if (v104)
      {
        v112 = [v104 description];
        v113 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v115 = v114;
      }

      else
      {
        v113 = 0x3E6C696E3CLL;
        v115 = 0xE500000000000000;
      }

      MEMORY[0x1D3868CC0](v113, v115);
      v115, v133, v134, v135, v136, v137, v138, v139;
      MEMORY[0x1D3868CC0](41, 0xE100000000000000);

      return v143[0];
    }

    if (EnumCaseMultiPayload == 6)
    {
      v66 = *v13;
      v143[0] = 0;
      v143[1] = 0xE000000000000000;
      sub_1CF9E7948();
      v143[1], v67, v68, v69, v70, v71, v72, v73;
      strcpy(v143, "featureFlags(");
      HIWORD(v143[1]) = -4864;
      v23 = sub_1CF7F48D8(v66);
      v24 = v74;
    }

    else if (EnumCaseMultiPayload == 7)
    {
      v15 = *v13;
      v143[0] = 0;
      v143[1] = 0xE000000000000000;
      sub_1CF9E7948();
      v143[1], v16, v17, v18, v19, v20, v21, v22;
      v143[0] = 0xD000000000000010;
      v143[1] = 0x80000001CFA60600;
      if (v15)
      {
        v23 = 0xD000000000000019;
      }

      else
      {
        v23 = 0x676E696E6E7572;
      }

      if (v15)
      {
        v24 = 0x80000001CFA40CB0;
      }

      else
      {
        v24 = 0xE700000000000000;
      }
    }

    else
    {
      v95 = *v13;
      v143[0] = 0;
      v143[1] = 0xE000000000000000;
      sub_1CF9E7948();
      v143[1], v96, v97, v98, v99, v100, v101, v102;
      v143[0] = 0xD000000000000010;
      v143[1] = 0x80000001CFA605E0;
      v141 = v95;
      v23 = sub_1CF9E7F98();
      v24 = v103;
    }

LABEL_29:
    MEMORY[0x1D3868CC0](v23);
    v24, v126, v127, v128, v129, v130, v131, v132;
    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    return v143[0];
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      (*(v8 + 32))(v10, v13, v7);
      strcpy(v143, "dbUUID(");
      v143[1] = 0xE700000000000000;
      sub_1CF1968FC();
      v25 = sub_1CF9E7F98();
      v27 = v26;
      MEMORY[0x1D3868CC0](v25);
      v27, v28, v29, v30, v31, v32, v33, v34;
      MEMORY[0x1D3868CC0](41, 0xE100000000000000);
      v35 = v143[0];
      (*(v8 + 8))(v10, v7);
      return v35;
    }

    v75 = *v13;
    v143[0] = 0;
    v143[1] = 0xE000000000000000;
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA60660);
    v141 = 114;
    v142 = 0xE100000000000000;
    v140[1] = v75;
    v76 = sub_1CF9E7F98();
    v78 = v77;
    MEMORY[0x1D3868CC0](v76);
    v78, v79, v80, v81, v82, v83, v84, v85;
    v23 = v141;
    v24 = v142;
    goto LABEL_29;
  }

  if (EnumCaseMultiPayload != 2)
  {
    v86 = *v13;
    v87 = v13[8];
    v143[0] = 0;
    v143[1] = 0xE000000000000000;
    sub_1CF9E7948();
    v143[1], v88, v89, v90, v91, v92, v93, v94;
    v143[0] = 0xD000000000000010;
    v143[1] = 0x80000001CFA60640;
    if (v87)
    {
      v23 = 0x3E6C696E3CLL;
      v24 = 0xE500000000000000;
    }

    else
    {
      v141 = v86;
      sub_1CEFFD0A8();
      v23 = sub_1CF9E7718();
      v24 = v125;
    }

    goto LABEL_29;
  }

  sub_1CF015638(v13, v6);
  v143[0] = 0;
  v143[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v143[1], v37, v38, v39, v40, v41, v42, v43;
  strcpy(v143, "fsStreamUUID(");
  HIWORD(v143[1]) = -4864;
  sub_1CF0160C0(v6, v3);
  if ((*(v8 + 48))(v3, 1, v7) == 1)
  {
    v44 = 0x3E6C696E3CLL;
    sub_1CF0156A8(v3);
    v45 = 0xE500000000000000;
  }

  else
  {
    v44 = MEMORY[0x1D3867FB0]();
    v45 = v116;
    (*(v8 + 8))(v3, v7);
  }

  MEMORY[0x1D3868CC0](v44, v45);
  v45, v117, v118, v119, v120, v121, v122, v123;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  v124 = v143[0];
  sub_1CF0156A8(v6);
  return v124;
}

uint64_t sub_1CF04D35C(uint64_t a1, uint64_t a2)
{
  v4 = 0x3E6C696E3CLL;
  sub_1CF9E7948();
  0xE000000000000000, v5, v6, v7, v8, v9, v10, v11;
  if (a1)
  {
    v12 = NSFileProviderPage.description.getter(a1);
    v14 = v13;
  }

  else
  {
    v14 = 0xE500000000000000;
    v12 = 0x3E6C696E3CLL;
  }

  MEMORY[0x1D3868CC0](v12, v14);
  v14, v15, v16, v17, v18, v19, v20, v21;
  MEMORY[0x1D3868CC0](0x3A726F68636E6120, 0xE800000000000000);
  if (a2)
  {
    v22 = sub_1CF9E5B88();
    v24 = v23;
    FPItemVersionData.description.getter();
    v4 = v25;
    v27 = v26;
    sub_1CEFE4714(v22, v24);
  }

  else
  {
    v27 = 0xE500000000000000;
  }

  MEMORY[0x1D3868CC0](v4, v27);
  v27, v28, v29, v30, v31, v32, v33, v34;
  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  return 0x3A656761703CLL;
}

void FPItemVersionData.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  FPItemVersionData.isZero.getter();
  if ((v3 & 1) == 0)
  {
    sub_1CF04D8A8(v1, v2);
    return;
  }

  v4 = [objc_opt_self() beforeFirstSyncComponent];
  v5 = sub_1CF9E5B88();
  v7 = v6;

  v8 = v7;
  v9 = v7 >> 62;
  if ((v7 >> 62) <= 1)
  {
    if (!v9)
    {
      sub_1CEFE4714(v5, v7);
      v10 = BYTE6(v7);
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (v9 != 2)
  {
    sub_1CEFE4714(v5, v7);
    v10 = 0;
    goto LABEL_13;
  }

  v12 = *(v5 + 16);
  v11 = *(v5 + 24);
  sub_1CEFE4714(v5, v8);
  v10 = v11 - v12;
  if (__OFSUB__(v11, v12))
  {
    __break(1u);
LABEL_10:
    sub_1CEFE4714(v5, v8);
    if (__OFSUB__(HIDWORD(v5), v5))
    {
LABEL_30:
      __break(1u);
      return;
    }

    v10 = HIDWORD(v5) - v5;
  }

LABEL_13:
  v13 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v13 == 2)
    {
      v15 = *(v1 + 16);
      v14 = *(v1 + 24);
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }
  }

  else
  {
    if (v13)
    {
      v14 = v1 >> 32;
    }

    else
    {
      v14 = BYTE6(v2);
    }

    if (v13)
    {
      v15 = v1;
    }

    else
    {
      v15 = 0;
    }
  }

  if (v14 < v10 || v14 < v15)
  {
    __break(1u);
    goto LABEL_30;
  }

  v17 = sub_1CF9E5B18();
  v19 = v18;
  sub_1CF04D8A8(v17, v18);
  v21 = v20;
  v23 = v22;
  sub_1CEFE4714(v17, v19);
  MEMORY[0x1D3868CC0](v21, v23);
  v23, v24, v25, v26, v27, v28, v29, v30;
}

void FPItemVersionData.isZero.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v2 >> 62;
  if ((v2 >> 62) <= 1)
  {
    if (!v3)
    {
      v4 = BYTE6(v2);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v3 != 2)
  {
    v4 = 0;
    goto LABEL_11;
  }

  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v4 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(v1), v1))
    {
      __break(1u);
      goto LABEL_37;
    }

    v4 = HIDWORD(v1) - v1;
  }

LABEL_11:
  v7 = objc_opt_self();
  v8 = [v7 beforeFirstSyncComponent];
  v9 = sub_1CF9E5B88();
  v11 = v10;

  v12 = v11;
  v13 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v13 != 2)
    {
      sub_1CEFE4714(v9, v11);
      if (v4 < 0)
      {
        return;
      }

LABEL_23:
      v16 = [v7 beforeFirstSyncComponent];
      v17 = sub_1CF9E5B88();
      v19 = v18;

      v20 = v19;
      v21 = v19 >> 62;
      if ((v19 >> 62) > 1)
      {
        if (v21 != 2)
        {
          goto LABEL_34;
        }

        v23 = *(v17 + 16);
        v22 = *(v17 + 24);
        sub_1CEFE4714(v17, v20);
        v20 = v22 - v23;
        if (!__OFSUB__(v22, v23))
        {
LABEL_32:
          if ((v20 & 0x8000000000000000) == 0)
          {
            goto LABEL_35;
          }

          __break(1u);
LABEL_34:
          sub_1CEFE4714(v17, v20);
          goto LABEL_35;
        }

        __break(1u);
      }

      else if (!v21)
      {
        sub_1CEFE4714(v17, v19);
LABEL_35:
        v24 = sub_1CF9E5B18();
        v26 = v25;
        v27 = [v7 beforeFirstSyncComponent];
        v28 = sub_1CF9E5B88();
        v30 = v29;

        sub_1CF328660(v24, v26, v28, v30);
        sub_1CEFE4714(v28, v30);
        sub_1CEFE4714(v24, v26);
        return;
      }

      sub_1CEFE4714(v17, v20);
      if (!__OFSUB__(HIDWORD(v17), v17))
      {
        v20 = HIDWORD(v17) - v17;
        goto LABEL_32;
      }

      goto LABEL_39;
    }

    v15 = *(v9 + 16);
    v14 = *(v9 + 24);
    sub_1CEFE4714(v9, v12);
    if (!__OFSUB__(v14, v15))
    {
      if (v4 < v14 - v15)
      {
        return;
      }

      goto LABEL_23;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v13)
  {
    sub_1CEFE4714(v9, v11);
    if (!__OFSUB__(HIDWORD(v9), v9))
    {
      if (v4 >= HIDWORD(v9) - v9)
      {
        goto LABEL_23;
      }

      return;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    return;
  }

  sub_1CEFE4714(v9, v11);
  if (v4 >= BYTE6(v11))
  {
    goto LABEL_23;
  }
}

void sub_1CF04D8A8(uint64_t a1, unint64_t a2)
{
  v5 = sub_1CF9E5468();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CF9E6938();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = *v2;
  v10 = v2[1];
  v12 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v12 != 2)
    {
      goto LABEL_11;
    }

    v14 = *(a1 + 16);
    v13 = *(a1 + 24);
    v15 = __OFSUB__(v13, v14);
    v16 = v13 - v14;
    if (!v15)
    {
      if (v16 > 64)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_38;
  }

  if (!v12)
  {
    if (BYTE6(a2) > 0x40uLL)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (HIDWORD(a1) - a1 > 64)
  {
LABEL_15:
    if (v12 <= 1)
    {
      if (!v12)
      {
        if (BYTE6(a2) <= 0xAuLL)
        {
          goto LABEL_27;
        }

        goto LABEL_22;
      }

      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        if (HIDWORD(a1) - a1 <= 10)
        {
          goto LABEL_27;
        }

LABEL_22:
        v56 = 0x626F6C627BLL;
        v57 = 0xE500000000000000;
        v37 = v10 >> 62;
        if ((v10 >> 62) > 1)
        {
          if (v37 != 2)
          {
            v38 = 0;
            goto LABEL_35;
          }

          v40 = *(v11 + 16);
          v39 = *(v11 + 24);
          v15 = __OFSUB__(v39, v40);
          v38 = v39 - v40;
          if (!v15)
          {
            goto LABEL_35;
          }

          __break(1u);
        }

        else if (!v37)
        {
          v38 = BYTE6(v10);
LABEL_35:
          v55 = v38;
          v41 = sub_1CF9E7F98();
          v43 = v42;
          MEMORY[0x1D3868CC0](v41);
          v43, v44, v45, v46, v47, v48, v49, v50;
          MEMORY[0x1D3868CC0](125, 0xE100000000000000);
          return;
        }

        LODWORD(v38) = HIDWORD(v11) - v11;
        if (!__OFSUB__(HIDWORD(v11), v11))
        {
          v38 = v38;
          goto LABEL_35;
        }

LABEL_41:
        __break(1u);
        return;
      }

LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (v12 != 2)
    {
LABEL_27:
      sub_1CF9E5B58();
      return;
    }

    v35 = *(a1 + 16);
    v34 = *(a1 + 24);
    v15 = __OFSUB__(v34, v35);
    v36 = v34 - v35;
    if (!v15)
    {
      if (v36 > 10)
      {
        goto LABEL_22;
      }

      goto LABEL_27;
    }

LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_11:
  sub_1CF9E6918();
  v17 = sub_1CF9E68D8();
  if (!v18)
  {
    goto LABEL_15;
  }

  v52 = v10;
  v53 = v11;
  v56 = v17;
  v57 = v18;
  v54 = v17;
  v19 = v18;
  sub_1CF9E5448();
  sub_1CEFE4E68();
  v20 = sub_1CF9E7658();
  v51[0] = v21;
  v51[1] = v20;
  v23 = v22;
  v24 = *(v6 + 8);
  v24(v8, v5);
  v31 = v19;
  if ((v23 & 1) == 0 || (v56 = v54, v57 = v19, sub_1CF9E5458(), sub_1CF9E7658(), v33 = v32, v24(v8, v5), v31 = v19, (v33 & 1) == 0))
  {
    v31, v31, v25, v26, v27, v28, v29, v30;
    v10 = v52;
    v11 = v53;
    goto LABEL_15;
  }
}

uint64_t sub_1CF04DC10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SyncState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CF04DC74()
{
  v1 = type metadata accessor for SyncState(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF04ED74(v0, v3);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 3)
  {
    if (result > 1)
    {
      if (result == 2)
      {
        sub_1CF04EDD8(v3);
        return 2;
      }

      else
      {
        return 3;
      }
    }

    else if (result)
    {
      return 1;
    }

    else
    {
      sub_1CF04EDD8(v3);
      return 0;
    }
  }

  else if (result <= 5)
  {
    if (result == 4)
    {
      sub_1CF04EDD8(v3);
      return 4;
    }

    else
    {
      sub_1CF04EDD8(v3);
      return 5;
    }
  }

  else if (result != 6 && result != 7)
  {
    return 8;
  }

  return result;
}

uint64_t sub_1CF04DD90(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v44 - v8;
  v10 = sub_1CF9E5D98();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SyncState(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1CF04ED74(v2, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        if (v16[1])
        {
          v36 = 0;
        }

        else
        {
          v36 = sub_1CF9E8268();
        }

        v37 = [a1 bindObjectParameter_];
        swift_unknownObjectRelease();
        goto LABEL_18;
      }

      sub_1CF015638(v16, v9);
      sub_1CF0160C0(v9, v6);
      if ((*(v11 + 48))(v6, 1, v10) == 1)
      {
        sub_1CF0156A8(v6);
        v31 = 0;
      }

      else
      {
        v44[0] = sub_1CF9E5D18();
        v44[1] = v41;
        (*(v11 + 8))(v6, v10);
        v31 = sub_1CF9E8028();
        sub_1CF342B1C(v44);
      }

      v42 = [a1 bindObjectParameter_];
      swift_unknownObjectRelease();
      v30 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

      sub_1CF0156A8(v9);
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        v18 = [a1 bindUnsignedLongParameter_];
LABEL_17:
        v37 = v18;
LABEL_18:
        v30 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

        return v30;
      }

      (*(v11 + 32))(v13, v16, v10);
      sub_1CF9E5D18();
      v20 = v19;
      v21 = sub_1CF9E6888();
      v20, v22, v23, v24, v25, v26, v27, v28;
      v29 = [a1 bindStringParameter_];

      v30 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      (*(v11 + 8))(v13, v10);
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 7)
      {
        v18 = [a1 bindLongParameter_];
      }

      else
      {
        v18 = [a1 bindLongParameter_];
      }

      goto LABEL_17;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v32 = *v16;
      v33 = v16[1];
      v34 = v33;
      v35 = v32;
      v30 = sub_1CF04E238(v32, v33);
    }

    else
    {
      v39 = *v16;
      if (*v16)
      {
        v40 = [*v16 version];
      }

      else
      {
        v40 = 0;
      }

      v43 = [a1 bindLongParameter_];
      v30 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    }
  }

  return v30;
}

uint64_t sub_1CF04E238(void *a1, void *a2)
{
  v12[4] = a1;
  v12[5] = a2;
  if (a1 == 1)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v12[2] = 0;
  }

  else
  {
    v4 = &type metadata for WorkingSetSyncAnchor;
    v2 = a1;
    v3 = a2;
  }

  v12[0] = v2;
  v12[1] = v3;
  v12[3] = v4;
  sub_1CF04E410(a1, a2);
  v5 = sub_1CEFF8EA0(v12);
  v7 = v6;
  sub_1CEFCCC44(v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v7)
  {
    sub_1CF9E56C8();
    swift_allocObject();
    sub_1CF9E56B8();
    sub_1CF9E5698();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE578, &qword_1CF9FDDE0);
    sub_1CF04EE34(&qword_1EDEA5AA0, &qword_1EC4BE578, &qword_1CF9FDDE0, sub_1CF1E1670);
    v8 = sub_1CF9E56A8();
    v10 = v9;
    v5 = sub_1CF04E5D8(v8, v9);

    sub_1CEFE4714(v8, v10);
  }

  return v5;
}

id sub_1CF04E410(id result, void *a2)
{
  if (result != 1)
  {
    v4 = result;
    v3 = a2;

    return v4;
  }

  return result;
}

uint64_t sub_1CF04E454(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_1CF04E4B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1CF04E530(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CF04E5A8()
{
  if (*v0)
  {
    return 0x726F68636E61;
  }

  else
  {
    return 1701273968;
  }
}

uint64_t sub_1CF04E5D8(uint64_t a1, unint64_t a2)
{
  v12[4] = a1;
  v12[5] = a2;
  if (a2 >> 60 == 15)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v12[2] = 0;
  }

  else
  {
    v4 = MEMORY[0x1E6969080];
    v2 = a1;
    v3 = a2;
  }

  v12[0] = v2;
  v12[1] = v3;
  v12[3] = v4;
  sub_1CEFF05F4(a1, a2);
  v5 = sub_1CEFF8EA0(v12);
  v7 = v6;
  sub_1CEFCCC44(v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v7)
  {
    sub_1CF9E56C8();
    swift_allocObject();
    sub_1CF9E56B8();
    sub_1CF9E5698();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE4A0, &unk_1CFA03A10);
    sub_1CF04EE34(&qword_1EC4BE500, &qword_1EC4BE4A0, &unk_1CFA03A10, sub_1CF190A74);
    v8 = sub_1CF9E56A8();
    v10 = v9;
    v5 = sub_1CF04E5D8(v8, v9);

    sub_1CEFE4714(v8, v10);
  }

  return v5;
}

uint64_t sub_1CF04E7B4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v9 = 0xF000000000000007;
  v7 = a2;
  v8 = a3;
  swift_beginAccess();

  v4 = *(v3 + 632);
  v6[0] = *(v3 + 616);
  v6[1] = v4;
  type metadata accessor for FSOrFPJob(255, v6);
  sub_1CF9E6708();
  sub_1CF9E6738();
  return swift_endAccess();
}

void sub_1CF04E924(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 2;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 2);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -2)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_1CF04EAEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1CF9E75D8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  (*(v6 + 16))(&v15 - v8, a1, v5, v7);
  v10 = *(a2 - 8);
  if ((*(v10 + 48))(v9, 1, a2) == 1)
  {
    (*(v6 + 8))(v9, v5);
    v15 = 0u;
    v16 = 0u;
  }

  else
  {
    *(&v16 + 1) = swift_getAssociatedTypeWitness();
    __swift_allocate_boxed_opaque_existential_0(&v15);
    sub_1CF9E6C28();
    (*(v10 + 8))(v9, a2);
  }

  v11 = sub_1CEFF8EA0(&v15);
  v13 = v12;
  sub_1CEFCCC44(&v15, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v13)
  {
    return v11;
  }

  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for FPDiagnosticsSamplingResult.CodingKeys(unsigned int *a1, int a2)
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

uint64_t sub_1CF04ED74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SyncState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CF04EDD8(uint64_t a1)
{
  v2 = type metadata accessor for SyncState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CF04EE34(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CF04EEB0(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF690, &unk_1CFA023B8);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF04F0B8();
  sub_1CF9E82A8();
  v14 = a2;
  v13 = 0;
  type metadata accessor for NSFileProviderPage(0);
  sub_1CF04E530(&qword_1EDEA3628, type metadata accessor for NSFileProviderPage, &protocol conformance descriptor for NSFileProviderPage);
  sub_1CF9E7E68();
  if (!v3)
  {
    v14 = a3;
    v13 = 1;
    type metadata accessor for NSFileProviderSyncAnchor(0);
    sub_1CF04E530(&unk_1EDEA3538, type metadata accessor for NSFileProviderSyncAnchor, &protocol conformance descriptor for NSFileProviderSyncAnchor);
    sub_1CF9E7E68();
  }

  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_1CF04F0B8()
{
  result = qword_1EDEA5AC8;
  if (!qword_1EDEA5AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA5AC8);
  }

  return result;
}

uint64_t sub_1CF04F13C(uint64_t a1)
{
  v1 = sub_1CF9E5B88();
  v3 = v2;
  sub_1CF9E5BD8();
  return sub_1CEFE4714(v1, v3);
}

void *sub_1CF04F1A0()
{
  v1 = objc_sync_enter(v0);
  if (v1)
  {
    MEMORY[0x1EEE9AC00](v1);
    v7 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v6, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v2 = *&v0[qword_1EDEADB30];
  v3 = v2;
  v4 = objc_sync_exit(v0);
  if (v4)
  {
    MEMORY[0x1EEE9AC00](v4);
    v7 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v6, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return v2;
}

unint64_t sub_1CF04F294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_1CF9E6DF8())
  {
    sub_1CF9E7BF8();
    v13 = sub_1CF9E7BE8();
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC8];
  }

  result = sub_1CF9E6DF8();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_1CF9E6DC8())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_1CF9E7998();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_1CF981B68(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_1CF04F598(uint64_t a1)
{
  v2 = v1;
  sub_1CF0451E0(a1, v21);
  if (!v22)
  {
    return sub_1CEFCCC44(v21, &unk_1EC4C1BE0, &unk_1CF9FD400);
  }

  __swift_project_boxed_opaque_existential_1(v21, v22);
  v4 = sub_1CF9E7F98();
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_1(v21);
  result = objc_sync_enter(v2);
  if (result)
  {
    goto LABEL_10;
  }

  sub_1CF04E7B4(v2, v4, v6);
  v8 = objc_sync_exit(v2);
  if (v8)
  {
    MEMORY[0x1EEE9AC00](v8);
    v20 = v2;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v19, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v6, v9, v10, v11, v12, v13, v14, v15;
  result = sub_1CF0452A4(a1);
  if ((result & 0x8000) != 0)
  {
    v16 = *&v2[qword_1EDEADA98];
    v17 = __OFSUB__(v16, 1);
    v18 = v16 - 1;
    if (!v17)
    {
      *&v2[qword_1EDEADA98] = v18;
      return result;
    }

    __break(1u);
LABEL_10:
    MEMORY[0x1EEE9AC00](result);
    v20 = v2;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v19, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  return result;
}

uint64_t sub_1CF04F804(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1CF04F854(uint64_t a1)
{
  if (a1 >= 3600000000000)
  {
    v45 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](104, 0xE100000000000000);
    v14 = sub_1CF9E7F98();
    v16 = v15;
    MEMORY[0x1D3868CC0](v14);
    v16, v17, v18, v19, v20, v21, v22, v23;
    v12 = 7235949;
    v13 = 0xE300000000000000;
  }

  else if (a1 >= 60000000000)
  {
    v45 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](7235949, 0xE300000000000000);
    v24 = sub_1CF9E7F98();
    v26 = v25;
    MEMORY[0x1D3868CC0](v24);
    v26, v27, v28, v29, v30, v31, v32, v33;
    v12 = 115;
    v13 = 0xE100000000000000;
  }

  else
  {
    v1 = a1 / 1000000 % 1000;
    if (a1 < 1000000000)
    {
      v45 = sub_1CF9E7F98();
      if (v1 >= 1)
      {
        MEMORY[0x1D3868CC0](29549, 0xE200000000000000);
        v34 = sub_1CF9E7F98();
        v36 = v35;
        MEMORY[0x1D3868CC0](v34);
        v36, v37, v38, v39, v40, v41, v42, v43;
      }

      v12 = 7583170;
      v13 = 0xA300000000000000;
    }

    else
    {
      v45 = sub_1CF9E7F98();
      MEMORY[0x1D3868CC0](115, 0xE100000000000000);
      v2 = sub_1CF9E7F98();
      v4 = v3;
      MEMORY[0x1D3868CC0](v2);
      v4, v5, v6, v7, v8, v9, v10, v11;
      v12 = 29549;
      v13 = 0xE200000000000000;
    }
  }

  MEMORY[0x1D3868CC0](v12, v13);
  return v45;
}

uint64_t sub_1CF04FB84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v33 = a1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v30 = a2;
  v31 = a3;
  v34 = a2;
  v35 = a3;
  v28 = swift_getAssociatedConformanceWitness();
  v29 = AssociatedConformanceWitness;
  v36 = AssociatedConformanceWitness;
  v37 = v28;
  v10 = type metadata accessor for ThrottlingKey(255, &v34);
  v11 = sub_1CF9E75D8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - v13;
  v15 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v32 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v28 - v19;
  sub_1CF04FF38(v33, v14);
  if ((*(v15 + 48))(v14, 1, v10) == 1)
  {
    (*(v12 + 8))(v14, v11);
    return sub_1CF9E6DA8();
  }

  else
  {
    (*(v15 + 32))(v20, v14, v10);
    v22 = *(v15 + 16);
    v23 = v32;
    v22(v32, v20, v10);
    v34 = v30;
    v35 = v31;
    v36 = v29;
    v37 = v28;
    v24 = type metadata accessor for ReconciliationID(0, &v34);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(*(v24 - 8) + 8))(v23, v24);
      v25 = sub_1CF9E6DA8();
      (*(v15 + 8))(v20, v10);
    }

    else
    {
      sub_1CF9E7FA8();
      swift_allocObject();
      v26 = sub_1CF9E6D68();
      v22(v27, v20, v10);
      v25 = sub_1CF045898(v26, v10);
      (*(v15 + 8))(v20, v10);
      (*(*(v24 - 8) + 8))(v23, v24);
    }

    return v25;
  }
}

uint64_t sub_1CF04FF38@<X0>(uint64_t a1@<X0>, uint64_t a6@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = swift_getAssociatedConformanceWitness();
  v25 = AssociatedTypeWitness;
  v26 = v9;
  v27 = AssociatedConformanceWitness;
  v28 = v11;
  v12 = type metadata accessor for ThrottlingKey(255, &v25);
  v13 = sub_1CF9E75D8();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v23 - v17;
  if ((a1 & 0x8000000000000000) == 0)
  {
    return (*(*a1 + 448))(v16);
  }

  v24 = v15;
  (*(*(a1 & 0x7FFFFFFFFFFFFFFFLL) + 448))(v16);
  v20 = *(v12 - 1);
  if ((*(v20 + 48))(v18, 1, v12) == 1)
  {
    (*(v14 + 8))(v18, v24);
    v25 = v9;
    v26 = AssociatedTypeWitness;
    v27 = v11;
    v28 = AssociatedConformanceWitness;
    v21 = type metadata accessor for ThrottlingKey(0, &v25);
    return (*(*(v21 - 8) + 56))(a6, 1, 1, v21);
  }

  else
  {
    sub_1CF05043C(v12, a6);
    (*(v20 + 8))(v18, v12);
    v25 = v9;
    v26 = AssociatedTypeWitness;
    v27 = v11;
    v28 = AssociatedConformanceWitness;
    v22 = type metadata accessor for ThrottlingKey(0, &v25);
    return (*(*(v22 - 8) + 56))(a6, 0, 1, v22);
  }
}

uint64_t sub_1CF050230@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = swift_getAssociatedConformanceWitness();
  v13 = AssociatedTypeWitness;
  v14 = v4;
  v15 = AssociatedConformanceWitness;
  v16 = v6;
  type metadata accessor for ReconciliationID(255, &v13);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = v2;
  v9 = *(TupleTypeMetadata2 + 48);
  (*(*(AssociatedTypeWitness - 8) + 16))(a1, &v1[*(v8 + 576)], AssociatedTypeWitness);
  swift_storeEnumTagMultiPayload();
  *(a1 + v9) = sub_1CF03D760();
  v13 = AssociatedTypeWitness;
  v14 = v4;
  v15 = AssociatedConformanceWitness;
  v16 = v6;
  v10 = type metadata accessor for ThrottlingKey(0, &v13);
  return (*(*(v10 - 8) + 56))(a1, 0, 1, v10);
}

uint64_t sub_1CF05043C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1[2];
  v6 = a1[3];
  v8 = a1[4];
  v7 = a1[5];
  v22 = a2;
  v23 = v5;
  v24 = v6;
  v25 = v8;
  v26 = v7;
  v9 = type metadata accessor for ReconciliationID(0, &v23);
  v10 = v9[-1].i64[1];
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v3, a1, v14);
  LOBYTE(v3) = v16[*(swift_getTupleTypeMetadata2() + 48)];
  (*(v10 + 32))(v12, v16, v9);
  v23 = v6;
  v24 = v5;
  v25 = v7;
  v26 = v8;
  type metadata accessor for ReconciliationID(255, &v23);
  v18 = *(swift_getTupleTypeMetadata2() + 48);
  v19 = v22;
  sub_1CF050768(v9, v22);
  result = (*(v10 + 8))(v12, v9);
  *(v19 + v18) = v3;
  return result;
}

uint64_t sub_1CF050640(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v4 = v3 + 2;
  v5 = 8 * (v3 + 2);
  if ((v3 + 2) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_25:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_25;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

uint64_t sub_1CF050768@<X0>(int8x16_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = a1[1].i64[1];
    (*(*(v8 - 8) + 32))(a2, v6, v8);
    v9 = a1[1].i64[0];
    v12 = v8;
    v13 = v9;
  }

  else
  {
    v10 = a1[1].i64[0];
    (*(*(v10 - 8) + 32))(a2, v6, v10);
    v12 = a1[1].i64[1];
    v13 = v10;
  }

  v14 = vextq_s8(a1[2], a1[2], 8uLL);
  type metadata accessor for ReconciliationID(0, &v12);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1CF050908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v91 = a1;
  v92 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1CF9E75D8();
  v88 = *(v7 - 8);
  v89 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v87 - v8;
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v11);
  v90 = &v87 - v12;
  v99 = 0x203D20646E696BLL;
  v100 = 0xE700000000000000;
  v13 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = v92;
  v16 = swift_getAssociatedConformanceWitness();
  v95 = AssociatedTypeWitness;
  v96 = v13;
  v97 = AssociatedConformanceWitness;
  v98 = v16;
  v17 = type metadata accessor for ThrottlingKey(0, &v95);
  sub_1CF050DB4(v17);
  LOBYTE(v93) = 0;
  v95 = AssociatedTypeWitness;
  v96 = v13;
  v18 = v10;
  v97 = AssociatedConformanceWitness;
  v98 = v16;
  v19 = type metadata accessor for ThrottlingKey.Kind(0, &v95);
  WitnessTable = swift_getWitnessTable();
  v21 = sub_1CF04EAEC(&v93, v19, WitnessTable);
  v23 = v22;
  MEMORY[0x1D3868CC0](v21);
  v23, v24, v25, v26, v27, v28, v29, v30;
  sub_1CF050EC8(v17, v9);
  if ((*(v10 + 48))(v9, 1, AssociatedTypeWitness) == 1)
  {
    (*(v88 + 8))(v9, v89);
  }

  else
  {
    v31 = *(v10 + 32);
    v32 = v90;
    v31(v90, v9, AssociatedTypeWitness);
    v95 = 0;
    v96 = 0xE000000000000000;
    sub_1CF9E7948();
    v96, v33, v34, v35, v36, v37, v38, v39;
    v95 = 0x65746920444E4120;
    v96 = 0xEF203D2064695F6DLL;
    v40 = (*(*(AssociatedConformanceWitness + 8) + 32))(v15, AssociatedTypeWitness);
    v42 = v41;
    MEMORY[0x1D3868CC0](v40);
    v42, v43, v44, v45, v46, v47, v48, v49;
    v50 = v96;
    MEMORY[0x1D3868CC0](v95, v96);
    v50, v51, v52, v53, v54, v55, v56, v57;
    (*(v18 + 8))(v32, AssociatedTypeWitness);
  }

  v58 = sub_1CF051078(v17);
  if (v58 == 89)
  {
    return v99;
  }

  v59 = v58;
  v95 = 0;
  v96 = 0xE000000000000000;
  sub_1CF9E7948();
  v96, v60, v61, v62, v63, v64, v65, v66;
  v93 = 0xD000000000000010;
  v94 = 0x80000001CFA400C0;
  v67 = qword_1CFA02AA8[v59];
  v98 = MEMORY[0x1E69E6530];
  v95 = v67;
  v68 = sub_1CEFF8EA0(&v95);
  v70 = v69;
  sub_1CEFCCC44(&v95, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v70)
  {
    MEMORY[0x1D3868CC0](v68, v70);
    v70, v71, v72, v73, v74, v75, v76, v77;
    v78 = v94;
    MEMORY[0x1D3868CC0](v93, v94);
    v78, v79, v80, v81, v82, v83, v84, v85;
    return v99;
  }

  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF050DB4(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, v2);
  v6 = *(a1 + 32);
  v9[0] = *(a1 + 16);
  v9[1] = v6;
  v7 = type metadata accessor for ReconciliationID(0, v9);
  return (*(*(v7 - 8) + 8))(v4, v7);
}

uint64_t sub_1CF050EC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v17[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v4);
  v8 = *(a1 + 32);
  v16 = *(a1 + 16);
  v17[0] = v16;
  v17[1] = v8;
  v9 = type metadata accessor for ReconciliationID(0, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = *(v16 - 8);
  v12 = v11;
  if (EnumCaseMultiPayload == 1)
  {
    (*(v11 + 56))(a2, 1, 1);
    return (*(*(v9 - 8) + 8))(v6, v9);
  }

  else
  {
    v14 = v6;
    v15 = v16;
    (*(v11 + 32))(a2, v14, v16);
    return (*(v12 + 56))(a2, 0, 1, v15);
  }
}

uint64_t sub_1CF051078(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, v2);
  v6 = *(a1 + 32);
  v10[0] = *(a1 + 16);
  v10[1] = v6;
  v7 = type metadata accessor for ReconciliationID(255, v10);
  v8 = v4[*(swift_getTupleTypeMetadata2() + 48)];
  (*(*(v7 - 8) + 8))(v4, v7);
  return v8;
}

unint64_t sub_1CF0511A4(char a1, const char *a2, uint64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v9 = -1 << *(v8 + 32);
  v10 = a2 & ~v9;
  if ((*(v8 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      if (*(*(v8 + 48) + v10))
      {
        if (*(*(v8 + 48) + v10) == 1)
        {
          v12 = 0xD000000000000010;
          v13 = 0x80000001CFA2C3F0;
        }

        else
        {
          v12 = 0xD000000000000012;
          v13 = 0x80000001CFA2C410;
        }
      }

      else
      {
        v13 = 0xE500000000000000;
        v12 = 0x6574617473;
      }

      if (a1)
      {
        if (a1 == 1)
        {
          v14 = 0xD000000000000010;
        }

        else
        {
          v14 = 0xD000000000000012;
        }

        if (a1 == 1)
        {
          v15 = 0x80000001CFA2C3F0;
        }

        else
        {
          v15 = 0x80000001CFA2C410;
        }

        if (v12 != v14)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v15 = 0xE500000000000000;
        v14 = 0x6574617473;
        if (v12 != 0x6574617473)
        {
          goto LABEL_19;
        }
      }

      if (v13 == v15)
      {
        v13, a2, v14, a4, a5, a6, a7, a8;
        v15, v31, v32, v33, v34, v35, v36, v37;
        return v10;
      }

LABEL_19:
      v16 = sub_1CF9E8048();
      v13, v17, v18, v19, v20, v21, v22, v23;
      v15, v24, v25, v26, v27, v28, v29, v30;
      if ((v16 & 1) == 0)
      {
        v10 = (v10 + 1) & v11;
        if ((*(v8 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
        {
          continue;
        }
      }

      return v10;
    }
  }

  return v10;
}

uint64_t sub_1CF051344(uint64_t a1)
{
  result = sub_1CF0514A0(0, a1);
  if (!v1)
  {
    if (result <= 2)
    {
      if (!result)
      {
        v4 = sub_1CF23DBC0(1, a1);
        sub_1CF0516F0(2, a1);
        return v4;
      }

      if (result == 1 || result == 2)
      {
        return sub_1CF0516F0(2, a1);
      }

      goto LABEL_13;
    }

    if (result == 3)
    {
      sub_1CF1DA62C();
      return swift_allocError();
    }

    if (result != 4)
    {
      if (result == 5)
      {
        return 0;
      }

LABEL_13:
      sub_1CF1DA5D8();
      swift_allocError();
      *v5 = 0;
      return swift_willThrow();
    }

    return 1;
  }

  return result;
}

uint64_t sub_1CF0514A0(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (*(a2 + 16) && (v4 = sub_1CF0448F0(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v38);
  }

  else
  {
    memset(v38, 0, sizeof(v38));
  }

  sub_1CEFCCBDC(v38, &v36, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v38, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v35;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v38, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v36 = 0;
    v37 = 0xE000000000000000;
    sub_1CF9E7948();
    v37, v9, v10, v11, v12, v13, v14, v15;
    sub_1CEFCCBDC(v38, &v36, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v16 = sub_1CF9E6948();
    v18 = v17;
    MEMORY[0x1D3868CC0](v16);
    v18, v19, v20, v21, v22, v23, v24, v25;
    v26 = 0xE500000000000000;
    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    if (v2)
    {
      if (v2 == 1)
      {
        v27 = 0xD000000000000010;
      }

      else
      {
        v27 = 0xD000000000000012;
      }

      if (v2 == 1)
      {
        v26 = 0x80000001CFA2C3F0;
      }

      else
      {
        v26 = 0x80000001CFA2C410;
      }
    }

    else
    {
      v27 = 0x6574617473;
    }

    MEMORY[0x1D3868CC0](v27, v26);
    v26, v28, v29, v30, v31, v32, v33, v34;
    *(v8 + 32) = 0xD00000000000001ALL;
    *(v8 + 40) = 0x80000001CFA360B0;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v38, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CF0516F0(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (*(a2 + 16) && (v4 = sub_1CF0448F0(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v38);
  }

  else
  {
    memset(v38, 0, sizeof(v38));
  }

  sub_1CEFCCBDC(v38, &v36, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE2A0, &qword_1CF9FD3F0);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v38, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v35;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v38, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v36 = 0;
    v37 = 0xE000000000000000;
    sub_1CF9E7948();
    v37, v9, v10, v11, v12, v13, v14, v15;
    sub_1CEFCCBDC(v38, &v36, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v16 = sub_1CF9E6948();
    v18 = v17;
    MEMORY[0x1D3868CC0](v16);
    v18, v19, v20, v21, v22, v23, v24, v25;
    v26 = 0xE500000000000000;
    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    if (v2)
    {
      if (v2 == 1)
      {
        v27 = 0xD000000000000010;
      }

      else
      {
        v27 = 0xD000000000000012;
      }

      if (v2 == 1)
      {
        v26 = 0x80000001CFA2C3F0;
      }

      else
      {
        v26 = 0x80000001CFA2C410;
      }
    }

    else
    {
      v27 = 0x6574617473;
    }

    MEMORY[0x1D3868CC0](v27, v26);
    v26, v28, v29, v30, v31, v32, v33, v34;
    *(v8 + 32) = 0xD00000000000002DLL;
    *(v8 + 40) = 0x80000001CFA362F0;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v38, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CF05194C(char a1)
{
  switch(a1)
  {
    case 1:
      v49 = vextq_s8(v1[6], v1[6], 8uLL);
      v92 = vextq_s8(v1[5], v1[5], 8uLL);
      v93 = v49;
      result = type metadata accessor for Propagation.UpdateItem(0, &v92);
      break;
    case 2:
      v44 = vextq_s8(v1[6], v1[6], 8uLL);
      v92 = vextq_s8(v1[5], v1[5], 8uLL);
      v93 = v44;
      result = type metadata accessor for Propagation.DeleteItem(0, &v92);
      break;
    case 3:
      v47 = v1[6];
      v92 = v1[5];
      v93 = v47;
      result = type metadata accessor for Ingestion.FetchItemMetadata(0, &v92);
      break;
    case 4:
      v36 = v1[6];
      v92 = v1[5];
      v93 = v36;
      result = type metadata accessor for Ingestion.DeleteFolderFromSnapshotIfEmpty(0, &v92);
      break;
    case 5:
      v56 = v1[6];
      v92 = v1[5];
      v93 = v56;
      result = type metadata accessor for Ingestion.ReSnapshotChildren(0, &v92);
      break;
    case 6:
      v61 = v1[6];
      v92 = v1[5];
      v93 = v61;
      result = type metadata accessor for Ingestion.FetchChildrenMetadata(0, &v92);
      break;
    case 7:
      v48 = v1[6];
      v92 = v1[5];
      v93 = v48;
      result = type metadata accessor for Materialization.MaterializeItem(0, &v92);
      break;
    case 8:
      v64 = v1[6];
      v92 = v1[5];
      v93 = v64;
      result = type metadata accessor for Materialization.EvictItem(0, &v92);
      break;
    case 9:
      v41 = v1[6];
      v92 = v1[5];
      v93 = v41;
      result = type metadata accessor for Materialization.EvictChildren(0, &v92);
      break;
    case 10:
      v63 = v1[6];
      v92 = v1[5];
      v93 = v63;
      result = type metadata accessor for Bouncing.BounceItem(0, &v92);
      break;
    case 11:
      v33 = v1[6];
      v92 = v1[5];
      v93 = v33;
      result = type metadata accessor for Ingestion.CollectCapturedContent(0, &v92);
      break;
    case 12:
      v40 = v1[6];
      v92 = v1[5];
      v93 = v40;
      result = type metadata accessor for Ingestion.DeleteRejectedItemInTree(0, &v92);
      break;
    case 13:
      v60 = v1[6];
      v92 = v1[5];
      v93 = v60;
      result = type metadata accessor for DiskImport.MarkDirectorDiskImportAsDone(0, &v92);
      break;
    case 14:
      v28 = v1[6];
      v92 = v1[5];
      v93 = v28;
      result = type metadata accessor for Ingestion.FaultDirectoryInTree(0, &v92);
      break;
    case 15:
      v45 = v1[6];
      v92 = v1[5];
      v93 = v45;
      result = type metadata accessor for Ingestion.CancelFetchFileContent(0, &v92);
      break;
    case 16:
      v25 = v1[6];
      v92 = v1[5];
      v93 = v25;
      result = type metadata accessor for DiskImport.DiskImportFinished(0, &v92);
      break;
    case 17:
      v51 = v1[6];
      v92 = v1[5];
      v93 = v51;
      result = type metadata accessor for DiskImport.ContinueDiskImport(0, &v92);
      break;
    case 18:
      v62 = v1[6];
      v92 = v1[5];
      v93 = v62;
      result = type metadata accessor for Ingestion.UnfaultDirectoryInTree(0, &v92);
      break;
    case 19:
      v72 = v1[6];
      v92 = v1[5];
      v93 = v72;
      result = type metadata accessor for DiskImport.UnfaultDirectoryAndChildren(0, &v92);
      break;
    case 20:
      v54 = v1[6];
      v92 = v1[5];
      v93 = v54;
      result = type metadata accessor for Ingestion.MergeItems(0, &v92);
      break;
    case 21:
      v59 = v1[6];
      v92 = v1[5];
      v93 = v59;
      result = type metadata accessor for Materialization.MaterializeParentHierarchy(0, &v92);
      break;
    case 22:
      v69 = vextq_s8(v1[6], v1[6], 8uLL);
      v92 = vextq_s8(v1[5], v1[5], 8uLL);
      v93 = v69;
      result = type metadata accessor for Propagation.CancelUpdate(0, &v92);
      break;
    case 23:
      v76 = v1[6];
      v92 = v1[5];
      v93 = v76;
      result = type metadata accessor for Ingestion.FetchContent(0, &v92);
      break;
    case 24:
      v43 = v1[6];
      v92 = v1[5];
      v93 = v43;
      result = type metadata accessor for Ingestion.FetchEventStream(0, &v92);
      break;
    case 25:
      v42 = v1[6];
      v92 = v1[5];
      v93 = v42;
      result = type metadata accessor for Materialization.MaterializeIgnoredItem(0, &v92);
      break;
    case 26:
      v80 = v1[6];
      v92 = v1[5];
      v93 = v80;
      result = type metadata accessor for Maintenance.UnblockEvictability(0, &v92);
      break;
    case 27:
      v23 = v1[6];
      v92 = v1[5];
      v93 = v23;
      result = type metadata accessor for Maintenance.MarkPackagesAsEvictable(0, &v92);
      break;
    case 28:
      v77 = v1[6];
      v92 = v1[5];
      v93 = v77;
      result = type metadata accessor for Maintenance.MarkPackagesAsSyncRoot(0, &v92);
      break;
    case 29:
      v78 = v1[6];
      v92 = v1[5];
      v93 = v78;
      result = type metadata accessor for Maintenance.UnblockIgnoreFolderProcessing(0, &v92);
      break;
    case 30:
      v65 = v1[6];
      v92 = v1[5];
      v93 = v65;
      result = type metadata accessor for Maintenance.IgnoreChildrenOfIgnoredHierarchy(0, &v92);
      break;
    case 31:
      v50 = v1[6];
      v92 = v1[5];
      v93 = v50;
      result = type metadata accessor for Maintenance.MarkDirectoriesAsLocked(0, &v92);
      break;
    case 32:
      v66 = v1[6];
      v92 = v1[5];
      v93 = v66;
      result = type metadata accessor for Ingestion.DeferredRescan(0, &v92);
      break;
    case 33:
      v29 = v1[6];
      v92 = v1[5];
      v93 = v29;
      result = type metadata accessor for Ingestion.MarkParentDeleted(0, &v92);
      break;
    case 34:
      v24 = v1[6];
      v92 = v1[5];
      v93 = v24;
      result = type metadata accessor for Maintenance.UnpauseReconciliations(0, &v92);
      break;
    case 35:
      v20 = v1[6];
      v92 = v1[5];
      v93 = v20;
      result = type metadata accessor for Maintenance.RetriggerResolvedVendorExclusion(0, &v92);
      break;
    case 36:
      v21 = v1[6];
      v92 = v1[5];
      v93 = v21;
      result = type metadata accessor for Maintenance.ResolveItemEvictability(0, &v92);
      break;
    case 37:
      v15 = v1[6];
      v92 = v1[5];
      v93 = v15;
      result = type metadata accessor for Conflict.PopulateConflicts(0, &v92);
      break;
    case 38:
      v79 = v1[6];
      v92 = v1[5];
      v93 = v79;
      result = type metadata accessor for RemoteVersion.CleanRemoteVersions(0, &v92);
      break;
    case 39:
      v71 = v1[6];
      v92 = v1[5];
      v93 = v71;
      result = type metadata accessor for Maintenance.UpdateClosestSyncRoot(0, &v92);
      break;
    case 40:
      v37 = v1[6];
      v92 = v1[5];
      v93 = v37;
      result = type metadata accessor for Maintenance.RescanParentDeletedChildren(0, &v92);
      break;
    case 41:
      v52 = v1[6];
      v92 = v1[5];
      v93 = v52;
      result = type metadata accessor for Maintenance.UnblockItemRejection(0, &v92);
      break;
    case 42:
      v74 = v1[6];
      v92 = v1[5];
      v93 = v74;
      result = type metadata accessor for Maintenance.UnblockDiskImportItems(0, &v92);
      break;
    case 43:
      v11 = v1[6];
      v92 = v1[5];
      v93 = v11;
      result = type metadata accessor for Maintenance.RescanPendingSetFSSide(0, &v92);
      break;
    case 44:
      v27 = v1[6];
      v92 = v1[5];
      v93 = v27;
      result = type metadata accessor for Maintenance.RescanPendingSetFPSide(0, &v92);
      break;
    case 45:
      v67 = v1[6];
      v92 = v1[5];
      v93 = v67;
      result = type metadata accessor for Maintenance.UnblockRemoteDeletions(0, &v92);
      break;
    case 46:
      v85 = v1[6];
      v92 = v1[5];
      v93 = v85;
      result = type metadata accessor for Maintenance.UnblockPathMatchingCycles(0, &v92);
      break;
    case 47:
      v17 = v1[6];
      v92 = v1[5];
      v93 = v17;
      result = type metadata accessor for Maintenance.UnblockChildrenDeletion(0, &v92);
      break;
    case 48:
      v30 = v1[6];
      v92 = v1[5];
      v93 = v30;
      result = type metadata accessor for Maintenance.RescanRecTableForConflictsInGS(0, &v92);
      break;
    case 49:
      v35 = v1[6];
      v92 = v1[5];
      v93 = v35;
      result = type metadata accessor for Maintenance.UnmarkParentDeletedMergeSource(0, &v92);
      break;
    case 50:
      v9 = v1[6];
      v92 = v1[5];
      v93 = v9;
      result = type metadata accessor for Maintenance.ReimportMissingJobs(0, &v92);
      break;
    case 51:
      v89 = v1[6];
      v92 = v1[5];
      v93 = v89;
      result = type metadata accessor for Maintenance.UnblockPathMatchingDuringImport(0, &v92);
      break;
    case 52:
      v84 = v1[6];
      v92 = v1[5];
      v93 = v84;
      result = type metadata accessor for Maintenance.UnblockThrottledReconciliations(0, &v92);
      break;
    case 53:
      v16 = v1[6];
      v92 = v1[5];
      v93 = v16;
      result = type metadata accessor for Maintenance.UnblockThrottledItemJobs(0, &v92);
      break;
    case 54:
      v81 = v1[6];
      v92 = v1[5];
      v93 = v81;
      result = type metadata accessor for Maintenance.UnblockThrottledJobs(0, &v92);
      break;
    case 55:
      v83 = v1[6];
      v92 = v1[5];
      v93 = v83;
      result = type metadata accessor for Ingestion.TrackTemporaryItem(0, &v92);
      break;
    case 56:
      v18 = v1[6];
      v92 = v1[5];
      v93 = v18;
      result = type metadata accessor for Maintenance.RescanMaterializedSpeculativeItems(0, &v92);
      break;
    case 57:
      v73 = v1[6];
      v92 = v1[5];
      v93 = v73;
      result = type metadata accessor for Materialization.BackgroundMaterializeParentHierarchy(0, &v92);
      break;
    case 58:
      v31 = v1[6];
      v92 = v1[5];
      v93 = v31;
      result = type metadata accessor for Maintenance.ReimportOnGitOrFolderPackage(0, &v92);
      break;
    case 59:
      v75 = v1[6];
      v92 = v1[5];
      v93 = v75;
      result = type metadata accessor for Maintenance.FixupOutOfSyncFSBaseVersion(0, &v92);
      break;
    case 60:
      v38 = v1[6];
      v92 = v1[5];
      v93 = v38;
      result = type metadata accessor for Maintenance.RemoveConflictStuckInTheWharf(0, &v92);
      break;
    case 61:
      v55 = v1[6];
      v92 = v1[5];
      v93 = v55;
      result = type metadata accessor for Maintenance.FixupConflictInGSForDatalessItems(0, &v92);
      break;
    case 62:
      v58 = vextq_s8(v1[6], v1[6], 8uLL);
      v92 = vextq_s8(v1[5], v1[5], 8uLL);
      v93 = v58;
      result = type metadata accessor for Propagation.DeletionAcked(0, &v92);
      break;
    case 63:
      v46 = v1[6];
      v92 = v1[5];
      v93 = v46;
      result = type metadata accessor for PinningJob.PinItem(0, &v92);
      break;
    case 64:
      v39 = v1[6];
      v92 = v1[5];
      v93 = v39;
      result = type metadata accessor for PinningJob.UnpinItem(0, &v92);
      break;
    case 65:
      v57 = v1[6];
      v92 = v1[5];
      v93 = v57;
      result = type metadata accessor for Maintenance.MarkAllUploadedItemAsPurgable(0, &v92);
      break;
    case 66:
      v12 = v1[6];
      v92 = v1[5];
      v93 = v12;
      result = type metadata accessor for Maintenance.RefreshInheritedContentPolicy(0, &v92);
      break;
    case 67:
      v26 = v1[6];
      v92 = v1[5];
      v93 = v26;
      result = type metadata accessor for Maintenance.FixContentPolicyInNonMaterializedFolders(0, &v92);
      break;
    case 68:
      v91 = v1[6];
      v92 = v1[5];
      v93 = v91;
      result = type metadata accessor for PinningJob.RefreshChildPinStatus(0, &v92);
      break;
    case 69:
      v22 = v1[6];
      v92 = v1[5];
      v93 = v22;
      result = type metadata accessor for Maintenance.PaceRefreshInheritedContentPolicy(0, &v92);
      break;
    case 70:
      v7 = v1[6];
      v92 = v1[5];
      v93 = v7;
      result = type metadata accessor for Maintenance.UnblockChildrenEviction(0, &v92);
      break;
    case 71:
      v14 = v1[6];
      v92 = v1[5];
      v93 = v14;
      result = type metadata accessor for Maintenance.UnblockMaterializingUnboundDatalessItems(0, &v92);
      break;
    case 72:
      v82 = v1[6];
      v92 = v1[5];
      v93 = v82;
      result = type metadata accessor for Maintenance.UnblockItemBlockedOnMissingBounceItem(0, &v92);
      break;
    case 73:
      v86 = v1[6];
      v92 = v1[5];
      v93 = v86;
      result = type metadata accessor for Maintenance.UnblockSnapshottingItemsWithoutJob(0, &v92);
      break;
    case 74:
      v88 = v1[6];
      v92 = v1[5];
      v93 = v88;
      result = type metadata accessor for Ingestion.UnlinkOldVersion(0, &v92);
      break;
    case 75:
      v19 = v1[6];
      v92 = v1[5];
      v93 = v19;
      result = type metadata accessor for Materialization.InjectOldVersion(0, &v92);
      break;
    case 76:
      v53 = v1[6];
      v92 = v1[5];
      v93 = v53;
      result = type metadata accessor for Maintenance.UnblockEvictionWithNotInterested(0, &v92);
      break;
    case 77:
      v8 = v1[6];
      v92 = v1[5];
      v93 = v8;
      result = type metadata accessor for Maintenance.UnblockDiskImportStatusOnFPSide(0, &v92);
      break;
    case 78:
      v90 = v1[6];
      v92 = v1[5];
      v93 = v90;
      result = type metadata accessor for Maintenance.UnblockDeletionsInIgnoredHierarchy(0, &v92);
      break;
    case 79:
      v6 = v1[6];
      v92 = v1[5];
      v93 = v6;
      result = type metadata accessor for Maintenance.ExpireAllThrottles(0, &v92);
      break;
    case 80:
      v13 = v1[6];
      v92 = v1[5];
      v93 = v13;
      result = type metadata accessor for Maintenance.UnblockIgnoreWithDLV2Content(0, &v92);
      break;
    case 81:
      v34 = v1[6];
      v92 = v1[5];
      v93 = v34;
      result = type metadata accessor for Maintenance.UnblockMissedChildDeletion(0, &v92);
      break;
    case 82:
      v32 = v1[6];
      v92 = v1[5];
      v93 = v32;
      result = type metadata accessor for Maintenance.UpdateContentRankForMaterializedItems(0, &v92);
      break;
    case 83:
      v5 = v1[6];
      v92 = v1[5];
      v93 = v5;
      result = type metadata accessor for Ingestion.ReparentTrashedItemToTrashRoot(0, &v92);
      break;
    case 84:
      v4 = v1[6];
      v92 = v1[5];
      v93 = v4;
      result = type metadata accessor for Maintenance.UpdateContentRankAfterIndexDrop(0, &v92);
      break;
    case 85:
      v68 = v1[6];
      v92 = v1[5];
      v93 = v68;
      result = type metadata accessor for Maintenance.UpdateIndexableItems(0, &v92);
      break;
    case 86:
      v70 = v1[6];
      v92 = v1[5];
      v93 = v70;
      result = type metadata accessor for Maintenance.UpdateDLV2ItemsWithRecursiveCount(0, &v92);
      break;
    case 87:
      v87 = v1[6];
      v92 = v1[5];
      v93 = v87;
      result = type metadata accessor for Maintenance.FixParentMaterializationStuckOnImport(0, &v92);
      break;
    case 88:
      v10 = v1[6];
      v92 = v1[5];
      v93 = v10;
      result = type metadata accessor for Ingestion.ReactToOwnershipChange(0, &v92);
      break;
    default:
      v2 = vextq_s8(v1[6], v1[6], 8uLL);
      v92 = vextq_s8(v1[5], v1[5], 8uLL);
      v93 = v2;
      result = type metadata accessor for Propagation.CreateItem(0, &v92);
      break;
  }

  return result;
}

uint64_t sub_1CF05236C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1CF0523F0(a1, a2, a3, a4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  return v5;
}

uint64_t sub_1CF0523F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v8 = sub_1CF052464(a1, a2, a3, a4);
  sub_1CF052548(0x80000);
  return v8;
}

uint64_t sub_1CF052464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 576);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(v4 + v9, a1, AssociatedTypeWitness);

  return sub_1CF0525C8(a2, a3, a4);
}

uint64_t sub_1CF052548(uint64_t a1)
{
  if (*(v1 + 112))
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  else
  {
    *(v1 + 96) |= a1;
    return v1;
  }

  return result;
}

uint64_t sub_1CF0525C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 1;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 88) = 0;
  *(v3 + 96) = xmmword_1CF9FEC30;
  *(v3 + 112) = 0;
  *(v3 + 120) = a1;
  *(v3 + 128) = a2;
  *(v3 + 136) = a3;
  if ((a3 & 0x8000) != 0)
  {
    sub_1CF052548(0x200000);
  }

  return v3;
}

BOOL sub_1CF052664(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = sub_1CF9E81C8();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_1CF05270C(uint64_t a1)
{
  *(v1 + 40) = a1;
  v3 = sub_1CF052838(a1);
  v5 = v4;
  v6 = sub_1CF0527F4(a1) != 9;

  return sub_1CF05284C(v3, v5, v6);
}

uint64_t sub_1CF05284C(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return v3;
}

uint64_t sub_1CF05285C()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);
  v7[0] = *(*v0 + 152);
  v7[1] = v1;
  v7[2] = v2;
  v7[3] = v3;
  type metadata accessor for SchedulableJob(0, v7);
  v4 = sub_1CF0452C8(v0[5]);
  swift_allocObject();
  v5 = sub_1CF05270C(v4);

  return v5;
}

uint64_t sub_1CF05295C()
{
  sub_1CF0529A8();

  return swift_deallocClassInstance();
}

uint64_t sub_1CF0529B0()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = (*(*result + 240))(result);

    return v1 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF052A14()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = (*(*result + 216))(result);

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF052A78()
{
  sub_1CF052AA0();
}

uint64_t sub_1CF052AA8()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = (*(*result + 224))(result);

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF052B0C()
{
  sub_1CF052B34();
}

uint64_t sub_1CF052B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for JobLockRule(255, *(*v4 + 80), *(*v4 + 88), a4);
  sub_1CF9E7FA8();
  v9 = *(v8 - 8);
  swift_allocObject();
  v10 = sub_1CF9E6D68();
  (*(v9 + 16))(v11, a3, v8);
  v12 = sub_1CF045898(v10, v8);
  v14 = sub_1CF052C94(a1, a2, v12, v13);
  v12, v15, v16, v17, v18, v19, v20, v21;
  return v14;
}

uint64_t sub_1CF052C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*v4 + 80);
  v6 = *(*v4 + 88);
  type metadata accessor for JobLock.Registration(255, v5, v6, a4);
  sub_1CF9E75D8();
  type metadata accessor for JobLock.BlockedRuleError(255, v5, v6, v7);
  swift_getWitnessTable();
  sub_1CF9E8238();
  sub_1CF052DA4(v4, sub_1CF054E80);
  return v9;
}

uint64_t sub_1CF052DA4(void *a1, void (*a2)(void))
{
  if (objc_sync_enter(a1))
  {
    swift_unknownObjectRetain();
    sub_1CF50F4AC("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343, a1);
  }

  a2();
  result = objc_sync_exit(a1);
  if (result)
  {
    swift_unknownObjectRetain();
    sub_1CF50F7B0("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347, a1);
  }

  return result;
}

uint64_t sub_1CF052E68(uint64_t *a1, int a2)
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

uint64_t sub_1CF052EB0(uint64_t a1, uint64_t a2)
{
  sub_1CF9E81D8();
  sub_1CF052EF4(v4, a2);
  return sub_1CF9E8228();
}

uint64_t sub_1CF052EF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v35[3] = a1;
  v5 = *(a2 + 16);
  v35[1] = *(a2 + 24);
  v35[2] = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1CF9E75D8();
  v35[0] = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v35 - v8;
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v35 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v35 - v18;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v23, v3, a2, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        return MEMORY[0x1D386A470](4);
      }

      (*(v10 + 32))(v19, v23, AssociatedTypeWitness);
      v26 = 7;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      (*(v10 + 32))(v19, v23, AssociatedTypeWitness);
      v26 = 5;
    }

    else
    {
      (*(v10 + 32))(v19, v23, AssociatedTypeWitness);
      v26 = 6;
    }

    goto LABEL_15;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v30 = *(TupleTypeMetadata3 + 48);
      v31 = *(TupleTypeMetadata3 + 64);
      v32 = *(v10 + 32);
      v32(v19, v23, AssociatedTypeWitness);
      v32(v16, &v23[v30], AssociatedTypeWitness);
      v32(v13, &v23[v31], AssociatedTypeWitness);
      MEMORY[0x1D386A470](1);
      swift_getAssociatedConformanceWitness();
      sub_1CF9E6758();
      sub_1CF9E6758();
      sub_1CF9E6758();
      v33 = *(v10 + 8);
      v33(v13, AssociatedTypeWitness);
      v33(v16, AssociatedTypeWitness);
      return (v33)(v19, AssociatedTypeWitness);
    }

    (*(v10 + 32))(v19, v23, AssociatedTypeWitness);
    v26 = 0;
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload != 2)
  {
    (*(v10 + 32))(v19, v23, AssociatedTypeWitness);
    v26 = 3;
LABEL_15:
    MEMORY[0x1D386A470](v26);
    swift_getAssociatedConformanceWitness();
    sub_1CF9E6758();
    return (*(v10 + 8))(v19, AssociatedTypeWitness);
  }

  v27 = *(swift_getTupleTypeMetadata2() + 48);
  (*(v10 + 32))(v19, v23, AssociatedTypeWitness);
  v28 = v35[0];
  (*(v35[0] + 32))(v9, &v23[v27], v7);
  MEMORY[0x1D386A470](2);
  swift_getAssociatedConformanceWitness();
  sub_1CF9E6758();
  sub_1CF9E75E8();
  (*(v28 + 8))(v9, v7);
  return (*(v10 + 8))(v19, AssociatedTypeWitness);
}

uint64_t sub_1CF053478(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1BE0, &unk_1CF9FD400);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1CF0534E8(id a1, uint64_t a2, unsigned __int8 a3)
{
  result = 0;
  if (a3 > 1u)
  {
    if (a3 != 2)
    {
      if (a3 != 3)
      {
        return result;
      }

      v35 = a1;
      v6 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      if (swift_dynamicCast())
      {

        return 0xD000000000000017;
      }

      v36 = 0x3C3A726F72726520;
      swift_getErrorValue();
      v11 = Error.prettyDescription.getter(v33, v34);
      v12 = [v11 description];
      v13 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v15 = v14;

      MEMORY[0x1D3868CC0](v13, v15);
      v15, v16, v17, v18, v19, v20, v21, v22;
LABEL_15:
      MEMORY[0x1D3868CC0](62, 0xE100000000000000);
      return v36;
    }

LABEL_9:
    if (!a1)
    {
      return 0;
    }

    v36 = 0;
    v7 = a1;
    sub_1CF03C530(a1, a2, a3);
    MEMORY[0x1D3868CC0](0x3C3A6D6F726620, 0xE700000000000000);
    type metadata accessor for Continuation();
    sub_1CF9E7B58();
    sub_1CF03D7A8(v7, a2, a3);
    goto LABEL_15;
  }

  if (!a3)
  {
    if (a2)
    {
      v36 = 0;
      v9 = a1;
      MEMORY[0x1D3868CC0](0x3C3A6D6F726620, 0xE700000000000000);
      type metadata accessor for Continuation();
      sub_1CF9E7B58();
      MEMORY[0x1D3868CC0](8254, 0xE200000000000000);
      v10 = v9;
    }

    else
    {
      v36 = 32;
      v10 = a1;
    }

    v23 = sub_1CF057690(v10);
    v25 = v24;
    MEMORY[0x1D3868CC0](v23);
    v25, v26, v27, v28, v29, v30, v31, v32;
    return v36;
  }

  if (a3 == 1)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_1CF0537B0(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4)
{
  v181 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1CF9E75D8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v153 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v154 = &v150 - v9;
  v173 = v8;
  v171 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v152 = &v150 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v162 = &v150 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v172 = &v150 - v15;
  v179 = AssociatedTypeWitness;
  v180 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v16);
  v160 = &v150 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v159 = &v150 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v158 = &v150 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v157 = &v150 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v151 = &v150 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v164 = &v150 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v163 = &v150 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v168 = &v150 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v170 = &v150 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v169 = &v150 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v161 = &v150 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v155 = &v150 - v39;
  v174 = a4;
  v175 = a3;
  v41 = type metadata accessor for JobLockRule(0, a3, a4, v40);
  v42 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v165 = &v150 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v150 - v45;
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v150 - v48;
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v150 - v51;
  MEMORY[0x1EEE9AC00](v53);
  v166 = &v150 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v167 = &v150 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v150 - v58;
  v60 = swift_getTupleTypeMetadata2();
  v178 = *(v60 - 8);
  v61 = MEMORY[0x1EEE9AC00](v60);
  v63 = &v150 - v62;
  v176 = v42;
  v177 = v64;
  v65 = &v150 + *(v64 + 48) - v62;
  v66 = *(v42 + 16);
  v66(&v150 - v62, a1, v41, v61);
  v67 = v65;
  (v66)(v65, v181, v41);
  v181 = v41;
  v182 = v63;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      v103 = v180;
      v71 = v181;
      if (EnumCaseMultiPayload == 6)
      {
        v104 = v165;
        v70 = v182;
        (v66)(v165, v182, v181);
        if (swift_getEnumCaseMultiPayload() != 6)
        {
          (*(v103 + 8))(v104, v179);
          goto LABEL_35;
        }

        v105 = v160;
        v106 = v70;
        v107 = v179;
        (*(v103 + 32))(v160, v65, v179);
        swift_getAssociatedConformanceWitness();
        v76 = sub_1CF9E6868();
        v108 = *(v103 + 8);
        v108(v105, v107);
        v109 = v104;
        v110 = v107;
        v70 = v106;
        goto LABEL_38;
      }

      v133 = swift_getEnumCaseMultiPayload();
      v70 = v182;
      if (v133 != 7)
      {
        goto LABEL_35;
      }

      goto LABEL_28;
    }

    v72 = v180;
    v71 = v181;
    if (EnumCaseMultiPayload != 4)
    {
      (v66)(v46, v182, v181);
      v127 = swift_getEnumCaseMultiPayload();
      v128 = v179;
      if (v127 != 5)
      {
        (*(v72 + 8))(v46, v179);
        v70 = v182;
        goto LABEL_35;
      }

      v129 = v159;
      (*(v72 + 32))(v159, v65, v179);
      swift_getAssociatedConformanceWitness();
      v76 = sub_1CF9E6868();
      v130 = *(v72 + 8);
      v130(v129, v128);
      v130(v46, v128);
LABEL_47:
      v78 = v176;
      v70 = v182;
      goto LABEL_36;
    }

    v70 = v182;
    (v66)(v49, v182, v181);
    v73 = swift_getEnumCaseMultiPayload();
    v74 = v179;
    if (v73 != 4)
    {
      (*(v72 + 8))(v49, v179);
      goto LABEL_35;
    }

    v75 = v158;
    (*(v72 + 32))(v158, v65, v179);
    swift_getAssociatedConformanceWitness();
    v76 = sub_1CF9E6868();
    v77 = *(v72 + 8);
    v77(v75, v74);
    v77(v49, v74);
    v78 = v176;
  }

  else
  {
    if (EnumCaseMultiPayload <= 1)
    {
      v69 = v179;
      v70 = v182;
      if (!EnumCaseMultiPayload)
      {
        v71 = v181;
        (v66)(v59, v182, v181);
        if (swift_getEnumCaseMultiPayload())
        {
          (*(v180 + 8))(v59, v69);
LABEL_35:
          v76 = 0;
          v71 = v177;
          v78 = v178;
          goto LABEL_36;
        }

        v136 = v180;
        v137 = v155;
        (*(v180 + 32))(v155, v65, v69);
        swift_getAssociatedConformanceWitness();
        v76 = sub_1CF9E6868();
        v108 = *(v136 + 8);
        v108(v137, v69);
        v109 = v59;
        v110 = v69;
LABEL_38:
        v108(v109, v110);
        v78 = v176;
        goto LABEL_36;
      }

      v111 = v167;
      v71 = v181;
      (v66)(v167, v182, v181);
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v113 = *(TupleTypeMetadata3 + 48);
      v114 = *(TupleTypeMetadata3 + 64);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v134 = *(v180 + 8);
        v134(&v111[v114], v69);
        v134(&v111[v113], v69);
        v134(v111, v69);
        v70 = v182;
        goto LABEL_35;
      }

      v115 = v180;
      v116 = *(v180 + 32);
      v117 = v161;
      v116(v161, v67, v69);
      v116(v169, &v111[v113], v69);
      v116(v170, &v111[v114], v69);
      v116(v168, &v67[v113], v69);
      v118 = &v67[v114];
      v119 = v163;
      v116(v163, v118, v69);
      v120 = v117;
      swift_getAssociatedConformanceWitness();
      v121 = sub_1CF9E6868();
      v122 = *(v115 + 8);
      v122(v111, v69);
      if (v121)
      {
        v124 = v168;
        v123 = v169;
        if (sub_1CF9E6868())
        {
          v125 = v163;
          v126 = v120;
          v76 = sub_1CF9E6868();
          v122(v125, v69);
          v122(v124, v69);
          v122(v170, v69);
          v122(v123, v69);
          v122(v126, v69);
          goto LABEL_47;
        }

        v122(v163, v69);
        v122(v124, v69);
        v122(v170, v69);
        v139 = v123;
      }

      else
      {
        v122(v119, v69);
        v122(v168, v69);
        v122(v170, v69);
        v139 = v169;
      }

      v122(v139, v69);
      v122(v120, v69);
      v76 = 0;
      goto LABEL_47;
    }

    v79 = v179;
    v80 = v180;
    v70 = v182;
    if (EnumCaseMultiPayload == 2)
    {
      v81 = v166;
      (v66)(v166, v182, v181);
      v82 = v173;
      v83 = *(swift_getTupleTypeMetadata2() + 48);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        (*(v171 + 8))(&v81[v83], v82);
        (*(v80 + 8))(v81, v79);
        v70 = v182;
        goto LABEL_35;
      }

      v84 = v164;
      v177 = *(v80 + 32);
      v178 = v80 + 32;
      v177(v164, v67, v79);
      v85 = v171;
      v86 = v81;
      v87 = *(v171 + 32);
      (v87)(v172, &v86[v83], v82);
      v88 = v162;
      v87();
      v89 = *(*(swift_getAssociatedConformanceWitness() + 40) + 8);
      v90 = sub_1CF9E6868();
      v91 = v86;
      v92 = *(v80 + 8);
      v92(v91, v79);
      if ((v90 & 1) == 0)
      {
        v138 = *(v85 + 8);
        v138(v88, v82);
        v138(v172, v82);
        v92(v84, v79);
        v76 = 0;
        v78 = v176;
        v71 = v181;
        v70 = v182;
        goto LABEL_36;
      }

      v170 = v89;
      v175 = v92;
      v93 = *(TupleTypeMetadata2 + 48);
      v94 = v82;
      v95 = v80;
      v96 = *(v85 + 16);
      v97 = v85;
      v98 = v154;
      v96(v154, v172, v94);
      v174 = v93;
      v96(&v98[v93], v88, v94);
      v99 = *(v95 + 48);
      if (v99(v98, 1, v79) == 1)
      {
        v100 = *(v97 + 8);
        v101 = v173;
        v100(v88, v173);
        v100(v172, v101);
        v175(v164, v79);
        v102 = v99(&v98[v174], 1, v79);
        v71 = v181;
        v70 = v182;
        if (v102 == 1)
        {
          v100(v98, v173);
LABEL_28:
          v76 = 1;
          v78 = v176;
          goto LABEL_36;
        }
      }

      else
      {
        v140 = v152;
        v96(v152, v98, v173);
        v141 = v174;
        if (v99(&v98[v174], 1, v79) != 1)
        {
          v145 = v151;
          v177(v151, &v98[v141], v79);
          v146 = sub_1CF9E6868();
          v147 = v175;
          v175(v145, v79);
          v148 = *(v171 + 8);
          v149 = v173;
          v148(v162, v173);
          v148(v172, v149);
          v147(v164, v79);
          v147(v140, v79);
          v148(v98, v149);
          v71 = v181;
          v70 = v182;
          if (v146)
          {
            goto LABEL_28;
          }

LABEL_44:
          v76 = 0;
          v78 = v176;
          goto LABEL_36;
        }

        v142 = *(v171 + 8);
        v143 = v173;
        v142(v162, v173);
        v142(v172, v143);
        v144 = v175;
        v175(v164, v79);
        v144(v140, v79);
        v71 = v181;
        v70 = v182;
      }

      (*(v153 + 8))(v98, TupleTypeMetadata2);
      goto LABEL_44;
    }

    v71 = v181;
    (v66)(v52, v182, v181);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      (*(v80 + 8))(v52, v79);
      goto LABEL_35;
    }

    v131 = v157;
    (*(v80 + 32))(v157, v65, v79);
    swift_getAssociatedConformanceWitness();
    v76 = sub_1CF9E6868();
    v132 = *(v80 + 8);
    v132(v131, v79);
    v132(v52, v79);
    v78 = v176;
  }

LABEL_36:
  (*(v78 + 8))(v70, v71);
  return v76 & 1;
}