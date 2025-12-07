uint64_t sub_1CF51C024(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CF9E53C8();
  v98 = *(v4 - 8);
  v99 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CF9E6118();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v97 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E5A18();
  v11 = v10;
  v12 = sub_1CF9E6978();
  v13 = openat_s();

  if (v13 < 0)
  {
    v37 = MEMORY[0x1D38683F0](v14);
    v103 = 0;
    aBlock = 0u;
    v102 = 0u;
    LOBYTE(v104) = 19;
    sub_1CF19BBE4(v37, &aBlock);
    sub_1CF1969CC(&aBlock);
    swift_willThrow();
    v11, v38, v39, v40, v41, v42, v43, v44;
    return v12;
  }

  v95 = v8;
  v96 = v7;
  v11, v15, v16, v17, v18, v19, v20, v21;
  *&aBlock = 0x656372756F736572;
  *(&aBlock + 1) = 0xEA00000000002F73;
  MEMORY[0x1D3868CC0](a1, a2);
  v22 = *(&aBlock + 1);
  v105 = xmmword_1CF9FEC40;
  v106 = 0;
  v23 = swift_allocObject();
  *(v23 + 16) = &v105;
  *(v23 + 24) = sub_1CF9C9924;
  *(v23 + 32) = 0;
  *(v23 + 40) = &v106;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1CF51CA68;
  *(v24 + 24) = v23;
  v103 = sub_1CF005DC8;
  v104 = v24;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v102 = sub_1CF005DF8;
  *(&v102 + 1) = &block_descriptor_27;
  v25 = _Block_copy(&aBlock);

  sub_1CF9E6978();
  v12 = fpfs_openat();

  _Block_release(v25);

  LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

  if (v23)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v34 = v106;
  if (v106)
  {
LABEL_4:
    swift_willThrow();
    swift_bridgeObjectRelease_n();
    sub_1CF24FAB0(v105, *(&v105 + 1));
    v35 = v34;
    LODWORD(aBlock) = sub_1CF9E5328();
    sub_1CF196978();
    v36 = sub_1CF9E5658();

    if (v36)
    {

      v12 = 0;
    }

    goto LABEL_11;
  }

  if ((v12 & 0x80000000) == 0)
  {
    v22, v27, v28, v29, v30, v31, v32, v33;
    if (*(&v105 + 1) >> 60 != 11)
    {
      v12 = v105;
      sub_1CEFF05F4(v105, *(&v105 + 1));
      v22, v45, v46, v47, v48, v49, v50, v51;
      sub_1CF24FAB0(v105, *(&v105 + 1));
LABEL_11:
      close(v13);
      return v12;
    }

    goto LABEL_21;
  }

  if (MEMORY[0x1D38683F0](v26))
  {
    if (MEMORY[0x1D38683F0]() == 9939394)
    {
      v34 = [objc_opt_self() fp:2 errorForDataProtectionClass:?];
    }

    else
    {
      MEMORY[0x1D38683F0]();
      v53 = sub_1CF9E6138();
      if ((v53 & 0x100000000) != 0)
      {
        LODWORD(aBlock) = 22;
      }

      else
      {
        LODWORD(aBlock) = v53;
      }

      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF00E86C(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
      v12 = v99;
      sub_1CF9E57D8();
      v34 = sub_1CF9E53A8();
      (*(v98 + 8))(v6, v12);
    }

    goto LABEL_4;
  }

LABEL_22:
  v22, v27, v28, v29, v30, v31, v32, v33;
  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  sub_1CF9E7948();
  *(&aBlock + 1), v54, v55, v56, v57, v58, v59, v60;
  *&aBlock = 0xD00000000000001ALL;
  *(&aBlock + 1) = 0x80000001CFA2DF30;
  v100 = v12;
  v61 = sub_1CF9E7F98();
  v63 = v62;
  MEMORY[0x1D3868CC0](v61);
  v63, v64, v65, v66, v67, v68, v69, v70;
  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
  v71 = aBlock;
  v72 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v73 = sub_1CF9E6108();
  v74 = sub_1CF9E72B8();
  *(&v71 + 1), v75, v76, v77, v78, v79, v80, v81;
  if (os_log_type_enabled(v73, v74))
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    *&aBlock = v83;
    *v82 = 136315650;
    v84 = sub_1CF9E7988();
    v86 = v85;
    v87 = sub_1CEFD0DF0(v84, v85, &aBlock);
    v86, v88, v89, v90, v91, v92, v93, v94;
    *(v82 + 4) = v87;
    *(v82 + 12) = 2048;
    *(v82 + 14) = 315;
    *(v82 + 22) = 2080;
    *(v82 + 24) = sub_1CEFD0DF0(v71, *(&v71 + 1), &aBlock);
    _os_log_impl(&dword_1CEFC7000, v73, v74, "[ASSERT] ‼️  %s:%lu: %s", v82, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v83, -1, -1);
    MEMORY[0x1D386CDC0](v82, -1, -1);
  }

  (*(v95 + 8))(v97, v96);
  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

void sub_1CF51C790(uint64_t a1, uint64_t a2)
{
  sub_1CF9E5A18();
  v3 = v2;
  sub_1CF9E6978();
  v4 = openat_s();

  if (v4 < 0)
  {
    v13 = MEMORY[0x1D38683F0](v5);
    v22 = 0;
    memset(v21, 0, sizeof(v21));
    v23 = 19;
    sub_1CF19BBE4(v13, v21);
    sub_1CF1969CC(v21);
    swift_willThrow();
    v3, v14, v15, v16, v17, v18, v19, v20;
  }

  else
  {
    v3, v6, v7, v8, v9, v10, v11, v12;
    sub_1CF9CB714();
    close(v4);
  }
}

uint64_t sub_1CF51C87C()
{
  v1 = OBJC_IVAR____TtC18FileProviderDaemon19GlobalResourceStore_rootURL;
  v2 = sub_1CF9E5A58();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GlobalResourceStore(uint64_t a1)
{
  result = qword_1EDEA6000;
  if (!qword_1EDEA6000)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CF51C96C(uint64_t a1)
{
  result = sub_1CF9E5A58();
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

uint64_t sub_1CF51CA74@<X0>(uint64_t a1@<X8>)
{
  v34 = *MEMORY[0x1E69E9840];
  v24 = sub_1CF9E6118();
  v3 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21 - v5;
  bzero(&v29, 0x878uLL);
  v32 = v1;
  v33 = &v29;
  sub_1CEFE1894(sub_1CF51CF5C);
  v7 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v23 = v1;
  v8 = v1;
  v9 = sub_1CF9E6108();
  v10 = sub_1CF9E7288();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v3;
    v13 = v12;
    *v11 = 138412290;
    *(v11 + 4) = v8;
    *v12 = v8;
    v14 = v8;
    _os_log_impl(&dword_1CEFC7000, v9, v10, "Retrieved statfs() for volume %@", v11, 0xCu);
    sub_1CF19CAB0(v13);
    v15 = v13;
    v3 = v22;
    MEMORY[0x1D386CDC0](v15, -1, -1);
    MEMORY[0x1D386CDC0](v11, -1, -1);
  }

  v16 = (*(v3 + 8))(v6, v24);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  MEMORY[0x1EEE9AC00](v16);
  *(&v21 - 2) = v8;
  *(&v21 - 1) = &v25;
  result = sub_1CEFE1894(sub_1CF51D010);
  if (!is_mul_ok(v30, v29))
  {
    __break(1u);
LABEL_7:
    __break(1u);
  }

  if (!is_mul_ok(v31, v29))
  {
    goto LABEL_7;
  }

  v18 = v25;
  v19 = v26;
  v20 = v31 * v29;
  *a1 = v30 * v29;
  *(a1 + 8) = v20;
  *(a1 + 16) = v18;
  *(a1 + 32) = v19;
  *(a1 + 40) = 0;
  return result;
}

void sub_1CF51CEC4(void *a1@<X0>, statfs *a2@<X1>, _DWORD *a3@<X8>)
{
  v5 = [a1 root];
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v7 = v6;

  v8 = sub_1CF9E6978();
  v7, v9, v10, v11, v12, v13, v14, v15;
  LODWORD(a2) = statfs((v8 + 32), a2);

  *a3 = a2;
}

void sub_1CF51CF78(void *a1@<X0>, _DWORD *a3@<X8>)
{
  v4 = [a1 root];
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v6 = v5;

  sub_1CF9E6978();
  v6, v7, v8, v9, v10, v11, v12, v13;
  purgeable_stats = fpfs_get_purgeable_stats();

  *a3 = purgeable_stats;
}

uint64_t sub_1CF51D054()
{
  result = getiopolicy_np(13, 0);
  v1 = 1024;
  if (result == 1)
  {
    v1 = 0x2000;
  }

  qword_1EDEBB948 = v1;
  return result;
}

void *sub_1CF51D08C(void *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 8) = *result;
  *(a3 + 16) = 0;
  return result;
}

void *sub_1CF51D09C(void *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 24) = *result;
  *(a3 + 32) = 0;
  return result;
}

void *sub_1CF51D0AC(void *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 64) = *result;
  *(a3 + 72) = 0;
  return result;
}

void *sub_1CF51D0BC(void *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 80) = *result;
  *(a3 + 88) = 0;
  return result;
}

void *sub_1CF51D0CC(void *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 96) = *result;
  *(a3 + 104) = 0;
  return result;
}

void *sub_1CF51D0DC(void *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 112) = *result;
  *(a3 + 120) = 0;
  return result;
}

_DWORD *sub_1CF51D0EC(_DWORD *result, uint64_t a2, uint64_t a3)
{
  *a3 = *result;
  *(a3 + 4) = 0;
  return result;
}

_DWORD *sub_1CF51D0FC(_DWORD *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 36) = *result;
  *(a3 + 40) = 0;
  return result;
}

_DWORD *sub_1CF51D10C(_DWORD *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 44) = *result;
  *(a3 + 48) = 0;
  return result;
}

_DWORD *sub_1CF51D11C(_DWORD *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 52) = *result;
  *(a3 + 56) = 0;
  return result;
}

void *sub_1CF51D12C(void *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 360) = *result;
  *(a3 + 368) = 0;
  return result;
}

void *sub_1CF51D13C(void *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 376) = *result;
  *(a3 + 384) = 0;
  return result;
}

void *sub_1CF51D14C(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[1];
  *(a3 + 320) = *result;
  *(a3 + 328) = v3;
  *(a3 + 336) = 0;
  return result;
}

void *sub_1CF51D15C(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[1];
  *(a3 + 340) = *result;
  *(a3 + 348) = v3;
  *(a3 + 356) = 0;
  return result;
}

__n128 sub_1CF51D170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  v4 = *(a1 + 16);
  *(a3 + 209) = *a1;
  *(a3 + 225) = v4;
  *(a3 + 241) = 0;
  return result;
}

__n128 sub_1CF51D184(__n128 *a1, uint64_t a2, __n128 *a3)
{
  result = *a1;
  a3[6] = *a1;
  a3[7].n128_u8[0] = 0;
  return result;
}

__n128 sub_1CF51D194(__n128 *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  *(a3 + 120) = *a1;
  *(a3 + 136) = 0;
  return result;
}

__n128 sub_1CF51D1A4(__n128 *a1, uint64_t a2, __n128 *a3)
{
  result = *a1;
  a3[9] = *a1;
  a3[10].n128_u8[0] = 0;
  return result;
}

__n128 sub_1CF51D1B4(__n128 *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  *(a3 + 168) = *a1;
  *(a3 + 184) = 0;
  return result;
}

__n128 sub_1CF51D1C4(__n128 *a1, uint64_t a2, __n128 *a3)
{
  result = *a1;
  a3[12] = *a1;
  a3[13].n128_u8[0] = 0;
  return result;
}

__n128 sub_1CF51D1D4(__n128 *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  *(a3 + 408) = *a1;
  *(a3 + 424) = 0;
  return result;
}

void *sub_1CF51D1E8(void *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 52) = *result;
  *(a3 + 60) = 0;
  return result;
}

void *sub_1CF51D1F8(void *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 76) = *result;
  *(a3 + 84) = 0;
  return result;
}

_DWORD *sub_1CF51D208(_DWORD *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 88) = *result;
  *(a3 + 92) = 0;
  return result;
}

_DWORD *sub_1CF51D218(_DWORD *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 244) = *result;
  *(a3 + 248) = 0;
  return result;
}

_DWORD *sub_1CF51D228(_DWORD *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 252) = *result;
  *(a3 + 256) = 0;
  return result;
}

_DWORD *sub_1CF51D238(_DWORD *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 260) = *result;
  *(a3 + 264) = 0;
  return result;
}

_DWORD *sub_1CF51D248(_DWORD *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 268) = *result;
  *(a3 + 272) = 0;
  return result;
}

_DWORD *sub_1CF51D258(_DWORD *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 276) = *result;
  *(a3 + 280) = 0;
  return result;
}

_DWORD *sub_1CF51D268(_DWORD *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 292) = *result;
  *(a3 + 296) = 0;
  return result;
}

_DWORD *sub_1CF51D278(_DWORD *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 428) = *result;
  *(a3 + 432) = 0;
  return result;
}

_DWORD *sub_1CF51D288(_DWORD *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 16) = *result;
  *(a3 + 20) = 0;
  return result;
}

__n128 sub_1CF51D298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  result = *a1;
  v5 = *(a1 + 16);
  *(a3 + 308) = *a1;
  *(a3 + 324) = v5;
  *(a3 + 340) = v3;
  *(a3 + 348) = 0;
  return result;
}

__n128 sub_1CF51D2B4(__n128 *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  *(a3 + 253) = *a1;
  *(a3 + 269) = 0;
  return result;
}

__n128 sub_1CF51D2C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  v4 = *(a1 + 16);
  *(a3 + 220) = *a1;
  *(a3 + 236) = v4;
  *(a3 + 252) = 0;
  return result;
}

void *sub_1CF51D2D8(void *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 208) = *result;
  *(a3 + 216) = 0;
  return result;
}

void *sub_1CF51D2E8(void *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 16) = *result;
  *(a3 + 24) = 0;
  return result;
}

void *sub_1CF51D2F8(void *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 32) = *result;
  *(a3 + 40) = 0;
  return result;
}

void *sub_1CF51D308(void *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 48) = *result;
  *(a3 + 56) = 0;
  return result;
}

void *sub_1CF51D318(void *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 280) = *result;
  *(a3 + 288) = 0;
  return result;
}

void *sub_1CF51D328(void *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 296) = *result;
  *(a3 + 304) = 0;
  return result;
}

_DWORD *sub_1CF51D338(_DWORD *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 8) = *result;
  *(a3 + 12) = 0;
  return result;
}

_DWORD *sub_1CF51D348(_DWORD *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 108) = *result;
  *(a3 + 112) = 0;
  return result;
}

_DWORD *sub_1CF51D358(_DWORD *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 116) = *result;
  *(a3 + 120) = 0;
  return result;
}

_DWORD *sub_1CF51D368(_DWORD *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 124) = *result;
  *(a3 + 128) = 0;
  return result;
}

_DWORD *sub_1CF51D378(_DWORD *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 132) = *result;
  *(a3 + 136) = 0;
  return result;
}

_DWORD *sub_1CF51D388(_DWORD *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 140) = *result;
  *(a3 + 144) = 0;
  return result;
}

_DWORD *sub_1CF51D398(_DWORD *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 184) = *result;
  *(a3 + 188) = 0;
  return result;
}

_DWORD *sub_1CF51D3A8(_DWORD *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 272) = *result;
  *(a3 + 276) = 0;
  return result;
}

_DWORD *sub_1CF51D3B8(_DWORD *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 368) = *result;
  *(a3 + 372) = 0;
  return result;
}

_DWORD *sub_1CF51D3C8(_DWORD *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 148) = *result;
  *(a3 + 152) = 0;
  return result;
}

void *sub_1CF51D3D8(void *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 88) = *result;
  *(a3 + 96) = 0;
  return result;
}

void *sub_1CF51D3E8(void *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 104) = *result;
  *(a3 + 112) = 0;
  return result;
}

void *sub_1CF51D3F8(void *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 120) = *result;
  *(a3 + 128) = 0;
  return result;
}

void *sub_1CF51D408(void *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 136) = *result;
  *(a3 + 144) = 0;
  return result;
}

void *sub_1CF51D418(void *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 72) = *result;
  *(a3 + 80) = 0;
  return result;
}

_DWORD *sub_1CF51D428(_DWORD *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 64) = *result;
  *(a3 + 68) = 0;
  return result;
}

void sub_1CF51D438(int *a1, uint64_t a2, uint64_t *a3)
{
  v6 = sub_1CF9E6938();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1CF9E5A98();
  v16 = MEMORY[0x1EEE9AC00](v7);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[1];
  v20 = *a1;
  if (v19 + v20 <= a2)
  {
    v21 = v19 - 1;
    v22.n128_f64[0] = (*(v15 + 104))(v18, *MEMORY[0x1E6969010], v16);
    v23 = sub_1CF51FB88(a1 + v20, v21, v18, v22);
    v25 = v24;
    sub_1CF9E6918();
    v26 = sub_1CF9E68D8();
    v28 = v27;
    a3[1], v27, v29, v30, v31, v32, v33, v34;
    sub_1CEFE4714(v23, v25);
    *a3 = v26;
    a3[1] = v28;
  }

  else
  {
    a3[1], v8, v9, v10, v11, v12, v13, v14;
    *a3 = 0;
    a3[1] = 0;
  }
}

void sub_1CF51D5C8(int *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CF9E6938();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1CF9E5A98();
  v16 = MEMORY[0x1EEE9AC00](v7);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[1];
  v20 = *a1;
  if (v19 + v20 <= a2)
  {
    v21 = v19 - 1;
    v22.n128_f64[0] = (*(v15 + 104))(v18, *MEMORY[0x1E6969010], v16);
    v23 = sub_1CF51FB88(a1 + v20, v21, v18, v22);
    v25 = v24;
    sub_1CF9E6918();
    v26 = sub_1CF9E68D8();
    v28 = v27;
    *(a3 + 400), v27, v29, v30, v31, v32, v33, v34;
    sub_1CEFE4714(v23, v25);
    *(a3 + 392) = v26;
    *(a3 + 400) = v28;
  }

  else
  {
    *(a3 + 400), v8, v9, v10, v11, v12, v13, v14;
    *(a3 + 392) = 0;
    *(a3 + 400) = 0;
  }
}

void sub_1CF51D758(int *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CF9E6938();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1CF9E5A98();
  v16 = MEMORY[0x1EEE9AC00](v7);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[1];
  v20 = *a1;
  if (v19 + v20 <= a2)
  {
    v21 = v19 - 1;
    v22.n128_f64[0] = (*(v15 + 104))(v18, *MEMORY[0x1E6969010], v16);
    v23 = sub_1CF51FB88(a1 + v20, v21, v18, v22);
    v25 = v24;
    sub_1CF9E6918();
    v26 = sub_1CF9E68D8();
    v28 = v27;
    *(a3 + 160), v27, v29, v30, v31, v32, v33, v34;
    sub_1CEFE4714(v23, v25);
    *(a3 + 152) = v26;
    *(a3 + 160) = v28;
  }

  else
  {
    *(a3 + 160), v8, v9, v10, v11, v12, v13, v14;
    *(a3 + 152) = 0;
    *(a3 + 160) = 0;
  }
}

void sub_1CF51D8E8(int *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CF9E6938();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1CF9E5A98();
  v16 = MEMORY[0x1EEE9AC00](v7);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[1];
  v20 = *a1;
  if (v19 + v20 <= a2)
  {
    v21 = v19 - 1;
    v22.n128_f64[0] = (*(v15 + 104))(v18, *MEMORY[0x1E6969010], v16);
    v23 = sub_1CF51FB88(a1 + v20, v21, v18, v22);
    v25 = v24;
    sub_1CF9E6918();
    v26 = sub_1CF9E68D8();
    v28 = v27;
    *(a3 + 176), v27, v29, v30, v31, v32, v33, v34;
    sub_1CEFE4714(v23, v25);
    *(a3 + 168) = v26;
    *(a3 + 176) = v28;
  }

  else
  {
    *(a3 + 176), v8, v9, v10, v11, v12, v13, v14;
    *(a3 + 168) = 0;
    *(a3 + 176) = 0;
  }
}

void sub_1CF51DA78(int *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CF9E6938();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1CF9E5A98();
  v16 = MEMORY[0x1EEE9AC00](v7);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[1];
  v20 = *a1;
  if (v19 + v20 <= a2)
  {
    v21 = v19 - 1;
    v22.n128_f64[0] = (*(v15 + 104))(v18, *MEMORY[0x1E6969010], v16);
    v23 = sub_1CF51FB88(a1 + v20, v21, v18, v22);
    v25 = v24;
    sub_1CF9E6918();
    v26 = sub_1CF9E68D8();
    v28 = v27;
    *(a3 + 200), v27, v29, v30, v31, v32, v33, v34;
    sub_1CEFE4714(v23, v25);
    *(a3 + 192) = v26;
    *(a3 + 200) = v28;
  }

  else
  {
    *(a3 + 200), v8, v9, v10, v11, v12, v13, v14;
    *(a3 + 192) = 0;
    *(a3 + 200) = 0;
  }
}

void sub_1CF51DC08(int *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CF9E6938();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1CF9E5A98();
  v16 = MEMORY[0x1EEE9AC00](v7);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[1];
  v20 = *a1;
  if (v19 + v20 <= a2)
  {
    v21 = v19 - 1;
    v22.n128_f64[0] = (*(v15 + 104))(v18, *MEMORY[0x1E6969010], v16);
    v23 = sub_1CF51FB88(a1 + v20, v21, v18, v22);
    v25 = v24;
    sub_1CF9E6918();
    v26 = sub_1CF9E68D8();
    v28 = v27;
    *(a3 + 360), v27, v29, v30, v31, v32, v33, v34;
    sub_1CEFE4714(v23, v25);
    *(a3 + 352) = v26;
    *(a3 + 360) = v28;
  }

  else
  {
    *(a3 + 360), v8, v9, v10, v11, v12, v13, v14;
    *(a3 + 352) = 0;
    *(a3 + 360) = 0;
  }
}

void sub_1CF51DD98(int *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CF9E6938();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1CF9E5A98();
  v16 = MEMORY[0x1EEE9AC00](v7);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[1];
  v20 = *a1;
  if (v19 + v20 <= a2)
  {
    v21 = v19 - 1;
    v22.n128_f64[0] = (*(v15 + 104))(v18, *MEMORY[0x1E6969010], v16);
    v23 = sub_1CF51FB88(a1 + v20, v21, v18, v22);
    v25 = v24;
    sub_1CF9E6918();
    v26 = sub_1CF9E68D8();
    v28 = v27;
    *(a3 + 56), v27, v29, v30, v31, v32, v33, v34;
    sub_1CEFE4714(v23, v25);
    *(a3 + 48) = v26;
    *(a3 + 56) = v28;
  }

  else
  {
    *(a3 + 56), v8, v9, v10, v11, v12, v13, v14;
    *(a3 + 48) = 0;
    *(a3 + 56) = 0;
  }
}

uint64_t sub_1CF51DF28(int *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[1];
  v6 = *a1;
  if ((v5 + v6) <= a2)
  {
    v7 = sub_1CF51FAD8(a1 + v6, v5);
    v8 = v9;
  }

  else
  {
    v7 = 0;
    v8 = 0xF000000000000000;
  }

  result = sub_1CEFE48D8(*(a3 + 304), *(a3 + 312));
  *(a3 + 304) = v7;
  *(a3 + 312) = v8;
  return result;
}

_DWORD *sub_1CF51DF90(_DWORD *result, uint64_t a2, uint64_t a3)
{
  v3 = *result == 0;
  *(a3 + 284) = *result;
  *(a3 + 288) = v3;
  return result;
}

uint64_t sub_1CF51DFB8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1400, &qword_1CFA08EF0);
  result = swift_allocObject();
  *(result + 16) = xmmword_1CFA08E10;
  *(result + 32) = 1;
  *(result + 40) = xmmword_1CFA08E20;
  *(result + 56) = sub_1CF51D438;
  *(result + 64) = 0;
  *(result + 72) = 2;
  v1 = xmmword_1CF9FD940;
  *(result + 80) = xmmword_1CF9FD940;
  *(result + 96) = sub_1CF51D288;
  *(result + 104) = 0;
  *(result + 112) = 4;
  *(result + 120) = xmmword_1CFA00210;
  *(result + 136) = sub_1CF51D09C;
  *(result + 144) = 0;
  *(result + 152) = 8;
  *(result + 160) = xmmword_1CF9FD940;
  *(result + 176) = sub_1CF51D0FC;
  *(result + 184) = 0;
  *(result + 192) = 16;
  *(result + 200) = xmmword_1CF9FD940;
  *(result + 216) = sub_1CF51D10C;
  *(result + 224) = 0;
  *(result + 232) = 32;
  *(result + 240) = xmmword_1CFA00210;
  *(result + 256) = sub_1CF51D1E8;
  *(result + 264) = 0;
  *(result + 272) = 64;
  *(result + 280) = 8;
  *(result + 288) = 0;
  *(result + 296) = sub_1CF51D0AC;
  *(result + 304) = 0;
  *(result + 312) = 128;
  *(result + 320) = xmmword_1CFA00210;
  *(result + 336) = sub_1CF51D1F8;
  *(result + 344) = 0;
  *(result + 352) = 256;
  *(result + 360) = 4;
  *(result + 368) = 0;
  *(result + 376) = sub_1CF51D208;
  *(result + 384) = 0;
  *(result + 392) = 512;
  *(result + 400) = xmmword_1CFA08E30;
  *(result + 416) = sub_1CF51D184;
  *(result + 424) = 0;
  *(result + 432) = 1024;
  *(result + 440) = 16;
  *(result + 448) = 0;
  *(result + 456) = sub_1CF51D194;
  *(result + 464) = 0;
  *(result + 472) = 2048;
  *(result + 480) = xmmword_1CFA08E30;
  *(result + 496) = sub_1CF51D1A4;
  *(result + 504) = 0;
  *(result + 512) = 4096;
  *(result + 520) = 16;
  *(result + 528) = 0;
  *(result + 536) = sub_1CF51D1B4;
  *(result + 544) = 0;
  *(result + 552) = 0x2000;
  *(result + 560) = xmmword_1CFA08E30;
  *(result + 576) = sub_1CF51D1C4;
  *(result + 584) = 0;
  *(result + 592) = 0x4000;
  *(result + 600) = 32;
  *(result + 608) = 0;
  *(result + 616) = sub_1CF51D170;
  *(result + 624) = 0;
  *(result + 632) = 0x8000;
  *(result + 640) = xmmword_1CF9FD940;
  *(result + 656) = sub_1CF51D218;
  *(result + 664) = 0;
  *(result + 672) = 0x10000;
  *(result + 680) = 4;
  *(result + 688) = 0;
  *(result + 696) = sub_1CF51D228;
  *(result + 704) = 0;
  *(result + 712) = 0x20000;
  *(result + 720) = xmmword_1CF9FD940;
  *(result + 736) = sub_1CF51D238;
  *(result + 744) = 0;
  *(result + 752) = 0x40000;
  *(result + 760) = 4;
  *(result + 768) = 0;
  *(result + 776) = sub_1CF51D248;
  *(result + 784) = 0;
  *(result + 792) = 0x80000;
  *(result + 800) = xmmword_1CF9FD940;
  *(result + 816) = sub_1CF51D258;
  *(result + 824) = 0;
  *(result + 832) = 0x100000;
  *(result + 840) = 4;
  *(result + 848) = 0;
  *(result + 856) = sub_1CF51DF90;
  *(result + 864) = 0;
  *(result + 872) = 0x200000;
  *(result + 880) = xmmword_1CF9FD940;
  *(result + 896) = sub_1CF51D268;
  *(result + 904) = 0;
  *(result + 912) = 0x400000;
  *(result + 920) = 8;
  *(result + 928) = 68;
  *(result + 936) = sub_1CF51DF28;
  *(result + 944) = 0;
  *(result + 952) = 0x800000;
  *(result + 960) = xmmword_1CFA08E30;
  *(result + 976) = sub_1CF51D14C;
  *(result + 984) = 0;
  *(result + 992) = 0x1000000;
  *(result + 1000) = 16;
  *(result + 1008) = 0;
  *(result + 1016) = sub_1CF51D15C;
  *(result + 1024) = 0;
  *(result + 1032) = 0x2000000;
  *(result + 1040) = xmmword_1CFA00210;
  *(result + 1056) = sub_1CF51D12C;
  *(result + 1064) = 0;
  *(result + 1072) = 0x4000000;
  *(result + 1080) = 8;
  *(result + 1088) = 0;
  *(result + 1096) = sub_1CF51D13C;
  *(result + 1104) = 0;
  *(result + 1112) = 0x8000000;
  if (qword_1EDEA7E08 != -1)
  {
    v3 = result;
    swift_once();
    v1 = xmmword_1CF9FD940;
    result = v3;
  }

  v2 = qword_1EDEBB948;
  *(result + 1120) = 8;
  *(result + 1128) = v2;
  *(result + 1136) = sub_1CF51D5C8;
  *(result + 1144) = 0;
  *(result + 1152) = 0x10000000;
  *(result + 1160) = 16;
  *(result + 1168) = 0;
  *(result + 1176) = sub_1CF51D1D4;
  *(result + 1184) = 0;
  *(result + 1192) = 0x40000000;
  *(result + 1200) = v1;
  *(result + 1216) = sub_1CF51D278;
  *(result + 1224) = 0;
  off_1EDEA7DE8 = result;
  return result;
}

void sub_1CF51E4B8()
{
  if (qword_1EDEA7DE0 != -1)
  {
    swift_once();
  }

  v0 = off_1EDEA7DE8;
  if (*(off_1EDEA7DE8 + 2))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C13F8, &qword_1CFA08EE8);
    v1 = sub_1CF9E7BE8();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v10 = v1;
  swift_bridgeObjectRetain_n();
  sub_1CF51F6E8(v0, 1, &v10, sub_1CF7D52AC, sub_1CF7CF058, sub_1CF7C2EA8, &type metadata for VFSAttributes.Common.AttributeSet, v2);
  v0, v3, v4, v5, v6, v7, v8, v9;
  qword_1EDEBB940 = v10;
}

void sub_1CF51E5F4()
{
  if (qword_1EDEA7DE0 != -1)
  {
    swift_once();
  }

  v0 = off_1EDEA7DE8;
  v1 = *(off_1EDEA7DE8 + 2);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v14 = MEMORY[0x1E69E7CC0];

    sub_1CF680968(0, v1, 0);
    v2 = v14;
    v10 = *(v14 + 16);
    v11 = 32;
    do
    {
      v12 = *(&v0->super.isa + v11);
      v13 = *(v14 + 24);
      if (v10 >= v13 >> 1)
      {
        sub_1CF680968((v13 > 1), v10 + 1, 1);
      }

      *(v14 + 16) = v10 + 1;
      *(v14 + 4 * v10 + 32) = v12;
      v11 += 40;
      ++v10;
      --v1;
    }

    while (v1);
    v0, v3, v4, v5, v6, v7, v8, v9;
  }

  qword_1EDEBB938 = v2;
}

double sub_1CF51E714()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C13F0, &qword_1CFA08EE0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1CFA08E40;
  *(v0 + 32) = 1;
  v1 = xmmword_1CF9FD940;
  *(v0 + 40) = xmmword_1CF9FD940;
  *(v0 + 56) = sub_1CF51D0EC;
  *(v0 + 64) = 0;
  *(v0 + 72) = 2;
  *(v0 + 80) = xmmword_1CF9FD940;
  *(v0 + 96) = sub_1CF51D338;
  *(v0 + 104) = 0;
  *(v0 + 112) = 4;
  v2 = xmmword_1CFA00210;
  *(v0 + 120) = xmmword_1CFA00210;
  *(v0 + 136) = sub_1CF51D2E8;
  *(v0 + 144) = 0;
  *(v0 + 152) = 8;
  *(v0 + 160) = xmmword_1CFA00210;
  *(v0 + 176) = sub_1CF51D2F8;
  *(v0 + 184) = 0;
  *(v0 + 192) = 16;
  *(v0 + 200) = xmmword_1CFA00210;
  *(v0 + 216) = sub_1CF51D308;
  *(v0 + 224) = 0;
  *(v0 + 232) = 0x800000;
  *(v0 + 240) = xmmword_1CFA00210;
  *(v0 + 256) = sub_1CF51D0AC;
  *(v0 + 264) = 0;
  *(v0 + 272) = 32;
  *(v0 + 280) = 8;
  *(v0 + 288) = 0;
  *(v0 + 296) = sub_1CF51D0BC;
  *(v0 + 304) = 0;
  *(v0 + 312) = 64;
  *(v0 + 320) = xmmword_1CFA00210;
  *(v0 + 336) = sub_1CF51D0CC;
  *(v0 + 344) = 0;
  *(v0 + 352) = 128;
  *(v0 + 360) = 4;
  *(v0 + 368) = 0;
  *(v0 + 376) = sub_1CF51D348;
  *(v0 + 384) = 0;
  *(v0 + 392) = 256;
  *(v0 + 400) = xmmword_1CF9FD940;
  *(v0 + 416) = sub_1CF51D358;
  *(v0 + 424) = 0;
  *(v0 + 432) = 512;
  *(v0 + 440) = 4;
  *(v0 + 448) = 0;
  *(v0 + 456) = sub_1CF51D368;
  *(v0 + 464) = 0;
  *(v0 + 472) = 1024;
  *(v0 + 480) = xmmword_1CF9FD940;
  *(v0 + 496) = sub_1CF51D378;
  *(v0 + 504) = 0;
  *(v0 + 512) = 2048;
  *(v0 + 520) = 4;
  *(v0 + 528) = 0;
  *(v0 + 536) = sub_1CF51D388;
  *(v0 + 544) = 0;
  *(v0 + 552) = 4096;
  if (qword_1EDEA7E08 != -1)
  {
    v5 = v0;
    swift_once();
    v2 = xmmword_1CFA00210;
    v1 = xmmword_1CF9FD940;
    v0 = v5;
  }

  v3 = qword_1EDEBB948;
  *(v0 + 560) = 8;
  *(v0 + 568) = v3;
  *(v0 + 576) = sub_1CF51D758;
  *(v0 + 584) = 0;
  *(v0 + 592) = 0x2000;
  *(v0 + 600) = 8;
  *(v0 + 608) = 766;
  *(v0 + 616) = sub_1CF51D8E8;
  *(v0 + 624) = 0;
  *(v0 + 632) = 0x4000;
  *(v0 + 640) = v1;
  *(v0 + 656) = sub_1CF51D398;
  *(v0 + 664) = 0;
  *(v0 + 672) = 0x8000;
  *(v0 + 680) = 8;
  *(v0 + 688) = v3;
  *(v0 + 696) = sub_1CF51DA78;
  *(v0 + 704) = 0;
  *(v0 + 712) = 0x10000;
  *(v0 + 720) = v2;
  *(v0 + 736) = sub_1CF51D2D8;
  *(v0 + 744) = 0;
  *(v0 + 752) = 0x20000;
  *(v0 + 760) = 32;
  *(v0 + 768) = 0;
  *(v0 + 776) = sub_1CF51D2C4;
  *(v0 + 784) = 0;
  *(v0 + 792) = 0x40000;
  *(v0 + 800) = xmmword_1CFA08E30;
  *(v0 + 816) = sub_1CF51D2B4;
  *(v0 + 824) = 0;
  *(v0 + 832) = 0x80000;
  *(v0 + 840) = 4;
  *(v0 + 848) = 0;
  *(v0 + 856) = sub_1CF51D3A8;
  *(v0 + 864) = 0;
  *(v0 + 872) = 0x10000000;
  *(v0 + 880) = v2;
  *(v0 + 896) = sub_1CF51D318;
  *(v0 + 904) = 0;
  *(v0 + 912) = 0x20000000;
  *(v0 + 920) = 8;
  *(v0 + 928) = 0;
  *(v0 + 936) = sub_1CF51D328;
  *(v0 + 944) = 0;
  *(v0 + 952) = 0x40000000;
  *&result = 40;
  *(v0 + 960) = xmmword_1CFA08E50;
  *(v0 + 976) = sub_1CF51D298;
  *(v0 + 984) = 0;
  *(v0 + 992) = 0x100000;
  *(v0 + 1000) = 8;
  *(v0 + 1008) = 16;
  *(v0 + 1016) = sub_1CF51DC08;
  *(v0 + 1024) = 0;
  *(v0 + 1032) = 0x200000;
  *(v0 + 1040) = v1;
  *(v0 + 1056) = sub_1CF51D3B8;
  *(v0 + 1064) = 0;
  off_1EDEA7DC0 = v0;
  return result;
}

void sub_1CF51EB84()
{
  if (qword_1EDEA7DB8 != -1)
  {
    swift_once();
  }

  v0 = off_1EDEA7DC0;
  if (*(off_1EDEA7DC0 + 2))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C13E8, &qword_1CFA170E0);
    v1 = sub_1CF9E7BE8();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v10 = v1;
  swift_bridgeObjectRetain_n();
  sub_1CF51F6E8(v0, 1, &v10, sub_1CF7D52AC, sub_1CF7CF044, sub_1CF7C2E94, &type metadata for VFSAttributes.Volume.AttributeSet, v2);
  v0, v3, v4, v5, v6, v7, v8, v9;
  qword_1EC4EBD40 = v10;
}

void sub_1CF51ECC0()
{
  if (qword_1EDEA7DB8 != -1)
  {
    swift_once();
  }

  v0 = off_1EDEA7DC0;
  v1 = *(off_1EDEA7DC0 + 2);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v14 = MEMORY[0x1E69E7CC0];

    sub_1CF680938(0, v1, 0);
    v2 = v14;
    v10 = *(v14 + 16);
    v11 = 32;
    do
    {
      v12 = *(&v0->super.isa + v11);
      v13 = *(v14 + 24);
      if (v10 >= v13 >> 1)
      {
        sub_1CF680938((v13 > 1), v10 + 1, 1);
      }

      *(v14 + 16) = v10 + 1;
      *(v14 + 4 * v10 + 32) = v12;
      v11 += 40;
      ++v10;
      --v1;
    }

    while (v1);
    v0, v3, v4, v5, v6, v7, v8, v9;
  }

  qword_1EDEBB930 = v2;
}

void sub_1CF51EDE0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C13E0, &unk_1CFA08ED0);
  v1 = sub_1CF9E7BE8();
  sub_1CF51F6E8(&unk_1F4BEAA90, 1, &v1, sub_1CF7D52AC, sub_1CF7CF01C, sub_1CF7C2E6C, &type metadata for VFSAttributes.Directory.AttributeSet, v0);
  qword_1EC4EBD48 = v1;
}

char *sub_1CF51EEBC()
{
  v23 = MEMORY[0x1E69E7CC0];
  result = sub_1CF6808D8(0, 6, 0);
  v1 = v23;
  v2 = dword_1F4BEAAB0;
  v4 = *(v23 + 16);
  v3 = *(v23 + 24);
  v5 = v3 >> 1;
  v6 = v4 + 1;
  if (v3 >> 1 <= v4)
  {
    result = sub_1CF6808D8((v3 > 1), v4 + 1, 1);
    v1 = v23;
    v3 = *(v23 + 24);
    v5 = v3 >> 1;
  }

  *(v1 + 16) = v6;
  *(v1 + 4 * v4 + 32) = v2;
  v7 = dword_1F4BEAAD8;
  v24 = v1;
  v8 = v4 + 2;
  if (v5 <= v6)
  {
    result = sub_1CF6808D8((v3 > 1), v8, 1);
    v1 = v24;
  }

  *(v1 + 16) = v8;
  *(v1 + 4 * v6 + 32) = v7;
  v9 = dword_1F4BEAB00;
  v25 = v1;
  v11 = *(v1 + 16);
  v10 = *(v1 + 24);
  v12 = v10 >> 1;
  v13 = v11 + 1;
  if (v10 >> 1 <= v11)
  {
    result = sub_1CF6808D8((v10 > 1), v11 + 1, 1);
    v1 = v25;
    v10 = *(v25 + 24);
    v12 = v10 >> 1;
  }

  *(v1 + 16) = v13;
  *(v1 + 4 * v11 + 32) = v9;
  v14 = dword_1F4BEAB28;
  v26 = v1;
  v15 = v11 + 2;
  if (v12 <= v13)
  {
    result = sub_1CF6808D8((v10 > 1), v15, 1);
    v1 = v26;
  }

  *(v1 + 16) = v15;
  *(v1 + 4 * v13 + 32) = v14;
  v16 = dword_1F4BEAB50;
  v27 = v1;
  v18 = *(v1 + 16);
  v17 = *(v1 + 24);
  v19 = v17 >> 1;
  v20 = v18 + 1;
  if (v17 >> 1 <= v18)
  {
    result = sub_1CF6808D8((v17 > 1), v18 + 1, 1);
    v1 = v27;
    v17 = *(v27 + 24);
    v19 = v17 >> 1;
  }

  *(v1 + 16) = v20;
  *(v1 + 4 * v18 + 32) = v16;
  v21 = dword_1F4BEAB78;
  v28 = v1;
  v22 = v18 + 2;
  if (v19 <= v20)
  {
    result = sub_1CF6808D8((v17 > 1), v22, 1);
    v1 = v28;
  }

  *(v1 + 16) = v22;
  *(v1 + 4 * v20 + 32) = v21;
  qword_1EDEBB918 = v1;
  return result;
}

void sub_1CF51F0E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C13D8, &unk_1CFA170D0);
  v1 = sub_1CF9E7BE8();
  sub_1CF51F6E8(&unk_1F4BEABA0, 1, &v1, sub_1CF7D52AC, sub_1CF7CF06C, sub_1CF7C2EBC, &type metadata for VFSAttributes.File.AttributeSet, v0);
  qword_1EDEBB958 = v1;
}

char *sub_1CF51F1BC()
{
  v6 = MEMORY[0x1E69E7CC0];
  result = sub_1CF680998(0, 10, 0);
  v1 = v6;
  v2 = *(v6 + 16);
  v3 = 0x20u;
  do
  {
    v4 = *(&unk_1F4BEABA0 + v3);
    v7 = v1;
    v5 = *(v1 + 24);
    if (v2 >= v5 >> 1)
    {
      result = sub_1CF680998((v5 > 1), v2 + 1, 1);
      v1 = v7;
    }

    *(v1 + 16) = v2 + 1;
    *(v1 + 4 * v2 + 32) = v4;
    v3 += 40;
    ++v2;
  }

  while (v3 != 432);
  qword_1EDEBB950 = v1;
  return result;
}

double sub_1CF51F28C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C13D0, &unk_1CFA08EC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1CFA08E60;
  *(v0 + 32) = 4;
  if (qword_1EDEA7E08 != -1)
  {
    v3 = v0;
    swift_once();
    v0 = v3;
  }

  v1 = qword_1EDEBB948;
  *(v0 + 40) = 8;
  *(v0 + 48) = v1;
  *(v0 + 56) = sub_1CF51D438;
  *(v0 + 64) = 0;
  *(v0 + 72) = 8;
  *&result = 8;
  *(v0 + 80) = xmmword_1CFA00210;
  *(v0 + 96) = sub_1CF51D2E8;
  *(v0 + 104) = 0;
  *(v0 + 112) = 16;
  *(v0 + 120) = xmmword_1CFA00210;
  *(v0 + 136) = sub_1CF51D2F8;
  *(v0 + 144) = 0;
  *(v0 + 152) = 32;
  *(v0 + 160) = 8;
  *(v0 + 168) = v1;
  *(v0 + 176) = sub_1CF51DD98;
  *(v0 + 184) = 0;
  *(v0 + 192) = 64;
  *(v0 + 200) = xmmword_1CF9FD940;
  *(v0 + 216) = sub_1CF51D428;
  *(v0 + 224) = 0;
  *(v0 + 232) = 128;
  *(v0 + 240) = xmmword_1CFA00210;
  *(v0 + 256) = sub_1CF51D418;
  *(v0 + 264) = 0;
  *(v0 + 272) = 256;
  *(v0 + 280) = 8;
  *(v0 + 288) = 0;
  *(v0 + 296) = sub_1CF51D3D8;
  *(v0 + 304) = 0;
  *(v0 + 312) = 512;
  *(v0 + 320) = xmmword_1CFA00210;
  *(v0 + 336) = sub_1CF51D3E8;
  *(v0 + 344) = 0;
  *(v0 + 352) = 1024;
  *(v0 + 360) = 8;
  *(v0 + 368) = 0;
  *(v0 + 376) = sub_1CF51D3F8;
  *(v0 + 384) = 0;
  *(v0 + 392) = 2048;
  *(v0 + 400) = xmmword_1CFA00210;
  *(v0 + 416) = sub_1CF51D408;
  *(v0 + 424) = 0;
  *(v0 + 432) = 4096;
  *(v0 + 440) = 4;
  *(v0 + 448) = 0;
  *(v0 + 456) = sub_1CF51D3C8;
  *(v0 + 464) = 0;
  off_1EDEA7D88 = v0;
  return result;
}

void sub_1CF51F494()
{
  if (qword_1EDEA7D80 != -1)
  {
    swift_once();
  }

  v0 = off_1EDEA7D88;
  if (*(off_1EDEA7D88 + 2))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C13C8, "8&\n");
    v1 = sub_1CF9E7BE8();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v10 = v1;
  swift_bridgeObjectRetain_n();
  sub_1CF51F6E8(v0, 1, &v10, sub_1CF7D52AC, sub_1CF7CF030, sub_1CF7C2E80, &type metadata for VFSAttributes.Extended.AttributeSet, v2);
  v0, v3, v4, v5, v6, v7, v8, v9;
  qword_1EDEBB928 = v10;
}

void sub_1CF51F5D0()
{
  if (qword_1EDEA7D80 != -1)
  {
    swift_once();
  }

  v0 = off_1EDEA7D88;
  v1 = *(off_1EDEA7D88 + 2);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v14 = MEMORY[0x1E69E7CC0];

    sub_1CF680908(0, v1, 0);
    v2 = v14;
    v10 = *(v14 + 16);
    v11 = 32;
    do
    {
      v12 = *(&v0->super.isa + v11);
      v13 = *(v14 + 24);
      if (v10 >= v13 >> 1)
      {
        sub_1CF680908((v13 > 1), v10 + 1, 1);
      }

      *(v14 + 16) = v10 + 1;
      *(v14 + 4 * v10 + 32) = v12;
      v11 += 40;
      ++v10;
      --v1;
    }

    while (v1);
    v0, v3, v4, v5, v6, v7, v8, v9;
  }

  qword_1EDEBB920 = v2;
}

void sub_1CF51F6E8(uint64_t a1, const char *a2, void *a3, uint64_t (*a4)(uint64_t), void (*a5)(uint64_t), void (*a6)(uint64_t, uint64_t), uint64_t a7, void *a8)
{
  v60 = *(a1 + 16);
  if (!v60)
  {
    goto LABEL_23;
  }

  v8 = a2;
  v11 = *(a1 + 48);
  v62 = *(a1 + 40);
  v13 = *(a1 + 56);
  v12 = *(a1 + 64);
  v10 = *(a1 + 32);
  v14 = *a3;
  v15 = a4(v10);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v20 = v15;
  v21 = v16;
  v22 = v14[3];

  if (v22 >= v19)
  {
    if (v8)
    {
      if ((v21 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      a5(v23);
      if ((v21 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_9;
  }

  a6(v19, v8 & 1);
  v24 = a4(v10);
  if ((v21 & 1) == (a2 & 1))
  {
    v20 = v24;
    if ((v21 & 1) == 0)
    {
LABEL_12:
      v34 = *a3;
      *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
      *(v34[6] + 4 * v20) = v10;
      v35 = (v34[7] + 32 * v20);
      *v35 = v62;
      v35[1] = v11;
      v35[2] = v13;
      v35[3] = v12;
      v36 = v34[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (!v37)
      {
        v34[2] = v38;
        if (v60 != 1)
        {
          v39 = (a1 + 104);
          v40 = 1;
          while (v40 < *(a1 + 16))
          {
            v42 = *(v39 - 2);
            v61 = *(v39 - 3);
            v44 = *(v39 - 1);
            v43 = *v39;
            v41 = *(v39 - 8);
            v45 = *a3;
            v46 = a4(v41);
            v48 = v45[2];
            v49 = (v47 & 1) == 0;
            v50 = v48 + v49;
            if (__OFADD__(v48, v49))
            {
              goto LABEL_25;
            }

            v51 = v46;
            v52 = v47;
            v53 = v45[3];

            if (v53 < v50)
            {
              a6(v50, 1);
              v54 = a4(v41);
              if ((v52 & 1) != (a2 & 1))
              {
                goto LABEL_28;
              }

              v51 = v54;
            }

            if (v52)
            {
              goto LABEL_9;
            }

            v55 = *a3;
            *(*a3 + 8 * (v51 >> 6) + 64) |= 1 << v51;
            *(v55[6] + 4 * v51) = v41;
            v56 = (v55[7] + 32 * v51);
            *v56 = v61;
            v56[1] = v42;
            v56[2] = v44;
            v56[3] = v43;
            v57 = v55[2];
            v37 = __OFADD__(v57, 1);
            v58 = v57 + 1;
            if (v37)
            {
              goto LABEL_26;
            }

            ++v40;
            v55[2] = v58;
            v39 += 5;
            if (v60 == v40)
            {
              goto LABEL_23;
            }
          }

          goto LABEL_27;
        }

LABEL_23:
        a1, a2, a3, a4, a5, a6, a7, a8;
        return;
      }

LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

LABEL_9:
    v25 = swift_allocError();
    swift_willThrow();
    v26 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    if ((swift_dynamicCast() & 1) == 0)
    {
      a1, v27, v28, v29, v30, v31, v32, v33;

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_1CF9E8108();
  __break(1u);
LABEL_29:
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA3DF20);
  sub_1CF9E7B58();
  MEMORY[0x1D3868CC0](39, 0xE100000000000000);
  sub_1CF9E7B68();
  __break(1u);
}

unint64_t sub_1CF51FAD8(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_1CF67B224(a1, &a1[a2]);
  }

  sub_1CF9E54F8();
  swift_allocObject();
  sub_1CF9E5488();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_1CF9E5AD8();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_1CF51FB88(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v7 = sub_1CF9E5A98();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1CF9E5A88();
  if (a2)
  {
    sub_1CF9E54F8();
    swift_allocObject();

    v11 = sub_1CF9E5478();
    (*(v8 + 16))(v10, a3, v7);
    if ((*(v8 + 88))(v10, v7) == *MEMORY[0x1E6969010])
    {
      v12 = sub_1CF9E54E8();
      *v13 |= 0x8000000000000000;
      v12(v17, 0);
    }

    else
    {
      (*(v8 + 8))(v10, v7);
    }

    v15 = sub_1CF67B2DC(v11, a2);
  }

  else
  {
    v14 = sub_1CF9E5A88();
    v14(a1, 0);

    v15 = 0;
  }

  (*(v8 + 8))(a3, v7);
  return v15;
}

uint64_t sub_1CF51FDC8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 433))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1CF51FE24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 424) = 0;
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
    *(result + 432) = 0;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 433) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 433) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1CF51FF14(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 373))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 160);
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

uint64_t sub_1CF51FF70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 360) = 0;
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
    *(result + 372) = 0;
    *(result + 368) = 0;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 373) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 373) = 0;
    }

    if (a2)
    {
      *(result + 160) = a2;
    }
  }

  return result;
}

uint64_t sub_1CF52004C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 57))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CF52006C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
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

  *(result + 57) = v3;
  return result;
}

__n128 __swift_memcpy121_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1CF5200F4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 121))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CF520114(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
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

  *(result + 121) = v3;
  return result;
}

uint64_t sub_1CF520180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1CF5201BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1CF520204(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

__n128 __swift_memcpy153_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 137) = *(a2 + 137);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1CF520290(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 153))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1CF5202EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 153) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 153) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1CF520390(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 1161))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1CF5203EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
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
    *(result + 1160) = 0;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 1161) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 1161) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1CF520584()
{
  result = qword_1EDEA7DA0;
  if (!qword_1EDEA7DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA7DA0);
  }

  return result;
}

unint64_t sub_1CF5205DC()
{
  result = qword_1EC4C1408;
  if (!qword_1EC4C1408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1408);
  }

  return result;
}

unint64_t sub_1CF520664()
{
  result = qword_1EC4C1420;
  if (!qword_1EC4C1420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1420);
  }

  return result;
}

unint64_t sub_1CF5206BC()
{
  result = qword_1EC4C1428;
  if (!qword_1EC4C1428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1428);
  }

  return result;
}

unint64_t sub_1CF520714()
{
  result = qword_1EC4C1430;
  if (!qword_1EC4C1430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1430);
  }

  return result;
}

unint64_t sub_1CF52076C()
{
  result = qword_1EC4C1438;
  if (!qword_1EC4C1438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1438);
  }

  return result;
}

unint64_t sub_1CF5207C0()
{
  result = qword_1EDEA7EA8[0];
  if (!qword_1EDEA7EA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEA7EA8);
  }

  return result;
}

unint64_t sub_1CF520818()
{
  result = qword_1EC4C1440;
  if (!qword_1EC4C1440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1440);
  }

  return result;
}

unint64_t sub_1CF5208A0()
{
  result = qword_1EC4C1458;
  if (!qword_1EC4C1458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1458);
  }

  return result;
}

unint64_t sub_1CF5208F8()
{
  result = qword_1EC4C1460;
  if (!qword_1EC4C1460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1460);
  }

  return result;
}

unint64_t sub_1CF520950()
{
  result = qword_1EC4C1468;
  if (!qword_1EC4C1468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1468);
  }

  return result;
}

unint64_t sub_1CF5209A8()
{
  result = qword_1EC4C1470;
  if (!qword_1EC4C1470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1470);
  }

  return result;
}

unint64_t sub_1CF5209FC()
{
  result = qword_1EC4C1478;
  if (!qword_1EC4C1478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1478);
  }

  return result;
}

unint64_t sub_1CF520A54()
{
  result = qword_1EC4C1480;
  if (!qword_1EC4C1480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1480);
  }

  return result;
}

unint64_t sub_1CF520ADC()
{
  result = qword_1EC4C1498;
  if (!qword_1EC4C1498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1498);
  }

  return result;
}

unint64_t sub_1CF520B34()
{
  result = qword_1EC4C14A0;
  if (!qword_1EC4C14A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C14A0);
  }

  return result;
}

unint64_t sub_1CF520B8C()
{
  result = qword_1EC4C14A8;
  if (!qword_1EC4C14A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C14A8);
  }

  return result;
}

unint64_t sub_1CF520BE4()
{
  result = qword_1EC4C14B0;
  if (!qword_1EC4C14B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C14B0);
  }

  return result;
}

unint64_t sub_1CF520C38()
{
  result = qword_1EC4C14B8;
  if (!qword_1EC4C14B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C14B8);
  }

  return result;
}

unint64_t sub_1CF520C90()
{
  result = qword_1EC4C14C0;
  if (!qword_1EC4C14C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C14C0);
  }

  return result;
}

unint64_t sub_1CF520D18()
{
  result = qword_1EC4C14D8;
  if (!qword_1EC4C14D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C14D8);
  }

  return result;
}

unint64_t sub_1CF520D70()
{
  result = qword_1EC4C14E0;
  if (!qword_1EC4C14E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C14E0);
  }

  return result;
}

unint64_t sub_1CF520DC8()
{
  result = qword_1EC4C14E8;
  if (!qword_1EC4C14E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C14E8);
  }

  return result;
}

unint64_t sub_1CF520E20()
{
  result = qword_1EC4C14F0;
  if (!qword_1EC4C14F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C14F0);
  }

  return result;
}

unint64_t sub_1CF520E74()
{
  result = qword_1EDEA7E00;
  if (!qword_1EDEA7E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA7E00);
  }

  return result;
}

unint64_t sub_1CF520ECC()
{
  result = qword_1EC4C14F8;
  if (!qword_1EC4C14F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C14F8);
  }

  return result;
}

uint64_t sub_1CF520F50(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CF520FA8()
{
  result = qword_1EC4C1510;
  if (!qword_1EC4C1510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1510);
  }

  return result;
}

unint64_t sub_1CF521000()
{
  result = qword_1EC4C1518;
  if (!qword_1EC4C1518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1518);
  }

  return result;
}

unint64_t sub_1CF52105C()
{
  result = qword_1EC4C1520;
  if (!qword_1EC4C1520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1520);
  }

  return result;
}

unint64_t sub_1CF5210B0()
{
  result = qword_1EC4C1528;
  if (!qword_1EC4C1528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1528);
  }

  return result;
}

unint64_t sub_1CF521130()
{
  result = qword_1EC4C1530;
  if (!qword_1EC4C1530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1530);
  }

  return result;
}

unint64_t sub_1CF521184()
{
  result = qword_1EC4C1538;
  if (!qword_1EC4C1538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1538);
  }

  return result;
}

unint64_t sub_1CF521204()
{
  result = qword_1EC4C1540;
  if (!qword_1EC4C1540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1540);
  }

  return result;
}

unint64_t sub_1CF521258()
{
  result = qword_1EC4C1548;
  if (!qword_1EC4C1548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1548);
  }

  return result;
}

unint64_t sub_1CF5212D8()
{
  result = qword_1EC4C1550;
  if (!qword_1EC4C1550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1550);
  }

  return result;
}

unint64_t sub_1CF52132C()
{
  result = qword_1EC4C1558;
  if (!qword_1EC4C1558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1558);
  }

  return result;
}

unint64_t sub_1CF5213AC()
{
  result = qword_1EC4C1560;
  if (!qword_1EC4C1560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1560);
  }

  return result;
}

unint64_t sub_1CF521400()
{
  result = qword_1EC4C1568;
  if (!qword_1EC4C1568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1568);
  }

  return result;
}

uint64_t sub_1CF521480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1CF5214BC()
{
  result = qword_1EC4C1570;
  if (!qword_1EC4C1570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1570);
  }

  return result;
}

unint64_t sub_1CF521510()
{
  result = qword_1EC4C1578;
  if (!qword_1EC4C1578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1578);
  }

  return result;
}

void sub_1CF5215C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1CF9E6118();
  v28 = *(v7 - 8);
  v29 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = !*(a1 + 112) || *(a1 + 112) == 4 && *(a1 + 96) == 0;
  sub_1CF66E648();
  if (!v5)
  {

    if (v10)
    {
      v11 = fpfs_current_or_default_log();
      v12 = sub_1CF9E6128();
      v13 = (*(*a1 + 424))(v12);

      v14 = sub_1CF9E6108();
      if (os_log_type_enabled(v14, v13))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v30 = v16;
        *v15 = 136446210;

        v17 = sub_1CF044BA4();
        v19 = v18;

        v20 = sub_1CEFD0DF0(v17, v19, &v30);
        v19, v21, v22, v23, v24, v25, v26, v27;
        *(v15 + 4) = v20;
        _os_log_impl(&dword_1CEFC7000, v14, v13, " ✍️  persist job: %{public}s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v16);
        MEMORY[0x1D386CDC0](v16, -1, -1);
        MEMORY[0x1D386CDC0](v15, -1, -1);
      }

      else
      {
      }

      (*(v28 + 8))(v9, v29);
    }
  }
}

void sub_1CF521850(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v6;
  v88 = type metadata accessor for SyncState(0);
  MEMORY[0x1EEE9AC00](v88);
  v89 = (&v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v101 = sub_1CF9E6118();
  v14 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v99 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v16 = *(a1[2] + 16);
  if (v16)
  {
    v91 = a2;
    v92 = v6;
    v93 = a1;
    v94 = v5;
    v95 = a3;
    v96 = a4;
    v97 = a5;
    v17 = (v14 + 8);

    anon_8 = v90[1]._anon_8;
    *&v19 = 136315138;
    v98 = v19;
    v20 = v99;
    do
    {
      v40 = *(anon_8 - 1);
      v41 = *anon_8;

      v42 = fpfs_current_or_default_log();
      sub_1CF9E6128();

      v43 = sub_1CF9E6108();
      v44 = sub_1CF9E7288();
      v41, v45, v46, v47, v48, v49, v50, v51;
      if (os_log_type_enabled(v43, v44))
      {
        v21 = swift_slowAlloc();
        v22 = v17;
        v23 = swift_slowAlloc();
        v100[0] = v23;
        *v21 = v98;
        v24 = sub_1CEFD0DF0(v40, v41, v100);
        v41, v25, v26, v27, v28, v29, v30, v31;
        *(v21 + 4) = v24;
        _os_log_impl(&dword_1CEFC7000, v43, v44, "%s", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v23);
        v32 = v23;
        v17 = v22;
        v20 = v99;
        MEMORY[0x1D386CDC0](v32, -1, -1);
        MEMORY[0x1D386CDC0](v21, -1, -1);
      }

      else
      {

        v41, v52, v53, v54, v55, v56, v57, v58;
      }

      (*v17)(v20, v101);
      anon_8 += 2;
      --v16;
    }

    while (v16);
    v90, v33, v34, v35, v36, v37, v38, v39;
    a4 = v96;
    a5 = v97;
    v5 = v94;
    a3 = v95;
    v7 = v92;
    a1 = v93;
    a2 = v91;
  }

  swift_beginAccess();
  v59 = a1[5];

  sub_1CF52737C(v60, a2, a3, a4, a5, type metadata accessor for FSOrFPJob, sub_1CF527640);
  v59, v61, v62, v63, v64, v65, v66, v67;
  if (!v7)
  {
    swift_beginAccess();
    v68 = a1[3];
    swift_beginAccess();
    v69 = a1[4];

    sub_1CF92E0C4(v68, v69, a3, a4, a5);
    v68, v70, v71, v72, v73, v74, v75, v76;
    v69, v77, v78, v79, v80, v81, v82, v83;
    v84 = v5[7];
    ObjectType = swift_getObjectType();
    v86 = (*(*v5 + 272))(ObjectType);
    v87 = v89;
    *v89 = v86;
    swift_storeEnumTagMultiPayload();
    (*(v84 + 8))(v87, a3, a4, a5, ObjectType, v84);
    sub_1CF03BA78(v87, type metadata accessor for SyncState);
  }
}

void sub_1CF521CC0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v313 = a6;
  v314 = a4;
  v315 = a5;
  v286 = a3;
  v299 = a2;
  v316 = a1;
  v9 = *(*v6 + 88);
  v10 = *(*v6 + 96);
  v11 = *(*v6 + 104);
  v317 = *(*v6 + 80);
  v8 = v317;
  v318 = v9;
  v319 = v10;
  v320 = v11;
  v285 = type metadata accessor for ReconciliationMutation(0, &v317);
  v284 = *(v285 - 8);
  MEMORY[0x1EEE9AC00](v285);
  v283 = &v282 - v12;
  v317 = v8;
  v318 = v9;
  v319 = v10;
  v320 = v11;
  v13 = type metadata accessor for ItemReconciliation(255, &v317);
  v288 = sub_1CF9E75D8();
  v287 = *(v288 - 8);
  MEMORY[0x1EEE9AC00](v288);
  v293 = (&v282 - v14);
  v292 = v13;
  v291 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v289 = &v282 - v16;
  v294 = type metadata accessor for FileTreeError(0, v8, v10, v17);
  v290 = *(v294 - 8);
  MEMORY[0x1EEE9AC00](v294);
  v295 = &v282 - v18;
  v317 = v8;
  v318 = v9;
  v319 = v10;
  v320 = v11;
  v298 = type metadata accessor for PersistenceTrigger(0, &v317);
  v297 = *(v298 - 8);
  MEMORY[0x1EEE9AC00](v298);
  v296 = &v282 - v19;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v305 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v301 = (&v282 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22);
  v303 = &v282 - v23;
  v24 = swift_getAssociatedTypeWitness();
  v304 = *(v24 - 1);
  MEMORY[0x1EEE9AC00](v24);
  v302 = &v282 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v300 = &v282 - v27;
  v309 = v10;
  v310 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v307 = v11;
  v29 = swift_getAssociatedConformanceWitness();
  v308 = v24;
  v317 = v24;
  v318 = AssociatedTypeWitness;
  v306 = AssociatedTypeWitness;
  v319 = AssociatedConformanceWitness;
  v320 = v29;
  v30 = type metadata accessor for ReconciliationID(255, &v317);
  v31 = sub_1CF9E75D8();
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v282 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v282 - v36;
  v312 = v30;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v282 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v282 - v43;
  v49 = MEMORY[0x1EEE9AC00](v45);
  v50 = *(v316 + 136);
  if (v50)
  {
    v302 = &v282 - v46;
    v311 = v47;
    v54 = v321;
    (*(*v316 + 512))(v7, v314, v315, v313, v49);
    if (v54)
    {
      return;
    }

    v301 = v7;
    v56 = v311;
    v55 = v312;
    if ((*(v311 + 48))(v37, 1, v312) == 1)
    {
      (*(v32 + 8))(v37, v31);
      return;
    }

    v321 = 0;
    v57 = v302;
    (*(v56 + 32))(v302, v37, v55);
    v58 = v56 + 16;
    v293 = *(v56 + 16);
    v293(v44, v57, v55);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v305 + 32))(v303, v44, v306);
      v59 = v301[3];
      v61 = v309;
      v60 = v310;
      v317 = v9;
      v318 = v310;
      v62 = v307;
      v319 = v307;
      v320 = v309;
      v308 = type metadata accessor for ItemJob(255, &v317);
      MetatypeMetadata = swift_getMetatypeMetadata();
      sub_1CF656CD8(MetatypeMetadata, MetatypeMetadata);
      swift_allocObject();
      v64 = sub_1CF9E6D68();
      v317 = v9;
      v318 = v60;
      v319 = v62;
      v320 = v61;
      v65 = v59;
      v66 = v303;
      *v67 = type metadata accessor for Materialization.MaterializeItem(0, &v317);
      v68 = sub_1CF045898(v64, MetatypeMetadata);
      v69 = v313;
      v70 = v321;
      v71 = (*(*v65 + 304))(v66, v68, v314, v315, v313);
      if (v70)
      {
        v68, v72, v73, v74, v75, v76, v77, v78;
        (*(v305 + 8))(v66, v306);
LABEL_21:
        (*(v311 + 8))(v302, v312);
        return;
      }

      v321 = 0;
      v137 = v71;
      v68, v72, v73, v74, v75, v76, v77, v78;
      v317 = v137;
      sub_1CF9E6E58();
      swift_getWitnessTable();
      v138 = sub_1CF9E7128();
      (*(v305 + 8))(v66, v306);
      v137, v139, v140, v141, v142, v143, v144, v145;
      v146 = v312;
      if (v138)
      {
        goto LABEL_21;
      }

      v305 = v58;
    }

    else
    {
      v305 = v56 + 16;
      v100 = v304;
      v101 = v300;
      (*(v304 + 32))(v300, v44, v308);
      v306 = v301[3];
      v103 = v309;
      v102 = v310;
      v317 = v310;
      v318 = v9;
      v104 = v307;
      v319 = v309;
      v320 = v307;
      v303 = type metadata accessor for ItemJob(255, &v317);
      v105 = swift_getMetatypeMetadata();
      sub_1CF656CD8(v105, v105);
      swift_allocObject();
      v106 = sub_1CF9E6D68();
      v317 = v102;
      v318 = v9;
      v319 = v103;
      v320 = v104;
      v107 = v306;
      *v108 = type metadata accessor for Materialization.MaterializeItem(0, &v317);
      v109 = sub_1CF045898(v106, v105);
      v69 = v313;
      v110 = v321;
      v111 = (*(*v107 + 312))(v101, v109, v314, v315, v313);
      if (v110)
      {
        v109, v112, v113, v114, v115, v116, v117, v118;
        (*(v100 + 8))(v101, v308);
        goto LABEL_21;
      }

      v321 = 0;
      v147 = v111;
      v109, v112, v113, v114, v115, v116, v117, v118;
      v317 = v147;
      sub_1CF9E6E58();
      swift_getWitnessTable();
      v148 = sub_1CF9E7128();
      (*(v100 + 8))(v101, v308);
      v147, v149, v150, v151, v152, v153, v154, v155;
      if (v148)
      {
        goto LABEL_21;
      }

      v146 = v312;
    }

    v178 = v299;
    v179 = sub_1CF9E57E8();
    v180 = [v179 domain];
    v181 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v183 = v182;

    v185 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v191 = v184;
    if (v181 == v185 && v183 == v184)
    {
      v183, v184, v185, v186, v187, v188, v189, v190;
      v191, v192, v193, v194, v195, v196, v197, v198;
    }

    else
    {
      v199 = sub_1CF9E8048();
      v183, v200, v201, v202, v203, v204, v205, v206;
      v191, v207, v208, v209, v210, v211, v212, v213;
      if ((v199 & 1) == 0)
      {
LABEL_35:
        _s3__C4CodeOMa_1(0);
        v317 = -1000;
        sub_1CF527CC0();
        if ((sub_1CF9E5658() & 1) == 0)
        {
          v317 = -2009;
          if ((sub_1CF9E5658() & 1) == 0)
          {
            v317 = v178;
            v215 = v178;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
            v216 = v295;
            v217 = v294;
            if (!swift_dynamicCast())
            {
LABEL_42:

              v219 = v321;
              v220 = sub_1CF66E048(v316, 0, v314, v315, v69);
              if (v219 || (v220 & 1) == 0)
              {
                (*(v311 + 8))(v302, v146);
              }

              else
              {
                v245 = *(swift_getTupleTypeMetadata2() + 48);
                v246 = v296;
                v293(v296, v302, v146);
                *&v246[v245] = v178;
                v247 = v298;
                swift_storeEnumTagMultiPayload();
                v248 = *(*v301 + 312);
                v249 = v178;
                v248(v246);

                (*(v297 + 8))(v246, v247);
                (*(v311 + 8))(v302, v146);
              }

              return;
            }

            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            if (EnumCaseMultiPayload != 21)
            {
              if (EnumCaseMultiPayload == 7)
              {
                v250 = swift_getAssociatedTypeWitness();
                TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
                v252 = *(*(v250 - 8) + 8);
                v252(&v216[*(TupleTypeMetadata2 + 48)], v250);
                v252(v216, v250);
              }

              else if (EnumCaseMultiPayload != 5)
              {
                (*(v290 + 8))(v216, v217);
                goto LABEL_42;
              }
            }
          }
        }

LABEL_58:
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
        v253 = *(swift_getTupleTypeMetadata2() + 48);
        v254 = v296;
        v255 = v302;
        v293(v296, v302, v146);
        *&v254[v253] = v178;
        v256 = v298;
        swift_storeEnumTagMultiPayload();
        v257 = *(*v301 + 312);
        v258 = v178;
        v257(v254);

        (*(v297 + 8))(v254, v256);
        (*(v311 + 8))(v255, v146);
        return;
      }
    }

    v214 = [v179 code];
    if (v214 == *MEMORY[0x1E69671E0])
    {
      goto LABEL_58;
    }

    goto LABEL_35;
  }

  v51 = v321;
  if ((v50 & 2) == 0)
  {
    return;
  }

  v303 = v48;
  v311 = v47;
  (*(*v316 + 520))(v7, v314, v315, v313, v49);
  if (v51)
  {
    return;
  }

  v53 = v311;
  v52 = v312;
  if ((*(v311 + 48))(v34, 1, v312) == 1)
  {
    (*(v32 + 8))(v34, v31);
    return;
  }

  v321 = 0;
  v79 = v303;
  (*(v53 + 32))(v303, v34, v52);
  v80 = *(v53 + 16);
  v300 = (v53 + 16);
  v295 = v80;
  (v80)(v40, v79, v52);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v305 + 32))(v301, v40, v306);
    v81 = v7[3];
    v82 = v309;
    v83 = v310;
    v317 = v9;
    v318 = v310;
    v84 = v307;
    v319 = v307;
    v320 = v309;
    v308 = type metadata accessor for ItemJob(255, &v317);
    v85 = swift_getMetatypeMetadata();
    sub_1CF656CD8(v85, v85);
    swift_allocObject();
    v86 = sub_1CF9E6D68();
    v317 = v9;
    v318 = v83;
    v319 = v84;
    v320 = v82;
    v87 = v301;
    *v88 = type metadata accessor for Materialization.EvictItem(0, &v317);
    v89 = sub_1CF045898(v86, v85);
    v90 = v313;
    v91 = v321;
    v92 = (*(*v81 + 304))(v87, v89, v314, v315, v313);
    if (v91)
    {
      v89, v93, v94, v95, v96, v97, v98, v99;
      (*(v305 + 8))(v87, v306);
LABEL_19:
      (*(v311 + 8))(v303, v312);
      return;
    }

    v156 = v92;
    v89, v93, v94, v95, v96, v97, v98, v99;
    v317 = v156;
    sub_1CF9E6E58();
    swift_getWitnessTable();
    v157 = sub_1CF9E7128();
    (*(v305 + 8))(v87, v306);
    v156, v158, v159, v160, v161, v162, v163, v164;
    if (v157)
    {
      goto LABEL_19;
    }
  }

  else
  {
    (*(v304 + 32))(v302, v40, v308);
    v119 = v7[3];
    v121 = v309;
    v120 = v310;
    v317 = v310;
    v318 = v9;
    v122 = v307;
    v319 = v309;
    v320 = v307;
    v306 = type metadata accessor for ItemJob(255, &v317);
    v123 = swift_getMetatypeMetadata();
    sub_1CF656CD8(v123, v123);
    swift_allocObject();
    v124 = sub_1CF9E6D68();
    v317 = v120;
    v318 = v9;
    v125 = v302;
    v319 = v121;
    v320 = v122;
    *v126 = type metadata accessor for Materialization.EvictItem(0, &v317);
    v127 = sub_1CF045898(v124, v123);
    v128 = v321;
    v129 = (*(*v119 + 312))(v125, v127, v314, v315, v313);
    if (v128)
    {
      v127, v130, v131, v132, v133, v134, v135, v136;
      (*(v304 + 8))(v125, v308);
      goto LABEL_19;
    }

    v165 = v129;
    v127, v130, v131, v132, v133, v134, v135, v136;
    v317 = v165;
    sub_1CF9E6E58();
    swift_getWitnessTable();
    v166 = sub_1CF9E7128();
    v165, v167, v168, v169, v170, v171, v172, v173;
    if (v166)
    {
      v174 = v315;
      v175 = v313;
      v176 = v314;
      v177 = sub_1CF66E048(v316, 0, v314, v315, v313);
      v232 = v312;
      v233 = v302;
      if (v177)
      {
        v234 = v293;
        sub_1CF68DDB0(v302, v176, v174, v175, v293);
        v259 = v291;
        v260 = v292;
        v261 = (*(v291 + 48))(v234, 1, v292);
        v262 = v311;
        if (v261 == 1)
        {
          (*(v304 + 8))(v233, v308);
          (*(v262 + 8))(v303, v312);
          (*(v287 + 8))(v234, v288);
        }

        else
        {
          v321 = 0;
          v263 = v289;
          (*(v259 + 32))(v289, v234, v260);
          v265 = v263[*(type metadata accessor for ItemReconciliationHalf(0, v310, v121, v264) + 44)];
          if (v265 == 1 || v265 == 3)
          {
            v266 = v310;
            v317 = v310;
            v318 = v9;
            v319 = v121;
            v320 = v307;
            type metadata accessor for JobResult(0, &v317);
            type metadata accessor for ReconciliationSideMutation(255, v266, v121, v267);
            v268 = v312;
            v269 = swift_getTupleTypeMetadata2();
            v270 = v283;
            v271 = &v283[*(v269 + 48)];
            v272 = v295;
            (v295)(v283, v303, v268);
            *v271 = v265;
            v271[1] = 5;
            *(v271 + 8) = *(v316 + 120);
            swift_storeEnumTagMultiPayload();
            v273 = v285;
            swift_storeEnumTagMultiPayload();
            sub_1CF06EB44(v286, v270);
            (*(v284 + 8))(v270, v273);
            __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
            TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
            v275 = *(TupleTypeMetadata3 + 48);
            v276 = *(TupleTypeMetadata3 + 64);
            v277 = v296;
            v272(v296, v303, v268);
            v278 = v299;
            *&v277[v275] = v299;
            v277[v276] = v265 == 3;
            v279 = v298;
            swift_storeEnumTagMultiPayload();
            v280 = *(*v7 + 312);
            v281 = v278;
            v280(v277);
            (*(v297 + 8))(v277, v279);
            (*(v291 + 8))(v289, v292);
            (*(v304 + 8))(v302, v308);
            (*(v311 + 8))(v303, v268);
          }

          else
          {
            (*(v291 + 8))(v289, v292);
            (*(v304 + 8))(v302, v308);
            (*(v311 + 8))(v303, v312);
          }
        }
      }

      else
      {
        (*(v304 + 8))(v302, v308);
        (*(v311 + 8))(v303, v232);
      }

      return;
    }

    (*(v304 + 8))(v302, v308);
    v90 = v313;
  }

  _s3__C4CodeOMa_1(0);
  v317 = -1000;
  sub_1CF527CC0();
  v221 = v299;
  if (sub_1CF9E5658())
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    v222 = v312;
    v223 = swift_getTupleTypeMetadata3();
    v224 = *(v223 + 48);
    v225 = *(v223 + 64);
    v226 = v296;
    v227 = v303;
    (v295)(v296, v303, v222);
    *&v226[v224] = v221;
    v226[v225] = 0;
    v228 = v298;
    swift_storeEnumTagMultiPayload();
    v229 = *(*v7 + 312);
    v230 = v221;
    v229(v226);
    (*(v297 + 8))(v226, v228);
    (*(v311 + 8))(v227, v222);
  }

  else
  {
    v231 = sub_1CF66E048(v316, 0, v314, v315, v90);
    v235 = v312;
    if ((v231 & 1) == 0)
    {
      goto LABEL_19;
    }

    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    v236 = swift_getTupleTypeMetadata3();
    v237 = *(v236 + 48);
    v238 = *(v236 + 64);
    v239 = v296;
    v240 = v303;
    (v295)(v296, v303, v235);
    v241 = v299;
    *&v239[v237] = v299;
    v239[v238] = 0;
    v242 = v298;
    swift_storeEnumTagMultiPayload();
    v243 = *(*v7 + 312);
    v244 = v241;
    v243(v239);
    (*(v297 + 8))(v239, v242);
    (*(v311 + 8))(v240, v235);
  }
}

double sub_1CF523868(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 304))(Strong);
  }

  return result;
}

void sub_1CF5238E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v83 = a6;
  v84 = a7;
  v82 = a5;
  v92 = a3;
  v93 = a4;
  v90 = a1;
  v9 = *(*v7 + 96);
  v87 = *(*v7 + 80);
  v88 = v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1CF9E75D8();
  v86 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v80 - v12;
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v15);
  v81 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v89 = &v80 - v18;
  v91 = v7;
  v19 = v7[4];
  v20 = *(*v19[2] + 440);

  v22 = v20(v21);

  if (v22)
  {
    (*(*a2 + 320))(v23);
    v24 = (*(v14 + 48))(v13, 1, AssociatedTypeWitness);
    v85 = v22;
    if (v24 == 1)
    {
      v25 = (*(v86 + 8))(v13, v11);
      v88 = 0;
      v86 = 0;
      v87 = 0xE000000000000000;
    }

    else
    {
      v26 = v89;
      (*(v14 + 32))(v89, v13, AssociatedTypeWitness);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      if ((*(AssociatedConformanceWitness + 64))(AssociatedTypeWitness, AssociatedConformanceWitness) & 1) == 0 && (((*(AssociatedConformanceWitness + 72))(AssociatedTypeWitness, AssociatedConformanceWitness) & 1) != 0 || (v29 = v81, sub_1CF685B34(), v79 = ((*v19)[70])(v26, v29, v82, v83, v84), (*(v14 + 8))(v29, AssociatedTypeWitness), (v79)))
      {
        v87 = 0xE500000000000000;
        v28 = 0x6873617274;
      }

      else
      {
        v87 = 0xE400000000000000;
        v28 = 1953460082;
      }

      v86 = v28;
      v88 = 0;
      v25 = (*(v14 + 8))(v26, AssociatedTypeWitness);
    }

    v30 = a2;
    v31 = (*(*a2 + 304))(v25);
    if (v32)
    {
      v33 = 0;
    }

    else
    {
      v33 = v31;
    }

    v34 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
    sub_1CF5174A4(2);
    v36 = v35;

    if (v36)
    {
      v37 = [v36 longLongValue];
    }

    else
    {
      v37 = 0;
    }

    v38 = (*(*a2 + 312))();
    if ((v38 & 0x100000000) != 0)
    {
      v39 = 0;
    }

    else
    {
      v39 = v38;
    }

    v40 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInt_];
    sub_1CF5174A4(2);
    v42 = v41;

    if (v42)
    {
      v43 = [v42 longLongValue];
    }

    else
    {
      v43 = 0;
    }

    v44 = (*(*a2 + 288))(v94);
    v45 = LOBYTE(v94[0]);
    if (LOBYTE(v94[0]) == 4)
    {
      v46 = 0xE300000000000000;
      v47 = 4271950;
    }

    else
    {
      v78 = (*(*a2 + 296))(v44);
      if (v45 > 1)
      {
        if (v45 == 2)
        {
          v46 = 0xE700000000000000;
          v47 = 0x6B6E696C6D7973;
        }

        else
        {
          v46 = 0xE500000000000000;
          v47 = 0x7361696C61;
        }
      }

      else if (v45)
      {
        v46 = 0xE300000000000000;
        v47 = 7498084;
      }

      else if (v78 == 2 || (v78 & 1) == 0)
      {
        v46 = 0xE300000000000000;
        v47 = 6516580;
      }

      else
      {
        v46 = 0xE300000000000000;
        v47 = 6777712;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CFA04600;
    strcpy((inited + 32), "operationType");
    *(inited + 46) = -4864;
    v49 = (*(*v30 + 176))();
    v50 = MEMORY[0x1E69E6158];
    *(inited + 48) = v49;
    *(inited + 56) = v51;
    *(inited + 72) = v50;
    *(inited + 80) = 0x657079546D657469;
    *(inited + 88) = 0xE800000000000000;
    *(inited + 96) = v47;
    *(inited + 104) = v46;
    v52 = MEMORY[0x1E69E7360];
    *(inited + 120) = v50;
    *(inited + 128) = 0x657A69536D657469;
    *(inited + 136) = 0xE800000000000000;
    *(inited + 144) = v37;
    *(inited + 168) = v52;
    strcpy((inited + 176), "childItemCount");
    *(inited + 191) = -18;
    *(inited + 192) = v43;
    *(inited + 216) = v52;
    strcpy((inited + 224), "commonFolder");
    *(inited + 237) = 0;
    *(inited + 238) = -5120;
    v53 = v87;
    *(inited + 240) = v86;
    *(inited + 248) = v53;
    *(inited + 264) = v50;
    strcpy((inited + 272), "connectionType");
    *(inited + 287) = -18;
    if (qword_1EDEA6EF0 != -1)
    {
      swift_once();
    }

    sub_1CF9E7398();
    v54 = v94[1];
    *(inited + 288) = v94[0];
    *(inited + 296) = v54;
    *(inited + 312) = v50;
    *(inited + 320) = 0xD000000000000011;
    *(inited + 328) = 0x80000001CFA51ED0;
    if (__OFSUB__(v93, v92))
    {
      __break(1u);
    }

    else
    {
      v55 = MEMORY[0x1E69E6530];
      *(inited + 336) = v93 - v92;
      *(inited + 360) = v55;
      *(inited + 368) = 0x6E6F73616572;
      *(inited + 376) = 0xE600000000000000;
      v56 = v30[17];
      *(inited + 408) = MEMORY[0x1E69E6810];
      *(inited + 384) = v56;
      v57 = sub_1CF4E04E8(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE300, &unk_1CF9FC5D0);
      swift_arrayDestroy();
      sub_1CF7BA9CC(v57);
      v59 = v58;
      v57, v60, v61, v62, v63, v64, v65, v66;
      v67 = sub_1CF9E6618();
      v59, v68, v69, v70, v71, v72, v73, v74;
      v75 = v90;
      v76 = sub_1CF9E57E8();
      v77 = v85;
      [v85 postReportWithCategory:1 type:1 payload:v67 error:v76];

      (*(*v91 + 320))(v30, v75);
    }
  }
}

void sub_1CF524248(_TtC18FileProviderDaemon8FSTester *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v279 = a2;
  v280 = a3;
  v9 = *v4;
  v268 = sub_1CF9E5CF8();
  v271 = *(v268 - 8);
  MEMORY[0x1EEE9AC00](v268);
  v267 = &v253 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v270 = sub_1CF9E6068();
  v266 = *(v270 - 8);
  MEMORY[0x1EEE9AC00](v270);
  v265 = &v253 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v263 = &v253 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v269 = (&v253 - v15);
  v264 = type metadata accessor for Signpost(0);
  v260 = *(v264 - 1);
  v16 = *(v260 + 64);
  MEMORY[0x1EEE9AC00](v264);
  v261 = &v253 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v272 = &v253 - v18;
  v19 = sub_1CF9E6118();
  v275 = *(v19 - 1);
  v276 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v253 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v253 - v23;
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v253 - v27;
  v278 = v9;
  if ((*(v9 + 240))(v26))
  {
    return;
  }

  v277 = a4;
  if (a1[3].tree[0] != 1)
  {
LABEL_88:
    sub_1CF9E7B68();
    __break(1u);
    return;
  }

  v29 = v5;
  isa = a1[3].super.isa;
  v259 = *a1[3]._anon_8;
  v31 = *(*v6 + 224);
  v262 = isa;

  v274 = v31(v32);
  v33 = (*(*v6 + 216))();
  v34 = *(a1->super.isa + 61);
  v258 = v33;
  v35 = v34(v33, v6, v279, v280, v277);
  v273 = v29;
  if (v29)
  {
LABEL_4:
    v37 = v262;

    sub_1CF03D7A8(v37, v259, 1u);
    return;
  }

  v38 = v35;
  if (v36)
  {
    v39 = fpfs_current_or_default_log();
    sub_1CF9E6128();

    sub_1CF5277FC(v38, 1);
    v40 = sub_1CF9E6108();
    v41 = sub_1CF9E7298();
    sub_1CF5276F0(v38, 1, v42, v43, v44, v45, v46, v47);
    if (os_log_type_enabled(v40, v41))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v280 = swift_slowAlloc();
      v282 = v280;
      *v54 = 136446466;
      v56 = sub_1CF044BA4();
      v58 = v57;

      v59 = sub_1CEFD0DF0(v56, v58, &v282);
      v58, v60, v61, v62, v63, v64, v65, v66;
      *(v54 + 4) = v59;
      *(v54 + 12) = 2112;
      v281 = v38;
      v68 = type metadata accessor for JobLock.BlockedRuleError(0, v278[10], v278[12], v67);
      WitnessTable = swift_getWitnessTable();
      v70 = Error.prettyDescription.getter(v68, WitnessTable);
      sub_1CF5276F0(v38, 1, v71, v72, v73, v74, v75, v76);
      *(v54 + 14) = v70;
      *v55 = v70;
      _os_log_impl(&dword_1CEFC7000, v40, v41, "🔏  job locked out of execution %{public}s by destination rules %@", v54, 0x16u);
      sub_1CEFCCC44(v55, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v55, -1, -1);
      v77 = v280;
      __swift_destroy_boxed_opaque_existential_1(v280);
      MEMORY[0x1D386CDC0](v77, -1, -1);
      MEMORY[0x1D386CDC0](v54, -1, -1);

      sub_1CF03D7A8(v262, v259, 1u);
    }

    else
    {
      sub_1CF5276F0(v38, 1, v48, v49, v50, v51, v52, v53);
      sub_1CF03D7A8(v262, v259, 1u);
    }

    (*(v275 + 8))(v28, v276);
    return;
  }

  *a1->tester = v35;

  v79 = v277;
  v80 = v280;
  if (v38)
  {
    v81 = swift_allocObject();
    swift_weakInit();
    v82 = swift_allocObject();
    v83 = v278;
    v82[2] = v278[10];
    v82[3] = v83[11];
    v82[4] = v80;
    v82[5] = v83[12];
    v82[6] = v83[13];
    v82[7] = v79;
    v82[8] = v81;
    v257 = a1;
    v84 = v80;
    v85 = v79;
    v87 = *v38[2].tree;
    v86 = *v38[2].tester;
    *v38[2].tree = sub_1CF527D44;
    *v38[2].tester = v82;

    v88 = v86;
    v79 = v85;
    v80 = v84;
    a1 = v257;
    sub_1CF045404(v87, v88);

    v78.n128_f64[0] = sub_1CF5276F0(v38, 0, v89, v90, v91, v92, v93, v94);
  }

  v95 = v273;
  v96 = (*(a1->super.isa + 62))(v274, v6, v279, v80, v79, v78);
  if (v95)
  {
    goto LABEL_4;
  }

  v98 = v96;
  if ((v97 & 1) == 0)
  {
    a1[1].super.isa = v96;

    if (v98)
    {
      v133 = swift_allocObject();
      swift_weakInit();
      v134 = swift_allocObject();
      v135 = v278;
      v134[2] = v278[10];
      v136 = v280;
      v134[3] = v135[11];
      v134[4] = v136;
      v134[5] = v135[12];
      v137 = v277;
      v134[6] = v135[13];
      v134[7] = v137;
      v134[8] = v133;
      v138 = *v98[2].tree;
      v139 = *v98[2].tester;
      *v98[2].tree = sub_1CF5276C4;
      *v98[2].tester = v134;

      sub_1CF045404(v138, v139);

      sub_1CF5276F0(v98, 0, v140, v141, v142, v143, v144, v145);
    }

    v256 = sub_1CF044BA4();
    v147 = v146;
    v148 = [objc_allocWithZone(FPLoggerScope) init];
    v149 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v150 = v148;

    v151 = sub_1CF9E6108();
    v152 = sub_1CF9E7298();
    v257 = v147;
    v147, v153, v154, v155, v156, v157, v158, v159;

    v160 = os_log_type_enabled(v151, v152);
    v273 = 0;
    v253 = v150;
    if (v160)
    {
      v161 = swift_slowAlloc();
      v255 = v151;
      v162 = v161;
      v163 = swift_slowAlloc();
      v164 = swift_slowAlloc();
      v282 = v164;
      *v162 = 138412546;
      v165 = [v150 fork];
      *(v162 + 4) = v165;
      *v163 = v165;
      *(v162 + 12) = 2082;
      v166 = v257;
      *(v162 + 14) = sub_1CEFD0DF0(v256, v257, &v282);
      v167 = v152;
      v168 = v255;
      _os_log_impl(&dword_1CEFC7000, v255, v167, "%@ ▶️  executing %{public}s", v162, 0x16u);
      sub_1CEFCCC44(v163, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v163, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v164);
      MEMORY[0x1D386CDC0](v164, -1, -1);
      MEMORY[0x1D386CDC0](v162, -1, -1);

      (*(v275 + 8))(v21, v276);
      v169 = v256;
    }

    else
    {

      (*(v275 + 8))(v21, v276);
      v169 = v256;
      v166 = v257;
    }

    v177 = a1[3].super.isa;
    v176 = *a1[3]._anon_8;
    a1[3].super.isa = v262;
    *a1[3]._anon_8 = 0;
    v178 = a1[3].tree[0];
    a1[3].tree[0] = 2;

    sub_1CF03D7A8(v177, v176, v178);
    *a1->tree = sub_1CF054F60(a1, v169, v166);

    v180 = (*(*v6 + 232))(v179);
    dispatch_group_enter(v180);

    v181 = (*(*v6 + 368))(a1);
    if ((*(a1->super.isa + 54))(v181))
    {
      v182 = (*(*v6 + 192))();
      v183 = *(v182 + 24);
      v184 = __OFADD__(v183, 1);
      v185 = v183 + 1;
      if (v184)
      {
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      *(v182 + 24) = v185;
    }

    v186 = *a1->tree;
    if (v186)
    {
      v187 = *(v186 + 24);
    }

    else
    {
      v187 = 9;
    }

    if (sub_1CF056558())
    {
      if (v187 <= 4)
      {
        if (v187 > 1)
        {
          if (v187 != 2)
          {
            if (v187 != 3)
            {
              goto LABEL_60;
            }

            goto LABEL_48;
          }

          goto LABEL_40;
        }

        if (!v187)
        {
          goto LABEL_52;
        }

        goto LABEL_54;
      }

      if (v187 > 6)
      {
        if (v187 == 7)
        {
LABEL_62:
          v192 = "Scheduler: Async Job execution (FP generic jobs)";
          goto LABEL_63;
        }

        goto LABEL_46;
      }

      if (v187 == 5)
      {
LABEL_57:
        v191 = "Scheduler: Async Job execution (FP metadata only update)";
LABEL_61:
        v276 = v191;
        v189 = 56;
        goto LABEL_64;
      }
    }

    else
    {
      if (v187 <= 4)
      {
        if (v187 <= 1)
        {
          if (v187)
          {
LABEL_52:
            v190 = "Scheduler: Async Job execution (FS fetch content)";
LABEL_55:
            v276 = v190;
            v189 = 49;
            goto LABEL_64;
          }

LABEL_54:
          v190 = "Scheduler: Async Job execution (FP fetch content)";
          goto LABEL_55;
        }

        if (v187 == 2)
        {
LABEL_48:
          v188 = "Scheduler: Async Job execution (FP content update)";
          goto LABEL_49;
        }

        if (v187 == 3)
        {
LABEL_40:
          v188 = "Scheduler: Async Job execution (FS content update)";
LABEL_49:
          v276 = v188;
          v189 = 50;
          goto LABEL_64;
        }

        goto LABEL_57;
      }

      if (v187 <= 6)
      {
        if (v187 == 5)
        {
LABEL_60:
          v191 = "Scheduler: Async Job execution (FS metadata only update)";
          goto LABEL_61;
        }

        goto LABEL_62;
      }

      if (v187 != 7)
      {
LABEL_46:
        if (v187 == 8)
        {
          v276 = "Scheduler: Async Job execution (background downloads)";
          v189 = 53;
        }

        else
        {
          v276 = "Scheduler: Async Job execution (no limit)";
          v189 = 41;
        }

LABEL_64:
        v275 = v189;
        v193 = v266;
        if (qword_1EDEAE980 != -1)
        {
          swift_once();
        }

        v194 = qword_1EDEBBE40;
        v195 = v269;
        v196 = v270;
        (*(v193 + 56))(v269, 1, 1, v270);
        v282 = 0x2065747563657865;
        v283 = 0xE800000000000000;
        MEMORY[0x1D3868CC0](v169, v257);
        v266 = v282;
        v255 = v283;
        v197 = v263;
        sub_1CEFCCBDC(v195, v263, &unk_1EC4BED20, &unk_1CFA00700);
        v198 = *(v193 + 48);
        v199 = v198(v197, 1, v196);
        v254 = v194;
        if (v199 == 1)
        {
          v200 = v194;
          v201 = v265;
          sub_1CF9E6048();
          if (v198(v197, 1, v196) != 1)
          {
            sub_1CEFCCC44(v197, &unk_1EC4BED20, &unk_1CFA00700);
          }
        }

        else
        {
          v201 = v265;
          (*(v193 + 32))(v265, v197, v196);
        }

        v202 = *(v193 + 16);
        v203 = v193;
        v204 = v272;
        v202(v272, v201, v196);
        v205 = v264;
        v206 = v254;
        *(v204 + v264[5]) = v254;
        v207 = v204 + v205[6];
        v209 = v275;
        v208 = v276;
        *v207 = v276;
        *(v207 + 8) = v209;
        *(v207 + 16) = 2;
        v264 = v206;
        LODWORD(v263) = sub_1CF9E7468();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
        v210 = swift_allocObject();
        *(v210 + 16) = xmmword_1CF9FA450;
        *(v210 + 56) = MEMORY[0x1E69E6158];
        *(v210 + 64) = sub_1CEFD51C4();
        v211 = v255;
        *(v210 + 32) = v266;
        *(v210 + 40) = v211;
        sub_1CF9E6028(v263, &dword_1CEFC7000, v264, v208, v209, 2, v204, "%s", 2);
        v210, v212, v213, v214, v215, v216, v217, v218;
        (*(v203 + 8))(v201, v270);
        sub_1CEFCCC44(v269, &unk_1EC4BED20, &unk_1CFA00700);
        v220 = v278[10];
        v219 = v278[11];
        v222 = v278[12];
        v221 = v278[13];
        v282 = v220;
        v283 = v219;
        v275 = v221;
        v276 = v222;
        v284 = v222;
        v285 = v221;
        type metadata accessor for ConcreteJobResult(0, &v282);
        v223 = sub_1CF056580();
        v224 = v267;
        sub_1CF9E5CE8();
        sub_1CF9E5C98();
        v226 = v225;
        v227 = v271 + 8;
        v228 = *(v271 + 8);
        v229 = (v228)(v224, v268);
        v230 = v226 * 1000000000.0;
        if (COERCE__INT64(fabs(v226 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
        }

        else if (v230 > -9.22337204e18)
        {
          if (v230 < 9.22337204e18)
          {
            v278 = v223;
            v271 = v227;
            v269 = v228;
            v270 = v230;
            *a1[1]._anon_8 = v230;
            a1[1].tree[0] = 0;
            v231 = (*(*v6 + 184))(v229);
            if (v231)
            {
              (*(*v231 + 144))(v6, a1);
            }

            v232 = v261;
            sub_1CF0568A0(v272, v261);
            v233 = (*(v260 + 80) + 104) & ~*(v260 + 80);
            v234 = (v16 + v233 + 7) & 0xFFFFFFFFFFFFFFF8;
            v235 = (v234 + 15) & 0xFFFFFFFFFFFFFFF8;
            v236 = swift_allocObject();
            v236[2] = v220;
            v236[3] = v219;
            v237 = v275;
            v238 = v276;
            v236[4] = v280;
            v236[5] = v238;
            v239 = v277;
            v236[6] = v237;
            v236[7] = v239;
            v240 = v256;
            v236[8] = a1;
            v236[9] = v240;
            v241 = v253;
            v236[10] = v257;
            v236[11] = v241;
            v236[12] = v6;
            sub_1CF042EE8(v232, v236 + v233);
            *(v236 + v234) = v270;
            v242 = v278;
            *(v236 + v235) = v278;
            v243 = *(a1->super.isa + 63);

            v276 = v241;

            v244 = v262;
            v243(v6, v262, v242, v279, sub_1CF5276FC, v236, v280, v239);

            if (a1[3].tree[0] != 2)
            {
              (*(*v6 + 304))(v245);

              sub_1CF03D7A8(v244, v259, 1u);

              sub_1CF03BA78(v272, type metadata accessor for Signpost);
              return;
            }

            v246 = v244;
            v247 = v276;
            v248 = v267;
            sub_1CF9E5CE8();
            sub_1CF9E5C98();
            v250 = v249;
            (v269)(v248, v268);
            v251 = v250 * 1000000000.0;
            if (COERCE__INT64(fabs(v250 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              v252 = v272;
              if (v251 > -9.22337204e18)
              {
                if (v251 < 9.22337204e18)
                {
                  sub_1CF5215C0(a1, v251, v279, v280, v277);
                  sub_1CF03BA78(v252, type metadata accessor for Signpost);

                  sub_1CF03D7A8(v246, v259, 1u);

                  return;
                }

                goto LABEL_87;
              }

LABEL_86:
              __break(1u);
LABEL_87:
              __break(1u);
              goto LABEL_88;
            }

LABEL_85:
            __break(1u);
            goto LABEL_86;
          }

          goto LABEL_83;
        }

        __break(1u);
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }
    }

    v192 = "Scheduler: Async Job execution (FS generic jobs)";
LABEL_63:
    v276 = v192;
    v189 = 48;
    goto LABEL_64;
  }

  v99 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  sub_1CF5277FC(v98, 1);
  v100 = sub_1CF9E6108();
  v101 = sub_1CF9E7298();
  sub_1CF5276F0(v98, 1, v102, v103, v104, v105, v106, v107);
  if (os_log_type_enabled(v100, v101))
  {
    v108 = swift_slowAlloc();
    v273 = 0;
    v109 = v108;
    v110 = swift_slowAlloc();
    v280 = swift_slowAlloc();
    v282 = v280;
    *v109 = 136446466;
    v111 = sub_1CF044BA4();
    v113 = v112;

    v114 = sub_1CEFD0DF0(v111, v113, &v282);
    v113, v115, v116, v117, v118, v119, v120, v121;
    *(v109 + 4) = v114;
    *(v109 + 12) = 2112;
    v281 = v98;
    v123 = type metadata accessor for JobLock.BlockedRuleError(0, v278[11], v278[13], v122);
    v124 = swift_getWitnessTable();
    v125 = Error.prettyDescription.getter(v123, v124);
    sub_1CF5276F0(v98, 1, v126, v127, v128, v129, v130, v131);
    *(v109 + 14) = v125;
    *v110 = v125;
    _os_log_impl(&dword_1CEFC7000, v100, v101, "🔏  job locked out of execution %{public}s by source rules %@", v109, 0x16u);
    sub_1CEFCCC44(v110, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v110, -1, -1);
    v132 = v280;
    __swift_destroy_boxed_opaque_existential_1(v280);
    MEMORY[0x1D386CDC0](v132, -1, -1);
    MEMORY[0x1D386CDC0](v109, -1, -1);

    sub_1CF03D7A8(v262, v259, 1u);
  }

  else
  {
    sub_1CF03D7A8(v262, v259, 1u);

    sub_1CF5276F0(v98, 1, v170, v171, v172, v173, v174, v175);
  }

  (*(v275 + 8))(v24, v276);
  *a1->tester = 0;
}

void sub_1CF525924(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15)
{
  v343 = a7;
  v346 = a4;
  v341 = a3;
  v339 = a2;
  v19 = sub_1CF9E6118();
  v20 = *(v19 - 8);
  v348 = v19;
  v349 = v20;
  MEMORY[0x1EEE9AC00](v19);
  v345 = &v327 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v327 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v344 = (&v327 - v26);
  MEMORY[0x1EEE9AC00](v27);
  v342 = &v327 - v28;
  v333 = sub_1CF9E53C8();
  v331 = *(v333 - 8);
  MEMORY[0x1EEE9AC00](v333);
  v332 = &v327 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v338 = sub_1CF9E79E8();
  v334 = *(v338 - 8);
  MEMORY[0x1EEE9AC00](v338);
  v337 = &v327 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1CF9E5268();
  v336 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v327 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1CF9E5CF8();
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v327 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v347 = a6;
  if (*(a6 + 112) != 2)
  {
    v51 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v52 = a5;

    v53 = sub_1CF9E6108();
    v54 = sub_1CF9E72B8();
    a8, v55, v56, v57, v58, v59, v60, v61;

    v62 = a5;
    if (os_log_type_enabled(v53, v54))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v354 = v64;
      *v63 = 136446466;
      *(v63 + 4) = sub_1CEFD0DF0(v343, a8, &v354);
      *(v63 + 12) = 2080;
      if (v62)
      {
        swift_getErrorValue();
        v65 = Error.prettyDescription.getter(v358, v359);
        v66 = [v65 description];

        v67 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v69 = v68;
      }

      else
      {
        v69 = 0xE300000000000000;
        v67 = 7104878;
      }

      v166 = sub_1CEFD0DF0(v67, v69, &v354);
      v69, v167, v168, v169, v170, v171, v172, v173;
      *(v63 + 14) = v166;
      _os_log_impl(&dword_1CEFC7000, v53, v54, "%{public}s completion was called twice, second time with %s", v63, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v64, -1, -1);
      MEMORY[0x1D386CDC0](v63, -1, -1);
    }

    (*(v349 + 8))(v24, v348);
    if (!v62)
    {
LABEL_93:

      sub_1CF513248("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/sync-logic/Database+JobExecution.swift", 111, 2, 311, v343, a8);
    }

    v354 = v62;
    v174 = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    type metadata accessor for PQLSqliteError(0);
    if (swift_dynamicCast())
    {

      return;
    }

LABEL_92:

    goto LABEL_93;
  }

  v335 = a5;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v39 = v38;
  (*(v35 + 8))(v37, v34);
  v40 = v39 * 1000000000.0;
  if (COERCE__INT64(fabs(v39 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_84;
  }

  if (v40 <= -9.22337204e18)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  if (v40 >= 9.22337204e18)
  {
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v330 = a14;
  v328 = a12;
  v329 = a11;
  v340 = a9;
  v41 = v40;
  v42 = v347;
  (*(*a10 + 376))(v347);
  sub_1CEFCCBDC(a1, &v351, &unk_1EC4C1B30, &qword_1CFA05300);
  v343 = v41;
  if (v353)
  {
    sub_1CF054E7C(&v351, &v354);
    v43 = v335;
    v327 = a15;
    v344 = a13;
    if (v335)
    {
      v44 = v356;
      v45 = v357;
      v46 = __swift_project_boxed_opaque_existential_1(&v354, v356);
      v47 = v43;
      sub_1CF5238E8(v43, v42, v328, v343, v46, v44, *(v45 + 8));
      v351 = v43;
      v48 = v43;
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      v50 = swift_dynamicCast();
      v342 = v49;
      if (v50)
      {
        (v336)[1](v33, v31);
      }

      else
      {

        v351 = v43;
        v114 = v43;
        v115 = v337;
        v116 = v338;
        if (!swift_dynamicCast())
        {

          v351 = v43;
          v175 = v43;
          type metadata accessor for NSFileProviderError(0);
          v176 = swift_dynamicCast();
          v117 = v345;
          if (v176)
          {
          }

          else
          {

            v351 = v43;
            v257 = v43;
            v258 = v332;
            v259 = v333;
            if (!swift_dynamicCast())
            {

              (*(*a10 + 496))(v43, 0, "execute(_:with:)", 16, 2);
              v119 = 0;
              v339 = 0;
LABEL_25:
              v120 = *(v42 + 96);
              v121 = *(v42 + 104);
              *(v42 + 96) = v119;
              *(v42 + 104) = 0;
              v122 = *(v42 + 112);
              *(v42 + 112) = 3;
              v123 = v119;
              sub_1CF03D7A8(v120, v121, v122);
              *(v42 + 40) = 0;
              *(v42 + 48) = 1;
              v124 = sub_1CF044BA4();
              v126 = v125;
              v127 = fpfs_current_or_default_log();
              sub_1CF9E6128();
              v128 = v346;

              v129 = v340;
              v130 = sub_1CF9E6108();
              v131 = sub_1CF9E72A8();
              v128, v132, v133, v134, v135, v136, v137, v138;
              v126, v139, v140, v141, v142, v143, v144, v145;

              LODWORD(v338) = v131;
              if (!os_log_type_enabled(v130, v131))
              {

                v126, v158, v159, v160, v161, v162, v163, v164;
                (*(v349 + 8))(v117, v348);
                v165 = v343;
LABEL_47:
                v351 = v119;
                v209 = v119;
                v210 = swift_dynamicCast();
                v42 = v347;
                if (v210)
                {

                  __swift_destroy_boxed_opaque_existential_1(&v354);
                  v211 = v42;
                  v212 = v129;
LABEL_79:
                  v255 = a10;
                  v256 = v329;
                  goto LABEL_80;
                }

                v213 = v356;
                v214 = v357;
                v215 = __swift_project_boxed_opaque_existential_1(&v354, v356);
                v216 = v339;
                sub_1CF5215C0(v42, v165, v215, v213, v214);
                if (v216)
                {

                  __swift_destroy_boxed_opaque_existential_1(&v354);
                  (*(*a10 + 496))(v216, 1, "execute(_:with:)", 16, 2);

LABEL_78:
                  (*(*a10 + 304))();
                  v211 = v42;
                  v212 = v340;
                  goto LABEL_79;
                }

                v217 = v356;
                v218 = v357;
                v219 = __swift_project_boxed_opaque_existential_1(&v354, v356);
                v220 = v344;
                sub_1CF521CC0(v42, v119, v344, v219, v217, *(v218 + 8));
                v221 = v356;
                v222 = v357;
                v223 = __swift_project_boxed_opaque_existential_1(&v354, v356);
                sub_1CF527808(v42, v220, v223, v221, *(v222 + 8));

LABEL_77:
                v324 = v356;
                v325 = v357;
                v326 = __swift_project_boxed_opaque_existential_1(&v354, v356);
                sub_1CF521850(v344, v165, v326, v324, v325);
                __swift_destroy_boxed_opaque_existential_1(&v354);
                goto LABEL_78;
              }

              v146 = swift_slowAlloc();
              a8 = swift_slowAlloc();
              v336 = swift_slowAlloc();
              v350[0] = v336;
              *v146 = 138413058;
              v337 = v129;
              v147 = [v129 adopt];
              *(v146 + 4) = v147;
              *a8 = v147;
              *(v146 + 12) = 2082;
              v148 = sub_1CEFD0DF0(v124, v126, v350);
              v126, v149, v150, v151, v152, v153, v154, v155;
              *(v146 + 14) = v148;
              *(v146 + 22) = 2082;
              if (v128)
              {
                v351 = 0x20209286E220;
                v352 = 0xA600000000000000;
                MEMORY[0x1D3868CC0](v341, v128);
                v156 = v351;
                v157 = v352;
              }

              else
              {
                v156 = 0;
                v157 = 0xE000000000000000;
              }

              v177 = sub_1CEFD0DF0(v156, v157, v350);
              v157, v178, v179, v180, v181, v182, v183, v184;
              *(v146 + 24) = v177;
              *(v146 + 32) = 2082;
              v165 = v343;
              v185 = v343 - v328;
              if (!__OFSUB__(v343, v328))
              {
                if ((v185 & 0x8000000000000000) == 0)
                {
                  v186 = 0;
                  v187 = 0xE000000000000000;
LABEL_46:
                  v189 = sub_1CF04F854(v185);
                  v191 = v190;
                  v351 = v186;
                  v352 = v187;
                  MEMORY[0x1D3868CC0](v189);
                  v191, v192, v193, v194, v195, v196, v197, v198;
                  v199 = v352;
                  v200 = sub_1CEFD0DF0(v351, v352, v350);
                  v199, v201, v202, v203, v204, v205, v206, v207;
                  *(v146 + 34) = v200;
                  _os_log_impl(&dword_1CEFC7000, v130, v338, "%@ ‼️  done executing %{public}s%{public}s [duration %{public}s]", v146, 0x2Au);
                  sub_1CEFCCC44(a8, &qword_1EC4BE350, &unk_1CF9FC3B0);
                  MEMORY[0x1D386CDC0](a8, -1, -1);
                  v208 = v336;
                  swift_arrayDestroy();
                  MEMORY[0x1D386CDC0](v208, -1, -1);
                  MEMORY[0x1D386CDC0](v146, -1, -1);

                  (*(v349 + 8))(v345, v348);
                  v43 = v335;
                  v129 = v337;
                  goto LABEL_47;
                }

                v188 = __OFSUB__(0, v185);
                v185 = v328 - v343;
                if (!v188)
                {
                  v187 = 0xE100000000000000;
                  v186 = 45;
                  goto LABEL_46;
                }

                goto LABEL_89;
              }

              goto LABEL_86;
            }

            (*(v331 + 8))(v258, v259);
          }

LABEL_24:
          swift_willThrow();
          v118 = v43;
          v339 = 0;
          v119 = v43;
          goto LABEL_25;
        }

        (*(v334 + 8))(v115, v116);
      }

      v117 = v345;
      goto LABEL_24;
    }

    v106 = v339;
    if (!v339)
    {
      v113 = 4;
      v109 = 1;
      v112 = v342;
      goto LABEL_65;
    }

    v107 = *(*v339 + 88);

    v109 = v107(v108);
    if (v111 > 1u)
    {
      if (v111 == 2)
      {
        sub_1CF1DBCF0(v109, v110, 2);
        v112 = v342;
      }

      else
      {
        v112 = v342;
        if (!(v109 | v110))
        {
          v113 = 1;
          v109 = v106;
          v106 = 0;
LABEL_65:
          v261 = *(v42 + 96);
          v260 = *(v42 + 104);
          *(v42 + 96) = v109;
          *(v42 + 104) = v106;
          v262 = *(v42 + 112);
          *(v42 + 112) = v113;
          sub_1CF03D7A8(v261, v260, v262);
          *(v42 + 40) = 0;
          *(v42 + 48) = 1;
          v263 = sub_1CF044BA4();
          v265 = v264;
          v266 = fpfs_current_or_default_log();
          v267 = sub_1CF9E6128();
          v268 = (*(*v42 + 424))(v267);
          v269 = sub_1CF9E6108();
          if (os_log_type_enabled(v269, v268))
          {
            v270 = swift_slowAlloc();
            v271 = swift_slowAlloc();
            v272 = swift_slowAlloc();
            v350[0] = v272;
            *v270 = 138413058;
            v273 = [v340 adopt];
            *(v270 + 4) = v273;
            *v271 = v273;
            a8 = 2082;
            *(v270 + 12) = 2082;
            v274 = sub_1CEFD0DF0(v263, v265, v350);
            v265, v275, v276, v277, v278, v279, v280, v281;
            *(v270 + 14) = v274;
            *(v270 + 22) = 2082;
            if (v346)
            {
              v351 = 0x20209286E220;
              v352 = 0xA600000000000000;
              MEMORY[0x1D3868CC0](v341);
              v282 = v351;
              v283 = v352;
            }

            else
            {
              v282 = 0;
              v283 = 0xE000000000000000;
            }

            v291 = sub_1CEFD0DF0(v282, v283, v350);
            v283, v292, v293, v294, v295, v296, v297, v298;
            *(v270 + 24) = v291;
            *(v270 + 32) = 2082;
            v299 = v343 - v328;
            if (__OFSUB__(v343, v328))
            {
              goto LABEL_88;
            }

            if (v299 < 0)
            {
              v188 = __OFSUB__(0, v299);
              v299 = v328 - v343;
              if (v188)
              {
LABEL_91:
                __break(1u);
                goto LABEL_92;
              }

              v301 = 0xE100000000000000;
              v300 = 45;
            }

            else
            {
              v300 = 0;
              v301 = 0xE000000000000000;
            }

            v302 = sub_1CF04F854(v299);
            v304 = v303;
            v351 = v300;
            v352 = v301;
            MEMORY[0x1D3868CC0](v302);
            v304, v305, v306, v307, v308, v309, v310, v311;
            v312 = v352;
            v313 = sub_1CEFD0DF0(v351, v352, v350);
            v312, v314, v315, v316, v317, v318, v319, v320;
            *(v270 + 34) = v313;
            _os_log_impl(&dword_1CEFC7000, v269, v268, "%@ ✅  done executing %{public}s%{public}s [duration %{public}s]", v270, 0x2Au);
            sub_1CEFCCC44(v271, &qword_1EC4BE350, &unk_1CF9FC3B0);
            MEMORY[0x1D386CDC0](v271, -1, -1);
            swift_arrayDestroy();
            MEMORY[0x1D386CDC0](v272, -1, -1);
            MEMORY[0x1D386CDC0](v270, -1, -1);

            (*(v349 + 8))(v342, v348);
            v42 = v347;
          }

          else
          {

            v265, v284, v285, v286, v287, v288, v289, v290;
            (*(v349 + 8))(v112, v348);
          }

          v321 = v356;
          v322 = v357;
          v323 = __swift_project_boxed_opaque_existential_1(&v354, v356);
          v165 = v343;
          sub_1CF5215C0(v42, v343, v323, v321, v322);
          goto LABEL_77;
        }
      }
    }

    else
    {
      v112 = v342;
      if (v111)
      {
        v113 = 0;
        goto LABEL_65;
      }
    }

    v113 = 0;
    v109 = 256;
    goto LABEL_65;
  }

  sub_1CEFCCC44(&v351, &unk_1EC4C1B30, &qword_1CFA05300);
  v70 = v335;
  v71 = v335;
  if (!v335)
  {
    sub_1CF24CD3C();
    v71 = swift_allocError();
    *v72 = 4;
    *(v72 + 8) = 0u;
    *(v72 + 24) = 0u;
    *(v72 + 40) = 0;
    *(v72 + 48) = 9;
  }

  v73 = *(v42 + 96);
  v74 = *(v42 + 104);
  *(v42 + 96) = v71;
  *(v42 + 104) = 0;
  v75 = *(v42 + 112);
  *(v42 + 112) = 3;
  v76 = v70;
  sub_1CF03D7A8(v73, v74, v75);
  *(v42 + 40) = 0;
  *(v42 + 48) = 1;
  v77 = fpfs_current_or_default_log();
  v78 = v344;
  sub_1CF9E6128();
  v79 = v346;

  v80 = v340;
  v81 = sub_1CF9E6108();
  v82 = sub_1CF9E72A8();
  v79, v83, v84, v85, v86, v87, v88, v89;

  if (os_log_type_enabled(v81, v82))
  {
    v327 = a15;
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v345 = swift_slowAlloc();
    v351 = v345;
    *v90 = 138413058;
    v92 = [v80 adopt];
    *(v90 + 4) = v92;
    *v91 = v92;
    a8 = 2082;
    *(v90 + 12) = 2082;
    v93 = sub_1CF044BA4();
    v95 = v94;
    v96 = sub_1CEFD0DF0(v93, v94, &v351);
    v95, v97, v98, v99, v100, v101, v102, v103;
    *(v90 + 14) = v96;
    *(v90 + 22) = 2082;
    if (v79)
    {
      v354 = 0x20209286E220;
      v355 = 0xA600000000000000;
      MEMORY[0x1D3868CC0](v341, v79);
      v104 = v354;
      v105 = v355;
    }

    else
    {
      v104 = 0;
      v105 = 0xE000000000000000;
    }

    v224 = sub_1CEFD0DF0(v104, v105, &v351);
    v105, v225, v226, v227, v228, v229, v230, v231;
    *(v90 + 24) = v224;
    *(v90 + 32) = 2082;
    v232 = v343 - v328;
    if (__OFSUB__(v343, v328))
    {
      goto LABEL_87;
    }

    if (v232 < 0)
    {
      v188 = __OFSUB__(0, v232);
      v232 = v328 - v343;
      if (v188)
      {
LABEL_90:
        __break(1u);
        goto LABEL_91;
      }

      v234 = 0xE100000000000000;
      v233 = 45;
    }

    else
    {
      v233 = 0;
      v234 = 0xE000000000000000;
    }

    v235 = sub_1CF04F854(v232);
    v237 = v236;
    v354 = v233;
    v355 = v234;
    MEMORY[0x1D3868CC0](v235);
    v237, v238, v239, v240, v241, v242, v243, v244;
    v245 = v355;
    v246 = sub_1CEFD0DF0(v354, v355, &v351);
    v245, v247, v248, v249, v250, v251, v252, v253;
    *(v90 + 34) = v246;
    _os_log_impl(&dword_1CEFC7000, v81, v82, "%@ ‼️  done executing %{public}s%{public}s [duration %{public}s]", v90, 0x2Au);
    sub_1CEFCCC44(v91, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v91, -1, -1);
    v254 = v345;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v254, -1, -1);
    MEMORY[0x1D386CDC0](v90, -1, -1);

    (*(v349 + 8))(v344, v348);
    v42 = v347;
  }

  else
  {

    (*(v349 + 8))(v78, v348);
  }

  v211 = v42;
  v212 = v80;
  v255 = a10;
  v256 = v329;
LABEL_80:
  sub_1CF526F2C(v211, v212, v255, v256);
}

uint64_t sub_1CF526F2C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1CF9E6118();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = fpfs_current_or_default_log();
  v12 = sub_1CF9E6128();
  v13 = (*(*a1 + 424))(v12);
  v14 = sub_1CF9E6108();
  if (os_log_type_enabled(v14, v13))
  {
    v15 = swift_slowAlloc();
    v28 = v7;
    v16 = a2;
    v17 = v15;
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    v7 = v28;
    v19 = [v16 leave];
    *(v17 + 4) = v19;
    *v18 = v19;
    _os_log_impl(&dword_1CEFC7000, v14, v13, "%@", v17, 0xCu);
    sub_1CEFCCC44(v18, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v18, -1, -1);
    MEMORY[0x1D386CDC0](v17, -1, -1);
  }

  v20 = (*(v8 + 8))(v10, v7);
  v21 = (*(*a3 + 232))(v20);
  dispatch_group_leave(v21);

  a1[4] = 0;

  a1[3] = 0;

  if (((*(*a1 + 432))(v22) & 1) == 0)
  {
    goto LABEL_6;
  }

  result = (*(*a3 + 192))();
  v24 = *(result + 24);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (!v25)
  {
    *(result + 24) = v26;

LABEL_6:
    a1[2] = 0;

    sub_1CF9E7458();
    type metadata accessor for Signpost(0);
    return sub_1CF9E6038();
  }

  __break(1u);
  return result;
}

void sub_1CF52728C(_TtC18FileProviderDaemon8FSTester *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    (*(*v4 + 176))();
    sub_1CF524248((a1 & 0x7FFFFFFFFFFFFFFFLL), a2, a3, a4);
  }

  else
  {
    sub_1CF524248(a1, a2, a3, a4);
  }
}

uint64_t sub_1CF52737C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, _OWORD *), uint64_t a7)
{
  v8 = *v7;
  v12 = a1;
  v9 = *(v8 + 96);
  v11[0] = *(v8 + 80);
  v11[1] = v9;
  a6(255, v11);
  sub_1CF9E6E58();
  swift_getWitnessTable();
  return sub_1CF9E6BE8();
}

void sub_1CF527444(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  v11 = objc_autoreleasePoolPush();
  sub_1CF5215C0(v10, a3, a4, a5, a6);
  objc_autoreleasePoolPop(v11);
}

void sub_1CF5274CC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a1;
  v12 = objc_autoreleasePoolPush();
  sub_1CF52756C(v11, a2, a3, a4, a5, a6, &v13);
  objc_autoreleasePoolPop(v12);
}

double sub_1CF52756C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (a1 < 0)
  {
    (*(*a2 + 176))();
    sub_1CF5215C0(a1 & 0x7FFFFFFFFFFFFFFFLL, a3, a4, a5, a6);

    if (!v7)
    {
      return result;
    }
  }

  else
  {
    sub_1CF5215C0(a1, a3, a4, a5, a6);
    if (!v7)
    {
      return result;
    }
  }

  *a7 = v7;
  return result;
}

double sub_1CF5276F0(_TtC18FileProviderDaemon8FSTester *a1, SEL a2, int64_t x2_0, int64_t x3_0, id x4_0, id x5_0, uint64_t w6_0, id x7_0)
{
  if (a2)
  {
    a1, a2, x2_0, x3_0, x4_0, x5_0, w6_0, x7_0;
  }

  else
  {
  }

  return result;
}

void sub_1CF5276FC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *(v5 + 32);
  v12 = *(v5 + 56);
  v13 = *(type metadata accessor for Signpost(0) - 8);
  v14 = (*(v13 + 80) + 104) & ~*(v13 + 80);
  v15 = (*(v13 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF525924(a1, a2, a3, a4, a5, *(v5 + 64), *(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), v5 + v14, *(v5 + v15), *(v5 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)), v11, v12);
}

void sub_1CF5277FC(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

void sub_1CF527808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v49.i64[0] = a5;
  v47 = a3;
  v48.i64[0] = a4;
  v10 = *v7;
  v11 = *(*v7 + 104);
  v43 = *(*v7 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v40 = *(AssociatedTypeWitness - 8);
  v41 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v42 = &v38 - v13;
  v14 = sub_1CF9E5CF8();
  v45 = *(v14 - 8);
  v46 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v44 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v10 + 96);
  v17 = *(v10 + 80);
  v18 = swift_getAssociatedTypeWitness();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v38 - v21;
  if ((*(a1 + 138) & 3) != 0)
  {
    v38 = v20;
    v39 = a2;
    v23 = sub_1CF66E048(a1, 0, v47, v48.i64[0], v49.i64[0]);
    if (!v6 && (v23 & 1) != 0)
    {
      v47 = 0;
      v24 = sub_1CF056558();
      v25.i64[0] = v16;
      v25.i64[1] = v11;
      v26.i64[0] = v17;
      v26.i64[1] = v43;
      v48 = v26;
      v49 = v25;
      if (v24)
      {
        v50 = v26;
        v51 = v25;
        type metadata accessor for JobResult(0, &v50);
        v50 = v48;
        v51 = v49;
        type metadata accessor for DiskImport.ContinueDiskImport(0, &v50);
        sub_1CF046AB4();
        v27 = v44;
        sub_1CF9E5CE8();
        sub_1CF9E5C98();
        v29 = v28;
        (*(v45 + 8))(v27, v46);
        v30 = v29 * 1000000000.0;
        if (COERCE__INT64(fabs(v29 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v30 > -9.22337204e18)
          {
            if (v30 < 9.22337204e18)
            {
              v31 = sub_1CF559420();
              (*(v19 + 8))(v22, v38);
              sub_1CF803A0C(v39, v31);
LABEL_14:

              return;
            }

            goto LABEL_20;
          }

          goto LABEL_18;
        }

        __break(1u);
      }

      else
      {
        v50 = v26;
        v51 = v25;
        type metadata accessor for JobResult(0, &v50);
        v50 = vextq_s8(v48, v48, 8uLL);
        v51 = vextq_s8(v49, v49, 8uLL);
        type metadata accessor for DiskImport.ContinueDiskImport(0, &v50);
        v32 = v42;
        sub_1CF046AB4();
        v33 = v44;
        sub_1CF9E5CE8();
        sub_1CF9E5C98();
        v35 = v34;
        (*(v45 + 8))(v33, v46);
        v36 = v35 * 1000000000.0;
        if (COERCE__INT64(fabs(v35 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v36 > -9.22337204e18)
          {
            if (v36 < 9.22337204e18)
            {
              v37 = sub_1CF559420();
              (*(v40 + 8))(v32, v41);
              sub_1CF8039C4(v39, v37);
              goto LABEL_14;
            }

LABEL_21:
            __break(1u);
            return;
          }

          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }
  }
}

unint64_t sub_1CF527CC0()
{
  result = qword_1EDEA3590;
  if (!qword_1EDEA3590)
  {
    _s3__C4CodeOMa_1(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA3590);
  }

  return result;
}

uint64_t sub_1CF527D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for JobLockRule(255, *(*v4 + 80), *(*v4 + 88), a4);
  swift_getWitnessTable();
  sub_1CF9E66B8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1BB0, &unk_1CFA04800);
  swift_getWitnessTable();
  sub_1CF9E7AC8();
  swift_getWitnessTable();
  sub_1CF52BCF0();
  sub_1CF9E7AA8();
  swift_getWitnessTable();
  sub_1CF9E7978();
  return sub_1CF052DA4(v4, sub_1CF52BCD4);
}

uint64_t sub_1CF527F60(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        return 1;
      }
    }

    else if (EnumCaseMultiPayload != 4)
    {
      goto LABEL_7;
    }

LABEL_11:
    (*(v2 + 8))(v5, a1);
    return 1;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v14 = sub_1CF9E75D8();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      (*(*(v14 - 8) + 8))(&v5[*(TupleTypeMetadata2 + 48)], v14);
      (*(*(AssociatedTypeWitness - 8) + 8))(v5, AssociatedTypeWitness);
      return 1;
    }

    goto LABEL_11;
  }

  if (!EnumCaseMultiPayload)
  {
LABEL_7:
    v11 = swift_getAssociatedTypeWitness();
    (*(*(v11 - 8) + 8))(v5, v11);
    return 0;
  }

  v7 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v9 = *(TupleTypeMetadata3 + 48);
  v10 = *(*(v7 - 8) + 8);
  v10(&v5[*(TupleTypeMetadata3 + 64)], v7);
  v10(&v5[v9], v7);
  v10(v5, v7);
  return 1;
}

unint64_t sub_1CF528228(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v44[0] = *(a1 + 24);
  v44[1] = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v44 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v44 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v44 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v44 - v19;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v2, a1, v22);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        return 0xD000000000000010;
      }

      (*(v6 + 32))(v20, v24, AssociatedTypeWitness);
      v45 = 0;
      v46 = 0xE000000000000000;
      v27 = 0x74616761706F7270;
      v28 = 0xEA00000000002865;
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        (*(v6 + 32))(v20, v24, AssociatedTypeWitness);
        v45 = 0;
        v46 = 0xE000000000000000;
        sub_1CF9E7948();
        v29 = "fetchEventStream";
        v27 = 0xD000000000000014;
      }

      else
      {
        (*(v6 + 32))(v20, v24, AssociatedTypeWitness);
        v45 = 0;
        v46 = 0xE000000000000000;
        sub_1CF9E7948();
        v29 = "corrupted database: ";
        v27 = 0xD000000000000017;
      }

      v28 = v29 | 0x8000000000000000;
    }

    goto LABEL_17;
  }

  if (EnumCaseMultiPayload > 1)
  {
    v30 = v6;
    if (EnumCaseMultiPayload == 2)
    {
      sub_1CF9E75D8();
      v31 = *(swift_getTupleTypeMetadata2() + 48);
      v32 = (*(v30 + 48))(&v24[v31], 1, AssociatedTypeWitness);
      v33 = *(v30 + 32);
      v33(v20, v24, AssociatedTypeWitness);
      if (v32 != 1)
      {
        v33(v8, &v24[v31], AssociatedTypeWitness);
        v45 = 0;
        v46 = 0xE000000000000000;
        sub_1CF9E7948();
        MEMORY[0x1D3868CC0](0x286863746566, 0xE600000000000000);
        swift_getAssociatedConformanceWitness();
        sub_1CF9E7FE8();
        MEMORY[0x1D3868CC0](0x203A6E69202CLL, 0xE600000000000000);
        sub_1CF9E7FE8();
        MEMORY[0x1D3868CC0](41, 0xE100000000000000);
        v40 = v45;
        v41 = *(v30 + 8);
        v41(v8, AssociatedTypeWitness);
        v41(v20, AssociatedTypeWitness);
        return v40;
      }

      v45 = 0;
      v46 = 0xE000000000000000;
      v34 = 0x6B6E556863746566;
      v35 = 0xEC000000286E776FLL;
    }

    else
    {
      (*(v6 + 32))(v20, v24, AssociatedTypeWitness);
      v45 = 0;
      v46 = 0xE000000000000000;
      v34 = 0x287473696CLL;
      v35 = 0xE500000000000000;
    }

    MEMORY[0x1D3868CC0](v34, v35);
    swift_getAssociatedConformanceWitness();
    sub_1CF9E7FE8();
    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    v40 = v45;
    (*(v30 + 8))(v20, AssociatedTypeWitness);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      (*(v6 + 32))(v20, v24, AssociatedTypeWitness);
      v45 = 0;
      v46 = 0xE000000000000000;
      v27 = 0x28657461657263;
      v28 = 0xE700000000000000;
LABEL_17:
      MEMORY[0x1D3868CC0](v27, v28);
      swift_getAssociatedConformanceWitness();
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](41, 0xE100000000000000);
      v40 = v45;
      (*(v6 + 8))(v20, AssociatedTypeWitness);
      return v40;
    }

    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v37 = *(TupleTypeMetadata3 + 48);
    v38 = *(TupleTypeMetadata3 + 64);
    v39 = *(v6 + 32);
    v39(v17, v24, AssociatedTypeWitness);
    v39(v14, &v24[v37], AssociatedTypeWitness);
    v39(v11, &v24[v38], AssociatedTypeWitness);
    swift_getAssociatedConformanceWitness();
    if (sub_1CF9E6868())
    {
      v45 = 0;
      v46 = 0xE000000000000000;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0x28657461647075, 0xE700000000000000);
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](0x203A6E69202CLL, 0xE600000000000000);
    }

    else
    {
      v45 = 0;
      v46 = 0xE000000000000000;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0x28657461647075, 0xE700000000000000);
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](0x203A6E69202CLL, 0xE600000000000000);
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](540945696, 0xE400000000000000);
    }

    sub_1CF9E7FE8();
    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    v40 = v45;
    v42 = *(v6 + 8);
    v42(v11, AssociatedTypeWitness);
    v42(v14, AssociatedTypeWitness);
    v42(v17, AssociatedTypeWitness);
  }

  return v40;
}

uint64_t sub_1CF528A14(uint64_t a1)
{
  sub_1CF9E81D8();
  sub_1CF052EF4(v3, a1);
  return sub_1CF9E8228();
}

uint64_t sub_1CF528B08@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  sub_1CF9E7948();
  0xE000000000000000, v5, v6, v7, v8, v9, v10, v11;
  swift_beginAccess();
  v12 = a1[2];
  type metadata accessor for JobLockRule(0, *(v4 + 80), *(v4 + 88), v13);

  swift_getWitnessTable();
  v14 = sub_1CF9E6FA8();
  v16 = v15;
  v12, v15, v17, v18, v19, v20, v21, v22;
  MEMORY[0x1D3868CC0](v14, v16);
  v16, v23, v24, v25, v26, v27, v28, v29;
  MEMORY[0x1D3868CC0](0x676E69646E657020, 0xEE003A6873756C46);
  swift_beginAccess();
  v30 = a1[3];

  v31 = sub_1CF9E6FA8();
  v33 = v32;
  v30, v32, v34, v35, v36, v37, v38, v39;
  MEMORY[0x1D3868CC0](v31, v33);
  v33, v40, v41, v42, v43, v44, v45, v46;
  result = MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  *a2 = 0x676E696E6E75723CLL;
  a2[1] = 0xE90000000000003ALL;
  return result;
}

uint64_t sub_1CF528CD0(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 24), v9, v10, v11, v12, v13, v14, v15;
  return v8;
}

uint64_t sub_1CF528DC4(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 80) = 0;
  *(v6 + 88) = 0;
  *(v6 + 64) = a1;
  sub_1CF054EA0(a2, v6 + 16);
  *(v6 + 56) = a3;
  *(v6 + 72) = 0;
  *(v6 + 80) = 0;
  *(v6 + 88) = 0;
  return v6;
}

uint64_t sub_1CF528E2C(uint64_t a1, __int128 *a2, uint64_t a3)
{
  *(v3 + 80) = 0;
  *(v3 + 88) = 0;
  *(v3 + 64) = a1;
  sub_1CF054EA0(a2, v3 + 16);
  *(v3 + 56) = a3;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0;
  *(v3 + 88) = 0;
  return v3;
}

uint64_t sub_1CF528E74(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  type metadata accessor for JobLockRule(255, *(v2 + 80), *(v2 + 88), v3);

  swift_getWitnessTable();
  sub_1CF9E7068();
  sub_1CF9E6E58();
  swift_getWitnessTable();
  sub_1CF9E7058();
  return swift_endAccess();
}

uint64_t sub_1CF528F8C(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 16))(v3, v4);
  v7 = v6;
  v8 = a2[5];
  v9 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2 + 2, v8);
  v10 = (*(v9 + 16))(v8, v9);
  v18 = v11;
  if (v5 == v10 && v7 == v11)
  {
    v20 = 1;
  }

  else
  {
    v20 = sub_1CF9E8048();
  }

  v7, v11, v12, v13, v14, v15, v16, v17;
  v18, v21, v22, v23, v24, v25, v26, v27;
  return v20 & 1;
}

void sub_1CF529078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for JobLockRule(0, a2, a3, a4);

  JUMPOUT(0x1D3868FE0);
}

uint64_t sub_1CF5290D4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a4;
  v21 = a3;
  v10 = type metadata accessor for JobLockRule(255, a5, a6, a4);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = *(TupleTypeMetadata2 - 8);
  v13 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v15 = &v20 - v14;
  v16 = *a2;
  v17 = a2[1];
  (*(*(v10 - 8) + 16))(&v20 - v14, a1, v10, v13);
  v18 = &v15[*(TupleTypeMetadata2 + 48)];
  *v18 = v16;
  *(v18 + 1) = v17;
  v27 = v21;
  v23 = a5;
  v24 = a6;
  v25 = v15;
  v26 = v22;
  sub_1CF9E6E58();

  swift_getWitnessTable();
  LOBYTE(v10) = sub_1CF9E6BF8();
  (*(v12 + 8))(v15, TupleTypeMetadata2);
  return v10 & 1;
}

uint64_t sub_1CF5292B4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for JobLockRule(0, a4, a5, a4);
  if ((sub_1CF068CFC(a2, v7) & 1) == 0)
  {
    return 0;
  }

  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return sub_1CF52BB74(a3, *(a2 + *(TupleTypeMetadata2 + 48))) & 1;
}

uint64_t sub_1CF529354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = type metadata accessor for JobLockRule(255, a2, a3, a4);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v11 = &v29 - v10;
  (*(v12 + 16))(&v29 - v10, a1, TupleTypeMetadata2, v9);
  v13 = &v11[*(TupleTypeMetadata2 + 48)];
  *v13, v14, v15, v16, v17, v18, v19, v20;
  v13[1], v21, v22, v23, v24, v25, v26, v27;
  return (*(*(v7 - 8) + 32))(a5, v11, v7);
}

uint64_t sub_1CF529494(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  type metadata accessor for JobLockRule(255, *(v2 + 80), *(v2 + 88), v3);

  swift_getWitnessTable();
  sub_1CF9E7068();
  sub_1CF9E6E58();
  swift_getWitnessTable();
  sub_1CF9E7058();
  return swift_endAccess();
}

_TtC18FileProviderDaemon8FSTester *sub_1CF5295A8(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  swift_beginAccess();
  type metadata accessor for JobLockRule(0, *(v3 + 80), *(v3 + 88), v4);
  swift_getWitnessTable();
  sub_1CF9E6728();
  v5 = v28;
  if (v28)
  {
    v30 = v2;
    v6 = v29;
    swift_endAccess();
    result = v28 + 1;
    v15 = -*v28->tree;
    v16 = -1;
    while (1)
    {
      v17 = v15 + v16 != -1;
      if (v15 + v16 == -1)
      {
LABEL_6:
        v6, v7, v8, v9, v10, v11, v12, v13;
        v5, v20, v21, v22, v23, v24, v25, v26;
        return v17;
      }

      if (++v16 >= *v5->tree)
      {
        break;
      }

      tester = result[1].tester;
      sub_1CEFCCBDC(result, v27, &qword_1EC4BE650, &qword_1CF9FE490);
      v19 = v27[48];
      sub_1CF056B84(v27);
      result = tester;
      if (v19 == 1)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
    swift_endAccess();
    return 0;
  }

  return result;
}

void sub_1CF529784(id *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*a1 + 10);
  v40 = *(*a1 + 11);
  v41 = v6;
  v7 = type metadata accessor for JobLockRule(255, v6, v40, a4);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v42 = &v38 - v8;
  v39 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v38 - v10;
  swift_beginAccess();
  swift_getWitnessTable();
  sub_1CF9E6728();
  v12 = v43;
  v13 = v44;
  swift_endAccess();
  if (v12)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14 + 1;
  if (__OFADD__(v14, 1))
  {
    __break(1u);
  }

  else
  {
    (*(v39 + 16))(v11, a2, v7);
    v16 = MEMORY[0x1E69E7CC0];
    if (v12)
    {
      v16 = v12;
    }

    v43 = v16;
    v44 = v15;
    swift_beginAccess();
    sub_1CF9E6708();
    sub_1CF9E6738();
    swift_endAccess();
    v17 = [a1[5] allObjects];
    type metadata accessor for JobLockAggregator(0, v41, v40, v18);
    v19 = sub_1CF9E6D48();

    if (sub_1CF9E6DF8())
    {
      v40 = a2;
      v41 = v7;
      v39 += 8;
      v27 = 4;
      do
      {
        v28 = v27 - 4;
        v29 = sub_1CF9E6DC8();
        sub_1CF9E6D78();
        if (v29)
        {
          v30 = *(&v19->super.isa + v27);

          v32 = __OFADD__(v28, 1);
          v33 = v27 - 3;
          if (v32)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v31 = sub_1CF9E7998();
          v30 = v31;
          v32 = __OFADD__(v28, 1);
          v33 = v27 - 3;
          if (v32)
          {
LABEL_15:
            __break(1u);
            break;
          }
        }

        MEMORY[0x1EEE9AC00](v31);
        v34 = v40;
        *(&v38 - 2) = v30;
        *(&v38 - 1) = v34;

        v36 = v42;
        v37 = TupleTypeMetadata2;
        sub_1CF052DA4(v35, sub_1CF52BC78);

        (*v39)(&v36[*(v37 + 48)], v41);
        ++v27;
      }

      while (v33 != sub_1CF9E6DF8());
    }

    v19, v20, v21, v22, v23, v24, v25, v26;
  }
}

uint64_t sub_1CF529B54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  v6 = type metadata accessor for JobLockRule(0, *(*a1 + 80), *(*a1 + 88), a3);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  swift_getTupleTypeMetadata2();
  (*(v7 + 16))(v9, a2, v6);
  swift_beginAccess();
  swift_getWitnessTable();
  sub_1CF9E7068();
  v10 = sub_1CF9E6FF8();
  result = swift_endAccess();
  *a4 = v10 & 1;
  return result;
}

uint64_t sub_1CF529D34(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for JobLockRule(0, *(*a1 + 80), *(*a1 + 88), a4);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  swift_beginAccess();
  swift_getWitnessTable();
  sub_1CF9E6728();
  v9 = v22;
  if (!v22)
  {
    return swift_endAccess();
  }

  v10 = v23;
  result = swift_endAccess();
  v19 = __OFSUB__(v10, 1);
  v20 = v10 - 1;
  if (!v19)
  {
    if (*v9->tree | v20)
    {
      (*(v6 + 16))(v8, a2, v5);
      v22 = v9;
      v23 = v20;
    }

    else
    {
      v9, v12, v13, v14, v15, v16, v17, v18;
      (*(v6 + 16))(v8, a2, v5);
      v22 = 0;
      v23 = 0;
    }

    swift_beginAccess();
    sub_1CF9E6708();
    sub_1CF9E6738();
    return swift_endAccess();
  }

  __break(1u);
  return result;
}

void sub_1CF529F94(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  v5 = a1[3];
  v7 = type metadata accessor for JobLockRule(0, *(v4 + 80), *(v4 + 88), v6);

  WitnessTable = swift_getWitnessTable();
  LOBYTE(v7) = MEMORY[0x1D3868960](v5, v7, &type metadata for JobLockPendingFlushStatus, WitnessTable);
  v5, v9, v10, v11, v12, v13, v14, v15;
  *a2 = (v7 & 1) == 0;
}

void sub_1CF52A0C8(uint64_t *a1@<X0>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_beginAccess();
  v6 = a1[2];
  type metadata accessor for JobLockRule(255, *(v5 + 80), *(v5 + 88), v7);

  swift_getWitnessTable();
  sub_1CF9E6708();
  swift_getWitnessTable();
  v8 = sub_1CF9E6BF8();
  v6, v9, v10, v11, v12, v13, v14, v15;
  *a3 = v8 & 1;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF52A208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for JobLockRule(255, a3, a4, a4);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v10 = &v33 - v9;
  if (sub_1CF068CFC(a1, v6))
  {
    v35 = v6;
    v37 = v4;
    (*(v8 + 16))(v10, a1, TupleTypeMetadata2);
    v18 = &v10[*(TupleTypeMetadata2 + 48)];
    v19 = *v18;
    v34 = *(v18 + 1);
    result = v19 + 1;
    v21 = -*v19->tree;
    v22 = -1;
    while (1)
    {
      v23 = v21 + v22 != -1;
      if (v21 + v22 == -1)
      {
LABEL_6:
        v34, v11, v12, v13, v14, v15, v16, v17;
        v19, v26, v27, v28, v29, v30, v31, v32;
        (*(*(v35 - 8) + 8))(v10);
        return v23;
      }

      if (++v22 >= *v19->tree)
      {
        break;
      }

      tester = result[1].tester;
      sub_1CEFCCBDC(result, v36, &qword_1EC4BE650, &qword_1CF9FE490);
      v25 = v36[48];
      sub_1CF056B84(v36);
      result = tester;
      if (v25 == 1)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_1CF52A454(void (*a1)(uint64_t *__return_ptr, void *), uint64_t (*a2)(__n128), uint64_t a3, uint64_t (*a4)(__n128))
{
  v8 = objc_sync_enter(v4);
  if (v8)
  {
    MEMORY[0x1EEE9AC00](v8);
    v12 = v4;
    fp_preconditionFailure(_:file:line:)(a2, v11, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  a1(&v13, v4);
  v9 = objc_sync_exit(v4);
  if (v9)
  {
    MEMORY[0x1EEE9AC00](v9);
    v12 = v4;
    fp_preconditionFailure(_:file:line:)(a4, v11, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return v13;
}

uint64_t sub_1CF52A598@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  sub_1CF9E7948();
  0xE000000000000000, v5, v6, v7, v8, v9, v10, v11;
  swift_beginAccess();
  v12 = a1[2];
  type metadata accessor for JobLockRule(0, *(v4 + 80), *(v4 + 88), v13);

  swift_getWitnessTable();
  sub_1CF9E6698();
  v12, v14, v15, v16, v17, v18, v19, v20;
  v21 = sub_1CF9E7F98();
  v23 = v22;
  MEMORY[0x1D3868CC0](v21);
  v23, v24, v25, v26, v27, v28, v29, v30;
  result = MEMORY[0x1D3868CC0](0x2065766974636120, 0xED000073656C7572);
  *a2 = 0x202092949FF0;
  a2[1] = 0xA600000000000000;
  return result;
}

void sub_1CF52A704(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  type metadata accessor for JobLockRule(0, *(v1 + 80), *(v1 + 88), v2);
  swift_getWitnessTable();
  nullsub_1();
  v14[5] = v3;
  v4 = sub_1CF9E66B8();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1D3868E50](v14, v4, WitnessTable);
  v6 = v14[0];
  sub_1CF9E7978();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1BB0, &unk_1CFA04800);
  swift_getWitnessTable();
  sub_1CF52BCF0();
  sub_1CF9E7C58();
  v6, v7, v8, v9, v10, v11, v12, v13;
}

uint64_t sub_1CF52A8BC()
{
  v1 = objc_sync_enter(v0);
  if (v1)
  {
    MEMORY[0x1EEE9AC00](v1);
    v7 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v6, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  sub_1CF52AA00(v0, v2, v3, v4);
  result = objc_sync_exit(v0);
  if (result)
  {
    MEMORY[0x1EEE9AC00](result);
    v7 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v6, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return result;
}

void sub_1CF52AA00(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for JobLockRule(255, *(*a1 + 80), *(*a1 + 88), a4);
  swift_getTupleTypeMetadata2();
  v6 = sub_1CF9E6DA8();
  WitnessTable = swift_getWitnessTable();
  v8 = sub_1CF04F294(v6, v5, &type metadata for JobLockRuleAssociatedJobs, WitnessTable);
  v6, v9, v10, v11, v12, v13, v14, v15;
  swift_beginAccess();
  v16 = a1[2];
  a1[2] = v8;
  v16, v17, v18, v19, v20, v21, v22, v23;
  sub_1CF9E6E58();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v25 = MEMORY[0x1E69E6158];
  swift_getTupleTypeMetadata2();
  v26 = sub_1CF9E6DA8();
  v27 = sub_1CF04F294(v26, v25, TupleTypeMetadata2, MEMORY[0x1E69E6168]);
  v26, v28, v29, v30, v31, v32, v33, v34;
  swift_beginAccess();
  v35 = a1[4];
  a1[4] = v27;
  v35, v36, v37, v38, v39, v40, v41, v42;
}

void sub_1CF52ABA0(void *a1, void *a2, int a3, uint64_t a4)
{
  v95 = a3;
  v101 = a2;
  v5 = type metadata accessor for JobLockRule(0, *(*a1 + 80), *(*a1 + 88), a4);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v109 = &v93 - v8;
  v110 = v7;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v104 = sub_1CF9E75D8();
  v10 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v107 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v103 = &v93 - v13;
  swift_beginAccess();
  v94 = a1;
  v14 = a1[2];
  v15 = *(v14 + 64);
  v96 = v14 + 64;
  v16 = 1 << *(v14 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v105 = TupleTypeMetadata2 - 8;
  v106 = TupleTypeMetadata2;
  v97 = v6 + 16;
  v108 = (v6 + 32);
  v102 = (v10 + 32);
  v98 = v6;
  v99 = v14;
  v100 = (v6 + 8);

  v20 = 0;
  if (v18)
  {
    while (1)
    {
      v21 = v20;
      v22 = v106;
LABEL_12:
      v26 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v27 = v26 | (v21 << 6);
      v29 = v98;
      v28 = v99;
      v31 = v109;
      v30 = v110;
      (*(v98 + 16))(v109, *(v99 + 48) + *(v98 + 72) * v27, v110);
      v32 = *(v28 + 56);
      v33 = *(v22 + 48);
      v34 = *(v29 + 32);
      v112 = *(v32 + 16 * v27);
      v35 = v107;
      v34(v107, v31, v30);
      *&v35[v33] = v112;
      v25 = v35;
      v36 = *(v22 - 8);
      (*(v36 + 56))(v25, 0, 1, v22);

      v24 = v21;
LABEL_13:
      v37 = v103;
      (*v102)(v103, v25, v104);
      if ((*(v36 + 48))(v37, 1, v22) == 1)
      {
        break;
      }

      v38 = &v37[*(v22 + 48)];
      *&v112 = v24;
      v40 = *v38;
      v39 = v38[1];
      v41 = v109;
      v42 = v110;
      (*v108)(v109, v37, v110);
      v43 = v101[3];
      v115 = v101[4];
      v111 = __swift_project_boxed_opaque_existential_1(v101, v43);
      v113 = 0;
      v114 = 0xE000000000000000;
      sub_1CF9E7948();
      swift_getWitnessTable();
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](0x8FB8EFB696E2203ALL, 0xA900000000000020);
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE650, &qword_1CF9FE490);
      v45 = MEMORY[0x1D3868FE0](v40, v44);
      v47 = v46;
      MEMORY[0x1D3868CC0](v45);
      v47, v48, v49, v50, v51, v52, v53, v54;
      MEMORY[0x1D3868CC0](0x208F949FF02020, 0xA700000000000000);
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F00, &unk_1CF9FE4A0);
      v56 = MEMORY[0x1D3868FE0](v39, v55);
      v58 = v57;
      MEMORY[0x1D3868CC0](v56);
      v39, v59, v60, v61, v62, v63, v64, v65;
      v40, v66, v67, v68, v69, v70, v71, v72;
      v58, v73, v74, v75, v76, v77, v78, v79;
      v80 = v114;
      sub_1CF4FB2BC(v113, v114, v43, v115);
      v80, v81, v82, v83, v84, v85, v86, v87;
      (*v100)(v41, v42);
      v20 = v112;
      if (!v18)
      {
        goto LABEL_5;
      }
    }

    if (v95)
    {
      v88 = v101;
      v89 = v101[3];
      v90 = v101[4];
      __swift_project_boxed_opaque_existential_1(v101, v89);
      sub_1CF4FB2BC(0x2064656B636F6C62, 0xED00003A73626F6ALL, v89, v90);
      v91 = v88[3];
      v92 = v88[4];
      __swift_project_boxed_opaque_existential_1(v88, v91);
      sub_1CF4FB38C(8224, 0xE200000000000000, sub_1CF52BD74, v94, v91, MEMORY[0x1E69E7CA8] + 8, v92);
    }
  }

  else
  {
LABEL_5:
    if (v19 <= v20 + 1)
    {
      v23 = v20 + 1;
    }

    else
    {
      v23 = v19;
    }

    v24 = v23 - 1;
    v22 = v106;
    v25 = v107;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v19)
      {
        v36 = *(v106 - 8);
        (*(v36 + 56))(v107, 1, 1, v106);
        v18 = 0;
        goto LABEL_13;
      }

      v18 = *(v96 + 8 * v21);
      ++v20;
      if (v18)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_1CF52B220(void *a1, uint64_t *a2)
{
  v48 = *a2;
  swift_beginAccess();
  v3 = a2[4];
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  v50 = v3;

  v9 = 0;
  while (v7)
  {
    v10 = v9;
LABEL_9:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = (v10 << 10) | (16 * v11);
    v13 = (*(v50 + 48) + v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = (*(v50 + 56) + v12);
    v18 = *v16;
    v17 = v16[1];
    v51 = a1[3];
    v52 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v51);

    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](v15, v14);
    v14, v19, v20, v21, v22, v23, v24, v25;
    MEMORY[0x1D3868CC0](0x3A73656C7572203ALL, 0xE900000000000020);
    type metadata accessor for JobLockRule(255, *(v48 + 80), *(v48 + 88), v26);
    sub_1CF9E6E58();
    swift_getWitnessTable();
    sub_1CF9E7FE8();
    v18, v27, v28, v29, v30, v31, v32, v33;
    MEMORY[0x1D3868CC0](0x656B636F6C62202CLL, 0xEE00203A79622064);
    sub_1CF9E7FE8();
    v17, v34, v35, v36, v37, v38, v39, v40;
    sub_1CF4FB2BC(0, 0xE000000000000000, v51, v52);
    0xE000000000000000, v41, v42, v43, v44, v45, v46, v47;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1CF52B49C(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 24), v9, v10, v11, v12, v13, v14, v15;
  *(v8 + 32), v16, v17, v18, v19, v20, v21, v22;

  return v8;
}

uint64_t sub_1CF52B4D4(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  sub_1CF52B49C(a1, a2, a3, a4, a5, a6, a7, a8);

  return swift_deallocClassInstance();
}

uint64_t sub_1CF52B5A4(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (v4 > 0x3F)
    {
      return TupleTypeMetadata3;
    }

    sub_1CF9E75D8();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata2();
    if (v5 > 0x3F)
    {
      return TupleTypeMetadata3;
    }

    else
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return AssociatedTypeWitness;
}

uint64_t sub_1CF52B694(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v8 = (v6 + v7) & ~v7;
  v9 = ((v6 + v7 + v8) & ~v7) + v6;
  if (v9 <= v6)
  {
    v9 = *(v5 + 64);
  }

  v10 = *(v5 + 84) == 0;
  v11 = v8 + v6;
  if (v10)
  {
    ++v11;
  }

  if (v11 <= v9)
  {
    v11 = v9;
  }

  if (v6 > v11)
  {
    v11 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_31;
  }

  v12 = v11 + 1;
  v13 = 8 * (v11 + 1);
  if ((v11 + 1) <= 3)
  {
    v16 = ((a2 + ~(-1 << v13) - 248) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v16 < 2)
    {
LABEL_31:
      v18 = *(a1 + v11);
      if (v18 >= 8)
      {
        return (v18 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_31;
  }

LABEL_20:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    if (v12 > 2)
    {
      if (v12 == 3)
      {
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v12) = *a1;
      }
    }

    else if (v12 == 1)
    {
      LODWORD(v12) = *a1;
    }

    else
    {
      LODWORD(v12) = *a1;
    }
  }

  return (v12 | v17) + 249;
}

void sub_1CF52B844(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 64);
  v9 = *(v7 + 80);
  v10 = (v8 + v9) & ~v9;
  v11 = ((v8 + v9 + v10) & ~v9) + v8;
  if (v11 <= v8)
  {
    v11 = *(v7 + 64);
  }

  v12 = *(v7 + 84) == 0;
  v13 = v10 + v8;
  if (v12)
  {
    ++v13;
  }

  if (v13 <= v11)
  {
    v13 = v11;
  }

  if (v8 <= v13)
  {
    v8 = v13;
  }

  v14 = v8 + 1;
  if (a3 < 0xF9)
  {
    v15 = 0;
  }

  else if (v14 <= 3)
  {
    v18 = ((a3 + ~(-1 << (8 * v14)) - 248) >> (8 * v14)) + 1;
    if (HIWORD(v18))
    {
      v15 = 4;
    }

    else
    {
      if (v18 < 0x100)
      {
        v19 = 1;
      }

      else
      {
        v19 = 2;
      }

      if (v18 >= 2)
      {
        v15 = v19;
      }

      else
      {
        v15 = 0;
      }
    }
  }

  else
  {
    v15 = 1;
  }

  if (a2 > 0xF8)
  {
    v16 = a2 - 249;
    if (v14 >= 4)
    {
      bzero(a1, v8 + 1);
      *a1 = v16;
      v17 = 1;
      if (v15 > 1)
      {
        goto LABEL_45;
      }

      goto LABEL_42;
    }

    v17 = (v16 >> (8 * v14)) + 1;
    if (v8 != -1)
    {
      v20 = v16 & ~(-1 << (8 * v14));
      bzero(a1, v14);
      if (v14 != 3)
      {
        if (v14 == 2)
        {
          *a1 = v20;
          if (v15 > 1)
          {
LABEL_45:
            if (v15 == 2)
            {
              *&a1[v14] = v17;
            }

            else
            {
              *&a1[v14] = v17;
            }

            return;
          }
        }

        else
        {
          *a1 = v16;
          if (v15 > 1)
          {
            goto LABEL_45;
          }
        }

LABEL_42:
        if (v15)
        {
          a1[v14] = v17;
        }

        return;
      }

      *a1 = v20;
      a1[2] = BYTE2(v20);
    }

    if (v15 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  if (v15 <= 1)
  {
    if (v15)
    {
      a1[v14] = 0;
      if (!a2)
      {
        return;
      }

LABEL_31:
      a1[v8] = -a2;
      return;
    }

LABEL_30:
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (v15 == 2)
  {
    *&a1[v14] = 0;
    goto LABEL_30;
  }

  *&a1[v14] = 0;
  if (a2)
  {
    goto LABEL_31;
  }
}

uint64_t sub_1CF52BB74(unint64_t a1, uint64_t a2)
{
  v3 = a2 + 32;
  v4 = *(a2 + 16) + 1;
  while (1)
  {
    if (!--v4)
    {
      return v4 != 0;
    }

    sub_1CEFCCBDC(v3, v9, &qword_1EC4BE650, &qword_1CF9FE490);
    if (v9[48] == 1)
    {
      sub_1CF056B84(v9);
      return v4 != 0;
    }

    result = sub_1CEFCCBDC(v9, v7, &qword_1EC4BE650, &qword_1CF9FE490);
    if (v8)
    {
      break;
    }

    v3 += 56;
    v6 = v7[5];
    sub_1CF056B84(v9);
    __swift_destroy_boxed_opaque_existential_1(v7);
    if (v6 > a1)
    {
      return v4 != 0;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1CF52BCF0()
{
  result = qword_1EDEA3798;
  if (!qword_1EDEA3798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1BB0, &unk_1CFA04800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA3798);
  }

  return result;
}

uint64_t sub_1CF52BDB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE650, &qword_1CF9FE490);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CF52BE40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

double sub_1CF52BEB4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v26 = a2;
  v6 = *v4;
  v25 = *(*v4 + 632);
  v24 = v6[77];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v23 - v11;
  (*(v8 + 16))(&v23 - v11, a1, AssociatedTypeWitness, v10);
  v13 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v14 = (v9 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 2) = v24;
  *(v16 + 3) = v6[78];
  *(v16 + 4) = v25;
  *(v16 + 5) = v6[80];
  (*(v8 + 32))(&v16[v13], v12, AssociatedTypeWitness);
  v17 = v26;
  v18 = v27;
  *&v16[v14] = v26;
  *&v16[v15] = v4;
  v19 = &v16[(v15 + 15) & 0xFFFFFFFFFFFFFFF8];
  v20 = v28;
  *v19 = v18;
  v19[1] = v20;
  sub_1CEFD09A0(v17);

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1580, &qword_1CFA0A248);
  sub_1CF92E44C("propagateToFP(itemID:request:completion:)", 41, 2, sub_1CF045408, 0, v18, v20, sub_1CF54EAC8, v16, v21);

  return result;
}

uint64_t sub_1CF52C114(uint64_t a1, int a2, int a3, int a4, unint64_t a5, uint64_t a6, void *a7, uint64_t a8, char *a9)
{
  v10 = v9;
  v119 = a8;
  v114 = a7;
  v112 = a6;
  v113 = a4;
  v110 = a2;
  v111 = a3;
  v13 = *v9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFB10, &unk_1CFA12AD0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v109 = &v100 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C1588, &unk_1CFA0A260);
  v117 = *(v16 - 8);
  v17 = *(v117 + 8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v118 = &v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v100 - v19;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F40, qword_1CFA0F4C0);
  MEMORY[0x1EEE9AC00](v105);
  v106 = &v100 - v21;
  v22 = sub_1CF9E6118();
  v107 = *(v22 - 8);
  v108 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v100 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFD09A0(a5);
  sub_1CEFD09A0(a5);

  v26 = sub_1CF9E6108();
  v27 = sub_1CF9E7298();
  v28 = os_log_type_enabled(v26, v27);
  v120 = a5;
  v115 = a1;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v104 = v17;
    v30 = v29;
    v31 = swift_slowAlloc();
    v103 = v31;
    v121[0] = v31;
    *v30 = 136315394;
    v32 = v9;
    v33 = sub_1CF554E8C(v31);
    v35 = v34;

    v36 = sub_1CEFD0DF0(v33, v35, v121);
    v35, v37, v38, v39, v40, v41, v42, v43;
    *(v30 + 4) = v36;
    *(v30 + 12) = 2080;
    v10 = v32;
    v44 = sub_1CF665B0C(v120, v13[77], v13[78], v13[79], v13[80]);
    v46 = v45;
    sub_1CF540FDC(v120);
    sub_1CF540FDC(v120);
    v47 = sub_1CEFD0DF0(v44, v46, v121);
    v48 = v46;
    a5 = v120;
    v48, v49, v50, v51, v52, v53, v54, v55;
    *(v30 + 14) = v47;
    _os_log_impl(&dword_1CEFC7000, v26, v27, "Request to materialize content of itemID %s reason %s", v30, 0x16u);
    v56 = v103;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v56, -1, -1);
    v57 = v30;
    v17 = v104;
    MEMORY[0x1D386CDC0](v57, -1, -1);
  }

  else
  {
    sub_1CF540FDC(a5);
    sub_1CF540FDC(a5);
  }

  (*(v107 + 8))(v24, v108);
  if (((a5 >> 58) & 0x3C | (a5 >> 1) & 3) == 2)
  {
    v58 = swift_projectBox();
    v59 = v106;
    sub_1CEFCCBDC(v58, v106, &unk_1EC4C4F40, qword_1CFA0F4C0);
    *(v59 + 8), v60, v61, v62, v63, v64, v65, v66;
    v67 = v105;
    v68 = *(v105 + 48);

    v69 = *(v59 + *(v67 + 80));
    v70 = sub_1CF9E5A58();
    (*(*(v70 - 8) + 8))(v59 + v68, v70);
  }

  else
  {
    v69 = 0;
  }

  v71 = v109;
  v109 = a9;
  sub_1CEFCCBDC(v10 + qword_1EDEBBC18, v71, &qword_1EC4BFB10, &unk_1CFA12AD0);
  v72 = type metadata accessor for TelemetrySignposter(0);
  v73 = (*(*(v72 - 8) + 48))(v71, 1, v72);
  v116 = v10;
  if (v73 == 1)
  {
    sub_1CEFCCC44(v71, &qword_1EC4BFB10, &unk_1CFA12AD0);
    v74 = 1;
  }

  else
  {
    sub_1CF519DE8(v69, v20);
    sub_1CF007C58(v71, type metadata accessor for TelemetrySignposter);
    v74 = 0;
  }

  v75 = type metadata accessor for TelemetrySignpost(0);
  (*(*(v75 - 8) + 56))(v20, v74, 1, v75);
  v76 = v118;
  sub_1CEFCCBDC(v20, v118, qword_1EC4C1588, &unk_1CFA0A260);
  v77 = v117[80];
  v78 = (v77 + 48) & ~v77;
  v79 = swift_allocObject();
  v80 = (v79 + ((v17 + v78 + 7) & 0xFFFFFFFFFFFFFFF8));
  v117 = v20;
  v103 = (v77 + 56) & ~v77;
  v104 = (v103 + v17 + 31) & 0xFFFFFFFFFFFFFFF8;
  v105 = (v103 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v107 = (v104 + 15) & 0xFFFFFFFFFFFFFFF8;
  v108 = (v104 + 31) & 0xFFFFFFFFFFFFFFF8;
  v106 = (v108 + 15) & 0xFFFFFFFFFFFFFFF8;
  v81 = v13;
  v82 = v13[77];
  v101 = (v106 + 15) & 0xFFFFFFFFFFFFFFF8;
  v102 = v82;
  v79[2] = v82;
  v83 = v13[78];
  v79[3] = v83;
  v84 = v81[79];
  v79[4] = v84;
  v85 = v81[80];
  v79[5] = v85;
  sub_1CEFE55D0(v76, v79 + v78, qword_1EC4C1588, &unk_1CFA0A260);
  v86 = v109;
  *v80 = v119;
  v80[1] = v86;
  sub_1CEFCCBDC(v117, v76, qword_1EC4C1588, &unk_1CFA0A260);
  v87 = v101;
  v88 = swift_allocObject();
  *&v89 = v102;
  *(&v89 + 1) = v83;
  *&v90 = v84;
  *(&v90 + 1) = v85;
  *(v88 + 16) = v89;
  *(v88 + 32) = v90;
  v91 = v120;
  *(v88 + 48) = v120;
  sub_1CEFE55D0(v118, v88 + v103, qword_1EC4C1588, &unk_1CFA0A260);
  v92 = v88 + v105;
  *v92 = v119;
  *(v92 + 8) = v86;
  v93 = v111;
  LOBYTE(v83) = v110 & 1;
  *(v92 + 16) = v110 & 1;
  v94 = v115;
  *(v88 + v104) = v116;
  v95 = v88 + v107;
  *v95 = v94;
  *(v95 + 8) = v93 & 1;
  *(v88 + v108) = v112;
  v96 = v114;
  *(v88 + v106) = v114;
  v97 = v88 + v87;
  *v97 = sub_1CF550B04;
  *(v97 + 8) = v79;
  *(v97 + 16) = v113 & 1;

  sub_1CEFD09A0(v91);

  v98 = v96;

  sub_1CF52CB9C(v94, v83, 0, v91, sub_1CF550BD8, v88);

  return sub_1CEFCCC44(v117, qword_1EC4C1588, &unk_1CFA0A260);
}

double sub_1CF52C93C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v26 = a2;
  v6 = *v4;
  v25 = *(*v4 + 640);
  v24 = v6[78];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v23 - v11;
  (*(v8 + 16))(&v23 - v11, a1, AssociatedTypeWitness, v10);
  v13 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v14 = (v9 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 2) = v6[77];
  *(v16 + 3) = v24;
  *(v16 + 4) = v6[79];
  *(v16 + 5) = v25;
  (*(v8 + 32))(&v16[v13], v12, AssociatedTypeWitness);
  v17 = v26;
  v18 = v27;
  *&v16[v14] = v26;
  *&v16[v15] = v4;
  v19 = &v16[(v15 + 15) & 0xFFFFFFFFFFFFFFF8];
  v20 = v28;
  *v19 = v18;
  v19[1] = v20;
  sub_1CEFD09A0(v17);

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1580, &qword_1CFA0A248);
  sub_1CF92E44C("propagateToFS(itemID:request:completion:)", 41, 2, sub_1CF045408, 0, v18, v20, sub_1CF550004, v16, v21);

  return result;
}

double sub_1CF52CB9C(uint64_t a1, char a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a3;
  v17 = *(*v6 + 632);
  v18 = *(*v6 + 616);
  v13 = [objc_allocWithZone(MEMORY[0x1E696AE38]) init];
  v14 = swift_allocObject();
  *(v14 + 16) = v18;
  *(v14 + 32) = v17;
  *(v14 + 48) = a5;
  *(v14 + 56) = a6;
  *(v14 + 64) = a4;

  sub_1CEFD09A0(a4);
  if (a2)
  {
    v15 = 2;
  }

  else
  {
    v15 = 1;
  }

  sub_1CF5407F0(a1, v15, v10, a4, v13, 0, sub_1CF55015C, v14);

  return result;
}

uint64_t sub_1CF52CCD8@<X0>(void (*a1)(char *)@<X0>, void *a2@<X2>, uint64_t a4@<X8>)
{
  v7 = a2[2];
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v16, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(a2[3] - 8) + 32))(a4, v14, a2[3]);
  }

  else
  {
    (*(v8 + 32))(v10, v14, v7);
    a1(v10);
    (*(v8 + 8))(v10, v7);
  }

  sub_1CF9E8238();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1CF52CEEC@<X0>(void (*a1)(char *)@<X0>, void *a2@<X2>, uint64_t a4@<X8>)
{
  v7 = a2[2];
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v16, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(a2[3] - 8) + 32))(a4, v14, a2[3]);
    sub_1CF9E8238();
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    (*(v8 + 32))(v10, v14, v7);
    a1(v10);
    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_1CF52D0F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 16);
  v6 = *(v5 - 8);
  if (*(v3 + *(a1 + 56)))
  {
    v7 = 1;
  }

  else
  {
    v10 = *(*(a1 + 16) - 8);
    (*(v10 + 16))(a2);
    v6 = v10;
    v7 = 0;
  }

  v8 = *(v6 + 56);

  return v8(a2, v7, 1, v5);
}

uint64_t sub_1CF52D1B4(int *a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_1CF9E75D8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v38 - v6;
  v38[0] = 0;
  v38[1] = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](980641340, 0xE400000000000000);
  sub_1CF9E7FE8();
  MEMORY[0x1D3868CC0](980444704, 0xE400000000000000);
  (*(v5 + 16))(v7, v1 + a1[13], v4);
  v8 = *(AssociatedTypeWitness - 8);
  if ((*(v8 + 48))(v7, 1, AssociatedTypeWitness) == 1)
  {
    v9 = 0xE90000000000003ELL;
    v10 = 0x6E776F6E6B6E753CLL;
  }

  else
  {
    swift_getAssociatedConformanceWitness();
    v10 = sub_1CF9E7F98();
    v9 = v11;
    v5 = v8;
    v4 = AssociatedTypeWitness;
  }

  (*(v5 + 8))(v7, v4);
  MEMORY[0x1D3868CC0](v10, v9);
  v9, v12, v13, v14, v15, v16, v17, v18;
  MEMORY[0x1D3868CC0](0x3A6E656464696820, 0xE800000000000000);
  if (*(v1 + a1[14]))
  {
    v19 = 1702195828;
  }

  else
  {
    v19 = 0x65736C6166;
  }

  if (*(v1 + a1[14]))
  {
    v20 = 0xE400000000000000;
  }

  else
  {
    v20 = 0xE500000000000000;
  }

  MEMORY[0x1D3868CC0](v19, v20);
  v20, v21, v22, v23, v24, v25, v26, v27;
  MEMORY[0x1D3868CC0](0x6574726F706D6920, 0xEA00000000003A64);
  if (*(v1 + a1[15]))
  {
    v28 = 1702195828;
  }

  else
  {
    v28 = 0x65736C6166;
  }

  if (*(v1 + a1[15]))
  {
    v29 = 0xE400000000000000;
  }

  else
  {
    v29 = 0xE500000000000000;
  }

  MEMORY[0x1D3868CC0](v28, v29);
  v29, v30, v31, v32, v33, v34, v35, v36;
  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  return v38[0];
}

uint64_t sub_1CF52D49C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  (*(*(a5 - 8) + 32))(a9, a1, a5);
  v21[0] = a5;
  v21[1] = a6;
  v21[2] = a7;
  v21[3] = a8;
  v17 = type metadata accessor for ItemLookupResult(0, v21);
  v18 = v17[13];
  swift_getAssociatedTypeWitness();
  v19 = sub_1CF9E75D8();
  result = (*(*(v19 - 8) + 32))(a9 + v18, a2, v19);
  *(a9 + v17[14]) = a3;
  *(a9 + v17[15]) = a4;
  return result;
}

uint64_t sub_1CF52D5BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  *a7 = a1;
  v12[0] = a3;
  v12[1] = a4;
  v12[2] = a5;
  v12[3] = a6;
  v9 = *(_s20ParentIDLookupResultVMa(0, v12) + 52);
  v10 = sub_1CF9E75D8();
  return (*(*(v10 - 8) + 32))(&a7[v9], a2, v10);
}

double sub_1CF52D66C(uint64_t *a1, void (*a2)(char *), uint64_t a3)
{
  v4 = v3;
  v45 = a2;
  v46 = a3;
  v6 = *a1;
  v7 = *a1;
  v8 = *(*v4 + 616);
  v9 = *(*v4 + 632);
  v10 = *(*v4 + 640);
  v42 = *(*v4 + 624);
  v43 = v8;
  *&v47 = v8;
  *(&v47 + 1) = v42;
  v40 = v10;
  v41 = v9;
  *&v48 = v9;
  *(&v48 + 1) = v10;
  v11 = _s20ParentIDLookupResultVMa(255, &v47);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v12 = sub_1CF9E8238();
  v38 = *(v12 - 8);
  v39 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v37 - v13;
  v15 = *(v6 + 88);
  v16 = sub_1CF9E75D8();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v37 - v17;
  v19 = *(v6 + 80);
  v20 = *(v7 + 96);
  *&v47 = v19;
  *(&v47 + 1) = v15;
  v37 = v20;
  v48 = v20;
  v21 = type metadata accessor for ReconciliationID(0, &v47);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v37 - v22;
  v44 = v11;
  v24 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v37 - v26;
  if (sub_1CF5554C0(v28))
  {
    *&v29 = v19;
    *(&v29 + 1) = v15;
    v47 = v29;
    v48 = v37;
    type metadata accessor for FPFSID(0, &v47);
    (*(**(v4[4] + 16) + 96))();
    swift_storeEnumTagMultiPayload();
    v30 = sub_1CF554514(v23);
    (*(*(v15 - 8) + 56))(v18, 1, 1, v15);
    sub_1CF52D5BC(v30, v18, v43, v42, v41, v40, v27);
    v31 = v44;
    (*(v24 + 16))(v14, v27, v44);
    v32 = v39;
    swift_storeEnumTagMultiPayload();
    v45(v14);
    (*(v38 + 8))(v14, v32);
    (*(v24 + 8))(v27, v31);
  }

  else
  {
    v34 = swift_allocObject();
    v34[2] = a1;
    v34[3] = v4;
    v36 = v45;
    v35 = v46;
    v34[4] = v45;
    v34[5] = v35;

    sub_1CF92DB1C("findParentID(for:completionHandler:)", 36, 2, 2, v36, v35, sub_1CF54F89C, v34, v44);
  }

  return result;
}

uint64_t sub_1CF52DAF8(void *a1, void *a2, void *a3, void (*a4)(char *), uint64_t a5)
{
  v173 = a1;
  v163 = a4;
  v164 = a5;
  v176 = a2;
  v170 = *a2;
  v171 = v170;
  v6 = *a3;
  v7 = *(*a3 + 640);
  v8 = *(*a3 + 624);
  *&v174 = swift_getAssociatedTypeWitness();
  *(&v174 + 1) = swift_getAssociatedTypeWitness();
  *&v175 = swift_getAssociatedConformanceWitness();
  *(&v175 + 1) = swift_getAssociatedConformanceWitness();
  v142 = type metadata accessor for FileItemVersion(255, &v174);
  v145 = sub_1CF9E75D8();
  v144 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v152 = &v128 - v9;
  v10 = v170[11];
  v167 = *(v10 - 1);
  MEMORY[0x1EEE9AC00](v11);
  v141 = &v128 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v143 = &v128 - v14;
  v140 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v169 = &v128 - v17;
  v18 = *(v6 + 616);
  *&v19 = v18;
  v161 = v8;
  *(&v19 + 1) = v8;
  v20 = *(v6 + 632);
  *&v21 = v20;
  v162 = v7;
  *(&v21 + 1) = v7;
  v156 = v21;
  v175 = v21;
  v158 = v19;
  v174 = v19;
  v22 = _s20ParentIDLookupResultVMa(255, &v174);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v23 = sub_1CF9E8238();
  v159 = *(v23 - 8);
  v160 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v157 = &v128 - v24;
  v138 = sub_1CF9E75D8();
  v136 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v166 = &v128 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v150 = &v128 - v27;
  v154 = v22;
  v153 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v151 = &v128 - v29;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v149 = v20;
  v155 = v18;
  v33 = swift_getAssociatedConformanceWitness();
  *&v174 = AssociatedTypeWitness;
  *(&v174 + 1) = v31;
  *&v175 = AssociatedConformanceWitness;
  *(&v175 + 1) = v33;
  v135 = type metadata accessor for FileItemVersion(255, &v174);
  v139 = sub_1CF9E75D8();
  v137 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v148 = &v128 - v34;
  v35 = v170[10];
  v133 = sub_1CF9E75D8();
  v132 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v165 = &v128 - v36;
  v168 = *(v35 - 8);
  v37 = *(v168 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v134 = &v128 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v147 = &v128 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v128 - v42;
  v44 = *(v171 + 6);
  *&v174 = v35;
  *(&v174 + 1) = v10;
  v171 = v10;
  v146 = v44;
  v175 = v44;
  v45 = type metadata accessor for ReconciliationID(0, &v174);
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v128 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v128 - v49;
  v51 = v173[3];
  v52 = v173[4];
  v53 = __swift_project_boxed_opaque_existential_1(v173, v51);
  v170 = a3;
  v54 = v172;
  result = sub_1CF554678(a3, 0, v53, v51, v52, v50);
  if (!v54)
  {
    v128 = v37;
    v129 = v47;
    v172 = v43;
    v56 = v168;
    v57 = v173;
    v131 = v35;
    v58 = v169;
    v176 = 0;
    v130 = v45;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v59 = v167;
      v60 = (v167 + 32);
      v172 = *(v167 + 32);
      v172(v58, v50, v171);
      v61 = v57;
      v62 = v57[3];
      v63 = v61[4];
      v64 = __swift_project_boxed_opaque_existential_1(v61, v62);
      v65 = v170[5];
      v66 = v166;
      v67 = v176;
      (*(*v65 + 288))(v58, v64, v62, v63);
      v176 = v67;
      if (v67)
      {
        return (*(v59 + 8))(v58, v171);
      }

      else
      {
        v173 = v60;
        v78 = v171;
        v79 = v59;
        if ((*(v59 + 48))(v66, 1, v171) == 1)
        {
          (*(v136 + 8))(v66, v138);
          v80 = v65[2];
          (*(*(v142 - 8) + 56))(v152, 1, 1);

          v81 = sub_1CF04F1A0();
          v82 = v169;
          v170 = v81;
          v83 = v141;
          (*(v79 + 16))(v141, v169, v78);
          v84 = (*(v79 + 80) + 64) & ~*(v79 + 80);
          v85 = swift_allocObject();
          v86 = v156;
          *(v85 + 16) = v158;
          *(v85 + 32) = v86;
          v87 = v164;
          *(v85 + 48) = v163;
          *(v85 + 56) = v87;
          v172(v85 + v84, v83, v78);
          v88 = *(*v80 + 136);

          v89 = v152;
          v90 = v170;
          v88(v82, v152, v170, 0, sub_1CF54F8BC, v85);

          (*(v144 + 8))(v89, v145);
          return (*(v79 + 8))(v82, v78);
        }

        else
        {
          v104 = v143;
          v172(v143, v66, v78);
          *&v105 = v131;
          *(&v105 + 1) = v78;
          v175 = v146;
          v174 = v105;
          type metadata accessor for FPFSID(0, &v174);
          v106 = v129;
          (*(v79 + 16))(v129, v104, v78);
          swift_storeEnumTagMultiPayload();
          v107 = sub_1CF554514(v106);
          v108 = v150;
          (*(v79 + 56))(v150, 1, 1, v78);
          v109 = v151;
          sub_1CF52D5BC(v107, v108, v155, v161, v149, v162, v151);
          v110 = v153;
          v111 = v157;
          v112 = v154;
          (*(v153 + 16))(v157, v109, v154);
          v113 = v160;
          swift_storeEnumTagMultiPayload();
          v163(v111);
          (*(v159 + 8))(v111, v113);
          (*(v110 + 8))(v109, v112);
          v114 = *(v79 + 8);
          v114(v104, v78);
          return (v114)(v169, v78);
        }
      }
    }

    else
    {
      v68 = *(v56 + 32);
      v69 = v172;
      v70 = v131;
      (v68)(v172, v50, v131);
      v71 = v57;
      v72 = v57[3];
      v73 = v71[4];
      v74 = __swift_project_boxed_opaque_existential_1(v71, v72);
      v75 = v170[4];
      v76 = v165;
      v77 = v176;
      (*(*v75 + 288))(v69, v74, v72, v73);
      if (v77)
      {
        return (*(v56 + 8))(v69, v70);
      }

      else
      {
        v176 = v68;
        v91 = v70;
        if ((*(v56 + 48))(v76, 1, v70) == 1)
        {
          (*(v132 + 8))(v76, v133);
          v92 = v75[2];
          (*(*(v135 - 8) + 56))(v148, 1, 1);

          v173 = sub_1CF04F1A0();
          v93 = v134;
          v94 = v172;
          (*(v56 + 16))(v134, v172, v70);
          v95 = (*(v56 + 80) + 64) & ~*(v56 + 80);
          v96 = swift_allocObject();
          v97 = v70;
          v98 = v96;
          v99 = v156;
          *(v96 + 16) = v158;
          *(v96 + 32) = v99;
          v100 = v164;
          *(v96 + 48) = v163;
          *(v96 + 56) = v100;
          (v176)(v96 + v95, v93, v97);
          v101 = *(*v92 + 136);

          v102 = v148;
          v103 = v173;
          v101(v94, v148, v173, 0, sub_1CF54F970, v98);

          (*(v137 + 8))(v102, v139);
          return (*(v56 + 8))(v94, v131);
        }

        else
        {
          v115 = v147;
          (v176)(v147, v76, v91);
          v116 = v171;
          *&v174 = v91;
          *(&v174 + 1) = v171;
          v175 = v146;
          type metadata accessor for FPFSID(0, &v174);
          v117 = v129;
          (*(v56 + 16))(v129, v115, v91);
          swift_storeEnumTagMultiPayload();
          v118 = sub_1CF554514(v117);
          v119 = v56;
          v120 = v150;
          (*(v167 + 56))(v150, 1, 1, v116);
          v121 = v151;
          sub_1CF52D5BC(v118, v120, v155, v161, v149, v162, v151);
          v122 = v153;
          v123 = v91;
          v124 = v157;
          v125 = v154;
          (*(v153 + 16))(v157, v121, v154);
          v126 = v160;
          swift_storeEnumTagMultiPayload();
          v163(v124);
          (*(v159 + 8))(v124, v126);
          (*(v122 + 8))(v121, v125);
          v127 = *(v119 + 8);
          v127(v147, v123);
          return (v127)(v172, v123);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1CF52EC50(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19[2] = a3;
  v20 = a2;
  v19[1] = a1;
  v26[0] = a5;
  v26[1] = a6;
  v26[2] = a7;
  v26[3] = a8;
  _s20ParentIDLookupResultVMa(255, v26);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v13 = sub_1CF9E8238();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v19 - v15;
  v21 = a5;
  v22 = a6;
  v23 = a7;
  v24 = a8;
  v25 = a4;
  sub_1CF9E75D8();
  v17 = sub_1CF9E8238();
  sub_1CF52CEEC(sub_1CF54FA24, v17, v16);
  v20(v16);
  return (*(v14 + 8))(v16, v13);
}

void sub_1CF52EDE8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v39 = a2;
  v44 = a1;
  v46 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_1CF9E75D8();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v40 = &v35 - v13;
  v14 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = swift_getAssociatedConformanceWitness();
  v47 = v14;
  v48 = AssociatedTypeWitness;
  v43 = AssociatedConformanceWitness;
  v49 = AssociatedConformanceWitness;
  v50 = v16;
  v35 = v16;
  v37 = type metadata accessor for ReconciliationID(0, &v47);
  MEMORY[0x1EEE9AC00](v37);
  v18 = &v35 - v17;
  v47 = a3;
  v48 = a4;
  v41 = a4;
  v42 = a6;
  v49 = a5;
  v50 = a6;
  v45 = _s20ParentIDLookupResultVMa(0, &v47);
  v38 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v36 = &v35 - v19;
  v20 = sub_1CF9E75D8();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v35 - v22;
  v24 = *(a3 - 8);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v35 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v23, v44, v20, v26);
  if ((*(v24 + 48))(v23, 1, a3) != 1)
  {
    (*(v24 + 32))(v28, v23, a3);
    v47 = v14;
    v48 = AssociatedTypeWitness;
    v49 = v43;
    v50 = v35;
    type metadata accessor for FPFSID(0, &v47);
    (*(a5 + 72))(a3, a5);
    (*(v24 + 8))(v28, a3);
    swift_storeEnumTagMultiPayload();
    v32 = sub_1CF554514(v18);
    v33 = v40;
    (*(*(AssociatedTypeWitness - 8) + 56))(v40, 1, 1, AssociatedTypeWitness);
    v34 = v36;
    sub_1CF52D5BC(v32, v33, a3, v41, a5, v42, v36);
    (*(v38 + 32))(v46, v34, v45);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    sub_1CF9E8238();
    goto LABEL_5;
  }

  v29 = v46;
  (*(v21 + 8))(v23, v20);
  v30 = sub_1CF2CB460(v39, 1, v14, v43);
  v31 = FPItemNotFoundError();

  if (v31)
  {
    *v29 = v31;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    sub_1CF9E8238();
LABEL_5:
    swift_storeEnumTagMultiPayload();
    return;
  }

  __break(1u);
}

uint64_t sub_1CF52F30C(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19[2] = a3;
  v20 = a2;
  v19[1] = a1;
  v26[0] = a5;
  v26[1] = a6;
  v26[2] = a7;
  v26[3] = a8;
  _s20ParentIDLookupResultVMa(255, v26);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v13 = sub_1CF9E8238();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v19 - v15;
  v21 = a5;
  v22 = a6;
  v23 = a7;
  v24 = a8;
  v25 = a4;
  sub_1CF9E75D8();
  v17 = sub_1CF9E8238();
  sub_1CF52CEEC(sub_1CF54FA3C, v17, v16);
  v20(v16);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_1CF52F4A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v55 = a2;
  v58 = a1;
  v60 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_1CF9E75D8();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v54 = &v44 - v13;
  v14 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = swift_getAssociatedConformanceWitness();
  v51 = v14;
  v61 = v14;
  v62 = AssociatedTypeWitness;
  v49 = AssociatedConformanceWitness;
  v63 = AssociatedConformanceWitness;
  v64 = v16;
  v47 = v16;
  v50 = type metadata accessor for ReconciliationID(0, &v61);
  MEMORY[0x1EEE9AC00](v50);
  v48 = &v44 - v17;
  v56 = a3;
  v57 = a5;
  v61 = a3;
  v62 = a4;
  v63 = a5;
  v64 = a6;
  v59 = _s20ParentIDLookupResultVMa(0, &v61);
  v53 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v52 = &v44 - v18;
  v19 = swift_getAssociatedTypeWitness();
  v20 = swift_getAssociatedTypeWitness();
  v21 = swift_getAssociatedConformanceWitness();
  v22 = swift_getAssociatedConformanceWitness();
  v61 = v19;
  v62 = v20;
  v63 = v21;
  v64 = v22;
  v23 = type metadata accessor for FileItemVersion(255, &v61);
  v24 = sub_1CF9E75D8();
  v45 = *(v24 - 8);
  v46 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v44 - v25;
  v27 = sub_1CF9E75D8();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v44 - v29;
  v31 = *(a4 - 8);
  v33 = MEMORY[0x1EEE9AC00](v32);
  v35 = &v44 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v30, v58, v27, v33);
  if ((*(v31 + 48))(v30, 1, a4) == 1)
  {
    (*(v28 + 8))(v30, v27);
    (*(*(v23 - 8) + 56))(v26, 1, 1, v23);
    type metadata accessor for FileTreeError(0, a4, a6, v36);
    swift_getWitnessTable();
    v37 = swift_allocError();
    sub_1CF72C4D8(v55, v26, 0, a4, a6, v38);
    (*(v45 + 8))(v26, v46);
    *v60 = v37;
  }

  else
  {
    (*(v31 + 32))(v35, v30, a4);
    v61 = v51;
    v62 = AssociatedTypeWitness;
    v63 = v49;
    v64 = v47;
    type metadata accessor for FPFSID(0, &v61);
    v39 = v48;
    (*(a6 + 72))(a4, a6);
    swift_storeEnumTagMultiPayload();
    v40 = sub_1CF554514(v39);
    v41 = v54;
    (*(a6 + 64))(a4, a6);
    (*(v31 + 8))(v35, a4);
    (*(*(AssociatedTypeWitness - 8) + 56))(v41, 0, 1, AssociatedTypeWitness);
    v42 = v52;
    sub_1CF52D5BC(v40, v41, v56, a4, v57, a6, v52);
    (*(v53 + 32))(v60, v42, v59);
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  sub_1CF9E8238();
  return swift_storeEnumTagMultiPayload();
}

double sub_1CF52FB88(uint64_t a1, char a2, char a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *v6;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = v6;
  *(v14 + 32) = a3;
  *(v14 + 33) = a2;
  *(v14 + 40) = a5;
  *(v14 + 48) = a6;
  *(v14 + 56) = a4;

  sub_1CEFD09A0(a4);
  v15 = *(v13 + 632);
  v18[0] = *(v13 + 616);
  v18[1] = v15;
  type metadata accessor for ItemLookupResult(255, v18);
  v16 = sub_1CF9E75D8();
  sub_1CF92DB1C("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, a5, a6, sub_1CF54EC10, v14, v16);

  return result;
}

uint64_t sub_1CF52FCCC(NSObject *a1, void *a2, void *a3, int a4, int a5, void (*a6)(char *), uint64_t a7, unint64_t a8)
{
  v197 = a8;
  v194 = a6;
  v195 = a7;
  v163 = a5;
  v173 = a4;
  v205 = a1;
  v201 = *a2;
  v8 = v201;
  v202 = a2;
  v203 = v201;
  v208 = a3;
  v10 = *(*a3 + 624);
  v11 = *(*a3 + 632);
  v12 = *(*a3 + 640);
  *&v206 = *(*a3 + 616);
  v9 = v206;
  *(&v206 + 1) = v10;
  *&v207 = v11;
  *(&v207 + 1) = v12;
  v193 = type metadata accessor for ItemLookupResult(255, &v206);
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v13 = sub_1CF9E8238();
  v191 = *(v13 - 8);
  v192 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v190 = &v160 - v14;
  v189 = sub_1CF9E6118();
  v188 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189);
  v200 = &v160 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v8 + 88);
  v196 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v178 = &v160 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v187 = &v160 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v198 = &v160 - v22;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v26 = swift_getAssociatedConformanceWitness();
  *&v206 = AssociatedTypeWitness;
  *(&v206 + 1) = v24;
  *&v207 = AssociatedConformanceWitness;
  *(&v207 + 1) = v26;
  v167 = type metadata accessor for FileItemVersion(255, &v206);
  v169 = sub_1CF9E75D8();
  v168 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169);
  v179 = &v160 - v27;
  v185 = v9;
  *&v206 = v9;
  *(&v206 + 1) = v10;
  v183 = v10;
  v184 = v11;
  *&v207 = v11;
  *(&v207 + 1) = v12;
  v182 = v12;
  v28 = type metadata accessor for ItemReconciliation(255, &v206);
  v165 = sub_1CF9E75D8();
  v164 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v177 = &v160 - v29;
  v172 = v28;
  v171 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v166 = &v160 - v31;
  v199 = sub_1CF9E75D8();
  v181 = *(v199 - 8);
  v32 = *(v181 + 64);
  MEMORY[0x1EEE9AC00](v199);
  v175 = &v160 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v170 = &v160 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v176 = &v160 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v186 = &v160 - v38;
  v39 = *(v201 + 80);
  v201 = *(v39 - 1);
  v40 = *(v201 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v174 = &v160 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v160 - v43;
  v45 = *(v203 + 96);
  *&v46 = v39;
  v203 = v16;
  *(&v46 + 1) = v16;
  v180 = v45;
  v207 = v45;
  v206 = v46;
  v47 = type metadata accessor for ReconciliationID(0, &v206);
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v160 - v48;
  isa = v205[3].isa;
  v51 = v205[4].isa;
  v52 = __swift_project_boxed_opaque_existential_1(v205, isa);
  v53 = v204;
  result = sub_1CF554678(v208, 0, v52, isa, v51, v49);
  if (v53)
  {
    return result;
  }

  v160 = v40;
  v161 = v32;
  v162 = v44;
  v55 = v200;
  v56 = v201;
  v202 = v39;
  v57 = v199;
  v58 = v197;
  v59 = v203;
  v204 = 0;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v60 = v196;
    v61 = v198;
    v62 = v59;
    (*(v196 + 32))(v198, v49, v59);
    v63 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v64 = *(v60 + 16);
    v65 = v187;
    v64(v187, v61, v62);
    v66 = v58;
    sub_1CEFD09A0(v58);
    sub_1CEFD09A0(v58);
    v67 = sub_1CF9E6108();
    v68 = sub_1CF9E7298();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v208 = v70;
      *v69 = 136315394;
      v205 = v67;
      *&v206 = v70;
      v71 = v178;
      v64(v178, v65, v62);
      v72 = *(v60 + 8);
      v72(v65, v62);
      v73 = sub_1CF9E7F98();
      LODWORD(v202) = v68;
      v74 = v73;
      v76 = v75;
      v72(v71, v62);
      v77 = sub_1CEFD0DF0(v74, v76, &v206);
      v76, v78, v79, v80, v81, v82, v83, v84;
      *(v69 + 4) = v77;
      *(v69 + 12) = 2080;
      v85 = sub_1CF665B0C(v66, v183, v185, v182, v184);
      v87 = v86;
      sub_1CF540FDC(v66);
      sub_1CF540FDC(v66);
      v88 = sub_1CEFD0DF0(v85, v87, &v206);
      v87, v89, v90, v91, v92, v93, v94, v95;
      *(v69 + 14) = v88;
      v96 = v205;
      _os_log_impl(&dword_1CEFC7000, v205, v202, "no vfsItemID found for item %s, request %s", v69, 0x16u);
      v97 = v208;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v97, -1, -1);
      MEMORY[0x1D386CDC0](v69, -1, -1);

      (*(v188 + 8))(v200, v189);
    }

    else
    {
      v114 = sub_1CF540FDC(v66);
      v72 = *(v60 + 8);
      (v72)(v65, v62, v114);
      sub_1CF540FDC(v66);

      (*(v188 + 8))(v55, v189);
    }

    v115 = v194;
    v116 = v192;
    v118 = v190;
    v117 = v191;
    (*(*(v193 - 8) + 56))(v190, 1, 1);
    swift_storeEnumTagMultiPayload();
    v115(v118);
    (*(v117 + 8))(v118, v116);
    return (v72)(v198, v62);
  }

  v98 = v162;
  v200 = *(v56 + 32);
  (v200)(v162, v49, v202);
  v99 = v208;
  v100 = sub_1CF04590C();
  v102 = v205[3].isa;
  v101 = v205[4].isa;
  v103 = __swift_project_boxed_opaque_existential_1(v205, v102);
  v104 = v99[2];
  if ((v100 & 1) == 0)
  {
    v119 = v176;
    v120 = v204;
    (*(*v104 + 160))(v98, v103, v102, v101);
    v204 = v120;
    if (!v120)
    {
      v122 = v181;
      v123 = v119;
      v124 = v186;
      v110 = v57;
      (*(v181 + 32))(v186, v123, v57);
      v125 = v170;
      (*(v122 + 16))(v170, v124, v110);
      LODWORD(v203) = (*(v196 + 48))(v125, 1, v59) != 1;
      (*(v122 + 8))(v125, v110);
      LODWORD(v198) = 0;
      v109 = v208;
LABEL_21:
      v136 = v205;
      v137 = v179;
      goto LABEL_24;
    }

LABEL_13:
    v121 = v202;
    return (*(v56 + 8))(v98, v121);
  }

  v105 = v177;
  v106 = v204;
  sub_1CF68DDB0(v98, v103, v102, v101, v177);
  v204 = v106;
  if (v106)
  {
    goto LABEL_13;
  }

  v107 = v171;
  v108 = v172;
  if ((*(v171 + 48))(v105, 1, v172) == 1)
  {
    (*(v164 + 8))(v105, v165);
    v109 = v208;
    v110 = v57;
    if (v173)
    {
      v111 = 0;
      v112 = v196;
      v113 = v186;
    }

    else
    {
      v135 = (*(v180 + 64))(v202);
      v111 = 0;
      v112 = v196;
      v113 = v186;
      if ((v135 & 1) == 0 && (v163 & 1) == 0)
      {
        v111 = sub_1CF04590C();
      }
    }

    LODWORD(v198) = v111;
    (*(v112 + 56))(v113, 1, 1, v59);
    LODWORD(v203) = 0;
    goto LABEL_21;
  }

  v126 = v166;
  (*(v107 + 32))(v166, v105, v108);
  v127 = v185;
  v128 = v184;
  v130 = type metadata accessor for ItemReconciliationHalf(0, v185, v184, v129);
  v131 = v126;
  v132 = v126[*(v130 + 56)];
  LODWORD(v203) = v132 == 6;
  v133 = v183;
  v134 = v208;
  v110 = v57;
  if (v173)
  {
    LODWORD(v198) = 0;
  }

  else
  {
    LODWORD(v198) = sub_1CF54EDA0(v162, v132, v127, v183, v128);
    v131 = v166;
  }

  v138 = v205;
  v137 = v179;
  v139 = v131;
  (*(v181 + 16))(v186, &v131[*(v108 + 52)], v110, v133);
  (*(v107 + 8))(v139, v108);
  v136 = v138;
  v109 = v134;
LABEL_24:
  v140 = v136[3].isa;
  v141 = v136[4].isa;
  v142 = __swift_project_boxed_opaque_existential_1(v136, v140);
  v143 = v109[4];
  v144 = v162;
  v145 = v204;
  (*(*v143 + 656))(v162, v142, v140, v141);
  v204 = v145;
  if (v145)
  {
    (*(v181 + 8))(v186, v110);
    v121 = v202;
    v98 = v144;
    return (*(v56 + 8))(v98, v121);
  }

  v146 = (*(*(v167 - 8) + 48))(v137, 1);
  v147 = 3;
  if (v146 == 1)
  {
    v147 = 515;
  }

  v205 = v147;
  v197 = v143[2];

  v208 = sub_1CF04F1A0();
  (*(v56 + 16))(v174, v144, v202);
  v148 = v181;
  (*(v181 + 16))(v175, v186, v110);
  v149 = (*(v56 + 80) + 64) & ~*(v56 + 80);
  v150 = (v160 + *(v148 + 80) + v149) & ~*(v148 + 80);
  v151 = v150 + v161;
  v152 = swift_allocObject();
  v153 = v183;
  *(v152 + 2) = v185;
  *(v152 + 3) = v153;
  v154 = v182;
  *(v152 + 4) = v184;
  *(v152 + 5) = v154;
  v155 = v195;
  *(v152 + 6) = v194;
  *(v152 + 7) = v155;
  (v200)(&v152[v149], v174, v202);
  (*(v148 + 32))(&v152[v150], v175, v199);
  v156 = &v152[v151];
  *v156 = v198 & 1;
  v156[1] = v203;
  v157 = *(*v197 + 136);

  v158 = v179;
  v159 = v208;
  v157(v144, v179, v208, v205, sub_1CF54EC3C, v152);

  (*(v148 + 8))(v186, v199);
  (*(v56 + 8))(v144, v202);
  return (*(v168 + 8))(v158, v169);
}

uint64_t sub_1CF530E9C(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21 = a6;
  v22 = a7;
  v20 = a5;
  v24 = a3;
  v25 = a2;
  v23 = a1;
  v34[0] = a8;
  v34[1] = a9;
  v34[2] = a10;
  v34[3] = a11;
  type metadata accessor for ItemLookupResult(255, v34);
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v13 = sub_1CF9E8238();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v19 - v15;
  v26 = a8;
  v27 = a9;
  v28 = a10;
  v29 = a11;
  v30 = a4;
  v31 = v20;
  v32 = v21;
  v33 = v22;
  sub_1CF9E75D8();
  v17 = sub_1CF9E8238();
  sub_1CF52CEEC(sub_1CF54EE78, v17, v16);
  v25(v16);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_1CF531054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10)
{
  v66 = a5;
  v64 = a4;
  v63 = a3;
  v65 = a2;
  v67 = a1;
  v69 = a9;
  v57 = type metadata accessor for ItemMetadata(0);
  MEMORY[0x1EEE9AC00](v57);
  v55 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v56 = &v54 - v15;
  v70 = a10;
  v68 = a7;
  swift_getAssociatedTypeWitness();
  v16 = sub_1CF9E75D8();
  v61 = *(v16 - 8);
  v62 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v60 = &v54 - v17;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v21 = swift_getAssociatedConformanceWitness();
  v71 = AssociatedTypeWitness;
  v72 = v19;
  v73 = AssociatedConformanceWitness;
  v74 = v21;
  v22 = type metadata accessor for FileItemVersion(255, &v71);
  v23 = sub_1CF9E75D8();
  v58 = *(v23 - 8);
  v59 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v54 - v24;
  v26 = sub_1CF9E75D8();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v54 - v28;
  v30 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v54 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v34);
  v37 = &v54 - v36;
  (*(v27 + 16))(v29, v67, v26, v35);
  if ((*(v30 + 48))(v29, 1, a6) == 1)
  {
    (*(v27 + 8))(v29, v26);
    (*(*(v22 - 8) + 56))(v25, 1, 1, v22);
    type metadata accessor for FileTreeError(0, a6, a8, v38);
    swift_getWitnessTable();
    v39 = swift_allocError();
    sub_1CF72C4D8(v65, v25, 0, a6, a8, v40);
    (*(v58 + 8))(v25, v59);
    v41 = v68;
    *v69 = v39;
    v71 = a6;
    v72 = v41;
    v73 = a8;
    v74 = v70;
    type metadata accessor for ItemLookupResult(255, &v71);
    sub_1CF9E75D8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    sub_1CF9E8238();
  }

  else
  {
    (*(v30 + 32))(v37, v29, a6);
    (*(v30 + 16))(v33, v37, a6);
    v42 = v60;
    (*(v61 + 16))();
    if ((v64 & 1) != 0 && (v43 = *(a8 + 104), v44 = v56, v43(a6, a8), v45 = *(v44 + *(v57 + 64)), sub_1CF007C58(v44, type metadata accessor for ItemMetadata), (v45 & 1) == 0))
    {
      v47 = v55;
      v43(a6, a8);
      (*(v30 + 8))(v37, a6);
      v48 = *(v47 + *(v57 + 68));
      sub_1CF007C58(v47, type metadata accessor for ItemMetadata);
      if (v48 == 2)
      {
        v46 = 1;
      }

      else
      {
        v46 = v48 ^ 1;
      }
    }

    else
    {
      (*(v30 + 8))(v37, a6);
      v46 = 0;
    }

    v49 = v68;
    v50 = v69;
    v51 = v70;
    sub_1CF52D49C(v33, v42, v46 & 1, v66 & 1, a6, v68, a8, v70, v69);
    v71 = a6;
    v72 = v49;
    v73 = a8;
    v74 = v51;
    v52 = type metadata accessor for ItemLookupResult(0, &v71);
    (*(*(v52 - 8) + 56))(v50, 0, 1, v52);
    sub_1CF9E75D8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    sub_1CF9E8238();
  }

  return swift_storeEnumTagMultiPayload();
}

void sub_1CF531774(void *a1, _BYTE *a2, unint64_t a3, void *a4, unint64_t a5, void (*a6)(_BYTE *, uint64_t))
{
  v118 = a5;
  v119 = a6;
  v120 = a1;
  v128 = *a4;
  v9 = sub_1CF9E5CF8();
  v124 = *(v9 - 8);
  v125 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v122 = &v104[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = v128[80];
  v121 = a4;
  v12 = v128[78];
  v117 = v11;
  v126 = v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v110 = &v104[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v104[-v17];
  v127 = sub_1CF9E6118();
  v115 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v111 = &v104[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v109 = &v104[-v21];
  MEMORY[0x1EEE9AC00](v22);
  v116 = &v104[-v23];
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v104[-v25];
  v27 = [objc_allocWithZone(FPLoggerScope) init];
  v28 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v29 = *(v14 + 16);
  v123 = a2;
  v29(v18, a2, AssociatedTypeWitness);
  sub_1CEFD09A0(a3);
  v129 = a3;
  sub_1CEFD09A0(a3);
  v30 = v27;
  v114 = v26;
  v31 = sub_1CF9E6108();
  v32 = sub_1CF9E7298();

  v33 = os_log_type_enabled(v31, v32);
  v112 = v30;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v107 = v31;
    v35 = v34;
    v36 = swift_slowAlloc();
    v106 = v36;
    v108 = swift_slowAlloc();
    v130[0] = v108;
    *v35 = 138412802;
    v37 = [v30 enter];
    *(v35 + 4) = v37;
    *v36 = v37;
    *(v35 + 12) = 2080;
    v105 = v32;
    v38 = v110;
    v29(v110, v18, AssociatedTypeWitness);
    v39 = *(v14 + 8);
    v39(v18, AssociatedTypeWitness);
    v40 = v117;
    v41 = v126;
    swift_getAssociatedConformanceWitness();
    v42 = sub_1CF9E7F98();
    v44 = v43;
    v39(v38, AssociatedTypeWitness);
    v45 = sub_1CEFD0DF0(v42, v44, v130);
    v44, v46, v47, v48, v49, v50, v51, v52;
    *(v35 + 14) = v45;
    *(v35 + 22) = 2080;
    v53 = v129;
    v54 = v128[77];
    v55 = v41;
    v56 = v54;
    v128 = v128[79];
    v57 = sub_1CF665B0C(v129, v55, v54, v40, v128);
    v59 = v58;
    sub_1CF540FDC(v53);
    sub_1CF540FDC(v53);
    v60 = sub_1CEFD0DF0(v57, v59, v130);
    v59, v61, v62, v63, v64, v65, v66, v67;
    *(v35 + 24) = v60;
    v68 = v107;
    _os_log_impl(&dword_1CEFC7000, v107, v105, "%@ 🥄 Request to propagate item with ID %s for %s", v35, 0x20u);
    v69 = v106;
    sub_1CEFCCC44(v106, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v69, -1, -1);
    v70 = v108;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v70, -1, -1);
    MEMORY[0x1D386CDC0](v35, -1, -1);

    v71 = *(v115 + 8);
    v72 = (v115 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v73 = v127;
    v71(v114, v127);
    v74 = v40;
  }

  else
  {
    v53 = v129;
    v75 = sub_1CF540FDC(v129);
    (*(v14 + 8))(v18, AssociatedTypeWitness, v75);
    sub_1CF540FDC(v53);

    v71 = *(v115 + 8);
    v72 = (v115 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v73 = v127;
    v71(v114, v127);
    v56 = v128[77];
    v128 = v128[79];
    v74 = v117;
  }

  v76 = v126;
  v117 = sub_1CF66523C(v53, v126, v56, v74, v128);
  v115 = v77;
  v78 = fpfs_current_or_default_log();
  v79 = v116;
  sub_1CF9E6128();
  v80 = sub_1CF9E7298();
  v81 = sub_1CF19C478(v80, "propagation to FS", 17, 2, v118, v119);
  v83 = v82;
  v118 = v72;
  v119 = v71;
  v71(v79, v73);
  v84 = v74;
  v85 = v123;
  v86 = v115;
  sub_1CF5A9774(v123, v129, v115, v81, v83);

  v87 = v120[3];
  v129 = v120[4];
  v88 = __swift_project_boxed_opaque_existential_1(v120, v87);
  sub_1CF0537A0();
  v130[0] = v76;
  v130[1] = v56;
  v130[2] = v84;
  v130[3] = v128;
  type metadata accessor for Ingestion.FetchItemMetadata(0, v130);
  v89 = sub_1CF656F5C(v85, v117, v86, 0x800000);
  v90 = v122;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v92 = v91;
  (*(v124 + 8))(v90, v125);
  v93 = v92 * 1000000000.0;
  if (COERCE__INT64(fabs(v92 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v93 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v93 < 9.22337204e18)
  {
    v94 = v113;
    sub_1CF5215C0(v89, v93, v88, v87, v129);
    if (v94)
    {

      v95 = fpfs_current_or_default_log();
      v96 = v111;
      sub_1CF9E6128();
      v97 = v112;
      v98 = sub_1CF9E6108();
      v99 = sub_1CF9E7298();

      if (os_log_type_enabled(v98, v99))
      {
        goto LABEL_11;
      }
    }

    else
    {

      v100 = fpfs_current_or_default_log();
      v96 = v109;
      sub_1CF9E6128();
      v97 = v112;
      v98 = sub_1CF9E6108();
      v99 = sub_1CF9E7298();

      if (os_log_type_enabled(v98, v99))
      {
LABEL_11:
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        *v101 = 138412290;
        v103 = [v97 leave];
        *(v101 + 4) = v103;
        *v102 = v103;
        _os_log_impl(&dword_1CEFC7000, v98, v99, "%@", v101, 0xCu);
        sub_1CEFCCC44(v102, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v102, -1, -1);
        MEMORY[0x1D386CDC0](v101, -1, -1);
      }
    }

    v119(v96, v127);
    return;
  }

LABEL_15:
  __break(1u);
}

void sub_1CF532130(void *a1, void (*a2)(void, void, void), unint64_t a3, void *a4, uint64_t a5, void (*a6)(char *, uint64_t))
{
  v124 = a5;
  v125 = a6;
  v126 = a1;
  v121 = *a4;
  v9 = sub_1CF9E5CF8();
  v129 = *(v9 - 8);
  v130 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v127 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v121[79];
  v131 = a4;
  v12 = v121[77];
  v133 = v11;
  v135 = v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v116 = &v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v111 - v17;
  v132 = sub_1CF9E6118();
  v122 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v117 = &v111 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v115 = &v111 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v123 = &v111 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v111 - v25;
  v27 = [objc_allocWithZone(FPLoggerScope) init];
  v28 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v29 = *(v14 + 16);
  v128 = a2;
  (v29)(v18, a2, AssociatedTypeWitness);
  sub_1CEFD09A0(a3);
  v134 = a3;
  sub_1CEFD09A0(a3);
  v30 = v27;
  v120 = v26;
  v31 = sub_1CF9E6108();
  v32 = sub_1CF9E7298();

  v33 = os_log_type_enabled(v31, v32);
  v118 = v30;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v111 = v29;
    v36 = v35;
    v113 = v35;
    v114 = swift_slowAlloc();
    v136[0] = v114;
    *v34 = 138412802;
    v37 = [v30 enter];
    *(v34 + 4) = v37;
    *v36 = v37;
    *(v34 + 12) = 2080;
    v112 = v32;
    v38 = v116;
    (v111)(v116, v18, AssociatedTypeWitness);
    v39 = *(v14 + 8);
    v39(v18, AssociatedTypeWitness);
    v111 = v31;
    v40 = v133;
    v41 = v135;
    swift_getAssociatedConformanceWitness();
    v42 = sub_1CF9E7F98();
    v44 = v43;
    v39(v38, AssociatedTypeWitness);
    v45 = sub_1CEFD0DF0(v42, v44, v136);
    v44, v46, v47, v48, v49, v50, v51, v52;
    *(v34 + 14) = v45;
    *(v34 + 22) = 2080;
    v53 = v121[78];
    v54 = v134;
    v55 = v41;
    v56 = v53;
    v57 = v40;
    v121 = v121[80];
    v58 = sub_1CF665B0C(v134, v55, v53, v40, v121);
    v60 = v59;
    sub_1CF540FDC(v54);
    sub_1CF540FDC(v54);
    v61 = sub_1CEFD0DF0(v58, v60, v136);
    v60, v62, v63, v64, v65, v66, v67, v68;
    *(v34 + 24) = v61;
    v69 = v111;
    _os_log_impl(&dword_1CEFC7000, v111, v112, "%@ 🥄 Request to propagate item with ID %s for %s", v34, 0x20u);
    v70 = v113;
    sub_1CEFCCC44(v113, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v70, -1, -1);
    v71 = v114;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v71, -1, -1);
    MEMORY[0x1D386CDC0](v34, -1, -1);

    v72 = *(v122 + 8);
    v73 = (v122 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v74 = v132;
    v72(v120, v132);
    v75 = v57;
  }

  else
  {
    v76 = v134;
    v77 = sub_1CF540FDC(v134);
    (*(v14 + 8))(v18, AssociatedTypeWitness, v77);
    sub_1CF540FDC(v76);

    v72 = *(v122 + 8);
    v73 = (v122 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v74 = v132;
    v72(v120, v132);
    v56 = v121[78];
    v121 = v121[80];
    v75 = v133;
  }

  v78 = v134;
  v79 = v121;
  v122 = sub_1CF66523C(v134, v135, v56, v75, v121);
  v120 = v80;
  v81 = fpfs_current_or_default_log();
  v82 = v123;
  sub_1CF9E6128();
  v83 = sub_1CF9E7298();
  v84 = sub_1CF19C478(v83, "propagation to FP", 17, 2, v124, v125);
  v86 = v85;
  v124 = v73;
  v125 = v72;
  v72(v82, v74);
  v87 = v128;
  v88 = v78;
  v89 = v120;
  sub_1CF5978E4(v128, v88, v120, v84, v86);

  v90 = v126[3];
  v91 = v126[4];
  v92 = __swift_project_boxed_opaque_existential_1(v126, v90);
  v136[0] = v135;
  v136[1] = v56;
  v136[2] = v133;
  v136[3] = v79;
  type metadata accessor for Ingestion.FetchItemMetadata(0, v136);
  v93 = sub_1CF656F5C(v87, v122, v89, 0x800000);
  v94 = v127;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v96 = v95;
  (*(v129 + 8))(v94, v130);
  v97 = v96 * 1000000000.0;
  if (COERCE__INT64(fabs(v96 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v97 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v97 < 9.22337204e18)
  {
    v98 = v119;
    sub_1CF5215C0(v93, v97, v92, v90, v91);
    if (v98)
    {

      v99 = fpfs_current_or_default_log();
      v100 = v117;
      sub_1CF9E6128();
      v101 = v118;
      v102 = sub_1CF9E6108();
      v103 = sub_1CF9E7298();

      v104 = os_log_type_enabled(v102, v103);
      v105 = v125;
      if (v104)
      {
        goto LABEL_11;
      }
    }

    else
    {

      v106 = fpfs_current_or_default_log();
      v100 = v115;
      sub_1CF9E6128();
      v101 = v118;
      v102 = sub_1CF9E6108();
      v103 = sub_1CF9E7298();

      v107 = os_log_type_enabled(v102, v103);
      v105 = v125;
      if (v107)
      {
LABEL_11:
        v108 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        *v108 = 138412290;
        v110 = [v101 leave];
        *(v108 + 4) = v110;
        *v109 = v110;
        _os_log_impl(&dword_1CEFC7000, v102, v103, "%@", v108, 0xCu);
        sub_1CEFCCC44(v109, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v109, -1, -1);
        MEMORY[0x1D386CDC0](v108, -1, -1);
      }
    }

    v105(v100, v132);
    return;
  }

LABEL_15:
  __break(1u);
}

double sub_1CF532AE0(uint64_t a1, int a2, int a3, char a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v60 = a6;
  v59 = a3;
  LODWORD(v12) = a2;
  v56 = *v7;
  v14 = sub_1CF9E6118();
  v57 = *(v14 - 8);
  v58 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFD09A0(a5);
  sub_1CEFD09A0(a5);

  v18 = sub_1CF9E6108();
  v19 = sub_1CF9E7298();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v55 = a7;
    v21 = v20;
    v22 = swift_slowAlloc();
    v53 = v22;
    v61 = v22;
    *v21 = 136315394;
    v23 = sub_1CF554E8C(v22);
    v54 = v12;
    v24 = v8;
    v25 = a4;
    v27 = v26;

    v28 = sub_1CEFD0DF0(v23, v27, &v61);
    v29 = v27;
    a4 = v25;
    v8 = v24;
    v29, v30, v31, v32, v33, v34, v35, v36;
    *(v21 + 4) = v28;
    *(v21 + 12) = 2080;
    v37 = sub_1CF665B0C(a5, v56[78], v56[77], v56[80], v56[79]);
    v12 = v38;
    sub_1CF540FDC(a5);
    sub_1CF540FDC(a5);
    v39 = sub_1CEFD0DF0(v37, v12, &v61);
    v40 = v12;
    LOBYTE(v12) = v54;
    v40, v41, v42, v43, v44, v45, v46, v47;
    *(v21 + 14) = v39;
    _os_log_impl(&dword_1CEFC7000, v18, v19, "looking up VFS item for %s request %s", v21, 0x16u);
    v48 = v53;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v48, -1, -1);
    v49 = v21;
    a7 = v55;
    MEMORY[0x1D386CDC0](v49, -1, -1);
  }

  else
  {
    sub_1CF540FDC(a5);
    sub_1CF540FDC(a5);
  }

  (*(v57 + 8))(v16, v58);
  v50 = swift_allocObject();
  *(v50 + 16) = a1;
  *(v50 + 24) = a5;
  *(v50 + 32) = v60;
  *(v50 + 40) = a7;
  *(v50 + 48) = v59 & 1;
  *(v50 + 56) = v8;
  *(v50 + 64) = v12 & 1;
  *(v50 + 65) = a4 & 1;
  sub_1CEFD09A0(a5);

  sub_1CF52FB88(a1, v12 & 1, a4 & 1, a5, sub_1CF54FEFC, v50);

  return result;
}

uint64_t sub_1CF532E4C(_BYTE *a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, int a6, void *a7, int a8, unsigned __int8 a9)
{
  v127 = a8;
  v9 = a7;
  v119 = a6;
  v143 = a4;
  v144 = a5;
  v13 = *a7;
  v133 = *(*(*a2 + 88) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v120 = &v114[-v14];
  v123 = *(v15 + 80);
  v122 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v121 = &v114[-v17];
  v128 = v18;
  v125 = sub_1CF9E75D8();
  v124 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v126 = &v114[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v118 = &v114[-v21];
  v22 = v13[77];
  v23 = v13[79];
  v24 = v13[80];
  v137 = v13[78];
  v138 = v22;
  v147[0] = v22;
  v147[1] = v137;
  v135 = v24;
  v136 = v23;
  v147[2] = v23;
  v147[3] = v24;
  v25 = type metadata accessor for ItemLookupResult(0, v147);
  v131 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v145 = &v114[-v26];
  v132 = v27;
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v28 = sub_1CF9E8238();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v141 = &v114[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v31);
  v130 = &v114[-v32];
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v114[-v34];
  v36 = sub_1CF9E6118();
  v139 = *(v36 - 8);
  v140 = v36;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v114[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v39 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v40 = *(v29 + 16);
  v142 = a1;
  v146 = v40;
  v40(v35, a1, v28);
  sub_1CEFD09A0(a3);
  sub_1CEFD09A0(a3);

  v41 = sub_1CF9E6108();
  v42 = sub_1CF9E7298();
  v43 = os_log_type_enabled(v41, v42);
  v134 = a3;
  v129 = a2;
  if (v43)
  {
    v44 = swift_slowAlloc();
    v117 = v9;
    v45 = v44;
    v46 = swift_slowAlloc();
    v116 = v46;
    v147[0] = v46;
    *v45 = 136315650;
    v115 = v42;
    v47 = sub_1CF554E8C(v46);
    v49 = v48;

    v50 = sub_1CEFD0DF0(v47, v49, v147);
    v49, v51, v52, v53, v54, v55, v56, v57;
    *(v45 + 4) = v50;
    *(v45 + 12) = 2080;
    v58 = sub_1CF665B0C(a3, v137, v138, v135, v136);
    v60 = v59;
    sub_1CF540FDC(a3);
    sub_1CF540FDC(a3);
    v61 = sub_1CEFD0DF0(v58, v60, v147);
    v60, v62, v63, v64, v65, v66, v67, v68;
    *(v45 + 14) = v61;
    *(v45 + 22) = 2080;
    v146(v130, v35, v28);
    v69 = sub_1CF9E6948();
    v71 = v70;
    v72 = *(v29 + 8);
    v72(v35, v28);
    v73 = sub_1CEFD0DF0(v69, v71, v147);
    v71, v74, v75, v76, v77, v78, v79, v80;
    *(v45 + 24) = v73;
    _os_log_impl(&dword_1CEFC7000, v41, v115, "finished VFS item lookup for %s request %s: %s", v45, 0x20u);
    v81 = v116;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v81, -1, -1);
    v82 = v45;
    v9 = v117;
    MEMORY[0x1D386CDC0](v82, -1, -1);
  }

  else
  {
    sub_1CF540FDC(a3);

    sub_1CF540FDC(a3);

    v72 = *(v29 + 8);
    v72(v35, v28);
  }

  (*(v139 + 8))(v38, v140);
  v83 = v141;
  v84 = v142;
  v146(v141, v142, v28);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v86 = v145;
  if (EnumCaseMultiPayload == 1)
  {
    v72(v83, v28);
    return v143(v84);
  }

  v88 = a9;
  v89 = v131;
  v90 = v132;
  if ((*(v131 + 48))(v83, 1, v132) == 1)
  {
    v91 = v126;
    v92 = v129;
    sub_1CF5557D8(v126);
    v93 = v133;
    v94 = v128;
    v95 = (*(v133 + 48))(v91, 1, v128);
    v96 = v134;
    if (v95 != 1)
    {
      v104 = v120;
      (*(v93 + 32))(v120, v91, v94);
      v105 = swift_allocObject();
      *(v105 + 16) = v92;
      *(v105 + 24) = v96;
      v106 = v144;
      *(v105 + 32) = v143;
      *(v105 + 40) = v106;
      *(v105 + 48) = v9;
      *(v105 + 56) = v127 & 1;
      *(v105 + 57) = a9 & 1;
      sub_1CEFD09A0(v96);

      sub_1CF52C93C(v104, v96, sub_1CF54FF38, v105);

      return (*(v93 + 8))(v104, v94);
    }

    (*(v124 + 8))(v91, v125);
    return v143(v84);
  }

  (*(v89 + 32))(v86, v83, v90);
  v97 = v133;
  v98 = v134;
  if ((v86[*(v90 + 56)] & 1) != 0 || (v119 & 1) != 0 && (v107 = v124, v108 = *(v124 + 16), v109 = &v86[*(v90 + 52)], LODWORD(v146) = a9, v110 = v118, v111 = v125, v108(v118, v109, v125), v112 = (*(v97 + 48))(v110, 1, v128), v113 = v110, v88 = v146, (*(v107 + 8))(v113, v111), v112 == 1))
  {
    v99 = v121;
    (*(v136 + 64))(v138, v136);
    v100 = sub_1CF6651BC(v98);
    v101 = swift_allocObject();
    *(v101 + 16) = v129;
    *(v101 + 24) = v98;
    v102 = v144;
    *(v101 + 32) = v143;
    *(v101 + 40) = v102;
    *(v101 + 48) = v9;
    *(v101 + 56) = v127 & 1;
    *(v101 + 57) = v88 & 1;
    sub_1CEFD09A0(v98);

    sub_1CF52BEB4(v99, v100, sub_1CF54FFA0, v101);

    v103 = sub_1CF540FDC(v100);
    (*(v122 + 8))(v99, v123, v103);
    return (*(v89 + 8))(v145, v90);
  }

  else
  {
    v143(v84);
    return (*(v89 + 8))(v86, v90);
  }
}

double sub_1CF533960(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, void (*a5)(void *), uint64_t a6, uint64_t *a7, int a8, char a9)
{
  v83 = a8;
  v91 = a5;
  v92 = a6;
  v12 = *(*a7 + 616);
  v13 = *(*a7 + 624);
  v14 = *a7;
  v15 = *(*a7 + 632);
  v80 = a7;
  v16 = *(v14 + 640);
  v94[0] = v12;
  v94[1] = v13;
  v89 = v16;
  v90 = v15;
  v94[2] = v15;
  v94[3] = v16;
  type metadata accessor for ItemLookupResult(255, v94);
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v17 = sub_1CF9E8238();
  v85 = *(v17 - 8);
  v86 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v84 = (&v77 - v18);
  v19 = sub_1CF9E6118();
  v87 = *(v19 - 8);
  v88 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFD09A0(a4);
  sub_1CEFD09A0(a4);
  v23 = a3;

  v24 = a2;
  v25 = sub_1CF9E6108();
  v26 = sub_1CF9E7298();

  v27 = os_log_type_enabled(v25, v26);
  v81 = v13;
  v82 = v12;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v78 = v26;
    v29 = v28;
    v30 = swift_slowAlloc();
    v79 = v30;
    v94[0] = v30;
    *v29 = 136315650;
    v77 = a3;
    v31 = sub_1CF554E8C(v30);
    v33 = v32;

    v34 = sub_1CEFD0DF0(v31, v33, v94);
    v33, v35, v36, v37, v38, v39, v40, v41;
    *(v29 + 4) = v34;
    *(v29 + 12) = 2080;
    v42 = v13;
    v43 = v12;
    v45 = v89;
    v44 = v90;
    v46 = sub_1CF665B0C(a4, v42, v43, v89, v90);
    v48 = v47;
    sub_1CF540FDC(a4);
    sub_1CF540FDC(a4);
    v49 = sub_1CEFD0DF0(v46, v48, v94);
    v48, v50, v51, v52, v53, v54, v55, v56;
    *(v29 + 14) = v49;
    *(v29 + 22) = 2080;
    v93 = a2;
    v57 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1C20, &unk_1CFA0A250);
    v58 = sub_1CF9E6948();
    v60 = v59;
    v61 = sub_1CEFD0DF0(v58, v59, v94);
    v60, v62, v63, v64, v65, v66, v67, v68;
    *(v29 + 24) = v61;
    _os_log_impl(&dword_1CEFC7000, v25, v78, "finished propagating to FP %s request %s: %s", v29, 0x20u);
    v69 = v79;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v69, -1, -1);
    MEMORY[0x1D386CDC0](v29, -1, -1);

    (*(v87 + 8))(v21, v88);
    v23 = v77;
    if (a2)
    {
LABEL_3:
      v70 = v84;
      *v84 = a2;
      v71 = v86;
      swift_storeEnumTagMultiPayload();
      v72 = a2;
      v91(v70);
      (*(v85 + 8))(v70, v71);
      return result;
    }
  }

  else
  {
    sub_1CF540FDC(a4);
    sub_1CF540FDC(a4);

    (*(v87 + 8))(v21, v88);
    v45 = v89;
    v44 = v90;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v74 = swift_allocObject();
  v75 = v81;
  v74[2] = v82;
  v74[3] = v75;
  v74[4] = v44;
  v74[5] = v45;
  v74[6] = v23;
  v74[7] = a4;
  v76 = v92;
  v74[8] = v91;
  v74[9] = v76;
  sub_1CEFD09A0(a4);

  sub_1CF52FB88(v23, v83 & 1, a9 & 1, a4, sub_1CF54FFF8, v74);

  return result;
}

double sub_1CF533E68(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, void (*a5)(void *), uint64_t a6, uint64_t *a7, int a8, char a9)
{
  v85 = a8;
  v92 = a5;
  v13 = *(*a7 + 616);
  v14 = *(*a7 + 624);
  v15 = *a7;
  v16 = *(*a7 + 632);
  v82 = a7;
  v17 = *(v15 + 640);
  v94[0] = v13;
  v94[1] = v14;
  v90 = v17;
  v91 = v16;
  v94[2] = v16;
  v94[3] = v17;
  type metadata accessor for ItemLookupResult(255, v94);
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v18 = sub_1CF9E8238();
  v87 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v86 = &v77[-v19];
  v20 = sub_1CF9E6118();
  v88 = *(v20 - 8);
  v89 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v77[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFD09A0(a4);
  sub_1CEFD09A0(a4);
  v24 = a3;

  v25 = a2;
  v26 = sub_1CF9E6108();
  v27 = sub_1CF9E7298();

  v28 = os_log_type_enabled(v26, v27);
  v83 = v14;
  v84 = v13;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v80 = v18;
    v30 = v29;
    v31 = swift_slowAlloc();
    v79 = v31;
    v94[0] = v31;
    *v30 = 136315650;
    v78 = v27;
    v32 = sub_1CF554E8C(v31);
    v81 = a6;
    v34 = v33;

    v35 = sub_1CEFD0DF0(v32, v34, v94);
    v34, v36, v37, v38, v39, v40, v41, v42;
    *(v30 + 4) = v35;
    *(v30 + 12) = 2080;
    v43 = v14;
    v44 = v13;
    v46 = v90;
    v45 = v91;
    v47 = sub_1CF665B0C(a4, v43, v44, v90, v91);
    v49 = v48;
    sub_1CF540FDC(a4);
    sub_1CF540FDC(a4);
    v50 = sub_1CEFD0DF0(v47, v49, v94);
    v49, v51, v52, v53, v54, v55, v56, v57;
    *(v30 + 14) = v50;
    *(v30 + 22) = 2080;
    v93 = a2;
    v58 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1C20, &unk_1CFA0A250);
    v59 = sub_1CF9E6948();
    v61 = v60;
    v62 = sub_1CEFD0DF0(v59, v60, v94);
    v61, v63, v64, v65, v66, v67, v68, v69;
    *(v30 + 24) = v62;
    a6 = v81;
    _os_log_impl(&dword_1CEFC7000, v26, v78, "finished propagating to FS %s request %s: %s", v30, 0x20u);
    v70 = v79;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v70, -1, -1);
    v71 = v30;
    v18 = v80;
    MEMORY[0x1D386CDC0](v71, -1, -1);

    (*(v88 + 8))(v22, v89);
    if (a2)
    {
LABEL_3:
      v72 = v86;
      *v86 = a2;
      swift_storeEnumTagMultiPayload();
      v73 = a2;
      v92(v72);
      (*(v87 + 8))(v72, v18);
      return result;
    }
  }

  else
  {
    sub_1CF540FDC(a4);
    sub_1CF540FDC(a4);

    (*(v88 + 8))(v22, v89);
    v46 = v90;
    v45 = v91;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  *(v24 + *(*v24 + 128)) = 0;
  v75 = swift_allocObject();
  v76 = v83;
  v75[2] = v84;
  v75[3] = v76;
  v75[4] = v45;
  v75[5] = v46;
  v75[6] = v24;
  v75[7] = a4;
  v75[8] = v92;
  v75[9] = a6;
  sub_1CEFD09A0(a4);

  sub_1CF52FB88(v24, v85 & 1, a9 & 1, a4, sub_1CF550118, v75);

  return result;
}

uint64_t sub_1CF534398(char *a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const char *a10)
{
  v74 = a7;
  v75 = a6;
  v80[0] = a6;
  v80[1] = a7;
  v76 = a8;
  v80[2] = a8;
  v80[3] = a9;
  v73 = a9;
  type metadata accessor for ItemLookupResult(255, v80);
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v14 = sub_1CF9E8238();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v72 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v65 - v18;
  v20 = sub_1CF9E6118();
  v77 = *(v20 - 8);
  v78 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v24 = *(v15 + 16);
  v79 = a1;
  v70 = v24;
  v24(v19, a1, v14);
  sub_1CEFD09A0(a3);
  sub_1CEFD09A0(a3);

  v25 = sub_1CF9E6108();
  v71 = sub_1CF9E7298();
  if (os_log_type_enabled(v25, v71))
  {
    v67 = a10;
    v26 = swift_slowAlloc();
    v68 = a5;
    v27 = v26;
    v28 = swift_slowAlloc();
    v66 = v28;
    v80[0] = v28;
    *v27 = 136315650;
    v65 = v25;
    v29 = sub_1CF554E8C(v28);
    v69 = a4;
    v31 = v30;

    v32 = sub_1CEFD0DF0(v29, v31, v80);
    v31, v33, v34, v35, v36, v37, v38, v39;
    *(v27 + 4) = v32;
    *(v27 + 12) = 2080;
    v40 = sub_1CF665B0C(a3, v74, v75, v73, v76);
    v42 = v41;
    sub_1CF540FDC(a3);
    sub_1CF540FDC(a3);
    v43 = sub_1CEFD0DF0(v40, v42, v80);
    v42, v44, v45, v46, v47, v48, v49, v50;
    *(v27 + 14) = v43;
    *(v27 + 22) = 2080;
    a4 = v69;
    v70(v72, v19, v14);
    v51 = sub_1CF9E6948();
    v53 = v52;
    (*(v15 + 8))(v19, v14);
    v54 = sub_1CEFD0DF0(v51, v53, v80);
    v53, v55, v56, v57, v58, v59, v60, v61;
    *(v27 + 24) = v54;
    v62 = v65;
    _os_log_impl(&dword_1CEFC7000, v65, v71, v67, v27, 0x20u);
    v63 = v66;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v63, -1, -1);
    MEMORY[0x1D386CDC0](v27, -1, -1);
  }

  else
  {
    sub_1CF540FDC(a3);

    sub_1CF540FDC(a3);

    (*(v15 + 8))(v19, v14);
  }

  (*(v77 + 8))(v22, v78);
  return a4(v79);
}