void *sub_239E552A0(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_239E95A5C();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  *(a1 + v5) = 0;
  return a1;
}

void sub_239E55358(void *a1, uint64_t a2)
{
  v230 = a1;
  v229 = objc_msgSend_objectForKey_(v230, v3, @"kMDLAssetPreserveTopology", v4, v9, v10, v11, v12, v5, v6, v7, v8);
  if (v229)
  {
    *a2 = objc_msgSend_BOOLValue(v229, v13, v14, v15, v20, v21, v22, v23, v16, v17, v18, v19);
  }

  v228 = objc_msgSend_objectForKey_(v230, v13, @"kMDLAssetPreserveIndexing", v15, v20, v21, v22, v23, v16, v17, v18, v19);
  if (v228)
  {
    v35 = objc_msgSend_BOOLValue(v228, v24, v25, v26, v31, v32, v33, v34, v27, v28, v29, v30);
    *(a2 + 1) = v35;
    if (v35)
    {
      *a2 = 1;
    }
  }

  v36 = objc_msgSend_objectForKey_(v230, v24, @"kMDLAssetVertexDescriptor", v26, v31, v32, v33, v34, v27, v28, v29, v30);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong((a2 + 8), v36);
  }

  v53 = objc_msgSend_objectForKey_(v230, v37, @"kMDLAssetBufferAllocator", v38, v43, v44, v45, v46, v39, v40, v41, v42);
  if (v53)
  {
    objc_storeStrong((a2 + 16), v53);
  }

  v58 = objc_msgSend_objectForKey_(v230, v47, @"kMDLAssetComputeFaceNormals", v48, v54, v55, v56, v57, v49, v50, v51, v52);
  v70 = v58;
  if (v58)
  {
    v71 = objc_msgSend_BOOLValue(v58, v59, v60, v61, v66, v67, v68, v69, v62, v63, v64, v65);
    *(a2 + 27) = v71;
    if (v71)
    {
      goto LABEL_20;
    }
  }

  else if (*(a2 + 27))
  {
    goto LABEL_20;
  }

  v72 = objc_msgSend_objectForKey_(v230, v59, @"kMDLAssetComputeVertexNormals", v61, v66, v67, v68, v69, v62, v63, v64, v65);
  v84 = v72;
  if (v72)
  {
    v85 = objc_msgSend_BOOLValue(v72, v73, v74, v75, v80, v81, v82, v83, v76, v77, v78, v79);
    *(a2 + 26) = v85;
    if (v85)
    {
      v96 = objc_msgSend_objectForKey_(v230, v86, @"kMDLAssetNormalSmoothingThreshold", v87, v92, v93, v94, v95, v88, v89, v90, v91);
      v108 = v96;
      if (v96)
      {
        objc_msgSend_floatValue(v96, v97, v98, v99, v104, v105, v106, v107, v100, v101, v102, v103);
        *(a2 + 28) = v109;
      }
    }
  }

LABEL_20:
  v110 = objc_msgSend_objectForKey_(v230, v59, @"kMDLAssetPreserveExistingNormals", v61, v66, v67, v68, v69, v62, v63, v64, v65);
  v122 = v110;
  if (v110)
  {
    *(a2 + 32) = objc_msgSend_BOOLValue(v110, v111, v112, v113, v118, v119, v120, v121, v114, v115, v116, v117);
  }

  v123 = objc_msgSend_objectForKey_(v230, v111, @"kMDLAssetDisplayNURBSPatches", v113, v118, v119, v120, v121, v114, v115, v116, v117);
  v135 = v123;
  if (v123)
  {
    *(a2 + 25) = objc_msgSend_BOOLValue(v123, v124, v125, v126, v131, v132, v133, v134, v127, v128, v129, v130);
  }

  v136 = objc_msgSend_objectForKey_(v230, v124, @"kMDLAssetAssetAtTime", v126, v131, v132, v133, v134, v127, v128, v129, v130);
  v148 = v136;
  if (v136)
  {
    objc_msgSend_doubleValue(v136, v137, v138, v139, v144, v145, v146, v147, v140, v141, v142, v143);
    *(a2 + 64) = v144.n128_u64[0];
    *(a2 + 35) = 0;
  }

  v149 = objc_msgSend_objectForKey_(v230, v137, @"kMDLAssetComputeTangents", v139, v144, v145, v146, v147, v140, v141, v142, v143);
  v161 = v149;
  if (v149)
  {
    v162 = objc_msgSend_BOOLValue(v149, v150, v151, v152, v157, v158, v159, v160, v153, v154, v155, v156);
    *(a2 + 33) = v162;
    if (!v162)
    {
      goto LABEL_38;
    }
  }

  else if ((*(a2 + 33) & 1) == 0)
  {
    goto LABEL_38;
  }

  v163 = objc_msgSend_objectForKey_(v230, v150, @"kMDLAssetComputeBitangents", v152, v157, v158, v159, v160, v153, v154, v155, v156);
  v175 = v163;
  if (v163)
  {
    *(a2 + 34) = objc_msgSend_BOOLValue(v163, v164, v165, v166, v171, v172, v173, v174, v167, v168, v169, v170);
  }

  if (*(a2 + 33))
  {
    v176 = objc_msgSend_objectForKey_(v230, v150, @"kMDLAssetTangentUVSet", v152, v157, v158, v159, v160, v153, v154, v155, v156);
    v187 = v176;
    if (v176)
    {
      v188 = v176;
      v200 = objc_msgSend_UTF8String(v188, v189, v190, v191, v196, v197, v198, v199, v192, v193, v194, v195);
      MEMORY[0x23EE7FFA0](a2 + 40, v200);
    }

    v201 = objc_msgSend_objectForKey_(v230, v177, @"kMDLAssetTangentSmoothingThreshold", v178, v183, v184, v185, v186, v179, v180, v181, v182);
    v213 = v201;
    if (v201)
    {
      objc_msgSend_floatValue(v201, v202, v203, v204, v209, v210, v211, v212, v205, v206, v207, v208);
      *(a2 + 36) = v214;
    }
  }

LABEL_38:
  v215 = objc_msgSend_objectForKey_(v230, v150, @"kMDLAssetComputeExtents", v152, v157, v158, v159, v160, v153, v154, v155, v156);
  v227 = v215;
  if (v215)
  {
    *(a2 + 24) = objc_msgSend_BOOLValue(v215, v216, v217, v218, v223, v224, v225, v226, v219, v220, v221, v222);
  }
}

void sub_239E55914(void *a1, int a2, uint64_t a3, int a4)
{
  v7 = a1;
  v8 = @"SceneKit";
  if (!a4)
  {
    v8 = @"ModelIO";
  }

  v9 = v8;
  v21 = sub_239E55AE8(v17, v18, v19, v20, v9, v10, v11, v12, v13, v14, v15, v16);
  v32 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v22, a3, v23, v28, v29, v30, v31, v24, v25, v26, v27);
  v33 = @"Custom";
  if (!a2)
  {
    v33 = @"ModelIO";
  }

  v34 = v33;
  v37 = v9;
  v38 = v21;
  v39 = v7;
  v40 = v32;
  v35 = v32;
  v36 = v34;
  AnalyticsSendEventLazy();
}

__CFString *sub_239E55AE8(__n128 a1, __n128 a2, __n128 a3, __n128 a4, uint64_t a5, const char *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v12 = objc_msgSend_mainBundle(MEMORY[0x277CCA8D8], a6, a7, a8, a1, a2, a3, a4, a9, a10, a11, a12);
  v24 = v12;
  if (!v12 || (objc_msgSend_bundleIdentifier(v12, v13, v14, v15, v20, v21, v22, v23, v16, v17, v18, v19), (v25 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v26 = objc_msgSend_processInfo(MEMORY[0x277CCAC38], v13, v14, v15, v20, v21, v22, v23, v16, v17, v18, v19);
    v38 = objc_msgSend_processName(v26, v27, v28, v29, v34, v35, v36, v37, v30, v31, v32, v33);
    v39 = v38;
    if (v38)
    {
      v25 = v38;
    }

    else
    {
      v25 = &stru_284D18478;
    }
  }

  return v25;
}

id sub_239E55BB0(__n128 *a1, const char *a2, double a3, __n128 a4, __n128 a5, __n128 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v20 = *MEMORY[0x277D85DE8];
  v16[0] = @"allocatorType";
  v16[1] = @"bridgeType";
  v12 = a1[2].n128_u64[1];
  v17[0] = a1[2].n128_u64[0];
  v17[1] = v12;
  v13 = a1[3];
  v16[2] = @"bundleIdentifier";
  v16[3] = @"fileExtension";
  v18 = v13;
  v16[4] = @"vertexDescriptor";
  v19 = a1[4].n128_u64[0];
  v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v17, v16, v13, a4, a5, a6, 5, a10, a11, a12);

  return v14;
}

uint64_t sub_239E55C70(const __CFURL *a1)
{
  if (!a1)
  {
    return 0;
  }

  MainBundle = CFBundleGetMainBundle();
  if (!MainBundle)
  {
    return 0;
  }

  v3 = MainBundle;
  *packageCreator = 0;
  CFBundleGetPackageInfo(MainBundle, &packageCreator[1], packageCreator);
  if (packageCreator[1] != 1095782476)
  {
    return 0;
  }

  v4 = CFBundleCopyBundleURL(v3);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = CFURLCopyPath(v4);
  v7 = CFURLCopyPath(a1);
  v19 = v7;
  if (v6 && v7)
  {
    v20 = objc_msgSend_stringByStandardizingPath(v7, v8, v9, v10, v15, v16, v17, v18, v11, v12, v13, v14);
    v32 = objc_msgSend_stringByStandardizingPath(v6, v21, v22, v23, v28, v29, v30, v31, v24, v25, v26, v27);
    v33 = CFStringFind(v20, v32, 1uLL);
    if (v33.location)
    {
      v34 = 1;
    }

    else
    {
      v34 = v33.length <= 0;
    }

    v35 = !v34;
    goto LABEL_16;
  }

  v35 = 0;
  v36 = 0;
  if (v6)
  {
LABEL_16:
    CFRelease(v6);
    v36 = v35;
  }

  if (v19)
  {
    CFRelease(v19);
  }

  CFRelease(v5);
  return v36;
}

BOOL sub_239E55D74(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      sub_239E98910();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

void sub_239E55DF8(uint64_t a1, char a2)
{
  *(a1 + 16) = 0;
  *(a1 + 8) = a1 + 16;
  *(a1 + 24) = 0;
  *(a1 + 32) = a2;
  *a1 = &unk_284D17538;
  operator new();
}

void sub_239E55E78(_Unwind_Exception *a1)
{
  *v1 = &unk_284D17508;
  sub_239E91CE0(v2, *(v1 + 16));
  _Unwind_Resume(a1);
}

void sub_239E55F18(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    MEMORY[0x23EE802C0](v1, 0xC400A2AC0F1);
  }

  _Unwind_Resume(exception_object);
}

void sub_239E55F3C(void *a1@<X1>, uint64_t a2@<X2>, void *a3@<X3>, void *a4@<X8>)
{
  v7 = a1;
  v15 = a3;
  if (!v15)
  {
    sub_239E552A0(a4, "Cannot import into nil asset");
    goto LABEL_15;
  }

  __ptr[0] = 0;
  sub_239E5663C(v7, __p, v8, v9, v10, v11, v12, v13, v14, v16, v17, v18, v19);
  if ((SBYTE7(v211) & 0x80u) == 0)
  {
    v20 = __p;
  }

  else
  {
    v20 = __p[0];
  }

  v21 = fopen(v20, "r");
  v22 = v21;
  if (SBYTE7(v211) < 0)
  {
    operator delete(__p[0]);
    if (v22)
    {
      goto LABEL_7;
    }

LABEL_14:
    sub_239E552A0(a4, "Could not open file");
    goto LABEL_15;
  }

  if (!v21)
  {
    goto LABEL_14;
  }

LABEL_7:
  fread(__ptr, 4uLL, 1uLL, v22);
  fclose(v22);
  v23 = [MDLArchiveAssetResolver alloc];
  v34 = objc_msgSend_initWithURL_(v23, v24, v7, v25, v30, v31, v32, v33, v26, v27, v28, v29);
  objc_msgSend_setResolver_(v15, v35, v34, v36, v41, v42, v43, v44, v37, v38, v39, v40);
  sub_239E566C0();
  v219[0] = 0;
  v219[1] = 0;
  v220 = 0;
  sub_239E5663C(v7, v219, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55);
  IsSupportedFile = pxrInternal__aapl__pxrReserved__::UsdStage::IsSupportedFile();
  if (IsSupportedFile)
  {
    memset(v218, 0, sizeof(v218));
    pxrInternal__aapl__pxrReserved__::ArGetResolver(IsSupportedFile);
    pxrInternal__aapl__pxrReserved__::ArResolver::CreateDefaultContextForAsset();
    v217 = 0;
    pxrInternal__aapl__pxrReserved__::UsdStage::Open();
    v216 = 0;
    sub_239E56DF8(v215, &v217);
    pxrInternal__aapl__pxrReserved__::UsdGeomGetStageUpAxis();
    if (sub_239E56F30(v215, a2))
    {
      v214 = v217;
      sub_239E57694(&v214);
      v57 = sub_239F16E98(&v214, v15);
      objc_msgSend_setExtents_(v15, v58, v57, v59, v64, v65, v66, v67, v60, v61, v62, v63);

      sub_239F178C8(&v214);
    }

    sub_239E56DF8(v213, &v217);
    pxrInternal__aapl__pxrReserved__::UsdGeomGetStageMetersPerUnit();
    v68.n128_f32[0] = v68.n128_f64[0];
    objc_msgSend_setMetersPerUnit_(v15, v69, v70, v71, v68, v76, v77, v78, v72, v73, v74, v75);
    sub_239E56F84(v213, &v216, __p, v79, v80);
    objc_msgSend_setUpAxis_(v15, v81, v82, v83, *__p, v88, v89, v90, v84, v85, v86, v87);
    if (v217)
    {
      v91 = sub_239E57038(&v217);
      pxrInternal__aapl__pxrReserved__::UsdStage::GetTimeCodesPerSecond(v91);
      v93 = v92.n128_f64[0];
      objc_msgSend_set_timeCodesPerSecond_(v15, v94, v95, v96, v92, v101, v102, v103, v97, v98, v99, v100);
      v104 = 1.0 / v93;
      v105.n128_f64[0] = v104;
      objc_msgSend_setFrameInterval_(v15, v106, v107, v108, v105, v113, v114, v115, v109, v110, v111, v112);
      v116 = sub_239E57038(&v217);
      pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v116);
      v118.n128_f64[0] = v117 * v104;
      objc_msgSend_setStartTime_(v15, v119, v120, v121, v118, v126, v127, v128, v122, v123, v124, v125);
      v129 = sub_239E57038(&v217);
      pxrInternal__aapl__pxrReserved__::UsdStage::GetEndTimeCode(v129);
      v131.n128_f64[0] = v130 * v104;
      objc_msgSend_setEndTime_(v15, v132, v133, v134, v131, v139, v140, v141, v135, v136, v137, v138);
      v160 = objc_msgSend_bufferAllocator(v15, v142, v143, v144, v149, v150, v151, v152, v145, v146, v147, v148);
      if (v160)
      {
        v165 = objc_msgSend_bufferAllocator(v15, v153, v154, v155, v161, v162, v163, v164, v156, v157, v158, v159);
      }

      else
      {
        v165 = objc_opt_new();
      }

      v202 = v165;

      *__p = 0u;
      v211 = 0u;
      v212 = 1065353216;
      v209 = v217;
      sub_239E57694(&v209);
      sub_239E570B8(v15, &v209, a2, __p);
      v166 = sub_239F178C8(&v209);
      pxrInternal__aapl__pxrReserved__::ArGetResolver(v166);
      for (i = v211; i; i = *i)
      {
        __dst[0] = 0;
        __dst[1] = 0;
        v208 = 0;
        v168 = i + 2;
        if (*(i + 39) < 0)
        {
          sub_239E5BAE0(__dst, i[2], i[3]);
        }

        else
        {
          *__dst = *v168;
          v208 = i[4];
        }

        v205 = 0;
        v206 = 0;
        if (SHIBYTE(v208) < 0)
        {
          sub_239E5BAE0(v203, __dst[0], __dst[1]);
        }

        else
        {
          *v203 = *__dst;
          v204 = v208;
        }

        pxrInternal__aapl__pxrReserved__::ArResolver::OpenAsset();
        if (SHIBYTE(v204) < 0)
        {
          operator delete(v203[0]);
        }

        if (v205)
        {
          v169 = (*(*v205 + 16))(v205);
          (*(*v205 + 40))(v205);
          v171 = v170;
          v188 = objc_msgSend_resolver(v15, v170, v172, v173, v178, v179, v180, v181, v174, v175, v176, v177);
          if (*(i + 39) < 0)
          {
            v168 = *v168;
          }

          v193 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v182, v168, v183, v189, v190, v191, v192, v184, v185, v186, v187);
          objc_msgSend_addResolvedAssetNamed_offset_fileSize_(v188, v194, v193, v171, v198, v199, v200, v201, v169, v195, v196, v197);
        }

        if (v206)
        {
          sub_239E9A9B4(v206);
        }

        if (SHIBYTE(v208) < 0)
        {
          operator delete(__dst[0]);
        }
      }

      sub_239E552A0(a4, "");
      sub_239F178F8(__p);
    }

    else
    {
      sub_239E552A0(a4, "Could not import USD file");
    }

    if ((v216 & 7) != 0)
    {
      atomic_fetch_add_explicit((v216 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    sub_239F178C8(&v217);
    __p[0] = v218;
    sub_239EFC40C(__p);
  }

  else
  {
    sub_239E552A0(a4, "Unsupported USD file type");
  }

  if (SHIBYTE(v220) < 0)
  {
    operator delete(v219[0]);
  }

LABEL_15:
}

void sub_239E5642C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  if ((a40 & 7) != 0)
  {
    atomic_fetch_add_explicit((a40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_239F178C8((v44 - 168));
  a27 = (v44 - 160);
  sub_239EFC40C(&a27);
  if (*(v44 - 113) < 0)
  {
    operator delete(*(v44 - 136));
  }

  _Unwind_Resume(a1);
}

void sub_239E5663C(void *a1@<X0>, void *a2@<X8>, const char *a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X6>, uint64_t a9@<X7>, __n128 a10@<Q0>, __n128 a11@<Q1>, __n128 a12@<Q2>, __n128 a13@<Q3>)
{
  v14 = objc_msgSend_path(a1, a3, a4, a5, a10, a11, a12, a13, a6, a7, a8, a9);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v26 = v14;
  v25 = objc_msgSend_cStringUsingEncoding_(v26, v15, 4, v16, v21, v22, v23, v24, v17, v18, v19, v20);
  sub_239E552A0(a2, v25);
}

void sub_239E566C0()
{
  pxrInternal__aapl__pxrReserved__::USDInitializeConfiguration::USDInitializeConfiguration(v0);
  pxrInternal__aapl__pxrReserved__::usd_initialize();
  pxrInternal__aapl__pxrReserved__::USDInitializeConfiguration::~USDInitializeConfiguration(v0);
}

void sub_239E56710(unint64_t *a1, unint64_t *a2, int a3, int a4, int a5, unint64_t a6, pxrInternal__aapl__pxrReserved__::VtValue *a7, unsigned int a8)
{
  v52 = 0;
  memset(v51, 0, sizeof(v51));
  sub_239E6D0E8(v51, a4 * a8);
  v44 = a7;
  v13 = sub_239E6AD14(a7);
  v14 = *(v13 + 16);
  v48 = *v13;
  v49 = v14;
  v15 = *(v13 + 32);
  v50 = v15;
  if (v15)
  {
    v16 = (v15 - 16);
    if (*(&v49 + 1))
    {
      v16 = *(&v49 + 1);
    }

    atomic_fetch_add_explicit(v16, 1uLL, memory_order_relaxed);
  }

  if (!v48)
  {
    sub_239E6D3C8(a7, v51);
    goto LABEL_10;
  }

  v43 = a5;
  v45 = a2;
  if (*a1 < a6)
  {
LABEL_7:
    v17 = a6 + 1;
    if (v17 <= *a2)
    {
      v29 = 0;
      v30 = a8 * a3;
      v31 = 12 * v30;
      while (1)
      {
        sub_239E56C3C(a2);
        if (a8 >= 1)
        {
          break;
        }

LABEL_40:
        ++v29;
        a2 = v45;
        v30 += a8;
        v31 += 12 * a8;
        if (*v45 / v17 <= v29)
        {
          goto LABEL_8;
        }
      }

      v32 = (*(v45[4] + 4 * v29 * v17 + 4 * v43) * a8);
      v33 = 12 * v32;
      v34 = a8;
      v35 = v31;
      v36 = v30;
      while ((v30 & 0x80000000) == 0 && (v32 & 0x8000000000000000) == 0)
      {
        if (v51[0].n128_u64[0] <= v36 || v48 <= v32)
        {
          break;
        }

        sub_239E56B84(&v48);
        v38 = v50;
        sub_239E56B84(v51);
        v39 = v52 + v35;
        v40 = *(v38 + v33);
        ++v32;
        *(v39 + 8) = *(v38 + v33 + 8);
        *v39 = v40;
        v33 += 12;
        ++v36;
        v35 += 12;
        if (!--v34)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
LABEL_8:
      sub_239E6D3C8(v44, v51);
    }

    goto LABEL_10;
  }

  v18 = 0;
  v46 = 0;
  v41 = a5;
  while (1)
  {
    sub_239E56C3C(a1);
    if (*(a1[4] + 4 * v18 * a6) != -1)
    {
      break;
    }

LABEL_27:
    if (*a1 / a6 <= ++v18)
    {
      goto LABEL_7;
    }
  }

  if (a5)
  {
    sub_239E56C3C(a1);
    v19 = *(a1[4] + 4 * v18 * a6 + 4 * v41 - 4);
  }

  else
  {
    v19 = v18;
  }

  if (a8 < 1)
  {
LABEL_26:
    ++v46;
    a5 = v43;
    a2 = v45;
    goto LABEL_27;
  }

  v20 = (v19 * a8);
  v21 = 12 * v20;
  v22 = 12 * (v46 * a8);
  v23 = a8;
  v24 = (v46 * a8);
  while (((v46 * a8) & 0x80000000) == 0 && (v20 & 0x8000000000000000) == 0)
  {
    if (v51[0].n128_u64[0] <= v24 || v48 <= v20)
    {
      break;
    }

    sub_239E56B84(&v48);
    v26 = v50;
    sub_239E56B84(v51);
    v27 = v52 + v22;
    v28 = *(v26 + v21);
    ++v20;
    *(v27 + 8) = *(v26 + v21 + 8);
    *v27 = v28;
    v21 += 12;
    ++v24;
    v22 += 12;
    if (!--v23)
    {
      goto LABEL_26;
    }
  }

LABEL_10:
  sub_239E56C80(&v48);
  sub_239E56C80(v51);
}

void sub_239E56A60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  sub_239E56C80(va);
  sub_239E56C80(va1);
  _Unwind_Resume(a1);
}

void sub_239E56AAC(pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *a1, uint64_t *a2)
{
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(a1, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DetachIfNotUnique() [T = pxrInternal__aapl__pxrReserved__::GfVec3f]");
  v6 = sub_239E56B30();
  v8 = sub_239E6D048(v6, v7);
  v9 = v8;
  if (v2)
  {
    v10 = 12 * v2;
    v11 = v8;
    do
    {
      v12 = *v3;
      *(v11 + 2) = *(v3 + 2);
      *v11 = v12;
      v11 = (v11 + 12);
      v3 = (v3 + 12);
      v10 -= 12;
    }

    while (v10);
  }

  sub_239E56C80(a1);
  *a2 = v9;
}

void sub_239E56B84(uint64_t *result)
{
  v1 = result[4];
  if (v1)
  {
    if (result[3] || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_239E56AAC(result, result + 4);
    }
  }
}

void sub_239E56BC8(pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *a1, uint64_t *a2)
{
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(a1, "void pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique() [T = int]");
  v6 = sub_239E56B30();
  v8 = sub_239E56CEC(v6, v7);
  v9 = v8;
  if (v2)
  {
    v10 = 4 * v2;
    v11 = v8;
    do
    {
      v12 = *v3++;
      *v11++ = v12;
      v10 -= 4;
    }

    while (v10);
  }

  sub_239E56C80(a1);
  *a2 = v9;
}

void sub_239E56C3C(uint64_t *result)
{
  v1 = result[4];
  if (v1)
  {
    if (result[3] || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_239E56BC8(result, result + 4);
    }
  }
}

void sub_239E56C80(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = a1 + 24;
    if (*(a1 + 24))
    {
      sub_239F737B4(*(a1 + 24), v2);
    }

    else if (atomic_fetch_add_explicit((v1 - 16), 0xFFFFFFFFFFFFFFFFLL, memory_order_release) == 1)
    {
      __dmb(9u);
      operator delete((*(a1 + 32) - 16));
    }

    *v2 = 0;
    *(v2 + 8) = 0;
  }
}

void *sub_239E56CEC(uint64_t a1, unint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_239E56D84(v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<int>::_AllocateNew(size_t) [T = int]");
  if (a2 > 0x1FFFFFFFFFFFFFFBLL)
  {
    v3 = -1;
  }

  else
  {
    v3 = 4 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6[0])
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v4 + 2;
}

uint64_t sub_239E56D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = atomic_load(MEMORY[0x277D86538]);
  if (v4)
  {
    v5 = pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin();
    *a1 = v5;
    *(a1 + 8) = 2 * (v5 != 0);
    if (v5)
    {
      pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin();
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  return a1;
}

uint64_t *sub_239E56DF8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  a1[1] = 0;
  if (v3)
  {
    sub_239E56E70((v3 + 16), &v6);
    v4 = a1[1];
    a1[1] = v6;
    v6 = 0;
    if (v4)
    {
      sub_239F74EB8(v4, &v6);
    }
  }

  return a1;
}

void sub_239E56E58(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_239F74E70(v3);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_239E56E70@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  result = atomic_load(a1);
  if (!result)
  {
    operator new();
  }

  *a2 = result;
  atomic_fetch_add_explicit((result + 8), 1u, memory_order_relaxed);
  return result;
}

uint64_t sub_239E56F30(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    sub_239E56B60(v3);
    if (v4)
    {
      sub_239F17CC4();
      (*(v5 + 8))();
    }
  }

  return *(a2 + 24);
}

uint64_t sub_239E56F84(uint64_t a1, uint64_t *a2, int8x16_t *a3, int8x16_t a4, int8x16_t a5)
{
  result = *(a1 + 8);
  if (result)
  {
    result = sub_239E56B60(result);
    if (v8)
    {
      sub_239F17CC4();
      result = (*(v9 + 8))();
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = v10 & 0xFFFFFFFFFFFFFFF8;
    if ((v10 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v12 = (v11 + 16);
      if (*(v11 + 39) < 0)
      {
        v12 = *v12;
      }
    }

    else
    {
      v12 = "";
    }

    a4.i8[0] = *v12;
    a5.i32[0] = 90;
    v13 = vbslq_s8(vdupq_lane_s8(*&vceqq_s8(a4, a5), 0), xmmword_239F9C070, xmmword_239F9C090);
  }

  else
  {
    v13 = xmmword_239F9C090;
  }

  *a3 = v13;
  return result;
}

id sub_239E57038(id *a1)
{
  result = *a1;
  if (!result)
  {
    v2 = j__strrchr("/AppleInternal/Library/BuildRoots/4~B_v6ugBQ30mPoOJpFY6Mvy8YBJ4c54SMfX5Td4U/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/usd/pxr/base/tf/refPtr.h", 47);
    sub_239EF1FFC("/AppleInternal/Library/BuildRoots/4~B_v6ugBQ30mPoOJpFY6Mvy8YBJ4c54SMfX5Td4U/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/usd/pxr/base/tf/refPtr.h", v2, 0x2Fu);
    v3 = pxrInternal__aapl__pxrReserved__::Tf_PostNullSmartPtrDereferenceFatalError();
    return [(MDLAsset *)v3 bufferAllocator];
  }

  return result;
}

void sub_239E570B8(void *a1, id *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v130[0] = 0;
  v130[1] = 0;
  v128[1] = 0;
  v129 = v130;
  v127 = v128;
  v128[0] = 0;
  v126[0] = 0;
  v126[1] = 0;
  v125 = v126;
  v8 = sub_239E57038(a2);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPseudoRoot(&v121, v8);
  *__str = *(a3 + 64);
  sub_239E576E0(&v121, __str, &v125, &v127, &v129, 1);
  if ((v124 & 7) != 0)
  {
    atomic_fetch_add_explicit((v124 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574(&v123);
  if (v122)
  {
    sub_239E5E560(v122);
  }

  v120[0] = 0;
  v120[1] = 0;
  v119 = v120;
  sub_239E5BD30(v118, &v125);
  sub_239E5BFE0(v7, a3, v118, &v119, a4);
  sub_239F17598(v118, v118[1]);
  v9 = v119;
  if (v119 != v120)
  {
    do
    {
      *__p = 0u;
      v117 = 0u;
      *v115 = 0u;
      memset(__str, 0, sizeof(__str));
      sub_239F1763C(__str, v9 + 2);
      if ((__str[23] & 0x80000000) != 0)
      {
        if (*&__str[8] != 1)
        {
          goto LABEL_12;
        }

        v10 = *__str;
      }

      else
      {
        if (__str[23] != 1)
        {
          goto LABEL_12;
        }

        v10 = __str;
      }

      if (*v10 == 47)
      {
        goto LABEL_45;
      }

LABEL_12:
      v11 = *&__str[24];
      v22 = objc_msgSend_conformsToProtocol_(v11, v12, &unk_284D2BC48, v13, v18, v19, v20, v21, v14, v15, v16, v17);

      if (v22)
      {
        v34 = objc_msgSend_animations(v7, v23, v24, v25, v30, v31, v32, v33, v26, v27, v28, v29);
        v35 = *&__str[24];
        objc_msgSend_addObject_(v34, v36, v35, v37, v42, v43, v44, v45, v38, v39, v40, v41);
        goto LABEL_41;
      }

      if (SHIBYTE(__p[0]) < 0)
      {
        if (!v115[1])
        {
          goto LABEL_22;
        }

        if (v115[1] == 1)
        {
          v46 = v115[0];
LABEL_21:
          if (*v46 == 47)
          {
LABEL_22:
            std::string::basic_string(&v113, __str, 0, 9uLL, v131);
            if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
            {
              if (v113.__r_.__value_.__l.__size_ != 9)
              {
                operator delete(v113.__r_.__value_.__l.__data_);
                goto LABEL_43;
              }

              v71 = *v113.__r_.__value_.__l.__data_ != 0x657473614D5F5F2FLL || *(v113.__r_.__value_.__r.__words[0] + 8) != 114;
              operator delete(v113.__r_.__value_.__l.__data_);
              if (!v71)
              {
                goto LABEL_40;
              }

LABEL_43:
              v34 = *&__str[24];
              objc_msgSend_addObject_(v7, v82, v34, v83, v88, v89, v90, v91, v84, v85, v86, v87);
            }

            else
            {
              if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) != 9)
              {
                goto LABEL_43;
              }

              v58 = v113.__r_.__value_.__r.__words[0] == 0x657473614D5F5F2FLL && v113.__r_.__value_.__s.__data_[8] == 114;
              if (!v58)
              {
                goto LABEL_43;
              }

LABEL_40:
              v34 = objc_msgSend_masters(v7, v47, v48, v49, v54, v55, v56, v57, v50, v51, v52, v53);
              v35 = *&__str[24];
              objc_msgSend_addObject_(v34, v72, v35, v73, v78, v79, v80, v81, v74, v75, v76, v77);
LABEL_41:
            }

            goto LABEL_45;
          }
        }
      }

      else
      {
        if (!HIBYTE(__p[0]))
        {
          goto LABEL_22;
        }

        v46 = v115;
        if (HIBYTE(__p[0]) == 1)
        {
          goto LABEL_21;
        }
      }

      v59 = sub_239E69484(&v119, v115);
      if (v120 != v59)
      {
        v34 = *(v59 + 56);
        v35 = *&__str[24];
        objc_msgSend_addChild_(v34, v60, v35, v61, v66, v67, v68, v69, v62, v63, v64, v65);
        goto LABEL_41;
      }

LABEL_45:
      if (SHIBYTE(v117) < 0)
      {
        operator delete(__p[1]);
      }

      if (SHIBYTE(__p[0]) < 0)
      {
        operator delete(v115[0]);
      }

      v92 = *&__str[24];
      *&__str[24] = 0;

      if ((__str[23] & 0x80000000) != 0)
      {
        operator delete(*__str);
      }

      v93 = v9[1];
      if (v93)
      {
        do
        {
          v94 = v93;
          v93 = *v93;
        }

        while (v93);
      }

      else
      {
        do
        {
          v94 = v9[2];
          v58 = *v94 == v9;
          v9 = v94;
        }

        while (!v58);
      }

      v9 = v94;
    }

    while (v94 != v120);
  }

  v95 = v129;
  if (v129 != v130)
  {
    do
    {
      memset(__str, 0, sizeof(__str));
      pxrInternal__aapl__pxrReserved__::UsdPrim::GetPrototype(__str, (v95 + 7));
      v96 = sub_239E69484(&v119, v95 + 4);
      if (v120 != v96)
      {
        sub_239E58260(__str, &v113);
        String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(&v113);
        v98 = sub_239E69484(&v119, String);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        sub_239E5B574(&v113);
        if (v120 != v98)
        {
          v99 = *(v98 + 56);
          v100 = *(v96 + 56);
          objc_msgSend_setInstance_(v100, v101, v99, v102, v107, v108, v109, v110, v103, v104, v105, v106);
        }
      }

      if ((__str[24] & 7) != 0)
      {
        atomic_fetch_add_explicit((*&__str[24] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      sub_239E5B574(&__str[16]);
      if (*&__str[8])
      {
        sub_239E5E560(*&__str[8]);
      }

      v111 = v95[1];
      if (v111)
      {
        do
        {
          v112 = v111;
          v111 = *v111;
        }

        while (v111);
      }

      else
      {
        do
        {
          v112 = v95[2];
          v58 = *v112 == v95;
          v95 = v112;
        }

        while (!v58);
      }

      v95 = v112;
    }

    while (v112 != v130);
  }

  sub_239F17798(&v119, v120[0]);
  sub_239F17598(&v125, v126[0]);
  sub_239F17598(&v127, v128[0]);
  sub_239F17598(&v129, v130[0]);
}

void sub_239E575A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char *a28)
{
  sub_239F17730(&a13);
  sub_239F17798(&a27, a28);
  sub_239F17598(v31 - 168, *(v31 - 160));
  sub_239F17598(v31 - 144, *(v31 - 136));
  sub_239F17598(v31 - 120, *(v31 - 112));

  _Unwind_Resume(a1);
}

uint64_t sub_239E57694(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    v2 = *(result + 8);
    if (v2 < 0)
    {
      if (v2 == -1)
      {
        return MEMORY[0x2822067A8]();
      }

      v3 = *(result + 8);
      atomic_compare_exchange_strong_explicit((result + 8), &v3, v2 - 1, memory_order_relaxed, memory_order_relaxed);
      if (v3 != v2)
      {
        return MEMORY[0x2822067A8]();
      }
    }

    else
    {
      atomic_fetch_add_explicit((result + 8), 1u, memory_order_relaxed);
    }
  }

  return result;
}

uint64_t sub_239E576E0(pxrInternal__aapl__pxrReserved__ **a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_239E5E314(v59, a1);
  sub_239E5B4DC(v10, v54);
  v49 = v60;
  v50 = v59;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  v52 = 0;
  v53 = 0;
  v35 = a4;
  v33 = a4 + 8;
  v11 = MEMORY[0x277D86550];
  while (1)
  {
    v12 = v54[1] == v50 && v54[0] == v49;
    if (v12 && v55 == v51 && v56 == v52 && v57 == v53 && v58 == HIBYTE(v53))
    {
      break;
    }

    *v47 = 0u;
    v48 = 0u;
    *&v44 = v54[0];
    if (v54[0])
    {
      atomic_fetch_add_explicit((v54[0] + 48), 1uLL, memory_order_relaxed);
    }

    sub_239E5815C(v47, &v44, &v55);
    if (v44)
    {
      sub_239E5E560(v44);
    }

    if (sub_239E5E5B4(v47))
    {
      v46 = 0;
      if (LODWORD(v47[0]) != *a1 || v47[1] != a1[1] || v48 != a1[2] || (a1[3] ^ *(&v48 + 1)) > 7)
      {
        v14 = atomic_load(v11);
        if (v14)
        {
          pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&v44, v47, (v14 + 1264));
          pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::TfToken>();
        }

        sub_239E864C4(v11);
      }

      v43 = 0;
      if (v47[1] != a1[1] || v48 != a1[2] || (a1[3] ^ *(&v48 + 1)) >= 8)
      {
        v15 = atomic_load(v11);
        if (v15)
        {
          pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&v44, v47, (v15 + 912));
          pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::TfToken>();
        }

        sub_239E864C4(v11);
      }

      if ((a6 | 1) == 1)
      {
        v16 = v47[1];
        if (!v47[1] || (v17 = *(v47[1] + 7), (v17 & 0x800) != 0))
        {
          pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(v47[1], v13);
          v17 = *(v16 + 7);
        }

        if ((v17 & 0x100) != 0)
        {
          v44 = 0u;
          v45 = 0u;
          pxrInternal__aapl__pxrReserved__::UsdPrim::GetPrototype(&v44, v47);
          sub_239E58260(&v44, v62);
          String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(v62);
          v19 = sub_239E69484(v35, String);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          sub_239E5B574(v62);
          if (v33 == v19)
          {
            LODWORD(v38) = v44;
            v39 = *(&v44 + 1);
            if (*(&v44 + 1))
            {
              atomic_fetch_add_explicit((*(&v44 + 1) + 48), 1uLL, memory_order_relaxed);
            }

            sub_239E57FC0(&v40, &v45);
            sub_239E5B49C(&v41, &v45 + 1);
            v42 = *(&v45 + 1);
            if ((BYTE8(v45) & 7) != 0 && (atomic_fetch_add_explicit((*(&v45 + 1) & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
            {
              v42 &= 0xFFFFFFFFFFFFFFF8;
            }

            sub_239E576E0(&v38, a2, a3, v35, a5, a6);
            if ((v42 & 7) != 0)
            {
              atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            sub_239E5B574(&v40);
            if (v39)
            {
              sub_239E5E560(v39);
            }

            sub_239E58260(&v44, &v37);
            v62[0] = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(&v37);
            v20 = sub_239E5B674(v35, v62[0]);
            v21 = v20;
            *(v20 + 56) = v44;
            v22 = *(&v44 + 1);
            if (*(&v44 + 1))
            {
              atomic_fetch_add_explicit((*(&v44 + 1) + 48), 1uLL, memory_order_relaxed);
            }

            v23 = *(v20 + 64);
            if (v23)
            {
              sub_239E5E560(v23);
            }

            *(v21 + 64) = v22;
            sub_239E57F68(v21 + 72, &v45);
            sub_239E5B450(v21 + 76, &v45 + 1);
            sub_239E5BA20((v21 + 80), &v45 + 1);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            sub_239E5B574(&v37);
          }

          sub_239E58260(v47, &v37);
          v62[0] = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(&v37);
          v24 = sub_239E5B674(a5, v62[0]);
          v25 = v24;
          *(v24 + 56) = v47[0];
          v26 = v47[1];
          if (v47[1])
          {
            atomic_fetch_add_explicit(v47[1] + 6, 1uLL, memory_order_relaxed);
          }

          v27 = *(v24 + 64);
          if (v27)
          {
            sub_239E5E560(v27);
          }

          *(v25 + 64) = v26;
          sub_239E57F68(v25 + 72, &v48);
          sub_239E5B450(v25 + 76, &v48 + 1);
          sub_239E5BA20((v25 + 80), &v48 + 1);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          sub_239E5B574(&v37);
          if ((BYTE8(v45) & 7) != 0)
          {
            atomic_fetch_add_explicit((*(&v45 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          sub_239E5B574(&v45);
          if (*(&v44 + 1))
          {
            sub_239E5E560(*(&v44 + 1));
          }
        }

        sub_239E58260(v47, v62);
        *&v44 = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(v62);
        v28 = sub_239E5B674(a3, v44);
        v29 = v28;
        *(v28 + 56) = v47[0];
        v30 = v47[1];
        if (v47[1])
        {
          atomic_fetch_add_explicit(v47[1] + 6, 1uLL, memory_order_relaxed);
        }

        v31 = *(v28 + 64);
        if (v31)
        {
          sub_239E5E560(v31);
        }

        *(v29 + 64) = v30;
        sub_239E57F68(v29 + 72, &v48);
        sub_239E5B450(v29 + 76, &v48 + 1);
        sub_239E5BA20((v29 + 80), &v48 + 1);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        sub_239E5B574(v62);
      }

      if ((v43 & 7) != 0)
      {
        atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v46 & 7) != 0)
      {
        atomic_fetch_add_explicit((v46 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    if ((BYTE8(v48) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v48 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_239E5B574(&v48);
    if (v47[1])
    {
      sub_239E5E560(v47[1]);
    }

    pxrInternal__aapl__pxrReserved__::UsdPrimRange::iterator::increment(v54);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574(&v51);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574(&v55);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return sub_239E5B574(&v61);
}

void sub_239E57F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (a19)
  {
    sub_239E5E560(a19);
  }

  JUMPOUT(0x239E57F34);
}

uint64_t sub_239E57F68(uint64_t a1, _DWORD *a2)
{
  if ((pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator==() & 1) == 0)
  {
    sub_239E57FC0(&v5, a2);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap();
    sub_239E5B574(&v5);
  }

  return a1;
}

_DWORD *sub_239E57FC0(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL())
  {
    atomic_fetch_add_explicit((pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr() + 8), 1u, memory_order_relaxed);
  }

  return a1;
}

BOOL sub_239E5800C(uint64_t *a1, uint64_t a2, int a3)
{
  v3 = 0x2000;
  if (!a3)
  {
    v3 = 0;
  }

  v4 = *(*a2 + 56) & 0xFFFFFFFFFFFFDFFFLL | v3;
  v5 = *a1;
  v6 = a1[1];
  v9 = *a1 & v4;
  v8 = v6 & v5;
  return *(a1 + 16) != sub_239E58090(&v9, 0, &v9, 0xFu, &v8);
}

uint64_t sub_239E58090(void *a1, unsigned int a2, uint64_t a3, unsigned int a4, void *a5)
{
  v5 = a4 - a2 + 8 * (a3 - a1);
  if (v5 >= 1)
  {
    if (a2)
    {
      if (v5 >= (64 - a2))
      {
        v6 = 64 - a2;
      }

      else
      {
        v6 = a4 - a2 + 8 * (a3 - a1);
      }

      if (((0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v6)) & (-1 << a2) & (*a1 ^ *a5)) != 0)
      {
        return 0;
      }

      v5 -= v6;
      ++a5;
      ++a1;
    }

    if (v5 >= 64)
    {
      while (*a5 == *a1)
      {
        v7 = v5 - 64;
        ++a1;
        ++a5;
        v8 = v5 <= 127;
        v5 -= 64;
        if (v8)
        {
          goto LABEL_14;
        }
      }

      return 0;
    }

    v7 = v5;
LABEL_14:
    if (v7 >= 1 && (*a1 ^ *a5) << -v7)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_239E5815C(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  *a1 = 1;
  v5 = *a2;
  *(a1 + 8) = *a2;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 48), 1uLL, memory_order_relaxed);
  }

  sub_239E57FC0((a1 + 16), a3);
  sub_239E5B49C((a1 + 20), a3 + 1);
  *(a1 + 24) = 0;
  v6 = *(a1 + 8);
  if (v6 && (*(v6 + 57) & 8) == 0 && *(v6 + 16) == *(a1 + 16))
  {
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper();
  }

  return a1;
}

void sub_239E58228(_Unwind_Exception *a1)
{
  v3 = *(v1 + 24);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_239ED1944(v1 + 16);
  v4 = *(v1 + 8);
  if (v4)
  {
    sub_239E5E560(v4);
  }

  _Unwind_Resume(a1);
}

_DWORD *sub_239E58260@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL())
  {
    if (*a1 == 1)
    {
      sub_239E57FC0(a2, (a1 + 16));
      v4 = a2 + 1;
      v5 = (a1 + 20);
LABEL_7:

      return sub_239E5B49C(v4, v5);
    }

    v8 = a1 + 16;
LABEL_15:

    return MEMORY[0x282207AA0](v8, a1 + 24);
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    if (*a1 == 1)
    {
      sub_239E57FC0(a2, (v6 + 16));
      v4 = a2 + 1;
      v5 = (v6 + 20);
      goto LABEL_7;
    }

    v8 = v6 + 16;
    goto LABEL_15;
  }

  *a2 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();

  return pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
}

void sub_239E58368(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  for (i = a1[2]; v2 != i; v2 += 12)
  {
    MEMORY[0x23EE7ED20](&v41, "vertex");
    v7 = (v2 + 10);
    v6 = v2[10];
    v8 = v41;
    if ((v41 & 7) != 0)
    {
      atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v8 ^ v6) >= 8)
    {
      MEMORY[0x23EE7ED20](&v41, "uniform");
      v9 = *v7;
      v10 = v41;
      if ((v41 & 7) != 0)
      {
        atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v10 ^ v9) > 7)
      {
        MEMORY[0x23EE7ED20](&v41, "faceVarying");
        v23 = *v7;
        v24 = v41;
        if ((v41 & 7) != 0)
        {
          atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v24 ^ v23) > 7)
        {
          MEMORY[0x23EE7ED20](&v41, "constant");
          v32 = *v7;
          v33 = v41;
          if ((v41 & 7) != 0)
          {
            atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if ((v33 ^ v32) >= 8)
          {
            v34 = *a1 & 0xFFFFFFFFFFFFFFF8;
            if (v34)
            {
              v35 = (v34 + 16);
              if (*(v34 + 39) < 0)
              {
                v35 = *v35;
              }
            }

            else
            {
              v35 = "";
            }

            v36 = v2[7] & 0xFFFFFFFFFFFFFFF8;
            if (v36)
            {
              v37 = (v36 + 16);
              if (*(v36 + 39) < 0)
              {
                v37 = *v37;
              }
            }

            else
            {
              v37 = "";
            }

            NSLog(&cfstr_WarningMeshSHa.isa, v35, v37);
          }
        }

        else
        {
          v25 = (v2 + 2);
          if (v2[2])
          {
            v43 = 0;
            v41 = 0u;
            v42 = 0u;
            sub_239E5A31C(&v41, *a2);
            if (*a2)
            {
              v26 = 0;
              do
              {
                sub_239E56C3C(a2);
                v27 = *(a2[4] + 4 * v26);
                sub_239E56C3C(v2 + 2);
                LODWORD(v27) = *(v2[6] + 4 * v27);
                sub_239E56C3C(&v41);
                *(v43 + 4 * v26++) = v27;
              }

              while (*a2 > v26);
            }

            v28 = v43;
            v29 = v2[5];
            v43 = v2[6];
            v30 = v2[4];
            v2[4] = v42;
            v31 = *v25;
            *v25 = v41;
            v41 = v31;
            v2[5] = *(&v42 + 1);
            v2[6] = v28;
            *&v42 = v30;
            *(&v42 + 1) = v29;
            sub_239E56C80(&v41);
          }

          else
          {
            sub_239EB3650((v2 + 2), a2);
          }
        }
      }

      else
      {
        v43 = 0;
        v41 = 0u;
        v42 = 0u;
        sub_239E5A31C(&v41, *a2 / 3);
        if (a1[14])
        {
          v11 = 0;
          v12 = 0;
          do
          {
            sub_239E56C3C(a1 + 14);
            v13 = *(a1[18] + 4 * v11);
            if (v13 >= 3)
            {
              v14 = 4 * v12;
              v15 = v13 - 2;
              do
              {
                sub_239E56C3C(&v41);
                *(v43 + v14) = v11;
                v14 += 4;
                ++v12;
                --v15;
              }

              while (v15);
            }

            ++v11;
          }

          while (a1[14] > v11);
        }

        v16 = (v2 + 2);
        if (v2[2])
        {
          v40 = 0;
          v38 = 0u;
          v39 = 0u;
          sub_239E5A31C(&v38, v41);
          if (*v16)
          {
            v17 = 0;
            do
            {
              sub_239E56C3C(&v41);
              v18 = *(v43 + 4 * v17);
              sub_239E56C3C(v2 + 2);
              LODWORD(v18) = *(v2[6] + 4 * v18);
              sub_239E56C3C(&v38);
              *(v40 + 4 * v17++) = v18;
            }

            while (*v16 > v17);
          }

          v19 = v40;
          v20 = v2[5];
          v40 = v2[6];
          v21 = v2[4];
          v2[4] = v39;
          v22 = *v16;
          *v16 = v38;
          v38 = v22;
          v2[5] = *(&v39 + 1);
          v2[6] = v19;
          *&v39 = v21;
          *(&v39 + 1) = v20;
          sub_239E56C80(&v38);
        }

        else
        {
          sub_239EB3650((v2 + 2), &v41);
        }

        MEMORY[0x23EE7ED20](&v38, "uniform");
        if (&v38 == v7)
        {
          if ((v38 & 7) != 0)
          {
            atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }

        else
        {
          if ((*v7 & 7) != 0)
          {
            atomic_fetch_add_explicit((*v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          *v7 = v38;
        }

        sub_239E56C80(&v41);
      }
    }
  }
}

void sub_239E58768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_239E56C80(va);
  _Unwind_Resume(a1);
}

void sub_239E587C0(uint64_t a1)
{
  v63 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v1 = (a1 + 8);
  if (v3 == v2)
  {
    return;
  }

  do
  {
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    sub_239E5A5D4(&v57, v2);
    if ((v62 & 7) != 0)
    {
      atomic_fetch_add_explicit((v62 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v61 & 7) != 0)
    {
      atomic_fetch_add_explicit((v61 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((BYTE8(v60) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v60 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    sub_239E56C80(&v58);
    sub_239E5B240(&v57);
    v2 += 96;
  }

  while (v2 != v3);
  NumElements = pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements(*(a1 + 8));
  v6 = *(a1 + 8);
  if (*(a1 + 16) != v6)
  {
    v7 = 0;
    for (i = 0; 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - v6) >> 5) > i; ++i)
    {
      MEMORY[0x23EE7ED20](&v57, "faceVarying");
      if ((v57 ^ *(v6 + v7 + 80)) > 7)
      {
        if ((v57 & 7) != 0)
        {
          atomic_fetch_add_explicit((v57 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v6 = *v1;
      }

      else
      {
        v6 = *v1;
        v9 = *(*v1 + v7 + 16);
        if ((v57 & 7) != 0)
        {
          atomic_fetch_add_explicit((v57 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          v6 = *v1;
        }

        if (!v9)
        {
          v37 = *(a1 + 16);
          while (v6 != v37)
          {
            sub_239F551D4(v6, (a1 + 112), (a1 + 152));
            v6 += 96;
          }

          v39 = *(a1 + 32);
          for (j = *(a1 + 40); v39 != j; v39 += 32)
          {
            v40 = *(v39 + 8);
            if (*(v39 + 16) != v40)
            {
              sub_239F551D4(v40, (a1 + 112), (a1 + 152));
            }
          }

          if (*(a1 + 152))
          {
            v41 = 0;
            do
            {
              sub_239E56C3C((a1 + 152));
              *(*(a1 + 184) + 4 * v41) = v41;
              ++v41;
            }

            while (*(a1 + 152) > v41);
          }

          v43 = *(a1 + 8);
          for (k = *(a1 + 16); v43 != k; v43 += 96)
          {
            v61 = 0u;
            v62 = 0u;
            v59 = 0u;
            v60 = 0u;
            v57 = 0u;
            v58 = 0u;
            sub_239E5A5D4(&v57, v43);
            if ((v62 & 7) != 0)
            {
              atomic_fetch_add_explicit((v62 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v61 & 7) != 0)
            {
              atomic_fetch_add_explicit((v61 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((BYTE8(v60) & 7) != 0)
            {
              atomic_fetch_add_explicit((*(&v60 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            sub_239E56C80(&v58);
            sub_239E5B240(&v57);
          }

          return;
        }
      }

      v7 += 96;
    }
  }

  v54 = 0;
  memset(v53, 0, sizeof(v53));
  v50 = 0;
  v51 = 0;
  v52 = 0;
  sub_239E59B40(v53, v1, (a1 + 112), (a1 + 152), &v50);
  if (v51 - v50 == 40)
  {
    v10 = pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements(*v1);
    v11 = *(a1 + 8);
    v12 = *(a1 + 16);
    if (v11 != v12)
    {
      v13 = v10;
      v14 = v11 + 5;
      do
      {
        MEMORY[0x23EE7ED20](&v57, "constant");
        v15 = *v14;
        v16 = v57;
        if ((v57 & 7) != 0)
        {
          atomic_fetch_add_explicit((v57 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v16 ^ v15) <= 7)
        {
          sub_239F563D4((v14 - 5), v13);
        }

        MEMORY[0x23EE7ED20](&v57, "vertex");
        if (v14 == &v57)
        {
          if ((v57 & 7) != 0)
          {
            atomic_fetch_add_explicit((v57 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }

        else
        {
          if ((*v14 & 7) != 0)
          {
            atomic_fetch_add_explicit((*v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          *v14 = v57;
        }

        sub_239E5B364(v14 - 8);
        v17 = v14 + 1;
        v14 += 6;
      }

      while (v17 != v12);
    }
  }

  else
  {
    memset(v49, 0, sizeof(v49));
    sub_239E5A31C(v49, *(a1 + 152));
    v48 = 0;
    memset(v47, 0, sizeof(v47));
    v46 = 0;
    memset(v45, 0, sizeof(v45));
    v44 = 0;
    sub_239E58F34(v49, v47, v45, &v50, NumElements, &v44);
    v18 = v44;
    v19 = 0xCCCCCCCCCCCCCCCDLL * ((v51 - v50) >> 3);
    v20 = *&v45[0] / (v19 + 1);
    v21 = v19;
    v22 = *(a1 + 8);
    v23 = *(a1 + 16);
    if (v22 != v23)
    {
      v24 = 0;
      v25 = v22 + 5;
      do
      {
        sub_239E56C3C(v53);
        sub_239E6C8D8((v25 - 5), v54[v24], v44, v20 + v18, v21, v47, v45);
        MEMORY[0x23EE7ED20](&v57, "vertex");
        if (v25 == &v57)
        {
          if ((v57 & 7) != 0)
          {
            atomic_fetch_add_explicit((v57 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }

        else
        {
          if ((*v25 & 7) != 0)
          {
            atomic_fetch_add_explicit((*v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          *v25 = v57;
        }

        sub_239E5B364(v25 - 8);
        ++v24;
        v26 = v25 + 1;
        v25 += 6;
      }

      while (v26 != v23);
    }

    v28 = *(a1 + 32);
    for (m = *(a1 + 40); v28 != m; v28 += 32)
    {
      v29 = *(v28 + 8);
      if (*(v28 + 16) != v29)
      {
        sub_239E56C3C(v53);
        sub_239E6C8D8(v29, *v54, v44, v20 + v18, v21, v47, v45);
        MEMORY[0x23EE7ED20](&v57, "vertex");
        v30 = (v29 + 80);
        if (&v57 == (v29 + 80))
        {
          if ((v57 & 7) != 0)
          {
            atomic_fetch_add_explicit((v57 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }

        else
        {
          if ((*v30 & 7) != 0)
          {
            atomic_fetch_add_explicit((*v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          *v30 = v57;
        }

        sub_239E5B364((v29 + 16));
      }
    }

    v31 = *(a1 + 152);
    v55 = 0;
    v56 = &v55;
    sub_239E5AE38(v49, v31, &v56);
    v32 = *(a1 + 168);
    v33 = *(a1 + 152);
    *(a1 + 152) = *v49;
    *(a1 + 168) = *&v49[16];
    *v49 = v33;
    *&v49[16] = v32;
    v34 = *(a1 + 176);
    *(a1 + 176) = *&v49[24];
    *&v49[24] = v34;
    v36 = *(a1 + 8);
    for (n = *(a1 + 16); v36 != n; v36 += 96)
    {
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      sub_239E5A5D4(&v57, v36);
      if ((v62 & 7) != 0)
      {
        atomic_fetch_add_explicit((v62 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v61 & 7) != 0)
      {
        atomic_fetch_add_explicit((v61 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((BYTE8(v60) & 7) != 0)
      {
        atomic_fetch_add_explicit((*(&v60 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      sub_239E56C80(&v58);
      sub_239E5B240(&v57);
    }

    sub_239E56C80(v45);
    sub_239E56C80(v47);
    sub_239E56C80(v49);
  }

  *&v57 = &v50;
  sub_239E6DDBC(&v57);
  sub_239E56C80(v53);
}

void sub_239E58E84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, char a31)
{
  if (a2)
  {
    sub_239E797CC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_239E58F34(uint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t **a4, unint64_t a5, int *a6)
{
  v6 = a5;
  v10 = 0xCCCCCCCCCCCCCCCDLL * (a4[1] - *a4);
  v11 = **a4;
  v67 = v10;
  LODWORD(v73[0]) = 0;
  *&v75[0] = v73;
  sub_239E5AE38(a2, v10 * a5, v75);
  sub_239E56C3C(a1);
  v12 = a1[4];
  sub_239E56C3C(a1);
  v13 = a1[4] + 4 * *a1 - v12;
  if (v13 >= 1)
  {
    memset(v12, 255, v13);
  }

  sub_239E56C3C(a2);
  v14 = a2[4];
  sub_239E56C3C(a2);
  v15 = a2[4] + 4 * *a2 - v14;
  if (v15 >= 1)
  {
    memset(v14, 255, v15);
  }

  v76 = 0;
  memset(v75, 0, sizeof(v75));
  sub_239E5A31C(v75, v10);
  v74 = 0;
  memset(v73, 0, sizeof(v73));
  sub_239E5A31C(v73, v10);
  v16 = v10 + 1;
  v72 = 0;
  memset(v71, 0, sizeof(v71));
  sub_239E5A31C(v71, (v10 + 1));
  v17 = v11 << 32;
  *a6 = 0;
  if (v11 << 32)
  {
    v66 = a1;
    v18 = 0;
    v65 = v10 << 32;
    v19 = v11;
    v20 = v10 - 1;
    if (v67 <= 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = v67;
    }

    if (v11 <= 1)
    {
      v19 = 1;
    }

    v63 = v19;
    v59 = v6;
    v60 = v16;
    v58 = 4 * v16;
    do
    {
      if (v65)
      {
        v22 = 0;
        v23 = 4;
        do
        {
          v24 = *((*a4)[v23] + 4 * v18);
          sub_239E56C3C(v75);
          v76[v22++] = v24;
          v23 += 5;
        }

        while (v21 != v22);
      }

      sub_239E56C3C(v75);
      v25 = *v76;
      sub_239E56C3C(v66);
      v26 = v25;
      *(v66[4] + 4 * v18) = -1;
      if (v65)
      {
        v27 = 0;
        v28 = 4 * v67 * v25;
        do
        {
          sub_239E56C3C(a2);
          v29 = *(a2[4] + v28);
          sub_239E56C3C(v73);
          *(v74 + 4 * v27++) = v29;
          v28 += 4;
        }

        while (v21 != v27);
      }

      sub_239E56C3C(v73);
      v64 = *(v74 + 4 * v20);
      sub_239E56C3C(a2);
      v30 = v67 * v25;
      if (*(a2[4] + 4 * v30) == -1)
      {
        if (v65)
        {
          for (i = 0; i != v21; ++i)
          {
            if (v20 == i)
            {
              sub_239E56C3C(a2);
              v42 = -1;
              v43 = v20;
            }

            else
            {
              sub_239E56C3C(v75);
              v42 = v76[i + 1];
              sub_239E56C3C(a2);
              v43 = i;
            }

            *(a2[4] + 4 * v30 + 4 * v43) = v42;
          }
        }

        sub_239E56C3C(v66);
        *(v66[4] + 4 * v18) = v26;
        ++*a6;
      }

      else
      {
        v31 = 0;
        do
        {
          if (v20 == v31)
          {
            sub_239E56C3C(v66);
            *(v66[4] + 4 * v18) = v26;
            goto LABEL_52;
          }

          sub_239E56C3C(v75);
          v32 = v76[v31 + 1];
          sub_239E56C3C(v73);
          v33 = *(v74 + 4 * v31++);
        }

        while (v32 == v33);
        v34 = v64;
        if (v64 < 0)
        {
          v62 = -1;
        }

        else
        {
          while (1)
          {
            v62 = v34;
            if (v60)
            {
              v35 = 0;
              v36 = v58 * v62;
              v37 = v60;
              do
              {
                sub_239E56C3C(a3);
                v38 = *(a3[4] + v36);
                sub_239E56C3C(v71);
                *(v72 + v35) = v38;
                v36 += 4;
                v35 += 4;
                --v37;
              }

              while (v37);
            }

            sub_239E56C3C(v71);
            if (v67 < 2)
            {
              break;
            }

            v34 = *(v72 + 4 * v67);
            v39 = 1;
            while (1)
            {
              sub_239E56C3C(v75);
              v40 = v76[v39];
              sub_239E56C3C(v71);
              if (v40 != *(v72 + 4 * v39))
              {
                break;
              }

              if (v67 == ++v39)
              {
                goto LABEL_43;
              }
            }

            if (v34 < 0)
            {
              goto LABEL_44;
            }
          }

          v62 = v64;
LABEL_43:
          sub_239E56C3C(v66);
          *(v66[4] + 4 * v18) = v62 + v59;
        }

LABEL_44:
        sub_239E56C3C(v66);
        if (*(v66[4] + 4 * v18) == -1)
        {
          v44 = *a3;
          if (v64 < 0)
          {
            sub_239E56C3C(a2);
            v46 = a2[4] + 4 * v30 + 4 * v67;
            v45 = v60;
          }

          else
          {
            sub_239E56C3C(a3);
            v45 = v60;
            v46 = a3[4] + 4 * (v45 + v45 * v62);
          }

          v47 = v44 / v45;
          *(v46 - 4) = v44 / v45;
          sub_239E56C3C(v66);
          *(v66[4] + 4 * v18) = v47 + v59;
          if (v65)
          {
            v48 = 0;
            v49 = v21;
            do
            {
              sub_239E56C3C(v75);
              sub_239E5A274(a3, &v76[v48++]);
              --v49;
            }

            while (v49);
          }

          LODWORD(v69[0]) = -1;
          sub_239E5A158(a3, v69);
        }
      }

LABEL_52:
      ++v18;
    }

    while (v18 != v63);
    v17 = *a6;
    v6 = v59;
    a1 = v66;
  }

  if (v17 != v6)
  {
    v70 = 0;
    memset(v69, 0, sizeof(v69));
    sub_239E5A31C(v69, v6);
    if (v6)
    {
      v50 = 0;
      v51 = 0;
      v52 = 0;
      do
      {
        sub_239E56C3C(a2);
        if (*(a2[4] + v50) != -1)
        {
          sub_239E56C3C(v69);
          *(v70 + 4 * v51) = v52++;
        }

        ++v51;
        v50 += 4 * v67;
      }

      while (v6 != v51);
    }

    if (*a1)
    {
      v53 = 0;
      do
      {
        sub_239E56C3C(a1);
        v54 = *(a1[4] + 4 * v53);
        if (v54 >= v6)
        {
          sub_239E56C3C(a1);
          v56 = *(a1[4] + 4 * v53);
          v57 = *a6;
          sub_239E56C3C(a1);
          *(a1[4] + 4 * v53) = v56 - v6 + v57;
        }

        else
        {
          sub_239E56C3C(v69);
          v55 = *(v70 + 4 * v54);
          sub_239E56C3C(a1);
          *(a1[4] + 4 * v53) = v55;
        }

        ++v53;
      }

      while (*a1 > v53);
    }

    sub_239E56C80(v69);
  }

  sub_239E56C80(v71);
  sub_239E56C80(v73);
  sub_239E56C80(v75);
}

void sub_239E595B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  sub_239E56C80(va);
  sub_239E56C80(v26 - 176);
  sub_239E56C80(v26 - 128);
  _Unwind_Resume(a1);
}

uint64_t sub_239E59654(uint64_t a1)
{
  v2 = sub_239E6ADA8(*(a1 + 8));
  v3 = sub_239E6AD14(v2);
  sub_239E56C3C((a1 + 112));
  v4 = *(a1 + 144);
  sub_239E56C3C((a1 + 112));
  while (v4 != (*(a1 + 144) + 4 * *(a1 + 112)))
  {
    if (*v4 <= 2)
    {
      v10 = *a1 & 0xFFFFFFFFFFFFFFF8;
      if (v10)
      {
        v11 = (v10 + 16);
        if (*(v10 + 39) < 0)
        {
          v11 = *v11;
        }
      }

      else
      {
        v11 = "";
      }

      NSLog(&cfstr_WarningMeshHas_0.isa, v11);
      return 0;
    }

    ++v4;
  }

  sub_239E56C3C((a1 + 112));
  v5 = *(a1 + 144);
  sub_239E56C3C((a1 + 112));
  v6 = *(a1 + 144) + 4 * *(a1 + 112);
  if (v5 == v6)
  {
    v8 = 0;
    v7 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = *v5++;
      v7 += 3 * (v9 - 2);
      v8 += v9 - 2;
    }

    while (v5 != v6);
  }

  v56 = 0;
  memset(v55, 0, sizeof(v55));
  LODWORD(v50[0]) = 0;
  *&v54[0] = v50;
  sub_239E5AE38(v55, v7, v54);
  memset(v54, 0, 40);
  LODWORD(v49[0]) = 0;
  *&v50[0] = v49;
  sub_239E5AE38(v54, v8, v50);
  v52 = 0;
  v53 = 0;
  v12 = *(a1 + 112);
  v51 = 0;
  memset(v50, 0, sizeof(v50));
  sub_239E5A31C(v50, v12 + 1);
  if (v12)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      sub_239E56C3C((a1 + 112));
      v15 = *(*(a1 + 144) + 4 * v13);
      v16 = v52;
      sub_239E56C3C(v50);
      *(v51 + 4 * v13) = v16;
      sub_239E6B2A4(v3, v15, a1 + 152, v14, v55, &v53, v54, &v52, v17, v18, v19, v20);
      v14 += v15;
      ++v13;
    }

    while (v12 != v13);
  }

  v21 = v52;
  sub_239E56C3C(v50);
  *(v51 + 4 * v12) = v21;
  sub_239E58368(a1, v55);
  v22 = *(a1 + 128);
  v23 = *(a1 + 112);
  *(a1 + 112) = v54[0];
  *(a1 + 128) = *&v54[1];
  v54[0] = v23;
  *&v54[1] = v22;
  v24 = *(a1 + 136);
  *(a1 + 136) = *(&v54[1] + 8);
  *(&v54[1] + 8) = v24;
  memset(v49, 0, 40);
  sub_239E5A31C(v49, v55[0]);
  if (v55[0])
  {
    v25 = 0;
    do
    {
      sub_239E56C3C(v55);
      v26 = *(v56 + 4 * v25);
      sub_239E56C3C((a1 + 152));
      LODWORD(v26) = *(*(a1 + 184) + 4 * v26);
      sub_239E56C3C(v49);
      v27 = *&v49[2];
      *(*&v49[2] + 4 * v25++) = v26;
    }

    while (v55[0] > v25);
  }

  else
  {
    v27 = *&v49[2];
  }

  v28 = v49[1];
  *&v49[1] = *(a1 + 168);
  v29 = *(a1 + 152);
  *(a1 + 152) = v49[0];
  v49[0] = v29;
  v30 = *(a1 + 176);
  *(a1 + 176) = *(&v28 + 1);
  *(a1 + 184) = v27;
  *(a1 + 168) = v28;
  *(&v49[1] + 8) = v30;
  v31 = *(a1 + 440);
  for (i = *(a1 + 448); v31 != i; v31 += 7)
  {
    *v31 = 2;
    v48 = 0;
    v46 = 0u;
    v47 = 0u;
    v33 = (v31 + 1);
    if (v31[1])
    {
      sub_239E56C3C(v31 + 1);
      v34 = v31[5];
      sub_239E56C3C(v31 + 1);
      v35 = v31[5];
      v36 = (v35 + 4 * v31[1]);
      if (v34 != v36)
      {
        do
        {
          v37 = *v34;
          sub_239E56C3C(v50);
          for (j = *(v51 + 4 * v37); ; j = v45 + 1)
          {
            v45 = j;
            sub_239E56C3C(v50);
            if (j >= *(v51 + 4 * v37 + 4))
            {
              break;
            }

            sub_239E5A274(&v46, &v45);
          }

          ++v34;
        }

        while (v34 != v36);
        v35 = v31[5];
      }

      v39 = v48;
      v48 = v35;
      v40 = v31[3];
      v41 = *v33;
      v42 = v46;
      v31[3] = v47;
      *v33 = v42;
      v46 = v41;
      v43 = v31[4];
      v31[4] = *(&v47 + 1);
      v31[5] = v39;
      *&v47 = v40;
      *(&v47 + 1) = v43;
    }

    sub_239E56C80(&v46);
  }

  sub_239E56C80(v49);
  sub_239E56C80(v50);
  sub_239E56C80(v54);
  sub_239E56C80(v55);
  return 1;
}

void sub_239E59A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  sub_239E56C80(&a23);
  sub_239E56C80(&a31);
  sub_239E56C80(va);
  _Unwind_Resume(a1);
}

void sub_239E59AE8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_239E79870();
}

void sub_239E59B40(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 5);
  v55 = 0;
  *&v52 = &v55;
  sub_239E5AE38(a1, v10, &v52);
  sub_239E5ADCC(a5, a4);
  v11 = *a2;
  if (a2[1] != *a2)
  {
    v12 = 0;
    v50 = -1;
    v51 = a5;
    do
    {
      v13 = v11 + 96 * v12;
      MEMORY[0x23EE7ED20](&v52, "vertex");
      v14 = *(v13 + 80);
      v15 = v52;
      if ((v52 & 7) != 0)
      {
        atomic_fetch_add_explicit((v52 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v16 = v15 ^ v14;
      v17 = *a2;
      if (v16 > 7)
      {
        v23 = v17 + 96 * v12;
        MEMORY[0x23EE7ED20](&v52, "uniform");
        v24 = *(v23 + 80);
        v25 = v52;
        if ((v52 & 7) != 0)
        {
          atomic_fetch_add_explicit((v52 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v26 = v25 ^ v24;
        v27 = *a2;
        if (v26 > 7)
        {
          v34 = v27 + 96 * v12;
          MEMORY[0x23EE7ED20](&v52, "constant");
          v35 = *(v34 + 80);
          v36 = v52;
          if ((v52 & 7) != 0)
          {
            atomic_fetch_add_explicit((v52 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if ((v36 ^ v35) >= 8)
          {
            v37 = *a2 + 96 * v12;
            MEMORY[0x23EE7ED20](&v52, "faceVarying");
            v38 = *(v37 + 80);
            v39 = v52;
            if ((v52 & 7) != 0)
            {
              atomic_fetch_add_explicit((v52 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v39 ^ v38) <= 7)
            {
              if (*(*a2 + 96 * v12 + 16))
              {
                v40 = -858993459 * ((a5[1] - *a5) >> 3);
                sub_239E56C3C(a1);
                *(a1[4] + 4 * v12) = v40;
                sub_239E5ADCC(a5, *a2 + 96 * v12 + 16);
              }

              else
              {
                v54 = 0;
                v52 = 0u;
                v53 = 0u;
                sub_239E5A31C(&v52, *a4);
                if (*a4)
                {
                  v47 = 0;
                  do
                  {
                    sub_239E56C3C(&v52);
                    *(v54 + 4 * v47) = v47;
                    ++v47;
                  }

                  while (*a4 > v47);
                }

                v49 = *a5;
                v48 = a5[1];
                sub_239E56C3C(a1);
                *(a1[4] + 4 * v12) = -858993459 * ((v48 - v49) >> 3);
                sub_239E5ADCC(a5, *a2 + 96 * v12 + 16);
                sub_239E56C80(&v52);
              }
            }
          }
        }

        else if (*(v27 + 96 * v12 + 16))
        {
          v54 = 0;
          v52 = 0u;
          v53 = 0u;
          sub_239E5A31C(&v52, *a4);
          if (*a3)
          {
            v28 = 0;
            LODWORD(i) = 0;
            do
            {
              v30 = 0;
              for (i = i; ; ++i)
              {
                sub_239E56C3C(a3);
                if (v30 >= *(a3[4] + 4 * v28))
                {
                  break;
                }

                v31 = *a2 + 96 * v12;
                sub_239E56C3C((v31 + 16));
                LODWORD(v31) = *(*(v31 + 48) + 4 * v28);
                sub_239E56C3C(&v52);
                *(v54 + 4 * i) = v31;
                ++v30;
              }

              ++v28;
            }

            while (*a3 > v28);
          }

          a5 = v51;
          v33 = *v51;
          v32 = v51[1];
          sub_239E56C3C(a1);
          *(a1[4] + 4 * v12) = -858993459 * ((v32 - v33) >> 3);
          sub_239E5ADCC(v51, &v52);
          sub_239E56C80(&v52);
        }

        else
        {
          v41 = v50;
          if (v50 == -1)
          {
            v54 = 0;
            v52 = 0u;
            v53 = 0u;
            sub_239E5A31C(&v52, *a4);
            if (*a3)
            {
              v42 = 0;
              LODWORD(j) = 0;
              do
              {
                v44 = 0;
                for (j = j; ; ++j)
                {
                  sub_239E56C3C(a3);
                  if (v44 >= *(a3[4] + 4 * v42))
                  {
                    break;
                  }

                  sub_239E56C3C(&v52);
                  *(v54 + 4 * j) = v42;
                  ++v44;
                }

                ++v42;
              }

              while (*a3 > v42);
            }

            sub_239E5ADCC(v51, &v52);
            v46 = *v51;
            v45 = v51[1];
            sub_239E56C80(&v52);
            v41 = -1 - 858993459 * ((v45 - v46) >> 3);
          }

          sub_239E56C3C(a1);
          v50 = v41;
          *(a1[4] + 4 * v12) = v41;
          a5 = v51;
        }
      }

      else if (*(v17 + 96 * v12 + 16))
      {
        v54 = 0;
        v52 = 0u;
        v53 = 0u;
        sub_239E5A31C(&v52, *a4);
        if (*a4)
        {
          v18 = 0;
          do
          {
            sub_239E56C3C(a4);
            v19 = *(a4[4] + 4 * v18);
            v20 = *a2 + 96 * v12;
            sub_239E56C3C((v20 + 16));
            LODWORD(v20) = *(*(v20 + 48) + 4 * v19);
            sub_239E56C3C(&v52);
            *(v54 + 4 * v18) = v20;
            v22 = *v51;
            v21 = v51[1];
            sub_239E56C3C(a1);
            *(a1[4] + 4 * v12) = -858993459 * ((v21 - v22) >> 3);
            ++v18;
          }

          while (*a4 > v18);
        }

        a5 = v51;
        sub_239E5ADCC(v51, &v52);
        sub_239E56C80(&v52);
      }

      else
      {
        sub_239E56C3C(a1);
        *(a1[4] + 4 * v12) = 0;
      }

      ++v12;
      v11 = *a2;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 5) > v12);
  }
}

void sub_239E5A070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_239E56C80(va);
  _Unwind_Resume(a1);
}

void sub_239E5A0DC()
{
  sub_239E56B44();
  do
  {
    v6 = v5;
    v5 *= 2;
  }

  while (v6 < v4);
  v7 = sub_239E56CEC(v0, v6);
  v8 = v7;
  if (v1)
  {
    v9 = 4 * v1;
    v10 = v7;
    do
    {
      v11 = *v3++;
      *v10++ = v11;
      v9 -= 4;
    }

    while (v9);
  }

  *(v7 + v1) = *v2;
  sub_239E56C80(v0);
  *(v0 + 32) = v8;
}

void sub_239E5A158(uint64_t *a1, _DWORD *a2)
{
  if (!*(a1 + 2))
  {
    v4 = *a1;
    if (!a1[3])
    {
      v5 = a1[4];
      if (!v5)
      {
        goto LABEL_10;
      }

      v6 = atomic_load((v5 - 16));
      if (v6 != 1)
      {
        goto LABEL_14;
      }

      v5 = a1[4];
      if (v5)
      {
        if (a1[3])
        {
          v7 = a1;
        }

        else
        {
          v7 = (v5 - 8);
        }

        v8 = *v7;
      }

      else
      {
LABEL_10:
        v8 = 0;
      }

      if (v4 != v8)
      {
        *(v5 + 4 * v4) = *a2;
LABEL_13:
        ++*a1;
        return;
      }
    }

LABEL_14:
    sub_239E5A0DC();
    goto LABEL_13;
  }

  sub_239F754D0(a1);
}

void sub_239E5A200()
{
  sub_239E56B44();
  do
  {
    v5 = v4;
    v4 *= 2;
  }

  while (v5 < v3);
  v6 = sub_239E56CEC(v0, v5);
  if (v1)
  {
    do
    {
      sub_239E5B1DC();
    }

    while (!v7);
  }

  *(v6 + v1) = *v2;
  sub_239E56C80(v0);
  *(v0 + 32) = v6;
}

void sub_239E5A274(uint64_t *a1, _DWORD *a2)
{
  if (!*(a1 + 2))
  {
    v4 = *a1;
    if (!a1[3])
    {
      v5 = a1[4];
      if (!v5)
      {
        goto LABEL_10;
      }

      v6 = atomic_load((v5 - 16));
      if (v6 != 1)
      {
        goto LABEL_14;
      }

      v5 = a1[4];
      if (v5)
      {
        if (a1[3])
        {
          v7 = a1;
        }

        else
        {
          v7 = (v5 - 8);
        }

        v8 = *v7;
      }

      else
      {
LABEL_10:
        v8 = 0;
      }

      if (v4 != v8)
      {
        *(v5 + 4 * v4) = *a2;
LABEL_13:
        ++*a1;
        return;
      }
    }

LABEL_14:
    sub_239E5A200();
    goto LABEL_13;
  }

  sub_239F73BE0(a1);
}

uint64_t sub_239E5A31C(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v5 = 0;
  sub_239E5B364(a1);
  v6 = &v5;
  sub_239E5AE38(a1, a2, &v6);
  return a1;
}

void sub_239E5A390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      sub_239E56C80(v4);
      v4 += 40;
    }

    while (v4 != a3);
  }
}

uint64_t sub_239E5A3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v10 = 0;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v5 = *(v4 + 16);
      *a4 = *v4;
      *(a4 + 16) = v5;
      v6 = *(v4 + 32);
      *(a4 + 32) = v6;
      if (v6)
      {
        v7 = (v6 - 16);
        if (*(a4 + 24))
        {
          v7 = *(a4 + 24);
        }

        atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
        a4 = v12;
      }

      v4 += 40;
      a4 += 40;
      v12 = a4;
    }

    while (v4 != a3);
  }

  LOBYTE(v10) = 1;
  sub_239E5A390(a1, a2, a3);
  return sub_239E5B3B4(v9);
}

uint64_t sub_239E5A488(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_239E797B4();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    sub_239E59AE8(a1, v6);
  }

  v7 = 40 * v2;
  v17 = 0;
  v18 = v7;
  *(&v19 + 1) = 0;
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  v9 = *(a2 + 32);
  *(v7 + 32) = v9;
  if (v9)
  {
    v10 = (v9 - 16);
    if (*(40 * v2 + 0x18))
    {
      v10 = *(40 * v2 + 0x18);
    }

    atomic_fetch_add_explicit(v10, 1uLL, memory_order_relaxed);
  }

  *&v19 = v7 + 40;
  v11 = a1[1];
  v12 = v7 + *a1 - v11;
  sub_239E5A3D4(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_239E5AD94(&v17);
  return v16;
}

void sub_239E5A5C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_239E5AD94(va);
  _Unwind_Resume(a1);
}

uint64_t sub_239E5A5D4(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  *(a1 + 8) = 0;
  if (*(a2 + 8))
  {
    v13 = 0;
    v14 = 0;
    sub_239E5B3EC(&v13, a1);
    v4 = *(a2 + 8);
    v5 = ~*(a2 + 8);
    *(a1 + 8) = v4;
    if ((v5 & 3) != 0)
    {
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 24))(a2, a1);
    }

    else
    {
      *a1 = *a2;
    }

    if (v14)
    {
      (*(v14 + 32))(&v13);
    }
  }

  v6 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v6;
  v7 = *(a2 + 48);
  *(a1 + 48) = v7;
  if (v7)
  {
    v8 = (v7 - 16);
    if (*(a1 + 40))
    {
      v8 = *(a1 + 40);
    }

    atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
  }

  v9 = *(a2 + 56);
  *(a1 + 56) = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 56) &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = *(a2 + 64);
  *(a1 + 64) = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 64) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 72) = *(a2 + 72);
  v11 = *(a2 + 80);
  *(a1 + 80) = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 80) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 88) = *(a2 + 88);
  return a1;
}

void sub_239E5A754(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(a11 + 32))(&a10, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_239E5A790(void *a1, unsigned __int8 *a2, void *a3, const pxrInternal__aapl__pxrReserved__::UsdPrim *a4, uint64_t a5, void *a6, double a7)
{
  v12 = *MEMORY[0x277D85DE8];
  a1;
  v10 = a3;
  a6;
  memset(v11, 0, sizeof(v11));
  sub_239E5FE24(v10, a4, v11);
}

void sub_239E5ACAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if ((a36 & 7) != 0)
  {
    atomic_fetch_add_explicit((a36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  MEMORY[0x23EE7E550](&a37, a2, a3, a4, a5, a6, a7, a8);
  sub_239EF2A80(&a41);

  _Unwind_Resume(a1);
}

uint64_t sub_239E5AD94(uint64_t a1)
{
  sub_239E5B1FC(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_239E5ADCC(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_239E5A488(a1, a2);
  }

  else
  {
    v4 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 16) = v4;
    v5 = *(a2 + 32);
    *(v3 + 32) = v5;
    if (v5)
    {
      v6 = (v5 - 16);
      if (*(v3 + 24))
      {
        v6 = *(v3 + 24);
      }

      atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
    }

    result = v3 + 40;
  }

  a1[1] = result;
  return result;
}

void sub_239E5AE38(unint64_t *a1, unint64_t a2, int **a3)
{
  v3 = *a1;
  if (*a1 == a2)
  {
    return;
  }

  if (a2)
  {
    v7 = a1[4];
    if (v7)
    {
      if (!a1[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (v3 >= a2)
          {
            v13 = a1[4];
          }

          else
          {
            v9 = a1[4];
            if (*(v9 - 8) < a2)
            {
              v10 = sub_239E56CEC(a1, a2);
              v7 = v10;
              if (v3)
              {
                v11 = 0;
                do
                {
                  *(v10 + v11) = *(v9 + v11);
                  v11 += 4;
                }

                while (4 * v3 != v11);
              }
            }

            v12 = 0;
            v13 = v7;
            v14 = **a3;
            v15 = (4 * a2 - 4 * v3 - 4) >> 2;
            v16 = vdupq_n_s64(v15);
            v17 = (v15 + 4) & 0x7FFFFFFFFFFFFFFCLL;
            v18 = v7 + v3 + 2;
            do
            {
              v19 = vdupq_n_s64(v12);
              v20 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(v19, xmmword_239F9AD40)));
              if (vuzp1_s16(v20, *v16.i8).u8[0])
              {
                *(v18 - 2) = v14;
              }

              if (vuzp1_s16(v20, *&v16).i8[2])
              {
                *(v18 - 1) = v14;
              }

              if (vuzp1_s16(*&v16, vmovn_s64(vcgeq_u64(v16, vorrq_s8(v19, xmmword_239F9AD30)))).i32[1])
              {
                *v18 = v14;
                v18[1] = v14;
              }

              v12 += 4;
              v18 += 4;
            }

            while (v17 != v12);
          }

LABEL_51:
          if (v13 != a1[4])
          {
            sub_239E56C80(a1);
            a1[4] = v13;
          }

          *a1 = a2;
          return;
        }

        v7 = a1[4];
      }

      if (v3 >= a2)
      {
        v29 = a2;
      }

      else
      {
        v29 = *a1;
      }

      v30 = sub_239E56CEC(a1, a2);
      v13 = v30;
      if (v3)
      {
        v31 = 4 * v29;
        v32 = v30;
        do
        {
          v33 = *v7;
          v7 = (v7 + 4);
          *v32 = v33;
          v32 = (v32 + 4);
          v31 -= 4;
        }

        while (v31);
      }

      if (v3 < a2)
      {
        v34 = 0;
        v35 = **a3;
        v36 = (4 * a2 - 4 * v3 - 4) >> 2;
        v37 = vdupq_n_s64(v36);
        v38 = (v36 + 4) & 0x7FFFFFFFFFFFFFFCLL;
        v39 = v30 + v3 + 2;
        do
        {
          v40 = vdupq_n_s64(v34);
          v41 = vmovn_s64(vcgeq_u64(v37, vorrq_s8(v40, xmmword_239F9AD40)));
          if (vuzp1_s16(v41, 2).u8[0])
          {
            *(v39 - 2) = v35;
          }

          if (vuzp1_s16(v41, 2).i8[2])
          {
            *(v39 - 1) = v35;
          }

          if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v37, vorrq_s8(v40, xmmword_239F9AD30)))).i32[1])
          {
            *v39 = v35;
            v39[1] = v35;
          }

          v34 += 4;
          v39 += 4;
        }

        while (v38 != v34);
      }

      goto LABEL_51;
    }

    if (4 * a2 / a2 == 4)
    {
      v13 = sub_239E56CEC(a1, a2);
      v21 = 0;
      v22 = **a3;
      v23 = (4 * a2 - 4) >> 2;
      v24 = vdupq_n_s64(v23);
      v25 = (v23 + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v26 = v13 + 1;
      do
      {
        v27 = vdupq_n_s64(v21);
        v28 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(v27, xmmword_239F9AD40)));
        if (vuzp1_s16(v28, *v24.i8).u8[0])
        {
          *(v26 - 2) = v22;
        }

        if (vuzp1_s16(v28, *&v24).i8[2])
        {
          *(v26 - 1) = v22;
        }

        if (vuzp1_s16(*&v24, vmovn_s64(vcgeq_u64(v24, vorrq_s8(v27, xmmword_239F9AD30)))).i32[1])
        {
          *v26 = v22;
          v26[1] = v22;
        }

        v21 += 4;
        v26 += 4;
      }

      while (v25 != v21);
      goto LABEL_51;
    }
  }

  sub_239E5B364(a1);
}

uint64_t sub_239E5B1C0(uint64_t a1)
{

  return sub_239E5B574(a1);
}

void sub_239E5B1FC(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    *(a1 + 16) = v4 - 40;
    sub_239E56C80(v4 - 40);
  }
}

uint64_t sub_239E5B240(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = (*(a1 + 8) & 3) == 3;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    (*((v2 & 0xFFFFFFFFFFFFFFF8) + 32))(a1);
  }

  *(a1 + 8) = 0;
  return a1;
}

BOOL sub_239E5B290(uint64_t a1)
{
  v3 = *(a1 + 8);
  if (*(a1 + 16) == v3)
  {
    return 0;
  }

  v11[9] = v1;
  v11[10] = v2;
  v5 = 0;
  v6 = 1;
  do
  {
    v7 = v3 + 96 * v5;
    MEMORY[0x23EE7ED20](v11, "normals");
    v8 = v11[0] ^ *(v7 + 56);
    result = v8 < 8;
    if ((v11[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((v11[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v8 <= 7)
    {
      break;
    }

    v5 = v6;
    v3 = *(a1 + 8);
  }

  while (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - v3) >> 5) > v6++);
  return result;
}

void sub_239E5B364(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    if (a1[3] || (v3 = atomic_load((v1 - 16)), v3 != 1))
    {
      sub_239E56C80(a1);
    }

    *a1 = 0;
  }
}

uint64_t sub_239E5B3B4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_239EC8FE8(a1);
  }

  return a1;
}

uint64_t sub_239E5B3EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    v4 = (~v3 & 3) == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    *(a1 + 8) = 0;
  }

  else
  {
    v5 = v3 & 0xFFFFFFFFFFFFFFF8;
    *(a1 + 8) = v5;
    if (v5)
    {
      (*(v5 + 40))(a2, a1);
    }
  }

  return a1;
}

uint64_t sub_239E5B450(uint64_t a1, _DWORD *a2)
{
  sub_239E5B49C(&v4, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return a1;
}

_DWORD *sub_239E5B49C(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL())
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetPtr();
  }

  return a1;
}

uint64_t sub_239E5B4DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  sub_239E57FC0(&v7, a1 + 4);
  sub_239E5B49C(&v8, a1 + 5);
  v5 = *(a1 + 12);
  *a2 = v4;
  *(a2 + 8) = a1;
  sub_239E57FC0((a2 + 16), &v7);
  sub_239E5B49C((a2 + 20), &v8);
  *(a2 + 24) = v5;
  *(a2 + 28) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return sub_239E5B574(&v7);
}

uint64_t sub_239E5B574(uint64_t a1)
{
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL())
  {
    Ptr = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr();
    if ((atomic_fetch_add(Ptr + 2, 0xFFFFFFFF) & 0x7FFFFFFF) == 1)
    {
      sub_239E85FE8(Ptr);
    }
  }

  return a1;
}

void sub_239E5B658(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_239F174FC(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_239E5B674(uint64_t a1, const void **a2)
{
  v3 = 0;
  result = *sub_239E5B718(a1, &v3, a2);
  if (!result)
  {
    sub_239E5B5CC();
  }

  return result;
}

uint64_t *sub_239E5B718(uint64_t a1, const void ***a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!sub_239E5BA74(a1, a3, v4 + 4))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!sub_239E5BA74(a1, v8 + 4, a3))
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

uint64_t *sub_239E5B7B4(uint64_t ***a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_239E5B80C(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *sub_239E5B80C(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (*(v2 + 24))
      {
        break;
      }

      v3 = *(v2 + 16);
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = *(v2 + 8);
            v12 = *v11;
            *(v2 + 8) = *v11;
            v13 = v2;
            if (v12)
            {
              *(v12 + 16) = v2;
              v3 = *(v2 + 16);
              v13 = *v3;
            }

            *(v11 + 16) = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            *(v2 + 16) = v11;
            v3 = *(v11 + 16);
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = *(v2 + 16);
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            *(v2 + 16) = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

char *sub_239E5B9A8(char *__dst, __int128 **a2)
{
  v3 = *a2;
  if (*(*a2 + 23) < 0)
  {
    sub_239E5BAE0(__dst, *v3, *(v3 + 1));
  }

  else
  {
    v4 = *v3;
    *(__dst + 2) = *(v3 + 2);
    *__dst = v4;
  }

  *(__dst + 6) = 1;
  *(__dst + 4) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  *(__dst + 6) = 0;
  return __dst;
}

void *sub_239E5BA20(void *result, void *a2)
{
  if (a2 != result)
  {
    if ((*a2 & 7) != 0 && (atomic_fetch_add_explicit((*a2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *a2 &= 0xFFFFFFFFFFFFFFF8;
    }

    if ((*result & 7) != 0)
    {
      atomic_fetch_add_explicit((*result & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *result = *a2;
  }

  return result;
}

BOOL sub_239E5BA74(uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a3 + 23);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v3 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = a3[1];
  }

  if (v3 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  v10 = memcmp(v6, v8, v9);
  if (v10)
  {
    return v10 < 0;
  }

  else
  {
    return v5 < v7;
  }
}

void *sub_239E5BAE0(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_239E95A5C();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

void *sub_239E5BB84(uint64_t **a1, uint64_t *a2, const void **a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  result = *sub_239E5BD88(a1, a2, &v6, &v5, a3);
  if (!result)
  {
    sub_239E5BC9C();
  }

  return result;
}

uint64_t **sub_239E5BC14(uint64_t **result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_239E5BB84(v5, v5 + 1, v4 + 4, (v4 + 4));
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

void sub_239E5BD14(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_239F174FC(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_239E5BD30(uint64_t a1, const void ***a2)
{
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *a1 = a1 + 8;
  sub_239E5BC14(a1, *a2, a2 + 1);
  return a1;
}

const void **sub_239E5BD88(uint64_t **a1, uint64_t *a2, const void ***a3, uint64_t *a4, const void **a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 != a2 && !sub_239E5BA74(a1, a5, a2 + 4))
  {
    if (!sub_239E5BA74(a1, a2 + 4, a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = a2 + 1;
    v13 = a2[1];
    if (v13)
    {
      v14 = a2[1];
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!sub_239E5BA74(a1, a5, v15 + 4))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = v11[1];
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = v16[2];
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (sub_239E5BA74(a1, v12 + 4, a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return sub_239E5B718(a1, a3, a5);
}

void *sub_239E5BF2C(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_239E5BAE0(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  *(__dst + 6) = *(a2 + 6);
  v5 = *(a2 + 4);
  __dst[4] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 48), 1uLL, memory_order_relaxed);
  }

  sub_239E57FC0(__dst + 10, a2 + 10);
  sub_239E5B49C(__dst + 11, a2 + 11);
  v6 = *(a2 + 6);
  __dst[6] = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    __dst[6] &= 0xFFFFFFFFFFFFFFF8;
  }

  return __dst;
}

void sub_239E5BFE0(void *a1, uint64_t a2, void *a3, uint64_t **a4, uint64_t a5)
{
  v328 = a5;
  v330 = a4;
  v329 = a1;
  v9 = *a3;
  v8 = (a3 + 1);
  v7 = v9;
  if (v9 != v8)
  {
    v327 = (v330 + 1);
    v10 = 0uLL;
    do
    {
      v359 = 0;
      v357 = v10;
      v358 = v10;
      v356 = v10;
      sub_239E5BF2C(&v356, v7 + 2);
      v355 = 0;
      sub_239E58260(&v357 + 8, &v355);
      __dst = 0uLL;
      v354 = 0;
      String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(&v355);
      if (*(String + 23) < 0)
      {
        sub_239E5BAE0(&__dst, *String, *(String + 8));
      }

      else
      {
        v12 = *String;
        v354 = *(String + 16);
        __dst = v12;
      }

      v351 = 0uLL;
      v352 = 0;
      sub_239E5DA3C(&v357 + 8, obj);
      sub_239E58260(obj, &v344);
      v13 = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(&v344);
      if (*(v13 + 23) < 0)
      {
        sub_239E5BAE0(&v351, *v13, *(v13 + 8));
      }

      else
      {
        v14 = *v13;
        v352 = *(v13 + 16);
        v351 = v14;
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      sub_239E5B574(&v344);
      if ((v333 & 7) != 0)
      {
        atomic_fetch_add_explicit((v333 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      sub_239E5B574(&obj[2]);
      if (obj[1])
      {
        sub_239E5E560(obj[1]);
      }

      *&v344 = 0;
      IsPrimPath = pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimPath(&v355);
      if (IsPrimPath)
      {
        v16 = atomic_load(MEMORY[0x277D86550]);
        if (v16)
        {
          pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(obj, (&v357 + 8), (v16 + 1264));
          pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::TfToken>();
        }

        sub_239E864C4(MEMORY[0x277D86550]);
      }

      pxrInternal__aapl__pxrReserved__::UsdGeomScope::_GetStaticTfType(IsPrimPath);
      pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
      IsA = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
      if (IsA)
      {
        v18 = sub_239E5DFB4(&v357 + 2);
        if ((*v18 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          EmptyString = (*v18 & 0xFFFFFFFFFFFFFFF8) + 16;
        }

        else
        {
          EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v18);
        }

        v67 = *(EmptyString + 23);
        if (v67 < 0)
        {
          if (*(EmptyString + 8) != 9)
          {
            goto LABEL_32;
          }

          EmptyString = *EmptyString;
        }

        else if (v67 != 9)
        {
          goto LABEL_32;
        }

        v68 = *EmptyString == 0x6C6169726574614DLL && *(EmptyString + 8) == 115;
        if (!v68)
        {
LABEL_32:
          v22 = objc_alloc_init(MDLObject);
          objc_msgSend_setHidden_(v22, v69, 0, v70, v75, v76, v77, v78, v71, v72, v73, v74);
          v56 = sub_239E5DFF0(&v357 + 2);
          objc_msgSend_setName_(v22, v79, v56, v80, v85, v86, v87, v88, v81, v82, v83, v84);
LABEL_33:

LABEL_34:
          if (v22)
          {
            v89 = v22;
            obj[0] = v89;
            if (SHIBYTE(v352) < 0)
            {
              sub_239E5BAE0(&obj[1], v351, *(&v351 + 1));
            }

            else
            {
              *&obj[1] = v351;
              v333 = v352;
            }

            if (SHIBYTE(v354) < 0)
            {
              sub_239E5BAE0(&v334, __dst, *(&__dst + 1));
            }

            else
            {
              v334 = __dst;
              *&v335 = v354;
            }

            *&v344 = &__dst;
            v90 = sub_239E5E1E4(v330, &__dst, &unk_239F9BFF0, &v344, &v340);
            objc_storeStrong(v90 + 7, obj[0]);
            if (*(v90 + 87) < 0)
            {
              operator delete(v90[8]);
            }

            v90[10] = v333;
            *(v90 + 4) = *&obj[1];
            HIBYTE(v333) = 0;
            LOBYTE(obj[1]) = 0;
            if (*(v90 + 111) < 0)
            {
              operator delete(v90[11]);
              v91 = SHIBYTE(v333);
              *(v90 + 11) = v334;
              v90[13] = v335;
              BYTE7(v335) = 0;
              LOBYTE(v334) = 0;
              if (v91 < 0)
              {
                operator delete(obj[1]);
              }
            }

            else
            {
              *(v90 + 11) = v334;
              v90[13] = v335;
              BYTE7(v335) = 0;
              LOBYTE(v334) = 0;
            }

            v92 = obj[0];
            obj[0] = 0;
          }
        }
      }

      else
      {
        pxrInternal__aapl__pxrReserved__::UsdGeomXform::_GetStaticTfType(IsA);
        pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
        v20 = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
        if ((v20 & 1) != 0 || (pxrInternal__aapl__pxrReserved__::UsdSkelRoot::_GetStaticTfType(v20), pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(), v21 = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA(), v21))
        {
          v22 = objc_alloc_init(MDLObject);
          objc_msgSend_setHidden_(v22, v23, 0, v24, v29, v30, v31, v32, v25, v26, v27, v28);
          v33 = sub_239E5DFF0(&v357 + 2);
          objc_msgSend_setName_(v22, v34, v33, v35, v40, v41, v42, v43, v36, v37, v38, v39);

          objc_msgSend_frameInterval(v329, v44, v45, v46, v51, v52, v53, v54, v47, v48, v49, v50);
          v56 = sub_239E5E718((&v357 + 8), *(a2 + 35), v55, *(a2 + 64));
          objc_msgSend_setTransform_(v22, v57, v56, v58, v63, v64, v65, v66, v59, v60, v61, v62);
          goto LABEL_33;
        }

        pxrInternal__aapl__pxrReserved__::UsdShadeMaterial::_GetStaticTfType(v21);
        pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
        v95 = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
        if ((v95 & 1) == 0)
        {
          pxrInternal__aapl__pxrReserved__::UsdShadeShader::_GetStaticTfType(v95);
          pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
          v96 = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
          if ((v96 & 1) == 0)
          {
            pxrInternal__aapl__pxrReserved__::UsdGeomCamera::_GetStaticTfType(v96);
            pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
            v97 = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
            if (v97)
            {
              v346 = DWORD2(v357);
              v347 = v358;
              if (v358)
              {
                atomic_fetch_add_explicit((v358 + 48), 1uLL, memory_order_relaxed);
              }

              sub_239E57FC0(&v348, &v358 + 2);
              sub_239E5B49C(&v349, &v358 + 3);
              v350 = v359;
              if ((v359 & 7) != 0 && (atomic_fetch_add_explicit((v359 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
              {
                v350 &= 0xFFFFFFFFFFFFFFF8;
              }

              v109 = *(a2 + 64);
              objc_msgSend_frameInterval(v329, v98, v99, v100, v105, v106, v107, v108, v101, v102, v103, v104, v327);
              sub_239F72BC0(&v346, v109);
            }

            pxrInternal__aapl__pxrReserved__::UsdGeomMesh::_GetStaticTfType(v97);
            pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
            v110 = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
            if (v110)
            {
              v122 = objc_msgSend_bufferAllocator(v329, v111, v112, v113, v118, v119, v120, v121, v114, v115, v116, v117);
              v134 = objc_msgSend_resolver(v329, v123, v124, v125, v130, v131, v132, v133, v126, v127, v128, v129);
              objc_msgSend_frameInterval(v329, v135, v136, v137, v142, v143, v144, v145, v138, v139, v140, v141);
              v147 = v146.n128_f64[0];
              v158 = objc_msgSend_vertexDescriptor(v329, v148, v149, v150, v146, v155, v156, v157, v151, v152, v153, v154);
              sub_239E5A790(v122, a2, v134, (&v357 + 8), v328, v158, v147);
            }

            pxrInternal__aapl__pxrReserved__::UsdSkelAnimation::_GetStaticTfType(v110);
            pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
            v159 = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
            if (v159)
            {
              memset(obj, 0, sizeof(obj));
              sub_239E58260(&v357 + 8, &v344);
              v160 = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(&v344);
              if (*(v160 + 23) < 0)
              {
                sub_239E5BAE0(obj, *v160, *(v160 + 8));
              }

              else
              {
                v161 = *v160;
                obj[2] = *(v160 + 16);
                *obj = v161;
              }

              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
              sub_239E5B574(&v344);
              if (v327 == sub_239E69484(v330, obj))
              {
                objc_msgSend_frameInterval(v329, v194, v195, v196, v201, v202, v203, v204, v197, v198, v199, v200);
                v22 = sub_239EEAD04((&v357 + 8), *(a2 + 35), v205, *(a2 + 64));
              }

              else
              {
                v22 = 0;
              }

              if ((SHIBYTE(obj[2]) & 0x80000000) == 0)
              {
                goto LABEL_34;
              }

              v206 = obj[0];
LABEL_131:
              operator delete(v206);
              goto LABEL_34;
            }

            pxrInternal__aapl__pxrReserved__::UsdSkelSkeleton::_GetStaticTfType(v159);
            pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
            v162 = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
            if (v162)
            {
              v342[0] = 0;
              v342[1] = 0;
              *&v343 = 0;
              sub_239E58260(&v357 + 8, obj);
              v163 = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(obj);
              if (*(v163 + 23) < 0)
              {
                sub_239E5BAE0(v342, *v163, *(v163 + 8));
              }

              else
              {
                v164 = *v163;
                *&v343 = *(v163 + 16);
                *v342 = v164;
              }

              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
              sub_239E5B574(obj);
              v207 = sub_239E69484(v330, v342);
              if (v327 == v207)
              {
                v22 = sub_239EEB4F0((&v357 + 8), *(a2 + 64));
                if (v22)
                {
                  objc_msgSend_frameInterval(v329, v208, v209, v210, v215, v216, v217, v218, v211, v212, v213, v214);
                  v220 = sub_239E5E718((&v357 + 8), *(a2 + 35), v219, *(a2 + 64));
                  objc_msgSend_setTransform_(v22, v221, v220, v222, v227, v228, v229, v230, v223, v224, v225, v226);

                  v231 = v22;
                }
              }

              else
              {
                v22 = *(v207 + 56);
              }

              v344 = 0u;
              v345 = 0u;
              pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
              *(&v345 + 1) = 0;
              *&v344 = MEMORY[0x277D86780] + 16;
              v340 = 0u;
              v341 = 0u;
              pxrInternal__aapl__pxrReserved__::UsdSkelBindingAPI::GetInheritedAnimationSource(&v340, &v344);
              if (sub_239E5E5B4(&v340))
              {
                __p[0] = 0;
                __p[1] = 0;
                *&v339 = 0;
                sub_239E58260(&v340, obj);
                v232 = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(obj);
                if (*(v232 + 23) < 0)
                {
                  sub_239E5BAE0(__p, *v232, *(v232 + 8));
                }

                else
                {
                  v233 = *v232;
                  *&v339 = *(v232 + 16);
                  *__p = v233;
                }

                pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                sub_239E5B574(obj);
                v234 = sub_239E69484(v330, __p);
                if (v327 == v234)
                {
                  objc_msgSend_frameInterval(v329, v235, v236, v237, v242, v243, v244, v245, v238, v239, v240, v241);
                  v251 = sub_239EEAD04(&v340, *(a2 + 35), v250, *(a2 + 64));
                  v249 = v251;
                  if (v251)
                  {
                    v252 = v251;
                    obj[0] = v252;
                    sub_239E552A0(&obj[1], "");
                    if (SBYTE7(v339) < 0)
                    {
                      sub_239E5BAE0(&v334, __p[0], __p[1]);
                    }

                    else
                    {
                      v334 = *__p;
                      *&v335 = v339;
                    }

                    v336[0] = __p;
                    v301 = sub_239E5E1E4(v330, __p, &unk_239F9BFF0, v336, &v360);
                    sub_239F17314((v301 + 7), obj);
                    sub_239F173A0(obj);
                    v302 = v252;
                  }
                }

                else
                {
                  v249 = *(v234 + 56);
                }

                sub_239EEB9F8(&v357 + 8, &v344, v22, 0, v249, *(a2 + 64), v246, v247, v248, v327, v328, v329, v330, v331[0], v331[1], v331[2], v331[3], obj[0], obj[1], obj[2], v333, v334, v335, *v336, v337, *__p, v339, v340, v341, *v342, v343, v344, *(&v344 + 1), v345, *(&v345 + 1));
                if (SBYTE7(v339) < 0)
                {
                  operator delete(__p[0]);
                }
              }

              if ((BYTE8(v341) & 7) != 0)
              {
                atomic_fetch_add_explicit((*(&v341 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
              sub_239E5B574(&v341);
              if (*(&v340 + 1))
              {
                sub_239E5E560(*(&v340 + 1));
              }

              MEMORY[0x23EE7E9E0](&v344);
              if ((SBYTE7(v343) & 0x80000000) == 0)
              {
                goto LABEL_34;
              }

              v206 = v342[0];
              goto LABEL_131;
            }

            pxrInternal__aapl__pxrReserved__::UsdDeformersBlendShape::_GetStaticTfType(v162);
            pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
            if (pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA())
            {
              goto LABEL_48;
            }

            v166 = v358;
            if (!v358 || (*(v358 + 57) & 8) != 0)
            {
              pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(v358, v165);
            }

            v167 = *(v166 + 24);
            MEMORY[0x23EE7ED20](obj, "BlendShape");
            v168 = *v167;
            v169 = obj[0];
            if ((obj[0] & 7) != 0)
            {
              atomic_fetch_add_explicit((obj[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v169 ^ v168) < 8)
            {
              goto LABEL_48;
            }

            if (sub_239E5DC88((&v357 + 8)))
            {
              v181 = objc_msgSend_bufferAllocator(v329, v170, v171, v172, v177, v178, v179, v180, v173, v174, v175, v176);
              sub_239F171AC(v331, &v357 + 8);
              v182 = *(a2 + 64);
              objc_msgSend_frameInterval(v329, v183, v184, v185, v190, v191, v192, v193, v186, v187, v188, v189);
              sub_239E8540C(v181, v331, v182);
            }

            if ((sub_239E5DCC8((&v357 + 8)) & 1) != 0 || (sub_239E5DD08((&v357 + 8)) & 1) != 0 || (sub_239E5DD48((&v357 + 8)) & 1) != 0 || (sub_239E5DD88((&v357 + 8)) & 1) != 0 || sub_239E5DDC8((&v357 + 8)))
            {
              v264 = objc_msgSend_bufferAllocator(v329, v253, v254, v255, v260, v261, v262, v263, v256, v257, v258, v259, v327);
              v276 = objc_msgSend_resolver(v329, v265, v266, v267, v272, v273, v274, v275, v268, v269, v270, v271);
              objc_msgSend_frameInterval(v329, v277, v278, v279, v284, v285, v286, v287, v280, v281, v282, v283);
              v289 = v288.n128_f64[0];
              v300 = objc_msgSend_vertexDescriptor(v329, v290, v291, v292, v288, v297, v298, v299, v293, v294, v295, v296);
              sub_239EF1B04(v264, a2, v276, (&v357 + 8), v328, v300, v289);
            }

            if (sub_239E5DE48((&v357 + 8)))
            {
              goto LABEL_48;
            }

            if (sub_239E5DE08((&v357 + 8)))
            {
              if (*(a2 + 25) == 1)
              {
                v314 = objc_msgSend_bufferAllocator(v329, v303, v304, v305, v310, v311, v312, v313, v306, v307, v308, v309);
                v315 = *(a2 + 64);
                objc_msgSend_frameInterval(v329, v316, v317, v318, v323, v324, v325, v326, v319, v320, v321, v322);
                sub_239EEC1D4(v314, (&v357 + 8), v315);
              }

              goto LABEL_48;
            }

            if ((sub_239E5DE88((&v357 + 8)) & 1) == 0)
            {
              goto LABEL_32;
            }
          }
        }
      }

LABEL_48:
      if (SHIBYTE(v352) < 0)
      {
        operator delete(v351);
      }

      if (SHIBYTE(v354) < 0)
      {
        operator delete(__dst);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      sub_239E5B574(&v355);
      if ((v359 & 7) != 0)
      {
        atomic_fetch_add_explicit((v359 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      sub_239E5B574(&v358 + 8);
      if (v358)
      {
        sub_239E5E560(v358);
      }

      if (SBYTE7(v357) < 0)
      {
        operator delete(v356);
      }

      v93 = *(v7 + 1);
      if (v93)
      {
        do
        {
          v94 = v93;
          v93 = *v93;
        }

        while (v93);
      }

      else
      {
        do
        {
          v94 = *(v7 + 2);
          v68 = *v94 == v7;
          v7 = v94;
        }

        while (!v68);
      }

      v7 = v94;
      v10 = 0uLL;
    }

    while (v94 != v8);
  }
}

void sub_239E5D50C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *__p, int a19, __int16 a20, char a21, char a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60)
{
  if (*(v62 - 217) < 0)
  {
    operator delete(*(v62 - 240));
  }

  if (*(v62 - 185) < 0)
  {
    operator delete(*(v62 - 208));
  }

  sub_239EBE368(v62 - 184);
  sub_239F17490(v62 - 176);

  _Unwind_Resume(a1);
}

uint64_t sub_239E5DA3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 8);
  v7 = 0;
  v8 = v4;
  sub_239E57FC0(&v7, (a1 + 16));
  sub_239E5B49C(&v7 + 1, (a1 + 20));
  sub_239E5DB10(&v8, &v7);
  v6 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 6, 1uLL, memory_order_relaxed);
  }

  sub_239E5815C(a2, &v6, &v7);
  if (v6)
  {
    sub_239E5E560(v6);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return sub_239E5B574(&v7);
}

void sub_239E5DAE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (a5)
  {
    sub_239E5E560(a5);
  }

  sub_239EBE368(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::Usd_PrimData *sub_239E5DB10(pxrInternal__aapl__pxrReserved__::Usd_PrimData **a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  *a1 = pxrInternal__aapl__pxrReserved__::Usd_PrimData::GetParent(*a1);
  result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL();
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(v8, a2);
    sub_239E650AC(a2, v8);
    sub_239E65104(a2 + 4, v8 + 1);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    result = sub_239E5B574(v8);
    v5 = *a1;
    if (*a1)
    {
      if ((*(v5 + 57) & 0x10) != 0)
      {
        result = pxrInternal__aapl__pxrReserved__::SdfPath::IsRootPrimPath((v5 + 16));
        if (result)
        {
          result = pxrInternal__aapl__pxrReserved__::Usd_PrimData::GetPrimDataAtPathOrInPrototype(*a1, a2);
          *a1 = result;
          if (!result)
          {
            v8[0] = "usd/primData.h";
            v8[1] = "Usd_MoveToParent";
            v8[2] = 508;
            v8[3] = "void pxrInternal__aapl__pxrReserved__::Usd_MoveToParent(PrimDataPtr &, SdfPath &) [PrimDataPtr = const pxrInternal__aapl__pxrReserved__::Usd_PrimData *]";
            v9 = 0;
            Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
            pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("No prim at <%s>", v7, Text);
            result = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper();
            if (!result)
            {
              return result;
            }

            result = *a1;
          }

          if (*(result + 2) == *a2)
          {
            v8[0] = 0;
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
            sub_239E650AC(a2, v8);
            sub_239E65104(a2 + 4, v8 + 1);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            return sub_239E5B574(v8);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_239E5DC88(pxrInternal__aapl__pxrReserved__::UsdGeomCurves *a1)
{
  pxrInternal__aapl__pxrReserved__::UsdGeomCurves::_GetStaticTfType(a1);
  pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();

  return pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
}

uint64_t sub_239E5DCC8(pxrInternal__aapl__pxrReserved__::UsdGeomCube *a1)
{
  pxrInternal__aapl__pxrReserved__::UsdGeomCube::_GetStaticTfType(a1);
  pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();

  return pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
}

uint64_t sub_239E5DD08(pxrInternal__aapl__pxrReserved__::UsdGeomCone *a1)
{
  pxrInternal__aapl__pxrReserved__::UsdGeomCone::_GetStaticTfType(a1);
  pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();

  return pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
}

uint64_t sub_239E5DD48(pxrInternal__aapl__pxrReserved__::UsdGeomCylinder *a1)
{
  pxrInternal__aapl__pxrReserved__::UsdGeomCylinder::_GetStaticTfType(a1);
  pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();

  return pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
}

uint64_t sub_239E5DD88(pxrInternal__aapl__pxrReserved__::UsdGeomCapsule *a1)
{
  pxrInternal__aapl__pxrReserved__::UsdGeomCapsule::_GetStaticTfType(a1);
  pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();

  return pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
}

uint64_t sub_239E5DDC8(pxrInternal__aapl__pxrReserved__::UsdGeomSphere *a1)
{
  pxrInternal__aapl__pxrReserved__::UsdGeomSphere::_GetStaticTfType(a1);
  pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();

  return pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
}

uint64_t sub_239E5DE08(pxrInternal__aapl__pxrReserved__::UsdGeomNurbsPatch *a1)
{
  pxrInternal__aapl__pxrReserved__::UsdGeomNurbsPatch::_GetStaticTfType(a1);
  pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();

  return pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
}

uint64_t sub_239E5DE48(pxrInternal__aapl__pxrReserved__::UsdGeomPoints *a1)
{
  pxrInternal__aapl__pxrReserved__::UsdGeomPoints::_GetStaticTfType(a1);
  pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();

  return pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
}

uint64_t sub_239E5DE88(pxrInternal__aapl__pxrReserved__::UsdGeomSubset *a1)
{
  pxrInternal__aapl__pxrReserved__::UsdGeomSubset::_GetStaticTfType(a1);
  pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();

  return pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
}

_DWORD *sub_239E5DFB4(_DWORD *a1)
{
  if (*a1 != 1)
  {
    return a1 + 6;
  }

  v2 = sub_239E5E184(a1);

  return MEMORY[0x282207A70](v2);
}

id sub_239E5DFF0(_DWORD *a1)
{
  memset(&__str, 0, sizeof(__str));
  v1 = sub_239E5DFB4(a1);
  if ((*v1 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = (*v1 & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v1);
  }

  if (*(EmptyString + 23) < 0)
  {
    sub_239E5BAE0(&__str, *EmptyString, *(EmptyString + 8));
  }

  else
  {
    v3 = *EmptyString;
    __str.__r_.__value_.__r.__words[2] = *(EmptyString + 16);
    *&__str.__r_.__value_.__l.__data_ = v3;
  }

  std::string::basic_string(&v16, &__str, 0, 8uLL, &v18);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v16.__r_.__value_.__l.__size_ != 8)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
      goto LABEL_17;
    }

    v13 = *v16.__r_.__value_.__l.__data_;
    operator delete(v16.__r_.__value_.__l.__data_);
    if (v13 != 0x72657473614D5F5FLL)
    {
      goto LABEL_17;
    }
  }

  else if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) != 8 || v16.__r_.__value_.__r.__words[0] != 0x72657473614D5F5FLL)
  {
    goto LABEL_17;
  }

  std::operator+<char>();
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v9 = *&v16.__r_.__value_.__l.__data_;
  __str = v16;
LABEL_17:
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v4, &__str, 4, v9, v10, v11, v12, v5, v6, v7, v8);
  }

  else
  {
    objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v4, __str.__r_.__value_.__l.__data_, 4, v9, v10, v11, v12, v5, v6, v7, v8);
  }
  v14 = ;
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v14;
}

void sub_239E5E160(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_239E5E184(uint64_t a1)
{
  v2 = a1 + 16;
  v3 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL();
  if (v3)
  {
    return v2;
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    return v4 + 16;
  }

  return pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v3);
}

void *sub_239E5E1E4(uint64_t **a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = 0;
  result = *sub_239E5B718(a1, &v6, a2);
  if (!result)
  {
    sub_239E5E650();
  }

  return result;
}

void sub_239E5E290(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 136;
        sub_239ED16C4(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_239E5E314(uint64_t a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  v4 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v5 = *(a2 + 8);
  if (!v5)
  {
    goto LABEL_20;
  }

  v6 = *(v5 + 40) & 7;
  v7 = *(v5 + 40) & 0xFFFFFFFFFFFFFFF8;
  if (v7)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    goto LABEL_21;
  }

  if (!v6 || v7 == 0)
  {
LABEL_20:
    v7 = 0;
    goto LABEL_21;
  }

  while (1)
  {
    v10 = *(v7 + 40);
    v7 = v10 & 0xFFFFFFFFFFFFFFF8;
    if ((v10 & 7) == 0 && v7 != 0)
    {
      break;
    }

    if (v7)
    {
      v12 = (v10 & 7) == 0;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      goto LABEL_20;
    }
  }

LABEL_21:
  UsdPrimDefaultPredicate = pxrInternal__aapl__pxrReserved__::GetUsdPrimDefaultPredicate(v4);
  sub_239E5E3E8(a1, v5, v7, (a2 + 16), UsdPrimDefaultPredicate);
  return a1;
}

uint64_t sub_239E5E3E8(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, void *a5)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  sub_239E57F68(a1 + 16, a4);
  sub_239E5B450(a1 + 20, a4 + 1);
  v8 = *a5;
  v9 = a5[1];
  if (*a1)
  {
    v10 = a5[2];
    if ((pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL() & 1) == 0 && ((v8 & 0x2000) != 0 || (v9 & 0x2000) == 0))
    {
      v8 |= 0x2000uLL;
      v9 &= ~0x2000uLL;
    }
  }

  else
  {
    LOBYTE(v10) = *(a5 + 16);
  }

  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  *(a1 + 52) = 0;
  *(a1 + 48) = 0;
  v12 = 0u;
  v13 = 0u;
  sub_239E5B4DC(a1, &v12);
  if (v12 != *(a1 + 8) && !sub_239E5E514((a1 + 24), &v12, a4))
  {
    BYTE12(v13) = 1;
    pxrInternal__aapl__pxrReserved__::UsdPrimRange::iterator::increment(&v12);
    sub_239F17238(a1, &v12);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return sub_239E5B574(&v13);
}

BOOL sub_239E5E514(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL();

  return sub_239E5800C(a1, a2, v5);
}

uint64_t sub_239E5E560(uint64_t result)
{
  add_explicit = atomic_fetch_add_explicit((result + 48), 0xFFFFFFFFFFFFFFFFLL, memory_order_release);
  if (result && add_explicit == 1)
  {
    MEMORY[0x23EE7E660](result);

    JUMPOUT(0x23EE802C0);
  }

  return result;
}

uint64_t sub_239E5E5B4(pxrInternal__aapl__pxrReserved__::UsdObject *this)
{
  if (*this > 4u || ((1 << *this) & 0x1A) == 0)
  {
    return 0;
  }

  v3 = *(this + 1);
  if (!v3 || (*(v3 + 57) & 8) != 0)
  {
    return 0;
  }

  if (*this == 1)
  {
    return 1;
  }

  result = pxrInternal__aapl__pxrReserved__::UsdObject::_GetDefiningSpecType(this);
  if (*this != 3 || result != 1)
  {
    return *this == 4 && result == 8;
  }

  return result;
}

void sub_239E5E6FC(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_239F173F8(v3, v2);
  _Unwind_Resume(a1);
}

MDLTransformStack *sub_239E5E718(const pxrInternal__aapl__pxrReserved__::UsdPrim *a1, int a2, double a3, double a4)
{
  v301[1] = 0;
  v301[2] = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
  v300 = 0;
  v301[0] = MEMORY[0x277D86748] + 16;
  v298 = 0;
  v299 = 0;
  pxrInternal__aapl__pxrReserved__::UsdGeomXformable::GetTimeSamples();
  v297 = 0;
  v294 = 0;
  v295 = 0;
  v296 = 0;
  pxrInternal__aapl__pxrReserved__::UsdGeomXformable::GetOrderedXformOps(&v294, v301, &v297);
  v288 = objc_alloc_init(MDLTransformStack);
  v7 = v294;
  v8 = v295;
  if (v294 != v295)
  {
    while (2)
    {
      v293 = 0;
      memset(v292, 0, sizeof(v292));
      sub_239ED1618(v292, v7);
      v9 = *(v7 + 128);
      BYTE4(v293) = *(v7 + 132);
      LODWORD(v293) = v9;
      v10 = v9;
      __p[0] = 0;
      __p[1] = 0;
      v291 = 0;
      v11 = sub_239ED0DC4(v292);
      BaseName = pxrInternal__aapl__pxrReserved__::UsdProperty::GetBaseName(&v289, v11);
      if ((v289 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        EmptyString = (v289 & 0xFFFFFFFFFFFFFFF8) + 16;
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(BaseName);
      }

      if (*(EmptyString + 23) < 0)
      {
        sub_239E5BAE0(__p, *EmptyString, *(EmptyString + 8));
      }

      else
      {
        v24 = *EmptyString;
        v291 = *(EmptyString + 16);
        *__p = v24;
      }

      if ((v289 & 7) != 0)
      {
        atomic_fetch_add_explicit((v289 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v25 = BYTE4(v293);
      v26 = MEMORY[0x277CCACA8];
      v27 = SHIBYTE(v291);
      v28 = __p[0];
      v30 = objc_msgSend_defaultCStringEncoding(MEMORY[0x277CCACA8], v13, v14, v15, v24, v20, v21, v22, v16, v17, v18, v19, v288);
      if (v27 >= 0)
      {
        objc_msgSend_stringWithCString_encoding_(v26, v29, __p, v30, v35, v36, v37, v38, v31, v32, v33, v34);
      }

      else
      {
        objc_msgSend_stringWithCString_encoding_(v26, v29, v28, v30, v35, v36, v37, v38, v31, v32, v33, v34);
      }
      v44 = ;
      switch(v10)
      {
        case 0:
          NSLog(&cfstr_InvaliudTransf.isa);
          goto LABEL_67;
        case 4:
          v49 = objc_msgSend_addTranslateOp_inverse_(v288, v39, v44, v25, v45, v46, v47, v48, v40, v41, v42, v43);
          v61 = v49;
          if (!a2)
          {
            goto LABEL_54;
          }

          v200 = objc_msgSend_animatedValue(v49, v50, v51, v52, v57, v58, v59, v60, v53, v54, v55, v56);
          v212 = objc_msgSend_timeSampleCount(v200, v201, v202, v203, v208, v209, v210, v211, v204, v205, v206, v207);

          if (v212)
          {
            goto LABEL_66;
          }

          goto LABEL_64;
        case 8:
          v49 = objc_msgSend_addScaleOp_inverse_(v288, v39, v44, v25, v45, v46, v47, v48, v40, v41, v42, v43);
          v61 = v49;
          if (!a2)
          {
            goto LABEL_54;
          }

          v187 = objc_msgSend_animatedValue(v49, v50, v51, v52, v57, v58, v59, v60, v53, v54, v55, v56);
          v199 = objc_msgSend_timeSampleCount(v187, v188, v189, v190, v195, v196, v197, v198, v191, v192, v193, v194);

          if (!v199)
          {
            goto LABEL_64;
          }

          goto LABEL_66;
        case 9:
          v49 = objc_msgSend_addRotateXOp_inverse_(v288, v39, v44, v25, v45, v46, v47, v48, v40, v41, v42, v43);
          v61 = v49;
          if (!a2)
          {
            goto LABEL_54;
          }

          v174 = objc_msgSend_animatedValue(v49, v50, v51, v52, v57, v58, v59, v60, v53, v54, v55, v56);
          v186 = objc_msgSend_timeSampleCount(v174, v175, v176, v177, v182, v183, v184, v185, v178, v179, v180, v181);

          if (!v186)
          {
            goto LABEL_64;
          }

          goto LABEL_66;
        case 10:
          v49 = objc_msgSend_addRotateYOp_inverse_(v288, v39, v44, v25, v45, v46, v47, v48, v40, v41, v42, v43);
          v61 = v49;
          if (!a2)
          {
            goto LABEL_54;
          }

          v99 = objc_msgSend_animatedValue(v49, v50, v51, v52, v57, v58, v59, v60, v53, v54, v55, v56);
          v111 = objc_msgSend_timeSampleCount(v99, v100, v101, v102, v107, v108, v109, v110, v103, v104, v105, v106);

          if (!v111)
          {
            goto LABEL_64;
          }

          goto LABEL_66;
        case 11:
          v49 = objc_msgSend_addRotateZOp_inverse_(v288, v39, v44, v25, v45, v46, v47, v48, v40, v41, v42, v43);
          v61 = v49;
          if (!a2)
          {
            goto LABEL_54;
          }

          v148 = objc_msgSend_animatedValue(v49, v50, v51, v52, v57, v58, v59, v60, v53, v54, v55, v56);
          v160 = objc_msgSend_timeSampleCount(v148, v149, v150, v151, v156, v157, v158, v159, v152, v153, v154, v155);

          if (!v160)
          {
            goto LABEL_64;
          }

          goto LABEL_66;
        case 12:
          v49 = objc_msgSend_addRotateOp_order_inverse_(v288, v39, v44, 1, v45, v46, v47, v48, v25, v41, v42, v43);
          v61 = v49;
          if (!a2)
          {
            goto LABEL_54;
          }

          v213 = objc_msgSend_animatedValue(v49, v50, v51, v52, v57, v58, v59, v60, v53, v54, v55, v56);
          v225 = objc_msgSend_timeSampleCount(v213, v214, v215, v216, v221, v222, v223, v224, v217, v218, v219, v220);

          if (!v225)
          {
            goto LABEL_64;
          }

          goto LABEL_66;
        case 13:
          v49 = objc_msgSend_addRotateOp_order_inverse_(v288, v39, v44, 2, v45, v46, v47, v48, v25, v41, v42, v43);
          v61 = v49;
          if (!a2)
          {
            goto LABEL_54;
          }

          v226 = objc_msgSend_animatedValue(v49, v50, v51, v52, v57, v58, v59, v60, v53, v54, v55, v56);
          v238 = objc_msgSend_timeSampleCount(v226, v227, v228, v229, v234, v235, v236, v237, v230, v231, v232, v233);

          if (!v238)
          {
            goto LABEL_64;
          }

          goto LABEL_66;
        case 14:
          v49 = objc_msgSend_addRotateOp_order_inverse_(v288, v39, v44, 3, v45, v46, v47, v48, v25, v41, v42, v43);
          v61 = v49;
          if (!a2)
          {
            goto LABEL_54;
          }

          v252 = objc_msgSend_animatedValue(v49, v50, v51, v52, v57, v58, v59, v60, v53, v54, v55, v56);
          v264 = objc_msgSend_timeSampleCount(v252, v253, v254, v255, v260, v261, v262, v263, v256, v257, v258, v259);

          if (!v264)
          {
            goto LABEL_64;
          }

          goto LABEL_66;
        case 15:
          v49 = objc_msgSend_addRotateOp_order_inverse_(v288, v39, v44, 4, v45, v46, v47, v48, v25, v41, v42, v43);
          v61 = v49;
          if (!a2)
          {
            goto LABEL_54;
          }

          v239 = objc_msgSend_animatedValue(v49, v50, v51, v52, v57, v58, v59, v60, v53, v54, v55, v56);
          v251 = objc_msgSend_timeSampleCount(v239, v240, v241, v242, v247, v248, v249, v250, v243, v244, v245, v246);

          if (!v251)
          {
            goto LABEL_64;
          }

          goto LABEL_66;
        case 16:
          v49 = objc_msgSend_addRotateOp_order_inverse_(v288, v39, v44, 5, v45, v46, v47, v48, v25, v41, v42, v43);
          v61 = v49;
          if (!a2)
          {
            goto LABEL_54;
          }

          v86 = objc_msgSend_animatedValue(v49, v50, v51, v52, v57, v58, v59, v60, v53, v54, v55, v56);
          v98 = objc_msgSend_timeSampleCount(v86, v87, v88, v89, v94, v95, v96, v97, v90, v91, v92, v93);

          if (!v98)
          {
            goto LABEL_64;
          }

          goto LABEL_66;
        case 17:
          v49 = objc_msgSend_addRotateOp_order_inverse_(v288, v39, v44, 6, v45, v46, v47, v48, v25, v41, v42, v43);
          v61 = v49;
          if (!a2)
          {
            goto LABEL_54;
          }

          v161 = objc_msgSend_animatedValue(v49, v50, v51, v52, v57, v58, v59, v60, v53, v54, v55, v56);
          v173 = objc_msgSend_timeSampleCount(v161, v162, v163, v164, v169, v170, v171, v172, v165, v166, v167, v168);

          if (!v173)
          {
            goto LABEL_64;
          }

          goto LABEL_66;
        case 18:
          v61 = objc_msgSend_addOrientOp_inverse_(v288, v39, v44, v25, v45, v46, v47, v48, v40, v41, v42, v43);
          v123 = objc_msgSend_animatedValue(v61, v112, v113, v114, v119, v120, v121, v122, v115, v116, v117, v118);
          v135 = objc_msgSend_timeSampleCount(v123, v124, v125, v126, v131, v132, v133, v134, v127, v128, v129, v130);

          if (!v135)
          {
            goto LABEL_64;
          }

          if (a2)
          {
            goto LABEL_66;
          }

          v136 = objc_msgSend_animatedValue(v61, v75, v76, v77, v82, v83, v84, v85, v78, v79, v80, v81);
          v137 = sub_239ED0DC4(v292);
          v138.n128_f64[0] = a3;
          v139.n128_f64[0] = a4;
          objc_msgSend_resetWithUsdAttribute_timeScale_time_(v136, v140, v137, v141, v138, v139, v146, v147, v142, v143, v144, v145);
          goto LABEL_65;
        case 19:
          v49 = objc_msgSend_addMatrixOp_inverse_(v288, v39, v44, v25, v45, v46, v47, v48, v40, v41, v42, v43);
          v61 = v49;
          if (a2)
          {
            v62 = objc_msgSend_animatedValue(v49, v50, v51, v52, v57, v58, v59, v60, v53, v54, v55, v56);
            v74 = objc_msgSend_timeSampleCount(v62, v63, v64, v65, v70, v71, v72, v73, v66, v67, v68, v69);

            if (v74)
            {
              goto LABEL_66;
            }

LABEL_64:
            v136 = objc_msgSend_animatedValue(v61, v75, v76, v77, v82, v83, v84, v85, v78, v79, v80, v81);
            v276 = sub_239ED0DC4(v292);
            v277.n128_f64[0] = a3;
            objc_msgSend_resetWithUsdAttribute_timeScale_(v136, v278, v276, v279, v277, v284, v285, v286, v280, v281, v282, v283);
          }

          else
          {
LABEL_54:
            v136 = objc_msgSend_animatedValue(v49, v50, v51, v52, v57, v58, v59, v60, v53, v54, v55, v56);
            v265 = sub_239ED0DC4(v292);
            v266.n128_f64[0] = a3;
            v267.n128_f64[0] = a4;
            objc_msgSend_resetWithUsdAttribute_timeScale_time_(v136, v268, v265, v269, v266, v267, v274, v275, v270, v271, v272, v273);
          }

LABEL_65:

LABEL_66:
LABEL_67:

          if (SHIBYTE(v291) < 0)
          {
            operator delete(__p[0]);
          }

          sub_239ED16C4(v292);
          v7 += 136;
          if (v7 == v8)
          {
            break;
          }

          continue;
        default:
          goto LABEL_67;
      }

      break;
    }
  }

  *&v292[0] = &v294;
  sub_239E5E290(v292);
  if (v298)
  {
    v299 = v298;
    operator delete(v298);
  }

  MEMORY[0x23EE7E8E0](v301);

  return v288;
}

void sub_239E5F144(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_239ED16C4(&a18);

  a18 = &a36;
  sub_239E5E290(&a18);
  v41 = *(v39 - 160);
  if (v41)
  {
    *(v39 - 152) = v41;
    operator delete(v41);
  }

  MEMORY[0x23EE7E8E0](v39 - 136);
  _Unwind_Resume(a1);
}

uint64_t sub_239E5F3EC(pxrInternal__aapl__pxrReserved__::UsdGeomPointBased *a1, double *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  pxrInternal__aapl__pxrReserved__::UsdGeomPointBased::GetPointsAttr(&v20, a1);
  v29 = 0;
  v30 = 0;
  pxrInternal__aapl__pxrReserved__::UsdAttribute::Get();
  if (!v30)
  {
LABEL_33:
    v10 = 0;
    goto LABEL_34;
  }

  v22[0] = pxrInternal__aapl__pxrReserved__::SdfGetValueTypeNameForValue(&v29, v4);
  v5 = MEMORY[0x277D86578];
  if (!atomic_load(MEMORY[0x277D86578]))
  {
    sub_239EB5678(MEMORY[0x277D86578]);
  }

  v7 = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==();
  if ((v7 & 1) == 0)
  {
    if ((*a3 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = (*a3 & 0xFFFFFFFFFFFFFFF8) + 16;
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v7);
    }

    if (*(EmptyString + 23) < 0)
    {
      EmptyString = *EmptyString;
    }

    ValueTypeNameForValue = pxrInternal__aapl__pxrReserved__::SdfGetValueTypeNameForValue(&v29, v8);
    pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(v22, &ValueTypeNameForValue);
    v12 = v22[0] & 0xFFFFFFFFFFFFFFF8;
    if ((v22[0] & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v13 = (v12 + 16);
      if (*(v12 + 39) < 0)
      {
        v13 = *v13;
      }
    }

    else
    {
      v13 = "";
    }

    v14 = atomic_load(v5);
    if (!v14)
    {
      v14 = sub_239EB5678(MEMORY[0x277D86578]);
    }

    pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&v18, (v14 + 616));
    v15 = v18 & 0xFFFFFFFFFFFFFFF8;
    if ((v18 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v16 = (v15 + 16);
      if (*(v15 + 39) < 0)
      {
        v16 = *v16;
      }
    }

    else
    {
      v16 = "";
    }

    NSLog(&cfstr_WarningSSkippi.isa, EmptyString, v13, v16);
    if ((v18 & 7) != 0)
    {
      atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v22[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((v22[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    goto LABEL_33;
  }

  sub_239E5F7D4(v22, &v29);
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  MEMORY[0x23EE7ED20](&v25, "points");
  MEMORY[0x23EE7ED20](v26, "points");
  v9 = atomic_load(v5);
  if (!v9)
  {
    v9 = sub_239EB5678(MEMORY[0x277D86578]);
  }

  v26[1] = *(v9 + 77);
  MEMORY[0x23EE7ED20](&v27, "vertex");
  v28 = 1;
  sub_239E5FA58(a3 + 1, v22);
  if ((v27 & 7) != 0)
  {
    atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v26[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v26[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v25 & 7) != 0)
  {
    atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_239E56C80(v23);
  sub_239E5B240(v22);
  v10 = 1;
LABEL_34:
  sub_239E5B240(&v29);
  if ((BYTE8(v21) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v21 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574(&v21);
  if (*(&v20 + 1))
  {
    sub_239E5E560(*(&v20 + 1));
  }

  return v10;
}

void sub_239E5F6E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (a2)
  {
    sub_239E797CC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_239E5F7D4(void *a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  a1[1] = 0;
  if (a2[1])
  {
    v7 = 0;
    v8 = 0;
    sub_239E5B3EC(&v7, a1);
    v4 = a2[1];
    v5 = ~*(a2 + 2);
    a1[1] = v4;
    if ((v5 & 3) != 0)
    {
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 24))(a2, a1);
    }

    else
    {
      *a1 = *a2;
    }

    if (v8)
    {
      (*(v8 + 32))(&v7);
    }
  }

  return a1;
}

void sub_239E5F894(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(a11 + 32))(&a10, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_239E5F8D0(unint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    sub_239E797B4();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_239E5FA00(a1, v6);
  }

  v13 = 0;
  v14 = 96 * v2;
  sub_239E5FC40(96 * v2, a2);
  v15 = 96 * v2 + 96;
  v7 = a1[1];
  v8 = 96 * v2 + *a1 - v7;
  sub_239E5FAAC(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_239E5FDA4(&v13);
  return v12;
}

void sub_239E5F9EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_239E5FDA4(va);
  _Unwind_Resume(a1);
}

void sub_239E5FA00(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_239E79870();
}

uint64_t sub_239E5FA58(unint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_239E5F8D0(a1, a2);
  }

  else
  {
    sub_239E5FC40(a1[1], a2);
    result = v3 + 96;
    a1[1] = v3 + 96;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_239E5FAAC(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v18 = a4;
  v19 = a4;
  v16[0] = a1;
  v16[1] = &v18;
  v16[2] = &v19;
  v17 = 0;
  if (a2 == a3)
  {
    LOBYTE(v17) = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v8 = a2;
    do
    {
      sub_239E5F7D4(v4, v8);
      v9 = *(v8 + 32);
      *(v4 + 16) = *(v8 + 16);
      *(v4 + 32) = v9;
      v10 = *(v8 + 48);
      *(v4 + 48) = v10;
      if (v10)
      {
        v11 = (v10 - 16);
        if (*(v4 + 40))
        {
          v11 = *(v4 + 40);
        }

        atomic_fetch_add_explicit(v11, 1uLL, memory_order_relaxed);
      }

      v12 = *(v8 + 56);
      *(v4 + 56) = v12;
      if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *(v4 + 56) &= 0xFFFFFFFFFFFFFFF8;
      }

      v13 = *(v8 + 64);
      *(v4 + 64) = v13;
      if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *(v4 + 64) &= 0xFFFFFFFFFFFFFFF8;
      }

      *(v4 + 72) = *(v8 + 72);
      v14 = *(v8 + 80);
      *(v4 + 80) = v14;
      if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *(v4 + 80) &= 0xFFFFFFFFFFFFFFF8;
      }

      *(v4 + 88) = *(v8 + 88);
      v8 += 96;
      v4 = v19 + 96;
      v19 += 96;
    }

    while (v8 != a3);
    LOBYTE(v17) = 1;
    while (v6 != a3)
    {
      sub_239E63168(a1, v6);
      v6 += 12;
    }
  }

  return sub_239E5FD6C(v16);
}

uint64_t sub_239E5FC40(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  *(a1 + 8) = 0;
  if (*(a2 + 8))
  {
    v8 = 0;
    v9 = 0;
    sub_239E5B3EC(&v8, a1);
    v4 = *(a2 + 8);
    v5 = ~*(a2 + 8);
    *(a1 + 8) = v4;
    if ((v5 & 3) != 0)
    {
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 40))(a2, a1);
    }

    else
    {
      *a1 = *a2;
    }

    *(a2 + 8) = 0;
    if (v9)
    {
      (*(v9 + 32))(&v8);
    }
  }

  v6 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v6;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = 0;
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = 0;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 80) = 0;
  *(a1 + 88) = *(a2 + 88);
  return a1;
}

void sub_239E5FD54(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_239E797CC(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_239E5FD6C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_239EB5E0C(a1);
  }

  return a1;
}

uint64_t sub_239E5FDA4(uint64_t a1)
{
  sub_239E5FDDC(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_239E5FDDC(uint64_t result, uint64_t a2)
{
  v3 = result;
  while (1)
  {
    v4 = *(v3 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(v3 + 32);
    *(v3 + 16) = v4 - 96;
    result = sub_239E63168(v5, (v4 - 96));
  }

  return result;
}

void sub_239E5FE24(void *a2@<X1>, const pxrInternal__aapl__pxrReserved__::UsdPrim *a3@<X2>, uint64_t a6@<X8>)
{
  v9 = a2;
  v12[1] = 0;
  v12[2] = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
  v12[0] = MEMORY[0x277D866A8] + 16;
  *a6 = 0u;
  *(a6 + 16) = 0u;
  *(a6 + 32) = 0u;
  *(a6 + 48) = 0u;
  *(a6 + 64) = 0u;
  *(a6 + 80) = 0u;
  *(a6 + 96) = 0u;
  *(a6 + 112) = 0u;
  *(a6 + 128) = 0u;
  *(a6 + 144) = 0u;
  *(a6 + 160) = 0u;
  *(a6 + 176) = 0u;
  *(a6 + 192) = 0u;
  *(a6 + 208) = 0u;
  *(a6 + 224) = 0u;
  *(a6 + 240) = 0u;
  *(a6 + 256) = 0u;
  *(a6 + 272) = 0u;
  *(a6 + 288) = 0u;
  *(a6 + 304) = 0u;
  *(a6 + 320) = 0u;
  *(a6 + 336) = 0u;
  *(a6 + 352) = 0u;
  *(a6 + 368) = 0u;
  *(a6 + 384) = 0u;
  *(a6 + 400) = 0u;
  *(a6 + 416) = 0u;
  *(a6 + 432) = 0u;
  *(a6 + 448) = 0u;
  v10 = sub_239E5DFB4(a3);
  sub_239E5BA20(a6, v10);
  pxrInternal__aapl__pxrReserved__::UsdGeomMesh::GetSubdivisionSchemeAttr(&v11, v12);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::TfToken>();
}

uint64_t sub_239E60274(pxrInternal__aapl__pxrReserved__::UsdGeomPointBased *a1, double *a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  pxrInternal__aapl__pxrReserved__::UsdGeomPointBased::GetNormalsAttr(&v22, a1);
  v30 = 0;
  v31 = 0;
  pxrInternal__aapl__pxrReserved__::UsdAttribute::Get();
  if (v31)
  {
    *&v24 = pxrInternal__aapl__pxrReserved__::SdfGetValueTypeNameForValue(&v30, v5);
    v6 = MEMORY[0x277D86578];
    if (!atomic_load(MEMORY[0x277D86578]))
    {
      sub_239EB5678(MEMORY[0x277D86578]);
    }

    v8 = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==();
    if (v8)
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements(&v30))
      {
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        sub_239E5F7D4(&v24, &v30);
        *&v27 = 0;
        v25 = 0u;
        v26 = 0u;
        MEMORY[0x23EE7ED20](&v27 + 8, "normals");
        MEMORY[0x23EE7ED20](&v28, "normals");
        v10 = atomic_load(v6);
        if (!v10)
        {
          v10 = sub_239EB5678(MEMORY[0x277D86578]);
        }

        *(&v28 + 1) = *(v10 + 77);
        pxrInternal__aapl__pxrReserved__::UsdGeomPointBased::GetNormalsInterpolation(&v29, a1);
        DWORD2(v29) = 1;
        sub_239E624D4(&v24, a3);
        v11 = sub_239E62960(&v24, a3);
        if (v11)
        {
          sub_239E62EE8(a3 + 1, &v24);
        }

        else
        {
          if ((*a3 & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            EmptyString = (*a3 & 0xFFFFFFFFFFFFFFF8) + 16;
          }

          else
          {
            EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v11);
          }

          if (*(EmptyString + 23) < 0)
          {
            EmptyString = *EmptyString;
          }

          NSLog(&cfstr_WarningSSkippi_1.isa, EmptyString);
        }

        if ((v29 & 7) != 0)
        {
          atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v28 & 7) != 0)
        {
          atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((BYTE8(v27) & 7) != 0)
        {
          atomic_fetch_add_explicit((*(&v27 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        sub_239E56C80(&v25);
        sub_239E5B240(&v24);
      }
    }

    else
    {
      if ((*a3 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v12 = (*a3 & 0xFFFFFFFFFFFFFFF8) + 16;
      }

      else
      {
        v12 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v8);
      }

      if (*(v12 + 23) < 0)
      {
        v12 = *v12;
      }

      ValueTypeNameForValue = pxrInternal__aapl__pxrReserved__::SdfGetValueTypeNameForValue(&v30, v9);
      pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&v24, &ValueTypeNameForValue);
      v13 = v24 & 0xFFFFFFFFFFFFFFF8;
      if ((v24 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v14 = (v13 + 16);
        if (*(v13 + 39) < 0)
        {
          v14 = *v14;
        }
      }

      else
      {
        v14 = "";
      }

      v15 = atomic_load(v6);
      if (!v15)
      {
        v15 = sub_239EB5678(MEMORY[0x277D86578]);
      }

      pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&v20, (v15 + 616));
      v16 = v20 & 0xFFFFFFFFFFFFFFF8;
      if ((v20 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v17 = (v16 + 16);
        if (*(v16 + 39) < 0)
        {
          v17 = *v17;
        }
      }

      else
      {
        v17 = "";
      }

      NSLog(&cfstr_WarningSSkippi_0.isa, v12, v14, v17);
      if ((v20 & 7) != 0)
      {
        atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v24 & 7) != 0)
      {
        atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }
  }

  sub_239E5B240(&v30);
  if ((BYTE8(v23) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v23 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574(&v23);
  result = *(&v22 + 1);
  if (*(&v22 + 1))
  {
    return sub_239E5E560(*(&v22 + 1));
  }

  return result;
}

void sub_239E605D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (a2)
  {
    sub_239E797CC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_239E606C4(const pxrInternal__aapl__pxrReserved__::UsdPrim *a1, uint64_t a2, double *a3, int a4)
{
  v22 = 0;
  v23 = 0;
  v24 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
  *(&v13 + 1) = 0;
  *&v12 = MEMORY[0x277D867B8] + 16;
  pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::GetMaterialBindSubsets(&v22, &v12);
  MEMORY[0x23EE7EBE0](&v12);
  v7 = v22;
  v6 = v23;
  if (v23 == v22)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
    *(&v13 + 1) = 0;
    *&v12 = MEMORY[0x277D867B8] + 16;
    if (!atomic_load(MEMORY[0x277D86568]))
    {
      sub_239EF33AC(MEMORY[0x277D86568]);
    }

    pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::ComputeBoundMaterial();
    MEMORY[0x23EE7EBE0](&v12);
    sub_239E5815C(&v12, &v16, &v17);
    sub_239E60BA0(&v12, a2, a3);
    if ((BYTE8(v13) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v13 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_239E5B574(&v13);
    if (*(&v12 + 1))
    {
      sub_239E5E560(*(&v12 + 1));
    }

    MEMORY[0x23EE7E910](&v15);
  }

  else
  {
    v8 = MEMORY[0x277D86568];
    do
    {
      v19 = 0;
      v20 = 0;
      v21 = 0;
      sub_239E5815C(&v15, (v7 + 8), (v7 + 16));
      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
      *(&v13 + 1) = 0;
      *&v12 = MEMORY[0x277D867B8] + 16;
      if (!atomic_load(v8))
      {
        sub_239EF33AC(v8);
      }

      pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::ComputeBoundMaterial();
      MEMORY[0x23EE7EBE0](&v12);
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      sub_239E5B574(&v17);
      if (v16)
      {
        sub_239E5E560(v16);
      }

      sub_239E5815C(&v12, &v20, &v21);
      sub_239E60BA0(&v12, a2, a3);
      if ((BYTE8(v13) & 7) != 0)
      {
        atomic_fetch_add_explicit((*(&v13 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      sub_239E5B574(&v13);
      if (*(&v12 + 1))
      {
        sub_239E5E560(*(&v12 + 1));
      }

      MEMORY[0x23EE7E910](&v19);
      v7 += 24;
    }

    while (v7 != v6);
    if (v23 != v22)
    {
      v14 = 0;
      v12 = 0u;
      v13 = 0u;
      v15 = 0xFFEFFFFFFFFFFFFFLL;
      pxrInternal__aapl__pxrReserved__::UsdGeomSubset::GetUnassignedIndices();
      if (v12)
      {
        v19 = 0;
        v20 = 0;
        v21 = 0;
        pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
        v18 = 0;
        v15 = MEMORY[0x277D867B8] + 16;
        if (!atomic_load(v8))
        {
          sub_239EF33AC(MEMORY[0x277D86568]);
        }

        pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::ComputeBoundMaterial();
        MEMORY[0x23EE7EBE0](&v15);
        sub_239E5815C(&v15, &v20, &v21);
        sub_239E60BA0(&v15, a2, a3);
        if ((v18 & 7) != 0)
        {
          atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        sub_239E5B574(&v17);
        if (v16)
        {
          sub_239E5E560(v16);
        }

        MEMORY[0x23EE7E910](&v19);
      }

      sub_239E56C80(&v12);
    }
  }

  *&v12 = &v22;
  sub_239E61B58(&v12);
}

void sub_239E60AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void **);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  va_copy(va2, va1);
  v14 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  sub_239ED1984(va1);
  MEMORY[0x23EE7E910](va2);
  sub_239E56C80(va);
  v7 = (v5 - 104);
  sub_239E61B58(va);
  _Unwind_Resume(a1);
}

uint64_t sub_239E60BA0(pxrInternal__aapl__pxrReserved__::UsdObject *a1, uint64_t a2, double *a3)
{
  result = sub_239E5E5B4(a1);
  if (result)
  {
    v22[1] = 0;
    v22[2] = 0;
    v6 = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
    v22[0] = MEMORY[0x277D86758] + 16;
    pxrInternal__aapl__pxrReserved__::UsdShadeNodeGraph::GetOutputs(&v20, v6);
    v7 = v20;
    for (i = v21; v7 != i; v7 += 32)
    {
      if (pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI::HasConnectedSource())
      {
        v18 = 0u;
        v19 = 0u;
        LODWORD(v14) = 1;
        v15 = 0;
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
        v17 = 0;
        pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
        *(&v19 + 1) = 0;
        *&v18 = MEMORY[0x277D867A8] + 16;
        if ((v17 & 7) != 0)
        {
          atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        sub_239E5B574(&v16);
        if (v15)
        {
          sub_239E5E560(v15);
        }

        v13 = 0;
        v12 = 0;
        pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI::GetConnectedSource();
        MEMORY[0x23EE7ED20](&v14, "surface");
        v9 = v13;
        v10 = v14;
        if ((v14 & 7) != 0)
        {
          atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v10 ^ v9) <= 7)
        {
          sub_239E5815C(&v14, &v18 + 1, &v19);
          pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
          v11[0] = MEMORY[0x277D86708] + 16;
          sub_239E60E90(v11, a2, a3);
          MEMORY[0x23EE7E820](v11);
          if ((v17 & 7) != 0)
          {
            atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          sub_239E5B574(&v16);
          if (v15)
          {
            sub_239E5E560(v15);
          }
        }

        if ((v13 & 7) != 0)
        {
          atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        MEMORY[0x23EE7EB40](&v18);
      }
    }

    *&v18 = &v20;
    sub_239E61B04(&v18);
    return MEMORY[0x23EE7E910](v22);
  }

  return result;
}

void sub_239E60E90(pxrInternal__aapl__pxrReserved__::UsdShadeShader *a1, uint64_t a2, double *a3)
{
  pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInputs(&v16, a1);
  v5 = v16;
  for (i = v17; v5 != i; v5 += 32)
  {
    if (pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI::HasConnectedSource())
    {
      v14 = 0u;
      v15 = 0u;
      v10 = 1;
      v11 = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
      v13 = 0;
      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
      *(&v15 + 1) = 0;
      *&v14 = MEMORY[0x277D867A8] + 16;
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      sub_239E5B574(&v12);
      if (v11)
      {
        sub_239E5E560(v11);
      }

      v9 = 0;
      v8 = 0;
      pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI::GetConnectedSource();
      sub_239E5815C(&v10, &v14 + 1, &v15);
      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
      v7[0] = MEMORY[0x277D86708] + 16;
      sub_239E610F0(v7, a2, a3);
      MEMORY[0x23EE7E820](v7);
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      sub_239E5B574(&v12);
      if (v11)
      {
        sub_239E5E560(v11);
      }

      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      MEMORY[0x23EE7EB40](&v14);
    }
  }

  *&v14 = &v16;
  sub_239E61AB0(&v14);
}

void sub_239E61074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if ((a14 & 7) != 0)
  {
    atomic_fetch_add_explicit((a14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  MEMORY[0x23EE7EB40](&a19, a2, a3, a4, a5, a6, a7, a8);
  a19 = v19 - 104;
  sub_239E61AB0(&a19);
  _Unwind_Resume(a1);
}

void sub_239E610F0(pxrInternal__aapl__pxrReserved__::UsdShadeShader *a1, uint64_t a2, double *a3)
{
  pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInputs(&v16, a1);
  v3 = v16;
  for (i = v17; v3 != i; v3 += 32)
  {
    if (pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI::HasConnectedSource())
    {
      v14 = 0u;
      v15 = 0u;
      LODWORD(v10) = 1;
      v11 = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
      v13 = 0;
      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
      *(&v15 + 1) = 0;
      *&v14 = MEMORY[0x277D867A8] + 16;
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      sub_239E5B574(&v12);
      if (v11)
      {
        sub_239E5E560(v11);
      }

      v9 = 0;
      v8 = 0;
      pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI::GetConnectedSource();
      v5 = sub_239E5815C(&v10, &v14 + 1, &v15);
      pxrInternal__aapl__pxrReserved__::UsdShadeShader::_GetStaticTfType(v5);
      pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
      IsA = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      sub_239E5B574(&v12);
      if (v11)
      {
        sub_239E5E560(v11);
      }

      if (IsA)
      {
        v7[1] = 0;
        v7[2] = 0;
        sub_239E5815C(&v10, &v14 + 1, &v15);
        pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
        v7[0] = MEMORY[0x277D86708] + 16;
        if ((v13 & 7) != 0)
        {
          atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        sub_239E5B574(&v12);
        if (v11)
        {
          sub_239E5E560(v11);
        }

        pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetIdAttr(&v10, v7);
        pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::TfToken>();
      }

      MEMORY[0x23EE7EB40](&v14);
    }
  }

  *&v14 = &v16;
  sub_239E61AB0(&v14);
}

void sub_239E614C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a19 & 7) != 0)
  {
    atomic_fetch_add_explicit((a19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a13 & 7) != 0)
  {
    atomic_fetch_add_explicit((a13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  MEMORY[0x23EE7E820](&a14, a2, a3, a4, a5, a6, a7, a8);
  if ((a18 & 7) != 0)
  {
    atomic_fetch_add_explicit((a18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  MEMORY[0x23EE7EB40](&a23);
  a23 = v23 - 112;
  sub_239E61AB0(&a23);
  _Unwind_Resume(a1);
}

uint64_t sub_239E615E8(pxrInternal__aapl__pxrReserved__::UsdShadeShader *a1, uint64_t a2, double *a3)
{
  MEMORY[0x23EE7ED20](&v13, "varname");
  pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v15, a1, &v13);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (sub_239E5E5B4(&v15) && (pxrInternal__aapl__pxrReserved__::UsdShadeInput::IsInput() & 1) != 0)
  {
    v13 = 0u;
    v14 = 0u;
    MEMORY[0x23EE7ED20](&v10, "result");
    pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetOutput(&v13, a1, &v10);
    if ((v10 & 7) != 0)
    {
      atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (pxrInternal__aapl__pxrReserved__::UsdShadeOutput::IsOutput())
    {
      *&v10 = MEMORY[0x23EE7F740](&v13);
      if (!atomic_load(MEMORY[0x277D86578]))
      {
        sub_239EB5678(MEMORY[0x277D86578]);
      }

      if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
      {
        v12 = 0;
        if (!pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI::HasConnectedSource())
        {
          pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::TfToken>();
        }

        v10 = 0u;
        v11 = 0u;
        LODWORD(v6) = 1;
        v7 = 0;
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
        v9 = 0;
        pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
        *(&v11 + 1) = 0;
        *&v10 = MEMORY[0x277D867A8] + 16;
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        sub_239E5B574(&v8);
        pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI::GetConnectedSource();
        MEMORY[0x23EE7ED20](&v19, "frame:stPrimvarName");
        pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI::GetInput(&v6, &v10, &v19);
        if ((v19 & 7) != 0)
        {
          atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (sub_239E5E5B4(&v6) && pxrInternal__aapl__pxrReserved__::UsdShadeInput::IsInput())
        {
          pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::TfToken>();
        }

        if ((v9 & 7) != 0)
        {
          atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        sub_239E5B574(&v8);
        if (v7)
        {
          sub_239E5E560(v7);
        }

        MEMORY[0x23EE7EB40](&v10);
        if ((v12 & 7) != 0)
        {
          atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }
    }

    if ((BYTE8(v14) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v14 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_239E5B574(&v14);
    if (*(&v13 + 1))
    {
      sub_239E5E560(*(&v13 + 1));
    }
  }

  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574(&v17);
  result = v16;
  if (v16)
  {
    return sub_239E5E560(v16);
  }

  return result;
}

void sub_239E619AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v16 = *(v13 + 40);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  MEMORY[0x23EE7EB40](va, a2, a3, a4, a5, a6, a7);
  if ((v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_239EF0744(va1);
  sub_239EF06E8(v14 - 96);
  _Unwind_Resume(a1);
}

void sub_239E61AB0(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_239E696B4(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_239E61B04(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_239E6A1C0(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_239E61B58(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 3;
      v7 = v4 - 3;
      v8 = v4 - 3;
      do
      {
        v9 = *v8;
        v8 -= 3;
        (*v9)(v7);
        v6 -= 3;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_239E61C18(pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar *a1, double *a2, void *a3, uint64_t **a4, int *a5)
{
  v50 = *MEMORY[0x277D85DE8];
  v48 = 0u;
  v49 = 0u;
  v47 = 0u;
  v45 = 0u;
  memset(v46, 0, sizeof(v46));
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName((&v48 + 8));
  *&v49 = 0;
  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetDeclarationInfo(a1, (&v47 + 8), (&v48 + 8), &v49, &v49 + 2);
  MEMORY[0x23EE7ED20](&ValueTypeNameForValue, "displayColor");
  v9 = ValueTypeNameForValue;
  if ((ValueTypeNameForValue ^ *(&v47 + 1)) >= 8)
  {
    MEMORY[0x23EE7ED20](&v43, "primvars:displayColor");
    v11 = v43;
    if ((v43 ^ *(&v47 + 1)) >= 8)
    {
      MEMORY[0x23EE7ED20](&v42, "displayOpacity");
      v12 = v42;
      if ((v42 ^ *(&v47 + 1)) >= 8)
      {
        MEMORY[0x23EE7ED20](&v41, "primvars:displayOpacity");
        v10 = (v41 ^ *(&v47 + 1)) < 8;
        if ((v41 & 7) != 0)
        {
          atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v12 = v42;
      }

      else
      {
        v10 = 1;
      }

      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v43;
    }

    else
    {
      v10 = 1;
    }

    if ((v11 & 7) != 0)
    {
      atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v9 = ValueTypeNameForValue;
  }

  else
  {
    v10 = 1;
  }

  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *(&v47 + 1);
  v40 = *(&v47 + 1);
  if ((BYTE8(v47) & 7) != 0 && (atomic_fetch_add_explicit((*(&v47 + 1) & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v40 = v13 & 0xFFFFFFFFFFFFFFF8;
    v13 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = sub_239E62368(&v40, *(&v48 + 1), a4);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  MEMORY[0x23EE7ED20](&ValueTypeNameForValue, "normals");
  v15 = ValueTypeNameForValue;
  if ((ValueTypeNameForValue ^ *(&v47 + 1)) >= 8)
  {
    if (!atomic_load(MEMORY[0x277D86578]))
    {
      sub_239EB5678(MEMORY[0x277D86578]);
    }

    v16 = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==();
    v15 = ValueTypeNameForValue;
  }

  else
  {
    v16 = 1;
  }

  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  MEMORY[0x23EE7ED20](&ValueTypeNameForValue, "skinJointIndices");
  v18 = ValueTypeNameForValue;
  if ((ValueTypeNameForValue ^ *(&v47 + 1)) >= 8)
  {
    MEMORY[0x23EE7ED20](&v43, "skinJointWeights");
    v19 = (v43 ^ *(&v47 + 1)) < 8;
    if ((v43 & 7) != 0)
    {
      atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v18 = ValueTypeNameForValue;
  }

  else
  {
    v19 = 1;
  }

  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v10 || v19 || ((v14 | v16) & 1) == 0)
  {
    goto LABEL_71;
  }

  if ((pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::Get<pxrInternal__aapl__pxrReserved__::VtValue>() & 1) == 0)
  {
    v27 = *a3 & 0xFFFFFFFFFFFFFFF8;
    if (v27)
    {
      v28 = (v27 + 16);
      if (*(v27 + 39) < 0)
      {
        v28 = *v28;
      }
    }

    else
    {
      v28 = "";
    }

    v29 = *(&v47 + 1) & 0xFFFFFFFFFFFFFFF8;
    if ((*(&v47 + 1) & 0xFFFFFFFFFFFFFFF8) == 0)
    {
      NSLog(&cfstr_WarningSSkippi_2.isa, v28, "");
      goto LABEL_71;
    }

    v30 = v29 + 16;
    v31 = *(v29 + 39);
    v32 = @"Warning: %s : Skipping attribute %s, couldn't get the primvar contents";
    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_70;
    }

LABEL_69:
    v30 = *v30;
LABEL_70:
    NSLog(&v32->isa, v28, v30);
    goto LABEL_71;
  }

  if (pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsIndexed(a1))
  {
    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetIndices();
  }

  sub_239E624D4(&v45, a3);
  EmptyString = sub_239E62960(&v45, a3);
  if (!EmptyString || (EmptyString = sub_239E62E30(&v45), !EmptyString))
  {
    if ((*a3 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v28 = ((*a3 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyString);
      v28 = EmptyString;
    }

    if (v28[23] < 0)
    {
      v28 = *v28;
    }

    if ((*(&v47 + 1) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v30 = (*(&v47 + 1) & 0xFFFFFFFFFFFFFFF8) + 16;
    }

    else
    {
      v30 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyString);
    }

    v32 = @"Warning: %s : Skipping attribute %s\n";
    if ((*(v30 + 23) & 0x80000000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_69;
  }

  if (!v14)
  {
    MEMORY[0x23EE7ED20](&ValueTypeNameForValue, "normals");
    if ((v48 & 7) != 0)
    {
      atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *&v48 = ValueTypeNameForValue;
    goto LABEL_94;
  }

  ValueTypeNameForValue = pxrInternal__aapl__pxrReserved__::SdfGetValueTypeNameForValue(&v45, v21);
  if (!atomic_load(MEMORY[0x277D86578]))
  {
    sub_239EB5678(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    v24 = MEMORY[0x23EE7ED20](&ValueTypeNameForValue, "textureCoordinates");
    if ((v48 & 7) != 0)
    {
      atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *&v48 = ValueTypeNameForValue;
    v25 = *a5;
    if ((*(&v47 + 1) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v26 = ((*(&v47 + 1) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v26 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v24);
    }

    ValueTypeNameForValue = v26;
    *(sub_239E631F0(a4, v26, &unk_239F9BFF0, &ValueTypeNameForValue, &v43) + 14) = v25;
    ++*a5;
LABEL_94:
    sub_239E62EE8(a3 + 1, &v45);
    goto LABEL_71;
  }

  v34 = *a3 & 0xFFFFFFFFFFFFFFF8;
  if (v34)
  {
    v35 = (v34 + 16);
    if (*(v34 + 39) < 0)
    {
      v35 = *v35;
    }
  }

  else
  {
    v35 = "";
  }

  v36 = *(&v47 + 1) & 0xFFFFFFFFFFFFFFF8;
  if ((*(&v47 + 1) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v37 = (v36 + 16);
    if (*(v36 + 39) < 0)
    {
      v37 = *v37;
    }
  }

  else
  {
    v37 = "";
  }

  v43 = pxrInternal__aapl__pxrReserved__::SdfGetValueTypeNameForValue(&v45, v23);
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&ValueTypeNameForValue, &v43);
  v38 = ValueTypeNameForValue & 0xFFFFFFFFFFFFFFF8;
  if ((ValueTypeNameForValue & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v39 = (v38 + 16);
    if (*(v38 + 39) < 0)
    {
      v39 = *v39;
    }
  }

  else
  {
    v39 = "";
  }

  NSLog(&cfstr_WarningSSkippi_3.isa, v35, v37, v39, v40);
  if ((ValueTypeNameForValue & 7) != 0)
  {
    atomic_fetch_add_explicit((ValueTypeNameForValue & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

LABEL_71:
  if ((v49 & 7) != 0)
  {
    atomic_fetch_add_explicit((v49 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v48 & 7) != 0)
  {
    atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((BYTE8(v47) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v47 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_239E56C80(v46);
  return sub_239E5B240(&v45);
}

void sub_239E62260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  if ((a16 & 7) != 0)
  {
    atomic_fetch_add_explicit((a16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_239EB35C8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_239E62368(void *a1, uint64_t a2, uint64_t a3)
{
  v14[1] = a2;
  v5 = MEMORY[0x277D86578];
  if (!atomic_load(MEMORY[0x277D86578]))
  {
    sub_239EB5678(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    return 1;
  }

  if (!atomic_load(v5))
  {
    sub_239EB5678(MEMORY[0x277D86578]);
  }

  result = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==();
  if (result)
  {
    v9 = MEMORY[0x23EE7ED20](v14, "st");
    v10 = v14[0];
    if ((v14[0] ^ *a1) >= 8)
    {
      v9 = MEMORY[0x23EE7ED20](&v13, "Texture_uv");
      v11 = (v13 ^ *a1) < 8;
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v14[0];
    }

    else
    {
      v11 = 1;
    }

    if ((v10 & 7) != 0)
    {
      atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v11)
    {
      return 1;
    }

    if ((*a1 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((*a1 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v9);
    }

    return a3 + 8 != sub_239E69484(a3, EmptyString);
  }

  return result;
}

void sub_239E624D4(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x23EE7ED20](__p, "constant");
  v5 = (a1 + 80);
  v6 = __p[0];
  if ((__p[0] ^ *(a1 + 80)) >= 8uLL)
  {
    v4 = MEMORY[0x23EE7ED20](&v25, "vertex");
    v8 = v25;
    if ((v25 ^ *v5) >= 8)
    {
      v4 = MEMORY[0x23EE7ED20](&v24, "uniform");
      v9 = v24;
      if ((v24 ^ *v5) >= 8)
      {
        v4 = MEMORY[0x23EE7ED20](&v23, "faceVarying");
        v7 = (v23 ^ *v5) < 8;
        if ((v23 & 7) != 0)
        {
          atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v9 = v24;
      }

      else
      {
        v7 = 1;
      }

      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v25;
    }

    else
    {
      v7 = 1;
    }

    if ((v8 & 7) != 0)
    {
      atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v6 = __p[0];
  }

  else
  {
    v7 = 1;
  }

  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (!v7)
  {
    __p[0] = 0;
    __p[1] = 0;
    v22 = 0;
    if ((*(a1 + 56) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = (*(a1 + 56) & 0xFFFFFFFFFFFFFFF8) + 16;
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v4);
    }

    if (*(EmptyString + 23) < 0)
    {
      sub_239E5BAE0(__p, *EmptyString, *(EmptyString + 8));
    }

    else
    {
      v11 = *EmptyString;
      v22 = *(EmptyString + 16);
      *__p = v11;
    }

    v12 = a2[1];
    if (a2[2] == v12 || !*(v12 + 1))
    {
LABEL_62:
      if (SHIBYTE(v22) < 0)
      {
        operator delete(__p[0]);
      }

      return;
    }

    NumElements = pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements(v12);
    v14 = NumElements;
    v15 = a2[14];
    v16 = a2[19];
    v17 = *(a1 + 16);
    if (v17)
    {
      if (v17 == 1)
      {
        MEMORY[0x23EE7ED20](&v25, "constant");
LABEL_40:
        if (&v25 == v5)
        {
          if ((v25 & 7) != 0)
          {
            atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }

        else
        {
          if ((*v5 & 7) != 0)
          {
            atomic_fetch_add_explicit((*v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          *v5 = v25;
        }

        v18 = __p;
        if (v22 < 0)
        {
          v18 = __p[0];
        }

        NSLog(&cfstr_InferringAttri.isa, v18);
        goto LABEL_62;
      }

      if (v17 == NumElements)
      {
        MEMORY[0x23EE7ED20](&v25, "vertex");
        goto LABEL_40;
      }

      if (v17 == v15)
      {
        MEMORY[0x23EE7ED20](&v25, "uniform");
        goto LABEL_40;
      }

      if (v17 == v16)
      {
        MEMORY[0x23EE7ED20](&v25, "faceVarying");
        goto LABEL_40;
      }

LABEL_65:
      v20 = __p;
      if (v22 < 0)
      {
        v20 = __p[0];
      }

      NSLog(&cfstr_UnableToInferA.isa, v20);
      goto LABEL_62;
    }

    if (pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements(a1) == *(a1 + 88))
    {
      MEMORY[0x23EE7ED20](&v25, "constant");
    }

    else if (pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements(a1) == *(a1 + 88) * v14)
    {
      MEMORY[0x23EE7ED20](&v25, "vertex");
    }

    else if (pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements(a1) == *(a1 + 88) * v15)
    {
      MEMORY[0x23EE7ED20](&v25, "uniform");
    }

    else
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements(a1) != *(a1 + 88) * v16)
      {
        goto LABEL_65;
      }

      MEMORY[0x23EE7ED20](&v25, "faceVarying");
    }

    if (&v25 == v5)
    {
      if ((v25 & 7) != 0)
      {
        atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      if ((*v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      *v5 = v25;
    }

    v19 = __p;
    if (v22 < 0)
    {
      v19 = __p[0];
    }

    NSLog(&cfstr_InferringAttri_0.isa, v19);
    goto LABEL_62;
  }
}

void sub_239E628C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_239E62960(uint64_t a1, void *a2)
{
  if ((*(a1 + 56) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = (*(a1 + 56) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  __dst[1] = 0;
  v50 = 0;
  __dst[0] = 0;
  if (*(EmptyString + 23) < 0)
  {
    sub_239E5BAE0(__dst, *EmptyString, *(EmptyString + 8));
  }

  else
  {
    v5 = *EmptyString;
    v50 = *(EmptyString + 16);
    *__dst = v5;
  }

  v6 = a2[1];
  if (a2[2] == v6 || !*(v6 + 1))
  {
    v12 = 0;
    goto LABEL_71;
  }

  NumElements = pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements(v6);
  v8 = NumElements;
  v9 = a2[14];
  v10 = a2[19];
  __p[0] = 0;
  __p[1] = 0;
  v48 = 0;
  if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v11 = (*a2 & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    v11 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(NumElements);
  }

  if (*(v11 + 23) < 0)
  {
    sub_239E5BAE0(__p, *v11, *(v11 + 8));
  }

  else
  {
    v13 = *v11;
    v48 = *(v11 + 16);
    *__p = v13;
  }

  MEMORY[0x23EE7ED20](&v46, "constant");
  v14 = v46 ^ *(a1 + 80);
  if ((v46 & 7) != 0)
  {
    atomic_fetch_add_explicit((v46 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v14 <= 7)
  {
    if (pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements(a1) != *(a1 + 88))
    {
      v15 = SHIBYTE(v48);
      v16 = __p[0];
      v17 = SHIBYTE(v50);
      v18 = __dst[0];
      v19 = pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements(a1);
      if (v17 >= 0)
      {
        v20 = __dst;
      }

      else
      {
        v20 = v18;
      }

      if (v15 >= 0)
      {
        v21 = __p;
      }

      else
      {
        v21 = v16;
      }

      NSLog(&cfstr_WarningSAttrib.isa, v21, v20, v19, *(a1 + 88));
LABEL_57:
      v12 = 0;
      goto LABEL_69;
    }

    goto LABEL_68;
  }

  MEMORY[0x23EE7ED20](&v46, "vertex");
  v22 = v46 ^ *(a1 + 80);
  if ((v46 & 7) != 0)
  {
    atomic_fetch_add_explicit((v46 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v22 > 7)
  {
    MEMORY[0x23EE7ED20](&v46, "uniform");
    v26 = v46 ^ *(a1 + 80);
    if ((v46 & 7) != 0)
    {
      atomic_fetch_add_explicit((v46 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v26 > 7)
    {
      MEMORY[0x23EE7ED20](&v46, "faceVarying");
      v30 = v46 ^ *(a1 + 80);
      if ((v46 & 7) != 0)
      {
        atomic_fetch_add_explicit((v46 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (v30 > 7)
      {
        v41 = __p;
        if (v48 < 0)
        {
          v41 = __p[0];
        }

        v42 = __dst;
        if (v50 < 0)
        {
          v42 = __dst[0];
        }

        NSLog(&cfstr_WarningSAttrib_6.isa, v41, v42);
        goto LABEL_57;
      }

      v31 = *(a1 + 16);
      if (v31)
      {
        if (v31 != v10)
        {
          v32 = __p[0];
          if (v48 >= 0)
          {
            v32 = __p;
          }

          v33 = __dst[0];
          if (v50 >= 0)
          {
            v33 = __dst;
          }

          NSLog(&cfstr_WarningSAttrib_4.isa, v32, v33, v31, v10);
          goto LABEL_57;
        }

        goto LABEL_68;
      }

      v34 = (a1 + 88);
      if (pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements(a1) == *(a1 + 88) * v10)
      {
        goto LABEL_68;
      }

      v35 = HIBYTE(v48);
      v36 = __p[0];
      v37 = HIBYTE(v50);
      v38 = __dst[0];
      v39 = pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements(a1);
      v40 = @"Warning: %s: attribute %s is face varying and not indexed, but the attribute buffer (%lu) is not the same size as mesh's face vertex count (%d) * attribute's element size (%d). \n";
      v8 = v10;
    }

    else
    {
      v27 = *(a1 + 16);
      if (v27)
      {
        if (v27 != v9)
        {
          v28 = __p[0];
          if (v48 >= 0)
          {
            v28 = __p;
          }

          v29 = __dst[0];
          if (v50 >= 0)
          {
            v29 = __dst;
          }

          NSLog(&cfstr_WarningSAttrib_2.isa, v28, v29, v27, v9);
          goto LABEL_57;
        }

        goto LABEL_68;
      }

      v34 = (a1 + 88);
      if (pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements(a1) == *(a1 + 88) * v9)
      {
        goto LABEL_68;
      }

      v35 = HIBYTE(v48);
      v36 = __p[0];
      v37 = HIBYTE(v50);
      v38 = __dst[0];
      v39 = pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements(a1);
      v40 = @"Warning: %s: attribute %s is uniform varying and not indexed, but the attribute buffer (%lu) is not the same size as the mesh's face count (%d) * attribute's element size (%d). \n";
      v8 = v9;
    }

LABEL_75:
    v44 = __dst;
    if (v37 < 0)
    {
      v44 = v38;
    }

    v45 = __p;
    if (v35 < 0)
    {
      v45 = v36;
    }

    NSLog(&v40->isa, v45, v44, v39, v8, *v34);
    goto LABEL_57;
  }

  v23 = *(a1 + 16);
  if (!v23)
  {
    v34 = (a1 + 88);
    if (pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements(a1) == *(a1 + 88) * v8)
    {
      goto LABEL_68;
    }

    v35 = HIBYTE(v48);
    v36 = __p[0];
    v37 = HIBYTE(v50);
    v38 = __dst[0];
    v39 = pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements(a1);
    v40 = @"Warning: %s: attribute %s is vertex varying and not indexed, but the attribute buffer (%lu) is not the same size as the mesh's vertex count (%d) * attribute's element size (%d). \n";
    goto LABEL_75;
  }

  if (v23 != v8)
  {
    v24 = __p[0];
    if (v48 >= 0)
    {
      v24 = __p;
    }

    v25 = __dst[0];
    if (v50 >= 0)
    {
      v25 = __dst;
    }

    NSLog(&cfstr_WarningSAttrib_0.isa, v24, v25, v23, v8);
    goto LABEL_57;
  }

LABEL_68:
  v12 = 1;
LABEL_69:
  if (SHIBYTE(v48) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_71:
  if (SHIBYTE(v50) < 0)
  {
    operator delete(__dst[0]);
  }

  return v12;
}

void sub_239E62DE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_239E62E30(pxrInternal__aapl__pxrReserved__::VtValue *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return 1;
  }

  v3 = *(this + 6);
  v4 = 4 * v1;
  while (1)
  {
    v5 = *v3;
    NumElements = pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements(this);
    if (v5 < 0 || v5 >= NumElements / *(this + 22))
    {
      break;
    }

    ++v3;
    v4 -= 4;
    if (!v4)
    {
      return 1;
    }
  }

  if ((*(this + 7) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = (*(this + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(NumElements);
  }

  if (*(EmptyString + 23) < 0)
  {
    EmptyString = *EmptyString;
  }

  NSLog(&cfstr_SAttributeHasI.isa, EmptyString);
  return 0;
}

uint64_t sub_239E62EE8(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_239E62F48(a1, a2);
  }

  else
  {
    sub_239E6307C(a1, a1[1], a2);
    result = v3 + 96;
    a1[1] = v3 + 96;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_239E62F48(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    sub_239E797B4();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_239E5FA00(a1, v6);
  }

  v13 = 0;
  v14 = 96 * v2;
  sub_239E6307C(a1, (96 * v2), a2);
  v15 = 96 * v2 + 96;
  v7 = a1[1];
  v8 = 96 * v2 + *a1 - v7;
  sub_239E5FAAC(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_239E5FDA4(&v13);
  return v12;
}

void sub_239E63068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_239E5FDA4(va);
  _Unwind_Resume(a1);
}

void *sub_239E6307C(uint64_t a1, void *a2, uint64_t a3)
{
  result = sub_239E5F7D4(a2, a3);
  v5 = *(a3 + 32);
  *(result + 1) = *(a3 + 16);
  *(result + 2) = v5;
  v6 = *(a3 + 48);
  result[6] = v6;
  if (v6)
  {
    v7 = (v6 - 16);
    if (result[5])
    {
      v7 = result[5];
    }

    atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
  }

  v8 = *(a3 + 56);
  result[7] = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    result[7] &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *(a3 + 64);
  result[8] = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    result[8] &= 0xFFFFFFFFFFFFFFF8;
  }

  result[9] = *(a3 + 72);
  v10 = *(a3 + 80);
  result[10] = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    result[10] &= 0xFFFFFFFFFFFFFFF8;
  }

  *(result + 22) = *(a3 + 88);
  return result;
}

uint64_t sub_239E63168(uint64_t a1, void *a2)
{
  v3 = a2[10];
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = a2[8];
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = a2[7];
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_239E56C80((a2 + 2));

  return sub_239E5B240(a2);
}

void *sub_239E631F0(uint64_t **a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = 0;
  result = *sub_239E5B718(a1, &v6, a2);
  if (!result)
  {
    sub_239E63294();
  }

  return result;
}

void sub_239E63330(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_239E95480(v3, v2);
  _Unwind_Resume(a1);
}

void sub_239E6334C(const pxrInternal__aapl__pxrReserved__::UsdPrim *a1, double *a2, void *a3)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v16 = 0;
  v17 = 0;
  v18 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
  v22 = 0;
  v19 = (MEMORY[0x277D867B8] + 16);
  pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::GetMaterialBindSubsets(&v16, &v19);
  MEMORY[0x23EE7EBE0](&v19);
  v6 = v16;
  v5 = v17;
  if (v17 == v16)
  {
    v12 = 0uLL;
    v13 = 0;
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
    v22 = 0;
    v19 = (MEMORY[0x277D867B8] + 16);
    if (!atomic_load(MEMORY[0x277D86568]))
    {
      sub_239EF33AC(MEMORY[0x277D86568]);
    }

    pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::ComputeBoundMaterial();
    MEMORY[0x23EE7EBE0](&v19);
    sub_239E5815C(&v19, &v12 + 1, &v13);
    v11 = sub_239E5E5B4(&v19);
    if ((v22 & 7) != 0)
    {
      atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_239E5B574(&v21);
    if (v20)
    {
      sub_239E5E560(v20);
    }

    MEMORY[0x23EE7E910](&v12);
    if ((v11 & 1) == 0)
    {
LABEL_22:
      v15 = 0;
      v23 = 0;
      v24 = 0;
      sub_239EBD5D8(a1, &v15, &v23, *a2);
    }
  }

  else
  {
    v7 = MEMORY[0x277D86568];
    while (1)
    {
      v23 = 0;
      v24 = 0;
      v25[0] = 0;
      sub_239E5815C(&v12, (v6 + 8), (v6 + 16));
      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
      v22 = 0;
      v19 = (MEMORY[0x277D867B8] + 16);
      if (!atomic_load(v7))
      {
        sub_239EF33AC(v7);
      }

      pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::ComputeBoundMaterial();
      MEMORY[0x23EE7EBE0](&v19);
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      sub_239E5B574(&v13);
      if (*(&v12 + 1))
      {
        sub_239E5E560(*(&v12 + 1));
      }

      sub_239E5815C(&v19, &v24, v25);
      v9 = sub_239E5E5B4(&v19);
      if ((v22 & 7) != 0)
      {
        atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      sub_239E5B574(&v21);
      if (v20)
      {
        sub_239E5E560(v20);
      }

      MEMORY[0x23EE7E910](&v23);
      if (v9)
      {
        break;
      }

      v6 += 24;
      if (v6 == v5)
      {
        goto LABEL_22;
      }
    }
  }

  v19 = &v16;
  sub_239E61B58(&v19);
}

void sub_239E63864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, void **a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  if ((a31 & 7) != 0)
  {
    atomic_fetch_add_explicit((a31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a30 & 7) != 0)
  {
    atomic_fetch_add_explicit((a30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_239E56C80(v31 + 16);
  sub_239E5B240(&a23);
  sub_239E56C80(&a13);
  sub_239E5B240(v32 - 120);
  if ((a19 & 7) != 0)
  {
    atomic_fetch_add_explicit((a19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  a23 = &a20;
  sub_239E61B58(&a23);
  _Unwind_Resume(a1);
}

uint64_t sub_239E639D8(pxrInternal__aapl__pxrReserved__::UsdPrim *a1, pxrInternal__aapl__pxrReserved__::UsdGeomMesh *a2, double *a3, uint64_t a4)
{
  MEMORY[0x23EE7ED20](&v11, "cornerIndices");
  HasAttribute = pxrInternal__aapl__pxrReserved__::UsdPrim::HasAttribute(a1, &v11);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (HasAttribute)
  {
    pxrInternal__aapl__pxrReserved__::UsdGeomMesh::GetCornerIndicesAttr(&v11, a2);
    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<int>>();
  }

  MEMORY[0x23EE7ED20](&v11, "cornerSharpnesses");
  v7 = pxrInternal__aapl__pxrReserved__::UsdPrim::HasAttribute(a1, &v11);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v7)
  {
    pxrInternal__aapl__pxrReserved__::UsdGeomMesh::GetCornerSharpnessesAttr(&v11, a2);
    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<float>>();
  }

  MEMORY[0x23EE7ED20](&v11, "creaseIndices");
  v8 = pxrInternal__aapl__pxrReserved__::UsdPrim::HasAttribute(a1, &v11);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v8)
  {
    pxrInternal__aapl__pxrReserved__::UsdGeomMesh::GetCreaseIndicesAttr(&v11, a2);
    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<int>>();
  }

  MEMORY[0x23EE7ED20](&v11, "creaseLengths");
  v9 = pxrInternal__aapl__pxrReserved__::UsdPrim::HasAttribute(a1, &v11);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v9)
  {
    pxrInternal__aapl__pxrReserved__::UsdGeomMesh::GetCreaseLengthsAttr(&v11, a2);
    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<int>>();
  }

  MEMORY[0x23EE7ED20](&v11, "creaseSharpnesses");
  result = pxrInternal__aapl__pxrReserved__::UsdPrim::HasAttribute(a1, &v11);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (result)
  {
    pxrInternal__aapl__pxrReserved__::UsdGeomMesh::GetCreaseSharpnessesAttr(&v11, a2);
    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<float>>();
  }

  return result;
}

uint64_t sub_239E63D40(const pxrInternal__aapl__pxrReserved__::UsdPrim *a1, double *a2, void *a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v36 = 0u;
  v37 = 0;
  LODWORD(v36) = 4;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  v38 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v30 = 0u;
  v31 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
  v32 = 0;
  *&v30 = MEMORY[0x277D86780] + 16;
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  pxrInternal__aapl__pxrReserved__::UsdSkelBindingAPI::GetJointIndicesAttr(&v22, &v30);
  v21 = 0u;
  v19 = 0u;
  v20 = 0u;
  MEMORY[0x23EE7E7B0](&v19, &v22);
  ElementSize = pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetElementSize(&v19);
  v13[0] = 0;
  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetInterpolation(v13, &v19);
  v17 = 0u;
  v18 = 0u;
  pxrInternal__aapl__pxrReserved__::UsdSkelBindingAPI::GetJointWeightsAttr(&v17, &v30);
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  MEMORY[0x23EE7E7B0](&v14, &v17);
  v5 = pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetElementSize(&v14);
  v40.__vftable = 0;
  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetInterpolation(&v40, &v14);
  if (ElementSize >= 1 && ElementSize == v5)
  {
    v39.__vftable = 0;
    v39.__type_name = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttribute::Get();
    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<float>>();
  }

  if ((v40.__vftable & 7) != 0)
  {
    atomic_fetch_add_explicit((v40.__vftable & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((BYTE8(v15) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v15 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574(&v15);
  if (*(&v14 + 1))
  {
    sub_239E5E560(*(&v14 + 1));
  }

  if ((BYTE8(v18) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v18 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574(&v18);
  if (*(&v17 + 1))
  {
    sub_239E5E560(*(&v17 + 1));
  }

  if ((v13[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v13[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v21 & 7) != 0)
  {
    atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((BYTE8(v20) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v20 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574(&v20);
  if (*(&v19 + 1))
  {
    sub_239E5E560(*(&v19 + 1));
  }

  if ((BYTE8(v23) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v23 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574(&v23);
  if (*(&v22 + 1))
  {
    sub_239E5E560(*(&v22 + 1));
  }

  sub_239E56C80(&v24);
  sub_239E56C80(&v27);
  *&v21 = 0;
  v19 = 0u;
  v20 = 0u;
  *&v16 = 0;
  v14 = 0u;
  v15 = 0u;
  memset(v13, 0, sizeof(v13));
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
  v13[0] = MEMORY[0x277D867B0] + 16;
  pxrInternal__aapl__pxrReserved__::UsdDeformersDeformableMesh::GetSkinTargetJointsRel(&v41, v13);
  LODWORD(v36) = v41;
  if (*(&v36 + 1))
  {
    sub_239E5E560(*(&v36 + 1));
  }

  *(&v36 + 1) = v42;
  v42 = 0;
  sub_239E650AC(&v37, v43);
  sub_239E65104(&v37 + 4, v43 + 1);
  if ((v38 & 7) != 0)
  {
    atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v38 = *(&v43[0] + 1);
  *(&v43[0] + 1) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574(v43);
  if (v42)
  {
    sub_239E5E560(v42);
  }

  if (pxrInternal__aapl__pxrReserved__::UsdRelationship::GetForwardedTargets() && v33 != v34)
  {
    v27 = 0u;
    v28 = 0u;
    pxrInternal__aapl__pxrReserved__::UsdDeformersDeformableMesh::GetSkinJointIndicesAttr(&v27, v13);
    v39.__vftable = 0;
    v39.__type_name = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttribute::Get();
    v6 = sub_239EF05A8(&v39);
    v7 = sub_239EC70B4(v6);
    sub_239EF0634(&v19, v7);
    v24 = 0u;
    v25 = 0u;
    pxrInternal__aapl__pxrReserved__::UsdDeformersDeformableMesh::GetSkinJointWeightsAttr(&v24, v13);
    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<float>>();
  }

  v27 = 0u;
  v28 = 0u;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
  *(&v28 + 1) = 0;
  *&v27 = MEMORY[0x277D867C0] + 16;
  pxrInternal__aapl__pxrReserved__::UsdDeformersSkinDeformerAPI::GetSkinTargetJointsRel(&v41, &v27);
  LODWORD(v36) = v41;
  if (*(&v36 + 1))
  {
    sub_239E5E560(*(&v36 + 1));
  }

  *(&v36 + 1) = v42;
  v42 = 0;
  sub_239E650AC(&v37, v43);
  sub_239E65104(&v37 + 4, v43 + 1);
  if ((v38 & 7) != 0)
  {
    atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v38 = *(&v43[0] + 1);
  *(&v43[0] + 1) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574(v43);
  if (v42)
  {
    sub_239E5E560(v42);
  }

  if (pxrInternal__aapl__pxrReserved__::UsdRelationship::GetForwardedTargets() && v33 != v34)
  {
    v24 = 0u;
    v25 = 0u;
    pxrInternal__aapl__pxrReserved__::UsdDeformersSkinDeformerAPI::GetSkinJointIndicesAttr(&v24, &v27);
    v40.__vftable = 0;
    v40.__type_name = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttribute::Get();
    v8 = sub_239EF05A8(&v40);
    v9 = sub_239EC70B4(v8);
    sub_239EF0634(&v19, v9);
    v22 = 0u;
    v23 = 0u;
    pxrInternal__aapl__pxrReserved__::UsdDeformersSkinDeformerAPI::GetSkinJointWeightsAttr(&v22, &v27);
    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<float>>();
  }

  if (v19)
  {
    if (v19 == v14)
    {
      v10 = a3[1];
      if (a3[2] != v10)
      {
        if (*(v10 + 1))
        {
          NumElements = pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements(v10);
          if (v19 / NumElements * NumElements == v19)
          {
            v41 = 0;
            memset(v43, 0, sizeof(v43));
            v42 = &off_284D156C8;
            sub_239EC8A68(&v41, &v19);
          }
        }
      }
    }
  }

  MEMORY[0x23EE7EC00](&v27);
  MEMORY[0x23EE7EBB0](v13);
  sub_239E56C80(&v14);
  sub_239E56C80(&v19);
  MEMORY[0x23EE7E9E0](&v30);
  v41 = &v33;
  sub_239E65160(&v41);
  if ((v38 & 7) != 0)
  {
    atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574(&v37);
  result = *(&v36 + 1);
  if (*(&v36 + 1))
  {
    return sub_239E5E560(*(&v36 + 1));
  }

  return result;
}

void sub_239E64C94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char *a63)
{
  v66 = *(v64 - 128);
  if ((v66 & 7) != 0)
  {
    atomic_fetch_add_explicit((v66 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v67 = *(v64 - 136);
  if ((v67 & 7) != 0)
  {
    atomic_fetch_add_explicit((v67 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_239E56C80(v63 + 16);
  sub_239E5B240(v64 - 192);
  sub_239EB35C8(&a63);
  sub_239E5B240(&a57);
  if ((a61 & 7) != 0)
  {
    atomic_fetch_add_explicit((a61 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_239EBE3A8(&a13);
  sub_239E85E5C(&a19);
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_239EBE3A8(&a23);
  sub_239E85E5C(&a29);
  sub_239E56C80(&a33);
  sub_239E56C80(&a39);
  MEMORY[0x23EE7E9E0](&a45);
  a63 = &a50;
  sub_239E65160(&a63);
  sub_239EF054C(&a53);
  _Unwind_Resume(a1);
}

uint64_t sub_239E650AC(uint64_t a1, int *a2)
{
  v4 = *a2;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap();
  sub_239E5B574(&v4);
  return a1;
}

uint64_t sub_239E65104(uint64_t a1, int *a2)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return a1;
}

void sub_239E65160(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 8;
        sub_239EF2C50(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_239E651E8(pxrInternal__aapl__pxrReserved__::UsdSkelBindingAPI *a1, uint64_t a2, double *a3, double a4)
{
  pxrInternal__aapl__pxrReserved__::UsdSkelBindingAPI::_GetStaticTfType(a1);
  pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
  if (pxrInternal__aapl__pxrReserved__::UsdPrim::_HasAPI())
  {
    memset(v11, 0, sizeof(v11));
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
    *&v11[0] = MEMORY[0x277D86780] + 16;
    v9 = 0u;
    v10 = 0u;
    pxrInternal__aapl__pxrReserved__::UsdSkelBindingAPI::GetBlendShapeTargetsRel(&v9, v11);
    if (sub_239E5E5B4(&v9))
    {
      v7 = 0uLL;
      *&v8 = 0;
      pxrInternal__aapl__pxrReserved__::UsdRelationship::GetForwardedTargets();
      *&v6 = &v7;
      sub_239E65160(&v6);
    }

    if ((BYTE8(v10) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v10 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_239E5B574(&v10);
    if (*(&v9 + 1))
    {
      sub_239E5E560(*(&v9 + 1));
    }

    return MEMORY[0x23EE7E9E0](v11);
  }

  else
  {
    v15[1] = 0;
    v15[2] = 0;
    v5 = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
    v15[0] = MEMORY[0x277D867B0] + 16;
    v13 = 0u;
    v14 = 0u;
    pxrInternal__aapl__pxrReserved__::UsdDeformersDeformableMesh::GetMorphTargetBlendShapesRel(&v13, v5);
    memset(v12, 0, sizeof(v12));
    pxrInternal__aapl__pxrReserved__::UsdRelationship::GetForwardedTargets();
    *&v11[0] = v12;
    sub_239E65160(v11);
    if ((BYTE8(v14) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v14 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_239E5B574(&v14);
    if (*(&v13 + 1))
    {
      sub_239E5E560(*(&v13 + 1));
    }

    return MEMORY[0x23EE7EBB0](v15);
  }
}

void sub_239E65868(const pxrInternal__aapl__pxrReserved__::UsdPrim *a1, void *a2, void *a3, uint64_t a4, double *a5, uint64_t a6, uint64_t a7)
{
  a2;
  memset(v10, 0, 24);
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
  v8[3] = 0;
  v8[0] = MEMORY[0x277D867B8] + 16;
  pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::GetMaterialBindSubsets(v10, v8);
  MEMORY[0x23EE7EBE0](v8);
  v9 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
  *&v7 = MEMORY[0x277D866C8] + 16;
  pxrInternal__aapl__pxrReserved__::UsdGeomGprim::GetDoubleSidedAttr(v8, &v7);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<BOOL>();
}

void sub_239E660F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
{
  sub_239EF16A0(&a28);

  MEMORY[0x23EE7E910](&a20);
  sub_239ED1984(&a23);
  sub_239E56C80(&a15);
  a28 = (v29 - 120);
  sub_239E61B58(&a28);

  _Unwind_Resume(a1);
}

MDLMaterial *sub_239E662D4(const pxrInternal__aapl__pxrReserved__::UsdPrim *a1, void *a2, uint64_t a3, double *a4, float *a5, uint64_t a6)
{
  v347 = *MEMORY[0x277D85DE8];
  v332 = a2;
  if ((sub_239E5E5B4(a1) & 1) == 0)
  {
    v20 = [MDLMaterial alloc];
    v21 = objc_opt_new();
    v31 = objc_msgSend_initWithName_scatteringFunction_(v20, v22, @"material", v21, v27, v28, v29, v30, v23, v24, v25, v26);

    goto LABEL_75;
  }

  v343[1] = 0;
  v343[2] = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
  v343[0] = MEMORY[0x277D86758] + 16;
  v7 = MEMORY[0x277CCACA8];
  v14 = *sub_239E5DFB4(a1) & 0xFFFFFFFFFFFFFFF8;
  if (v14)
  {
    v19 = (v14 + 16);
    if (*(v14 + 39) < 0)
    {
      objc_msgSend_stringWithUTF8String_(v7, v8, *v19, v9, v15, v16, v17, v18, v10, v11, v12, v13);
      goto LABEL_8;
    }
  }

  else
  {
    v19 = "";
  }

  objc_msgSend_stringWithUTF8String_(v7, v8, v19, v9, v15, v16, v17, v18, v10, v11, v12, v13);
  v325 = LABEL_8:;
  pxrInternal__aapl__pxrReserved__::UsdShadeNodeGraph::GetOutputs(&v341, v343);
  v32 = v341;
  v33 = v342;
  while (1)
  {
    if (v32 == v33)
    {
      goto LABEL_73;
    }

    HasConnectedSource = pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI::HasConnectedSource();
    if (HasConnectedSource)
    {
      break;
    }

    v32 += 32;
  }

  v35 = v341;
  v326 = v342;
  if (v342 == v341)
  {
    v36 = 0;
  }

  else
  {
    v36 = HasConnectedSource;
  }

  if ((v36 & 1) == 0)
  {
LABEL_73:
    v31 = sub_239EF121C(a1, v332, v343, a5);
    goto LABEL_74;
  }

  v37 = 0;
  v324 = vdupq_n_s32(0x3E3851ECu);
  __asm { FMOV            V0.4S, #1.0 }

  v333 = _Q0;
  do
  {
    if (pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI::HasConnectedSource())
    {
      v339 = 0u;
      v340 = 0u;
      v344.i32[0] = 1;
      v344.i64[1] = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
      v346 = 0;
      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
      *(&v340 + 1) = 0;
      *&v339 = MEMORY[0x277D867A8] + 16;
      if ((v346 & 7) != 0)
      {
        atomic_fetch_add_explicit((v346 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      sub_239E5B574(&v345);
      if (v344.i64[1])
      {
        sub_239E5E560(v344.i64[1]);
      }

      v338 = 0;
      v337 = 0;
      pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI::GetConnectedSource();
      MEMORY[0x23EE7ED20](&v344, "surface");
      v43 = v338;
      v44 = v344.i64[0];
      if ((v344.i8[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v344.i64[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v44 ^ v43) <= 7)
      {
        v336 = 0;
        pxrInternal__aapl__pxrReserved__::UsdShadeShader::UsdShadeShader();
        pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetIdAttr(&v344, v335);
        v46 = sub_239E5E5B4(&v344);
        if ((v346 & 7) != 0)
        {
          atomic_fetch_add_explicit((v346 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        sub_239E5B574(&v345);
        if (v344.i64[1])
        {
          sub_239E5E560(v344.i64[1]);
        }

        MEMORY[0x23EE7E820](v335);
        if (v46)
        {
          pxrInternal__aapl__pxrReserved__::UsdShadeShader::UsdShadeShader();
          pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetIdAttr(&v344, v335);
          pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::TfToken>();
        }

        MEMORY[0x23EE7ED20](&v344, "PxrPreviewSurface");
        v47 = v344.i64[0];
        if ((v344.i64[0] ^ v336) >= 8)
        {
          MEMORY[0x23EE7ED20](v335, "UsdPreviewSurface");
          v48 = (v335[0] ^ v336) < 8;
          if ((v335[0] & 7) != 0)
          {
            atomic_fetch_add_explicit((v335[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          v47 = v344.i64[0];
        }

        else
        {
          v48 = 1;
        }

        if ((v47 & 7) != 0)
        {
          atomic_fetch_add_explicit((v47 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (v48)
        {
          v49 = objc_opt_new();
          v61 = objc_msgSend_baseColor(v49, v50, v51, v52, v57, v58, v59, v60, v53, v54, v55, v56);
          sub_239EF1014(v61, a6, v324);

          v73 = objc_msgSend_emission(v49, v62, v63, v64, v69, v70, v71, v72, v65, v66, v67, v68);
          sub_239EF1014(v73, a6, 0);

          v85 = objc_msgSend_metallic(v49, v74, v75, v76, v81, v82, v83, v84, v77, v78, v79, v80);
          v86.n128_u64[0] = 0;
          objc_msgSend_setFloatValue_(v85, v87, v88, v89, v86, v94, v95, v96, v90, v91, v92, v93);

          v108 = objc_msgSend_roughness(v49, v97, v98, v99, v104, v105, v106, v107, v100, v101, v102, v103);
          v109.n128_u32[0] = 0.5;
          objc_msgSend_setFloatValue_(v108, v110, v111, v112, v109, v117, v118, v119, v113, v114, v115, v116);

          v131 = objc_msgSend_clearcoat(v49, v120, v121, v122, v127, v128, v129, v130, v123, v124, v125, v126);
          v132.n128_u64[0] = 0;
          objc_msgSend_setFloatValue_(v131, v133, v134, v135, v132, v140, v141, v142, v136, v137, v138, v139);

          v154 = objc_msgSend_clearcoatGloss(v49, v143, v144, v145, v150, v151, v152, v153, v146, v147, v148, v149);
          v155.n128_u32[0] = 1065185444;
          objc_msgSend_setFloatValue_(v154, v156, v157, v158, v155, v163, v164, v165, v159, v160, v161, v162);

          v177 = objc_msgSend_normal(v49, v166, v167, v168, v173, v174, v175, v176, v169, v170, v171, v172);
          objc_msgSend_setFloat3Value_(v177, v178, v179, v180, xmmword_239F9C070, v185, v186, v187, v181, v182, v183, v184);

          v188 = [MDLMaterial alloc];
          v198 = objc_msgSend_initWithName_scatteringFunction_(v188, v189, v325, v49, v194, v195, v196, v197, v190, v191, v192, v193);
        }

        else
        {
          v199 = [MDLMaterial alloc];
          v49 = objc_opt_new();
          v198 = objc_msgSend_initWithName_scatteringFunction_(v199, v200, v325, v49, v205, v206, v207, v208, v201, v202, v203, v204);
        }

        v45 = v198;

        pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI::GetInputs(v335, &v339);
        v209 = v335[0];
        v210 = v335[1];
        while (v209 != v210)
        {
          v334 = 0;
          pxrInternal__aapl__pxrReserved__::UsdShadeInput::GetBaseName(&v334, v209);
          if ((atomic_load_explicit(&qword_280BC3A30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280BC3A30))
          {
            operator new();
          }

          v211 = sub_239E69748(qword_280BC3A28, &v334);
          if ((qword_280BC3A28 + 8) != v211)
          {
            v222 = *(v211 + 5);
            v223 = MEMORY[0x277CCACA8];
            if ((v334 & 0xFFFFFFFFFFFFFFF8) != 0)
            {
              EmptyString = (v334 & 0xFFFFFFFFFFFFFFF8) + 16;
            }

            else
            {
              EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v211);
            }

            if (*(EmptyString + 23) < 0)
            {
              EmptyString = *EmptyString;
            }

            v225 = objc_msgSend_stringWithUTF8String_(v223, v212, EmptyString, v213, v218, v219, v220, v221, v214, v215, v216, v217);
            v236 = objc_msgSend_propertyNamed_(v45, v226, v225, v227, v232, v233, v234, v235, v228, v229, v230, v231);
            v248 = v236;
            if (!v236 || objc_msgSend_semantic(v236, v237, v238, v239, v244, v245, v246, v247, v240, v241, v242, v243) != v222)
            {
              v249 = [MDLMaterialProperty alloc];
              v259 = objc_msgSend_initWithName_semantic_(v249, v250, v225, v222, v255, v256, v257, v258, v251, v252, v253, v254);

              v248 = v259;
            }

            v344 = v333;
            sub_239E698A8(v248, v209, v332, a3, a4, a5, &v344, a6);
            objc_msgSend_setProperty_(v45, v260, v248, v261, v266, v267, v268, v269, v262, v263, v264, v265);
            if (v222 == 20)
            {
              v327 = v344;
              v278 = vceqq_f32(v344, v333);
              v278.n128_u32[0] = vminvq_u32(v278);
              if ((v278.n128_u32[0] & 0x80000000) == 0)
              {
                v279 = objc_msgSend_propertyNamed_(v45, v270, @"displacementscale", v271, v278, v344, v276, v277, v272, v273, v274, v275);
                v291 = v279;
                if (!v279 || objc_msgSend_semantic(v279, v280, v281, v282, v287, v288, v289, v290, v283, v284, v285, v286) != 21)
                {
                  v302 = [MDLMaterialProperty alloc];
                  v312 = objc_msgSend_initWithName_semantic_(v302, v303, @"displacementscale", 21, v308, v309, v310, v311, v304, v305, v306, v307);

                  v291 = v312;
                }

                objc_msgSend_setFloat4Value_(v291, v292, v293, v294, v327, v299, v300, v301, v295, v296, v297, v298);
                objc_msgSend_setProperty_(v45, v313, v291, v314, v319, v320, v321, v322, v315, v316, v317, v318);
              }
            }
          }

          if ((v334 & 7) != 0)
          {
            atomic_fetch_add_explicit((v334 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          v209 = (v209 + 32);
        }

        v344.i64[0] = v335;
        sub_239E61AB0(&v344);
        if ((v336 & 7) != 0)
        {
          atomic_fetch_add_explicit((v336 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      else
      {
        v45 = v37;
      }

      if ((v338 & 7) != 0)
      {
        atomic_fetch_add_explicit((v338 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      MEMORY[0x23EE7EB40](&v339);
      v37 = v45;
    }

    v35 += 32;
  }

  while (v35 != v326);
  v31 = v37;

LABEL_74:
  v344.i64[0] = &v341;
  sub_239E61B04(&v344);

  MEMORY[0x23EE7E910](v343);
LABEL_75:

  return v31;
}

void sub_239E66EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v71 = 224;
  while (1)
  {
    v72 = *(&STACK[0x210] + v71);
    if ((v72 & 7) != 0)
    {
      atomic_fetch_add_explicit((v72 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v71 -= 16;
    if (v71 == -16)
    {
      if ((a43 & 7) != 0)
      {
        atomic_fetch_add_explicit((a43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a44 & 7) != 0)
      {
        atomic_fetch_add_explicit((a44 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a45 & 7) != 0)
      {
        atomic_fetch_add_explicit((a45 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a46 & 7) != 0)
      {
        atomic_fetch_add_explicit((a46 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a47 & 7) != 0)
      {
        atomic_fetch_add_explicit((a47 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a48 & 7) != 0)
      {
        atomic_fetch_add_explicit((a48 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a49 & 7) != 0)
      {
        atomic_fetch_add_explicit((a49 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a50 & 7) != 0)
      {
        atomic_fetch_add_explicit((a50 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a51 & 7) != 0)
      {
        atomic_fetch_add_explicit((a51 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a52 & 7) != 0)
      {
        atomic_fetch_add_explicit((a52 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a53 & 7) != 0)
      {
        atomic_fetch_add_explicit((a53 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a54 & 7) != 0)
      {
        atomic_fetch_add_explicit((a54 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a55 & 7) != 0)
      {
        atomic_fetch_add_explicit((a55 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a56 & 7) != 0)
      {
        atomic_fetch_add_explicit((a56 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a57 & 7) != 0)
      {
        atomic_fetch_add_explicit((a57 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      MEMORY[0x23EE802C0](v67, 0x1020C4062D53EE8, a3, a4, a5, a6, a7, a8);
      __cxa_guard_abort(&qword_280BC3A30);
      if ((a58 & 7) != 0)
      {
        atomic_fetch_add_explicit((a58 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v68[16] = &a59;
      sub_239E61AB0(&STACK[0x210]);
      v73 = v68[3];
      if ((v73 & 7) != 0)
      {
        atomic_fetch_add_explicit((v73 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v74 = v68[5];
      if ((v74 & 7) != 0)
      {
        atomic_fetch_add_explicit((v74 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      MEMORY[0x23EE7EB40](&a65);

      v68[16] = &a66;
      sub_239E61B04(&STACK[0x210]);

      MEMORY[0x23EE7E910](&a67);
      _Unwind_Resume(a1);
    }
  }
}

void sub_239E67424(pxrInternal__aapl__pxrReserved__::UsdShadeShader *a1, void *a2, void *a3, uint64_t a4, double *a5, float *a6, _OWORD *a7)
{
  v161 = *MEMORY[0x277D85DE8];
  v147 = a3;
  Inputs = pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInputs(&v153, a1);
  v9 = v153;
  v10 = v154;
  while (v9 != v10)
  {
    __p[0] = 0;
    __p[1] = 0;
    v152 = 0;
    BaseName = pxrInternal__aapl__pxrReserved__::UsdShadeInput::GetBaseName(&__dst, v9);
    if ((__dst.n128_u64[0] & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      Inputs = (__dst.n128_u64[0] & 0xFFFFFFFFFFFFFFF8) + 16;
    }

    else
    {
      Inputs = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(BaseName);
    }

    if (*(Inputs + 23) < 0)
    {
      Inputs = sub_239E5BAE0(__p, *Inputs, *(Inputs + 8));
    }

    else
    {
      v12 = *Inputs;
      v152 = *(Inputs + 16);
      *__p = v12;
    }

    if ((__dst.n128_u8[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((__dst.n128_u64[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v152 < 0)
    {
      if (__p[1] == 2)
      {
        if (*__p[0] == 30325)
        {
          goto LABEL_47;
        }
      }

      else if (__p[1] == 4 && *__p[0] == 1701603686)
      {
LABEL_32:
        v155 = 0;
        v156 = 0;
        if (pxrInternal__aapl__pxrReserved__::UsdShadeInput::Get())
        {
          sub_239E681C0(v147);
          __dst = 0uLL;
          *&v160 = 0;
          v17 = sub_239E687A8(&v155);
          if (*(v17 + 47) < 0)
          {
            sub_239E5BAE0(&__dst, *(v17 + 24), *(v17 + 32));
          }

          else
          {
            v26 = *(v17 + 24);
            __dst = v26;
            *&v160 = *(v17 + 40);
          }

          if ((SBYTE7(v160) & 0x80u) == 0)
          {
            objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v18, &__dst, 4, v26, v23, v24, v25, v19, v20, v21, v22);
          }

          else
          {
            objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v18, __dst.n128_i64[0], 4, v26, v23, v24, v25, v19, v20, v21, v22);
          }
          v38 = ;
          objc_msgSend_setStringValue_(v147, v39, v38, v40, v45, v46, v47, v48, v41, v42, v43, v44);

          sub_239E6883C(a6, &__dst, &__dst);
          if (SBYTE7(v160) < 0)
          {
            operator delete(__dst.n128_u64[0]);
          }
        }

        p_dst = &v155;
        goto LABEL_111;
      }

      v16 = __p[1];
      if (__p[1] == 2)
      {
        if (*__p[0] == 29811)
        {
          goto LABEL_47;
        }

        v16 = __p[1];
      }

      if (v16 == 5)
      {
        if (*__p[0] == 1885434487 && *(__p[0] + 4) == 83)
        {
          goto LABEL_76;
        }

        if ((v152 & 0x8000000000000000) == 0)
        {
          if (HIBYTE(v152) != 5)
          {
            goto LABEL_114;
          }

LABEL_18:
          if (LODWORD(__p[0]) != 1885434487 || BYTE4(__p[0]) != 84)
          {
            v15 = __p;
            goto LABEL_68;
          }

LABEL_76:
          __dst = 0uLL;
          if (pxrInternal__aapl__pxrReserved__::UsdShadeInput::Get())
          {
            v34 = *sub_239E693F0(&__dst);
            if ((v34 & 7) != 0 && (atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
            {
              v34 &= 0xFFFFFFFFFFFFFFF8;
            }

            MEMORY[0x23EE7ED20](&v155, "repeat");
            v35 = v155;
            if ((v155 & 7) != 0)
            {
              atomic_fetch_add_explicit((v155 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v34 ^ v35) >= 8)
            {
              MEMORY[0x23EE7ED20](&v155, "clamp");
              v37 = v155;
              if ((v155 & 7) != 0)
              {
                atomic_fetch_add_explicit((v155 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              if ((v34 ^ v37) >= 8)
              {
                MEMORY[0x23EE7ED20](&v155, "mirror");
                v50 = v155;
                if ((v155 & 7) != 0)
                {
                  atomic_fetch_add_explicit((v155 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                }

                v36 = 2 * ((v34 ^ v50) < 8);
              }

              else
              {
                v36 = 0;
              }
            }

            else
            {
              v36 = 1;
            }

            sub_239E6954C(v147);
            if ((SHIBYTE(v152) & 0x80000000) == 0)
            {
              if (SHIBYTE(v152) == 5)
              {
                v62 = __p;
                goto LABEL_103;
              }

              goto LABEL_107;
            }

            if (__p[1] != 5)
            {
              goto LABEL_107;
            }

            v62 = __p[0];
LABEL_103:
            v63 = *v62;
            v64 = *(v62 + 4);
            if (v63 == 1885434487 && v64 == 83)
            {
              v66 = objc_msgSend_textureSamplerValue(v147, v51, v52, v53, v58, v59, v60, v61, v54, v55, v56, v57);
              v78 = objc_msgSend_hardwareFilter(v66, v89, v90, v91, v96, v97, v98, v99, v92, v93, v94, v95);
              objc_msgSend_setSWrapMode_(v78, v100, v36, v101, v106, v107, v108, v109, v102, v103, v104, v105);
            }

            else
            {
LABEL_107:
              v66 = objc_msgSend_textureSamplerValue(v147, v51, v52, v53, v58, v59, v60, v61, v54, v55, v56, v57);
              v78 = objc_msgSend_hardwareFilter(v66, v67, v68, v69, v74, v75, v76, v77, v70, v71, v72, v73);
              objc_msgSend_setTWrapMode_(v78, v79, v36, v80, v85, v86, v87, v88, v81, v82, v83, v84);
            }

            if ((v34 & 7) != 0)
            {
              atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }
          }

LABEL_110:
          p_dst = &__dst;
LABEL_111:
          Inputs = sub_239E5B240(p_dst);
          goto LABEL_114;
        }
      }

      if (__p[1] == 5)
      {
        if (*__p[0] == 1885434487 && *(__p[0] + 4) == 84)
        {
          goto LABEL_76;
        }

        v15 = __p[0];
LABEL_68:
        v31 = *v15;
        v32 = *(v15 + 4);
        if (v31 != 1818321779 || v32 != 101)
        {
          goto LABEL_114;
        }

        __dst = 0uLL;
        if (pxrInternal__aapl__pxrReserved__::UsdShadeInput::Get() && sub_239E6A150(&__dst))
        {
          *a7 = *sub_239EEDEEC(&__dst);
        }

        goto LABEL_110;
      }
    }

    else
    {
      switch(HIBYTE(v152))
      {
        case 2u:
          if (LOWORD(__p[0]) == 30325 || LOWORD(__p[0]) == 29811)
          {
LABEL_47:
            Inputs = pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI::HasConnectedSource();
            if (Inputs)
            {
              __dst = 0u;
              v160 = 0u;
              LODWORD(v155) = 1;
              v156 = 0;
              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
              v158 = 0;
              pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
              *(&v160 + 1) = 0;
              __dst.n128_u64[0] = MEMORY[0x277D867A8] + 16;
              if ((v158 & 7) != 0)
              {
                atomic_fetch_add_explicit((v158 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
              sub_239E5B574(&v157);
              if (v156)
              {
                sub_239E5E560(v156);
              }

              v150 = 0;
              v149 = 0;
              pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI::GetConnectedSource();
              v28 = sub_239E5815C(&v155, &__dst.n128_i64[1], &v160);
              pxrInternal__aapl__pxrReserved__::UsdShadeShader::_GetStaticTfType(v28);
              pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
              IsA = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
              if ((v158 & 7) != 0)
              {
                atomic_fetch_add_explicit((v158 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
              sub_239E5B574(&v157);
              if (v156)
              {
                sub_239E5E560(v156);
              }

              if (IsA)
              {
                v148[1] = 0;
                v148[2] = 0;
                sub_239E5815C(&v155, &__dst.n128_i64[1], &v160);
                pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
                v148[0] = MEMORY[0x277D86708] + 16;
                if ((v158 & 7) != 0)
                {
                  atomic_fetch_add_explicit((v158 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                }

                pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                sub_239E5B574(&v157);
                if (v156)
                {
                  sub_239E5E560(v156);
                }

                pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetIdAttr(&v155, v148);
                pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::TfToken>();
              }

              Inputs = MEMORY[0x23EE7EB40](&__dst);
            }
          }

          break;
        case 4u:
          if (LODWORD(__p[0]) == 1701603686)
          {
            goto LABEL_32;
          }

          break;
        case 5u:
          if (LODWORD(__p[0]) != 1885434487 || BYTE4(__p[0]) != 83)
          {
            goto LABEL_18;
          }

          goto LABEL_76;
      }
    }

LABEL_114:
    if (SHIBYTE(v152) < 0)
    {
      operator delete(__p[0]);
    }

    v9 = (v9 + 32);
  }

  __dst = 0uLL;
  *&v160 = 0;
  if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = (*a2 & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Inputs);
  }

  if (*(EmptyString + 23) < 0)
  {
    sub_239E5BAE0(&__dst, *EmptyString, *(EmptyString + 8));
  }

  else
  {
    v111 = *EmptyString;
    *&v160 = *(EmptyString + 16);
    __dst = v111;
  }

  if (SBYTE7(v160) < 0)
  {
    if (__dst.n128_u64[1] == 1 && *__dst.n128_u64[0] == 114 || __dst.n128_u64[1] == 1 && *__dst.n128_u64[0] == 103 || __dst.n128_u64[1] == 1 && *__dst.n128_u64[0] == 98)
    {
      goto LABEL_158;
    }

    if (__dst.n128_u64[1] == 1)
    {
      if (*__dst.n128_u64[0] == 97)
      {
        goto LABEL_158;
      }

      if ((BYTE7(v160) & 0x80) == 0)
      {
        goto LABEL_130;
      }
    }

    if (__dst.n128_u64[1] == 3)
    {
      if (*__dst.n128_u64[0] == 26482 && *(__dst.n128_u64[0] + 2) == 98)
      {
        goto LABEL_158;
      }

      if ((BYTE7(v160) & 0x80) == 0)
      {
        goto LABEL_130;
      }
    }

    v113 = __dst.n128_u64[0];
    if (__dst.n128_u64[1] != 4)
    {
      goto LABEL_157;
    }

    v114 = BYTE7(v160);
    if (*__dst.n128_u64[0] != 1633838962)
    {
      goto LABEL_157;
    }

    goto LABEL_159;
  }

  if (BYTE7(v160) == 1)
  {
    if (__dst.n128_u8[0] != 98)
    {
      v114 = 1;
      if (__dst.n128_u8[0] == 103 || __dst.n128_u8[0] == 114)
      {
        goto LABEL_159;
      }

      if (__dst.n128_u8[0] == 97)
      {
        v114 = 1;
        goto LABEL_159;
      }

LABEL_130:
      v113 = &__dst;
LABEL_157:
      NSLog(&cfstr_WarningInvalid_0.isa, v113);
      v114 = BYTE7(v160);
      goto LABEL_159;
    }

LABEL_158:
    v114 = BYTE7(v160);
    goto LABEL_159;
  }

  if (BYTE7(v160) != 3)
  {
    v113 = &__dst;
    if (BYTE7(v160) == 4 && __dst.n128_u32[0] == 1633838962)
    {
      v114 = 4;
      goto LABEL_159;
    }

    goto LABEL_157;
  }

  if (__dst.n128_u16[0] != 26482 || __dst.n128_u8[2] != 98)
  {
    goto LABEL_130;
  }

  v114 = 3;
LABEL_159:
  v116 = __dst.n128_u64[1];
  if ((v114 & 0x80u) == 0)
  {
    v116 = v114;
  }

  if (v116 - 1 <= 3)
  {
    v117 = 0;
    v118 = &__dst;
    if ((v114 & 0x80u) != 0)
    {
      v118 = __dst.n128_u64[0];
    }

    do
    {
      v120 = v118->n128_u8[0];
      v118 = (v118 + 1);
      v119 = v120;
      if (v120 > 102)
      {
        if (v119 == 114)
        {
          v121 = 1;
        }

        else
        {
          if (v119 != 103)
          {
            goto LABEL_176;
          }

          v121 = 2;
        }
      }

      else if (v119 == 97)
      {
        v121 = 8;
      }

      else
      {
        if (v119 != 98)
        {
          goto LABEL_176;
        }

        v121 = 4;
      }

      v117 |= v121;
      --v116;
    }

    while (v116);
    if (v117 != 15)
    {
      sub_239E681C0(v147);
      v133 = objc_msgSend_textureSamplerValue(v147, v122, v123, v124, v129, v130, v131, v132, v125, v126, v127, v128);
      objc_msgSend_setTextureComponents_(v133, v134, v117, v135, v140, v141, v142, v143, v136, v137, v138, v139);

      LOBYTE(v114) = BYTE7(v160);
    }
  }

LABEL_176:
  if ((v114 & 0x80) != 0)
  {
    operator delete(__dst.n128_u64[0]);
  }

  __dst.n128_u64[0] = &v153;
  sub_239E61AB0(&__dst);
}