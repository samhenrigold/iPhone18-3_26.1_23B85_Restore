uint64_t *DgnArray<RecogGerm>::reallocElts(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2;
  if (a3)
  {
    v3 = minAddAllocWithExtra(a2, *(a1 + 12));
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 12) + v3;
  v8 = 0;
  result = realloc_array(*a1, &v8, 44 * v6, 44 * v5, 44 * v5, 1);
  *(a1 + 12) = result / 0x2C;
  *a1 = v8;
  return result;
}

uint64_t **Hash<StateSpec,StateSpec,StateSpec,BOOL>::findBucket(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *a2;
  v3 = *(a2 + 1);
  v4 = v3 + (v2 << 13);
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = (-1640531527 * v4) >> -v5;
  }

  else
  {
    v6 = 0;
  }

  result = (*(a1 + 80) + 8 * v6);
  v8 = *result;
  if (*result)
  {
    do
    {
      v9 = v8;
      if (*(v8 + 2) == v4 && *(v8 + 6) == v2 && *(v8 + 4) == v3)
      {
        break;
      }

      v8 = *v8;
      result = v9;
    }

    while (*v9);
  }

  return result;
}

void MrecInitModule_picmgr_user(void)
{
  if (!gParDebugShowUnreachablePelsOnLoad)
  {
    v0 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v0, "DebugShowUnreachablePelsOnLoad", byte_26286CCF0, byte_26286CCF0, 0, 0, 0);
    *v1 = &unk_287527EA0;
    gParDebugShowUnreachablePelsOnLoad = v1;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugShowUnreachablePelsOnLoad);
  }

  if (!gParDebugPicMgrBuildLookups)
  {
    v2 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v2, "DebugPicMgrBuildLookups", byte_26286CCF0, byte_26286CCF0, 0, 0, 0);
    *v3 = &unk_287527EA0;
    gParDebugPicMgrBuildLookups = v3;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugPicMgrBuildLookups);
  }

  if (!gParDebugShowPicMgrStatsOnClose)
  {
    v4 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v4, "DebugShowPicMgrStatsOnClose", byte_26286CCF0, byte_26286CCF0, 0, 0, 0);
    *v5 = &unk_287527EA0;
    gParDebugShowPicMgrStatsOnClose = v5;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugShowPicMgrStatsOnClose);
  }

  if (!gParDebugPicMgr)
  {
    v6 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v6, "DebugPicMgr", byte_26286CCF0, byte_26286CCF0, 0, 0, 0);
    *v7 = &unk_287527EA0;
    gParDebugPicMgr = v7;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugPicMgr);
  }

  if (!gParDebugShowPelIdMap)
  {
    v8 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v8, "DebugShowPelIdMap", byte_26286CCF0, byte_26286CCF0, 0, 0, 0);
    *v9 = &unk_287527EA0;
    gParDebugShowPelIdMap = v9;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugShowPelIdMap);
  }

  if (!gParDiagnosticCheckPelIdMap)
  {
    v10 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v10, "DiagnosticCheckPelIdMap", byte_26286CCF0, byte_26286CCF0, 0, 0, 0);
    *v11 = &unk_287527EA0;
    gParDiagnosticCheckPelIdMap = v11;
    v12 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v12, &gParDiagnosticCheckPelIdMap);
  }
}

uint64_t Branch::writeObject(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  writeObject(a2, (a1 + 4), a3);
  writeObject(a2, (a1 + 6), a3);
  writeObject(a2, a1, a3);

  return writeObject(a2, (a1 + 2), a3);
}

void PicMgr::printSize(PicMgr *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v120, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/picmgr.cpp", 415);
  if (v121)
  {
    v13 = v120;
  }

  else
  {
    v13 = byte_26286CCF0;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, byte_26286CCF0, a3, byte_26286CCF0, v13);
  DgnString::~DgnString(&v120);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, byte_26286CCF0);
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v15 = 4;
  }

  else
  {
    v15 = 8;
  }

  v16 = (a3 + 1);
  v17 = (34 - a3);
  getShipObjectSizeDescription(&v120, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/picmgr.cpp", 416);
  if (v121)
  {
    v19 = v120;
  }

  else
  {
    v19 = byte_26286CCF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v18, (a3 + 1), byte_26286CCF0, (34 - a3), (34 - a3), v19, v15, v15, 0);
  DgnString::~DgnString(&v120);
  *a4 += v15;
  *a5 += v15;
  getShipObjectSizeDescription(&v120, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/picmgr.cpp", 418);
  if (v121)
  {
    v21 = v120;
  }

  else
  {
    v21 = byte_26286CCF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v20, (a3 + 1), byte_26286CCF0, (34 - a3), (34 - a3), v21, 1, 1, 0);
  DgnString::~DgnString(&v120);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v120, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/picmgr.cpp", 418);
  if (v121)
  {
    v23 = v120;
  }

  else
  {
    v23 = byte_26286CCF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v22, (a3 + 1), byte_26286CCF0, (34 - a3), (34 - a3), v23, 4, 4, 0);
  v119 = a3;
  DgnString::~DgnString(&v120);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v24 = 12;
  }

  else
  {
    v24 = 16;
  }

  v25 = *(this + 6);
  v26 = *(this + 7);
  v27 = v26 >= v25;
  v28 = v26 - v25;
  if (v27)
  {
    if (v25 > 0)
    {
      v29 = (v25 - 1) + v24 + 1;
    }

    else
    {
      v29 = v24;
    }

    v24 = v29 + v28;
    v25 = 0;
  }

  else
  {
    v29 = v24;
  }

  v30 = v25;
  getShipObjectSizeDescription(&v120, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/picmgr.cpp", 418);
  if (v121)
  {
    v32 = v120;
  }

  else
  {
    v32 = byte_26286CCF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v31, v16, byte_26286CCF0, v17, v17, v32, v24, v29, v30);
  DgnString::~DgnString(&v120);
  *a4 += v24;
  *a5 += v29;
  *a6 += v30;
  getShipObjectSizeDescription(&v120, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/picmgr.cpp", 418);
  if (v121)
  {
    v34 = v120;
  }

  else
  {
    v34 = byte_26286CCF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v33, v16, byte_26286CCF0, v17, v17, v34, 1, 1, 0);
  DgnString::~DgnString(&v120);
  ++*a4;
  ++*a5;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v35 = 12;
  }

  else
  {
    v35 = 16;
  }

  v36 = *(this + 12);
  v37 = *(this + 13);
  if (v37 >= v36)
  {
    v38 = 0;
    if (v36 > 0)
    {
      v35 += 2 * (v36 - 1) + 2;
    }

    v39 = v35 + 2 * (v37 - v36);
  }

  else
  {
    v38 = 2 * v36;
    v39 = v35;
  }

  getShipObjectSizeDescription(&v120, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/picmgr.cpp", 418);
  if (v121)
  {
    v41 = v120;
  }

  else
  {
    v41 = byte_26286CCF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v40, v16, byte_26286CCF0, v17, v17, v41, v39, v35, v38);
  DgnString::~DgnString(&v120);
  *a4 += v39;
  *a5 += v35;
  *a6 += v38;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v42 = 12;
  }

  else
  {
    v42 = 16;
  }

  v43 = *(this + 16);
  v44 = *(this + 17);
  if (v44 >= v43)
  {
    v45 = 0;
    if (v43 > 0)
    {
      v42 += 2 * (v43 - 1) + 2;
    }

    v46 = v42 + 2 * (v44 - v43);
  }

  else
  {
    v45 = 2 * v43;
    v46 = v42;
  }

  getShipObjectSizeDescription(&v120, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/picmgr.cpp", 418);
  if (v121)
  {
    v48 = v120;
  }

  else
  {
    v48 = byte_26286CCF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v47, v16, byte_26286CCF0, v17, v17, v48, v46, v42, v45);
  DgnString::~DgnString(&v120);
  *a4 += v46;
  *a5 += v42;
  *a6 += v45;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v49 = 12;
  }

  else
  {
    v49 = 16;
  }

  v50 = *(this + 20);
  v51 = *(this + 21);
  if (v51 >= v50)
  {
    v52 = 0;
    if (v50 > 0)
    {
      v49 += 2 * (v50 - 1) + 2;
    }

    v53 = v49 + 2 * (v51 - v50);
  }

  else
  {
    v52 = 2 * v50;
    v53 = v49;
  }

  getShipObjectSizeDescription(&v120, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/picmgr.cpp", 418);
  if (v121)
  {
    v55 = v120;
  }

  else
  {
    v55 = byte_26286CCF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v54, v16, byte_26286CCF0, v17, v17, v55, v53, v49, v52);
  DgnString::~DgnString(&v120);
  *a4 += v53;
  *a5 += v49;
  *a6 += v52;
  getShipObjectSizeDescription(&v120, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/picmgr.cpp", 418);
  if (v121)
  {
    v57 = v120;
  }

  else
  {
    v57 = byte_26286CCF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v56, v16, byte_26286CCF0, v17, v17, v57, 2, 2, 0);
  DgnString::~DgnString(&v120);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription(&v120, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/picmgr.cpp", 418);
  if (v121)
  {
    v59 = v120;
  }

  else
  {
    v59 = byte_26286CCF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v58, v16, byte_26286CCF0, v17, v17, v59, 2, 2, 0);
  DgnString::~DgnString(&v120);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription(&v120, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/picmgr.cpp", 418);
  if (v121)
  {
    v61 = v120;
  }

  else
  {
    v61 = byte_26286CCF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v60, v16, byte_26286CCF0, v17, v17, v61, 1, 1, 0);
  DgnString::~DgnString(&v120);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v120, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/picmgr.cpp", 418);
  if (v121)
  {
    v63 = v120;
  }

  else
  {
    v63 = byte_26286CCF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v62, v16, byte_26286CCF0, v17, v17, v63, 1, 1, 0);
  DgnString::~DgnString(&v120);
  ++*a4;
  ++*a5;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v64 = 12;
  }

  else
  {
    v64 = 16;
  }

  v65 = *(this + 26);
  v66 = *(this + 27);
  v27 = v66 >= v65;
  v67 = v66 - v65;
  if (v27)
  {
    if (v65 > 0)
    {
      v68 = (v65 - 1) + v64 + 1;
    }

    else
    {
      v68 = v64;
    }

    v64 = v68 + v67;
    v65 = 0;
  }

  else
  {
    v68 = v64;
  }

  v69 = v65;
  getShipObjectSizeDescription(&v120, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/picmgr.cpp", 418);
  if (v121)
  {
    v71 = v120;
  }

  else
  {
    v71 = byte_26286CCF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v70, v16, byte_26286CCF0, v17, v17, v71, v64, v68, v69);
  DgnString::~DgnString(&v120);
  *a4 += v64;
  *a5 += v68;
  *a6 += v69;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v72 = 12;
  }

  else
  {
    v72 = 16;
  }

  v73 = *(this + 30);
  v74 = *(this + 31);
  v27 = v74 >= v73;
  v75 = v74 - v73;
  if (v27)
  {
    if (v73 > 0)
    {
      v76 = (v73 - 1) + v72 + 1;
    }

    else
    {
      v76 = v72;
    }

    v72 = v76 + v75;
    v73 = 0;
  }

  else
  {
    v76 = v72;
  }

  v77 = v73;
  getShipObjectSizeDescription(&v120, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/picmgr.cpp", 418);
  if (v121)
  {
    v79 = v120;
  }

  else
  {
    v79 = byte_26286CCF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v78, v16, byte_26286CCF0, v17, v17, v79, v72, v76, v77);
  DgnString::~DgnString(&v120);
  *a4 += v72;
  *a5 += v76;
  *a6 += v77;
  v80 = sizeObject<DgnArray<Branch>>(this + 128, 0);
  v81 = sizeObject<DgnArray<Branch>>(this + 128, 1);
  v120 = 0;
  v121 = 0;
  DgnIArray<Utterance *>::~DgnIArray(&v120);
  getShipObjectSizeDescription(&v120, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/picmgr.cpp", 418);
  if (v121)
  {
    v83 = v120;
  }

  else
  {
    v83 = byte_26286CCF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v82, v16, byte_26286CCF0, v17, v17, v83, v80, v81, 0);
  DgnString::~DgnString(&v120);
  *a4 += v80;
  *a5 += v81;
  getShipObjectSizeDescription(&v120, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/picmgr.cpp", 418);
  if (v121)
  {
    v85 = v120;
  }

  else
  {
    v85 = byte_26286CCF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v84, v16, byte_26286CCF0, v17, v17, v85, 4, 4, 0);
  DgnString::~DgnString(&v120);
  *a4 += 4;
  *a5 += 4;
  v86 = sizeObject<DgnArray<PicNode>>(this + 152, 0);
  v87 = sizeObject<DgnArray<PicNode>>(this + 152, 1);
  v120 = 0;
  v121 = 0;
  DgnIArray<Utterance *>::~DgnIArray(&v120);
  getShipObjectSizeDescription(&v120, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/picmgr.cpp", 418);
  if (v121)
  {
    v89 = v120;
  }

  else
  {
    v89 = byte_26286CCF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v88, v16, byte_26286CCF0, v17, v17, v89, v86, v87, 0);
  DgnString::~DgnString(&v120);
  *a4 += v86;
  *a5 += v87;
  v90 = 12;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v90 = 8;
  }

  v91 = *(this + 44);
  if (v91 <= 0)
  {
    v92 = 0;
  }

  else
  {
    v92 = (2 * v91);
  }

  v93 = v90 + v92;
  getShipObjectSizeDescription(&v120, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/picmgr.cpp", 418);
  if (v121)
  {
    v95 = v120;
  }

  else
  {
    v95 = byte_26286CCF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v94, v16, byte_26286CCF0, v17, v17, v95, v93, v93, 0);
  DgnString::~DgnString(&v120);
  *a4 += v93;
  *a5 += v93;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v96 = 12;
  }

  else
  {
    v96 = 16;
  }

  v97 = *(this + 48);
  v98 = *(this + 49);
  v27 = v98 >= v97;
  v99 = v98 - v97;
  if (v27)
  {
    if (v97 > 0)
    {
      v100 = (v97 - 1) + v96 + 1;
    }

    else
    {
      v100 = v96;
    }

    v96 = v100 + v99;
    v97 = 0;
  }

  else
  {
    v100 = v96;
  }

  v101 = v97;
  getShipObjectSizeDescription(&v120, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/picmgr.cpp", 418);
  if (v121)
  {
    v103 = v120;
  }

  else
  {
    v103 = byte_26286CCF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v102, v16, byte_26286CCF0, v17, v17, v103, v96, v100, v101);
  DgnString::~DgnString(&v120);
  *a4 += v96;
  *a5 += v100;
  *a6 += v101;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v104 = 12;
  }

  else
  {
    v104 = 16;
  }

  v105 = *(this + 52);
  v106 = *(this + 53);
  v27 = v106 >= v105;
  v107 = v106 - v105;
  if (v27)
  {
    if (v105 > 0)
    {
      v108 = (v105 - 1) + v104 + 1;
    }

    else
    {
      v108 = v104;
    }

    v104 = v108 + v107;
    v105 = 0;
  }

  else
  {
    v108 = v104;
  }

  v109 = v105;
  getShipObjectSizeDescription(&v120, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/picmgr.cpp", 418);
  if (v121)
  {
    v111 = v120;
  }

  else
  {
    v111 = byte_26286CCF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v110, v16, byte_26286CCF0, v17, v17, v111, v104, v108, v109);
  DgnString::~DgnString(&v120);
  *a4 += v104;
  *a5 += v108;
  *a6 += v109;
  v112 = BitArray::sizeObject(this + 216, 0);
  v113 = BitArray::sizeObject(this + 216, 1);
  v114 = BitArray::sizeObject(this + 216, 3);
  getShipObjectSizeDescription(&v120, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/picmgr.cpp", 418);
  if (v121)
  {
    v116 = v120;
  }

  else
  {
    v116 = byte_26286CCF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v115, v16, byte_26286CCF0, v17, v17, v116, v112, v113, v114);
  DgnString::~DgnString(&v120);
  *a4 += v112;
  *a5 += v113;
  *a6 += v114;
  getShipObjectSizeDescription(&v120, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/picmgr.cpp", 419);
  if (v121)
  {
    v118 = v120;
  }

  else
  {
    v118 = byte_26286CCF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v117, v119, byte_26286CCF0, (35 - v119), (35 - v119), v118, *a4, *a5, *a6);
  DgnString::~DgnString(&v120);
}

void sub_2625B244C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t sizeObject<DgnArray<Branch>>(uint64_t a1, int a2)
{
  v2 = 0;
  v10[0] = 0;
  v10[1] = 0;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v3 = 12;
  }

  else
  {
    v3 = 16;
  }

  if (a2 != 3)
  {
    if ((a2 & 0xFFFFFFFE) == 2)
    {
      v2 = v3;
    }

    else
    {
      v6 = *(a1 + 8);
      v2 = v3;
      if (v6 >= 1)
      {
        v7 = v6 + 1;
        v8 = 16 * v6 - 16;
        v2 = v3;
        do
        {
          v2 += sizeObject<EnergyInfo>(*a1 + v8, a2);
          --v7;
          v8 -= 16;
        }

        while (v7 > 1);
      }

      if (!a2)
      {
        v2 += v3 * (*(a1 + 12) - *(a1 + 8));
      }
    }
  }

  DgnIArray<Utterance *>::~DgnIArray(v10);
  return v2;
}

uint64_t sizeObject<DgnArray<PicNode>>(uint64_t a1, int a2)
{
  v2 = 0;
  v10[0] = 0;
  v10[1] = 0;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v3 = 12;
  }

  else
  {
    v3 = 16;
  }

  if (a2 != 3)
  {
    if ((a2 & 0xFFFFFFFE) == 2)
    {
      v2 = v3;
    }

    else
    {
      v6 = *(a1 + 8);
      v2 = v3;
      if (v6 >= 1)
      {
        v7 = v6 + 1;
        v8 = 16 * v6 - 16;
        v2 = v3;
        do
        {
          v2 += sizeObject<FrameTypeInfo>(*a1 + v8, a2);
          --v7;
          v8 -= 16;
        }

        while (v7 > 1);
      }

      if (!a2)
      {
        v2 += v3 * (*(a1 + 12) - *(a1 + 8));
      }
    }
  }

  DgnIArray<Utterance *>::~DgnIArray(v10);
  return v2;
}

unint64_t DgnPrimArray<unsigned short>::compact(unint64_t result)
{
  v3 = *(result + 8);
  v4 = *(result + 12);
  if (v3 != v4)
  {
    v6[3] = v1;
    v6[4] = v2;
    v5 = result;
    if (v3)
    {
      v6[0] = 0;
      result = realloc_array(*result, v6, 2 * v3, 2 * v3, 2 * v4, 0);
      *(v5 + 12) = result >> 1;
      *v5 = v6[0];
    }

    else
    {
      result = *result;
      if (*v5)
      {
        result = MemChunkFree(result, 0);
      }

      *v5 = 0;
      *(v5 + 12) = 0;
    }
  }

  return result;
}

void **DgnPrimArray<unsigned char>::compact(void **result)
{
  v3 = *(result + 2);
  v4 = *(result + 3);
  if (v3 != v4)
  {
    v6[3] = v1;
    v6[4] = v2;
    v5 = result;
    if (v3)
    {
      v6[0] = 0;
      result = realloc_array(*result, v6, v3, v3, v4, 0);
      *(v5 + 3) = result;
      *v5 = v6[0];
    }

    else
    {
      result = *result;
      if (*v5)
      {
        result = MemChunkFree(result, 0);
      }

      *v5 = 0;
      *(v5 + 3) = 0;
    }
  }

  return result;
}

void PicMgr::savePicMgr(PicMgr *this, DFile *a2, DFileChecksums *a3, int a4, uint64_t a5)
{
  if (a4)
  {
    PicMgr::saveQuestionsAsText(this, a2, a5);
    PicMgr::saveDurationDistributions(this, a2, a5);
    PicMgr::savePicTreesAsText(this, a2, a5);
    if (*(this + 48))
    {

      PicMgr::saveAdaptPhonemesAsText(this, a2, a5);
    }
  }

  else
  {

    PicMgr::saveBinary(this, a2, a3, a5);
  }
}

void PicMgr::saveQuestionsAsText(PicMgr *this, DFile *a2, uint64_t a3)
{
  v3 = a3;
  DgnTextFileWriter::DgnTextFileWriter(v31);
  DgnTextFileWriter::openDgnTextFileWriter(v31, a2, 66, v3);
  v29 = 0;
  v30 = 0;
  DgnTextFile::legalDgnTextFileVersions(v31, sPQT_Versions, &v29);
  DgnTextFileWriter::setFileType(v31, "PicTreeQuestionText", (v29 + 8 * (v30 - 1)));
  v6 = *(this + 26);
  DgnTextFileWriter::setHeaderFieldBool(v31, "HasPentaphoneQuestions", *(this + 92));
  DgnTextFileWriter::setHeaderFieldBool(v31, "HasWordBoundaryQuestions", *(this + 93));
  DgnTextFileWriter::setHeaderFieldUnsigned(v31, "NumberOfQuestions", v6);
  v27 = 0;
  v28 = 0;
  v25 = 0;
  v26 = 0;
  DgnString::DgnString(&v23, "QuestionId");
  v7 = v28;
  if (v28 == HIDWORD(v28))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v27, 1, 1);
    v7 = v28;
  }

  DgnString::DgnString((v27 + 16 * v7), &v23);
  LODWORD(v28) = v28 + 1;
  DgnString::~DgnString(&v23);
  v8 = v26;
  if (v26 == HIDWORD(v26))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v25, 1, 1);
    v8 = v26;
  }

  *(v25 + 4 * v8) = 3;
  LODWORD(v26) = v8 + 1;
  v9 = v28;
  DgnString::DgnString(&v23, "QuestionTarget");
  v10 = v28;
  if (v28 == HIDWORD(v28))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v27, 1, 1);
    v10 = v28;
  }

  DgnString::DgnString((v27 + 16 * v10), &v23);
  LODWORD(v28) = v28 + 1;
  DgnString::~DgnString(&v23);
  v11 = v26;
  if (v26 == HIDWORD(v26))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v25, 1, 1);
    v11 = v26;
  }

  *(v25 + 4 * v11) = 0;
  LODWORD(v26) = v11 + 1;
  v12 = v28;
  DgnString::DgnString(&v23, "TargetPhonemes");
  v13 = v28;
  if (v28 == HIDWORD(v28))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v27, 1, 1);
    v13 = v28;
  }

  DgnString::DgnString((v27 + 16 * v13), &v23);
  LODWORD(v28) = v28 + 1;
  DgnString::~DgnString(&v23);
  v14 = v26;
  if (v26 == HIDWORD(v26))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v25, 1, 1);
    v14 = v26;
  }

  *(v25 + 4 * v14) = 0;
  LODWORD(v26) = v14 + 1;
  DgnTextFileWriter::setLineFieldFormat(v31, &v25, &v27);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      v16 = *(*(this + 12) + i);
      DgnTextFileWriter::setLineFieldUnsignedValue(v31, 0, i);
      if ((v16 - 1) < 6)
      {
        DgnTextFileWriter::setLineFieldValue(v31, v9, off_279B3B2D0[(v16 - 1)]);
      }

      DgnString::DgnString(&v23);
      if ((v16 - 1) >= 4)
      {
        if ((v16 - 5) < 2)
        {
          DgnTextFileWriter::setLineFieldValue(v31, v12, "_wb");
        }
      }

      else
      {
        v24 = 0;
        v17 = *(this + 44);
        if (!v17)
        {
          goto LABEL_32;
        }

        v18 = 0;
        for (j = 0; j < v17; ++j)
        {
          if (*(*(this + 14) + j + i * v17) == 1)
          {
            if (v24 >= 2)
            {
              DgnString::operator+=(&v23, ".");
            }

            v20 = *(*this + 8) + v18;
            if (*(v20 + 8))
            {
              v21 = *v20;
            }

            else
            {
              v21 = byte_26286CCF0;
            }

            DgnString::operator+=(&v23, v21);
            v17 = *(this + 44);
          }

          v18 += 16;
        }

        if (v24)
        {
          v22 = v23;
        }

        else
        {
LABEL_32:
          v22 = byte_26286CCF0;
        }

        DgnTextFileWriter::setLineFieldValue(v31, v12, v22);
      }

      DgnTextFileWriter::writeNextLine(v31);
      DgnString::~DgnString(&v23);
    }
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v25);
  DgnArray<DgnString>::releaseAll(&v27);
  DgnIArray<Utterance *>::~DgnIArray(&v29);
  DgnTextFileWriter::~DgnTextFileWriter(v31);
}

void sub_2625B2C5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va3, a5);
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  va_copy(va3, va2);
  v12 = va_arg(va3, void);
  v14 = va_arg(va3, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnArray<DgnString>::releaseAll(va1);
  DgnIArray<Utterance *>::~DgnIArray(va2);
  DgnTextFileWriter::~DgnTextFileWriter(va3);
  _Unwind_Resume(a1);
}

void PicMgr::saveDurationDistributions(PicMgr *this, DFile *a2, uint64_t a3)
{
  v3 = a3;
  DgnTextFileWriter::DgnTextFileWriter(v20);
  DgnTextFileWriter::openDgnTextFileWriter(v20, a2, 59, v3);
  v18 = 0;
  v19 = 0;
  DgnTextFile::legalDgnTextFileVersions(v20, sPDT_Versions, &v18);
  DgnTextFileWriter::setFileType(v20, "PicTreeDurationText", (v18 + 8 * (v19 - 1)));
  v6 = *(this + 12);
  DgnTextFileWriter::setHeaderFieldUnsigned(v20, "NumberOfDistributions", v6);
  DgnTextFileWriter::setHeaderFieldUnsigned(v20, "PenDif", *(this + 8));
  DgnTextFileWriter::setHeaderFieldInteger(v20, "PenDifDurLogTerm", *(this + 3));
  v16 = 0;
  v17 = 0;
  v14 = 0;
  v15 = 0;
  DgnString::DgnString(v13, "DurId");
  v7 = v17;
  if (v17 == HIDWORD(v17))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v16, 1, 1);
    v7 = v17;
  }

  DgnString::DgnString((v16 + 16 * v7), v13);
  LODWORD(v17) = v17 + 1;
  DgnString::~DgnString(v13);
  v8 = v15;
  if (v15 == HIDWORD(v15))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v14, 1, 1);
    v8 = v15;
  }

  *(v14 + 4 * v8) = 3;
  LODWORD(v15) = v8 + 1;
  v9 = v17;
  DgnString::DgnString(v13, "MeanScaledFrameDuration");
  v10 = v17;
  if (v17 == HIDWORD(v17))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v16, 1, 1);
    v10 = v17;
  }

  DgnString::DgnString((v16 + 16 * v10), v13);
  LODWORD(v17) = v17 + 1;
  DgnString::~DgnString(v13);
  v11 = v15;
  if (v15 == HIDWORD(v15))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v14, 1, 1);
    v11 = v15;
  }

  *(v14 + 4 * v11) = 3;
  LODWORD(v15) = v11 + 1;
  DgnTextFileWriter::setLineFieldFormat(v20, &v14, &v16);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      DgnTextFileWriter::setLineFieldUnsignedValue(v20, 0, i);
      DgnTextFileWriter::setLineFieldIntegerValue(v20, v9, *(*(this + 5) + 2 * i));
      DgnTextFileWriter::writeNextLine(v20);
    }
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v14);
  DgnArray<DgnString>::releaseAll(&v16);
  DgnIArray<Utterance *>::~DgnIArray(&v18);
  DgnTextFileWriter::~DgnTextFileWriter(v20);
}

void sub_2625B2F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va3, a7);
  va_start(va2, a7);
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  va_copy(va3, va2);
  v14 = va_arg(va3, void);
  v16 = va_arg(va3, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnArray<DgnString>::releaseAll(va1);
  DgnIArray<Utterance *>::~DgnIArray(va2);
  DgnTextFileWriter::~DgnTextFileWriter(va3);
  _Unwind_Resume(a1);
}

void PicMgr::savePicTreesAsText(PicMgr *this, DFile *a2, uint64_t a3)
{
  v3 = a3;
  DgnTextFileWriter::DgnTextFileWriter(v70);
  DgnTextFileWriter::openDgnTextFileWriter(v70, a2, 71, v3);
  v68 = 0;
  v69 = 0;
  DgnTextFile::legalDgnTextFileVersions(v70, sPTT_Versions, &v68);
  DgnTextFileWriter::setFileType(v70, "PicTreeText", (v68 + 8 * (v69 - 1)));
  v6 = *(this + 44);
  if (*(this + 44))
  {
    LODWORD(v7) = 0;
    LODWORD(v8) = 0;
    v9 = *(this + 2);
    do
    {
      v11 = *v9++;
      v10 = v11;
      if (v11)
      {
        v7 = (v7 + 1);
      }

      else
      {
        v7 = v7;
      }

      v8 = (v8 + v10);
      --v6;
    }

    while (v6);
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  DgnTextFileWriter::setHeaderFieldUnsigned(v70, "NumberOfPhonemes", v7);
  DgnTextFileWriter::setHeaderFieldUnsigned(v70, "NumberOfTrees", v8);
  DgnTextFileWriter::setHeaderFieldUnsigned(v70, "MaxPelId", *(this + 45));
  DgnTextFileWriter::setHeaderFieldUnsigned(v70, "MaxDurId", (*(this + 12) - 1));
  DgnString::DgnString(&v66);
  v12 = *(this + 36) - 1;
  if (v12 < 3)
  {
    DgnString::operator=(&v66, off_279B3B300[v12]);
  }

  if (v67)
  {
    v13 = v66;
  }

  else
  {
    v13 = byte_26286CCF0;
  }

  DgnTextFileWriter::setHeaderField(v70, "LookupType", v13);
  DgnString::~DgnString(&v66);
  v66 = 0;
  v67 = 0;
  v64 = 0;
  v65 = 0;
  DgnString::DgnString(v63, "TreeId");
  v14 = v67;
  if (v67 == HIDWORD(v67))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v66, 1, 1);
    v14 = v67;
  }

  DgnString::DgnString(&v66[16 * v14], v63);
  LODWORD(v67) = v67 + 1;
  DgnString::~DgnString(v63);
  v15 = v65;
  if (v65 == HIDWORD(v65))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v64, 1, 1);
    v15 = v65;
  }

  *(v64 + 4 * v15) = 3;
  LODWORD(v65) = v15 + 1;
  v60 = v67;
  DgnString::DgnString(v63, "Phoneme");
  v16 = v67;
  if (v67 == HIDWORD(v67))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v66, 1, 1);
    v16 = v67;
  }

  DgnString::DgnString(&v66[16 * v16], v63);
  LODWORD(v67) = v67 + 1;
  DgnString::~DgnString(v63);
  v17 = v65;
  if (v65 == HIDWORD(v65))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v64, 1, 1);
    v17 = v65;
  }

  *(v64 + 4 * v17) = 0;
  LODWORD(v65) = v17 + 1;
  v59 = v67;
  DgnString::DgnString(v63, "NodeIndex");
  v18 = v67;
  if (v67 == HIDWORD(v67))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v66, 1, 1);
    v18 = v67;
  }

  DgnString::DgnString(&v66[16 * v18], v63);
  LODWORD(v67) = v67 + 1;
  DgnString::~DgnString(v63);
  v19 = v65;
  if (v65 == HIDWORD(v65))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v64, 1, 1);
    v19 = v65;
  }

  *(v64 + 4 * v19) = 3;
  LODWORD(v65) = v19 + 1;
  v58 = v67;
  DgnString::DgnString(v63, "BranchIndex");
  v20 = v67;
  if (v67 == HIDWORD(v67))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v66, 1, 1);
    v20 = v67;
  }

  DgnString::DgnString(&v66[16 * v20], v63);
  LODWORD(v67) = v67 + 1;
  DgnString::~DgnString(v63);
  v21 = v65;
  if (v65 == HIDWORD(v65))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v64, 1, 1);
    v21 = v65;
  }

  *(v64 + 4 * v21) = 3;
  LODWORD(v65) = v21 + 1;
  v57 = v67;
  DgnString::DgnString(v63, "QuestionId");
  v22 = v67;
  if (v67 == HIDWORD(v67))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v66, 1, 1);
    v22 = v67;
  }

  DgnString::DgnString(&v66[16 * v22], v63);
  LODWORD(v67) = v67 + 1;
  DgnString::~DgnString(v63);
  v23 = v65;
  if (v65 == HIDWORD(v65))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v64, 1, 1);
    v23 = v65;
  }

  *(v64 + 4 * v23) = 1;
  LODWORD(v65) = v23 + 1;
  v56 = v67;
  DgnString::DgnString(v63, "YesBranchIndex");
  v24 = v67;
  if (v67 == HIDWORD(v67))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v66, 1, 1);
    v24 = v67;
  }

  DgnString::DgnString(&v66[16 * v24], v63);
  LODWORD(v67) = v67 + 1;
  DgnString::~DgnString(v63);
  v25 = v65;
  if (v65 == HIDWORD(v65))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v64, 1, 1);
    v25 = v65;
  }

  *(v64 + 4 * v25) = 1;
  LODWORD(v65) = v25 + 1;
  v55 = v67;
  DgnString::DgnString(v63, "NoBranchIndex");
  v26 = v67;
  if (v67 == HIDWORD(v67))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v66, 1, 1);
    v26 = v67;
  }

  DgnString::DgnString(&v66[16 * v26], v63);
  LODWORD(v67) = v67 + 1;
  DgnString::~DgnString(v63);
  v27 = v65;
  if (v65 == HIDWORD(v65))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v64, 1, 1);
    v27 = v65;
  }

  *(v64 + 4 * v27) = 1;
  LODWORD(v65) = v27 + 1;
  v54 = v67;
  DgnString::DgnString(v63, "PelId");
  v28 = v67;
  if (v67 == HIDWORD(v67))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v66, 1, 1);
    v28 = v67;
  }

  DgnString::DgnString(&v66[16 * v28], v63);
  LODWORD(v67) = v67 + 1;
  DgnString::~DgnString(v63);
  v29 = v65;
  if (v65 == HIDWORD(v65))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v64, 1, 1);
    v29 = v65;
  }

  *(v64 + 4 * v29) = 1;
  LODWORD(v65) = v29 + 1;
  v53 = v67;
  DgnString::DgnString(v63, "DurId");
  v30 = v67;
  if (v67 == HIDWORD(v67))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v66, 1, 1);
    v30 = v67;
  }

  DgnString::DgnString(&v66[16 * v30], v63);
  LODWORD(v67) = v67 + 1;
  DgnString::~DgnString(v63);
  v31 = v65;
  if (v65 == HIDWORD(v65))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v64, 1, 1);
    v31 = v65;
  }

  *(v64 + 4 * v31) = 1;
  LODWORD(v65) = v31 + 1;
  DgnTextFileWriter::setLineFieldFormat(v70, &v64, &v66);
  v32 = *(this + 44);
  if (*(this + 44))
  {
    v33 = 0;
    v62 = 0;
    v51 = this;
    do
    {
      v34 = *(*this + 8) + 16 * v33;
      if (*(v34 + 8))
      {
        v35 = *v34;
      }

      else
      {
        v35 = byte_26286CCF0;
      }

      v61 = v35;
      v36 = *(this + 2);
      if (*(v36 + v33))
      {
        v37 = 0;
        v52 = v33;
        do
        {
          v38 = *(this + 16) + 16 * (v37 + v33 * *(this + 32));
          v39 = *(v38 + 8);
          if (v39)
          {
            v40 = 0;
            v41 = 0;
            v42 = 8 * v39;
            do
            {
              v43 = (*v38 + v40);
              v44 = v43[2];
              if (v44 == -1)
              {
                v47 = *v43;
                v48 = v43[1];
                v45 = -1;
                v46 = -1;
              }

              else
              {
                v45 = v43[1];
                v46 = *v43;
                v47 = 0xFFFF;
                v48 = 0xFFFF;
              }

              DgnTextFileWriter::setLineFieldUnsignedValue(v70, 0, v62);
              DgnTextFileWriter::setLineFieldValue(v70, v60, v61);
              DgnTextFileWriter::setLineFieldUnsignedValue(v70, v59, v37);
              DgnTextFileWriter::setLineFieldUnsignedValue(v70, v58, v41);
              DgnTextFileWriter::setLineFieldIntegerValue(v70, v57, v44);
              DgnTextFileWriter::setLineFieldIntegerValue(v70, v56, v45);
              DgnTextFileWriter::setLineFieldIntegerValue(v70, v55, v46);
              if (v47 == 0xFFFF)
              {
                v49 = -1;
              }

              else
              {
                v49 = v47;
              }

              DgnTextFileWriter::setLineFieldIntegerValue(v70, v54, v49);
              if (v48 == 0xFFFF)
              {
                v50 = -1;
              }

              else
              {
                v50 = v48;
              }

              DgnTextFileWriter::setLineFieldIntegerValue(v70, v53, v50);
              DgnTextFileWriter::writeNextLine(v70);
              ++v41;
              v40 += 8;
            }

            while (v42 != v40);
            this = v51;
            v33 = v52;
            v36 = *(v51 + 2);
          }

          ++v62;
          ++v37;
        }

        while (v37 < *(v36 + v33));
        v32 = *(this + 44);
      }

      ++v33;
    }

    while (v33 < v32);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v64);
  DgnArray<DgnString>::releaseAll(&v66);
  DgnIArray<Utterance *>::~DgnIArray(&v68);
  DgnTextFileWriter::~DgnTextFileWriter(v70);
}

void sub_2625B3808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va3, a18);
  va_start(va2, a18);
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  va_copy(va2, va1);
  v22 = va_arg(va2, void);
  v24 = va_arg(va2, void);
  va_copy(va3, va2);
  v25 = va_arg(va3, void);
  v27 = va_arg(va3, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnArray<DgnString>::releaseAll(va1);
  DgnIArray<Utterance *>::~DgnIArray(va2);
  DgnTextFileWriter::~DgnTextFileWriter(va3);
  _Unwind_Resume(a1);
}

void PicMgr::saveAdaptPhonemesAsText(PicMgr *this, DFile *a2, uint64_t a3)
{
  v3 = a3;
  v6 = *(this + 48);
  DgnTextFileWriter::DgnTextFileWriter(v28);
  DgnTextFileWriter::openDgnTextFileWriter(v28, a2, 54, v3);
  v26 = 0;
  v27 = 0;
  DgnTextFile::legalDgnTextFileVersions(v28, sPAT_Versions, &v26);
  DgnTextFileWriter::setFileType(v28, "PicTreePhonemeAdaptationText", (v26 + 8 * (v27 - 1)));
  DgnTextFileWriter::setHeaderFieldUnsigned(v28, "NumberOfPhonemes", v6);
  v24 = 0;
  v25 = 0;
  v22 = 0;
  v23 = 0;
  DgnString::DgnString(v21, "PhnIndex");
  v7 = v25;
  if (v25 == HIDWORD(v25))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v24, 1, 1);
    v7 = v25;
  }

  DgnString::DgnString((v24 + 16 * v7), v21);
  LODWORD(v25) = v25 + 1;
  DgnString::~DgnString(v21);
  v8 = v23;
  if (v23 == HIDWORD(v23))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v22, 1, 1);
    v8 = v23;
  }

  *(v22 + 4 * v8) = 3;
  LODWORD(v23) = v8 + 1;
  v9 = v25;
  DgnString::DgnString(v21, "Phoneme");
  v10 = v25;
  if (v25 == HIDWORD(v25))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v24, 1, 1);
    v10 = v25;
  }

  DgnString::DgnString((v24 + 16 * v10), v21);
  LODWORD(v25) = v25 + 1;
  DgnString::~DgnString(v21);
  v11 = v23;
  if (v23 == HIDWORD(v23))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v22, 1, 1);
    v11 = v23;
  }

  *(v22 + 4 * v11) = 0;
  LODWORD(v23) = v11 + 1;
  v12 = v25;
  DgnString::DgnString(v21, "ChooseWarpUse");
  v13 = v25;
  if (v25 == HIDWORD(v25))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v24, 1, 1);
    v13 = v25;
  }

  DgnString::DgnString((v24 + 16 * v13), v21);
  LODWORD(v25) = v25 + 1;
  DgnString::~DgnString(v21);
  v14 = v23;
  if (v23 == HIDWORD(v23))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v22, 1, 1);
    v14 = v23;
  }

  *(v22 + 4 * v14) = 3;
  LODWORD(v23) = v14 + 1;
  v15 = v25;
  DgnString::DgnString(v21, "ScoreSegmentationUse");
  v16 = v25;
  if (v25 == HIDWORD(v25))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v24, 1, 1);
    v16 = v25;
  }

  DgnString::DgnString((v24 + 16 * v16), v21);
  LODWORD(v25) = v25 + 1;
  DgnString::~DgnString(v21);
  v17 = v23;
  if (v23 == HIDWORD(v23))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v22, 1, 1);
    v17 = v23;
  }

  *(v22 + 4 * v17) = 3;
  LODWORD(v23) = v17 + 1;
  DgnTextFileWriter::setLineFieldFormat(v28, &v22, &v24);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      DgnTextFileWriter::setLineFieldUnsignedValue(v28, 0, i);
      v19 = *(*this + 8) + 16 * i;
      if (*(v19 + 8))
      {
        v20 = *v19;
      }

      else
      {
        v20 = byte_26286CCF0;
      }

      DgnTextFileWriter::setLineFieldValue(v28, v9, v20);
      DgnTextFileWriter::setLineFieldUnsignedValue(v28, v12, *(*(this + 23) + i));
      DgnTextFileWriter::setLineFieldUnsignedValue(v28, v15, *(*(this + 25) + i));
      DgnTextFileWriter::writeNextLine(v28);
    }
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v22);
  DgnArray<DgnString>::releaseAll(&v24);
  DgnIArray<Utterance *>::~DgnIArray(&v26);
  DgnTextFileWriter::~DgnTextFileWriter(v28);
}

void sub_2625B3C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va3, a7);
  va_start(va2, a7);
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  va_copy(va3, va2);
  v14 = va_arg(va3, void);
  v16 = va_arg(va3, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnArray<DgnString>::releaseAll(va1);
  DgnIArray<Utterance *>::~DgnIArray(va2);
  DgnTextFileWriter::~DgnTextFileWriter(va3);
  _Unwind_Resume(a1);
}

void (***PicMgr::saveBinary(PicMgr *this, DFile *a2, DFileChecksums *a3, uint64_t a4))(void)
{
  v7 = OpenAndWriteMrecHeader(a2, 0x46u, a4, "MRPICT!?", 24, 14);
  v10 = 0;
  writeObject(v7, this + 8, &v10);
  writeObject(v7, this + 3, &v10);
  writeObject<unsigned char>(v7, this + 16, &v10);
  writeObject(v7, this + 32, &v10);
  writeObject<unsigned short>(v7, this + 40, &v10);
  writeObject(v7, this + 44, &v10);
  writeObject(v7, this + 45, &v10);
  writeObject(v7, this + 92, &v10);
  writeObject(v7, this + 93, &v10);
  writeObject<unsigned char>(v7, this + 96, &v10);
  writeObject<BOOL>(v7, this + 112, &v10);
  writeObject<DgnArray<Branch>>(v7, this + 128, &v10);
  writeObject(v7, this + 36, &v10);
  writeObject<DgnArray<PicNode>>(v7, this + 152, &v10);
  writeObject<unsigned short>(v7, this + 168, &v10);
  writeObject<BOOL>(v7, this + 184, &v10);
  writeObject<BOOL>(v7, this + 200, &v10);
  writeObject(v7, this + 216, &v10);
  writeObjectChecksum(v7, &v10);
  CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
  DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 70, v10);
  return DgnDelete<DgnStream>(v7);
}

uint64_t readObject<BOOL>(DgnStream *a1, uint64_t a2, unsigned int *a3)
{
  v9 = 0;
  readObject(a1, &v9, a3);
  v6 = v9;
  v7 = *a2;
  if (*(a2 + 12) < v9)
  {
    v10 = 0;
    *(a2 + 12) = realloc_array(v7, &v10, v9, *(a2 + 8), *(a2 + 8), 1);
    v7 = v10;
    *a2 = v10;
  }

  *(a2 + 8) = v6;
  return readObjectArray(a1, v7, v6, a3);
}

uint64_t writeObject<BOOL>(DgnStream *a1, uint64_t a2, unsigned int *a3)
{
  v7 = *(a2 + 8);
  writeObject(a1, &v7, a3);
  return writeObjectArray(a1, *a2, *(a2 + 8), a3);
}

uint64_t writeObject<DgnArray<Branch>>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v9 = *(a2 + 8);
  result = writeObject(a1, &v9, a3);
  if (*(a2 + 8))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      result = writeObject<Branch>(a1, *a2 + v7, a3);
      ++v8;
      v7 += 16;
    }

    while (v8 < *(a2 + 8));
  }

  return result;
}

uint64_t writeObject<DgnArray<PicNode>>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v9 = *(a2 + 8);
  result = writeObject(a1, &v9, a3);
  if (*(a2 + 8))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      result = writeObject<PicNode>(a1, *a2 + v7, a3);
      ++v8;
      v7 += 16;
    }

    while (v8 < *(a2 + 8));
  }

  return result;
}

unsigned __int16 *PicMgr::getPicNode(uint64_t a1, int a2, unsigned __int16 *a3)
{
  v6 = a3[2];
  if (PicMgr::canLookupPic(a1, a3))
  {
    v7 = *(a1 + 88);
    v8 = a3[1] + v7 * a3[2];
    v9 = a3[3] + v8 * v7;
    if (*(a1 + 144) == 3)
    {
      v8 = v9;
    }

    return (*(*(a1 + 152) + 16 * v6) + 4 * (*(*(a1 + 168) + 2 * v8) + a2));
  }

  else
  {
    v11 = (*(a1 + 128) + 16 * (a2 + *(a1 + 32) * v6));
    v12 = 0;
    return PicMgr::searchPicTree(a1, a3, v11, 0, &v12);
  }
}

BOOL PicMgr::canLookupPic(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 144);
  if (v2 == 1)
  {
    return 0;
  }

  if (*(a1 + 93) == 1 && (*(a2 + 10) || *(a2 + 11) != 1))
  {
    return 0;
  }

  v5 = *(*a1 + 56);
  if (*(a1 + 92) == 1 && (*a2 != v5 || a2[4] != v5))
  {
    return 0;
  }

  return v2 != 2 || v5 == a2[3];
}

unsigned __int16 *PicMgr::searchPicTree(uint64_t a1, unsigned __int16 *a2, uint64_t *a3, unsigned int a4, _DWORD *a5)
{
  v6 = *a3;
  result = (*a3 + 8 * a4);
  v8 = result[2];
  if (v8 != 0xFFFF)
  {
    v9 = 0;
    v10 = *(a2 + 11);
    v11 = *(a2 + 10);
    v12 = a2[4];
    v13 = *a2;
    v14 = a2[3];
    v15 = a2[1];
    while (1)
    {
      v16 = v8;
      v17 = *(a1 + 88) * v8;
      v18 = *(*(a1 + 96) + v16);
      if (v18 > 3)
      {
        if (v18 != 4)
        {
          if (v18 == 5)
          {
            if (!v11)
            {
              goto LABEL_19;
            }
          }

          else if (v18 != 6 || v10 == 0)
          {
            goto LABEL_19;
          }

LABEL_18:
          ++result;
          goto LABEL_19;
        }

        v19 = v17 + v12;
        goto LABEL_17;
      }

      if (v18 == 1)
      {
        break;
      }

      if (v18 == 2)
      {
        if (*(*(a1 + 112) + (v17 + v15)) != 1)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

      if (v18 == 3)
      {
        v19 = v17 + v14;
        goto LABEL_17;
      }

LABEL_19:
      ++v9;
      result = (v6 + 8 * *result);
      v8 = result[2];
      if (v8 == 0xFFFF)
      {
        goto LABEL_26;
      }
    }

    v19 = v17 + v13;
LABEL_17:
    if (*(*(a1 + 112) + v19))
    {
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v9 = 0;
LABEL_26:
  *a5 += v9;
  return result;
}

void *PicMgr::getPrefContextPelIdAndDurIds(void *result, int a2, int a3, uint64_t *a4, int a5, uint64_t a6, unsigned int a7, unsigned int a8, uint64_t a9)
{
  v9 = result;
  v10 = *(*result + 56);
  v11 = *(a6 + 2 * a8);
  if (a2 <= 1)
  {
    v14 = *(*result + 56);
    v12 = v14;
    v13 = v14;
    if (!a2)
    {
      goto LABEL_18;
    }

    v12 = *(*result + 56);
    v13 = v12;
    if (a2 == 1)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v12 = *(*result + 56);
  if (a2 != 2)
  {
    v12 = *(*result + 56);
    v13 = v12;
    if (a2 == 4)
    {
      goto LABEL_13;
    }

    if (a2 == 3)
    {
      v12 = *(*result + 56);
      if (a8 + 2 < a7)
      {
        v12 = *(a6 + 2 * (a8 + 2));
      }

      goto LABEL_7;
    }

LABEL_11:
    v14 = *(*result + 56);
    v12 = v14;
    v13 = v14;
    goto LABEL_20;
  }

LABEL_7:
  if (a8 < 2)
  {
    v13 = *(*result + 56);
  }

  else
  {
    v13 = *(a6 + 2 * (a8 - 2));
  }

LABEL_13:
  if (a8 + 1 >= a7)
  {
    v14 = *(*result + 56);
LABEL_18:
    if (!a8)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (a2 != 1 && !a8)
  {
    v14 = *(*result + 56);
    goto LABEL_20;
  }

  v14 = *(a6 + 2 * (a8 + 1));
  if (a8)
  {
LABEL_19:
    v10 = *(a6 + 2 * (a8 - 1));
  }

LABEL_20:
  LOBYTE(v15) = 0;
  LOBYTE(v16) = 0;
  if (a3 != 1)
  {
    if (a3 != 2)
    {
      if (a3 != 3)
      {
        goto LABEL_33;
      }

      v17 = *a4;
      if (a8)
      {
        v15 = (*(v17 + 4 * ((a8 + a5 - 1) >> 5)) >> (a8 + a5 - 1)) & 1;
      }

      else
      {
        LOBYTE(v15) = 0;
      }

      v16 = (*(v17 + 4 * ((a8 + a5) >> 5)) >> (a8 + a5)) & 1;
    }

    if (a7 - 1 == a8)
    {
      LOBYTE(v16) = 1;
    }
  }

  if (!a8)
  {
    LOBYTE(v15) = 1;
  }

LABEL_33:
  v23[0] = v13;
  v23[1] = v10;
  v23[2] = v11;
  v23[3] = v14;
  v23[4] = v12;
  v24 = v15;
  v25 = v16;
  v18 = *(result[2] + v11);
  v19 = *(a9 + 12);
  if (v18 > v19)
  {
    result = DgnPrimArray<unsigned int>::reallocElts(a9, v18 - v19, 0);
  }

  *(a9 + 8) = v18;
  if (v18)
  {
    v20 = 0;
    v21 = 0;
    v22 = 4 * v18;
    do
    {
      result = PicMgr::getPicNode(v9, v21, v23);
      *(*a9 + v20) = *result;
      ++v21;
      v20 += 4;
    }

    while (v22 != v20);
  }

  return result;
}

uint64_t PicMgr::getEndDuplicatesLookup(uint64_t a1, unsigned int *a2, void *a3, void *a4, uint64_t a5, uint64_t *a6)
{
  v12 = a2[2];
  *(a6 + 2) = 0;
  v13 = *(a6 + 3);
  if (v12 > v13)
  {
    DgnPrimArray<unsigned int>::reallocElts(a6, v12 - v13, 0);
  }

  v14 = *(*a2 + 4);
  v15 = *(*(a1 + 16) + v14);
  v16 = *(a1 + 152);
  *(a5 + 8) = 0;
  v17 = *(a5 + 12);
  if (v12 > v17)
  {
    DgnPrimArray<short>::reallocElts(a5, v12 - v17, 0);
LABEL_6:
    v18 = 0;
    v19 = 0;
    while (1)
    {
      v20 = (*a2 + 12 * v18);
      v21 = *(a1 + 88);
      v22 = v20[1] + v21 * v20[2];
      v23 = v20[3] + v22 * v21;
      if (*(a1 + 144) != 3)
      {
        v23 = v22;
      }

      v24 = *(*(a1 + 168) + 2 * v23);
      v25 = *(a5 + 8);
      if (!v25)
      {
        break;
      }

      v26 = 0;
      LODWORD(v27) = -1;
      do
      {
        if (*(*a5 + 2 * v26) == v24)
        {
          v27 = v26;
        }

        else
        {
          v27 = v27;
        }

        ++v26;
      }

      while (v25 != v26);
      v28 = *a6;
      if (v27 == -1)
      {
        goto LABEL_18;
      }

      v25 = v27;
LABEL_22:
      v19 += v15;
      *(*a3 + 4 * v18++) = *(v28 + 4 * v25);
      if (v18 == v12)
      {
        return *(a5 + 8);
      }
    }

    v28 = *a6;
LABEL_18:
    *(*a5 + 2 * v25) = v24;
    *(a5 + 8) = v25 + 1;
    *(v28 + 4 * (*(a6 + 2))++) = v18;
    if (v15)
    {
      v29 = 4 * v24;
      v30 = v15;
      v31 = v19;
      do
      {
        *(*a4 + 4 * v31) = *(*(v16 + 16 * v14) + v29);
        v29 += 4;
        ++v31;
        --v30;
      }

      while (v30);
      v28 = *a6;
    }

    goto LABEL_22;
  }

  if (v12)
  {
    goto LABEL_6;
  }

  return *(a5 + 8);
}

uint64_t PicMgr::getEndDuplicatesSearch(uint64_t a1, uint64_t *a2, void *a3, uint64_t *a4, _DWORD *a5, uint64_t a6)
{
  v6 = a6;
  v10 = *(a2 + 2);
  *(a6 + 8) = 0;
  v11 = *(a6 + 12);
  if (v10 <= v11)
  {
    if (!v10)
    {
      return *(v6 + 8);
    }

    v13 = *a2;
  }

  else
  {
    DgnPrimArray<unsigned int>::reallocElts(a6, v10 - v11, 0);
    v13 = *a2;
  }

  v14 = *(v13 + 4);
  v15 = 0;
  v16 = 0;
  v17 = *(*(a1 + 16) + v14);
  v35 = 16 * v14;
  v37 = v10;
  v38 = v6;
  v40 = *(*(a1 + 16) + v14);
  do
  {
    if (v17)
    {
      LOWORD(v18) = 0;
      v19 = (*a2 + 12 * v15);
      v20 = v35 * *(a1 + 32);
      v21 = v40;
      v22 = v16;
      do
      {
        v23 = PicMgr::searchPicTree(a1, v19, (*(a1 + 128) + v20), v18, a5);
        v18 = v23[3];
        if (v18 == 0xFFFF)
        {
          LOWORD(v18) = 0;
        }

        *(*a4 + 4 * v22) = *v23;
        v20 += 16;
        ++v22;
        --v21;
      }

      while (v21);
    }

    v6 = v38;
    v24 = *(v38 + 8);
    v25 = *v38;
    v26 = 0;
    if (v24)
    {
      v27 = v37;
      v17 = v40;
      while (v40)
      {
        v28 = *(v25 + 4 * v26) * v40;
        v29 = *a4;
        v30 = v40;
        v31 = v16;
        while (1)
        {
          v32 = (v29 + 4 * v28);
          v33 = (v29 + 4 * v31);
          if (*v32 != *v33 || v32[1] != v33[1])
          {
            break;
          }

          ++v31;
          ++v28;
          if (!--v30)
          {
            goto LABEL_21;
          }
        }

        if (++v26 == v24)
        {
          v26 = *(v38 + 8);
          goto LABEL_24;
        }
      }

LABEL_21:
      v26 = v26;
    }

    else
    {
      v27 = v37;
      v17 = v40;
    }

    if (v26 == v24)
    {
LABEL_24:
      *(v25 + 4 * v24) = v15;
      ++*(v38 + 8);
    }

    v16 += v17;
    *(*a3 + 4 * v15++) = *(v25 + 4 * v26);
  }

  while (v15 != v27);
  return *(v6 + 8);
}

unsigned __int16 *PicMgr::getNodeDataPtrs(unsigned __int16 *result, uint64_t *a2, void *a3, unsigned __int16 *a4, _DWORD *a5, _DWORD *a6)
{
  v6 = a2;
  v7 = a4[2];
  if (a4[2])
  {
    v12 = result;
    v13 = *(*(result + 2) + v7);
    result = PicMgr::canLookupPic(result, a4);
    if (result)
    {
      if (v13)
      {
        v14 = v12[44];
        v15 = a4[1] + v14 * a4[2];
        v16 = a4[3] + v15 * v14;
        if (*(v12 + 36) == 3)
        {
          v17 = v16;
        }

        else
        {
          v17 = v15;
        }

        v18 = (*(*(v12 + 19) + 16 * v7) + 4 * *(*(v12 + 21) + 2 * v17));
        do
        {
          v19 = v18[1];
          if (v19 == 0xFFFF)
          {
            v25 = *v6;
            *(v25 + 10) = *v18;
            *v25 = 0;
            *(v25 + 8) = 0;
          }

          else
          {
            v20 = *(*a3 + 2 * v19);
            v21 = *(v12 + 8);
            v22 = *(v12 + 3);
            v23 = *v6;
            *(v23 + 10) = *v18;
            *(v23 + 8) = v21;
            *(v23 + 9) = v22;
            *(v23 + 4) = v20;
            *(v23 + 6) = v21 + v22 + v20;
            if (v20 < 0)
            {
              *(v23 + 9) = v22 - v20;
            }

            if (v20 >= 0)
            {
              v24 = v20 << 8;
            }

            else
            {
              v24 = 255 * v20;
            }

            *v23 = v24;
          }

          v18 += 2;
          ++v6;
          --v13;
        }

        while (v13);
      }
    }

    else
    {
      if (v13)
      {
        LOWORD(v27) = 0;
        v28 = 16 * v7 * *(v12 + 32);
        v29 = v13;
        do
        {
          result = PicMgr::searchPicTree(v12, a4, (*(v12 + 16) + v28), v27, a6);
          v27 = result[3];
          if (v27 == 0xFFFF)
          {
            LOWORD(v27) = 0;
          }

          v30 = result[1];
          if (v30 == 0xFFFF)
          {
            v36 = *v6;
            *(v36 + 10) = *result;
            *v36 = 0;
            *(v36 + 8) = 0;
          }

          else
          {
            v31 = *(*a3 + 2 * v30);
            v32 = *(v12 + 8);
            v33 = *(v12 + 3);
            v34 = *v6;
            *(v34 + 10) = *result;
            *(v34 + 8) = v32;
            *(v34 + 9) = v33;
            *(v34 + 4) = v31;
            *(v34 + 6) = v32 + v33 + v31;
            if (v31 < 0)
            {
              *(v34 + 9) = v33 - v31;
            }

            if (v31 >= 0)
            {
              v35 = v31 << 8;
            }

            else
            {
              v35 = 255 * v31;
            }

            *v34 = v35;
          }

          v28 += 16;
          ++v6;
          --v29;
        }

        while (v29);
      }

      *a5 += v13;
    }
  }

  else
  {
    v26 = *a2;
    *(v26 + 8) = 0;
    *v26 = 0;
  }

  return result;
}

uint64_t PicMgr::getNodeDataPtrsFromPicNodes(uint64_t result, uint64_t *a2, void *a3, uint64_t a4, unsigned int a5)
{
  if (a5)
  {
    v5 = a5;
    v6 = (a4 + 2);
    do
    {
      if (!*(v6 - 1) || (v7 = *v6, v7 == 0xFFFF))
      {
        v8 = 0;
        v9 = 0;
        LOWORD(v10) = 0;
      }

      else
      {
        v8 = *(*a3 + 2 * v7);
        v9 = *(result + 8);
        v10 = *(result + 12);
      }

      v11 = *a2;
      *(v11 + 10) = *(v6 - 1);
      *(v11 + 8) = v9;
      *(v11 + 9) = v10;
      *(v11 + 4) = v8;
      v12 = v8;
      *(v11 + 6) = v9 + v8 + v10;
      if (v8 < 0)
      {
        *(v11 + 9) = v10 - v8;
      }

      v13 = v8 << 8;
      if (v12 >= 0)
      {
        v14 = v13;
      }

      else
      {
        v14 = 255 * v12;
      }

      *v11 = v14;
      v6 += 2;
      ++a2;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t *PicMgr::getPelPhoneMap(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *(result + 45);
  v7 = v6 + 1;
  v8 = *(a2 + 12);
  if (v8 <= v6)
  {
    result = DgnPrimArray<short>::reallocElts(a2, v7 - v8, 0);
  }

  *(a2 + 8) = v7;
  if (a3)
  {
    v9 = *(a3 + 12);
    if (v9 <= v6)
    {
      result = DgnPrimArray<unsigned int>::reallocElts(a3, v7 - v9, 0);
    }

    *(a3 + 8) = v7;
  }

  v10 = *(v5 + 136);
  if (v10)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = *(v5 + 32);
    v15 = *(v5 + 128);
    do
    {
      if (v11 != 0 && v11 % v14 == 0)
      {
        v13 = 0;
      }

      v12 += v11 != 0 && v11 % v14 == 0;
      v16 = (v15 + 16 * v11);
      v17 = v16[2];
      if (v17)
      {
        v18 = 0;
        v19 = (*v16 + 4);
        do
        {
          if (*v19 == -1)
          {
            v20 = *(v19 - 2);
            result = *a2;
            *(*a2 + 2 * v20) = v12;
            if (a3)
            {
              *(*a3 + 4 * v20) = v13;
              v17 = v16[2];
            }
          }

          ++v18;
          v19 += 4;
        }

        while (v18 < v17);
        v10 = *(v5 + 136);
      }

      ++v13;
      ++v11;
    }

    while (v11 < v10);
  }

  return result;
}

void *PicMgr::getPelDurIdMap(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 90);
  v5 = v4 + 1;
  v6 = *(a2 + 12);
  if (v6 <= v4)
  {
    DgnPrimArray<short>::reallocElts(a2, v5 - v6, 0);
  }

  *(a2 + 8) = v5;
  v7 = *a2;
  result = memset(v7, 255, 2 * v4 + 2);
  *v7 = 0;
  v9 = *(a1 + 136);
  if (v9)
  {
    v10 = 0;
    v11 = *(a1 + 128);
    do
    {
      v12 = (v11 + 16 * v10);
      v13 = v12[2];
      if (v13)
      {
        v14 = (*v12 + 2);
        do
        {
          if (v14[1] == -1)
          {
            v7[*(v14 - 1)] = *v14;
          }

          v14 += 4;
          --v13;
        }

        while (v13);
      }

      ++v10;
    }

    while (v10 != v9);
  }

  return result;
}

void *PicMgr::getRightAndDoubleGenericPicNodes@<X0>(void *this@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v4 = this;
  v6 = *(*this + 56);
  v7 = **this - 2;
  v8 = v7 * a2 * v7;
  *a3 = 0;
  a3[1] = 0;
  if (v8)
  {
    this = DgnPrimArray<unsigned long long>::reallocElts(a3, v7 * a2 * v7, 0);
    *(a3 + 2) = v8;
    if (v8 >= 1)
    {
      v9 = v8 - 1;
      do
      {
        *(*a3 + 8 * v9) = 0;
        v10 = v9-- + 1;
      }

      while (v10 > 1);
    }
  }

  if (v7)
  {
    v11 = 0;
    v12 = *(v4 + 16);
    do
    {
      v13 = 0;
      do
      {
        v17[0] = v6;
        v17[1] = v11;
        v17[2] = v13;
        v17[3] = v6;
        v17[4] = v6;
        v14 = v13;
        v17[5] = 0;
        if (*(v12 + v13))
        {
          v15 = 0;
          v16 = a2 * (v7 * v11 + v13);
          do
          {
            this = PicMgr::getPicNode(v4, v15, v17);
            *(*a3 + 8 * (v16 + v15++)) = this;
            v12 = *(v4 + 16);
          }

          while (v15 < *(v12 + v14));
        }

        v13 = v14 + 1;
      }

      while (v7 > (v14 + 1));
      ++v11;
    }

    while (v7 > v11);
  }

  return this;
}

uint64_t *DgnPrimArray<BOOL>::copyArraySlice(uint64_t *result, uint64_t *a2, unsigned int a3, unsigned int a4)
{
  v7 = result;
  v8 = a4;
  if (*(result + 3) >= a4)
  {
    *(result + 2) = a4;
    if (!a4)
    {
      return result;
    }
  }

  else
  {
    v11 = 0;
    result = realloc_array(*result, &v11, a4, *(result + 2), *(result + 2), 1);
    *v7 = v11;
    *(v7 + 8) = a4;
    *(v7 + 12) = result;
  }

  v9 = *a2;
  v10 = *v7;
  do
  {
    *v10++ = *(v9 + a3++);
    --v8;
  }

  while (v8);
  return result;
}

uint64_t writeObject<Branch>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v9 = *(a2 + 8);
  result = writeObject(a1, &v9, a3);
  if (*(a2 + 8))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      result = Branch::writeObject(*a2 + v7, a1, a3);
      ++v8;
      v7 += 8;
    }

    while (v8 < *(a2 + 8));
  }

  return result;
}

uint64_t writeObject<PicNode>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v10 = *(a2 + 8);
  result = writeObject(a1, &v10, a3);
  if (*(a2 + 8))
  {
    v7 = 0;
    v8 = 2;
    do
    {
      v9 = (*a2 + v8);
      writeObject(a1, v9 - 1, a3);
      result = writeObject(a1, v9, a3);
      ++v7;
      v8 += 4;
    }

    while (v7 < *(a2 + 8));
  }

  return result;
}

uint64_t TResGraphMaker::clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 16);
  if (v2)
  {
    if (*(v2 + 344) == 1)
    {
      v3 = *(v2 + 64);
      if (v3 != v2 + 88 && v3 != 0)
      {
        MEMORY[0x26672B1B0]();
      }
    }

    v5 = *(v2 + 24);
    if (v5)
    {
      *(v2 + 32) = v5;
      operator delete(v5);
    }

    v6 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v6;
      operator delete(v6);
    }

    this = MEMORY[0x26672B1B0](v2, 0x1030C404962A615);
  }

  *(v1 + 16) = 0;
  return this;
}

void TResGraphMaker::add(TResGraphMaker *this, uint64_t **a2, int a3)
{
  v3 = a2;
  v4 = this;
  v5 = *(this + 2);
  if (!v5)
  {
    operator new();
  }

  v6 = (v5[1] - *v5) >> 4;
  v7 = a2[10];
  v8 = a2[11] - v7;
  v9 = v8 >> 3;
  if (v8)
  {
    if (v9 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v8 >> 3;
    }

    do
    {
      v11 = *v7++;
      v6 += *(v11 + 32) ^ 1;
      --v10;
    }

    while (v10);
  }

  v60 = -1;
  std::vector<unsigned long>::vector[abi:ne200100](__p, v9, &v60);
  v12 = *(v4 + 2);
  v13 = v12[7];
  *(__p[0] + *(*(v3 + 8) + 40)) = v13;
  std::vector<TPTokenState>::resize(v12, v6 - (v13 != 0));
  v14 = *(v4 + 2);
  v15 = *(v3 + 9);
  v16 = __p[0];
  *(__p[0] + *(v15 + 40)) = ((v14[1] - *v14) >> 4) - 1;
  v17 = *(v3 + 10);
  if (*(v3 + 11) != v17)
  {
    v18 = 0;
    v52 = v3;
    v53 = *(*(v3 + 8) + 24);
    v55 = v13 + 1;
    v59 = v4;
    while (1)
    {
      v19 = *(v17 + 8 * v18);
      if ((*(v19 + 32) & 1) == 0)
      {
        break;
      }

LABEL_51:
      ++v18;
      v17 = *(v3 + 10);
      if (v18 >= (*(v3 + 11) - v17) >> 3)
      {
        v15 = *(v3 + 9);
        goto LABEL_53;
      }
    }

    v20 = *(v19 + 40);
    if (v16[v20] == -1)
    {
      v16[v20] = v55++;
    }

    v56 = v14[3];
    v57 = v14[4];
    OutEdge = TVertex::getOutEdge(v19);
    if (!OutEdge)
    {
LABEL_44:
      v14 = *(v4 + 2);
      v16 = __p[0];
      v47 = (*v14 + 16 * *(__p[0] + *(v19 + 40)));
      v47[2] = (v57 - v56) >> 5;
      v47[3] = ((v14[4] - v14[3]) >> 5) - ((v57 - v56) >> 5);
      v48 = *(v19 + 16);
      if (v48)
      {
        v49 = v48 + a3 - v53;
      }

      else
      {
        v49 = -1;
      }

      *v47 = v49;
      v50 = *(v19 + 24);
      if (v50)
      {
        v51 = v50 + a3 - v53;
      }

      else
      {
        v51 = -1;
      }

      v47[1] = v51;
      goto LABEL_51;
    }

LABEL_14:
    v22 = *(OutEdge + 24);
    v23 = *(v22 + 40);
    v24 = __p[0];
    v25 = *(__p[0] + v23);
    if (v25 == -1)
    {
      *(__p[0] + v23) = v55;
      v25 = v24[*(v22 + 40)];
      ++v55;
    }

    v26 = *(*(v4 + 2) + 80);
    v27 = v24[*(v19 + 40)];
    v28 = *(OutEdge + 48);
    if (v28 <= 2)
    {
      if (v28)
      {
        if (v28 == 1)
        {
          v29 = 2;
          goto LABEL_27;
        }

        goto LABEL_25;
      }
    }

    else
    {
      if (v28 == 3)
      {
        goto LABEL_25;
      }

      if (v28 == 6)
      {
        v29 = 4;
LABEL_27:
        v58 = v29;
        TWord::getWordSpec(*(OutEdge + 56));
        v31 = v30;
        TLocaleInfo::unicodeToMultiByte(v59[1], **(OutEdge + 56), v59[2] + 64);
        v32 = v59[2];
        LOBYTE(v60) = 0;
        TBuffer<char>::insert((v32 + 64), *(v32 + 80), &v60, 1uLL);
        v33 = v59[2];
        v34 = v33[4];
        v35 = v33[5];
        if (v34 >= v35)
        {
          v37 = v33[3];
          v38 = (v34 - v37) >> 5;
          v39 = v38 + 1;
          if ((v38 + 1) >> 59)
          {
            std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
          }

          v40 = v35 - v37;
          if (v40 >> 4 > v39)
          {
            v39 = v40 >> 4;
          }

          if (v40 >= 0x7FFFFFFFFFFFFFE0)
          {
            v41 = 0x7FFFFFFFFFFFFFFLL;
          }

          else
          {
            v41 = v39;
          }

          if (v41)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<TPTokenTrans>>((v33 + 3), v41);
          }

          v42 = 32 * v38;
          *v42 = v26;
          *(v42 + 4) = v27;
          *(v42 + 8) = v25;
          *(v42 + 16) = v58;
          *(v42 + 24) = v31;
          v36 = 32 * v38 + 32;
          v43 = v33[3];
          v44 = v33[4] - v43;
          v45 = v42 - v44;
          memcpy((v42 - v44), v43, v44);
          v46 = v33[3];
          v33[3] = v45;
          v33[4] = v36;
          v33[5] = 0;
          if (v46)
          {
            operator delete(v46);
          }

          v3 = v52;
        }

        else
        {
          *v34 = v26;
          *(v34 + 4) = v27;
          *(v34 + 8) = v25;
          v36 = v34 + 32;
          *(v34 + 16) = v58;
          *(v34 + 24) = v31;
        }

        v4 = v59;
        v33[4] = v36;
        while (1)
        {
          OutEdge = *(OutEdge + 8);
          if (!OutEdge)
          {
            goto LABEL_44;
          }

          if ((*(OutEdge + 32) & 1) == 0)
          {
            goto LABEL_14;
          }
        }
      }

      if (v28 != 4)
      {
LABEL_25:
        v29 = 1;
        goto LABEL_27;
      }
    }

    v29 = 3;
    goto LABEL_27;
  }

LABEL_53:
  v14[7] = v16[*(v15 + 40)];
  __p[1] = v16;
  operator delete(v16);
}

void sub_2625B54EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<TPTokenState>::resize(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 16 * a2;
    }
  }

  else
  {
    std::vector<TPTokenState>::__append(result, a2 - v2);
  }
}

void TResGraphMaker::~TResGraphMaker(TResGraphMaker *this)
{
  *this = &unk_287527FA8;
  TResGraphMaker::clear(this);
}

{
  *this = &unk_287527FA8;
  TResGraphMaker::clear(this);

  JUMPOUT(0x26672B1B0);
}

{
  *this = &unk_287527FA8;
  TResGraphMaker::clear(this);
}

void std::vector<TPTokenState>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TPTokenState>>(a1, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * a2);
    v11 = &v10[16 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<TPTokenState>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<TPTokenTrans>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

unint64_t StartupSearchCrossLayerParamSpecMgr(void)
{
  v0 = MemChunkAlloc(0x38uLL, 0);
  StringParamSpec::StringParamSpec(v0, "SearchCrossLayerThreshScoreIncrementMatrix", &byte_262899963, &byte_262899963, &sSearchCrossLayerThreshScoreIncrementMatrixStringHistory);
  v1 = MemChunkAlloc(0x38uLL, 0);
  StringParamSpec::StringParamSpec(v1, "SearchCrossLayerWordEndThreshScoreIncrementMatrix", &byte_262899963, &byte_262899963, &sSearchCrossLayerWordEndThreshScoreIncrementMatrixStringHistory);
  v2 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v2, "SearchCrossLayerUseBestSilence", &byte_262899963, &byte_262899963, &sSearchCrossLayerUseBestSilenceBoolHistory);
  ParamSpecMgr::addParam(qword_281051FC0, v0);
  ParamSpecMgr::addParam(qword_281051FC0, v2);
  ParamSpecMgr::addParam(qword_281051FC0, v1);
  v3 = qword_281051FC0;

  return ParamSpecMgr::sortParams(v3);
}

_DWORD *SearchCrossLayerParamSet::SearchCrossLayerParamSet(_DWORD *a1, const char *a2, int a3, int a4, int a5)
{
  *a1 = &unk_287528C00;
  DgnString::DgnString((a1 + 2), a2);
  a1[6] = a3;
  a1[7] = a4;
  a1[8] = a5;
  a1[9] = 0;
  *a1 = &unk_287524C00;
  DgnString::DgnString((a1 + 10));
  DgnString::DgnString((a1 + 16));
  (*(*a1 + 16))(a1);
  return a1;
}

void sub_2625B5944(_Unwind_Exception *a1)
{
  DgnString::~DgnString((v1 + 8));
  DgnString::~DgnString((v1 + 5));
  *v1 = v2;
  DgnString::~DgnString((v1 + 1));
  _Unwind_Resume(a1);
}

uint64_t SearchCrossLayerParamSet::SearchCrossLayerParamSet(uint64_t a1, _BYTE *a2, char *a3, int a4, int a5, int a6)
{
  *a1 = &unk_287528C00;
  DgnString::DgnString((a1 + 8), a3);
  *(a1 + 24) = a4;
  *(a1 + 28) = a5;
  *(a1 + 32) = a6;
  *(a1 + 36) = 0;
  *a1 = &unk_287524C00;
  DgnString::DgnString((a1 + 40));
  DgnString::DgnString((a1 + 64));
  DgnString::operator=((a1 + 40), (a2 + 40));
  *(a1 + 56) = a2[56];
  DgnString::operator=((a1 + 64), (a2 + 64));
  return a1;
}

void sub_2625B5A40(_Unwind_Exception *a1)
{
  DgnString::~DgnString((v1 + 5));
  *v1 = v2;
  DgnString::~DgnString((v1 + 1));
  _Unwind_Resume(a1);
}

DgnString *SearchCrossLayerParamSet::setDefaults(SearchCrossLayerParamSet *this)
{
  Default_string = ParamSpecMgr::ParamGetDefault_string(qword_281051FC0, 1, 0, 0);
  DgnString::operator=((this + 40), Default_string);
  *(this + 56) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051FC0, 2, 0, 0);
  v3 = ParamSpecMgr::ParamGetDefault_string(qword_281051FC0, 3, 0, 0);

  return DgnString::operator=((this + 64), v3);
}

uint64_t SearchCrossLayerParamSet::sizeObject(uint64_t a1, int a2)
{
  v4 = sizeObject(a1 + 8, a2) + 16 * (a2 != 3);
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v5 = sizeObject(a1 + 40, a2);
    v6 = sizeObject(a1 + 64, a2);
    if (a2 == 3)
    {
      v7 = v4;
    }

    else
    {
      v7 = v4 + 1;
    }

    return v7 + v5 + v6;
  }

  return v4;
}

void SearchCrossLayerParamSet::setParamSetSearchCrossLayerThreshScoreIncrementMatrix(SearchCrossLayerParamSet *this, char *a2)
{
  if (*(this + 9))
  {
    throwParamSetSetFailed("SearchCrossLayerThreshScoreIncrementMatrix", "string");
  }

  else
  {
    DgnString::operator=((this + 40), a2);
  }
}

void SearchCrossLayerParamSet::setParamSetSearchCrossLayerWordEndThreshScoreIncrementMatrix(SearchCrossLayerParamSet *this, char *a2)
{
  if (*(this + 9))
  {
    throwParamSetSetFailed("SearchCrossLayerWordEndThreshScoreIncrementMatrix", "string");
  }

  else
  {
    DgnString::operator=((this + 64), a2);
  }
}

uint64_t SearchCrossLayerParamSet::getBoolParameter(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 3)
  {
    v3 = 3;
    goto LABEL_9;
  }

  if (a2 != 2)
  {
    if (a2 != 1)
    {
      throwWrongParamIdValue(a2, "BOOL");
      goto LABEL_13;
    }

    v3 = 1;
LABEL_9:
    throwWrongTypeForParamId(v3, "string", "BOOL");
LABEL_13:
    v4 = 0;
    return v4 & 1;
  }

  if (a3 == 1)
  {
    ParamByParamId = ParamSpecMgr::getParamByParamId(qword_281051FC0, 2);
  }

  else
  {
    if (a3)
    {
      throwWrongQueryMode(a3, "BOOL");
      goto LABEL_13;
    }

    v4 = *(a1 + 56);
  }

  return v4 & 1;
}

uint64_t SearchCrossLayerParamSet::getIntParameter(uint64_t a1, int a2)
{
  switch(a2)
  {
    case 3:
      v2 = "string";
      v3 = 3;
      break;
    case 2:
      v2 = "BOOL";
      v3 = 2;
      break;
    case 1:
      v2 = "string";
      v3 = 1;
      break;
    default:
      throwWrongParamIdValue(a2, "int");
      return 0;
  }

  throwWrongTypeForParamId(v3, v2, "int");
  return 0;
}

double SearchCrossLayerParamSet::getDoubleParameter(uint64_t a1, int a2)
{
  switch(a2)
  {
    case 3:
      v2 = "string";
      v3 = 3;
      break;
    case 2:
      v2 = "BOOL";
      v3 = 2;
      break;
    case 1:
      v2 = "string";
      v3 = 1;
      break;
    default:
      throwWrongParamIdValue(a2, "double");
      return 0.0;
  }

  throwWrongTypeForParamId(v3, v2, "double");
  return 0.0;
}

char *SearchCrossLayerParamSet::getStringParameter(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 != 3)
  {
    if (a2 == 2)
    {
      throwWrongTypeForParamId(2, "BOOL", "string");
    }

    else
    {
      if (a2 == 1)
      {
        if (a3 != 1)
        {
          if (!a3)
          {
            v3 = *(a1 + 48);
            v4 = *(a1 + 40);
            goto LABEL_11;
          }

          goto LABEL_15;
        }

        v6 = qword_281051FC0;
        v7 = 1;
LABEL_20:
        ParamByParamId = ParamSpecMgr::getParamByParamId(v6, v7);
      }

      throwWrongParamIdValue(a2, "string");
    }

    return 0;
  }

  if (a3 == 1)
  {
    v6 = qword_281051FC0;
    v7 = 3;
    goto LABEL_20;
  }

  if (a3)
  {
LABEL_15:
    throwWrongQueryMode(a3, "string");
    return 0;
  }

  v3 = *(a1 + 72);
  v4 = *(a1 + 64);
LABEL_11:
  if (v3)
  {
    return v4;
  }

  else
  {
    return &byte_262899963;
  }
}

uint64_t SearchCrossLayerParamSet::getEnumParameter(uint64_t a1, int a2)
{
  switch(a2)
  {
    case 3:
      v2 = "string";
      v3 = 3;
      break;
    case 2:
      v2 = "BOOL";
      v3 = 2;
      break;
    case 1:
      v2 = "string";
      v3 = 1;
      break;
    default:
      throwWrongParamIdValue(a2, "enum");
      return 0;
  }

  throwWrongTypeForParamId(v3, v2, "BOOL");
  return 0;
}

void SearchCrossLayerParamSet::setBoolParameter(uint64_t this, int a2, char a3)
{
  switch(a2)
  {
    case 3:
      throwWrongTypeForParamId(3, "string", "BOOL");
      break;
    case 2:
      goto LABEL_5;
    case 1:
      throwWrongTypeForParamId(1, "string", "BOOL");
LABEL_5:
      if (*(this + 36))
      {

        throwParamSetSetFailed("SearchCrossLayerUseBestSilence", "BOOL");
      }

      else
      {
        *(this + 56) = a3;
      }

      return;
  }

  throwWrongParamIdValue(a2, "BOOL");
}

double SearchCrossLayerParamSet::setIntParameter(SearchCrossLayerParamSet *this, int a2)
{
  if (a2 != 3)
  {
    if (a2 != 2)
    {
      if (a2 != 1)
      {
        goto LABEL_7;
      }

      throwWrongTypeForParamId(1, "string", "int");
    }

    throwWrongTypeForParamId(a2, "BOOL", "int");
  }

  throwWrongTypeForParamId(a2, "string", "int");
LABEL_7:

  return throwWrongParamIdValue(a2, "int");
}

double SearchCrossLayerParamSet::setDoubleParameter(SearchCrossLayerParamSet *this, int a2, double a3)
{
  if (a2 != 3)
  {
    if (a2 != 2)
    {
      if (a2 != 1)
      {
        goto LABEL_7;
      }

      throwWrongTypeForParamId(1, "string", "double");
    }

    throwWrongTypeForParamId(a2, "BOOL", "double");
  }

  throwWrongTypeForParamId(a2, "string", "double");
LABEL_7:

  return throwWrongParamIdValue(a2, "double");
}

double SearchCrossLayerParamSet::setStringParameter(SearchCrossLayerParamSet *this, int a2, char *a3)
{
  if (a2 != 3)
  {
    if (a2 != 2)
    {
      if (a2 == 1)
      {

        SearchCrossLayerParamSet::setParamSetSearchCrossLayerThreshScoreIncrementMatrix(this, a3);
      }

      else
      {

        return throwWrongParamIdValue(a2, "string");
      }

      return result;
    }

    throwWrongTypeForParamId(2, "BOOL", "string");
  }

  SearchCrossLayerParamSet::setParamSetSearchCrossLayerWordEndThreshScoreIncrementMatrix(this, a3);
  return result;
}

double SearchCrossLayerParamSet::setEnumParameter(SearchCrossLayerParamSet *this, int a2)
{
  if (a2 != 3)
  {
    if (a2 != 2)
    {
      if (a2 != 1)
      {
        goto LABEL_7;
      }

      throwWrongTypeForParamId(1, "string", "BOOL");
    }

    throwWrongTypeForParamId(a2, "BOOL", "BOOL");
  }

  throwWrongTypeForParamId(a2, "string", "BOOL");
LABEL_7:

  return throwWrongParamIdValue(a2, "enum");
}

void SearchCrossLayerParamSet::~SearchCrossLayerParamSet(SearchCrossLayerParamSet *this)
{
  SearchCrossLayerParamSet::~SearchCrossLayerParamSet(this);

  JUMPOUT(0x26672B1B0);
}

{
  *this = &unk_287524C00;
  v2 = this + 40;
  DgnString::~DgnString(this + 64);
  DgnString::~DgnString(v2);
  *this = &unk_287528C00;
  DgnString::~DgnString(this + 8);
}

void CharInfo::loadCharInfoFromText(CharInfo *this, FileSpec **a2)
{
  DgnTextFileParser::DgnTextFileParser(v11);
  DgnTextFileParser::openDgnTextFileParser(v11, a2, 90, 1);
  DgnTextFileParser::verifyMatchingFileType(v11, "CharInfo");
  v10[0] = 0;
  v10[1] = 0;
  DgnTextFile::legalDgnTextFileVersions(v11, sTCH_Versions, v10);
  DgnTextFileParser::verifyFileVersionInRange(v11, v10);
  DgnString::DgnString(&v8);
  DgnTextFile::getHeaderField(v11, "CharType", &v8, 1);
  if (v9)
  {
    v4 = v8;
  }

  else
  {
    v4 = &unk_26286CDB4;
  }

  if (!strcmp(v4, "Char"))
  {
    v5 = 0;
LABEL_9:
    *this = v5;
    goto LABEL_10;
  }

  if (!strcmp(v4, "EncodedWideChar"))
  {
    v5 = 1;
    goto LABEL_9;
  }

  errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/charinfo.cpp", 115, "word/charinfo", 6, "%.500s", v4);
LABEL_10:
  DgnTextFileParser::verifyNoUnknownHeaderFields(v11);
  v7[0] = 0;
  v7[1] = 0;
  DgnTextFile::getLineFieldNames(v11, v7);
  v6[0] = 0;
  v6[1] = 0;
  DgnTextFile::getLineFieldFormats(v11, v6);
  DgnTextFileParser::verifyMatchingNumFieldSpecs(v11, 0);
  DgnTextFileParser::verifyNoBodyLines(v11);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v6);
  DgnArray<DgnString>::releaseAll(v7);
  DgnString::~DgnString(&v8);
  DgnIArray<Utterance *>::~DgnIArray(v10);
  DgnTextFileParser::~DgnTextFileParser(v11);
}

void sub_2625B655C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va3, a7);
  va_start(va2, a7);
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  va_copy(va3, va2);
  v14 = va_arg(va3, void);
  v16 = va_arg(va3, void);
  DgnArray<DgnString>::releaseAll(va);
  DgnString::~DgnString(va1);
  DgnIArray<Utterance *>::~DgnIArray(va2);
  DgnTextFileParser::~DgnTextFileParser(va3);
  _Unwind_Resume(a1);
}

uint64_t CharInfo::loadCharInfo(CharInfo *this, FileSpec **a2, DFileChecksums *a3, int a4)
{
  if (DFile::subFileExists(a2, 0x5Au))
  {
    if ((a4 & 1) == 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/charinfo.cpp", 140, "word/charinfo", 8, "%s", &unk_26286CDB4);
    }

    CharInfo::loadCharInfoFromText(this, a2);
  }

  else
  {
    result = DFile::subFileExists(a2, 0xAu);
    if (!result)
    {
      return result;
    }

    if (a4)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/charinfo.cpp", 148, "word/charinfo", 9, "%s", &errStr_word_charinfo_E_LOADING_MIXED_TEXT_AND_BINARY_SUBFILES);
    }

    v13 = 0;
    v9 = OpenAndReadMrecHeader(a2, 0xAu, 1, "MRCHAR!?", &v13 + 1, &v13);
    if (*(a2 + 6))
    {
      v10 = a2[2];
    }

    else
    {
      v10 = &unk_26286CDB4;
    }

    MrecHeaderCheckVersions(v10, "MRCHAR!?", HIDWORD(v13), v13, 0x12u, 3u);
    MrecHeaderCheckLatestVersionIfShared(a2, "MRCHAR!?", SHIDWORD(v13), v13, 18, 3);
    v12 = 0;
    readObject(v9, this, &v12);
    readObjectChecksumAndVerify(v9, v12);
    CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
    DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 10, v12);
    DgnDelete<DgnStream>(v9);
  }

  return 1;
}

void CharInfo::saveCharInfoToText(CharInfo *this, DFile *a2, uint64_t a3)
{
  v3 = a3;
  DgnTextFileWriter::DgnTextFileWriter(v11);
  DgnTextFileWriter::openDgnTextFileWriter(v11, a2, 90, v3);
  v9 = 0;
  v10 = 0;
  DgnTextFile::legalDgnTextFileVersions(v11, sTCH_Versions, &v9);
  DgnTextFileWriter::setFileType(v11, "CharInfo", (v9 + 8 * (v10 - 1)));
  v8[0] = 0;
  v8[1] = 0;
  v7[0] = 0;
  v7[1] = 0;
  DgnTextFileWriter::setLineFieldFormat(v11, v8, v7);
  if (*this)
  {
    v6 = "EncodedWideChar";
  }

  else
  {
    v6 = "Char";
  }

  DgnTextFileWriter::setHeaderField(v11, "CharType", v6);
  DgnArray<DgnString>::releaseAll(v7);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v8);
  DgnIArray<Utterance *>::~DgnIArray(&v9);
  DgnTextFileWriter::~DgnTextFileWriter(v11);
}

void sub_2625B684C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  DgnTextFileWriter::~DgnTextFileWriter(va);
  _Unwind_Resume(a1);
}

void CharInfo::saveCharInfo(CharInfo *this, DFile *a2, DFileChecksums *a3, int a4, uint64_t a5)
{
  if (a4)
  {

    CharInfo::saveCharInfoToText(this, a2, a5);
  }

  else
  {
    v8 = OpenAndWriteMrecHeader(a2, 0xAu, a5, "MRCHAR!?", 18, 3);
    v10 = 0;
    writeObject(v8, this, &v10);
    writeObjectChecksum(v8, &v10);
    CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
    DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 10, v10);
    DgnDelete<DgnStream>(v8);
  }
}

void CharInfo::printSize(CharInfo *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v18, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/charinfo.cpp", 227);
  if (v19)
  {
    v12 = v18;
  }

  else
  {
    v12 = &unk_26286CDB4;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v11, a3, &unk_26286CDB4, a3, &unk_26286CDB4, v12);
  DgnString::~DgnString(&v18);
  if (a2 != -1)
  {
    xlprintf("%d ", v13, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v13, a3, &unk_26286CDB4);
  getShipObjectSizeDescription(&v18, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/charinfo.cpp", 229);
  if (v19)
  {
    v15 = v18;
  }

  else
  {
    v15 = &unk_26286CDB4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v14, (a3 + 1), &unk_26286CDB4, (34 - a3), (34 - a3), v15, 4, 4, 0);
  DgnString::~DgnString(&v18);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v18, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/charinfo.cpp", 231);
  if (v19)
  {
    v17 = v18;
  }

  else
  {
    v17 = &unk_26286CDB4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v16, a3, &unk_26286CDB4, (35 - a3), (35 - a3), v17, *a4, *a5, *a6);
  DgnString::~DgnString(&v18);
}

void sub_2625B6AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

unint64_t CharInfo::decodeCharString(CharInfo *a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v6 = 0;
  v10 = 0;
  do
  {
    result = CharInfo::decodeOneChar(a1, v6, &v10, a4);
    v8 = result;
    v9 = *(a2 + 8);
    if (v9 == *(a2 + 12))
    {
      result = DgnPrimArray<unsigned int>::reallocElts(a2, 1, 1);
      v9 = *(a2 + 8);
    }

    *(*a2 + 4 * v9) = v8;
    ++*(a2 + 8);
    v6 = (v10 + v6);
  }

  while (v8);
  return result;
}

uint64_t CharInfo::decodeOneChar(CharInfo *this, const unsigned __int8 *a2, _DWORD *a3, unsigned int *a4)
{
  v5 = a2;
  v7 = *(this + a2);
  result = *(this + a2);
  if (v7 < 0)
  {
    v10 = a2;
    if ((result & 0xE0) == 0xC0)
    {
      if ((result & 0x1E) == 0)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/charinfo.cpp", 239, "word/charinfo", 10, "0x%02x %u %u %.500s", result, 0, a2, this);
        LOBYTE(v7) = *(this + v5);
      }

      v11 = v5 + 1;
      v12 = (v7 & 0x1F) << 6;
      v13 = *(this + v11);
      if ((v13 & 0xC0) != 0x80)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/charinfo.cpp", 239, "word/charinfo", 10, "0x%02x %u %u %.500s", v13, 1, v5 + 1, this);
        LOBYTE(v13) = *(this + v11);
      }

      v9 = v5 + 2;
LABEL_38:
      result = v12 | v13 & 0x3Fu;
      goto LABEL_39;
    }

    if ((result & 0xF0) == 0xE0)
    {
      v14 = (a2 + 1);
      if ((result & 0xF) == 0xD)
      {
        v16 = *(this + v14);
        v20 = v16 & 0xE0;
        v15 = 53248;
      }

      else
      {
        if ((result & 0xF) == 0)
        {
          v15 = 0;
          v16 = *(this + v14);
          if ((v16 & 0xE0) == 0xA0)
          {
            goto LABEL_26;
          }

          goto LABEL_25;
        }

        v15 = (result & 0xF) << 12;
        v16 = *(this + v14);
        v20 = v16 & 0xC0;
      }

      if (v20 == 128)
      {
LABEL_26:
        v21 = v5 + 2;
        v12 = v15 | ((*(this + v14) & 0x3F) << 6);
        v13 = *(this + v21);
        if ((v13 & 0xC0) != 0x80)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/charinfo.cpp", 239, "word/charinfo", 10, "0x%02x %u %u %.500s", v13, 2, v5 + 2, this);
          LOBYTE(v13) = *(this + v21);
        }

        v9 = v5 + 3;
        goto LABEL_38;
      }

LABEL_25:
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/charinfo.cpp", 239, "word/charinfo", 10, "0x%02x %u %u %.500s", v16, 1, a2 + 1, this);
      goto LABEL_26;
    }

    if ((result & 0xF8) != 0xF0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/charinfo.cpp", 239, "word/charinfo", 10, "0x%02x %u %u %.500s", result, 0, a2, this);
      result = 0;
      v9 = v5;
      goto LABEL_39;
    }

    v17 = result & 7;
    if (v17 == 4)
    {
      v10 = (a2 + 1);
      v22 = *(this + v10);
      if ((v22 & 0xF0) != 0x80)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/charinfo.cpp", 239, "word/charinfo", 10, "0x%02x %u %u %.500s", v22, 1, a2 + 1, this);
      }

      v19 = 0x100000;
    }

    else if ((result & 7) != 0)
    {
      if (v17 > 3)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/charinfo.cpp", 239, "word/charinfo", 10, "0x%02x %u %u %.500s", result, 0, a2, this);
        v19 = 0;
        v23 = v5;
        goto LABEL_33;
      }

      v10 = (a2 + 1);
      v19 = v17 << 18;
      v28 = *(this + v10);
      if ((v28 & 0xC0) != 0x80)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/charinfo.cpp", 239, "word/charinfo", 10, "0x%02x %u %u %.500s", v28, 1, a2 + 1, this);
      }
    }

    else
    {
      v10 = (a2 + 1);
      v18 = *(this + v10);
      if ((v18 & 0xC0) != 0x80 || (v18 & 0x30) == 0)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/charinfo.cpp", 239, "word/charinfo", 10, "0x%02x %u %u %.500s", v18, 1, a2 + 1, this);
      }

      v19 = 0;
    }

    v23 = v10;
LABEL_33:
    v24 = v23 + 1;
    v25 = v19 | ((*(this + v10) & 0x3F) << 12);
    v26 = *(this + v24);
    if ((v26 & 0xC0) != 0x80)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/charinfo.cpp", 239, "word/charinfo", 10, "0x%02x %u %u %.500s", v26, v24 - v5, v23 + 1, this);
      LOBYTE(v26) = *(this + v24);
    }

    v27 = v23 + 2;
    v12 = v25 | ((v26 & 0x3F) << 6);
    v13 = *(this + v27);
    if ((v13 & 0xC0) != 0x80)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/charinfo.cpp", 239, "word/charinfo", 10, "0x%02x %u %u %.500s", v13, v27 - v5, v23 + 2, this);
      LOBYTE(v13) = *(this + v27);
    }

    v9 = v23 + 3;
    goto LABEL_38;
  }

  v9 = a2 + 1;
LABEL_39:
  *a3 = v9 - v5;
  return result;
}

uint64_t CharInfo::getLogicalCharLengthsForEncodedCharString(CharInfo *a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v11 = 0;
  result = CharInfo::decodeOneChar(a1, 0, &v11, a4);
  if (result)
  {
    LODWORD(v8) = 0;
    do
    {
      v9 = v11;
      v10 = *(a2 + 8);
      if (v10 == *(a2 + 12))
      {
        DgnPrimArray<char>::reallocElts(a2, 1, 1);
        v10 = *(a2 + 8);
      }

      *(*a2 + v10) = v9;
      ++*(a2 + 8);
      v8 = (v11 + v8);
      result = CharInfo::decodeOneChar(a1, v8, &v11, v7);
    }

    while (result);
  }

  return result;
}

uint64_t CharInfo::validateEncodedCharString(CharInfo *this, const unsigned __int8 *a2, uint64_t a3, unsigned int *a4)
{
  v5 = 0;
  v7 = 0;
  do
  {
    result = CharInfo::decodeOneChar(this, v5, &v7, a4);
    v5 = (v7 + v5);
  }

  while (result);
  return result;
}

void PrefilterResult::PrefilterResult(PrefilterResult *this, __int16 a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = 0;
  *(this + 1) = a2;
  *(this + 3) = 0;
}

void PrefilterResult::~PrefilterResult(PrefilterResult *this)
{
  if (*this == 1)
  {
    PrefilterResult::adjustReferenceCounts(this, 0);
    *this = 0;
  }

  DgnDelete<Hash<CWIDAtFrame,CWIDAtFrame,CWIDAtFrame,unsigned int>>(*(this + 3));
  *(this + 3) = 0;
  DgnIOwnArray<DgnArray<Germ> *>::releaseAll(this + 8);
}

uint64_t PrefilterResult::adjustReferenceCounts(PrefilterResult *this, int a2)
{
  v11 = 0;
  v12 = 0;
  PrefilterResult::getReferredWordIds(this, &v11);
  v4 = *(this + 1);
  v5 = **VocMgr::smpVocMgr;
  v6 = *(v5 + 8 * v4);
  if (a2)
  {
    Voc::addVocReferringPrefilterResultRef(*(v5 + 8 * v4));
  }

  else
  {
    Voc::removeVocReferringPrefilterResultRef(*(v5 + 8 * v4));
  }

  if (v12)
  {
    v7 = 0;
    do
    {
      v8 = *(v11 + 4 * v7);
      v9 = *(v6 + 48);
      if (a2)
      {
        WordList::addIncludingPrefilterResultRef(v9, v8);
      }

      else
      {
        WordList::removeIncludingPrefilterResultRef(v9, v8);
      }

      ++v7;
    }

    while (v7 < v12);
  }

  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v11);
}

void (***DgnDelete<Hash<CWIDAtFrame,CWIDAtFrame,CWIDAtFrame,unsigned int>>(void (***result)(void)))(void)
{
  if (result)
  {
    v1 = result;
    (**result)(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

uint64_t PrefilterResult::sizeObject(uint64_t a1, uint64_t a2)
{
  v4 = sizeObject<DgnArray<Germ> *>(a1 + 8, a2);
  v5 = 8;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v5 = 4;
  }

  v6 = v4 + ((a2 != 3) | (2 * (a2 != 3)));
  if (a2 == 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  if (a2 != 2)
  {
    v8 = *(a1 + 24);
    if (!v8)
    {
      return v7 + v6;
    }

    v7 += Hash<CWIDAtFrame,CWIDAtFrame,CWIDAtFrame,unsigned int>::sizeObject(v8, a2);
  }

  v9 = *(a1 + 24);
  v10 = v7 + v6;
  if (v9)
  {
    v10 += Hash<CWIDAtFrame,CWIDAtFrame,CWIDAtFrame,unsigned int>::sizeObject(v9, a2);
  }

  return v10;
}

uint64_t sizeObject<DgnArray<Germ> *>(uint64_t a1, uint64_t a2)
{
  if (a2 == 3)
  {
    return 0;
  }

  v3 = a2;
  v4 = gShadowDiagnosticShowIdealizedObjectSizes;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v2 = 12;
  }

  else
  {
    v2 = 16;
  }

  if ((a2 & 0xFFFFFFFE) != 2)
  {
    v6 = *(a1 + 8);
    if (v6 >= 1)
    {
      v7 = v6 - 1;
      v8 = gShadowDiagnosticShowIdealizedObjectSizes;
      do
      {
        if (v8)
        {
          v9 = 4;
        }

        else
        {
          v9 = 8;
        }

        v10 = *(*a1 + 8 * v7);
        if (v10)
        {
          v9 += sizeObject<Germ>(v10, v3);
          v8 = gShadowDiagnosticShowIdealizedObjectSizes;
        }

        v2 += v9;
        v11 = v7-- + 1;
      }

      while (v11 > 1);
    }

    if (!v3)
    {
      v12 = 2;
      if ((v4 & 1) == 0)
      {
        v12 = 3;
      }

      v2 += (*(a1 + 12) - *(a1 + 8)) << v12;
    }
  }

  return v2;
}

uint64_t PrefilterResult::setComplete(PrefilterResult *this)
{
  DgnDelete<Hash<CWIDAtFrame,CWIDAtFrame,CWIDAtFrame,unsigned int>>(*(this + 3));
  *(this + 3) = 0;
  result = PrefilterResult::adjustReferenceCounts(this, 1);
  *this = 1;
  return result;
}

uint64_t *PrefilterResult::cacheCopy(uint64_t a1, uint64_t a2)
{
  v4 = MemChunkAlloc(0x10uLL, 0);
  *v4 = 0;
  v4[1] = 0;
  result = DgnArray<Germ>::copyArraySlice(v4, a2, 0, *(a2 + 8));
  v6 = *(a1 + 16);
  if (v6 == *(a1 + 20))
  {
    result = DgnPrimArray<unsigned long long>::reallocElts(a1 + 8, 1, 1);
    v6 = *(a1 + 16);
  }

  *(*(a1 + 8) + 8 * v6) = v4;
  *(a1 + 16) = v6 + 1;
  return result;
}

uint64_t *PrefilterResult::clone(PrefilterResult *this)
{
  v2 = MemChunkAlloc(0x20uLL, 0);
  v3 = *(this + 1);
  v2[1] = 0;
  *v2 = 0;
  *(v2 + 1) = v3;
  v2[2] = 0;
  v2[3] = 0;
  if (*(this + 4))
  {
    v4 = 0;
    do
    {
      v5 = MemChunkAlloc(0x10uLL, 0);
      v6 = *(*(this + 1) + 8 * v4);
      *v5 = 0;
      v5[1] = 0;
      DgnArray<Germ>::copyArraySlice(v5, v6, 0, *(v6 + 8));
      v7 = *(v2 + 4);
      if (v7 == *(v2 + 5))
      {
        DgnPrimArray<unsigned long long>::reallocElts((v2 + 1), 1, 1);
        v7 = *(v2 + 4);
      }

      *(v2[1] + 8 * v7) = v5;
      *(v2 + 4) = v7 + 1;
      ++v4;
    }

    while (v4 < *(this + 4));
  }

  PrefilterResult::adjustReferenceCounts(v2, 1);
  *v2 = 1;
  return v2;
}

void PrefilterResult::copyIntoQueue(uint64_t this, ReturnListQueue *a2)
{
  if (*(this + 16))
  {
    v4 = 0;
    do
    {
      v5 = v4 + 1;
      ReturnListQueue::enqueueCopy(a2, v4 + 1, *(*(this + 8) + 8 * v4));
      v4 = v5;
    }

    while (v5 < *(this + 16));
  }

  if (*this)
  {

    ReturnListQueue::setComplete(a2);
  }
}

void ReturnListQueue::enqueueCopy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = MemChunkAlloc(0x10uLL, 0);
  *v6 = 0;
  v6[1] = 0;
  DgnArray<Germ>::copyArraySlice(v6, a3, 0, *(a3 + 8));

  ReturnListQueue::enqueue(a1, v4, v6);
}

uint64_t ReturnListQueue::setComplete(uint64_t this)
{
  v1 = this;
  v2 = *(this + 48);
  if (v2)
  {
    DgnDelete<Hash<CWIDAtFrame,CWIDAtFrame,CWIDAtFrame,unsigned int>>(*(v2 + 3));
    *(v2 + 3) = 0;
    this = PrefilterResult::adjustReferenceCounts(v2, 1);
    *v2 = 1;
  }

  *v1 = 1;
  return this;
}

uint64_t PrefilterResult::initEmpty(PrefilterResult *this, int a2)
{
  v6[0] = 0;
  v6[1] = 0;
  if (a2)
  {
    v3 = a2;
    do
    {
      PrefilterResult::cacheCopy(this, v6);
      --v3;
    }

    while (v3);
  }

  if (!*(this + 3))
  {
    v4 = MemChunkAlloc(0x70uLL, 0);
    *(this + 3) = Hash<CWIDAtFrame,CWIDAtFrame,CWIDAtFrame,unsigned int>::Hash(v4, 0, 16);
  }

  return DgnIArray<Utterance *>::~DgnIArray(v6);
}

unint64_t PrefilterResult::addEntry(PrefilterResult *this, unsigned int a2, unsigned int a3, int a4)
{
  v8 = *(this + 3);
  v18 = __PAIR64__(a2, a3);
  result = Hash<CWIDAtFrame,CWIDAtFrame,CWIDAtFrame,unsigned int>::findBucket(v8, &v18);
  if (*result)
  {
    v10 = **(*(this + 1) + 8 * a2) + 8 * *(*result + 20);
    v11 = *(v10 + 4);
    if (v11 > a4 && a4 != 20000 && v11 != 20000)
    {
      *v10 = a3 | (a4 << 32);
    }
  }

  else
  {
    v14 = *(this + 3);
    v18 = __PAIR64__(a2, a3);
    v17 = *(*(*(this + 1) + 8 * a2) + 8);
    result = Hash<CWIDAtFrame,CWIDAtFrame,CWIDAtFrame,unsigned int>::add(v14, &v18, &v17);
    v15 = *(*(this + 1) + 8 * a2);
    v16 = *(v15 + 8);
    if (v16 == *(v15 + 12))
    {
      result = DgnPrimArray<unsigned long long>::reallocElts(v15, 1, 1);
      v16 = *(v15 + 8);
    }

    *(*v15 + 8 * v16) = a3 | (a4 << 32);
    ++*(v15 + 8);
  }

  return result;
}

uint64_t Hash<CWIDAtFrame,CWIDAtFrame,CWIDAtFrame,unsigned int>::add(uint64_t result, unint64_t *a2, _DWORD *a3)
{
  v5 = result;
  v6 = *(result + 12);
  if (*(result + 8) >= v6 >> 1)
  {
    result = HashKEV<unsigned int,unsigned int,CWIDScope>::upSize(result, 2 * v6);
  }

  v7 = *a2;
  HIDWORD(v8) = *a2;
  LODWORD(v8) = HIDWORD(v8);
  v9 = (v8 >> 19) + HIDWORD(*a2);
  v10 = *(v5 + 16);
  if (v10)
  {
    v11 = (-1640531527 * v9) >> -v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(v5 + 80);
  v13 = *(v5 + 32);
  if (!v13)
  {
    result = DgnPool::addChunk((v5 + 24));
    v13 = *(v5 + 32);
    v7 = *a2;
  }

  v14 = (v12 + 8 * v11);
  *(v5 + 32) = *v13;
  *(v13 + 8) = 0;
  *(v13 + 12) = v7;
  *(v13 + 20) = *a3;
  *(v13 + 8) = v9;
  ++*(v5 + 8);
  if (*(v5 + 20))
  {
    *v13 = *v14;
  }

  else
  {
    *v13 = 0;
    v15 = *v14;
    if (*v14)
    {
      do
      {
        v14 = v15;
        v15 = *v15;
      }

      while (v15);
    }
  }

  *v14 = v13;
  return result;
}

uint64_t writeObject<short>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v7 = *(a2 + 8);
  writeObject(a1, &v7, a3);
  return writeObjectArray(a1, *a2, *(a2 + 8), a3);
}

void readObject<DgnPrimArray<unsigned int>>(DgnStream *a1, uint64_t a2, unsigned int *a3)
{
  v16 = 0;
  readObject(a1, &v16, a3);
  v6 = v16;
  v7 = *(a2 + 12);
  if (v16 > v7)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(a2, v16 - v7, 0);
  }

  v8 = *(a2 + 8);
  if (v8 <= v6)
  {
    if (v8 < v6)
    {
      v11 = v6 - v8;
      v12 = 16 * v8;
      do
      {
        v13 = (*a2 + v12);
        *v13 = 0;
        v13[1] = 0;
        v12 += 16;
        --v11;
      }

      while (v11);
    }
  }

  else if (v8 > v6)
  {
    v9 = v8;
    v10 = 16 * v8 - 16;
    do
    {
      --v9;
      DgnPrimArray<unsigned int>::~DgnPrimArray(*a2 + v10);
      v10 -= 16;
    }

    while (v9 > v6);
  }

  *(a2 + 8) = v6;
  if (v6)
  {
    v14 = 0;
    v15 = 0;
    do
    {
      readObject<unsigned int>(a1, *a2 + v14, a3);
      ++v15;
      v14 += 16;
    }

    while (v15 < *(a2 + 8));
  }
}

void readObject<DgnPrimArray<short>>(DgnStream *a1, uint64_t a2, unsigned int *a3)
{
  v16 = 0;
  readObject(a1, &v16, a3);
  v6 = v16;
  v7 = *(a2 + 12);
  if (v16 > v7)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(a2, v16 - v7, 0);
  }

  v8 = *(a2 + 8);
  if (v8 <= v6)
  {
    if (v8 < v6)
    {
      v11 = v6 - v8;
      v12 = 16 * v8;
      do
      {
        v13 = (*a2 + v12);
        *v13 = 0;
        v13[1] = 0;
        v12 += 16;
        --v11;
      }

      while (v11);
    }
  }

  else if (v8 > v6)
  {
    v9 = v8;
    v10 = 16 * v8 - 16;
    do
    {
      --v9;
      DgnPrimArray<unsigned int>::~DgnPrimArray(*a2 + v10);
      v10 -= 16;
    }

    while (v9 > v6);
  }

  *(a2 + 8) = v6;
  if (v6)
  {
    v14 = 0;
    v15 = 0;
    do
    {
      readObject<short>(a1, *a2 + v14, a3);
      ++v15;
      v14 += 16;
    }

    while (v15 < *(a2 + 8));
  }
}

void readObject<short>(DgnStream *a1, uint64_t a2, unsigned int *a3)
{
  v8 = 0;
  readObject(a1, &v8, a3);
  v6 = v8;
  v7 = *(a2 + 12);
  if (v8 > v7)
  {
    DgnPrimArray<short>::reallocElts(a2, v8 - v7, 0);
  }

  *(a2 + 8) = v6;
  readObjectArray(a1, *a2, v6, a3);
}

uint64_t writeObject(DgnStream *a1, int *a2, unsigned int *a3)
{
  writeObject(a1, a2, a3);
  writeObject(a1, a2 + 1, a3);

  return writeObject<PrefilterResultFrame>(a1, (a2 + 2), a3);
}

{
  writeObject(a1, a2, a3);
  writeObject(a1, a2 + 26, a3);

  return writeObject(a1, a2 + 27, a3);
}

uint64_t writeObject<PrefilterResultFrame>(DgnStream *a1, uint64_t a2, unsigned int *a3)
{
  v10 = *(a2 + 8);
  result = writeObject(a1, &v10, a3);
  if (*(a2 + 8))
  {
    v7 = 0;
    v8 = 16;
    do
    {
      v9 = *a2 + v8;
      writeObject<unsigned int>(a1, v9 - 16, a3);
      result = writeObject<short>(a1, v9, a3);
      ++v7;
      v8 += 32;
    }

    while (v7 < *(a2 + 8));
  }

  return result;
}

unint64_t PrefilterResult::fillPrefilterResultData(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 20);
  if (v4 > v5)
  {
    DgnArray<PrefilterResultFrame>::reallocElts(a2 + 8, v4 - v5, 0);
  }

  v6 = *(a2 + 16);
  if (v6 <= v4)
  {
    if (v6 < v4)
    {
      v10 = v4 - v6;
      v11 = 32 * v6;
      do
      {
        v12 = (*(a2 + 8) + v11);
        *v12 = 0uLL;
        v12[1] = 0uLL;
        v11 += 32;
        --v10;
      }

      while (v10);
    }
  }

  else if (v6 > v4)
  {
    v7 = v6;
    v8 = 32 * v6 - 32;
    do
    {
      --v7;
      v9 = *(a2 + 8) + v8;
      DgnPrimArray<unsigned int>::~DgnPrimArray(v9 + 16);
      DgnPrimArray<unsigned int>::~DgnPrimArray(v9);
      v8 -= 32;
    }

    while (v7 > v4);
  }

  *(a2 + 16) = v4;
  result = VocMgr::getVocOrThrow(VocMgr::smpVocMgr, *(a1 + 2));
  *a2 = *(*(result + 48) + 376);
  v14 = *(a1 + 16);
  if (v14)
  {
    for (i = 0; i < v14; ++i)
    {
      v16 = *(*(a1 + 8) + 8 * i);
      v17 = *(v16 + 8);
      if (v17)
      {
        v18 = 0;
        v19 = 8 * v17;
        do
        {
          v20 = (*v16 + v18);
          v21 = *v20;
          v22 = *(v20 + 2);
          v23 = *(a2 + 8);
          v24 = v23 + 32 * i;
          v25 = *(v24 + 8);
          if (v25 == *(v24 + 12))
          {
            result = DgnPrimArray<unsigned int>::reallocElts(v23 + 32 * i, 1, 1);
            v25 = *(v24 + 8);
            v23 = *(a2 + 8);
          }

          *(*v24 + 4 * v25) = v21 & 0xFFFFFF;
          ++*(v24 + 8);
          v26 = v23 + 32 * i;
          v27 = *(v26 + 24);
          if (v27 == *(v26 + 28))
          {
            result = DgnPrimArray<short>::reallocElts(v26 + 16, 1, 1);
            v27 = *(v26 + 24);
          }

          v18 += 8;
          *(*(v26 + 16) + 2 * v27) = v22;
          *(v26 + 24) = v27 + 1;
        }

        while (v19 != v18);
        v14 = *(a1 + 16);
      }
    }
  }

  return result;
}

void PrefilterResult::savePrefilterResult(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  DFileOwner::DFileOwner(v12);
  *a3 = 1;
  v6 = DFile::openDFile(a2, 1, 11, v12);
  *a3 = 2;
  v7 = OpenAndWriteMrecHeader(v6, 0x43u, 1, "MRPRB!? ", 24, 6);
  v11 = 0;
  v10[0] = 0;
  v10[1] = 0;
  PrefilterResult::fillPrefilterResultData(a1, &v9);
  writeObject(v7, &v9, &v11);
  writeObjectChecksum(v7, &v11);
  DgnDelete<DgnStream>(v7);
  DFileOwner::setRemoveFileOnDestruction(v12, 0);
  *a3 = 0;
  DgnArray<PrefilterResultFrame>::releaseAll(v10);
  DFileOwner::~DFileOwner(v12, v8);
}

void sub_2625B8068(_Unwind_Exception *a1, DFile **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  DFileOwner::~DFileOwner(va, a2);
  _Unwind_Resume(a1);
}

void PrefilterResult::getReferredWordIds(uint64_t a1, uint64_t a2)
{
  HashKEV<unsigned int,unsigned int,WordIdScope>::HashKEV(v23, 0, 16);
  v4 = *(a1 + 16);
  if (v4)
  {
    for (i = 0; i < v4; ++i)
    {
      v6 = *(*(a1 + 8) + 8 * i);
      v7 = *(v6 + 8);
      if (v7)
      {
        for (j = 0; j < v7; ++j)
        {
          v9 = *(*v6 + 8 * j);
          v22 = v9 & 0xFFFFFF;
          v10 = *(*(*(*(**VocMgr::smpVocMgr + ((v9 >> 22) & 0x3F8)) + 48) + 256) + 4 * (v9 & 0xFFFFFF));
          v22 = v10;
          if (v26)
          {
            v11 = (-1640531527 * v10) >> -v26;
          }

          else
          {
            v11 = 0;
          }

          v12 = v27[v11];
          if (v12)
          {
            while (*(v12 + 2) != v10 || *(v12 + 3) != v10)
            {
              v12 = *v12;
              if (!v12)
              {
                goto LABEL_12;
              }
            }
          }

          else
          {
LABEL_12:
            HashKEV<unsigned int,unsigned int,CWIDScope>::add(v23, &v22);
            v7 = *(v6 + 8);
          }
        }

        v4 = *(a1 + 16);
      }
    }
  }

  v13 = *(a2 + 12);
  if (v24 > v13)
  {
    DgnPrimArray<unsigned int>::reallocElts(a2, v24 - v13, 0);
  }

  if (v25)
  {
    v14 = *v27;
    if (!*v27)
    {
      v15 = 0;
      do
      {
        if (v25 - 1 == v15)
        {
          goto LABEL_39;
        }

        v14 = v27[++v15];
      }

      while (!v14);
      goto LABEL_26;
    }
  }

  else
  {
    v14 = 0;
  }

  LODWORD(v15) = 0;
LABEL_26:
  if (v15 >= v25)
  {
    goto LABEL_39;
  }

  v16 = *(a2 + 8);
  while (1)
  {
    v17 = *(v14 + 3);
    if (v16 == *(a2 + 12))
    {
      DgnPrimArray<unsigned int>::reallocElts(a2, 1, 1);
      v16 = *(a2 + 8);
    }

    *(*a2 + 4 * v16) = v17;
    v16 = *(a2 + 8) + 1;
    *(a2 + 8) = v16;
    v18 = *v14;
    if (*v14)
    {
      goto LABEL_38;
    }

    v15 = (v15 + 1);
    if (v15 >= v25)
    {
      v18 = v14;
      goto LABEL_38;
    }

    v18 = v27[v15];
    if (!v18)
    {
      break;
    }

LABEL_38:
    v14 = v18;
    if (v15 >= v25)
    {
      goto LABEL_39;
    }
  }

  v19 = &v27[v15 + 1];
  v20 = ~v15 + v25;
  while (v20)
  {
    v21 = *v19++;
    v18 = v21;
    LODWORD(v15) = v15 + 1;
    --v20;
    if (v21)
    {
      goto LABEL_38;
    }
  }

LABEL_39:
  HashKEV<unsigned int,unsigned int,WordIdScope>::~HashKEV(v23);
}

void sub_2625B82C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HashKEV<unsigned int,unsigned int,WordIdScope>::~HashKEV(va);
  _Unwind_Resume(a1);
}

void ReturnListQueue::ReturnListQueue(ReturnListQueue *this, PrefilterResult *a2, __int16 a3)
{
  *this = 0;
  *(this + 4) = 4294967280;
  DgnPrimQueue<DgnArray<Germ> *,DgnIOwnArray<DgnArray<Germ> *>>::DgnPrimQueue(this + 16);
  *(this + 6) = a2;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 8) = 0;
  *(this + 56) = 0;
  *(this + 29) = a3;
}

uint64_t ReturnListQueue::ReturnListQueue(uint64_t a1, uint64_t a2, int a3, __int16 a4)
{
  *a1 = 0;
  *(a1 + 4) = 4294967280;
  DgnPrimQueue<DgnArray<Germ> *,DgnIOwnArray<DgnArray<Germ> *>>::DgnPrimQueue(a1 + 16);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0;
  v8 = a1 + 56;
  *(a1 + 58) = a4;
  *(a1 + 80) = 0;
  if (!a3)
  {
    v8 = 0;
  }

  if (a2)
  {
    v8 = a2;
  }

  *(a1 + 48) = v8;
  return a1;
}

uint64_t ReturnListQueue::getNextFrameTime(ReturnListQueue *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    return (*(this + 10) + v1);
  }

  else
  {
    return 1;
  }
}

void ReturnListQueue::enqueue(uint64_t a1, int a2, uint64_t a3)
{
  if (!*(a1 + 8))
  {
    *(a1 + 8) = a2;
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    PrefilterResult::cacheCopy(v5, a3);
  }

  DgnPrimQueue<DgnArray<Germ> *,DgnIOwnArray<DgnArray<Germ> *>>::enqueue(a1 + 16, a3);
}

void DgnPrimQueue<DgnArray<Germ> *,DgnIOwnArray<DgnArray<Germ> *>>::enqueue(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 8);
  if (v4 == v5)
  {
    v6 = *(a1 + 12);
    if (v4 == v6)
    {
      DgnPrimArray<unsigned long long>::reallocElts(a1, 1, 1);
      v4 = *(a1 + 8);
      v6 = *(a1 + 12);
    }

    *(*a1 + 8 * v4) = 0;
    v7 = v4 + 1;
    *(a1 + 8) = v7;
    if (v7 <= v6)
    {
      if (v7 < v6)
      {
        do
        {
          *(*a1 + 8 * v7++) = 0;
        }

        while (v6 != v7);
      }
    }

    else
    {
      DgnIOwnArray<DgnArray<Germ> *>::destructAt(a1, v6, v7 - v6);
    }

    *(a1 + 8) = v6;
    v8 = *(a1 + 24);
    v9 = v6 - v8;
    if (v8)
    {
      v10 = *(a1 + 16);
      if (v10)
      {
        memmove((*a1 + 8 * v10 + 8 * v9), (*a1 + 8 * v10), 8 * (v8 - v10));
        v8 = *(a1 + 20);
        *(a1 + 16) += v9;
      }

      else
      {
        *(a1 + 20) = v8;
      }
    }

    else
    {
      *(a1 + 16) = 0;
    }

    bzero((*a1 + 8 * v8), 8 * v9);
    v5 = *(a1 + 8);
    v4 = *(a1 + 24);
  }

  v11 = *(a1 + 20);
  *(*a1 + 8 * v11) = a2;
  if (v11 + 1 == v5)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11 + 1;
  }

  *(a1 + 20) = v12;
  *(a1 + 24) = v4 + 1;
}

uint64_t ReturnListQueue::dequeue(ReturnListQueue *this, int *a2)
{
  if (!*(this + 10))
  {
    return 0;
  }

  v2 = *(this + 2);
  if (a2)
  {
    *a2 = v2;
  }

  *(this + 2) = v2 + 1;
  return DgnPrimQueue<DgnArray<Germ> *,DgnIOwnArray<DgnArray<Germ> *>>::dequeue(this + 16);
}

uint64_t DgnPrimQueue<DgnArray<Germ> *,DgnIOwnArray<DgnArray<Germ> *>>::dequeue(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(*a1 + 8 * v1);
  *(*a1 + 8 * v1) = 0;
  v3 = v1 + 1;
  *(a1 + 16) = v3;
  v4 = *(a1 + 24) - 1;
  *(a1 + 24) = v4;
  if (v4)
  {
    v5 = *(a1 + 8);
    v6 = v3 >= v5;
    v7 = v3 - v5;
    if (v6)
    {
      *(a1 + 16) = v7;
    }
  }

  else
  {
    *(a1 + 16) = 0;
  }

  return v2;
}

void ReturnListQueue::copyIntoQueue(unsigned int *this, ReturnListQueue *a2)
{
  v4 = this[8];
  v5 = this[10];
  v6 = this[6];
  v7 = v5 != 0;
  v8 = 0;
  if (v4 < v6 && v5 != 0)
  {
    while (1)
    {
      v11 = this[1];
      v12 = *(a2 + 2);
      if (v12)
      {
        break;
      }

      if (v11 == 1)
      {
        goto LABEL_17;
      }

LABEL_18:
      ReturnListQueue::enqueueCopy(a2, v8 + this[2], *(*(this + 2) + 8 * v4));
      ++v8;
      ++v4;
      v7 = v8 < v5;
      if (v4 >= v6 || v8 >= v5)
      {
        goto LABEL_6;
      }
    }

    if (v11 != *(a2 + 10) + v12)
    {
      goto LABEL_18;
    }

LABEL_17:
    *(a2 + 1) = v11;
    goto LABEL_18;
  }

LABEL_6:
  if (v7 && v5 != v8)
  {
    v13 = 0;
    v14 = v5 - v8;
    while (1)
    {
      v15 = this[1];
      v16 = *(a2 + 2);
      if (!v16)
      {
        break;
      }

      if (v15 == *(a2 + 10) + v16)
      {
        goto LABEL_25;
      }

LABEL_26:
      ReturnListQueue::enqueueCopy(a2, v8 + this[2], *(*(this + 2) + v13));
      ++v8;
      v13 += 8;
      if (!--v14)
      {
        goto LABEL_11;
      }
    }

    if (v15 != 1)
    {
      goto LABEL_26;
    }

LABEL_25:
    *(a2 + 1) = v15;
    goto LABEL_26;
  }

LABEL_11:
  if (*this == 1)
  {

    ReturnListQueue::setComplete(a2);
  }
}

void *ReturnListQueue::clear(ReturnListQueue *this)
{
  *(this + 2) += *(this + 10);
  result = DgnIOwnArray<DgnArray<Germ> *>::releaseAll(this + 16);
  *(this + 10) = 0;
  *(this + 4) = 0;
  return result;
}

void *ReturnListQueue::reset(ReturnListQueue *this)
{
  result = DgnIOwnArray<DgnArray<Germ> *>::releaseAll(this + 16);
  *(this + 10) = 0;
  *(this + 4) = 0;
  *this = 0;
  *(this + 4) = 4294967280;
  *(this + 6) = 0;
  return result;
}

uint64_t ReturnListQueue::sizeObject(uint64_t a1, uint64_t a2)
{
  v4 = DgnPrimQueue<DgnArray<Germ> *,DgnIOwnArray<DgnArray<Germ> *>>::sizeObject((a1 + 16), a2);
  v5 = 8;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v5 = 4;
  }

  if (a2 == 3)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  if (a2 != 2)
  {
    v7 = *(a1 + 48);
    if (v7)
    {
      v6 += PrefilterResult::sizeObject(v7, a2);
    }
  }

  return ((a2 != 3) | (8 * (a2 != 3))) + v4 + v6;
}

void *DgnArray<PrefilterResultFrame>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 32 * v2 - 16;
    do
    {
      v4 = *a1 + v3;
      v5 = v4 - 16;
      DgnPrimArray<unsigned int>::~DgnPrimArray(v4);
      DgnPrimArray<unsigned int>::~DgnPrimArray(v5);
      v3 -= 32;
    }

    while (v3 != -16);
  }

  result = *a1;
  if (*a1)
  {
    result = MemChunkFree(result, 0);
    *a1 = 0;
  }

  *(a1 + 8) = 0;
  return result;
}

void *DgnIOwnArray<DgnArray<Germ> *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<DgnArray<Germ>>(*(*a1 + v3));
      *(*a1 + v3) = 0;
      v3 -= 8;
    }

    while (v3 != -8);
  }

  result = *a1;
  if (*a1)
  {
    result = MemChunkFree(result, 0);
    *a1 = 0;
  }

  *(a1 + 8) = 0;
  return result;
}

void *DgnIOwnArray<DgnArray<Germ> *>::destructAt(void *result, int a2, int a3)
{
  if (a3 + a2 > a2)
  {
    v3 = result;
    v4 = a2;
    v5 = a3 + a2 - 1;
    do
    {
      result = DgnDelete<DgnArray<Germ>>(*(*v3 + 8 * v5));
      *(*v3 + 8 * v5) = 0;
    }

    while (v5-- > v4);
  }

  return result;
}

uint64_t DgnDelete<DgnArray<Germ>>(uint64_t result)
{
  if (result)
  {
    v1 = DgnIArray<Utterance *>::~DgnIArray(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

uint64_t sizeObject<Germ>(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
    return 0;
  }

  v2 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v2 = 12;
  }

  if ((a2 & 0xFFFFFFFE) != 2)
  {
    v3 = *(a1 + 8);
    v4 = 6 * v3;
    if (v3 <= 0)
    {
      v4 = 0;
    }

    v2 += v4;
    if (!a2)
    {
      v2 += 8 * (*(a1 + 12) - v3);
    }
  }

  return v2;
}

uint64_t Hash<CWIDAtFrame,CWIDAtFrame,CWIDAtFrame,unsigned int>::sizeObject(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = sizeObject(a1 + 24, a2);
  if (v2 == 3)
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v5 = 12;
    v6 = 8;
    if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
    {
      v6 = 12;
    }

    if ((v2 & 0xFFFFFFFE) != 2)
    {
      v7 = 2;
      if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
      {
        v7 = 3;
      }

      v6 += *(a1 + 88) << v7;
      v5 = 12;
    }
  }

  v8 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v8 = 8;
  }

  if (v2 == 3)
  {
    v8 = 0;
    v9 = v4;
  }

  else
  {
    v9 = v4 + 1;
  }

  return v9 + v5 + v6 + v8;
}

uint64_t *DgnArray<Germ>::copyArraySlice(uint64_t *result, void *a2, unsigned int a3, unsigned int a4)
{
  v7 = result;
  *(result + 2) = 0;
  v8 = *(result + 3);
  if (a4 <= v8)
  {
    v9 = 0;
    v10 = 0;
    if (!a4)
    {
      goto LABEL_6;
    }
  }

  else
  {
    result = DgnPrimArray<unsigned long long>::reallocElts(result, a4 - v8, 0);
    v9 = *(v7 + 2);
  }

  v11 = a4;
  v10 = v9;
  do
  {
    *(*v7 + 8 * v10) = *(*a2 + 8 * a3);
    v10 = *(v7 + 2) + 1;
    *(v7 + 2) = v10;
    ++a3;
    --v11;
  }

  while (v11);
LABEL_6:
  if (v10 < a4)
  {
    v12 = a4 - v10;
    v13 = *v7 + 8 * v10 + 6;
    do
    {
      *(v13 - 6) = 4211081215;
      v13 += 8;
      --v12;
    }

    while (v12);
  }

  *(v7 + 2) = a4;
  return result;
}

uint64_t Hash<CWIDAtFrame,CWIDAtFrame,CWIDAtFrame,unsigned int>::Hash(uint64_t a1, const char *a2, int a3)
{
  HashBase::HashBase(a1, a2);
  *v5 = &unk_2875241F8;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 56) = 0u;
  *(v5 + 72) = 0;
  *(v5 + 80) = 0;
  *(v5 + 88) = 0;
  v6 = RoundUpToPowerOf2(a3, (v5 + 16));
  *(a1 + 8) = 0;
  *(a1 + 12) = v6;
  HashKEV<unsigned int,unsigned int,CWIDScope>::initBuckets(a1);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v7 = 20;
  }

  else
  {
    v7 = 24;
  }

  *(a1 + 24) = 32;
  *(a1 + 28) = v7;
  *(a1 + 32) = 0;
  *(a1 + 72) = 0;
  return a1;
}

void sub_2625B8C90(_Unwind_Exception *a1)
{
  DgnPrimFixArray<double>::~DgnPrimFixArray(v2);
  DgnPool::~DgnPool(v1);
  MrecInitModule_sdpres_sdapi();
  _Unwind_Resume(a1);
}

void Hash<CWIDAtFrame,CWIDAtFrame,CWIDAtFrame,unsigned int>::~Hash(uint64_t a1)
{
  Hash<CWIDAtFrame,CWIDAtFrame,CWIDAtFrame,unsigned int>::~Hash(a1);

  JUMPOUT(0x26672B1B0);
}

{
  *a1 = &unk_2875241F8;
  if (*(a1 + 8))
  {
    Hash<StateSpec,StateSpec,StateSpec,BOOL>::removeAll(a1);
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(a1 + 80);
  DgnPool::~DgnPool((a1 + 24));

  MrecInitModule_sdpres_sdapi();
}

uint64_t **Hash<CWIDAtFrame,CWIDAtFrame,CWIDAtFrame,unsigned int>::findBucket(uint64_t a1, _DWORD *a2)
{
  v2 = a2[1];
  HIDWORD(v3) = *a2;
  LODWORD(v3) = *a2;
  v4 = (v3 >> 19) + v2;
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = (-1640531527 * v4) >> -v5;
  }

  else
  {
    v6 = 0;
  }

  result = (*(a1 + 80) + 8 * v6);
  v8 = *result;
  if (*result)
  {
    do
    {
      v9 = v8;
      if (*(v8 + 2) == v4 && *(v8 + 4) == v2 && *(v8 + 3) == *a2)
      {
        break;
      }

      v8 = *v8;
      result = v9;
    }

    while (*v9);
  }

  return result;
}

uint64_t *DgnArray<PrefilterResultFrame>::reallocElts(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2;
  if (a3)
  {
    v3 = minAddAllocWithExtra(a2, *(a1 + 12));
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 12) + v3;
  v8 = 0;
  result = realloc_array(*a1, &v8, 32 * v6, 32 * v5, 32 * v5, 1);
  *(a1 + 12) = result >> 5;
  *a1 = v8;
  return result;
}

uint64_t HashKEV<unsigned int,unsigned int,WordIdScope>::HashKEV(uint64_t a1, const char *a2, int a3)
{
  HashBase::HashBase(a1, a2);
  *v5 = &unk_287523A78;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 56) = 0u;
  *(v5 + 72) = 0;
  *(v5 + 80) = 0;
  *(v5 + 88) = 0;
  v6 = RoundUpToPowerOf2(a3, (v5 + 16));
  *(a1 + 8) = 0;
  *(a1 + 12) = v6;
  HashKEV<unsigned int,unsigned int,CWIDScope>::initBuckets(a1);
  *(a1 + 96) = 0;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v7 = 12;
  }

  else
  {
    v7 = 16;
  }

  *(a1 + 24) = 16;
  *(a1 + 28) = v7;
  *(a1 + 32) = 0;
  *(a1 + 72) = 0;
  return a1;
}

void sub_2625B8F00(_Unwind_Exception *a1)
{
  DgnPrimFixArray<double>::~DgnPrimFixArray(v2);
  DgnPool::~DgnPool(v1);
  MrecInitModule_sdpres_sdapi();
  _Unwind_Resume(a1);
}

void HashKEV<unsigned int,unsigned int,WordIdScope>::~HashKEV(uint64_t a1)
{
  HashKEV<unsigned int,unsigned int,WordIdScope>::~HashKEV(a1);

  JUMPOUT(0x26672B1B0);
}

{
  *a1 = &unk_287523A78;
  if (*(a1 + 8))
  {
    HashKEV<unsigned int,unsigned int,CWIDScope>::removeAll(a1);
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(a1 + 80);
  DgnPool::~DgnPool((a1 + 24));

  MrecInitModule_sdpres_sdapi();
}

uint64_t DgnPrimQueue<DgnArray<Germ> *,DgnIOwnArray<DgnArray<Germ> *>>::DgnPrimQueue(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  DgnIOwnArray<DgnArray<Germ> *>::releaseAll(a1);
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  return a1;
}

uint64_t DgnPrimQueue<DgnArray<Germ> *,DgnIOwnArray<DgnArray<Germ> *>>::sizeObject(_DWORD *a1, uint64_t a2)
{
  v2 = a2;
  v4 = sizeObject<DgnArray<Germ> *>(a1, a2);
  v5 = 12;
  if (v2 == 3)
  {
    v5 = 0;
  }

  v6 = v5 + v4;
  if (v2 > 3 || v2 == 1)
  {
    v8 = a1[2];
    if (a1[6] < v8)
    {
      v9 = 0;
      v11 = a1[4];
      v10 = a1[5];
      do
      {
        if (v10 >= v11)
        {
          if (v9 >= a1[4] && v9 < a1[5])
          {
            goto LABEL_15;
          }
        }

        else if (v9 < a1[5] || v9 >= a1[4])
        {
          goto LABEL_15;
        }

        v6 -= DgnIOwnArray<DgnArray<Germ> *>::sizeMaybeOwnedArrayItem(a1, v9, v2);
        v8 = a1[2];
LABEL_15:
        ++v9;
      }

      while (v9 < v8);
    }
  }

  return v6;
}

uint64_t DgnIOwnArray<DgnArray<Germ> *>::sizeMaybeOwnedArrayItem(void *a1, unsigned int a2, int a3)
{
  v3 = 8;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v3 = 4;
  }

  if (a3 == 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  if (a3 != 2)
  {
    v5 = *(*a1 + 8 * a2);
    if (v5)
    {
      v4 += sizeObject<Germ>(v5, a3);
    }
  }

  return v4;
}

uint64_t TState::getTransCount(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8 * a2 + 16);
  if (!v2)
  {
    return 0;
  }

  result = 0;
  do
  {
    ++result;
    v2 = *(v2 + 8 * a2 + 32);
  }

  while (v2);
  return result;
}

void TFsa::TFsa(TFsa *this)
{
  TAllocator::TAllocator(this, 2048);
  v1[3] = 0u;
  *(v1 + 104) = 0u;
  v1[4] = 0u;
  v1[5] = 0u;
  *(v1 + 120) = 0u;
  *(v1 + 136) = 0u;
  *(v1 + 152) = 0u;
  *(v1 + 168) = 0u;
  *(v1 + 184) = 0u;
  TFsa::clear(v1);
}

void sub_2625B91F0(_Unwind_Exception *a1)
{
  v5 = 0;
  while (1)
  {
    v6 = *(v1 + v5 + 176);
    if (v6)
    {
      *(v1 + v5 + 184) = v6;
      operator delete(v6);
    }

    v5 -= 24;
    if (v5 == -48)
    {
      v7 = *(v1 + 16);
      if (v7)
      {
        *(v1 + 17) = v7;
        operator delete(v7);
      }

      v8 = *v3;
      if (*v3)
      {
        *(v1 + 14) = v8;
        operator delete(v8);
      }

      v9 = *(v1 + 9);
      if (v9)
      {
        *(v1 + 10) = v9;
        operator delete(v9);
      }

      v10 = *v2;
      if (*v2)
      {
        *(v1 + 7) = v10;
        operator delete(v10);
      }

      TAllocator::clear(v1);
      _Unwind_Resume(a1);
    }
  }
}

void *TFsa::clear(TFsa *this)
{
  result = TAllocator::clear(this);
  *(this + 14) = *(this + 13);
  *(this + 7) = *(this + 6);
  *(this + 20) = *(this + 19);
  *(this + 23) = *(this + 22);
  *(this + 10) = *(this + 9);
  *(this + 17) = *(this + 16);
  *(this + 12) = 0;
  *(this + 5) = 0;
  *(this + 26) = 0;
  *(this + 27) = 0;
  *(this + 25) = 0;
  return result;
}

void TFsa::~TFsa(TFsa *this)
{
  for (i = 0; i != -48; i -= 24)
  {
    v3 = *(this + i + 176);
    if (v3)
    {
      *(this + i + 184) = v3;
      operator delete(v3);
    }
  }

  v4 = *(this + 16);
  if (v4)
  {
    *(this + 17) = v4;
    operator delete(v4);
  }

  v5 = *(this + 13);
  if (v5)
  {
    *(this + 14) = v5;
    operator delete(v5);
  }

  v6 = *(this + 9);
  if (v6)
  {
    *(this + 10) = v6;
    operator delete(v6);
  }

  v7 = *(this + 6);
  if (v7)
  {
    *(this + 7) = v7;
    operator delete(v7);
  }

  TAllocator::clear(this);
}

uint64_t *TFsa::newState(TAllocator *this, uint64_t a2)
{
  v4 = *(this + 10);
  if (*(this + 9) == v4)
  {
    v6 = TAllocator::allocate(this, 48);
    *v6 = (*(this + 7) - *(this + 6)) >> 3;
    v6[1] = a2;
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = -1;
    v6[5] = -1;
    v7 = v6;
    std::vector<TItnRule *>::push_back[abi:ne200100](this + 48, &v7);
    result = v7;
  }

  else
  {
    result = *(v4 - 8);
    *(this + 10) = v4 - 8;
    *(*(this + 6) + 8 * *result) = result;
    result[1] = a2;
  }

  ++*(this + 5);
  return result;
}

void TFsa::deleteState(void *a1, void *a2)
{
  v6 = a2;
  v3 = a2[4];
  if (v3 != -1)
  {
    *(a1[19] + 8 * v3) = 0;
    a2[4] = -1;
    --a1[25];
  }

  v4 = a2[5];
  if (v4 != -1)
  {
    *(a1[22] + 8 * v4) = 0;
    a2[5] = -1;
    --a1[26];
  }

  TFsa::deleteAllTrans(a1, a2);
  std::vector<TItnRule *>::push_back[abi:ne200100]((a1 + 9), &v6);
  v5 = a1[5];
  *(a1[6] + 8 * *v6) = 0;
  a1[5] = v5 - 1;
}

uint64_t TFsa::removeExtremity(uint64_t result, uint64_t a2, unsigned int a3)
{
  v3 = *(a2 + 32 + 8 * a3);
  if (v3 != -1)
  {
    *(*(result + 24 * a3 + 152) + 8 * v3) = 0;
    *(a2 + 32 + 8 * a3) = -1;
    --*(result + 8 * a3 + 200);
  }

  return result;
}

void TFsa::deleteAllTrans(uint64_t result, uint64_t a2)
{
  for (i = *(a2 + 16); i; i = *(a2 + 16))
  {
    TFsa::deleteTrans(result, i);
  }

  while (1)
  {
    v5 = *(a2 + 24);
    if (!v5)
    {
      break;
    }

    TFsa::deleteTrans(result, v5);
  }
}

void *TFsa::newTrans(TAllocator *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(this + 17);
  if (*(this + 16) == v8)
  {
    v10 = TAllocator::allocate(this, 64);
    v11 = (*(this + 14) - *(this + 13)) >> 3;
    *v10 = a4;
    v10[1] = v11;
    *(v10 + 1) = 0u;
    *(v10 + 2) = 0u;
    *(v10 + 3) = 0u;
    v14 = v10;
    std::vector<TItnRule *>::push_back[abi:ne200100](this + 104, &v14);
    result = v14;
  }

  else
  {
    result = *(v8 - 8);
    *(this + 17) = v8 - 8;
    *(*(this + 13) + 8 * result[1]) = result;
    *result = a4;
  }

  result[3] = a2;
  v12 = *(a2 + 24);
  result[5] = v12;
  if (v12)
  {
    *(v12 + 56) = result;
  }

  *(a2 + 24) = result;
  result[2] = a3;
  v13 = *(a3 + 16);
  result[4] = v13;
  if (v13)
  {
    *(v13 + 48) = result;
  }

  *(a3 + 16) = result;
  ++*(this + 12);
  return result;
}

void TFsa::deleteTrans(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = a2[7];
  v4 = a2[5];
  v5 = a2[3] + 16;
  if (v3)
  {
    v5 = v3 + 32;
  }

  *(v5 + 8) = v4;
  if (v4)
  {
    *(v4 + 56) = v3;
  }

  a2[3] = 0;
  a2[7] = 0;
  a2[5] = 0;
  v6 = a2[6];
  v7 = a2[4];
  v8 = (a2[2] + 16);
  if (v6)
  {
    v8 = (v6 + 32);
  }

  *v8 = v7;
  if (v7)
  {
    *(v7 + 48) = v6;
  }

  a2[2] = 0;
  a2[6] = 0;
  a2[4] = 0;
  std::vector<TItnRule *>::push_back[abi:ne200100](a1 + 128, &v10);
  v9 = *(a1 + 96);
  *(*(a1 + 104) + 8 * v10[1]) = 0;
  *(a1 + 96) = v9 - 1;
}

void TFsa::addExtremity(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = a2;
  if (*(a2 + 32 + 8 * a3) == -1)
  {
    v4 = a3;
    v5 = a1 + 24 * a3;
    *(a2 + 32 + 8 * a3) = (*(v5 + 160) - *(v5 + 152)) >> 3;
    std::vector<TItnRule *>::push_back[abi:ne200100](v5 + 152, &v6);
    ++*(a1 + 8 * v4 + 200);
  }
}

void *TFsa::nfaToDfa(uint64_t a1, TFsa *a2, uint64_t a3)
{
  TAllocator::TAllocator(v14, 2048);
  v13[0] = a2;
  v13[1] = a1;
  v13[2] = a3;
  TFsa::clear(a2);
  v20[0] = 0;
  v20[1] = 0;
  v19 = v20;
  v7 = *(a1 + 152);
  v6 = *(a1 + 160);
  if (v7 != v6)
  {
    while (!*v7)
    {
      if (++v7 == v6)
      {
        goto LABEL_11;
      }
    }
  }

  if (v7 != v6)
  {
    v8 = *v7;
LABEL_7:
    v17 = v8;
    std::__tree<TState const*>::__emplace_unique_key_args<TState const*,TState const*>(&v19, &v17, &v17);
    v9 = v7 + 1;
    while (v9 != v6)
    {
      v10 = *v9++;
      v8 = v10;
      if (v10)
      {
        v7 = v9 - 1;
        goto LABEL_7;
      }
    }
  }

LABEL_11:
  v18[0] = 0;
  v18[1] = 0;
  v17 = v18;
  v16[0] = 0;
  v16[1] = 0;
  v15 = v16;
  TFsa::addExtremity(v13[0], v11, 0);
  TAllocator::clear(v14);
  std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(&v17, v18[0]);
  std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(&v19, v20[0]);
  return TAllocator::clear(v14);
}

void sub_2625B9890(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(v2 - 56, *(v2 - 48));
  TAllocator::clear((v1 + 24));
  _Unwind_Resume(a1);
}

void std::vector<TState *>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TParam *>>(a1, a2);
    }

    std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
  }
}

BOOL TFsa::topologicalSort(void *a1, void *a2)
{
  std::vector<unsigned long>::vector[abi:ne200100](__p, (a1[7] - a1[6]) >> 3);
  v5 = a1[6];
  v4 = a1[7];
  if (v5 != v4)
  {
    while (!*v5)
    {
      if (++v5 == v4)
      {
        goto LABEL_16;
      }
    }
  }

  if (v5 != v4)
  {
    v6 = __p[0];
LABEL_7:
    v7 = *(*v5 + 16);
    if (v7)
    {
      v8 = 0;
      do
      {
        ++v8;
        v7 = *(v7 + 32);
      }

      while (v7);
    }

    else
    {
      v8 = 0;
    }

    v6[**v5] = v8;
    v9 = v5 + 1;
    while (v9 != v4)
    {
      if (*v9++)
      {
        v5 = v9 - 1;
        goto LABEL_7;
      }
    }
  }

LABEL_16:
  a2[1] = *a2;
  std::vector<TState const*>::reserve(a2, a1[5]);
  v12 = a1[19];
  v11 = a1[20];
  if (v12 != v11)
  {
    while (!*v12)
    {
      if (++v12 == v11)
      {
        goto LABEL_25;
      }
    }
  }

  if (v12 != v11)
  {
LABEL_21:
    v25 = *v12;
    std::vector<TWord const*>::push_back[abi:ne200100](a2, &v25);
    v13 = v12 + 1;
    while (v13 != v11)
    {
      if (*v13++)
      {
        v12 = v13 - 1;
        goto LABEL_21;
      }
    }
  }

LABEL_25:
  v16 = *a2;
  v15 = a2[1];
  v17 = v15 - *a2;
  if (v15 != *a2)
  {
    v18 = 0;
    do
    {
      v19 = *(*(v16 + 8 * v18) + 24);
      if (v19)
      {
        do
        {
          v20 = *(v19 + 16);
          v21 = __p[0];
          --*(__p[0] + *v20);
          if (!v21[*v20])
          {
            v25 = v20;
            std::vector<TWord const*>::push_back[abi:ne200100](a2, &v25);
          }

          v19 = *(v19 + 40);
        }

        while (v19);
        v16 = *a2;
        v15 = a2[1];
      }

      ++v18;
      v17 = v15 - v16;
    }

    while (v18 < (v15 - v16) >> 3);
  }

  v22 = v17 >> 3;
  v23 = a1[5];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v22 == v23;
}

void sub_2625B9B40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<TState const*>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TSegment const*>>(a1, a2);
    }

    std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
  }
}

void anonymous namespace::epsilonClosure(void *a1, void *a2)
{
  if (a2 != a1)
  {
    std::__tree<TState const*>::__assign_multi<std::__tree_const_iterator<TState const*,std::__tree_node<TState const*,void *> *,long>>(a2, *a1, a1 + 1);
  }

  std::set<TState const*>::set[abi:ne200100](&v18, a1);
  if (v20)
  {
    v4 = a2 + 1;
    do
    {
      v17[0] = 0;
      v17[1] = 0;
      v16 = v17;
      std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(&v18, v19);
      v19 = 0;
      v20 = 0;
      v18 = &v19;
      v5 = v16;
      if (v16 != v17)
      {
        do
        {
          v6 = v5[4];
          v15 = v6;
          v7 = *v4;
          if (!*v4)
          {
            goto LABEL_14;
          }

          v8 = a2 + 1;
          do
          {
            v9 = v7[4];
            v10 = v9 >= v6;
            v11 = v9 < v6;
            if (v10)
            {
              v8 = v7;
            }

            v7 = v7[v11];
          }

          while (v7);
          if (v8 == v4 || v6 < v8[4])
          {
LABEL_14:
            std::__tree<TState const*>::__emplace_unique_key_args<TState const*,TState const*>(a2, &v15, &v15);
            std::__tree<TState const*>::__emplace_unique_key_args<TState const*,TState const*>(&v18, &v15, &v15);
          }

          v12 = v5[1];
          if (v12)
          {
            do
            {
              v13 = v12;
              v12 = *v12;
            }

            while (v12);
          }

          else
          {
            do
            {
              v13 = v5[2];
              v14 = *v13 == v5;
              v5 = v13;
            }

            while (!v14);
          }

          v5 = v13;
        }

        while (v13 != v17);
      }

      std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(&v16, v17[0]);
    }

    while (v20);
  }

  std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(&v18, v19);
}

void sub_2625B9D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15)
{
  std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(&a11, a12);
  std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(&a14, a15);
  _Unwind_Resume(a1);
}

uint64_t *anonymous namespace::TNfaToDfa::nfaToDfaRec(uint64_t a1, void *a2, uint64_t **a3)
{
  v6 = a2[2] + 1;
  if (v6 >> 61)
  {
    v7 = -1;
  }

  else
  {
    v7 = 8 * v6;
  }

  v8 = TAllocator::allocate((a1 + 24), v7);
  v9 = v8;
  v10 = *a2;
  v11 = a2 + 1;
  if (*a2 == a2 + 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = 0;
    do
    {
      v8[v12] = v10[4];
      v13 = v10[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v10[2];
          v15 = *v14 == v10;
          v10 = v14;
        }

        while (!v15);
      }

      ++v12;
      v10 = v14;
    }

    while (v14 != v11);
  }

  v8[v12] = 0;
  v17 = a3 + 1;
  v16 = a3[1];
  if (!v16)
  {
    goto LABEL_29;
  }

  v18 = a3 + 1;
  do
  {
    v19 = v16[4];
    v20 = v8;
    do
    {
      v21 = *v19;
      v22 = *v20;
      if (!(*v19 | *v20))
      {
        v18 = v16;
        goto LABEL_23;
      }

      ++v20;
      ++v19;
    }

    while (v21 == v22);
    if (v21 >= v22)
    {
      v18 = v16;
    }

    v16 += v21 < v22;
LABEL_23:
    v16 = *v16;
  }

  while (v16);
  if (v18 == v17)
  {
LABEL_29:
    v62 = 0;
    v63 = 0;
    v61 = &v62;
    v27 = *a2;
    if (*a2 == v11)
    {
      v28 = 0;
    }

    else
    {
      v28 = 0;
      do
      {
        v29 = v27[4];
        v30 = *(v29 + 40) != -1;
        v31 = *(v29 + 8);
        if (v31)
        {
          v59 = v31;
          std::__tree<TState const*>::__emplace_unique_key_args<TState const*,TState const*>(&v61, &v59, &v59);
        }

        v32 = v27[1];
        if (v32)
        {
          do
          {
            v33 = v32;
            v32 = *v32;
          }

          while (v32);
        }

        else
        {
          do
          {
            v33 = v27[2];
            v15 = *v33 == v27;
            v27 = v33;
          }

          while (!v15);
        }

        v28 |= v30;
        v27 = v33;
      }

      while (v33 != v11);
      if (v63)
      {
        if (v63 == 1)
        {
          v34 = v61[4];
LABEL_45:
          v35 = TFsa::newState(*a1, v34);
          if (v28)
          {
            TFsa::addExtremity(*a1, v35, 1u);
          }

          std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(&v61, v62);
          v36 = *v17;
          if (!*v17)
          {
            goto LABEL_59;
          }

LABEL_48:
          while (2)
          {
            v37 = v36;
            v38 = v36[4];
            v39 = v9;
            v40 = v38;
            while (1)
            {
              v41 = *v39;
              v42 = *v40;
              if (!(*v39 | *v40))
              {
                break;
              }

              ++v40;
              ++v39;
              if (v41 != v42)
              {
                v43 = v9;
                if (v41 >= v42)
                {
                  goto LABEL_55;
                }

                v36 = *v37;
                if (!*v37)
                {
LABEL_59:
                  operator new();
                }

                goto LABEL_48;
              }
            }

            v43 = v9;
            do
            {
LABEL_55:
              v44 = *v38;
              v45 = *v43;
              if (!(*v38 | *v43))
              {
                goto LABEL_60;
              }

              ++v43;
              ++v38;
            }

            while (v44 == v45);
            if (v44 < v45)
            {
              v36 = v37[1];
              if (!v36)
              {
                goto LABEL_59;
              }

              continue;
            }

            break;
          }

LABEL_60:
          v37[5] = v35;
          v62 = 0;
          v63 = 0;
          v61 = &v62;
          v46 = *a2;
          if (*a2 != v11)
          {
            do
            {
              for (i = *(v46[4] + 24); i; i = i[5])
              {
                if (*i != -1)
                {
                  v59 = *i;
                  std::__tree<TState const*>::__emplace_unique_key_args<TState const*,TState const*>(&v61, &v59, &v59);
                }
              }

              v48 = v46[1];
              if (v48)
              {
                do
                {
                  v49 = v48;
                  v48 = *v48;
                }

                while (v48);
              }

              else
              {
                do
                {
                  v49 = v46[2];
                  v15 = *v49 == v46;
                  v46 = v49;
                }

                while (!v15);
              }

              v46 = v49;
            }

            while (v49 != v11);
            v50 = v61;
            if (v61 != &v62)
            {
              do
              {
                v51 = v50[4];
                v60[0] = 0;
                v60[1] = 0;
                v59 = v60;
                v58[0] = 0;
                v58[1] = 0;
                v57 = v58;
                *TFsa::newTrans(*a1, v35, v52, 0) = v50[4];
                std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(&v57, v58[0]);
                std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(&v59, v60[0]);
                v53 = v50[1];
                if (v53)
                {
                  do
                  {
                    v54 = v53;
                    v53 = *v53;
                  }

                  while (v53);
                }

                else
                {
                  do
                  {
                    v54 = v50[2];
                    v15 = *v54 == v50;
                    v50 = v54;
                  }

                  while (!v15);
                }

                v50 = v54;
              }

              while (v54 != &v62);
            }
          }

          std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(&v61, v62);
          return v35;
        }

        v56 = *(a1 + 16);
        if (v56)
        {
          v34 = (*(*v56 + 16))(v56, &v61);
          goto LABEL_45;
        }
      }
    }

    v34 = 0;
    goto LABEL_45;
  }

  v23 = v18[4];
  v24 = v8;
  while (1)
  {
    v25 = *v24;
    v26 = *v23;
    if (!(*v24 | *v23))
    {
      return v18[5];
    }

    ++v23;
    ++v24;
    if (v25 != v26)
    {
      if (v25 < v26)
      {
        goto LABEL_29;
      }

      return v18[5];
    }
  }
}

void *std::__tree<TState const*>::__emplace_unique_key_args<TState const*,TState const*>(uint64_t a1, unint64_t *a2, void *a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = v3[4];
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

void *anonymous namespace::move(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result + 1;
  v4 = *result;
  if (*result != result + 1)
  {
    do
    {
      for (i = *(v4[4] + 24); i; i = i[5])
      {
        if (*i == a2)
        {
          v11 = i[2];
          result = std::__tree<TState const*>::__emplace_unique_key_args<TState const*,TState const*>(a3, &v11, &v11);
        }
      }

      v8 = v4[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v4[2];
          v10 = *v9 == v4;
          v4 = v9;
        }

        while (!v10);
      }

      v4 = v9;
    }

    while (v9 != v3);
  }

  return result;
}

void *std::__tree<TState const*>::__assign_multi<std::__tree_const_iterator<TState const*,std::__tree_node<TState const*,void *> *,long>>(void *result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = result + 1;
    *(v7 + 16) = 0;
    result[1] = 0;
    result[2] = 0;
    if (*(v6 + 8))
    {
      v8 = *(v6 + 8);
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = std::__tree<TState const*>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          v8[4] = v9[4];
          std::__tree<TState const*>::__node_insert_multi(v5, v8);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = std::__tree<TState const*>::_DetachedTreeCache::__detach_next(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = std::__tree<TState const*>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v12);
  }

  if (a2 != a3)
  {
    std::__tree<TState const*>::__emplace_multi<TState const* const&>(v5, a2 + 4);
  }

  return result;
}

void sub_2625BA590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__tree<TState const*>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<TState const*>::__node_insert_multi(uint64_t a1, uint64_t *a2)
{
  v3 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (a2[4] >= v4[4])
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = (a1 + 8);
  }

LABEL_8:
  std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::__insert_node_at(a1, v3, v5, a2);
  return a2;
}

void *std::__tree<TState const*>::_DetachedTreeCache::__detach_next(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t std::__tree<TState const*>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(*a1, v2);
  }

  return a1;
}

void *std::set<TState const*>::set[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::set<TState const*>::insert[abi:ne200100]<std::__tree_const_iterator<TState const*,std::__tree_node<TState const*,void *> *,long>>(a1, *a2, (a2 + 8));
  return a1;
}

void *std::set<TState const*>::insert[abi:ne200100]<std::__tree_const_iterator<TState const*,std::__tree_node<TState const*,void *> *,long>>(void *result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<TState const*>::__emplace_hint_unique_key_args<TState const*,TState const* const&>(v5, (v5 + 8), v4 + 4, v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

void *std::__tree<TState const*>::__emplace_hint_unique_key_args<TState const*,TState const* const&>(uint64_t **a1, void *a2, unint64_t *a3, void *a4)
{
  v4 = *std::__tree<TState const*>::__find_equal<TState const*>(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

void *std::__tree<TState const*>::__find_equal<TState const*>(void *a1, void *a2, void *a3, void *a4, unint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (v10[4] < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = v16[4];
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= a4[4])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = v20[4];
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void std::__tree<std::__value_type<TState const**,TState*>,std::__map_value_compare<TState const**,std::__value_type<TState const**,TState*>,anonymous namespace::TNfaToDfa::TNfaStateCompare,true>,std::allocator<std::__value_type<TState const**,TState*>>>::destroy(void *a1)
{
  if (a1)
  {

    operator delete(a1);
  }
}

uint64_t *std::vector<BOOL>::vector(uint64_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<BOOL>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void std::vector<BOOL>::__vallocate[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v2);
  }

  std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
}

void *std::__fill_n_BOOL[abi:ne200100]<true,std::vector<BOOL>>(void *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(result + 2);
  v5 = *result;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4);
    v2 = a2 - v6;
    *result = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    result = memset(v5, 255, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *v3 = v8;
    *v8 |= 0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F);
  }

  return result;
}

void std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

void TFsa::moveTrans(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2[3];
  if (v4 != a3)
  {
    v5 = a2[7];
    v6 = a2[5];
    v7 = v4 + 16;
    if (v5)
    {
      v7 = v5 + 32;
    }

    *(v7 + 8) = v6;
    if (v6)
    {
      *(v6 + 56) = v5;
    }

    a2[7] = 0;
    a2[5] = 0;
    a2[3] = a3;
    v8 = *(a3 + 24);
    a2[5] = v8;
    if (v8)
    {
      *(v8 + 56) = a2;
    }

    *(a3 + 24) = a2;
  }

  v9 = a2[2];
  if (v9 != a4)
  {
    v10 = a2[6];
    v11 = a2[4];
    v12 = (v9 + 16);
    if (v10)
    {
      v12 = (v10 + 32);
    }

    *v12 = v11;
    if (v11)
    {
      *(v11 + 48) = v10;
    }

    a2[6] = 0;
    a2[4] = 0;
    a2[2] = a4;
    v13 = *(a4 + 16);
    a2[4] = v13;
    if (v13)
    {
      *(v13 + 48) = a2;
    }

    *(a4 + 16) = a2;
  }
}

void TRneParamManager::TRneParamManager(TRneParamManager *this, TLocaleInfo *a2)
{
  TLattProcParamManager::TLattProcParamManager(this, a2);
  *v3 = &unk_287527350;
  TBoolParam::TBoolParam((v3 + 62), "D", "L", 0, 0, "1", &unk_26286CF4C);
  TBoolParam::TBoolParam(this + 744, "C", "R", 0, 0, "1", &unk_26286CF4C);
  TIntParam::TIntParam((this + 992), "R", "T", 0, 0, 300, 0, "1", &unk_26286CF4C);
  TBoolParam::TBoolParam(this + 1344, "A", "O", 0, 0, "1", &unk_26286CF4C);
  TIntParam::TIntParam((this + 1592), "M", "W", 0, 1, 100, 4, "1", &unk_26286CF4C);
  TIntParam::TIntParam((this + 1944), "M", "W", 0, 1, 100, 10, "1", &unk_26286CF4C);
  TStringParam::TStringParam(this + 2296, "B", "W", 0, "0", "1", &unk_26286CF4C);
  TParamManager::add(this, (this + 496));
  TParamManager::add(this, (this + 744));
  TParamManager::add(this, (this + 992));
  TParamManager::add(this, (this + 1344));
  TParamManager::add(this, (this + 1592));
  TParamManager::add(this, (this + 1944));
  TParamManager::add(this, (this + 2296));
}

void sub_2625BAFEC(_Unwind_Exception *a1)
{
  TParam::~TParam(v1 + 243);
  TParam::~TParam(v1 + 199);
  TBoolParam::~TBoolParam(v1 + 168);
  TParam::~TParam(v1 + 124);
  TBoolParam::~TBoolParam(v1 + 93);
  TBoolParam::~TBoolParam(v1 + 62);
  TLattProcParamManager::~TLattProcParamManager(v1);
  _Unwind_Resume(a1);
}

void TLattProcParamManager::~TLattProcParamManager(void **this)
{
  *this = &unk_287525670;
  TParam::~TParam(this + 18);

  TParamManager::~TParamManager(this);
}

{
  *this = &unk_287525670;
  TParam::~TParam(this + 18);

  TParamManager::~TParamManager(this);
}

{
  *this = &unk_287525670;
  TParam::~TParam(this + 18);
  TParamManager::~TParamManager(this);

  JUMPOUT(0x26672B1B0);
}

void TRne::TRne(TRne *this, TLexicon *a2)
{
  v2 = TLatticeProcessor::TLatticeProcessor(this, a2, 0);
  *v2 = &unk_287523EF8;
  v2[8] = 0;
  operator new();
}

void sub_2625BB144(_Unwind_Exception *a1)
{
  MEMORY[0x26672B1B0](v2, 0x10F3C40C0367C18);
  TLatticeProcessor::~TLatticeProcessor(v1);
  _Unwind_Resume(a1);
}

uint64_t *std::istringstream::basic_istringstream[abi:ne200100](uint64_t *a1, const std::string *a2, int a3)
{
  a1[21] = 0;
  v6 = MEMORY[0x277D82898] + 64;
  a1[15] = MEMORY[0x277D82898] + 64;
  v7 = *(MEMORY[0x277D82820] + 16);
  v8 = *(MEMORY[0x277D82820] + 8);
  *a1 = v8;
  *(a1 + *(v8 - 24)) = v7;
  a1[1] = 0;
  v9 = (a1 + *(*a1 - 24));
  std::ios_base::init(v9, a1 + 2);
  v10 = MEMORY[0x277D82898] + 24;
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  *a1 = v10;
  a1[15] = v6;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 2), a2, a3 | 8);
  return a1;
}

void sub_2625BB2D8(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x26672B160](v1);
  _Unwind_Resume(a1);
}

uint64_t TRne::freeMemory(TRne *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  result = *(this + 8);
  if (result)
  {
    v4 = *(*result + 8);

    return v4();
  }

  return result;
}

void TRne::~TRne(TRne *this)
{
  *this = &unk_287523EF8;
  TRne::freeMemory(this);

  TLatticeProcessor::~TLatticeProcessor(this);
}

{
  *this = &unk_287523EF8;
  TRne::freeMemory(this);
  TLatticeProcessor::~TLatticeProcessor(this);

  JUMPOUT(0x26672B1B0);
}

void TRne::applyInternal(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t *a5)
{
  v104 = 0;
  v105 = 0;
  v106 = 0;
  TFsa::topologicalSort(a3 + 3, &v104);
  v8 = v104;
  v7 = v105;
  v10 = a3[16];
  v9 = a3[17];
  v101 = 0;
  v102 = 0;
  v103 = 0;
  std::vector<unsigned long>::vector[abi:ne200100](v100, ((v105 - v104) >> 3) + 1);
  v81 = (v7 - v8) >> 3;
  std::vector<unsigned long>::vector[abi:ne200100](v99, v81);
  std::vector<TWord const*>::vector[abi:ne200100](v98, (v9 - v10) >> 3);
  TAllocator::TAllocator(v97, 2048);
  v11 = a5;
  v80 = v7 - v8;
  *a5 = 0;
  v92 = -1;
  std::vector<unsigned long>::vector[abi:ne200100](v96, v81, &v92);
  if (v7 != v8)
  {
    v12 = 0;
    v13 = (v7 - v8) >> 3;
    if (v81 <= 1)
    {
      v13 = 1;
    }

    v82 = v13;
    while (1)
    {
      v14 = *&v104[8 * v12];
      *(v99[0] + *v14) = v12;
      v83 = v12;
      *(v100[0] + v12) = (v102 - v101) >> 3;
      v15 = v14[2];
      if (v15)
      {
        break;
      }

LABEL_81:
      v12 = v83 + 1;
      if (v83 + 1 == v82)
      {
        goto LABEL_82;
      }
    }

    while (1)
    {
      v16 = *v15;
      v86 = *(v15 + 8);
      v17 = *(v99[0] + **(v15 + 24));
      if (**v15 == 2)
      {
        v20 = v16[1];
        Word = TLexicon::findWord(*(a1 + 16), v20);
        if (!Word)
        {
          Word = TLexicon::addTempWord(*(a1 + 16), v20, 0, 0, 0);
        }

        v21 = *TWord::getOptionalTagBits(Word);
        v22 = (v21 >> 5) & 1;
        if ((v21 & 0x10) != 0)
        {
          v22 = 3;
        }

        v19 = (v21 & 8) != 0 ? 2 : v22;
      }

      else
      {
        Word = 0;
        v19 = 0;
      }

      *(v98[0] + v86) = Word;
      v23 = (v100[0] + 8 * v17);
      v25 = *v23;
      v24 = v23[1];
      v26 = *v23 == v24;
      if (*v23 < v24)
      {
        break;
      }

      v84 = 0;
LABEL_73:
      if (v26 || (v84 & 1) != 0)
      {
        v49 = qword_26286E970[v19];
        v50 = *(v16 + 4);
        v51 = TAllocator::allocate(v97, 24);
        v52 = v49 | 0x40;
        if (v26)
        {
          v52 = v49;
        }

        *v51 = 0;
        v51[1] = v86;
        if (v50)
        {
          v52 |= 0x81uLL;
        }

        v51[2] = v52;
        v92 = v51;
        std::vector<TItnRule *>::push_back[abi:ne200100](&v101, &v92);
        v11 = a5;
      }

      v15 = *(v15 + 32);
      if (!v15)
      {
        goto LABEL_81;
      }
    }

    v26 = 0;
    v84 = 0;
    while (1)
    {
      v27 = v101[v25];
      v28 = v27[2];
      if ((v16[2] & 1) != 0 || (v28 & 0x80) != 0)
      {
        break;
      }

      if (v28)
      {
        if (v19 != 3)
        {
          goto LABEL_34;
        }

        v31 = TAllocator::allocate(v97, 24);
        *v31 = v27;
        v31[1] = v86;
        v31[2] = 17;
        v92 = v31;
        std::vector<TItnRule *>::push_back[abi:ne200100](&v101, &v92);
      }

      else if ((v28 & 2) != 0)
      {
        if (v19 > 1)
        {
          if (v19 != 3)
          {
            v40 = TAllocator::allocate(v97, 24);
            *v40 = v27;
            v40[1] = v86;
            v40[2] = 6;
            v92 = v40;
            std::vector<TItnRule *>::push_back[abi:ne200100](&v101, &v92);
            v84 |= (v27[2] & 4) == 0;
            goto LABEL_36;
          }

          if ((v28 & 8) == 0)
          {
            goto LABEL_40;
          }
        }

        else
        {
          if (!v19)
          {
            if ((v28 & 4) != 0)
            {
              goto LABEL_36;
            }

LABEL_34:
            addTransitionToLattice(a3, v98, v101[v25], *(a1 + 16), *(a1 + 56), a4, v96, v11);
LABEL_35:
            v26 = 1;
            goto LABEL_36;
          }

          if ((v28 & 4) == 0)
          {
            goto LABEL_42;
          }
        }
      }

      else if ((v28 & 8) != 0)
      {
        if (v19 > 1)
        {
          if (v19 == 3)
          {
            v34 = TAllocator::allocate(v97, 24);
            *v34 = v27;
            v34[1] = v86;
            v34[2] = 17;
            v92 = v34;
            std::vector<TItnRule *>::push_back[abi:ne200100](&v101, &v92);
            v35 = (v100[0] + 8 * *(v99[0] + **(*(a3[16] + 8 * v27[1]) + 24)));
            v37 = *v35;
            v36 = v35[1];
            if (*v35 < v36)
            {
              do
              {
                v38 = v101[v37];
                if ((*(v38 + 16) & 0xALL) != 0 && (*(v38 + 16) & 0x44) == 0)
                {
                  addTransitionToLattice(a3, v98, v38, *(a1 + 16), *(a1 + 56), a4, v96, a5);
                }

                ++v37;
              }

              while (v36 != v37);
            }

            goto LABEL_66;
          }

          if ((v28 & 0x40) == 0)
          {
            v48 = TAllocator::allocate(v97, 24);
            *v48 = v27;
            v48[1] = v86;
            v48[2] = 6;
            v92 = v48;
            std::vector<TItnRule *>::push_back[abi:ne200100](&v101, &v92);
            goto LABEL_71;
          }
        }

        else
        {
          if (!v19)
          {
            break;
          }

          if ((v28 & 0x40) == 0)
          {
LABEL_42:
            v33 = TAllocator::allocate(v97, 24);
            *v33 = v27;
            v33[1] = v86;
            v33[2] = 10;
            v92 = v33;
            std::vector<TItnRule *>::push_back[abi:ne200100](&v101, &v92);
LABEL_71:
            v84 = 1;
          }
        }
      }

      else
      {
        if (v19 == 3)
        {
          if ((v28 & 0x40) != 0)
          {
            goto LABEL_36;
          }

LABEL_40:
          v32 = TAllocator::allocate(v97, 24);
          *v32 = v27;
          v32[1] = v86;
          v32[2] = 18;
          v92 = v32;
          std::vector<TItnRule *>::push_back[abi:ne200100](&v101, &v92);
          goto LABEL_36;
        }

        if (v19 != 2)
        {
          v41 = TAllocator::allocate(v97, 24);
          *v41 = v27;
          v41[1] = v86;
          v41[2] = 1;
          v92 = v41;
          std::vector<TItnRule *>::push_back[abi:ne200100](&v101, &v92);
          do
          {
            v42 = v27;
            v27 = *v27;
          }

          while (v27);
          v43 = (v100[0] + 8 * *(v99[0] + **(*(a3[16] + 8 * v42[1]) + 24)));
          v44 = *v43;
          v45 = v43[1];
          if (*v43 < v45)
          {
            do
            {
              v46 = v101[v44];
              if ((*(v46 + 16) & 0xALL) != 0 && (*(v46 + 16) & 0x44) == 0)
              {
                addTransitionToLattice(a3, v98, v46, *(a1 + 16), *(a1 + 56), a4, v96, a5);
              }

              ++v44;
            }

            while (v45 != v44);
          }

LABEL_66:
          v11 = a5;
          goto LABEL_36;
        }

        v29 = TAllocator::allocate(v97, 24);
        v30 = v27[2] & 0x40 | 4;
        *v29 = v27;
        v29[1] = v86;
        v29[2] = v30;
        v92 = v29;
        std::vector<TItnRule *>::push_back[abi:ne200100](&v101, &v92);
      }

LABEL_36:
      if (++v25 == v24)
      {
        goto LABEL_73;
      }
    }

    if ((v28 & 0x40) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_35;
  }

LABEL_82:
  *(v100[0] + v80) = (v102 - v101) >> 3;
  v54 = a3[25];
  v53 = a3[26];
  if (v54 != v53)
  {
    while (!*v54)
    {
      if (++v54 == v53)
      {
        goto LABEL_95;
      }
    }
  }

  if (v54 != v53)
  {
    do
    {
      v55 = (v100[0] + 8 * *(v99[0] + **v54));
      v56 = *v55;
      v57 = v55[1];
      if (*v55 < v57)
      {
        do
        {
          v58 = v101[v56];
          if ((*(v58 + 16) & 0x43) != 0x40)
          {
            addTransitionToLattice(a3, v98, v58, *(a1 + 16), *(a1 + 56), a4, v96, a5);
          }

          ++v56;
        }

        while (v57 != v56);
      }

      v59 = v54 + 1;
      do
      {
        v54 = v59;
        if (v59 == v53)
        {
          break;
        }

        ++v59;
      }

      while (!*v54);
      v11 = a5;
    }

    while (v54 != a3[26]);
  }

LABEL_95:
  if (!*v11)
  {
    *v11 = 1;
  }

  v60 = *(a1 + 56);
  ActiveConfigHandle = TParam::getActiveConfigHandle((v60 + 496));
  v62 = v81;
  if (*(v60 + TParam::getValidConfig((v60 + 496), ActiveConfigHandle) + 648) == 1)
  {
    tknPrintf("=== START PRODUCTIONS ===\n", v63);
    v65 = v101;
    if (v102 != v101)
    {
      v66 = 0;
      v67 = 0;
      do
      {
        if (v67 <= v62)
        {
          do
          {
            if (v66 != *(v100[0] + v67))
            {
              break;
            }

            tknPrintf("Productions for State #%llu...\n", v64, v67++);
          }

          while (v67 <= v62);
          v65 = v101;
        }

        v68 = v65[v66];
        v69 = *(v68 + 8);
        v70 = *(v98[0] + v69);
        if (v70)
        {
          v71 = *v70;
          v92 = v94;
          v93 = xmmword_26286B6F0;
          v95 = 1;
          if (*v68)
          {
            TWord::getWrittenForm(*(v98[0] + v69), &v92);
            v72 = *v68;
            if (*v68)
            {
              do
              {
                __p = v90;
                v89 = xmmword_26286B6F0;
                v91 = 1;
                TWord::getWrittenForm(*(v98[0] + v72[1]), &__p);
                if (*(&v89 + 1) >= v89)
                {
                  if (v91)
                  {
                    v107[0] = 0;
                    TBuffer<wchar_t>::insert(&__p, *(&v89 + 1), v107, 1uLL);
                    v73 = __p;
                    --*(&v89 + 1);
                  }

                  else
                  {
                    v73 = __p;
                    if (v89)
                    {
                      *(__p + v89 - 1) = 0;
                    }
                  }
                }

                else
                {
                  v73 = __p;
                  *(__p + *(&v89 + 1)) = 0;
                }

                v74 = 0;
                  ;
                }

                TBuffer<wchar_t>::insert(&v92, 0, v73, v74 - 1);
                v72 = *v72;
                if (v91 == 1 && __p != v90 && __p != 0)
                {
                  MEMORY[0x26672B1B0]();
                }
              }

              while (v72);
            }

            if (*(&v93 + 1) >= v93)
            {
              if (v95)
              {
                LODWORD(__p) = 0;
                TBuffer<wchar_t>::insert(&v92, *(&v93 + 1), &__p, 1uLL);
                v62 = v81;
                v71 = v92;
                --*(&v93 + 1);
              }

              else
              {
                v71 = v92;
                v62 = v81;
                if (v93)
                {
                  *(v92 + 4 * v93 - 4) = 0;
                }
              }
            }

            else
            {
              v71 = v92;
              *(v92 + 4 * *(&v93 + 1)) = 0;
              v62 = v81;
            }
          }

          v77 = *(v68 + 16);
          loggableUnicode(v71, &__p);
          if (v89 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          tknPrintf("Production #%llu (0x%llx): %s\n", v78, v66, v77, p_p);
          if (SHIBYTE(v89) < 0)
          {
            operator delete(__p);
          }

          if (v95 == 1 && v92 != v94 && v92)
          {
            MEMORY[0x26672B1B0]();
          }
        }

        else
        {
          tknPrintf("Production #%llu (0x%llx): NOT A WORD\n", v64, v66, *(v68 + 16));
        }

        ++v66;
        v65 = v101;
      }

      while (v66 < (v102 - v101) >> 3);
    }

    tknPrintf("=== END PRODUCTIONS ===\n", v64);
  }

  if (v96[0])
  {
    v96[1] = v96[0];
    operator delete(v96[0]);
  }

  TAllocator::clear(v97);
  if (v98[0])
  {
    v98[1] = v98[0];
    operator delete(v98[0]);
  }

  if (v99[0])
  {
    v99[1] = v99[0];
    operator delete(v99[0]);
  }

  if (v100[0])
  {
    v100[1] = v100[0];
    operator delete(v100[0]);
  }

  if (v101)
  {
    v102 = v101;
    operator delete(v101);
  }

  if (v104)
  {
    v105 = v104;
    operator delete(v104);
  }
}

void sub_2625BBEAC(_Unwind_Exception *a1)
{
  if (LOBYTE(STACK[0x8A0]) == 1)
  {
    v5 = STACK[0x488];
    if (STACK[0x488] != v2)
    {
      if (v5)
      {
        MEMORY[0x26672B1B0](v5, v1);
      }
    }
  }

  v6 = STACK[0x8A8];
  if (STACK[0x8A8])
  {
    STACK[0x8B0] = v6;
    operator delete(v6);
  }

  TAllocator::clear((v3 - 256));
  v7 = *(v3 - 216);
  if (v7)
  {
    *(v3 - 208) = v7;
    operator delete(v7);
  }

  v8 = *(v3 - 192);
  if (v8)
  {
    *(v3 - 184) = v8;
    operator delete(v8);
  }

  v9 = *(v3 - 168);
  if (v9)
  {
    *(v3 - 160) = v9;
    operator delete(v9);
  }

  v10 = *(v3 - 144);
  if (v10)
  {
    *(v3 - 136) = v10;
    operator delete(v10);
  }

  v11 = *(v3 - 120);
  if (v11)
  {
    *(v3 - 112) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

uint64_t addTransitionToLattice(uint64_t result, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t *a7, uint64_t *a8)
{
  if ((*(a3 + 16) & 0x20) == 0)
  {
    v11 = result;
    ActiveConfigHandle = TParam::getActiveConfigHandle((a5 + 496));
    v13 = a3;
    v14 = *(a5 + TParam::getValidConfig((a5 + 496), ActiveConfigHandle) + 648);
    v15 = TParam::getActiveConfigHandle((a5 + 744));
    v16 = *(a5 + TParam::getValidConfig((a5 + 744), v15) + 896);
    v17 = TParam::getActiveConfigHandle((a5 + 1344));
    v88 = *(a5 + TParam::getValidConfig((a5 + 1344), v17) + 1496);
    v18 = TParam::getActiveConfigHandle((a5 + 992));
    v19 = *(a5 + 4 * TParam::getValidConfig((a5 + 992), v18) + 1152);
    v20 = *(v13 + 8);
    v21 = *(*(v11 + 128) + 8 * v20);
    v93 = *v21[3];
    v87 = *v21[2];
    v22 = *v21;
    v23 = *(*v21 + 4);
    v95 = (*v21)[5];
    v24 = *(*v21 + 6);
    v131[2] = *(*v21 + 5);
    v131[3] = v24;
    v25 = v22[8];
    v131[4] = v22[7];
    v131[5] = v25;
    v26 = v22[4];
    v131[0] = v22[3];
    v131[1] = v26;
    v118 = a4 + 32;
    v119 = 0u;
    v120 = 0u;
    v121 = 0u;
    v122 = 0u;
    v123 = 0u;
    v124 = 0u;
    v125 = 0u;
    v126 = 0u;
    v127 = 0u;
    v128 = 0u;
    v129 = 0u;
    v130 = 0u;
    v94 = v23;
    v86 = v13;
    if ((v23 & 1) != 0 || (v27 = *(*a2 + 8 * v20), !*v13) && (*(v13 + 16) & 0x1C) == 0)
    {
      v29 = a7;
      goto LABEL_154;
    }

    v114 = v116;
    v115 = xmmword_26286B6F0;
    v117 = 1;
    TWord::getWrittenForm(v27, &v114);
    if (v16)
    {
      if ((*(v13 + 16) & 0x14) != 0)
      {
        isUpper = 0;
      }

      else
      {
        v30 = *v114;
        {
          operator new();
        }

        isUpper = TLocaleInfo::isUpper(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v30);
      }

      v31 = TLocaleInfo::toLower((a4 + 30), *v114);
      v90 = isUpper;
      *v114 = v31;
    }

    else
    {
      v90 = 0;
    }

    v32 = *v86;
    while (v32)
    {
      v110 = v112;
      v111 = xmmword_26286B6F0;
      v113 = 1;
      v33 = v32[1];
      v34 = *(*(v11 + 128) + 8 * v33);
      v93 = *v34[3];
      v35 = *v34;
      v36 = *(*v34 + 4);
      v37 = (*v34)[5] + v95;
      if (v37 >= v19)
      {
        v38 = v19;
      }

      else
      {
        v38 = 0;
      }

      v39 = v37 - v38;
      v95 = v39;
      if (*(v11 + 248))
      {
        if (v39 >= v19)
        {
          v40 = v19;
        }

        else
        {
          v40 = 0;
        }

        TLatticeProcessor::combineMrecData(v131, (v35 + 12), v40);
        v33 = v32[1];
      }

      TWord::getWrittenForm(*(*a2 + 8 * v33), &v110);
      if (*(&v111 + 1) >= v111)
      {
        if (v113)
        {
          LODWORD(v96) = 0;
          TBuffer<wchar_t>::insert(&v110, *(&v111 + 1), &v96, 1uLL);
          v41 = v110;
          --*(&v111 + 1);
        }

        else
        {
          v41 = v110;
          if (v111)
          {
            v110[v111 - 1] = 0;
          }
        }
      }

      else
      {
        v41 = v110;
        v110[*(&v111 + 1)] = 0;
      }

      v42 = 0;
      v94 |= v36;
        ;
      }

      TBuffer<wchar_t>::insert(&v114, 0, v41, v42 - 1);
      if (v16)
      {
        if ((v32[2] & 0x14) == 0)
        {
          v44 = *v114;
          {
            operator new();
          }

          v90 |= TLocaleInfo::isUpper(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v44);
        }

        v45 = TLocaleInfo::toLower((a4 + 30), *v114);
        *v114 = v45;
      }

      v32 = *v32;
      if (v113 == 1 && v110 != v112 && v110)
      {
        MEMORY[0x26672B1B0]();
      }
    }

    v29 = a7;
    if (v16 && (v90 & 1) != 0)
    {
      v46 = TLocaleInfo::toUpper((a4 + 30), *v114);
      *v114 = v46;
    }

    v47 = a4;
    if (*(&v115 + 1) >= v115)
    {
      if (v117)
      {
        LODWORD(v110) = 0;
        TBuffer<wchar_t>::insert(&v114, *(&v115 + 1), &v110, 1uLL);
        v48 = v114;
        --*(&v115 + 1);
        v47 = a4;
      }

      else
      {
        v48 = v114;
        if (v115)
        {
          v114[v115 - 1] = 0;
        }
      }
    }

    else
    {
      v48 = v114;
      v114[*(&v115 + 1)] = 0;
    }

    Word = TLexicon::findWord(v47, v48);
    if (!Word && v88)
    {
      v110 = v112;
      v111 = xmmword_26286B6F0;
      v113 = 1;
      if (*(&v115 + 1) >= v115)
      {
        if (v117)
        {
          LODWORD(v96) = 0;
          TBuffer<wchar_t>::insert(&v114, *(&v115 + 1), &v96, 1uLL);
          v50 = v114;
          --*(&v115 + 1);
        }

        else
        {
          v50 = v114;
          if (v115)
          {
            v114[v115 - 1] = 0;
          }
        }
      }

      else
      {
        v50 = v114;
        v114[*(&v115 + 1)] = 0;
      }

      TBuffer<wchar_t>::assign(&v110, v50);
      v51 = TParam::getActiveConfigHandle((a5 + 1592));
      v91 = *(a5 + 4 * TParam::getValidConfig((a5 + 1592), v51) + 1752);
      v52 = TParam::getActiveConfigHandle((a5 + 1944));
      v89 = *(a5 + 4 * TParam::getValidConfig((a5 + 1944), v52) + 2104);
      v53 = TStringParam::get((a5 + 2296));
      v54 = wcslen(v53);
      if (v54 >= 0x3FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v55 = v54;
      if (v54 >= 5)
      {
        if ((v54 | 1) == 5)
        {
          v56 = 7;
        }

        else
        {
          v56 = (v54 | 1) + 1;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<wchar_t>>(&__dst, v56);
      }

      v109 = v54;
      if (v54)
      {
        memmove(&__dst, v53, 4 * v54);
      }

      v57 = 0;
      Word = 0;
      *(&__dst + v55) = 0;
      v107 = 0;
      v106 = 0;
      v105 = &v106;
      v58 = *(&v111 + 1);
      if (*(&v111 + 1) > v91)
      {
        Word = 0;
        v59 = -1;
        while (1)
        {
          TBuffer<wchar_t>::resize(&v110, v58 - 1);
          v103 = 0;
          v102 = 0;
          v104 = 0;
          std::vector<TItnRule *>::resize(&v102, 0);
          if (*(&v111 + 1) >= v111)
          {
            if (v113)
            {
              LODWORD(v96) = 0;
              TBuffer<wchar_t>::insert(&v110, *(&v111 + 1), &v96, 1uLL);
              v60 = v110;
              --*(&v111 + 1);
            }

            else
            {
              v60 = v110;
              if (v111)
              {
                v110[v111 - 1] = 0;
              }
            }
          }

          else
          {
            v60 = v110;
            v110[*(&v111 + 1)] = 0;
          }

          if (v109 >= 0)
          {
            p_dst = &__dst;
          }

          else
          {
            p_dst = __dst;
          }

          TLexicon::findWordsCollated(a4, v60, &v102, p_dst, 1, *(&v115 + 1));
          if (v14)
          {
            v62 = v103;
            v63 = v102;
            if (*(&v115 + 1) >= v115)
            {
              if (v117)
              {
                LODWORD(__p[0]) = 0;
                TBuffer<wchar_t>::insert(&v114, *(&v115 + 1), __p, 1uLL);
                v64 = v114;
                --*(&v115 + 1);
              }

              else
              {
                v64 = v114;
                if (v115)
                {
                  v114[v115 - 1] = 0;
                }
              }
            }

            else
            {
              v64 = v114;
              v114[*(&v115 + 1)] = 0;
            }

            loggableUnicode(v64, &v96);
            if (v97 >= 0)
            {
              v65 = &v96;
            }

            else
            {
              v65 = v96;
            }

            if (*(&v111 + 1) >= v111)
            {
              if (v113)
              {
                v132[0] = 0;
                TBuffer<wchar_t>::insert(&v110, *(&v111 + 1), v132, 1uLL);
                v66 = v110;
                --*(&v111 + 1);
              }

              else
              {
                v66 = v110;
                if (v111)
                {
                  v110[v111 - 1] = 0;
                }
              }
            }

            else
            {
              v66 = v110;
              v110[*(&v111 + 1)] = 0;
            }

            loggableUnicode(v66, __p);
            v68 = __p;
            if (v101 < 0)
            {
              v68 = __p[0];
            }

            tknPrintf("Found %llu candidates to replace '%s' with a collated prefix '%s'.\n", v67, (v62 - v63) >> 3, v65, v68);
            if (v101 < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v97) < 0)
            {
              operator delete(v96);
            }
          }

          v69 = v102;
          if (v103 != v102)
          {
            break;
          }

LABEL_131:
          if (v69)
          {
            v103 = v69;
            operator delete(v69);
          }

          v58 = *(&v111 + 1);
          if (*(&v111 + 1) <= v91 || v59 < 3 || v107 > v89)
          {
            v57 = v106;
            v29 = a7;
            goto LABEL_137;
          }
        }

        v70 = 0;
        while (1)
        {
          v96 = **&v69[8 * v70];
          if (&v106 == std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::find<wchar_t const*>(&v105, &v96))
          {
            break;
          }

          if (v14)
          {
            loggableUnicode(**(v102 + v70), &v96);
            v72 = &v96;
            if (v97 < 0)
            {
              v72 = v96;
            }

            tknPrintf("Skipping already seen candidate '%s'.\n", v71, v72);
            if (SHIBYTE(v97) < 0)
            {
              operator delete(v96);
            }
          }

LABEL_127:
          ++v70;
          v69 = v102;
          if (v70 >= (v103 - v102) >> 3)
          {
            goto LABEL_131;
          }
        }

        v96 = **(v102 + v70);
        std::__tree<wchar_t const*,TWideCharCompare,std::allocator<wchar_t const*>>::__emplace_unique_key_args<wchar_t const*,wchar_t const* const&>(&v105, &v96, &v96);
        v73 = *(&v115 + 1);
        v96 = v98;
        v97 = xmmword_26286B6F0;
        v99 = 1;
        TWord::getWrittenForm(*(v102 + v70), &v96);
        v74 = *(&v97 + 1);
        if (*(&v115 + 1) >= v115)
        {
          if (v117)
          {
            LODWORD(__p[0]) = 0;
            TBuffer<wchar_t>::insert(&v114, *(&v115 + 1), __p, 1uLL);
            v75 = v114;
            --*(&v115 + 1);
          }

          else
          {
            v75 = v114;
            if (v115)
            {
              v114[v115 - 1] = 0;
            }
          }
        }

        else
        {
          v75 = v114;
          v114[*(&v115 + 1)] = 0;
        }

        v76 = TAligner<wchar_t const,TRneCost>::align<wchar_t const*>(&v118, v75, &v75[v73], **(v102 + v70), **(v102 + v70) + 4 * v74);
        if (!v14)
        {
          goto LABEL_120;
        }

        loggableUnicode(**(v102 + v70), __p);
        v78 = __p;
        if (v101 < 0)
        {
          v78 = __p[0];
        }

        tknPrintf("Edit distance score for '%s' is %llu.\n", v77, v78, v76);
        if (v101 < 0)
        {
          operator delete(__p[0]);
          if (!Word)
          {
            goto LABEL_122;
          }
        }

        else
        {
LABEL_120:
          if (!Word)
          {
            goto LABEL_122;
          }
        }

        if (v59 <= v76)
        {
LABEL_123:
          if (v99 == 1 && v96 != v98 && v96)
          {
            MEMORY[0x26672B1B0]();
          }

          goto LABEL_127;
        }

LABEL_122:
        Word = *(v102 + v70);
        v59 = v76;
        goto LABEL_123;
      }

LABEL_137:
      std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(&v105, v57);
      if (v109 < 0)
      {
        operator delete(__dst);
      }

      if (v113 == 1 && v110 != v112 && v110)
      {
        MEMORY[0x26672B1B0]();
      }
    }

    if (Word)
    {
LABEL_150:
      if (v117 == 1 && v114 != v116 && v114)
      {
        MEMORY[0x26672B1B0]();
      }

LABEL_154:
      v81 = *v29;
      if (*(*v29 + 8 * v93) == -1)
      {
        v82 = *a8;
        *(v81 + 8 * v93) = *a8;
        *a8 = v82 + 1;
      }

      if (*(v81 + 8 * v87) == -1)
      {
        v83 = *a8;
        *(v81 + 8 * v87) = *a8;
        *a8 = v83 + 1;
      }

      operator new();
    }

    if (*(&v115 + 1) >= v115)
    {
      if ((v117 & 1) == 0)
      {
        v79 = v114;
        v80 = a4;
        if (v115)
        {
          v114[v115 - 1] = 0;
        }

        goto LABEL_149;
      }

      LODWORD(v110) = 0;
      TBuffer<wchar_t>::insert(&v114, *(&v115 + 1), &v110, 1uLL);
      v79 = v114;
      --*(&v115 + 1);
    }

    else
    {
      v79 = v114;
      v114[*(&v115 + 1)] = 0;
    }

    v80 = a4;
LABEL_149:
    TLexicon::addTempWord(v80, v79, 0, 0, 0);
    goto LABEL_150;
  }

  return result;
}

void sub_2625BCDEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  MEMORY[0x26672B1B0](v14, 0x1070C40ADD13FEBLL, a3, a4, a5, a6, a7, a8);
  if (LOBYTE(STACK[0xD70]) == 1)
  {
    v16 = STACK[0x958];
    if (STACK[0x958] != a14)
    {
      if (v16)
      {
        MEMORY[0x26672B1B0](v16, 0x1000C4052888210);
      }
    }
  }

  TAligner<wchar_t const,TRneCost>::~TAligner(&STACK[0xD78]);
  _Unwind_Resume(a1);
}

void TRne::apply(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  *(*(a1 + 56) + 136) = a4;
  if (*(a3[32] + 8) == *(*(a1 + 16) + 8))
  {
    memset(__p, 0, sizeof(__p));
    v8[0] = 0;
    TRne::applyInternal(a1, a2, a3, __p, v8);
    operator new();
  }

  tknPrintf("Error: The lattice lexicon handle does not match the lattice processor's lexicon handle.\n", a2);
  std::string::basic_string[abi:ne200100]<0>(v8, &byte_262899963);
  __p[0] = byte_287529580;
  if (SHIBYTE(v9) < 0)
  {
    std::string::__init_copy_ctor_external(&__p[1], v8[0], v8[1]);
  }

  else
  {
    *&__p[1] = *v8;
    v11 = v9;
  }

  __p[0] = &unk_287528000;
  if (v11 >= 0)
  {
    v4 = &__p[1];
  }

  else
  {
    v4 = __p[1];
  }

  conditionalAssert(v4, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/rne/rne.cpp", 894);
  __p[0] = byte_287529580;
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(v8[0]);
  }

  exception = __cxa_allocate_exception(0x20uLL);
  std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
  *exception = byte_287529580;
  v6 = (exception + 8);
  if (SHIBYTE(__p[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v6, __p[0], __p[1]);
  }

  else
  {
    v7 = *__p;
    *(exception + 3) = __p[2];
    *&v6->__r_.__value_.__l.__data_ = v7;
  }

  *exception = &unk_287528000;
}

void sub_2625BD290(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, void *a17, int a18, __int16 a19, char a20, char a21, int a22, __int16 a23, char a24, char a25)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((v26 & 1) == 0)
    {
LABEL_6:
      *(v27 + 136) = v28;
      _Unwind_Resume(a1);
    }
  }

  else if (!v26)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v25);
  goto LABEL_6;
}

void TRne::apply(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(*(a1 + 56) + 136) = a5;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  std::vector<wchar_t const*>::reserve(&v35, a3);
  if (a3)
  {
    v9 = 0;
    v10 = v36;
    do
    {
      v11 = **(*a2 + 8 * v9);
      if (v10 >= v37)
      {
        v12 = (v10 - v35) >> 3;
        if ((v12 + 1) >> 61)
        {
          std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
        }

        v13 = (v37 - v35) >> 2;
        if (v13 <= v12 + 1)
        {
          v13 = v12 + 1;
        }

        if (v37 - v35 >= 0x7FFFFFFFFFFFFFF8)
        {
          v14 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v13;
        }

        if (v14)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<wchar_t const*>>(&v35, v14);
        }

        *(8 * v12) = v11;
        v10 = (8 * v12 + 8);
        v15 = (8 * v12 - (v36 - v35));
        memcpy(v15, v35, v36 - v35);
        v16 = v35;
        v35 = v15;
        v36 = v10;
        v37 = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      else
      {
        *v10 = v11;
        v10 += 8;
      }

      v36 = v10;
      ++v9;
    }

    while (a3 != v9);
  }

  __p = 0;
  v33 = 0;
  v17 = a4 - a3;
  v34 = 0;
  std::vector<TState *>::reserve(&__p, a4 - a3);
  std::vector<TLatticeConstructionTransData>::vector[abi:ne200100](&v31, a4 - a3);
  if (a4 != a3)
  {
    v18 = 0;
    v19 = 0;
    v20 = 8 * a3;
    do
    {
      v21 = v31 + v18;
      *v21 = 2;
      *(v21 + 4) = 0;
      *(v21 + 1) = **(*a2 + v20 + 8 * v19);
      v22 = v31 + v18;
      v22[3] = v19;
      v22[5] = v19++;
      v22[4] = v19;
      v22[6] = v19;
      v22[7] = 1;
      v23 = v33;
      if (v33 >= v34)
      {
        v25 = (v33 - __p) >> 3;
        if ((v25 + 1) >> 61)
        {
          std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
        }

        v26 = (v34 - __p) >> 2;
        if (v26 <= v25 + 1)
        {
          v26 = v25 + 1;
        }

        if (v34 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v27 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v27 = v26;
        }

        if (v27)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<TParam *>>(&__p, v27);
        }

        v28 = (8 * v25);
        *v28 = v22;
        v24 = 8 * v25 + 8;
        v29 = v28 - (v33 - __p);
        memcpy(v29, __p, v33 - __p);
        v30 = __p;
        __p = v29;
        v33 = v24;
        v34 = 0;
        if (v30)
        {
          operator delete(v30);
        }
      }

      else
      {
        *v33 = v22;
        v24 = (v23 + 8);
      }

      v33 = v24;
      v18 += 160;
    }

    while (v19 != v17);
  }

  operator new();
}

void sub_2625BD814(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  MEMORY[0x26672B1B0](v22, 0x10F1C4078920B39, a3, a4, a5, a6, a7, a8);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x2625BD604);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  v26 = *(v23 - 104);
  if (v26)
  {
    *(v23 - 96) = v26;
    operator delete(v26);
  }

  *(a12 + 136) = a11;
  _Unwind_Resume(a1);
}

void std::vector<wchar_t const*>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<wchar_t const*>>(a1, a2);
    }

    std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
  }
}

uint64_t TRne::save(TRne *this, TDataManager *a2, TDataManager *a3)
{
  v6 = *(this + 2);
  v7 = (v6 + 72);
  if (*(v6 + 95) < 0)
  {
    v7 = *v7;
  }

  TOutputModel::TOutputModel(v29, a2, a3, v7, *(this + 8));
  if (v30 <= 1)
  {
    tknPrintf("Error: Unsupported model version for Roots and Endings: %llu\n", v8, v30);
    std::string::basic_string[abi:ne200100]<0>(&v27, &byte_262899963);
    *v22 = byte_287529580;
    if (SHIBYTE(v28) < 0)
    {
      std::string::__init_copy_ctor_external(&v22[8], v27, *(&v27 + 1));
    }

    else
    {
      *&v22[8] = v27;
      v23 = v28;
    }

    *v22 = &unk_287528000;
    if (v23 >= 0)
    {
      v15 = &v22[8];
    }

    else
    {
      v15 = *&v22[8];
    }

    conditionalAssert(v15, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/rne/rne.cpp", 994);
    *v22 = byte_287529580;
    if (SHIBYTE(v23) < 0)
    {
      operator delete(*&v22[8]);
    }

    if (SHIBYTE(v28) < 0)
    {
      operator delete(v27);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v22, &byte_262899963);
    *exception = byte_287529580;
    v17 = (exception + 1);
    if ((v22[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v17, *v22, *&v22[8]);
    }

    else
    {
      v18 = *v22;
      exception[3] = *&v22[16];
      *&v17->__r_.__value_.__l.__data_ = v18;
    }

    *exception = &unk_287528000;
  }

  v9 = MEMORY[0x277D82828];
  if (a2)
  {
    TDataManager::setIntVar(a2, "RneVersion", 1);
    std::ostringstream::basic_ostringstream[abi:ne200100](v22);
    TOutputStream::TOutputStream(&v27, v22, "RneParam", *(this + 2) + 240);
    TParamManager::save(*(this + 7), &v27, 0);
    std::stringbuf::str();
    if ((v21 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v21 & 0x80u) == 0)
    {
      v11 = v21;
    }

    else
    {
      v11 = v20;
    }

    (*(*a2 + 48))(a2, "RneParam", p_p, v11);
    if (v21 < 0)
    {
      operator delete(__p);
    }

    *v22 = *v9;
    *&v22[*(*v22 - 24)] = v9[3];
    *&v22[8] = MEMORY[0x277D82878] + 16;
    if (v25 < 0)
    {
      operator delete(v24);
    }

    *&v22[8] = MEMORY[0x277D82868] + 16;
    std::locale::~locale(&v22[16]);
    std::ostream::~ostream();
    MEMORY[0x26672B160](v26);
  }

  if (a3)
  {
    TDataManager::setIntVar(a3, "RneVersion", 1);
    std::ostringstream::basic_ostringstream[abi:ne200100](v22);
    TOutputStream::TOutputStream(&v27, v22, "RneParam", *(this + 2) + 240);
    TParamManager::save(*(this + 7), &v27, 1);
    std::stringbuf::str();
    if ((v21 & 0x80u) == 0)
    {
      v12 = &__p;
    }

    else
    {
      v12 = __p;
    }

    if ((v21 & 0x80u) == 0)
    {
      v13 = v21;
    }

    else
    {
      v13 = v20;
    }

    (*(*a3 + 48))(a3, "RneParam", v12, v13);
    if (v21 < 0)
    {
      operator delete(__p);
    }

    *v22 = *v9;
    *&v22[*(*v22 - 24)] = v9[3];
    *&v22[8] = MEMORY[0x277D82878] + 16;
    if (v25 < 0)
    {
      operator delete(v24);
    }

    *&v22[8] = MEMORY[0x277D82868] + 16;
    std::locale::~locale(&v22[16]);
    std::ostream::~ostream();
    MEMORY[0x26672B160](v26);
  }

  return (*(**(this + 8) + 24))(*(this + 8));
}

void sub_2625BDF00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, void *a18, int a19, __int16 a20, char a21, char a22, int a23, __int16 a24, char a25, char a26)
{
  if (a22 < 0)
  {
    operator delete(__p);
    if ((v27 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v27)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v26);
  goto LABEL_6;
}

uint64_t *std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x277D828A0] + 64;
  a1[14] = MEMORY[0x277D828A0] + 64;
  v3 = *(MEMORY[0x277D82828] + 16);
  v4 = *(MEMORY[0x277D82828] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x277D828A0] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 1), 16);
  return a1;
}

void sub_2625BE0E8(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x26672B160](v1);
  _Unwind_Resume(a1);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *a1 = *MEMORY[0x277D82828];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x26672B160](a1 + 112);
  return a1;
}

void TRneParamManager::~TRneParamManager(TRneParamManager *this)
{
  TRneParamManager::~TRneParamManager(this);

  JUMPOUT(0x26672B1B0);
}

{
  *this = &unk_287527350;
  v2 = (this + 2296);
  *(this + 287) = &unk_287528A10;
  v7 = (this + 3648);
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v7);
  v7 = (this + 3624);
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v7);
  v7 = (this + 3600);
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v7);
  for (i = 0; i != -1152; i -= 24)
  {
    if (*(this + i + 3599) < 0)
    {
      operator delete(*(this + i + 3576));
    }
  }

  TParam::~TParam(v2);
  TParam::~TParam(this + 243);
  TParam::~TParam(this + 199);
  v4 = 0;
  *(this + 168) = &unk_2875295A0;
  do
  {
    if (*(this + v4 + 1591) < 0)
    {
      operator delete(*(this + v4 + 1568));
    }

    v4 -= 24;
  }

  while (v4 != -48);
  TParam::~TParam(this + 168);
  TParam::~TParam(this + 124);
  v5 = 0;
  *(this + 93) = &unk_2875295A0;
  do
  {
    if (*(this + v5 + 991) < 0)
    {
      operator delete(*(this + v5 + 968));
    }

    v5 -= 24;
  }

  while (v5 != -48);
  TParam::~TParam(this + 93);
  v6 = 0;
  *(this + 62) = &unk_2875295A0;
  do
  {
    if (*(this + v6 + 743) < 0)
    {
      operator delete(*(this + v6 + 720));
    }

    v6 -= 24;
  }

  while (v6 != -48);
  TParam::~TParam(this + 62);
  *this = &unk_287525670;
  TParam::~TParam(this + 18);
  TParamManager::~TParamManager(this);
}

uint64_t TBoolParam::TBoolParam(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v9 = TParam::TParam(a1, 0, a2, a3, a4, a6, a7);
  *v9 = &unk_2875295A0;
  *(v9 + 200) = 0u;
  *(v9 + 216) = 0u;
  *(v9 + 232) = 0u;
  *(v9 + 152) = a5;
  *(v9 + 112) |= 0x200uLL;
  TParam::notifyChange(v9, 0);
  return a1;
}

void sub_2625BE314(_Unwind_Exception *a1)
{
  TBoolParam::TBoolParam(v1);
  TParam::~TParam(v1);
  _Unwind_Resume(a1);
}

void TInputStream::TInputStream(TInputStream *this, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *this = a2;
  *(this + 8) = a3;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 12) = 1;
  *(this + 104) = 0u;
  *(this + 20) = 0;
  *(this + 19) = this + 160;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 21) = 0;
  *(this + 22) = a5;
  if (a4)
  {
    MEMORY[0x26672AEC0](this + 16, a4);
  }

  *(this + 9) = TInputStream::readHeader(this);
}