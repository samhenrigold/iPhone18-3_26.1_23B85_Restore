void breakpoint_break(uint64_t a1, volatile int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((gIgnoreAllBreakpoints & 1) == 0)
  {
    if (a5)
    {
      atomic_fetch_add((a5 + 4640), 0xFFFFFFFF);
    }

    GPUTools::DYLockUtils::Lock(&breakpoint_lock, a2);
    [DYGetGLGuestAppClient() lockGraphicsAndWaitForThreads:0];
    v9 = objc_autoreleasePoolPush();
    v10 = +[NSThread callStackReturnAddresses];
    v11 = [DYBreakpoint alloc];
    if (a1)
    {
      v12 = [v11 _initWithPbuf:a1 type:a3 backtrace:v10 error:a4];
    }

    else
    {
      v12 = [v11 _initWithType:a3 backtrace:v10 error:a4];
    }

    v13 = v12;
    v14 = [DYTransportMessage messageWithKind:512 objectPayload:v12];

    [DYGetGLGuestAppClient() sendMessage:v14];
    objc_autoreleasePoolPop(v9);
    v15 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v15, 0, do_nothing);
    if (a5)
    {
      atomic_fetch_add((a5 + 4640), 1u);
    }
  }
}

uint64_t breakpoint_continue(uint64_t a1)
{
  [DYGetGLGuestAppClient() unlockGraphics];

  return GPUTools::DYLockUtils::Unlock(&breakpoint_lock, v1);
}

uint64_t has_client_memory_vertex_arrays(ContextInfo *a1)
{
  v2 = *(a1 + 2);
  v3 = *(a1 + 4);
  if (*(a1 + 864) != 1)
  {
    v22 = 0;
    (*(v3 + 832))(v2, 34921, &v22);
    if (v22)
    {
      v4 = 0;
      v5 = a1 + 184;
      do
      {
        v21 = 0;
        (*(v3 + 4128))(v2, v4, 34975, v5);
        (*(v3 + 4128))(v2, v4, 34338, &v21);
        v6 = v21;
        v5[22] = v21 != 0;
        if (v6 && !*v5)
        {
          return 1;
        }

        ++v4;
        v5 += 32;
      }

      while (v4 < v22);
    }
  }

  if (*(a1 + 4858) != 1)
  {
    return 0;
  }

  v7 = 0;
  v8 = 0;
  v20 = *(a1 + 858);
  while (1)
  {
    v9 = &gVertexArrays + 120 * v7;
    v10 = *(v9 + 9);
    if (!*v9)
    {
      break;
    }

    v11 = *(v9 + 28);
    if (v11 == -1)
    {
      v18 = is_extension_available(a1, *v9);
      *(v9 + 28) = v18;
      if (v18)
      {
        break;
      }
    }

    else if (v11)
    {
      break;
    }

LABEL_10:
    v7 = ++v8;
    if (v8 >= 7uLL)
    {
      (*(v3 + 2728))(v2, *(a1 + 519));
      return 0;
    }
  }

  v12 = v20;
  if (*(v9 + 21) != 32888)
  {
    v12 = 1;
  }

  if (!v12)
  {
    goto LABEL_10;
  }

  v13 = 0;
  v14 = a1 + v10 + 176;
  v15 = 32 * v12;
  v16 = 33984;
  while (1)
  {
    if (*(v9 + 21) == 32888)
    {
      (*(v3 + 2728))(v2, v16);
      v14 += v13;
    }

    (*(v3 + 832))(v2, *(v9 + 23), v14 + 8);
    v17 = (*(v3 + 1144))(v2, *(v9 + 21));
    v14[30] = v17 != 0;
    if (v17)
    {
      if (!*(v14 + 2))
      {
        break;
      }
    }

    v13 += 32;
    v16 = (v16 + 1);
    if (v15 == v13)
    {
      goto LABEL_10;
    }
  }

  (*(v3 + 2728))(v2, *(a1 + 519));
  return 1;
}

uint64_t copyout_vertex_arrays2(ContextInfo *a1)
{
  v1 = __chkstk_darwin(a1);
  v98 = v2;
  v108 = v3;
  v102 = v4;
  v103 = v5;
  v6 = v1;
  v111 = v1 + 4096;
  bzero(v121, 0x3C00uLL);
  v117 = v6;
  if (*(v6 + 3456) != 1 && *(v6 + 3452))
  {
    v11 = 0;
    v12 = *(v6 + 16);
    v114 = v6 + 176;
    v13 = *(v6 + 32);
    v104 = 0;
    while (1)
    {
      v18 = v114 + 32 * v11;
      v120 = 0;
      (*(v13 + 4128))(v12, v11, 34975, v18 + 8);
      (*(v13 + 4128))(v12, v11, 34338, &v120);
      v19 = v120;
      *(v18 + 30) = v120 != 0;
      if (v19)
      {
        if (!*(v18 + 8))
        {
          break;
        }
      }

LABEL_6:
      if (++v11 >= v117[863])
      {
        goto LABEL_38;
      }
    }

    (*(v13 + 4136))(v12, v11, 34373, v18);
    v118 = 0;
    v119 = 0;
    (*(v13 + 4128))(v12, v11, 34339, v18 + 16);
    if (*(v18 + 16) == 32993)
    {
      v20 = 4;
    }

    else
    {
      v20 = *(v18 + 16);
    }

    (*(v13 + 4128))(v12, v11, 34341, v18 + 12);
    (*(v13 + 4128))(v12, v11, 34340, v18 + 20);
    (*(v13 + 4128))(v12, v11, 34922, &v119);
    *(v18 + 28) = v119 != 0;
    if (*(v111 + 758) == 1)
    {
      (*(v13 + 4128))(v12, v11, 35070, v18 + 24);
    }

    if (v117[865] >= 2)
    {
      (*(v13 + 4128))(v12, v11, 35069, &v118);
      *(v18 + 29) = v118 != 0;
    }

    v22 = GPUTools::GL::dy_type_size(*(v18 + 12), v21) * v20;
    LODWORD(v23) = *(v18 + 20);
    v24 = *(v18 + 24);
    if (v23)
    {
      v23 = v23;
    }

    else
    {
      v23 = v22;
    }

    if (v24)
    {
      if (v108 >= 1)
      {
        v25 = 0;
        v26 = (v108 - 1) / v24 * v23 + v22;
        v27 = *v18;
        if (v104)
        {
          goto LABEL_22;
        }

LABEL_30:
        v15 = 0;
        goto LABEL_33;
      }

      v26 = 0;
      v25 = 0;
      v27 = *v18;
      if (!v104)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v25 = v23 * v102;
      v31 = (v103 - 1) * v23 + v22;
      if (v103 <= 0)
      {
        v26 = 0;
      }

      else
      {
        v26 = v31;
      }

      v27 = v25 + *v18;
      if (!v104)
      {
        goto LABEL_30;
      }
    }

LABEL_22:
    v15 = 0;
    v28 = v122;
    while (1)
    {
      v29 = *(v28 - 1);
      v30 = *v28;
      v123.location = v27;
      v123.length = v26;
      v127.location = v29;
      v127.length = *v28;
      if (NSIntersectionRange(v123, v127) != 0uLL)
      {
        break;
      }

      ++v15;
      v28 += 60;
      if (v104 == v15)
      {
        goto LABEL_4;
      }
    }

    v124.location = v27;
    v124.length = v26;
    v128.location = v29;
    v128.length = v30;
    v32 = NSUnionRange(v124, v128);
    *(v28 - 1) = v32;
    if (v32.location == v27)
    {
      v28[1] = v25;
    }

LABEL_33:
    if (v15 == v104)
    {
LABEL_4:
      v14 = &v121[480 * v104];
      *v14 = v27;
      *(v14 + 1) = v26;
      *(v14 + 2) = v25;
      v15 = v104++;
    }

    v16 = &v121[480 * v15];
    v17 = v16[473];
    *&v16[4 * v17 + 408] = v11;
    v16[473] = v17 + 1;
    goto LABEL_6;
  }

  v104 = 0;
LABEL_38:
  if (*(v111 + 762) == 1)
  {
    v33 = v117;
    v115 = *(v117 + 2);
    v34 = *(v117 + 4);
    v35 = 0;
    v112 = 0;
    v36 = 0;
    v97 = v117[858];
    while (1)
    {
      v100 = v36;
      v37 = &gVertexArrays + 120 * v35;
      v38 = *(v37 + 9);
      if (!*v37)
      {
        break;
      }

      v39 = *(v37 + 28);
      if (v39 == -1)
      {
        v62 = is_extension_available(v33, *v37);
        *(v37 + 28) = v62;
        if (v62)
        {
          break;
        }
      }

      else if (v39)
      {
        break;
      }

LABEL_40:
      v35 = (v100 + 1);
      v36 = v100 + 1;
      v33 = v117;
      if (v35 >= 7)
      {
        (*(v34 + 2728))(v115, v117[519]);
        (*(v34 + 2736))(v115, v117[518]);
        v104 += v112;
        goto LABEL_87;
      }
    }

    if (*(v37 + 21) == 32888)
    {
      v40 = v97;
    }

    else
    {
      v40 = 1;
    }

    v109 = v40;
    if (v40)
    {
      v41 = 0;
      v42 = v117 + v38 + 176;
      while (1)
      {
        if (*(v37 + 21) == 32888)
        {
          (*(v34 + 2736))(v115, (v41 + 33984));
          if (!(*(v34 + 1144))(v115, 3553))
          {
            goto LABEL_50;
          }

          (*(v34 + 2728))(v115, (v41 + 33984));
          v42 += 32 * v41;
        }

        (*(v34 + 832))(v115, *(v37 + 23), v42 + 8);
        v43 = (*(v34 + 1144))(v115, *(v37 + 21));
        v42[30] = v43 != 0;
        if (v43 && !*(v42 + 2))
        {
          (*(v34 + 920))(v115, *(v37 + 22), v42);
          v44 = *(v37 + 24);
          if (v44 < 0)
          {
            v45 = 0;
            *(v42 + 4) = v44 & 0x7FFFFFFF;
            v46 = *(v37 + 25);
            if ((v46 & 0x80000000) == 0)
            {
              goto LABEL_61;
            }
          }

          else
          {
            (*(v34 + 832))(v115);
            if (*(v42 + 4) == 32993)
            {
              v45 = 4;
            }

            else
            {
              v45 = *(v42 + 4);
            }

            v46 = *(v37 + 25);
            if ((v46 & 0x80000000) == 0)
            {
LABEL_61:
              (*(v34 + 832))(v115);
              v47 = *(v37 + 26);
              if ((v47 & 0x80000000) == 0)
              {
                goto LABEL_62;
              }

LABEL_65:
              *(v42 + 5) = v47 & 0x7FFFFFFF;
              goto LABEL_66;
            }
          }

          *(v42 + 3) = v46 & 0x7FFFFFFF;
          v47 = *(v37 + 26);
          if ((v47 & 0x80000000) != 0)
          {
            goto LABEL_65;
          }

LABEL_62:
          (*(v34 + 832))(v115);
LABEL_66:
          v48 = GPUTools::GL::dy_type_size(*(v42 + 3), v47) * v45;
          LODWORD(v49) = *(v42 + 5);
          if (v49)
          {
            v49 = v49;
          }

          else
          {
            v49 = v48;
          }

          v106 = v49 * v102;
          v50 = v49 * v102 + *v42;
          v51 = v48 + (v103 - 1) * v49;
          if (v103)
          {
            v52 = v51;
          }

          else
          {
            v52 = 0;
          }

          if (v112)
          {
            v53 = 0;
            v54 = v122;
            while (1)
            {
              v55 = *(v54 - 1);
              v56 = *v54;
              v125.location = v50;
              v125.length = v52;
              v129.location = v55;
              v129.length = *v54;
              if (NSIntersectionRange(v125, v129) != 0uLL)
              {
                break;
              }

              ++v53;
              v54 += 60;
              if (v112 == v53)
              {
                goto LABEL_81;
              }
            }

            v126.location = v50;
            v126.length = v52;
            v130.location = v55;
            v130.length = v56;
            v57 = NSUnionRange(v126, v130);
            *(v54 - 1) = v57;
            if (v57.location == v50)
            {
              v54[1] = v106;
            }
          }

          else
          {
            v53 = 0;
          }

          if (v53 == v112)
          {
LABEL_81:
            v58 = &v121[480 * v112];
            *v58 = v50;
            *(v58 + 1) = v52;
            *(v58 + 2) = v106;
            v53 = v112++;
          }

          v59 = &v121[480 * v53];
          v60 = v59[472];
          v61 = &v59[24 * v59[472] + 24];
          *v61 = v37;
          *(v61 + 1) = v42;
          if (*(v37 + 21) == 32888)
          {
            *&v59[24 * v60 + 40] = v41 + 33984;
          }

          v59[472] = v60 + 1;
        }

LABEL_50:
        if (++v41 == v109)
        {
          goto LABEL_40;
        }
      }
    }

    goto LABEL_40;
  }

LABEL_87:
  v63 = v117;
  if (v117[508] && v104)
  {
    GPUTools::FB::Encode((v117 + 30), 12, 4, "Ceui", v7, v8, v9, v10, *v117, 34962, 0);
    v64 = ([DYGetGLGuestAppClient() defaultFbufStream] + 56);
    while (atomic_exchange(v64, 1u) == 1)
    {
        ;
      }
    }

    GPUTools::FB::Stream::Write_nolock();
    v63 = v117;
    atomic_store(0, v64);
  }

  if (v104)
  {
    v110 = 0;
    v65 = 0;
    v107 = v63 + 44;
    v99 = (v63 + 1161);
    while (1)
    {
      v101 = v65;
      if (*&v121[480 * v65])
      {
        v116 = &v121[480 * v65];
        DYGetGLGuestAppClient();
        GPUTools::Interpose::DYSavePointer();
        GPUTools::FB::Encode((v117 + 30), 4294955019, 4, "CUulbuiui", v66, v67, v68, v69, *v117, v99, *(v116 + 2), v98, v102, v103);
        v70 = ([DYGetGLGuestAppClient() defaultFbufStream] + 56);
        while (atomic_exchange(v70, 1u) == 1)
        {
            ;
          }
        }

        v63 = v117;
        GPUTools::FB::Stream::Write_nolock();
        v71 = v116;
        atomic_store(0, v70);
        if (v71[473])
        {
          v72 = 0;
          do
          {
            v73 = *&v116[4 * v72 + 408];
            v74 = &v107[4 * v73];
            v75 = *(v71 + 2) + *v74 - *v71;
            v76 = *v63;
            v78 = *(v74 + 3);
            v77 = *(v74 + 4);
            if (*(v74 + 29) == 1)
            {
              GPUTools::FB::Encode((v63 + 30), 4294955020, 4, "Cuiieiului", v7, v8, v9, v10, v76, v73, v77, v78, *(v74 + 5), v75, 729);
            }

            else
            {
              GPUTools::FB::Encode((v63 + 30), 4294955020, 4, "Cuiieubiului", v7, v8, v9, v10, v76, v73, v77, v78, *(v74 + 28), *(v74 + 5), v75, 730);
            }

            v79 = ([DYGetGLGuestAppClient() defaultFbufStream] + 56);
            while (atomic_exchange(v79, 1u) == 1)
            {
                ;
              }
            }

            v63 = v117;
            GPUTools::FB::Stream::Write_nolock();
            v71 = v116;
            atomic_store(0, v79);
            ++v72;
          }

          while (v72 < v71[473]);
        }

        if (v71[472])
        {
          break;
        }
      }

LABEL_96:
      v65 = v101 + 1;
      if (v101 + 1 == v104)
      {
        if (v110)
        {
          GPUTools::FB::Encode((v63 + 30), 44, 4, "Ce", v7, v8, v9, v10, *v63, v63[519]);
          v94 = ([DYGetGLGuestAppClient() defaultFbufStream] + 56);
          while (atomic_exchange(v94, 1u) == 1)
          {
              ;
            }
          }

          v63 = v117;
          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v94);
        }

        if (v63[508])
        {
          GPUTools::FB::Encode((v63 + 30), 12, 4, "Ceui", v7, v8, v9, v10, *v63, 34962, v63[508]);
          v95 = ([DYGetGLGuestAppClient() defaultFbufStream] + 56);
          while (atomic_exchange(v95, 1u) == 1)
          {
              ;
            }
          }

          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v95);
        }

        return v104;
      }
    }

    v80 = 0;
    v113 = v71 + 24;
    while (1)
    {
      v81 = &v113[24 * v80];
      v83 = *v81;
      v82 = *(v81 + 1);
      v84 = *v82;
      v85 = *(v71 + 2);
      v86 = *v71;
      v88 = *(*v81 + 96);
      v87 = *(*v81 + 100);
      v89 = *(*v81 + 104);
      if (*(*v81 + 84) != 32888)
      {
        goto LABEL_121;
      }

      v90 = v81[4];
      if (!((v117[519] != v90) | v110 & 1))
      {
        break;
      }

      GPUTools::FB::Encode((v117 + 30), 44, 4, "Ce", v7, v8, v9, v10, *v117, v90);
      v105 = v84;
      v91 = ([DYGetGLGuestAppClient() defaultFbufStream] + 56);
      while (atomic_exchange(v91, 1u) == 1)
      {
          ;
        }
      }

      GPUTools::FB::Stream::Write_nolock();
      atomic_store(0, v91);
      v110 = 1;
      v92 = v85 + v105 - v86;
      if (v88 < 0)
      {
LABEL_126:
        if (v87 < 0 || v89 < 0)
        {
          if (v89 < 0)
          {
            if (v87 < 0)
            {
              dy_abort("unsupported vertex array parameter configuration");
              __break(1u);
            }

            GPUTools::FB::Encode((v117 + 30), 4294955020, 4, "Ceului", v7, v8, v9, v10, *v117, *(v82 + 3), v92, *(v83 + 80));
          }

          else
          {
            GPUTools::FB::Encode((v117 + 30), 4294955020, 4, "Ciului", v7, v8, v9, v10, *v117, *(v82 + 5), v92, *(v83 + 80));
          }
        }

        else
        {
          GPUTools::FB::Encode((v117 + 30), 4294955020, 4, "Ceiului", v7, v8, v9, v10, *v117, *(v82 + 3), *(v82 + 5), v92, *(v83 + 80));
        }

        goto LABEL_133;
      }

LABEL_122:
      if (v87 < 0 || v89 < 0)
      {
        goto LABEL_126;
      }

      GPUTools::FB::Encode((v117 + 30), 4294955020, 4, "Cieiului", v7, v8, v9, v10, *v117, *(v82 + 4), *(v82 + 3), *(v82 + 5), v92, *(v83 + 80));
LABEL_133:
      v93 = ([DYGetGLGuestAppClient() defaultFbufStream] + 56);
      while (atomic_exchange(v93, 1u) == 1)
      {
          ;
        }
      }

      v63 = v117;
      GPUTools::FB::Stream::Write_nolock();
      v71 = v116;
      atomic_store(0, v93);
      if (++v80 >= v71[472])
      {
        goto LABEL_96;
      }
    }

    v110 = 0;
LABEL_121:
    v92 = v85 + v84 - v86;
    if (v88 < 0)
    {
      goto LABEL_126;
    }

    goto LABEL_122;
  }

  return v104;
}

void GPUTools::FB::Encode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  va_copy(v9, va);
  GPUTools::FB::VAListArgumentProvider::VAListArgumentProvider(v8, va);
  GPUTools::FB::Encode();
  GPUTools::FB::VAListArgumentProvider::~VAListArgumentProvider(v8);
}

{
  va_start(va, a8);
  va_copy(v9, va);
  GPUTools::FB::VAListArgumentProvider::VAListArgumentProvider(v8, va);
  GPUTools::FB::Encode();
  GPUTools::FB::VAListArgumentProvider::~VAListArgumentProvider(v8);
}

void sub_21D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  GPUTools::FB::VAListArgumentProvider::~VAListArgumentProvider(va);
  _Unwind_Resume(a1);
}

void determine_element_range(ContextInfo *a1, const int *a2, int a3, const void **a4, const int *a5, int a6, double a7, double a8, double a9, uint32x4_t a10)
{
  if (*(a1 + 509))
  {
    if (*(a1 + 4844) == 1)
    {
      v16 = (*(*(a1 + 4) + 5192))(*(a1 + 2), 34963, 35000, a7, a8, a9, a10);
      if (a3 == 5121)
      {
LABEL_68:
        if (a6 >= 1)
        {
          v86 = 0;
          v87 = 0;
          v88 = -1;
          while (1)
          {
            v89 = (a4[v86] + v16);
            if (!v16)
            {
              v89 = a4[v86];
            }

            if (a5)
            {
              v90 = a5[v86];
              v91 = a2[v86];
              if (v91 < 1)
              {
                goto LABEL_70;
              }
            }

            else
            {
              v90 = 0;
              v91 = a2[v86];
              if (v91 < 1)
              {
                goto LABEL_70;
              }
            }

            if (v91 < 4)
            {
              v92 = 0;
LABEL_88:
              v116 = &v89->i8[v92];
              v117 = v91 - v92;
              do
              {
                v118 = *v116++;
                v119 = v90 + v118;
                if (v90 + v118 < v88)
                {
                  v88 = v119;
                }

                if (v119 > v87)
                {
                  v87 = v119;
                }

                --v117;
              }

              while (v117);
              goto LABEL_70;
            }

            v93 = vdupq_n_s32(v90);
            if (v91 >= 0x10)
            {
              v92 = v91 & 0x7FFFFFF0;
              v94 = vdupq_n_s32(v88);
              v95 = v92;
              v96 = v89;
              v97 = v94;
              v98 = v94;
              v99 = vdupq_n_s32(v87);
              v100 = v94;
              a10 = v99;
              v101 = v99;
              v102 = v99;
              do
              {
                v103 = *v96++;
                v104 = vmovl_high_u8(v103);
                v105 = vmovl_u8(*v103.i8);
                v106 = vaddw_u16(v93, *v105.i8);
                v107 = vaddw_high_u16(v93, v105);
                v108 = vaddw_u16(v93, *v104.i8);
                v109 = vaddw_high_u16(v93, v104);
                v100 = vminq_u32(v109, v100);
                v98 = vminq_u32(v108, v98);
                v97 = vminq_u32(v107, v97);
                v94 = vminq_u32(v106, v94);
                v102 = vmaxq_u32(v109, v102);
                v101 = vmaxq_u32(v108, v101);
                a10 = vmaxq_u32(v107, a10);
                v99 = vmaxq_u32(v106, v99);
                v95 -= 16;
              }

              while (v95);
              v88 = vminvq_u32(vminq_u32(vminq_u32(v94, v98), vminq_u32(v97, v100)));
              v87 = vmaxvq_u32(vmaxq_u32(vmaxq_u32(v99, v101), vmaxq_u32(a10, v102)));
              if (v92 == v91)
              {
                goto LABEL_70;
              }

              if ((v91 & 0xC) == 0)
              {
                goto LABEL_88;
              }
            }

            else
            {
              v92 = 0;
            }

            v110 = v92;
            v92 = v91 & 0x7FFFFFFC;
            v111 = vdupq_n_s32(v88);
            v112 = vdupq_n_s32(v87);
            v113 = (v89->i32 + v110);
            v114 = v110 - v92;
            do
            {
              v115 = *v113++;
              a10.i32[0] = v115;
              a10 = vaddw_u16(v93, *&vmovl_u8(*a10.i8));
              v111 = vminq_u32(a10, v111);
              v112 = vmaxq_u32(a10, v112);
              v114 += 4;
            }

            while (v114);
            v88 = vminvq_u32(v111);
            v87 = vmaxvq_u32(v112);
            if (v92 != v91)
            {
              goto LABEL_88;
            }

LABEL_70:
            if (++v86 == a6)
            {
              goto LABEL_95;
            }
          }
        }

        goto LABEL_95;
      }
    }

    else
    {
      BufferSize = GPUTools::GL::GetBufferSize();
      v16 = (*(*(a1 + 4) + 6360))(*(a1 + 2), 34963, 0, BufferSize, 1);
      if (a3 == 5121)
      {
        goto LABEL_68;
      }
    }
  }

  else
  {
    v16 = 0;
    if (a3 == 5121)
    {
      goto LABEL_68;
    }
  }

  if (a3 == 5123)
  {
    if (a6 < 1)
    {
      goto LABEL_95;
    }

    v51 = 0;
    v52 = 0;
    v53 = -1;
    while (1)
    {
      v54 = (a4[v51] + v16);
      if (!v16)
      {
        v54 = a4[v51];
      }

      if (a5)
      {
        v55 = a5[v51];
        v56 = a2[v51];
        if (v56 < 1)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v55 = 0;
        v56 = a2[v51];
        if (v56 < 1)
        {
          goto LABEL_42;
        }
      }

      if (v56 < 4)
      {
        v57 = 0;
LABEL_60:
        v81 = v54 + 2 * v57;
        v82 = v56 - v57;
        do
        {
          v83 = *v81;
          v81 += 2;
          v84 = v55 + v83;
          if (v55 + v83 < v53)
          {
            v53 = v84;
          }

          if (v84 > v52)
          {
            v52 = v84;
          }

          --v82;
        }

        while (v82);
        goto LABEL_42;
      }

      v58 = vdupq_n_s32(v55);
      if (v56 >= 0x10)
      {
        v57 = v56 & 0x7FFFFFF0;
        v59 = vdupq_n_s32(v53);
        v60 = v54 + 2;
        v61 = v57;
        v62 = v59;
        v63 = v59;
        v64 = vdupq_n_s32(v52);
        v65 = v59;
        v66 = v64;
        v67 = v64;
        v68 = v64;
        do
        {
          v69 = *v60[-2].i8;
          v70 = vaddw_u16(v58, *v69.i8);
          v71 = vaddw_high_u16(v58, v69);
          v72 = vaddw_u16(v58, *v60);
          v73 = vaddw_high_u16(v58, *v60->i8);
          v62 = vminq_u32(v71, v62);
          v59 = vminq_u32(v70, v59);
          v65 = vminq_u32(v73, v65);
          v63 = vminq_u32(v72, v63);
          v66 = vmaxq_u32(v71, v66);
          v64 = vmaxq_u32(v70, v64);
          v68 = vmaxq_u32(v73, v68);
          v67 = vmaxq_u32(v72, v67);
          v60 += 4;
          v61 -= 16;
        }

        while (v61);
        v53 = vminvq_u32(vminq_u32(vminq_u32(v59, v63), vminq_u32(v62, v65)));
        v52 = vmaxvq_u32(vmaxq_u32(vmaxq_u32(v64, v67), vmaxq_u32(v66, v68)));
        if (v57 == v56)
        {
          goto LABEL_42;
        }

        if ((v56 & 0xC) == 0)
        {
          goto LABEL_60;
        }
      }

      else
      {
        v57 = 0;
      }

      v74 = v57;
      v57 = v56 & 0x7FFFFFFC;
      v75 = vdupq_n_s32(v53);
      v76 = vdupq_n_s32(v52);
      v77 = (v54 + 2 * v74);
      v78 = v74 - v57;
      do
      {
        v79 = *v77++;
        v80 = vaddw_u16(v58, v79);
        v75 = vminq_u32(v80, v75);
        v76 = vmaxq_u32(v80, v76);
        v78 += 4;
      }

      while (v78);
      v53 = vminvq_u32(v75);
      v52 = vmaxvq_u32(v76);
      if (v57 != v56)
      {
        goto LABEL_60;
      }

LABEL_42:
      if (++v51 == a6)
      {
        goto LABEL_95;
      }
    }
  }

  if (a3 != 5125)
  {
    v151 = dy_abort("unknown element indices type: 0x%04X", a3);
    apocalypse_now(v151);
    return;
  }

  if (a6 >= 1)
  {
    v17 = 0;
    v18 = 0;
    v19 = -1;
    if (v16)
    {
      if (!a5)
      {
        while (1)
        {
          v37 = a2[v17];
          if (v37 >= 1)
          {
            v38 = (a4[v17] + v16);
            if (v37 <= 7)
            {
              v39 = 0;
LABEL_33:
              v47 = &v38->i8[4 * v39];
              v48 = v37 - v39;
              do
              {
                v50 = *v47;
                v47 += 4;
                v49 = v50;
                if (v50 < v19)
                {
                  v19 = v49;
                }

                if (v49 > v18)
                {
                  v18 = v49;
                }

                --v48;
              }

              while (v48);
              goto LABEL_26;
            }

            v39 = v37 & 0x7FFFFFF8;
            v40 = vdupq_n_s32(v19);
            v41 = vdupq_n_s32(v18);
            v42 = v38 + 1;
            v43 = v39;
            v44 = v40;
            v45 = v41;
            do
            {
              v46 = v42[-1];
              v40 = vminq_u32(v46, v40);
              v44 = vminq_u32(*v42, v44);
              v41 = vmaxq_u32(v46, v41);
              v45 = vmaxq_u32(*v42, v45);
              v42 += 2;
              v43 -= 8;
            }

            while (v43);
            v19 = vminvq_u32(vminq_u32(v40, v44));
            v18 = vmaxvq_u32(vmaxq_u32(v41, v45));
            if (v39 != v37)
            {
              goto LABEL_33;
            }
          }

LABEL_26:
          if (++v17 == a6)
          {
            goto LABEL_95;
          }
        }
      }

      while (1)
      {
        v20 = a2[v17];
        if (v20 >= 1)
        {
          v21 = (a4[v17] + v16);
          v22 = a5[v17];
          if (v20 <= 7)
          {
            v23 = 0;
LABEL_19:
            v33 = &v21->i8[4 * v23];
            v34 = v20 - v23;
            do
            {
              v35 = *v33;
              v33 += 4;
              v36 = v35 + v22;
              if (v35 + v22 < v19)
              {
                v19 = v36;
              }

              if (v36 > v18)
              {
                v18 = v36;
              }

              --v34;
            }

            while (v34);
            goto LABEL_12;
          }

          v23 = v20 & 0x7FFFFFF8;
          v24 = vdupq_n_s32(v19);
          v25 = vdupq_n_s32(v18);
          v26 = vdupq_n_s32(v22);
          v27 = v21 + 1;
          v28 = v23;
          v29 = v24;
          v30 = v25;
          do
          {
            v31 = vaddq_s32(v27[-1], v26);
            v32 = vaddq_s32(*v27, v26);
            v24 = vminq_u32(v31, v24);
            v29 = vminq_u32(v32, v29);
            v25 = vmaxq_u32(v31, v25);
            v30 = vmaxq_u32(v32, v30);
            v27 += 2;
            v28 -= 8;
          }

          while (v28);
          v19 = vminvq_u32(vminq_u32(v24, v29));
          v18 = vmaxvq_u32(vmaxq_u32(v25, v30));
          if (v23 != v20)
          {
            goto LABEL_19;
          }
        }

LABEL_12:
        if (++v17 == a6)
        {
          goto LABEL_95;
        }
      }
    }

    if (!a5)
    {
      while (1)
      {
        v137 = a2[v17];
        if (v137 >= 1)
        {
          v138 = a4[v17];
          if (v137 <= 7)
          {
            v139 = 0;
LABEL_121:
            v147 = v138 + v139;
            v148 = v137 - v139;
            do
            {
              v150 = *v147++;
              v149 = v150;
              if (v150 < v19)
              {
                v19 = v149;
              }

              if (v149 > v18)
              {
                v18 = v149;
              }

              --v148;
            }

            while (v148);
            goto LABEL_114;
          }

          v139 = v137 & 0x7FFFFFF8;
          v140 = vdupq_n_s32(v19);
          v141 = vdupq_n_s32(v18);
          v142 = v138 + 1;
          v143 = v139;
          v144 = v140;
          v145 = v141;
          do
          {
            v146 = v142[-1];
            v140 = vminq_u32(v146, v140);
            v144 = vminq_u32(*v142, v144);
            v141 = vmaxq_u32(v146, v141);
            v145 = vmaxq_u32(*v142, v145);
            v142 += 2;
            v143 -= 8;
          }

          while (v143);
          v19 = vminvq_u32(vminq_u32(v140, v144));
          v18 = vmaxvq_u32(vmaxq_u32(v141, v145));
          if (v139 != v137)
          {
            goto LABEL_121;
          }
        }

LABEL_114:
        if (++v17 == a6)
        {
          goto LABEL_95;
        }
      }
    }

    do
    {
      v120 = a2[v17];
      if (v120 >= 1)
      {
        v121 = a4[v17];
        v122 = a5[v17];
        if (v120 <= 7)
        {
          v123 = 0;
LABEL_107:
          v133 = &v121->i32[v123];
          v134 = v120 - v123;
          do
          {
            v135 = *v133++;
            v136 = v135 + v122;
            if (v135 + v122 < v19)
            {
              v19 = v136;
            }

            if (v136 > v18)
            {
              v18 = v136;
            }

            --v134;
          }

          while (v134);
          goto LABEL_100;
        }

        v123 = v120 & 0x7FFFFFF8;
        v124 = vdupq_n_s32(v19);
        v125 = vdupq_n_s32(v18);
        v126 = vdupq_n_s32(v122);
        v127 = v121 + 1;
        v128 = v123;
        v129 = v124;
        v130 = v125;
        do
        {
          v131 = vaddq_s32(v127[-1], v126);
          v132 = vaddq_s32(*v127, v126);
          v124 = vminq_u32(v131, v124);
          v129 = vminq_u32(v132, v129);
          v125 = vmaxq_u32(v131, v125);
          v130 = vmaxq_u32(v132, v130);
          v127 += 2;
          v128 -= 8;
        }

        while (v128);
        v19 = vminvq_u32(vminq_u32(v124, v129));
        v18 = vmaxvq_u32(vmaxq_u32(v125, v130));
        if (v123 != v120)
        {
          goto LABEL_107;
        }
      }

LABEL_100:
      ++v17;
    }

    while (v17 != a6);
  }

LABEL_95:
  if (*(a1 + 509))
  {
    (*(*(a1 + 4) + 5200))(*(a1 + 2), 34963);
  }
}

void GetStringToEncode(unsigned int a1, const char *a2)
{
  if (a1 >= 1 && a2)
  {
    v4 = a1 + 1;
    v5 = malloc_type_malloc(a1 + 1, 0x100004077774924uLL);
    if (v5)
    {
      v6 = v5;
      strlcpy(v5, a2, a1);
      v6[a1] = 0;
    }

    else
    {
      v7 = dy_abort("GetStringToEncode: Unable to allocate %d bytes", v4);
      ReleaseStringToEncode(v7, v8);
    }
  }
}

void ReleaseStringToEncode(void *a1, const char *a2)
{
  if (a1 != a2)
  {
    free(a1);
  }
}

char *wrapper_handle_marker_event(atomic_uint *a1, uint64_t a2, char *__s1)
{
  if (a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = strlen(__s1);
  }

  if (!strncmp(__s1, GPUTools::Interpose::kEventMarkerDebugFrame, v6))
  {
    v9 = a1 + 1160;
    atomic_fetch_add(a1 + 1160, 0xFFFFFFFF);
    v10 = objc_alloc_init(DYGLESCaptureDescriptor);
    [DYGetGLGuestAppClient() startCaptureWithDescriptor:v10];

    result = (&dword_0 + 1);
    atomic_fetch_add(v9, 1u);
  }

  else if (!strncmp(__s1, kEventMarkerAnalyzeFrame[0], v6))
  {
    breakpoint_break(0, 0xFFFFFFFFLL, 5, 0, a1);
    return (&dword_0 + 1);
  }

  else if (strnstr(__s1, kEventMarkerDrawableCreate, v6) || strnstr(__s1, kEventMarkerContextCreate[0], v6))
  {
    v7 = [DYGetGLGuestAppClient() startup0Stream];
    EncodeMarkerOnStream(a1, v7, a2, __s1);
    return (&dword_0 + 1);
  }

  else
  {
    result = strnstr(__s1, kEventMarkerFrameBoundaryEnd[0], v6);
    if (result)
    {
      if ([DYGetGLGuestAppClient() traceMode] >= 4)
      {
        v11 = [DYGetGLGuestAppClient() defaultFbufStream];
        EncodeMarkerOnStream(a1, v11, a2, __s1);
      }

      atomic_fetch_add(a1 + 1160, 0xFFFFFFFF);
      handle_frame_boundary(a1);
      result = (&dword_0 + 1);
      atomic_fetch_add(a1 + 1160, 1u);
    }
  }

  return result;
}

void EncodeMarkerOnStream(ContextInfo *a1, GPUTools::FB::Stream *a2, uint64_t a3, char *a4)
{
  v8 = a4;
  if (a3 >= 1)
  {
    v8 = a4;
    if (a4)
    {
      v9 = malloc_type_malloc((a3 + 1), 0x100004077774924uLL);
      if (!v9)
      {
        v17 = dy_abort("GetStringToEncode: Unable to allocate %d bytes", a3 + 1);
        atomic_store(0, a2 + 14);
        _Unwind_Resume(v17);
      }

      v8 = v9;
      strlcpy(v9, a4, a3);
      v8[a3] = 0;
    }
  }

  v10 = 83;
  if (!v8)
  {
    v10 = 116;
  }

  snprintf(a1 + 4709, 0x40uLL, "Ci%c", v10);
  v11 = a1 + 120;
  GPUTools::FB::Encode(a1 + 120, 895, 2, a1 + 4709, v12, v13, v14, v15, *a1, a3, v8);
  v16 = mach_absolute_time();
  if (g_DYTimebaseInfo != *(&g_DYTimebaseInfo + 1))
  {
    v16 = __udivti3();
  }

  *(*v11 + 16) = v16;
  *(*v11 + 24) = 0;
  while (atomic_exchange(a2 + 14, 1u) == 1)
  {
      ;
    }
  }

  GPUTools::FB::Stream::Write_nolock();
  atomic_store(0, a2 + 14);
  if (v8 != a4)
  {

    free(v8);
  }
}

uint64_t wrapper_cache_texture_binding(uint64_t result, int a2, int a3)
{
  v3 = *(result + 2072) - 33984;
  if (v3 <= 0x1F)
  {
    if (a2 > 35863)
    {
      if (a2 <= 35881)
      {
        if (a2 == 35864)
        {
          *(result + 40 * v3 + 2100) = a3;
          return result;
        }

        if (a2 == 35866)
        {
          *(result + 40 * v3 + 2104) = a3;
          return result;
        }
      }

      else
      {
        switch(a2)
        {
          case 35882:
            *(result + 40 * v3 + 2116) = a3;
            return result;
          case 37120:
            *(result + 40 * v3 + 2108) = a3;
            return result;
          case 37122:
            *(result + 40 * v3 + 2112) = a3;
            return result;
        }
      }

      goto LABEL_26;
    }

    if (a2 > 32878)
    {
      switch(a2)
      {
        case 32879:
          *(result + 40 * v3 + 2092) = a3;
          return result;
        case 34037:
          *(result + 40 * v3 + 2088) = a3;
          return result;
        case 34067:
          *(result + 40 * v3 + 2096) = a3;
          return result;
      }

      goto LABEL_26;
    }

    if (a2 != 3552)
    {
      if (a2 == 3553)
      {
        *(result + 40 * v3 + 2084) = a3;
        return result;
      }

LABEL_26:
      v4 = dy_abort("unknown texture target 0x%04X", a2);
      return wrapper_cache_texture_binding(v4, v5, v6, v7);
    }

    *(result + 40 * v3 + 2080) = a3;
  }

  return result;
}

uint64_t wrapper_cache_texture_binding(uint64_t result, unsigned int a2, int a3, int a4)
{
  if (a3 > 35863)
  {
    if (a3 <= 35881)
    {
      if (a3 == 35864)
      {
        *(result + 40 * a2 + 2100) = a4;
        return result;
      }

      if (a3 == 35866)
      {
        *(result + 40 * a2 + 2104) = a4;
        return result;
      }
    }

    else
    {
      switch(a3)
      {
        case 35882:
          *(result + 40 * a2 + 2116) = a4;
          return result;
        case 37120:
          *(result + 40 * a2 + 2108) = a4;
          return result;
        case 37122:
          *(result + 40 * a2 + 2112) = a4;
          return result;
      }
    }
  }

  else if (a3 <= 32878)
  {
    if (a3 == 3552)
    {
      *(result + 40 * a2 + 2080) = a4;
      return result;
    }

    if (a3 == 3553)
    {
      *(result + 40 * a2 + 2084) = a4;
      return result;
    }
  }

  else
  {
    switch(a3)
    {
      case 32879:
        *(result + 40 * a2 + 2092) = a4;
        return result;
      case 34037:
        *(result + 40 * a2 + 2088) = a4;
        return result;
      case 34067:
        *(result + 40 * a2 + 2096) = a4;
        return result;
    }
  }

  v4 = dy_abort("unknown texture target 0x%04X", a3);
  return wrapper_cache_get_bound_texture(v4, v5, v6);
}

uint64_t wrapper_cache_get_bound_texture(ContextInfo *a1, unsigned int a2, int a3)
{
  if (a3 > 35863)
  {
    if (a3 <= 35881)
    {
      if (a3 == 35864)
      {
        return *(a1 + 10 * a2 + 525);
      }

      if (a3 == 35866)
      {
        return *(a1 + 10 * a2 + 526);
      }
    }

    else
    {
      switch(a3)
      {
        case 35882:
          return *(a1 + 10 * a2 + 529);
        case 37120:
          return *(a1 + 10 * a2 + 527);
        case 37122:
          return *(a1 + 10 * a2 + 528);
      }
    }
  }

  else if (a3 <= 32878)
  {
    if (a3 == 3552)
    {
      return *(a1 + 10 * a2 + 520);
    }

    if (a3 == 3553)
    {
      return *(a1 + 10 * a2 + 521);
    }
  }

  else
  {
    switch(a3)
    {
      case 32879:
        return *(a1 + 10 * a2 + 523);
      case 34037:
        return *(a1 + 10 * a2 + 522);
      case 34067:
        return *(a1 + 10 * a2 + 524);
    }
  }

  v4 = dy_abort("unknown texture target 0x%04X", a3);
  return wrapper_cache_texture_binding_delete(v4, v5, v6);
}

uint64_t wrapper_cache_texture_binding_delete(ContextInfo *a1, volatile int *a2, const unsigned int *a3)
{
  v4 = a2;
  v6 = *(a1 + 5);
  GPUTools::DYLockUtils::Lock((v6 + 368), a2);
  if (v4 >= 1)
  {
    v8 = 0;
    while (1)
    {
      v9 = a3[v8];
      v10 = *(a1 + 861);
      v11 = (a1 + 2116);
      if (v10)
      {
        break;
      }

LABEL_5:
      v12 = *(a1 + 5);
      v13 = *(v12 + 312);
      if (v13)
      {
        v14 = vcnt_s8(v13);
        v14.i16[0] = vaddlv_u8(v14);
        if (v14.u32[0] > 1uLL)
        {
          v15 = v9;
          if (*&v13 <= v9)
          {
            v15 = v9 % v13.i32[0];
          }
        }

        else
        {
          v15 = (v13.i32[0] - 1) & v9;
        }

        v16 = *(*(v12 + 304) + 8 * v15);
        if (v16)
        {
          v7 = *v16;
          if (*v16)
          {
            if (v14.u32[0] < 2uLL)
            {
              v17 = *&v13 - 1;
              while (1)
              {
                v19 = *(v7 + 8);
                if (v19 == v9)
                {
                  if (*(v7 + 16) == v9)
                  {
                    goto LABEL_48;
                  }
                }

                else if ((v19 & v17) != v15)
                {
                  goto LABEL_3;
                }

                v7 = *v7;
                if (!v7)
                {
                  goto LABEL_3;
                }
              }
            }

            do
            {
              v18 = *(v7 + 8);
              if (v18 == v9)
              {
                if (*(v7 + 16) == v9)
                {
LABEL_48:
                  std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>>>::remove((v12 + 304), v7, &__p);
                  v20 = __p;
                  __p = 0;
                  if (v20)
                  {
                    operator delete(v20);
                  }

                  break;
                }
              }

              else
              {
                if (v18 >= *&v13)
                {
                  v18 %= *&v13;
                }

                if (v18 != v15)
                {
                  break;
                }
              }

              v7 = *v7;
            }

            while (v7);
          }
        }
      }

LABEL_3:
      if (++v8 == v4)
      {
        return GPUTools::DYLockUtils::Unlock((v6 + 368), v7);
      }
    }

    while (1)
    {
      if (v9 == *(v11 - 9))
      {
        *(v11 - 9) = 0;
        if (v9 != *(v11 - 8))
        {
LABEL_11:
          if (v9 != *(v11 - 5))
          {
            goto LABEL_12;
          }

          goto LABEL_22;
        }
      }

      else if (v9 != *(v11 - 8))
      {
        goto LABEL_11;
      }

      *(v11 - 8) = 0;
      if (v9 != *(v11 - 5))
      {
LABEL_12:
        if (v9 != *(v11 - 6))
        {
          goto LABEL_13;
        }

        goto LABEL_23;
      }

LABEL_22:
      *(v11 - 5) = 0;
      if (v9 != *(v11 - 6))
      {
LABEL_13:
        if (v9 != *(v11 - 7))
        {
          goto LABEL_14;
        }

        goto LABEL_24;
      }

LABEL_23:
      *(v11 - 6) = 0;
      if (v9 != *(v11 - 7))
      {
LABEL_14:
        if (v9 != *(v11 - 4))
        {
          goto LABEL_15;
        }

        goto LABEL_25;
      }

LABEL_24:
      *(v11 - 7) = 0;
      if (v9 != *(v11 - 4))
      {
LABEL_15:
        if (v9 != *(v11 - 3))
        {
          goto LABEL_16;
        }

        goto LABEL_26;
      }

LABEL_25:
      *(v11 - 4) = 0;
      if (v9 != *(v11 - 3))
      {
LABEL_16:
        if (v9 != *(v11 - 2))
        {
          goto LABEL_17;
        }

        goto LABEL_27;
      }

LABEL_26:
      *(v11 - 3) = 0;
      if (v9 != *(v11 - 2))
      {
LABEL_17:
        if (v9 != *(v11 - 1))
        {
          goto LABEL_18;
        }

        goto LABEL_28;
      }

LABEL_27:
      *(v11 - 2) = 0;
      if (v9 != *(v11 - 1))
      {
LABEL_18:
        if (v9 == *v11)
        {
          goto LABEL_29;
        }

        goto LABEL_8;
      }

LABEL_28:
      *(v11 - 1) = 0;
      if (v9 == *v11)
      {
LABEL_29:
        *v11 = 0;
      }

LABEL_8:
      v11 += 10;
      if (!--v10)
      {
        goto LABEL_5;
      }
    }
  }

  return GPUTools::DYLockUtils::Unlock((v6 + 368), v7);
}

_DWORD *wrapper_cache_buffer_binding(_DWORD *result, int a2, int a3)
{
  if (a2 > 35344)
  {
    if (a2 > 36661)
    {
      if (a2 == 36662)
      {
        result[512] = a3;
        return result;
      }

      if (a2 == 36663)
      {
        result[513] = a3;
        return result;
      }
    }

    else
    {
      if (a2 == 35345)
      {
        result[516] = a3;
        return result;
      }

      if (a2 == 35982)
      {
        result[515] = a3;
        return result;
      }
    }
  }

  else if (a2 > 35050)
  {
    if (a2 == 35051)
    {
      result[510] = a3;
      return result;
    }

    if (a2 == 35052)
    {
      result[511] = a3;
      return result;
    }
  }

  else
  {
    if (a2 == 34962)
    {
      result[508] = a3;
      return result;
    }

    if (a2 == 34963)
    {
      result[509] = a3;
      return result;
    }
  }

  v3 = dy_abort("unsupported or unknown buffer target: 0x%04X", a2);
  return wrapper_cache_get_bound_buffer(v3, v4);
}

uint64_t wrapper_cache_get_bound_buffer(ContextInfo *a1, int a2)
{
  if (a2 > 35344)
  {
    if (a2 > 36661)
    {
      if (a2 == 36662)
      {
        return *(a1 + 512);
      }

      if (a2 == 36663)
      {
        return *(a1 + 513);
      }
    }

    else
    {
      if (a2 == 35345)
      {
        return *(a1 + 516);
      }

      if (a2 == 35982)
      {
        return *(a1 + 515);
      }
    }
  }

  else if (a2 > 35050)
  {
    if (a2 == 35051)
    {
      return *(a1 + 510);
    }

    if (a2 == 35052)
    {
      return *(a1 + 511);
    }
  }

  else
  {
    if (a2 == 34962)
    {
      return *(a1 + 508);
    }

    if (a2 == 34963)
    {
      return *(a1 + 509);
    }
  }

  v3 = dy_abort("unsupported or unknown buffer target: 0x%04X", a2);
  return wrapper_cache_buffer_binding_delete(v3, v4, v5);
}

uint64_t wrapper_cache_buffer_binding_delete(ContextInfo *a1, volatile int *a2, const unsigned int *a3)
{
  v4 = a2;
  v6 = *(a1 + 5);
  GPUTools::DYLockUtils::Lock((v6 + 56), a2);
  if (v4 >= 1)
  {
    v8 = 0;
    v9 = *(a1 + 5);
    do
    {
      v10 = a3[v8];
      if (v10 == *(a1 + 508))
      {
        *(a1 + 508) = 0;
        if (v10 != *(a1 + 509))
        {
LABEL_6:
          if (v10 != *(a1 + 510))
          {
            goto LABEL_7;
          }

          goto LABEL_17;
        }
      }

      else if (v10 != *(a1 + 509))
      {
        goto LABEL_6;
      }

      *(a1 + 509) = 0;
      if (v10 != *(a1 + 510))
      {
LABEL_7:
        if (v10 != *(a1 + 511))
        {
          goto LABEL_8;
        }

        goto LABEL_18;
      }

LABEL_17:
      *(a1 + 510) = 0;
      if (v10 != *(a1 + 511))
      {
LABEL_8:
        if (v10 != *(a1 + 512))
        {
          goto LABEL_9;
        }

        goto LABEL_19;
      }

LABEL_18:
      *(a1 + 511) = 0;
      if (v10 != *(a1 + 512))
      {
LABEL_9:
        if (v10 != *(a1 + 513))
        {
          goto LABEL_10;
        }

        goto LABEL_20;
      }

LABEL_19:
      *(a1 + 512) = 0;
      if (v10 != *(a1 + 513))
      {
LABEL_10:
        if (v10 != *(a1 + 514))
        {
          goto LABEL_11;
        }

        goto LABEL_21;
      }

LABEL_20:
      *(a1 + 513) = 0;
      if (v10 != *(a1 + 514))
      {
LABEL_11:
        if (v10 != *(a1 + 515))
        {
          goto LABEL_12;
        }

        goto LABEL_22;
      }

LABEL_21:
      *(a1 + 514) = 0;
      if (v10 != *(a1 + 515))
      {
LABEL_12:
        if (v10 != *(a1 + 516))
        {
          goto LABEL_13;
        }

        goto LABEL_23;
      }

LABEL_22:
      *(a1 + 515) = 0;
      if (v10 != *(a1 + 516))
      {
LABEL_13:
        v11 = *(v9 + 24);
        if (!*&v11)
        {
          goto LABEL_3;
        }

        goto LABEL_24;
      }

LABEL_23:
      *(a1 + 516) = 0;
      v11 = *(v9 + 24);
      if (!*&v11)
      {
        goto LABEL_3;
      }

LABEL_24:
      v12 = vcnt_s8(v11);
      v12.i16[0] = vaddlv_u8(v12);
      if (v12.u32[0] > 1uLL)
      {
        v13 = v10;
        if (*&v11 <= v10)
        {
          v13 = v10 % v11.i32[0];
        }
      }

      else
      {
        v13 = (v11.i32[0] - 1) & v10;
      }

      v14 = *(*(v9 + 16) + 8 * v13);
      if (v14)
      {
        v7 = *v14;
        if (*v14)
        {
          if (v12.u32[0] < 2uLL)
          {
            v15 = *&v11 - 1;
            while (1)
            {
              v16 = *(v7 + 8);
              if (v16 == v10)
              {
                if (*(v7 + 16) == v10)
                {
                  goto LABEL_44;
                }
              }

              else if ((v16 & v15) != v13)
              {
                goto LABEL_3;
              }

              v7 = *v7;
              if (!v7)
              {
                goto LABEL_3;
              }
            }
          }

          do
          {
            v17 = *(v7 + 8);
            if (v17 == v10)
            {
              if (*(v7 + 16) == v10)
              {
LABEL_44:
                std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>>>::remove((v9 + 16), v7, &__p);
                v18 = __p;
                __p = 0;
                if (v18)
                {
                  operator delete(v18);
                }

                break;
              }
            }

            else
            {
              if (v17 >= *&v11)
              {
                v17 %= *&v11;
              }

              if (v17 != v13)
              {
                break;
              }
            }

            v7 = *v7;
          }

          while (v7);
        }
      }

LABEL_3:
      ++v8;
    }

    while (v8 != v4);
  }

  return GPUTools::DYLockUtils::Unlock((v6 + 56), v7);
}

uint64_t wrapper_cache_buffer_target(uint64_t result, volatile int *a2)
{
  v3 = a2;
  if (a2 > 35344)
  {
    if (a2 > 36661)
    {
      if (a2 == 36662)
      {
        v4 = *(result + 2048);
        if (!v4)
        {
          return result;
        }

        goto LABEL_27;
      }

      if (a2 == 36663)
      {
        v4 = *(result + 2052);
        if (!v4)
        {
          return result;
        }

        goto LABEL_27;
      }
    }

    else
    {
      if (a2 == 35345)
      {
        v4 = *(result + 2064);
        if (!v4)
        {
          return result;
        }

        goto LABEL_27;
      }

      if (a2 == 35982)
      {
        v4 = *(result + 2060);
        if (!v4)
        {
          return result;
        }

        goto LABEL_27;
      }
    }

LABEL_51:
    v17 = dy_abort("unsupported or unknown buffer target: 0x%04X", a2);
    GPUTools::DYLockUtils::Unlock((v2 + 56), v18);
    _Unwind_Resume(v17);
  }

  if (a2 > 35050)
  {
    if (a2 == 35051)
    {
      v4 = *(result + 2040);
      if (!v4)
      {
        return result;
      }

      goto LABEL_27;
    }

    if (a2 == 35052)
    {
      v4 = *(result + 2044);
      if (!v4)
      {
        return result;
      }

      goto LABEL_27;
    }

    goto LABEL_51;
  }

  if (a2 == 34962)
  {
    v4 = *(result + 2032);
    if (!v4)
    {
      return result;
    }

    goto LABEL_27;
  }

  if (a2 != 34963)
  {
    goto LABEL_51;
  }

  v4 = *(result + 2036);
  if (!v4)
  {
    return result;
  }

LABEL_27:
  v5 = *(result + 40);
  v6 = result;
  GPUTools::DYLockUtils::Lock((v5 + 56), a2);
  v8 = *(v6 + 40);
  v9 = *(v8 + 24);
  if (!*&v9)
  {
    goto LABEL_47;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    v11 = v4;
    if (*&v9 <= v4)
    {
      v11 = v4 % v9.i32[0];
    }
  }

  else
  {
    v11 = (v9.i32[0] - 1) & v4;
  }

  v12 = *(*(v8 + 16) + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_47:
    v19 = __PAIR64__(v3, v4);
    std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,unsigned int>>((v8 + 16), &v19, &v19);
    return GPUTools::DYLockUtils::Unlock((v5 + 56), v7);
  }

  if (v10.u32[0] < 2uLL)
  {
    v14 = *&v9 - 1;
    while (1)
    {
      v15 = v13[1];
      if (v15 == v4)
      {
        if (*(v13 + 4) == v4)
        {
          goto LABEL_50;
        }
      }

      else if ((v15 & v14) != v11)
      {
        goto LABEL_47;
      }

      v13 = *v13;
      if (!v13)
      {
        goto LABEL_47;
      }
    }
  }

  while (1)
  {
    v16 = v13[1];
    if (v16 == v4)
    {
      break;
    }

    if (v16 >= *&v9)
    {
      v16 %= *&v9;
    }

    if (v16 != v11)
    {
      goto LABEL_47;
    }

LABEL_42:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_47;
    }
  }

  if (*(v13 + 4) != v4)
  {
    goto LABEL_42;
  }

LABEL_50:
  *(v13 + 5) = v3;
  return GPUTools::DYLockUtils::Unlock((v5 + 56), v7);
}

void wrapper_push_group_marker(ContextInfo *a1, size_t __n, const char *__src)
{
  if (__src)
  {
    if (__n < 1)
    {
      v5 = strlen(__src) + 1;
      if (v5 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }
    }

    else
    {
      v5 = __n;
    }

    if (v5 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v18) = v5;
    if (v5)
    {
      memcpy(&__dst, __src, v5);
      *(&__dst + v5) = 0;
      v7 = *(a1 + 13);
      v6 = *(a1 + 14);
      if (v7 < v6)
      {
        goto LABEL_8;
      }
    }

    else
    {
      LOBYTE(__dst) = 0;
      v7 = *(a1 + 13);
      v6 = *(a1 + 14);
      if (v7 < v6)
      {
LABEL_8:
        *v7 = __dst;
        *(v7 + 16) = v18;
        v8 = v7 + 24;
LABEL_22:
        *(a1 + 13) = v8;
        return;
      }
    }

    v9 = *(a1 + 12);
    v10 = v7 - v9;
    v11 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v9) >> 3);
    v12 = v11 + 1;
    if (v11 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<ProgramShaderInfo>::__throw_length_error[abi:ne200100]();
    }

    v13 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v9) >> 3);
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x555555555555555)
    {
      v14 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (v14 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v15 = 24 * v11;
    *v15 = __dst;
    *(v15 + 16) = v18;
    v8 = 24 * v11 + 24;
    v16 = 24 * v11 - v10;
    memcpy((v15 - v10), v9, v10);
    *(a1 + 12) = v16;
    *(a1 + 13) = v8;
    *(a1 + 14) = 0;
    if (v9)
    {
      operator delete(v9);
    }

    goto LABEL_22;
  }

  __dst = 0uLL;
  v18 = 0;
  std::vector<std::string>::emplace_back<std::string>(a1 + 96, &__dst);
  wrapper_push_group_marker(&__dst);
}

void sub_3D60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t wrapper_cache_shader_source(ContextInfo *a1, uint64_t a2)
{
  result = (*(*(a1 + 4) + 5240))(*(a1 + 2));
  if (result)
  {
    v6 = *(a1 + 5);
    GPUTools::DYLockUtils::Lock((v6 + 144), v5);
    v8 = *(find_info<std::unordered_map<unsigned int,std::shared_ptr<ShaderInfo>>>(a1, (*(a1 + 5) + 64), a2, 1) + 24);
    v9 = *v8;
    if (!**v8 && *(v8 + 52) == 1)
    {
      LODWORD(__size) = 0;
      (*(*(a1 + 4) + 5256))(*(a1 + 2), a2, 35720, &__size);
      if (__size)
      {
        StringBuffer::reserve(v9, __size);
        (*(*(a1 + 4) + 5032))(*(a1 + 2), a2, __size, 0, *v9);
      }

      else
      {
        StringBuffer::reserve(v9, 1uLL);
        **v9 = 0;
      }
    }

    return GPUTools::DYLockUtils::Unlock((v6 + 144), v7);
  }

  return result;
}

uint64_t find_info<std::unordered_map<unsigned int,std::shared_ptr<ShaderInfo>>>(ContextInfo *a1, void *a2, unsigned int a3, int a4)
{
  v4 = a2[1];
  if (v4)
  {
    v5 = vcnt_s8(v4);
    v5.i16[0] = vaddlv_u8(v5);
    if (v5.u32[0] > 1uLL)
    {
      v6 = a3;
      if (v4 <= a3)
      {
        v6 = a3 % v4;
      }
    }

    else
    {
      v6 = (v4 - 1) & a3;
    }

    v7 = *(*a2 + 8 * v6);
    if (v7)
    {
      result = *v7;
      if (*v7)
      {
        if (v5.u32[0] < 2uLL)
        {
          v9 = v4 - 1;
          while (1)
          {
            v10 = *(result + 8);
            if (v10 == a3)
            {
              if (*(result + 16) == a3)
              {
                return result;
              }
            }

            else if ((v10 & v9) != v6)
            {
              goto LABEL_21;
            }

            result = *result;
            if (!result)
            {
              goto LABEL_21;
            }
          }
        }

        do
        {
          v11 = *(result + 8);
          if (v11 == a3)
          {
            if (*(result + 16) == a3)
            {
              return result;
            }
          }

          else
          {
            if (v11 >= v4)
            {
              v11 %= v4;
            }

            if (v11 != v6)
            {
              break;
            }
          }

          result = *result;
        }

        while (result);
      }
    }
  }

LABEL_21:
  if (a4)
  {
    if (a3)
    {
      operator new();
    }

    find_info<std::unordered_map<unsigned int,std::shared_ptr<ShaderInfo>>>();
  }

  return 0;
}

void sub_40E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  std::pair<unsigned int const,std::shared_ptr<ShaderInfo>>::~pair(va);
  std::shared_ptr<ShaderInfo>::~shared_ptr[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void sub_4104(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t wrapper_cache_shader_pre_compile(ContextInfo *a1, uint64_t a2)
{
  result = (*(*(a1 + 4) + 5240))(*(a1 + 2));
  if (result)
  {
    v6 = *(a1 + 5);
    GPUTools::DYLockUtils::Lock((v6 + 144), v5);
    v8 = *(find_info<std::unordered_map<unsigned int,std::shared_ptr<ShaderInfo>>>(a1, (*(a1 + 5) + 64), a2, 1) + 24);
    v9 = *(v8 + 24);
    if (!v9 || *(v9 + 8))
    {
      v10 = *(v8 + 16);
      LODWORD(__size) = 0;
      (*(*(a1 + 4) + 5256))(*(a1 + 2), a2, 35716, &__size);
      if (__size)
      {
        StringBuffer::reserve(v10, __size);
        (*(*(a1 + 4) + 5272))(*(a1 + 2), a2, __size, 0, *v10);
      }

      else
      {
        StringBuffer::reserve(v10, 1uLL);
        **v10 = 0;
      }

      operator new();
    }

    return GPUTools::DYLockUtils::Unlock((v6 + 144), v7);
  }

  return result;
}

void sub_42AC(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  GPUTools::DYLockUtils::Unlock((v2 + 144), v5);
  _Unwind_Resume(a1);
}

uint64_t wrapper_cache_shader_post_compile(ContextInfo *a1, uint64_t a2)
{
  result = (*(*(a1 + 4) + 5240))(*(a1 + 2));
  if (result)
  {
    v6 = *(a1 + 5);
    GPUTools::DYLockUtils::Lock((v6 + 144), v5);
    v7 = find_info<std::unordered_map<unsigned int,std::shared_ptr<ShaderInfo>>>(a1, (*(a1 + 5) + 64), a2, 1);
    v8 = *(v7 + 24);
    v9 = *(v8 + 8);
    if (v9 && !*(v9 + 8))
    {
      StringBuffer::reserve(*v8, 0);
    }

    else if (**v8)
    {
      operator new();
    }

    *(*(v7 + 24) + 52) = 1;
    v12 = 0;
    (*(*(a1 + 4) + 5256))(*(a1 + 2), a2, 35713, &v12);
    if (gCheckGLErrors == 1 && v12 == 0)
    {
      handle_compile_shader_failure(a1, a2);
    }

    return GPUTools::DYLockUtils::Unlock((v6 + 144), v10);
  }

  return result;
}

uint64_t wrapper_cache_shader_label(ContextInfo *a1, uint64_t a2)
{
  result = (*(*(a1 + 4) + 5240))(*(a1 + 2));
  if (result)
  {
    v6 = *(a1 + 5);
    GPUTools::DYLockUtils::Lock((v6 + 144), v5);
    v8 = *(find_info<std::unordered_map<unsigned int,std::shared_ptr<ShaderInfo>>>(a1, (*(a1 + 5) + 64), a2, 1) + 24);
    v9 = *(v8 + 40);
    if (!v9 || *(v9 + 8))
    {
      v10 = *(v8 + 32);
      v12 = 0;
      (*(*(a1 + 4) + 6520))(*(a1 + 2), 35656, a2, 0, &v12, 0);
      v11 = v12++ + 1;
      StringBuffer::reserve(v10, v11);
      (*(*(a1 + 4) + 6520))(*(a1 + 2), 35656, a2, v12, 0, *v10);
      operator new();
    }

    return GPUTools::DYLockUtils::Unlock((v6 + 144), v7);
  }

  return result;
}

void sub_463C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  GPUTools::DYLockUtils::Unlock((v2 + 144), v5);
  _Unwind_Resume(a1);
}

id wrapper_cache_shader_post_attach(ContextInfo *a1, uint64_t a2, unsigned int a3)
{
  v4 = a2;
  result = [DYGetGLGuestAppClient() traceMode];
  if (result != 6)
  {
    v8 = *(a1 + 5);
    GPUTools::DYLockUtils::Lock((v8 + 144), v7);
    find_info<std::unordered_map<unsigned int,std::shared_ptr<ProgramInfo>>>(a1, (*(a1 + 5) + 104), v4, 1);
    v9 = find_info<std::unordered_map<unsigned int,std::shared_ptr<ShaderInfo>>>(a1, (*(a1 + 5) + 64), a3, 1);
    ++*(*(v9 + 24) + 48);
    return GPUTools::DYLockUtils::Unlock((v8 + 144), v10);
  }

  return result;
}

uint64_t find_info<std::unordered_map<unsigned int,std::shared_ptr<ProgramInfo>>>(ContextInfo *a1, void *a2, unsigned int a3, int a4)
{
  v4 = a2[1];
  if (v4)
  {
    v5 = vcnt_s8(v4);
    v5.i16[0] = vaddlv_u8(v5);
    if (v5.u32[0] > 1uLL)
    {
      v6 = a3;
      if (v4 <= a3)
      {
        v6 = a3 % v4;
      }
    }

    else
    {
      v6 = (v4 - 1) & a3;
    }

    v7 = *(*a2 + 8 * v6);
    if (v7)
    {
      result = *v7;
      if (*v7)
      {
        if (v5.u32[0] < 2uLL)
        {
          v9 = v4 - 1;
          while (1)
          {
            v10 = *(result + 8);
            if (v10 == a3)
            {
              if (*(result + 16) == a3)
              {
                return result;
              }
            }

            else if ((v10 & v9) != v6)
            {
              goto LABEL_21;
            }

            result = *result;
            if (!result)
            {
              goto LABEL_21;
            }
          }
        }

        do
        {
          v11 = *(result + 8);
          if (v11 == a3)
          {
            if (*(result + 16) == a3)
            {
              return result;
            }
          }

          else
          {
            if (v11 >= v4)
            {
              v11 %= v4;
            }

            if (v11 != v6)
            {
              break;
            }
          }

          result = *result;
        }

        while (result);
      }
    }
  }

LABEL_21:
  if (a4)
  {
    if (a3)
    {
      operator new();
    }

    find_info<std::unordered_map<unsigned int,std::shared_ptr<ProgramInfo>>>();
  }

  return 0;
}

void sub_4978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  std::pair<unsigned int const,std::shared_ptr<ShaderInfo>>::~pair(va);
  std::shared_ptr<ShaderInfo>::~shared_ptr[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void sub_4994(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t wrapper_cache_shader_pre_detach(ContextInfo *a1, volatile int *a2, uint64_t a3)
{
  v6 = *(a1 + 5);
  GPUTools::DYLockUtils::Lock((v6 + 144), a2);
  v8 = *(a1 + 5);
  v9 = v8[9];
  if (!v9)
  {
    goto LABEL_21;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    v11 = a3;
    if (v9 <= a3)
    {
      v11 = a3 % v9;
    }
  }

  else
  {
    v11 = (v9 - 1) & a3;
  }

  v12 = *(v8[8] + 8 * v11);
  if (v12)
  {
    v13 = *v12;
    if (*v12)
    {
      if (v10.u32[0] < 2uLL)
      {
        v14 = v9 - 1;
        while (1)
        {
          v15 = *(v13 + 8);
          if (v15 == a3)
          {
            if (*(v13 + 16) == a3)
            {
              goto LABEL_22;
            }
          }

          else if ((v15 & v14) != v11)
          {
            goto LABEL_21;
          }

          v13 = *v13;
          if (!v13)
          {
            goto LABEL_22;
          }
        }
      }

      do
      {
        v16 = *(v13 + 8);
        if (v16 == a3)
        {
          if (*(v13 + 16) == a3)
          {
            break;
          }
        }

        else
        {
          if (v16 >= v9)
          {
            v16 %= v9;
          }

          if (v16 != v11)
          {
            goto LABEL_21;
          }
        }

        v13 = *v13;
      }

      while (v13);
    }
  }

  else
  {
LABEL_21:
    v13 = 0;
  }

LABEL_22:
  v34 = v13;
  v17 = v8[14];
  if (!v17)
  {
    return GPUTools::DYLockUtils::Unlock((v6 + 144), v7);
  }

  v18 = vcnt_s8(v17);
  v18.i16[0] = vaddlv_u8(v18);
  if (v18.u32[0] > 1uLL)
  {
    v19 = a2;
    if (v17 <= a2)
    {
      v19 = a2 % v17;
    }
  }

  else
  {
    v19 = (v17 - 1) & a2;
  }

  v20 = *(v8[13] + 8 * v19);
  if (!v20)
  {
    return GPUTools::DYLockUtils::Unlock((v6 + 144), v7);
  }

  v21 = *v20;
  if (!v21)
  {
    return GPUTools::DYLockUtils::Unlock((v6 + 144), v7);
  }

  if (v18.u32[0] < 2uLL)
  {
    v22 = v17 - 1;
    while (1)
    {
      v24 = v21[1];
      if (v24 == a2)
      {
        if (*(v21 + 4) == a2)
        {
          goto LABEL_43;
        }
      }

      else if ((v24 & v22) != v19)
      {
        return GPUTools::DYLockUtils::Unlock((v6 + 144), v7);
      }

      v21 = *v21;
      if (!v21)
      {
        return GPUTools::DYLockUtils::Unlock((v6 + 144), v7);
      }
    }
  }

  while (1)
  {
    v23 = v21[1];
    if (v23 == a2)
    {
      break;
    }

    if (v23 >= v17)
    {
      v23 %= v17;
    }

    if (v23 != v19)
    {
      return GPUTools::DYLockUtils::Unlock((v6 + 144), v7);
    }

LABEL_32:
    v21 = *v21;
    if (!v21)
    {
      return GPUTools::DYLockUtils::Unlock((v6 + 144), v7);
    }
  }

  if (*(v21 + 4) != a2)
  {
    goto LABEL_32;
  }

LABEL_43:
  if (v13)
  {
    v33 = 0;
    (*(*(a1 + 4) + 5264))(*(a1 + 2), a2, 35717, &v33);
    ObjectNameArray::ObjectNameArray(v31, v33);
    (*(*(a1 + 4) + 6072))(*(a1 + 2), a2, v33, 0, v32);
    if (v33)
    {
      v25 = 4 * v33;
      v26 = v32;
      while (*v26 != a3)
      {
        ++v26;
        v25 -= 4;
        if (!v25)
        {
          goto LABEL_54;
        }
      }
    }

    else
    {
      v26 = v32;
    }

    if (v26 != &v32[v33])
    {
      v27 = *(v13 + 24);
      v28 = *(v27 + 48) - 1;
      *(v27 + 48) = v28;
      if (!v28)
      {
        v30 = 0;
        (*(*(a1 + 4) + 5256))(*(a1 + 2), a3, 35712, &v30);
        if (v30 == 1)
        {
          remove_shader_info_cache(a1, &v34, a3);
        }
      }
    }

LABEL_54:
    ObjectNameArray::~ObjectNameArray(v31);
  }

  return GPUTools::DYLockUtils::Unlock((v6 + 144), v7);
}

void sub_4C98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  ObjectNameArray::~ObjectNameArray(va);
  GPUTools::DYLockUtils::Unlock((v5 + 144), v7);
  _Unwind_Resume(a1);
}

void remove_shader_info_cache(void *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(*a2 + 24);
  v8 = *(v7 + 8);
  if (v8 && !*(v8 + 8) || (v9 = *v7, **v7))
  {
    v10 = *(v7 + 24);
    if (!v10)
    {
      goto LABEL_9;
    }
  }

  else
  {
    LODWORD(__size[0]) = 0;
    (*(a1[4] + 5256))(a1[2], a3, 35720, __size);
    if (LODWORD(__size[0]))
    {
      StringBuffer::reserve(v9, SLODWORD(__size[0]));
      (*(a1[4] + 5032))(a1[2], a3, LODWORD(__size[0]), 0, *v9);
      v7 = *(v6 + 24);
      v10 = *(v7 + 24);
      if (!v10)
      {
        goto LABEL_9;
      }
    }

    else
    {
      remove_shader_info_cache(v9);
      v7 = *(v6 + 24);
      v10 = *(v7 + 24);
      if (!v10)
      {
        goto LABEL_9;
      }
    }
  }

  if (!*(v10 + 8))
  {
    goto LABEL_10;
  }

LABEL_9:
  v11 = *(v7 + 16);
  if (*v11)
  {
LABEL_10:
    v12 = *(v7 + 40);
    if (!v12)
    {
      goto LABEL_15;
    }

LABEL_14:
    if (!*(v12 + 8))
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  LODWORD(__size[0]) = 0;
  (*(a1[4] + 5256))(a1[2], a3, 35716, __size);
  if (!LODWORD(__size[0]))
  {
    remove_shader_info_cache(v11);
    v7 = *(v6 + 24);
    v12 = *(v7 + 40);
    if (!v12)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  StringBuffer::reserve(v11, SLODWORD(__size[0]));
  (*(a1[4] + 5272))(a1[2], a3, LODWORD(__size[0]), 0, *v11);
  v7 = *(v6 + 24);
  v12 = *(v7 + 40);
  if (v12)
  {
    goto LABEL_14;
  }

LABEL_15:
  v13 = *(v7 + 32);
  LODWORD(__size[0]) = 0;
  (*(a1[4] + 6520))(a1[2], 35656, a3, 0, __size, 0);
  v14 = SLODWORD(__size[0]) + 1;
  ++LODWORD(__size[0]);
  StringBuffer::reserve(v13, v14);
  (*(a1[4] + 6520))(a1[2], 35656, a3, LODWORD(__size[0]), 0, *v13);
LABEL_16:
  std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>>>::remove((a1[5] + 64), *a2, __size);
  v15 = __size[0];
  __size[0] = 0;
  if (v15)
  {
    if (v19 == 1)
    {
      v16 = v15[4];
      if (v16)
      {
        if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v17 = v15;
          (v16->__on_zero_shared)(v16);
          std::__shared_weak_count::__release_weak(v16);
          v15 = v17;
        }
      }
    }

    operator delete(v15);
  }
}

uint64_t wrapper_cache_shader_delete(ContextInfo *a1, volatile int *a2)
{
  v4 = *(a1 + 5);
  GPUTools::DYLockUtils::Lock((v4 + 144), a2);
  v6 = *(a1 + 5);
  v7 = *(v6 + 72);
  if (v7)
  {
    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v9 = a2;
      if (v7 <= a2)
      {
        v9 = a2 % v7;
      }
    }

    else
    {
      v9 = (v7 - 1) & a2;
    }

    v10 = *(*(v6 + 64) + 8 * v9);
    if (v10)
    {
      v11 = *v10;
      if (v11)
      {
        if (v8.u32[0] < 2uLL)
        {
          v12 = v7 - 1;
          while (1)
          {
            v13 = *(v11 + 8);
            if (v13 == a2)
            {
              if (*(v11 + 16) == a2)
              {
                goto LABEL_22;
              }
            }

            else if ((v13 & v12) != v9)
            {
              return GPUTools::DYLockUtils::Unlock((v4 + 144), v5);
            }

            v11 = *v11;
            if (!v11)
            {
              return GPUTools::DYLockUtils::Unlock((v4 + 144), v5);
            }
          }
        }

        do
        {
          v14 = *(v11 + 8);
          if (v14 == a2)
          {
            if (*(v11 + 16) == a2)
            {
LABEL_22:
              v16 = v11;
              if (!*(*(v11 + 24) + 48))
              {
                remove_shader_info_cache(a1, &v16, a2);
              }

              return GPUTools::DYLockUtils::Unlock((v4 + 144), v5);
            }
          }

          else
          {
            if (v14 >= v7)
            {
              v14 %= v7;
            }

            if (v14 != v9)
            {
              return GPUTools::DYLockUtils::Unlock((v4 + 144), v5);
            }
          }

          v11 = *v11;
        }

        while (v11);
      }
    }
  }

  return GPUTools::DYLockUtils::Unlock((v4 + 144), v5);
}

id wrapper_cache_program_use(ContextInfo *a1, unsigned int a2)
{
  result = [DYGetGLGuestAppClient() traceMode];
  if (result != 6)
  {
    v6 = *(a1 + 5);
    GPUTools::DYLockUtils::Lock((v6 + 144), v5);
    v7 = *(a1 + 517);
    if (v7 != a2)
    {
      detach_program(a1, v7);
      *(a1 + 517) = a2;
      if (a2)
      {
        v8 = find_info<std::unordered_map<unsigned int,std::shared_ptr<ProgramInfo>>>(a1, (*(a1 + 5) + 104), a2, 1);
        ++*(*(v8 + 24) + 372);
      }
    }

    return GPUTools::DYLockUtils::Unlock((v6 + 144), v7);
  }

  return result;
}

void detach_program(ContextInfo *a1, uint64_t a2)
{
  if ([DYGetGLGuestAppClient() traceMode] != 6)
  {
    v4 = *(a1 + 5);
    v5 = *(v4 + 112);
    if (v5)
    {
      v6 = vcnt_s8(v5);
      v6.i16[0] = vaddlv_u8(v6);
      if (v6.u32[0] > 1uLL)
      {
        v7 = a2;
        if (v5 <= a2)
        {
          v7 = a2 % v5;
        }
      }

      else
      {
        v7 = (v5 - 1) & a2;
      }

      v8 = *(*(v4 + 104) + 8 * v7);
      if (v8)
      {
        v9 = *v8;
        if (*v8)
        {
          if (v6.u32[0] < 2uLL)
          {
            v10 = v5 - 1;
            while (1)
            {
              v12 = *(v9 + 8);
              if (v12 == a2)
              {
                if (*(v9 + 16) == a2)
                {
                  goto LABEL_23;
                }
              }

              else if ((v12 & v10) != v7)
              {
                return;
              }

              v9 = *v9;
              if (!v9)
              {
                return;
              }
            }
          }

          do
          {
            v11 = *(v9 + 8);
            if (v11 == a2)
            {
              if (*(v9 + 16) == a2)
              {
LABEL_23:
                --*(*(v9 + 24) + 372);
                if ((*(*(a1 + 4) + 5248))(*(a1 + 2), a2))
                {
                  LODWORD(v16[0]) = 0;
                  (*(*(a1 + 4) + 5264))(*(a1 + 2), a2, 35714, v16);
                  if (!LODWORD(v16[0]) && !*(*(v9 + 24) + 372))
                  {
                    detach_program(v9 + 24);
                  }
                }

                else
                {
                  std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>>>::remove((v4 + 104), v9, v16);
                  v13 = v16[0];
                  v16[0] = 0;
                  if (v13)
                  {
                    if (v17 == 1)
                    {
                      v14 = v13[4];
                      if (v14)
                      {
                        if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                        {
                          v15 = v13;
                          (v14->__on_zero_shared)(v14);
                          std::__shared_weak_count::__release_weak(v14);
                          v13 = v15;
                        }
                      }
                    }

                    operator delete(v13);
                  }
                }

                return;
              }
            }

            else
            {
              if (v11 >= v5)
              {
                v11 %= v5;
              }

              if (v11 != v7)
              {
                return;
              }
            }

            v9 = *v9;
          }

          while (v9);
        }
      }
    }
  }
}

uint64_t wrapper_cache_program_delete(ContextInfo *a1, volatile int *a2)
{
  v2 = a2;
  v4 = *(a1 + 5);
  GPUTools::DYLockUtils::Lock((v4 + 144), a2);
  v6 = *(a1 + 5);
  v7 = *(v6 + 112);
  if (v7)
  {
    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v9 = v2;
      if (v7 <= v2)
      {
        v9 = v2 % v7;
      }
    }

    else
    {
      v9 = (v7 - 1) & v2;
    }

    v10 = *(*(v6 + 104) + 8 * v9);
    if (v10)
    {
      v5 = *v10;
      if (*v10)
      {
        if (v8.u32[0] < 2uLL)
        {
          v11 = v7 - 1;
          while (1)
          {
            v12 = v5[1];
            if (v12 == v2)
            {
              if (*(v5 + 4) == v2)
              {
                goto LABEL_22;
              }
            }

            else if ((v12 & v11) != v9)
            {
              return GPUTools::DYLockUtils::Unlock((v4 + 144), v5);
            }

            v5 = *v5;
            if (!v5)
            {
              return GPUTools::DYLockUtils::Unlock((v4 + 144), v5);
            }
          }
        }

        do
        {
          v13 = v5[1];
          if (v13 == v2)
          {
            if (*(v5 + 4) == v2)
            {
LABEL_22:
              if (!*(v5[3] + 372))
              {
                std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>>>::remove((v6 + 104), v5, &v18);
                v14 = v18;
                v18 = 0;
                if (v14)
                {
                  if (v19 == 1)
                  {
                    v15 = v14[4];
                    if (v15)
                    {
                      if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                      {
                        v16 = v14;
                        (v15->__on_zero_shared)(v15);
                        std::__shared_weak_count::__release_weak(v15);
                        v14 = v16;
                      }
                    }
                  }

                  operator delete(v14);
                }
              }

              return GPUTools::DYLockUtils::Unlock((v4 + 144), v5);
            }
          }

          else
          {
            if (v13 >= v7)
            {
              v13 %= v7;
            }

            if (v13 != v9)
            {
              return GPUTools::DYLockUtils::Unlock((v4 + 144), v5);
            }
          }

          v5 = *v5;
        }

        while (v5);
      }
    }
  }

  return GPUTools::DYLockUtils::Unlock((v4 + 144), v5);
}

uint64_t wrapper_cache_program_xfb_varyings(ContextInfo *a1, uint64_t a2)
{
  result = (*(*(a1 + 4) + 5248))(*(a1 + 2));
  if (result)
  {
    v9 = 0;
    result = (*(*(a1 + 4) + 5264))(*(a1 + 2), a2, 35714, &v9);
    if (v9)
    {
      v6 = *(a1 + 5);
      GPUTools::DYLockUtils::Lock((v6 + 144), v5);
      v8 = *(find_info<std::unordered_map<unsigned int,std::shared_ptr<ProgramInfo>>>(a1, (*(a1 + 5) + 104), a2, 1) + 24);
      if ((*(v8 + 320) & 1) == 0)
      {
        ProgramXfb::update((v8 + 288), a1, a2);
      }

      return GPUTools::DYLockUtils::Unlock((v6 + 144), v7);
    }
  }

  return result;
}

uint64_t wrapper_cache_program_pre_link(ContextInfo *a1, uint64_t a2)
{
  result = (*(*(a1 + 4) + 5248))(*(a1 + 2));
  if (result)
  {
    v6 = *(a1 + 5);
    GPUTools::DYLockUtils::Lock((v6 + 144), v5);
    v8 = *(find_info<std::unordered_map<unsigned int,std::shared_ptr<ProgramInfo>>>(a1, (*(a1 + 5) + 104), a2, 1) + 24);
    v9 = *(v8 + 128);
    if (!v9 || *(v9 + 8))
    {
      v10 = *(v8 + 120);
      LODWORD(__size) = 0;
      (*(*(a1 + 4) + 5264))(*(a1 + 2), a2, 35716, &__size);
      if (__size)
      {
        StringBuffer::reserve(v10, __size);
        (*(*(a1 + 4) + 5280))(*(a1 + 2), a2, __size, 0, *v10);
      }

      else
      {
        StringBuffer::reserve(v10, 1uLL);
        **v10 = 0;
      }

      operator new();
    }

    return GPUTools::DYLockUtils::Unlock((v6 + 144), v7);
  }

  return result;
}

void sub_5768(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  GPUTools::DYLockUtils::Unlock((v2 + 144), v5);
  _Unwind_Resume(a1);
}

id wrapper_cache_program_link(int8x8_t **a1, uint64_t a2, int a3)
{
  result = [DYGetGLGuestAppClient() traceMode];
  if (result != 6)
  {
    v42 = a1[5];
    GPUTools::DYLockUtils::Lock(&v42[18], v7);
    v8 = find_info<std::unordered_map<unsigned int,std::shared_ptr<ProgramInfo>>>(a1, &a1[5][13], a2, 1);
    v9 = *(v8 + 24);
    v10 = *v9;
    v11 = v9[1];
    if (v11 != *v9)
    {
      do
      {
        v11 -= 7;
        std::allocator<ProgramShaderInfo>::destroy[abi:ne200100](v9, v11);
      }

      while (v11 != v10);
    }

    v12 = v9[3];
    v9[1] = v10;
    for (i = v9[4]; i != v12; std::allocator<ProgramShaderInfo>::destroy[abi:ne200100]((v9 + 3), i))
    {
      i -= 7;
    }

    v14 = v9[6];
    v9[4] = v12;
    for (j = v9[7]; j != v14; std::allocator<ProgramShaderInfo>::destroy[abi:ne200100]((v9 + 6), j))
    {
      j -= 7;
    }

    v16 = v9[9];
    v9[7] = v14;
    for (k = v9[10]; k != v16; std::allocator<ProgramShaderInfo>::destroy[abi:ne200100]((v9 + 9), k))
    {
      k -= 7;
    }

    v18 = v9[12];
    v9[10] = v16;
    for (m = v9[13]; m != v18; std::allocator<ProgramShaderInfo>::destroy[abi:ne200100]((v9 + 12), m))
    {
      m -= 7;
    }

    v9[13] = v18;
    *(*(v8 + 24) + 377) = 1;
    v50 = 0;
    v20 = a1[5];
    (a1[4][658])(a1[2], a2, 35717, &v50);
    v41 = a3;
    ObjectNameArray::ObjectNameArray(v48, v50);
    (a1[4][759])(a1[2], a2, v50, 0, v49);
    if (v50)
    {
      for (n = 0; n < v50; ++n)
      {
        v22 = *(v49 + 4 * n);
        v23 = v20[9];
        if (!*&v23)
        {
          goto LABEL_35;
        }

        v24 = vcnt_s8(v23);
        v24.i16[0] = vaddlv_u8(v24);
        if (v24.u32[0] > 1uLL)
        {
          v25 = *(v49 + 4 * n);
          if (*&v23 <= v22)
          {
            v25 = v22 % v23.i32[0];
          }
        }

        else
        {
          v25 = (v23.i32[0] - 1) & v22;
        }

        v26 = *(*&v20[8] + 8 * v25);
        if (v26)
        {
          v27 = *v26;
          if (*v26)
          {
            if (v24.u32[0] < 2uLL)
            {
              v28 = *&v23 - 1;
              while (1)
              {
                v29 = v27[1];
                if (v29 == v22)
                {
                  if (*(v27 + 4) == v22)
                  {
                    goto LABEL_36;
                  }
                }

                else if ((v29 & v28) != v25)
                {
                  goto LABEL_35;
                }

                v27 = *v27;
                if (!v27)
                {
                  goto LABEL_36;
                }
              }
            }

            do
            {
              v30 = v27[1];
              if (v30 == v22)
              {
                if (*(v27 + 4) == v22)
                {
                  break;
                }
              }

              else
              {
                if (v30 >= *&v23)
                {
                  v30 %= *&v23;
                }

                if (v30 != v25)
                {
                  goto LABEL_35;
                }
              }

              v27 = *v27;
            }

            while (v27);
          }
        }

        else
        {
LABEL_35:
          v27 = 0;
        }

LABEL_36:
        v47 = 0;
        (a1[4][657])(a1[2], v22, 35663, &v47);
        v31 = *(v8 + 24);
        if (v47 == 36313)
        {
          v31 += 6;
        }

        else if (v47 != 35633)
        {
          if (v47 != 35632)
          {
            result = dy_abort("unknown shader type: 0x%04x", v47);
            __break(1u);
            return result;
          }

          v31 += 3;
        }

        ProgramShaderInfo::ProgramShaderInfo(&v43, v22, v27[3]);
        v32 = v31[1];
        if (v32 >= v31[2])
        {
          v34 = std::vector<ProgramShaderInfo>::__emplace_back_slow_path<ProgramShaderInfo>(v31, &v43);
          v35 = *(&v46 + 1);
          v31[1] = v34;
          if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v35->__on_zero_shared)(v35);
            std::__shared_weak_count::__release_weak(v35);
            v33 = *(&v45 + 1);
            if (*(&v45 + 1))
            {
LABEL_47:
              if (!atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v33->__on_zero_shared)(v33);
                std::__shared_weak_count::__release_weak(v33);
              }
            }
          }

          else
          {
            v33 = *(&v45 + 1);
            if (*(&v45 + 1))
            {
              goto LABEL_47;
            }
          }
        }

        else
        {
          *v32 = v43;
          *(v32 + 8) = v44;
          v44 = 0uLL;
          *(v32 + 24) = v45;
          v45 = 0uLL;
          *(v32 + 40) = v46;
          v46 = 0uLL;
          v31[1] = v32 + 56;
          v33 = *(&v45 + 1);
          if (*(&v45 + 1))
          {
            goto LABEL_47;
          }
        }

        v36 = *(&v44 + 1);
        if (*(&v44 + 1) && !atomic_fetch_add((*(&v44 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v36->__on_zero_shared)(v36);
          std::__shared_weak_count::__release_weak(v36);
        }
      }
    }

    v43 = 0;
    if (*(a1 + 4846))
    {
      (a1[4][658])(a1[2], a2, 33368, &v43);
      v37 = *(v8 + 24);
      v38 = *(v37 + 136) & 0xFFFFFFFFFFFFFFFELL;
      if (v43)
      {
        ++v38;
      }

      *(v37 + 136) = v38;
    }

    if (*(a1 + 864) == 4)
    {
      (a1[4][658])(a1[2], a2, 33367, &v43);
      *(*(v8 + 24) + 136) = *(*(v8 + 24) + 136) & 0xFFFFFFFFFFFFFFFDLL | (2 * (v43 != 0));
    }

    if (v41)
    {
      ProgramPipelineInfo::operator=((*(v8 + 24) + 144), *(v8 + 24));
      v39 = *(v8 + 24);
      *(v39 + 376) = 0;
      ProgramXfb::clear((v39 + 288));
    }

    else if (gCheckGLErrors == 1)
    {
      handle_link_program_failure(a1, a2, 0);
    }

    ObjectNameArray::~ObjectNameArray(v48);
    return GPUTools::DYLockUtils::Unlock(&v42[18], v40);
  }

  return result;
}

void sub_5D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  ObjectNameArray::~ObjectNameArray(va);
  GPUTools::DYLockUtils::Unlock((a11 + 144), v20);
  _Unwind_Resume(a1);
}

void ProgramShaderInfo::~ProgramShaderInfo(ProgramShaderInfo *this)
{
  v1 = *(this + 6);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = this;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    this = v2;
  }

  v3 = *(this + 4);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v4 = this;
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    this = v4;
  }

  v5 = *(this + 2);
  if (v5)
  {
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }
}

uint64_t *ProgramPipelineInfo::operator=(uint64_t *a1, char **a2)
{
  if (a1 != a2)
  {
    std::vector<ProgramShaderInfo>::__assign_with_size[abi:ne200100]<ProgramShaderInfo*,ProgramShaderInfo*>(a1, *a2, a2[1], 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 3));
    std::vector<ProgramShaderInfo>::__assign_with_size[abi:ne200100]<ProgramShaderInfo*,ProgramShaderInfo*>(a1 + 3, a2[3], a2[4], 0x6DB6DB6DB6DB6DB7 * ((a2[4] - a2[3]) >> 3));
    std::vector<ProgramShaderInfo>::__assign_with_size[abi:ne200100]<ProgramShaderInfo*,ProgramShaderInfo*>(a1 + 6, a2[6], a2[7], 0x6DB6DB6DB6DB6DB7 * ((a2[7] - a2[6]) >> 3));
    std::vector<ProgramShaderInfo>::__assign_with_size[abi:ne200100]<ProgramShaderInfo*,ProgramShaderInfo*>(a1 + 9, a2[9], a2[10], 0x6DB6DB6DB6DB6DB7 * ((a2[10] - a2[9]) >> 3));
    std::vector<ProgramShaderInfo>::__assign_with_size[abi:ne200100]<ProgramShaderInfo*,ProgramShaderInfo*>(a1 + 12, a2[12], a2[13], 0x6DB6DB6DB6DB6DB7 * ((a2[13] - a2[12]) >> 3));
  }

  v5 = a2[15];
  v4 = a2[16];
  if (v4)
  {
    atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  }

  v6 = a1[16];
  a1[15] = v5;
  a1[16] = v4;
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  a1[17] = a2[17];
  return a1;
}

uint64_t *wrapper_cache_active_transform_feedback(ContextInfo *a1)
{
  v4 = 0;
  (*(*(a1 + 4) + 832))(*(a1 + 2), 35725, &v4);
  if (!v4)
  {
    (*(*(a1 + 4) + 832))(*(a1 + 2), 33370, &v4 + 4);
    v3 = 0;
    if (*(a1 + 864) != 4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v3 = 0;
  if (*(a1 + 864) == 4)
  {
LABEL_3:
    (*(*(a1 + 4) + 832))(*(a1 + 2), 36389, &v3);
  }

LABEL_4:
  v5 = &v3;
  result = std::__hash_table<std::__hash_value_type<unsigned int,ActiveTransformFeedbackInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ActiveTransformFeedbackInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ActiveTransformFeedbackInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ActiveTransformFeedbackInfo>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1 + 445, &v3, &std::piecewise_construct, &v5);
  *(result + 20) = v4;
  return result;
}

id wrapper_cache_pipeline_use_stages(unsigned int **a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, int a6)
{
  result = [DYGetGLGuestAppClient() traceMode];
  if (result != 6)
  {
    v13 = a1[5];
    GPUTools::DYLockUtils::Lock((v13 + 36), v12);
    if (a4)
    {
      v14 = find_info<std::unordered_map<unsigned int,std::shared_ptr<ProgramInfo>>>(a1, a1[5] + 13, a4, 1);
    }

    else
    {
      v14 = 0;
    }

    query_pipeline_programs(a1, a2, &v26);
    v19 = a5[1];
    if (v19 != HIDWORD(v26))
    {
      detach_program(a1, v19);
      if (a4)
      {
        if (HIDWORD(v26) == a4)
        {
          ++*(*(v14 + 24) + 372);
        }
      }
    }

    v20 = a5[2];
    if (v20 != v27)
    {
      detach_program(a1, v20);
      if (a4)
      {
        if (v27 == a4)
        {
          ++*(*(v14 + 24) + 372);
        }
      }
    }

    v21 = a5[3];
    if (v21 != v28)
    {
      detach_program(a1, v21);
      if (a4)
      {
        if (v28 == a4)
        {
          ++*(*(v14 + 24) + 372);
        }
      }
    }

    v22 = a5[4];
    if (v22 != v29)
    {
      detach_program(a1, v22);
      if (a4)
      {
        if (v29 == a4)
        {
          ++*(*(v14 + 24) + 372);
        }
      }
    }

    v23 = a5[5];
    if (v23 != v30)
    {
      detach_program(a1, v23);
      v23 = v30;
      if (a4)
      {
        if (v30 == a4)
        {
          ++*(*(v14 + 24) + 372);
          v23 = a4;
        }
      }
    }

    if (a6)
    {
      GPUTools::FB::Encode((a1 + 15), 4294955024, 0, "Ciuiuiuiuiuiui", v15, v16, v17, v18, *a1, 15, a2, HIDWORD(v26), v27, v28, v29, v23);
      v24 = [DYGetGLGuestAppClient() defaultFbufStream];
      v25 = v24;
      while (atomic_exchange(v24 + 14, 1u) == 1)
      {
          ;
        }
      }

      GPUTools::FB::Stream::Write_nolock();
      atomic_store(0, v25 + 14);
    }

    return GPUTools::DYLockUtils::Unlock((v13 + 36), v23);
  }

  return result;
}

void sub_62E8(_Unwind_Exception *a1, volatile int *a2)
{
  atomic_store(0, (v2 + 56));
  GPUTools::DYLockUtils::Unlock((v3 + 144), a2);
  _Unwind_Resume(a1);
}

id wrapper_cache_pipeline_active_shader_program(ContextInfo *a1, uint64_t a2, unsigned int a3, _DWORD *a4)
{
  result = [DYGetGLGuestAppClient() traceMode];
  if (result != 6 && *a4 != a3)
  {
    v10 = *(a1 + 5);
    GPUTools::DYLockUtils::Lock((v10 + 144), v8);
    detach_program(a1, *a4);
    v11 = find_info<std::unordered_map<unsigned int,std::shared_ptr<ProgramInfo>>>(a1, (*(a1 + 5) + 104), a3, 1);
    ++*(*(v11 + 24) + 372);
    return GPUTools::DYLockUtils::Unlock((v10 + 144), v12);
  }

  return result;
}

void wrapper_cache_pipeline_delete(ContextInfo *a1, unsigned int a2, unsigned int *a3, uint64_t a4)
{
  if (a2)
  {
    if ((a2 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<ProgramShaderInfo>::__throw_length_error[abi:ne200100]();
  }

  (*(a4 + 16))();
  v5 = *(a1 + 5);
  GPUTools::DYLockUtils::Lock((v5 + 144), v6);
  GPUTools::DYLockUtils::Unlock((v5 + 144), v7);
}

void sub_6964(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void wrapper_cache_pipeline_create_shader_program(ContextInfo *a1, uint64_t a2, int a3, unint64_t a4, const char **a5)
{
  if ([DYGetGLGuestAppClient() traceMode] != 6)
  {
    ShaderInfo::ShaderInfo(v6, a1);
    StringBuffer::reserve(v6[2], 1uLL);
    operator new[]();
  }
}

void sub_6DD4(_Unwind_Exception *a1, volatile int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  GPUTools::DYLockUtils::Unlock((v17 + 144), a2);
  ShaderInfo::~ShaderInfo(va);
  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>>>::remove@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *result;
  v7 = *(*result + 8 * v4);
  do
  {
    v8 = v7;
    v7 = *v7;
  }

  while (v7 != a2);
  if (v8 == result + 2)
  {
    goto LABEL_18;
  }

  v9 = v8[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v9 >= *&v3)
    {
      v9 %= *&v3;
    }
  }

  else
  {
    v9 &= *&v3 - 1;
  }

  if (v9 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v10 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v10 >= *&v3)
      {
        v10 %= *&v3;
      }
    }

    else
    {
      v10 &= *&v3 - 1;
    }

    if (v10 != v4)
    {
LABEL_19:
      *(v6 + 8 * v4) = 0;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    v12 = *(v11 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v12 >= *&v3)
      {
        v12 %= *&v3;
      }
    }

    else
    {
      v12 &= *&v3 - 1;
    }

    if (v12 != v4)
    {
      *(v6 + 8 * v12) = v8;
      v11 = *a2;
    }
  }

  *v8 = v11;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

void **std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,void *>>>>::~unique_ptr[abi:ne200100](void **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1)
    {
      v4 = v2[4];
      if (v4)
      {
        if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v5 = v2;
          (v4->__on_zero_shared)(v4);
          std::__shared_weak_count::__release_weak(v4);
          v2 = v5;
        }
      }
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

uint64_t std::pair<unsigned int const,std::shared_ptr<ShaderInfo>>::~pair(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

uint64_t std::shared_ptr<ShaderInfo>::~shared_ptr[abi:ne200100](uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

char **ProgramPipelineInfo::operator=(char **a1, uint64_t a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = a1[1];
    v6 = *a1;
    if (v5 != v4)
    {
      do
      {
        v5 -= 56;
        std::allocator<ProgramShaderInfo>::destroy[abi:ne200100](a1, v5);
      }

      while (v5 != v4);
      v6 = *a1;
    }

    a1[1] = v4;
    operator delete(v6);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = *a2;
  a1[2] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v7 = a1 + 3;
  v8 = a1[3];
  if (v8)
  {
    v9 = a1[4];
    v10 = a1[3];
    if (v9 != v8)
    {
      do
      {
        v9 -= 56;
        std::allocator<ProgramShaderInfo>::destroy[abi:ne200100]((a1 + 3), v9);
      }

      while (v9 != v8);
      v10 = *v7;
    }

    a1[4] = v8;
    operator delete(v10);
    *v7 = 0;
    a1[4] = 0;
    a1[5] = 0;
  }

  *(a1 + 3) = *(a2 + 24);
  a1[5] = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v11 = a1 + 6;
  v12 = a1[6];
  if (v12)
  {
    v13 = a1[7];
    v14 = a1[6];
    if (v13 != v12)
    {
      do
      {
        v13 -= 56;
        std::allocator<ProgramShaderInfo>::destroy[abi:ne200100]((a1 + 6), v13);
      }

      while (v13 != v12);
      v14 = *v11;
    }

    a1[7] = v12;
    operator delete(v14);
    *v11 = 0;
    a1[7] = 0;
    a1[8] = 0;
  }

  *(a1 + 3) = *(a2 + 48);
  a1[8] = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  v15 = a1 + 9;
  v16 = a1[9];
  if (v16)
  {
    v17 = a1[10];
    v18 = a1[9];
    if (v17 != v16)
    {
      do
      {
        v17 -= 56;
        std::allocator<ProgramShaderInfo>::destroy[abi:ne200100]((a1 + 9), v17);
      }

      while (v17 != v16);
      v18 = *v15;
    }

    a1[10] = v16;
    operator delete(v18);
    *v15 = 0;
    a1[10] = 0;
    a1[11] = 0;
  }

  *(a1 + 9) = *(a2 + 72);
  a1[11] = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  v19 = a1 + 12;
  v20 = a1[12];
  if (v20)
  {
    v21 = a1[13];
    v22 = a1[12];
    if (v21 != v20)
    {
      do
      {
        v21 -= 56;
        std::allocator<ProgramShaderInfo>::destroy[abi:ne200100]((a1 + 12), v21);
      }

      while (v21 != v20);
      v22 = *v19;
    }

    a1[13] = v20;
    operator delete(v22);
    *v19 = 0;
    a1[13] = 0;
    a1[14] = 0;
  }

  *(a1 + 6) = *(a2 + 96);
  a1[14] = *(a2 + 112);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  v23 = *(a2 + 120);
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  v24 = a1[16];
  *(a1 + 15) = v23;
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

  a1[17] = *(a2 + 136);
  return a1;
}

void std::allocator<ProgramShaderInfo>::destroy[abi:ne200100](uint64_t a1, void *a2)
{
  v3 = a2[6];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a2[4];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    v5 = a2[2];
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = a2[2];
    if (!v5)
    {
      return;
    }
  }

  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

void ProgramPipelineInfo::~ProgramPipelineInfo(ProgramPipelineInfo *this)
{
  v2 = *(this + 16);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(this + 12);
  if (v3)
  {
    v4 = *(this + 13);
    v5 = *(this + 12);
    if (v4 != v3)
    {
      do
      {
        v4 -= 7;
        std::allocator<ProgramShaderInfo>::destroy[abi:ne200100](this + 96, v4);
      }

      while (v4 != v3);
      v5 = *(this + 12);
    }

    *(this + 13) = v3;
    operator delete(v5);
  }

  v6 = *(this + 9);
  if (v6)
  {
    v7 = *(this + 10);
    v8 = *(this + 9);
    if (v7 != v6)
    {
      do
      {
        v7 -= 7;
        std::allocator<ProgramShaderInfo>::destroy[abi:ne200100](this + 72, v7);
      }

      while (v7 != v6);
      v8 = *(this + 9);
    }

    *(this + 10) = v6;
    operator delete(v8);
  }

  v9 = *(this + 6);
  if (v9)
  {
    v10 = *(this + 7);
    v11 = *(this + 6);
    if (v10 != v9)
    {
      do
      {
        v10 -= 7;
        std::allocator<ProgramShaderInfo>::destroy[abi:ne200100](this + 48, v10);
      }

      while (v10 != v9);
      v11 = *(this + 6);
    }

    *(this + 7) = v9;
    operator delete(v11);
  }

  v12 = *(this + 3);
  if (v12)
  {
    v13 = *(this + 4);
    v14 = *(this + 3);
    if (v13 != v12)
    {
      do
      {
        v13 -= 7;
        std::allocator<ProgramShaderInfo>::destroy[abi:ne200100](this + 24, v13);
      }

      while (v13 != v12);
      v14 = *(this + 3);
    }

    *(this + 4) = v12;
    operator delete(v14);
  }

  v15 = *this;
  if (*this)
  {
    v16 = *(this + 1);
    v17 = *this;
    if (v16 != v15)
    {
      do
      {
        v16 -= 7;
        std::allocator<ProgramShaderInfo>::destroy[abi:ne200100](this, v16);
      }

      while (v16 != v15);
      v17 = *this;
    }

    *(this + 1) = v15;
    operator delete(v17);
  }
}

{
  v2 = *(this + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = (this + 96);
  std::vector<ProgramShaderInfo>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 72);
  std::vector<ProgramShaderInfo>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 48);
  std::vector<ProgramShaderInfo>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 24);
  std::vector<ProgramShaderInfo>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = this;
  std::vector<ProgramShaderInfo>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void std::vector<ProgramShaderInfo>::__assign_with_size[abi:ne200100]<ProgramShaderInfo*,ProgramShaderInfo*>(uint64_t *a1, char *a2, char *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((v7 - *a1) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v8)
      {
        do
        {
          v10 -= 7;
          std::allocator<ProgramShaderInfo>::destroy[abi:ne200100](a1, v10);
        }

        while (v10 != v8);
        v11 = *a1;
      }

      a1[1] = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0x492492492492492)
    {
      v12 = 0x6DB6DB6DB6DB6DB7 * (v7 >> 3);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0x249249249249249)
      {
        v14 = 0x492492492492492;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0x492492492492492)
      {
        operator new();
      }
    }

    std::vector<ProgramShaderInfo>::__throw_length_error[abi:ne200100]();
  }

  v15 = a1[1];
  v16 = v15 - v8;
  if (0x6DB6DB6DB6DB6DB7 * ((v15 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        ProgramShaderInfo::operator=(v8, v5);
        v5 += 56;
        v8 += 56;
      }

      while (v5 != a3);
      v15 = a1[1];
    }

    while (v15 != v8)
    {
      v15 -= 7;
      std::allocator<ProgramShaderInfo>::destroy[abi:ne200100](a1, v15);
    }

    a1[1] = v8;
  }

  else
  {
    v17 = &v16[a2];
    if (v15 != v8)
    {
      do
      {
        ProgramShaderInfo::operator=(v8, v5);
        v5 += 56;
        v8 += 56;
        v16 -= 56;
      }

      while (v16);
      v15 = a1[1];
    }

    v18 = v15;
    if (v17 != a3)
    {
      v18 = v15;
      v19 = v15;
      do
      {
        *v19 = *v17;
        v20 = *(v17 + 2);
        v19[1] = *(v17 + 1);
        v19[2] = v20;
        if (v20)
        {
          atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
        }

        v21 = *(v17 + 4);
        v19[3] = *(v17 + 3);
        v19[4] = v21;
        if (v21)
        {
          atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
        }

        v22 = *(v17 + 6);
        v19[5] = *(v17 + 5);
        v19[6] = v22;
        if (v22)
        {
          atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
        }

        v17 += 56;
        v19 += 7;
        v18 += 56;
      }

      while (v17 != a3);
    }

    a1[1] = v18;
  }
}

uint64_t ProgramShaderInfo::operator=(uint64_t result, uint64_t a2)
{
  *result = *a2;
  v4 = *(a2 + 8);
  v3 = *(a2 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(result + 16);
  *(result + 8) = v4;
  *(result + 16) = v3;
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v6 = result;
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    result = v6;
  }

  v8 = *(a2 + 24);
  v7 = *(a2 + 32);
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(result + 32);
  *(result + 24) = v8;
  *(result + 32) = v7;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v10 = result;
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    result = v10;
  }

  v12 = *(a2 + 40);
  v11 = *(a2 + 48);
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = *(result + 48);
  *(result + 40) = v12;
  *(result + 48) = v11;
  if (v13)
  {
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v14 = result;
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
      return v14;
    }
  }

  return result;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void ShaderInfo::~ShaderInfo(ShaderInfo *this)
{
  v1 = *(this + 5);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = this;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    this = v2;
  }

  v3 = *(this + 3);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v4 = this;
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    this = v4;
  }

  v5 = *(this + 1);
  if (v5)
  {
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,unsigned int>>(float *a1, unsigned int *a2, void *a3)
{
  v3 = *a2;
  v4 = *(a1 + 2);
  if (!*&v4)
  {
    goto LABEL_23;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (*&v4 <= v3)
    {
      v6 = v3 % v4.i32[0];
    }
  }

  else
  {
    v6 = (v4.i32[0] - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v5.u32[0] < 2uLL)
  {
    while (1)
    {
      v10 = v8[1];
      if (v10 == v3)
      {
        if (*(v8 + 4) == v3)
        {
          return v8;
        }
      }

      else if ((v10 & (*&v4 - 1)) != v6)
      {
        goto LABEL_23;
      }

      v8 = *v8;
      if (!v8)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v9 >= *&v4)
    {
      v9 %= *&v4;
    }

    if (v9 != v6)
    {
      goto LABEL_23;
    }

LABEL_12:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_23;
    }
  }

  if (*(v8 + 4) != v3)
  {
    goto LABEL_12;
  }

  return v8;
}

void std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t std::vector<std::string>::emplace_back<std::string>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<ProgramShaderInfo>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (v10 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = 24 * v7;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 2);
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    v6 = 24 * v7 + 24;
    v12 = *a1;
    v13 = *(a1 + 8) - *a1;
    v14 = v11 - v13;
    memcpy((v11 - v13), *a1, v13);
    *a1 = v14;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    v6 = v3 + 24;
  }

  *(a1 + 8) = v6;
  return v6 - 24;
}

void std::__shared_ptr_emplace<ShaderInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = off_20CC70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void std::allocator<ShaderInfo>::destroy[abi:ne200100](uint64_t a1, void *a2)
{
  v3 = a2[5];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a2[3];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    v5 = a2[1];
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = a2[1];
    if (!v5)
    {
      return;
    }
  }

  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,std::shared_ptr<ShaderInfo>>>(void *a1, unsigned int *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_23;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (*&v4 <= v3)
    {
      v6 = v3 % v4.i32[0];
    }
  }

  else
  {
    v6 = (v4.i32[0] - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v5.u32[0] < 2uLL)
  {
    while (1)
    {
      v10 = v8[1];
      if (v10 == v3)
      {
        if (*(v8 + 4) == v3)
        {
          return v8;
        }
      }

      else if ((v10 & (*&v4 - 1)) != v6)
      {
        goto LABEL_23;
      }

      v8 = *v8;
      if (!v8)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v9 >= *&v4)
    {
      v9 %= *&v4;
    }

    if (v9 != v6)
    {
      goto LABEL_23;
    }

LABEL_12:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_23;
    }
  }

  if (*(v8 + 4) != v3)
  {
    goto LABEL_12;
  }

  return v8;
}

void sub_87AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<StringBuffer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = off_20CCA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void std::__shared_ptr_emplace<ProgramInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = off_20CCE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void std::allocator<ProgramInfo>::destroy[abi:ne200100](uint64_t a1, void *a2)
{
  v3 = a2[43];
  if (v3)
  {
    do
    {
      v4 = *v3;
      operator delete(v3);
      v3 = v4;
    }

    while (v4);
  }

  v5 = a2[41];
  a2[41] = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = a2[37];
  if (v6)
  {
    v7 = a2[38];
    v8 = a2[37];
    if (v7 != v6)
    {
      do
      {
        v9 = *(v7 - 1);
        v7 -= 3;
        if (v9 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = a2[37];
    }

    a2[38] = v6;
    operator delete(v8);
  }

  ProgramPipelineInfo::~ProgramPipelineInfo((a2 + 18));

  ProgramPipelineInfo::~ProgramPipelineInfo(a2);
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,std::shared_ptr<ProgramInfo>>>(void *a1, unsigned int *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_23;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (*&v4 <= v3)
    {
      v6 = v3 % v4.i32[0];
    }
  }

  else
  {
    v6 = (v4.i32[0] - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v5.u32[0] < 2uLL)
  {
    while (1)
    {
      v10 = v8[1];
      if (v10 == v3)
      {
        if (*(v8 + 4) == v3)
        {
          return v8;
        }
      }

      else if ((v10 & (*&v4 - 1)) != v6)
      {
        goto LABEL_23;
      }

      v8 = *v8;
      if (!v8)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v9 >= *&v4)
    {
      v9 %= *&v4;
    }

    if (v9 != v6)
    {
      goto LABEL_23;
    }

LABEL_12:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_23;
    }
  }

  if (*(v8 + 4) != v3)
  {
    goto LABEL_12;
  }

  return v8;
}

void sub_8CC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::shared_ptr<ShaderInfo>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<ProgramShaderInfo>::__emplace_back_slow_path<ProgramShaderInfo>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    std::vector<ProgramShaderInfo>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v5 = 0x492492492492492;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x492492492492492)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v6 = 8 * ((a1[1] - *a1) >> 3);
  *v6 = *a2;
  *(v6 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(v6 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(v6 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  v7 = 56 * v2 + 56;
  v8 = *a1;
  v9 = a1[1];
  v10 = v6 + *a1 - v9;
  if (*a1 != v9)
  {
    v11 = *a1;
    v12 = v6 + *a1 - v9;
    do
    {
      *v12 = *v11;
      *(v12 + 8) = *(v11 + 1);
      v11[1] = 0;
      v11[2] = 0;
      *(v12 + 24) = *(v11 + 3);
      v11[3] = 0;
      v11[4] = 0;
      *(v12 + 40) = *(v11 + 5);
      v11[5] = 0;
      v11[6] = 0;
      v11 += 7;
      v12 += 56;
    }

    while (v11 != v9);
    do
    {
      std::allocator<ProgramShaderInfo>::destroy[abi:ne200100](a1, v8);
      v8 += 7;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,ActiveTransformFeedbackInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ActiveTransformFeedbackInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ActiveTransformFeedbackInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ActiveTransformFeedbackInfo>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_23;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v5 <= v4)
    {
      v7 = v4 % v5.i32[0];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v6.u32[0] < 2uLL)
  {
    while (1)
    {
      v11 = v9[1];
      if (v11 == v4)
      {
        if (*(v9 + 4) == v4)
        {
          return v9;
        }
      }

      else if ((v11 & (*&v5 - 1)) != v7)
      {
        goto LABEL_23;
      }

      v9 = *v9;
      if (!v9)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v10 >= *&v5)
    {
      v10 %= *&v5;
    }

    if (v10 != v7)
    {
      goto LABEL_23;
    }

LABEL_12:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_23;
    }
  }

  if (*(v9 + 4) != v4)
  {
    goto LABEL_12;
  }

  return v9;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,VertexAttribInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,VertexAttribInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,VertexAttribInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,VertexAttribInfo>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_23;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v5 <= v4)
    {
      v7 = v4 % v5.i32[0];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v6.u32[0] < 2uLL)
  {
    while (1)
    {
      v11 = v9[1];
      if (v11 == v4)
      {
        if (*(v9 + 4) == v4)
        {
          return v9;
        }
      }

      else if ((v11 & (*&v5 - 1)) != v7)
      {
        goto LABEL_23;
      }

      v9 = *v9;
      if (!v9)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v10 >= *&v5)
    {
      v10 %= *&v5;
    }

    if (v10 != v7)
    {
      goto LABEL_23;
    }

LABEL_12:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_23;
    }
  }

  if (*(v9 + 4) != v4)
  {
    goto LABEL_12;
  }

  return v9;
}

void DYGLCommonInit()
{
  pthread_key_create(&qword_21B318, 0);
  v0 = pthread_key_create(&qword_21B320, 0);
  v1 = GPUTools::Interpose::DYFetchSandboxEntitlements(v0);
  v2 = GPUTools::Interpose::DYFetchSandboxEntitlements(v1);
  ContextInfo::initialize(v2);
}

uint64_t validate_inbound_context_id(uint64_t a1)
{
  if (gDYContextRemappingBlock)
  {
    v2 = (*(gDYContextRemappingBlock + 16))();
  }

  else
  {
    v2 = a1;
  }

  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __validate_inbound_context_id_block_invoke;
  v4[3] = &unk_20CD10;
  v4[4] = v2;
  v4[5] = &v5;
  iter_contexts(v4);
  if (v6[3])
  {
    _Block_object_dispose(&v5, 8);
    return v2;
  }

  else
  {
    result = dy_abort("invalid context identifier: %llu", a1);
    __break(1u);
  }

  return result;
}

intptr_t iter_contexts(uint64_t a1)
{
  v2 = [DYGetGLGuestAppClient() graphicsSemaphore];
  dispatch_semaphore_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
  v9 = 0;
  v3 = ContextInfo::activeCtxInfoMap + 8;
  v4 = *ContextInfo::activeCtxInfoMap;
  if (*ContextInfo::activeCtxInfoMap != ContextInfo::activeCtxInfoMap + 8)
  {
    do
    {
      (*(a1 + 16))(a1, v4[5], &v9);
      if (v9)
      {
        break;
      }

      v5 = v4[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v4[2];
          v7 = *v6 == v4;
          v4 = v6;
        }

        while (!v7);
      }

      v4 = v6;
    }

    while (v6 != v3);
  }

  return dispatch_semaphore_signal(v2);
}

uint64_t __validate_inbound_context_id_block_invoke(uint64_t result, void *a2, _BYTE *a3)
{
  if (*(result + 32) == *a2)
  {
    *a3 = 1;
    *(*(*(result + 40) + 8) + 24) = 1;
  }

  return result;
}

uint64_t (**choose_dispatch_table(uint64_t a1))(__GLIContextRec **)
{
  v1 = [DYGetGLGuestAppClient() traceMode] - 1;
  if (v1 < 6 && ((0x3Du >> v1) & 1) != 0)
  {
    return off_20CF40[v1];
  }

  v3 = [DYGetGLGuestAppClient() traceMode];
  v4 = dy_abort("unknown trace mode: %d", v3);
  return update_dispatch_table(v4);
}

uint64_t update_dispatch_table(uint64_t a1)
{
  v2 = [DYGetGLGuestAppClient() traceMode] - 1;
  if (v2 < 6 && ((0x3Du >> v2) & 1) != 0)
  {
    v3 = off_20CF40[v2];

    return install_dispatch_table(a1, v3);
  }

  else
  {
    v5 = [DYGetGLGuestAppClient() traceMode];
    v6 = dy_abort("unknown trace mode: %d", v5);
    return disable_buffer_swaps(v6);
  }
}

uint64_t context_enable_capturing(uint64_t result)
{
  if ((*(result + 4837) & 1) == 0)
  {
    *(result + 4837) = 1;
    return install_dispatch_table(*result, &gCaptureDispatchTable);
  }

  return result;
}

void harvest_contexts(uint64_t a1, char a2)
{
  Mutable = CFSetCreateMutable(kCFAllocatorDefault, 0, 0);
  GPUTools::FB::Stream::Stream();
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2020000000;
  v7[3] = v8;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __harvest_contexts_block_invoke_2;
  v5[3] = &unk_20CD78;
  v5[5] = v7;
  v5[6] = Mutable;
  v5[4] = a1;
  v6 = a2;
  iter_contexts(v5);
  CFRelease(Mutable);
  _Block_object_dispose(v7, 8);
  GPUTools::FB::Stream::~Stream(v8);
}

void sub_9980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  GPUTools::FB::Stream::~Stream(va1);
  _Unwind_Resume(a1);
}

void __harvest_contexts_block_invoke(id a1, Stream *a2)
{
  v3 = DYGetGLGuestAppClient();

  GPUTools::Interpose::DYFlushFbufStream(v3, a2, v4);
}

void __harvest_contexts_block_invoke_2(uint64_t a1, ContextInfo *a2)
{
  v4 = **(a2 + 5);
  v5 = CFSetContainsValue(*(a1 + 48), v4);
  if (!v5)
  {
    CFSetAddValue(*(a1 + 48), v4);
  }

  v6 = &kDYFunctionStreamNameSharegroup;
  if (v5)
  {
    v6 = &kDYFunctionStreamNameState;
  }

  v7 = *v6;
  v8 = *(a1 + 32);
  v9 = *a2;
  if (v8)
  {
    v10 = [NSString stringWithFormat:@"%@-%@-%p", v8, v7, v9];
  }

  else
  {
    v10 = [NSString stringWithFormat:@"%@-%p", v7, v9, v12];
  }

  GPUTools::FB::Stream::Open(*(*(*(a1 + 40) + 8) + 24), v10);
  ContextHarvester::ContextHarvester(v13, a2, *(*(*(a1 + 40) + 8) + 24));
  ContextHarvester::HarvestAll(v13, v5 == 0, *(a1 + 56));
  v11 = *(*(*(a1 + 40) + 8) + 24);
  while (atomic_exchange((v11 + 56), 1u) == 1)
  {
      ;
    }
  }

  (*(*(v11 + 40) + 16))();
  *(v11 + 16) = *(v11 + 8) + 8;
  *(v11 + 60) = 1;
  atomic_store(0, (v11 + 56));
  GPUTools::FB::Stream::Close(*(*(*(a1 + 40) + 8) + 24));
  ContextHarvester::~ContextHarvester(v13);
}

void sub_9B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  atomic_store(0, (v9 + 56));
  ContextHarvester::~ContextHarvester(va);
  _Unwind_Resume(a1);
}

void sub_9B74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  ContextHarvester::~ContextHarvester(va);
  _Unwind_Resume(a1);
}

id handle_frame_boundary(uint64_t a1)
{
  v2 = a1 + 4096;
  v3 = [DYGetGLGuestAppClient() incrementGlobalFrameCounter];
  if (*(v2 + 741) == 1)
  {
    ++*(a1 + 168);
    if ([DYGetGLGuestAppClient() state] == &dword_0 + 3)
    {
      [DYGetGLGuestAppClient() incrementCapturedFramesCounter];
    }
  }

  *(a1 + 3720) = mach_absolute_time();
  *(v2 + 742) = 0;
  if ((gProfilingFlags & 3) != 0)
  {
    GPUTools::DYLockUtils::Lock(&unk_21B314, v4);
    v5 = *(a1 + 3720) - qword_21B330;
    if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
    {
      v6 = objc_autoreleasePoolPush();
      v7 = gProfilingFlags;
      if ((gProfilingFlags & 2) == 0)
      {
LABEL_7:
        v8 = 0;
        v9 = 0;
        if ((v7 & 1) == 0 || v5 <= gProfilingSendPeriod)
        {
          goto LABEL_18;
        }

LABEL_16:
        v8 = copy_profiling_data_dictionary(a1, v3, v5);
LABEL_17:
        [DYGetGLGuestAppClient() sendMessage:{+[DYTransportMessage messageWithKind:plistPayload:](DYTransportMessage, "messageWithKind:plistPayload:", 1541, v8)}];
        v9 = 1;
LABEL_18:

        objc_autoreleasePoolPop(v6);
        if (v9)
        {
          qword_21B330 = mach_absolute_time();
        }

        GPUTools::DYLockUtils::Unlock(&unk_21B314, v12);
        goto LABEL_21;
      }
    }

    else
    {
      v5 = __udivti3();
      v6 = objc_autoreleasePoolPush();
      v7 = gProfilingFlags;
      if ((gProfilingFlags & 2) == 0)
      {
        goto LABEL_7;
      }
    }

    v8 = copy_profiling_data_dictionary(a1, v3, v5);
    GPUTools::DYLockUtils::Lock(&_MergedGlobals, v10);
    if (qword_21B328 != v8)
    {

      qword_21B328 = v8;
    }

    GPUTools::DYLockUtils::Unlock(&_MergedGlobals, v11);
    v9 = 1;
    if ((gProfilingFlags & 1) == 0 || v5 <= gProfilingSendPeriod)
    {
      goto LABEL_18;
    }

    if (v8)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_21:
  v13 = DYGetGLGuestAppClient();

  return [v13 handleFrameBoundaryCommon];
}

void sub_9D94(_Unwind_Exception *a1, volatile int *a2)
{
  GPUTools::DYLockUtils::Unlock(&_MergedGlobals, a2);
  GPUTools::DYLockUtils::Unlock(&unk_21B314, v3);
  _Unwind_Resume(a1);
}

uint64_t save_texture(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, GPUTools::GL *this, unsigned int a6, int a7, int a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v17 = *(a1 + 32);
  v27 = 0;
  *v28 = 0;
  v25 = 0;
  v26 = 0;
  v18 = GPUTools::GL::dy_pixel_group_size(this, a4, a3);
  if (*(a1 + 4861) != 1 || ((*(v17 + 832))(a2, 35350, &v25 + 4), (*(v17 + 832))(a2, 35352, &v25), !HIDWORD(v25)))
  {
    (*(v17 + 832))(a2, 3317, &v28[1]);
    v20 = 0;
    v21 = *(a1 + 3456);
    if (v21 <= 4 && ((1 << v21) & 0x19) != 0)
    {
      (*(v17 + 832))(a2, 3314, v28);
      v20 = v28[0];
    }

    HIDWORD(v25) = GPUTools::GL::dy_pixel_row_bytes(v18, a6, v20, v28[1], v19);
  }

  v22 = *(a1 + 3456);
  if (v22 > 4 || ((1 << v22) & 0x19) == 0)
  {
    goto LABEL_12;
  }

  (*(v17 + 832))(a2, 32878, &v27 + 4);
  if (a9)
  {
    (*(v17 + 832))(a2, 32877, &v26);
  }

  (*(v17 + 832))(a2, 3315, &v27);
  (*(v17 + 832))(a2, 3316, &v26 + 4);
  v23 = HIDWORD(v27);
  if (!HIDWORD(v27))
  {
LABEL_12:
    HIDWORD(v27) = a7;
    v23 = a7;
  }

  if (!v25)
  {
    LODWORD(v25) = HIDWORD(v25) * v23;
  }

  DYGetGLGuestAppClient();
  return GPUTools::Interpose::DYSavePointer();
}

BOOL is_extension_available(uint64_t a1, const char *a2)
{
  v3 = CFStringCreateWithCStringNoCopy(kCFAllocatorDefault, a2, 0x600u, kCFAllocatorNull);
  v4 = CFSetGetValue(*(a1 + 64), v3) != 0;
  CFRelease(v3);
  return v4;
}

uint64_t query_texture_unit_limits(uint64_t result, _DWORD *a2)
{
  v3 = *(result + 3456);
  if ((v3 - 2) >= 3)
  {
    if (v3)
    {
      if (v3 != 1)
      {
        return result;
      }

      v4 = 34018;
      result = (*(*(result + 32) + 832))(*(result + 16), 34018, a2 + 2);
      v6 = a2[2];
      *a2 = v6;
      a2[3] = v6;
      v5 = 34018;
    }

    else
    {
      v4 = 34929;
      v7 = result;
      (*(*(result + 32) + 832))(*(result + 16), 34929, a2);
      (*(*(v7 + 32) + 832))(*(v7 + 16), 34018, a2 + 2);
      v8 = *(*(v7 + 32) + 832);
      v9 = *(v7 + 16);
      v5 = 35661;
      result = v8(v9, 35661, a2 + 3);
    }
  }

  else
  {
    v4 = 35661;
    result = (*(*(result + 32) + 832))(*(result + 16), 35661, a2 + 3);
    *a2 = 0;
    a2[2] = 0;
    v5 = 35661;
  }

  a2[1] = v4;
  a2[4] = v5;
  return result;
}

uint64_t update_context_state_cache(uint64_t a1)
{
  (*(*(a1 + 32) + 832))(*(a1 + 16), 34964, a1 + 2032);
  (*(*(a1 + 32) + 832))(*(a1 + 16), 34965, a1 + 2036);
  if (*(a1 + 3460) >= 2)
  {
    (*(*(a1 + 32) + 832))(*(a1 + 16), 35055, a1 + 2044);
    (*(*(a1 + 32) + 832))(*(a1 + 16), 35053, a1 + 2040);
    if (*(a1 + 3460) >= 3)
    {
      (*(*(a1 + 32) + 832))(*(a1 + 16), 36662, a1 + 2048);
      (*(*(a1 + 32) + 832))(*(a1 + 16), 36663, a1 + 2052);
      (*(*(a1 + 32) + 832))(*(a1 + 16), 35983, a1 + 2060);
      (*(*(a1 + 32) + 832))(*(a1 + 16), 35368, a1 + 2064);
    }
  }

  (*(*(a1 + 32) + 832))(*(a1 + 16), 34016, a1 + 2072);
  if (*(a1 + 4858) == 1)
  {
    (*(*(a1 + 32) + 832))(*(a1 + 16), 34017, a1 + 2076);
  }

  if (*(a1 + 3444))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      (*(*(a1 + 32) + 2736))(*(a1 + 16), v2 + 33984);
      v4 = *(a1 + 3408);
      v5 = *(a1 + 3416);
      while (v4 != v5)
      {
        v6 = *v4++;
        *(v9 + 7) = 0;
        v9[0] = 0;
        GPUTools::GL::DYGetTextureTargetInfo();
        v8 = 0;
        (*(*(a1 + 32) + 832))(*(a1 + 16), HIDWORD(v9[0]), &v8);
        wrapper_cache_texture_binding(a1, v2, v6, v8);
      }

      v2 = ++v3;
    }

    while (*(a1 + 3444) > v3);
  }

  return (*(*(a1 + 32) + 2736))(*(a1 + 16), *(a1 + 2072));
}

uint64_t query_pipeline_programs(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = 0;
  a3[2] = 0;
  a3[1] = 0;
  v6 = a3 + 1;
  (*(*(a1 + 32) + 6608))(*(a1 + 16), a2, 33369, a3);
  (*(*(a1 + 32) + 6608))(*(a1 + 16), a2, 35633, a3 + 4);
  v7 = *(*(a1 + 32) + 6608);
  v8 = *(a1 + 16);

  return v7(v8, a2, 35632, v6);
}

void *query_info_log(uint64_t a1, uint64_t a2, void (*a3)(void, uint64_t, uint64_t, unsigned int *), void (*a4)(void, uint64_t, void, void, void *), unsigned int *a5)
{
  a3(*(a1 + 16), a2, 35716, a5);
  v9 = *a5;
  if (!v9)
  {
    return 0;
  }

  v10 = malloc_type_malloc(v9, 0x100004077774924uLL);
  a4(*(a1 + 16), a2, *a5, 0, v10);
  return v10;
}

void __GPUTOOLS_HAS_DETECTED_AN_OPENGL_ERROR__()
{
  if (gTrapOnGLError == 1)
  {
    __break(1u);
  }
}

void *__GPUTOOLS_GET_OPENGL_ERROR_LOG__()
{
  result = pthread_getspecific(qword_21B320);
  if (!result)
  {
    return &unk_204462;
  }

  return result;
}

uint64_t handle_opengl_error(int a1, const void *a2)
{
  v4 = a1;
  pthread_setspecific(qword_21B318, &v4);
  pthread_setspecific(qword_21B320, a2);
  __GPUTOOLS_HAS_DETECTED_AN_OPENGL_ERROR__();
  pthread_setspecific(qword_21B318, 0);
  return pthread_setspecific(qword_21B320, 0);
}

uint64_t handle_opengl_thread_conflict(const void **a1)
{
  snprintf(__str, 0x20uLL, "%p", *a1);
  v2 = -4;
  pthread_setspecific(qword_21B318, &v2);
  pthread_setspecific(qword_21B320, __str);
  __GPUTOOLS_HAS_DETECTED_AN_OPENGL_ERROR__();
  pthread_setspecific(qword_21B318, 0);
  return pthread_setspecific(qword_21B320, 0);
}

void handle_compile_shader_failure(uint64_t a1, uint64_t a2)
{
  size = 0;
  v4 = *(a1 + 32);
  v5 = *(v4 + 5272);
  (*(v4 + 5256))(*(a1 + 16), a2, 35716, &size);
  if (size)
  {
    v6 = malloc_type_malloc(size, 0x100004077774924uLL);
    v5(*(a1 + 16), a2, size, 0, v6);
  }

  else
  {
    v6 = 0;
  }

  size_4 = -1;
  pthread_setspecific(qword_21B318, &size_4);
  pthread_setspecific(qword_21B320, v6);
  __GPUTOOLS_HAS_DETECTED_AN_OPENGL_ERROR__();
  pthread_setspecific(qword_21B318, 0);
  pthread_setspecific(qword_21B320, 0);
  free(v6);
}

void handle_link_program_failure(uint64_t a1, uint64_t a2, int a3)
{
  size = 0;
  v6 = *(a1 + 32);
  v7 = *(v6 + 5280);
  (*(v6 + 5264))(*(a1 + 16), a2, 35716, &size);
  if (size)
  {
    v8 = malloc_type_malloc(size, 0x100004077774924uLL);
    v7(*(a1 + 16), a2, size, 0, v8);
  }

  else
  {
    v8 = 0;
  }

  if (a3)
  {
    v9 = -3;
  }

  else
  {
    v9 = -2;
  }

  size_4 = v9;
  pthread_setspecific(qword_21B318, &size_4);
  pthread_setspecific(qword_21B320, v8);
  __GPUTOOLS_HAS_DETECTED_AN_OPENGL_ERROR__();
  pthread_setspecific(qword_21B318, 0);
  pthread_setspecific(qword_21B320, 0);
  free(v8);
}

BOOL check_errors(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 816))(*(a1 + 16));
  *(a1 + 3404) = v2;
  if (!v2)
  {
    return 0;
  }

  if (!*(a1 + 3400))
  {
    *(a1 + 3400) = v2;
  }

  v4 = v2;
  handle_opengl_error(v2, 0);
  return v4 != 0;
}

double clear_errors(void *a1)
{
  (*(a1[4] + 816))(a1[2]);
  result = 0.0;
  a1[425] = 0;
  return result;
}

id ReserveGLShader(void *a1, int a2, int a3)
{
  v4[0] = a3;
  v4[1] = a2;
  return [a1 setParameter:1613 to:v4];
}

uint64_t CreatePrivateGLProgram(void *a1)
{
  v2 = GLIContextFromEAGLContext();
  v3 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v5 = *(v3 + 32);
    v6 = v5 >= v2;
    v7 = v5 < v2;
    if (v6)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * v7);
  }

  while (v3);
  if (v4 == ContextInfo::activeCtxInfoMap + 8 || v2 < *(v4 + 32))
  {
LABEL_9:
    v4 = ContextInfo::activeCtxInfoMap + 8;
  }

  v8 = *(*(v4 + 40) + 40);
  v12 = 35648;
  v13 = &v12;
  add_explicit = atomic_fetch_add_explicit(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int volatile>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int volatile>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int volatile>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int volatile>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((v8 + 232), &v12, &std::piecewise_construct, &v13) + 5, 0xFFFFFFFF, memory_order_relaxed);
  v10 = add_explicit - 1;
  LODWORD(v13) = add_explicit - 1;
  [a1 setParameter:1614 to:&v13];
  return v10;
}

uint64_t NewInterposeGLObject(uint64_t a1, int a2)
{
  v2 = *(a1 + 40);
  if (a2 == 35656)
  {
    v3 = 35648;
  }

  else
  {
    v3 = a2;
  }

  v5 = v3;
  v6 = &v5;
  return atomic_fetch_add_explicit(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int volatile>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int volatile>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int volatile>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int volatile>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((v2 + 232), &v5, &std::piecewise_construct, &v6) + 5, 0xFFFFFFFF, memory_order_relaxed) - 1;
}

uint64_t CreatePrivateGLShader(void *a1, int a2)
{
  v4 = GLIContextFromEAGLContext();
  v5 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v7 = *(v5 + 32);
    v8 = v7 >= v4;
    v9 = v7 < v4;
    if (v8)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * v9);
  }

  while (v5);
  if (v6 == ContextInfo::activeCtxInfoMap + 8 || v4 < *(v6 + 32))
  {
LABEL_9:
    v6 = ContextInfo::activeCtxInfoMap + 8;
  }

  v10 = *(*(v6 + 40) + 40);
  v14 = 35648;
  v15 = &v14;
  add_explicit = atomic_fetch_add_explicit(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int volatile>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int volatile>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int volatile>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int volatile>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((v10 + 232), &v14, &std::piecewise_construct, &v15) + 5, 0xFFFFFFFF, memory_order_relaxed);
  v12 = add_explicit - 1;
  LODWORD(v15) = a2;
  HIDWORD(v15) = add_explicit - 1;
  [a1 setParameter:1613 to:&v15];
  return v12;
}

uint64_t CreatePrivateGLProgramPipeline(void *a1)
{
  v2 = GLIContextFromEAGLContext();
  v3 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v5 = *(v3 + 32);
    v6 = v5 >= v2;
    v7 = v5 < v2;
    if (v6)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * v7);
  }

  while (v3);
  if (v4 == ContextInfo::activeCtxInfoMap + 8 || v2 < *(v4 + 32))
  {
LABEL_9:
    v4 = ContextInfo::activeCtxInfoMap + 8;
  }

  v8 = *(*(v4 + 40) + 40);
  v11 = 35407;
  v12 = &v11;
  v9 = atomic_fetch_add_explicit(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int volatile>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int volatile>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int volatile>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int volatile>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((v8 + 232), &v11, &std::piecewise_construct, &v12) + 5, 0xFFFFFFFF, memory_order_relaxed) - 1;
  LODWORD(v12) = 1610;
  HIDWORD(v12) = v9;
  [a1 setParameter:1612 to:&v12];
  return v9;
}

id HarvestResourceNames(void *a1)
{
  v2 = [a1 attributes];
  v3 = [objc_msgSend(v2 objectForKey:{kDYResourceTypeKey), "unsignedIntValue"}];
  if (v3 - 48 <= 0xFFFFFFD0)
  {
    HarvestResourceNames_cold_1();
  }

  v4 = v3;
  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = objc_alloc_init(NSMutableSet);
  [DYGetGLGuestAppClient() lockGraphicsAndWaitForThreads:1];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __HarvestResourceNames_block_invoke;
  v9[3] = &unk_20CDA0;
  v10 = v4;
  v9[4] = v6;
  v9[5] = v5;
  iter_contexts(v9);

  v7 = [[DYTransportMessage alloc] initWithKind:objc_msgSend(a1 attributes:"kind") objectPayload:{0, v5}];
  [DYGetGLGuestAppClient() sendMessage:v7 inReplyTo:a1];

  return [DYGetGLGuestAppClient() unlockGraphics];
}

void __HarvestResourceNames_block_invoke(uint64_t a1, ContextInfo *a2)
{
  v4 = *(a1 + 48);
  if (v4 != 3 && v4 != 9)
  {
    v8 = [[NSNumber alloc] initWithUnsignedLongLong:**(a2 + 5)];
    v7 = [*(a1 + 32) containsObject:?];
    if (v7)
    {

      return;
    }

    [*(a1 + 32) addObject:v8];
  }

  ContextHarvester::ContextHarvester(v10, a2, 0);
  v9[0] = 0;
  v9[1] = 0;
  ContextHarvester::HarvestObjectNames(v10, *(a1 + 48), v9, v6);
  if (v9[0])
  {
    [*(a1 + 40) setObject:GPUTools::NameTargetTupleArray::gut(v9) forKey:{+[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", *a2)}];
  }

  GPUTools::NameTargetTupleArray::reset(v9);
  ContextHarvester::~ContextHarvester(v10);
}

void sub_AE80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  GPUTools::NameTargetTupleArray::reset(va);
  ContextHarvester::~ContextHarvester(va1);
  _Unwind_Resume(a1);
}

void HarvestRenderbuffer(uint64_t a1, uint64_t a2)
{
  v4 = +[NSMutableDictionary dictionary];
  v5 = [NSNumber numberWithUnsignedLongLong:a1];
  [v4 setObject:v5 forKey:kDYResourceContextKey];
  v6 = [NSNumber numberWithUnsignedInt:4];
  [v4 setObject:v6 forKey:kDYResourceTypeKey];
  v7 = [NSNumber numberWithUnsignedInt:a2];
  [v4 setObject:v7 forKey:kDYResourceObjectKey];

  HarvestResourceObject(v4, 0);
}

void HarvestResourceObject(void *a1, uint64_t a2)
{
  [DYGetGLGuestAppClient() lockGraphicsAndWaitForThreads:1];
  [DYGetGLGuestAppClient() invalidateSavePointerMap:0];
  v3 = validate_inbound_context_id([objc_msgSend(a1 objectForKey:{kDYResourceContextKey), "unsignedLongLongValue"}]);
  v4 = objc_opt_new();
  GPUTools::FB::Stream::Stream(v21, v4);
  GPUTools::FB::Stream::Open(v21, @"resource-stream");
  v5 = [objc_msgSend(a1 objectForKey:{kDYResourceTypeKey), "unsignedIntValue"}];
  if (v5 - 48 <= 0xFFFFFFD0)
  {
    __assert_rtn("DYResourceType ValidateIncomingResource(uint32_t)", &unk_204462, 0, "unsafeResourceType > 0 && unsafeResourceType < kDYMaxResourceTypes");
  }

  v6 = [objc_msgSend(a1 objectForKey:{kDYResourceObjectKey), "unsignedIntValue"}];
  [objc_msgSend(a1 objectForKey:{kDYResourceTargetKey), "unsignedIntValue"}];
  v24[0] = off_20CF08;
  v24[1] = &internal_context;
  v24[3] = v24;
  v25[3] = v25;
  v25[0] = off_20CF08;
  v25[1] = &internal_context;
  internal_context = 0;
  v7 = GLIContextFromEAGLContext();
  v8 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v10 = *(v8 + 32);
    v11 = v10 >= v7;
    v12 = v10 < v7;
    if (v11)
    {
      v9 = v8;
    }

    v8 = *(v8 + 8 * v12);
  }

  while (v8);
  if (v9 == ContextInfo::activeCtxInfoMap + 8 || v7 < *(v9 + 32))
  {
LABEL_10:
    v9 = ContextInfo::activeCtxInfoMap + 8;
  }

  v13 = *(v9 + 40);
  v14 = *(v13 + 32);
  v23 = 0;
  switch(v5)
  {
    case 4u:
      v16 = (v13 + 16);
      (*(v14 + 832))(*(v13 + 16), 36007, &v23);
      v17 = 5320;
      goto LABEL_17;
    case 2u:
      v16 = (v13 + 16);
      (*(v14 + 832))(*(v13 + 16), 34964, &v23);
      v17 = 5160;
LABEL_17:
      v15 = (*(v14 + v17))(*v16, v23);
      goto LABEL_18;
    case 1u:
      *(v22 + 7) = 0;
      v22[0] = 0;
      GPUTools::GL::DYGetTextureTargetInfo();
      (*(v14 + 832))(*(v13 + 16), HIDWORD(v22[0]), &v23);
      v15 = (*(v14 + 1160))(*(v13 + 16), v23);
LABEL_18:
      if (v23 != v6 && !v15)
      {
        internal_context = create_internal_context(v3);
        v18 = GLIContextFromEAGLContext();
          ;
        }
      }

      operator new();
  }

  dy_abort("Unsupported resource type: %u", v5);
  __break(1u);
}

void sub_B4B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_B534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  GPUTools::FB::Stream::~Stream(va);
  _Unwind_Resume(a1);
}

void sub_B548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  GPUTools::FB::Stream::~Stream(va);
  _Unwind_Resume(a1);
}

void sub_B578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  GPUTools::FB::Stream::~Stream(va);
  _Unwind_Resume(a1);
}

void sub_B58C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  GPUTools::FB::Stream::~Stream(va);
  _Unwind_Resume(a1);
}

void HarvestRenderbufferInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v5 = a3;
    [DYGetGLGuestAppClient() lockGraphicsAndWaitForThreads:1];
    [DYGetGLGuestAppClient() invalidateSavePointerMap:0];
    validate_inbound_context_id(a1);
    v8 = GLIContextFromEAGLContext();
    v9 = *(ContextInfo::activeCtxInfoMap + 8);
    if (!v9)
    {
      goto LABEL_10;
    }

    v10 = ContextInfo::activeCtxInfoMap + 8;
    do
    {
      v11 = *(v9 + 32);
      v12 = v11 >= v8;
      v13 = v11 < v8;
      if (v12)
      {
        v10 = v9;
      }

      v9 = *(v9 + 8 * v13);
    }

    while (v9);
    if (v10 == ContextInfo::activeCtxInfoMap + 8 || v8 < *(v10 + 32))
    {
LABEL_10:
      v10 = ContextInfo::activeCtxInfoMap + 8;
    }

    ContextHarvester::ContextHarvester(v14, *(v10 + 40), 0);
    ContextHarvester::HarvestRenderbufferInfo(v14, a2, v5, a4);
    [DYGetGLGuestAppClient() unlockGraphics];
    ContextHarvester::~ContextHarvester(v14);
  }
}

void HarvestState(void *a1)
{
  v2 = objc_opt_new();
  [DYGetGLGuestAppClient() lockGraphicsAndWaitForThreads:1];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __HarvestState_block_invoke;
  v4[3] = &unk_20CDC8;
  v4[4] = v2;
  iter_contexts(v4);
  [DYGetGLGuestAppClient() unlockGraphics];
  v3 = [[DYTransportMessage alloc] initWithKind:objc_msgSend(a1 attributes:"kind") objectPayload:{0, v2}];

  [DYGetGLGuestAppClient() sendMessage:v3 inReplyTo:a1];
}

void __HarvestState_block_invoke(uint64_t a1, ContextInfo *a2)
{
  v4 = objc_opt_new();
  GPUTools::FB::Stream::Stream(v7, v4);
  GPUTools::FB::Stream::Open(v7, [NSString stringWithFormat:@"%@-%p", kDYFunctionStreamNameState, *a2]);
  ContextHarvester::ContextHarvester(v6, a2, v7);
  ContextHarvester::HarvestAll(v6, 0, 1);
  while (atomic_exchange(&v11, 1u) == 1)
  {
      ;
    }
  }

  (*(v10 + 16))(v10, v7);
  v9 = v8 + 8;
  v12 = 1;
  atomic_store(0, &v11);
  v5 = [[NSNumber alloc] initWithUnsignedLongLong:*a2];
  [*(a1 + 32) setObject:v4 forKey:v5];

  ContextHarvester::~ContextHarvester(v6);
  GPUTools::FB::Stream::~Stream(v7);
}

void sub_B8D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  atomic_store(0, (v5 + 56));
  ContextHarvester::~ContextHarvester(va);
  GPUTools::FB::Stream::~Stream((v6 - 112));
  _Unwind_Resume(a1);
}

void sub_B8FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  ContextHarvester::~ContextHarvester(va);
  GPUTools::FB::Stream::~Stream((v5 - 112));
  _Unwind_Resume(a1);
}

void UpdateResourceObject(void *a1)
{
  [DYGetGLGuestAppClient() lockGraphicsAndWaitForThreads:1];
  v2 = objc_opt_new();
  v3 = [a1 attributes];
  v4 = kDYResourceContextKey;
  v5 = [v3 objectForKey:kDYResourceContextKey];
  [(NSMutableDictionary *)v2 setObject:v5 forKey:v4];
  validate_inbound_context_id([v5 unsignedLongLongValue]);
  v6 = GLIContextFromEAGLContext();
  v7 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v9 = *(v7 + 32);
    v10 = v9 >= v6;
    v11 = v9 < v6;
    if (v10)
    {
      v8 = v7;
    }

    v7 = *(v7 + 8 * v11);
  }

  while (v7);
  if (v8 == ContextInfo::activeCtxInfoMap + 8 || v6 < *(v8 + 32))
  {
LABEL_9:
    v8 = ContextInfo::activeCtxInfoMap + 8;
  }

  v12 = *(v8 + 40);
  v13 = [a1 attributes];
  v14 = kDYResourceTypeKey;
  v15 = [v13 objectForKey:kDYResourceTypeKey];
  [(NSMutableDictionary *)v2 setObject:v15 forKey:v14];
  v16 = [a1 attributes];
  v17 = kDYResourceObjectKey;
  v18 = [v16 objectForKey:kDYResourceObjectKey];
  [(NSMutableDictionary *)v2 setObject:v18 forKey:v17];
  v19 = [v15 unsignedIntValue];
  if (v19 > 0xA)
  {
    goto LABEL_21;
  }

  if (v19 != 1)
  {
    if (v19 == 7)
    {
      updated = GPUTools::ResourceUpdater::UpdateProgram(*(v12 + 3472), [v18 unsignedIntValue], objc_msgSend(a1, "attributes"), v2);
      goto LABEL_15;
    }

    if (((1 << v19) & 0x77C) != 0)
    {
      dy_abort("unsupported resource type: %u", [v15 unsignedIntValue]);
    }

LABEL_21:
    v26 = dy_abort("unknown resource type: %u", [v15 unsignedIntValue]);
    _Block_object_dispose(&v28, 8);
    _Unwind_Resume(v26);
  }

  updated = GPUTools::ResourceUpdater::UpdateTexture(*(v12 + 3472), [v18 unsignedIntValue], objc_msgSend(a1, "attributes"), v2);
LABEL_15:
  v21 = updated;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = __UpdateResourceObject_block_invoke;
  v27[3] = &unk_20CDF0;
  v27[4] = &v28;
  iter_contexts(v27);
  if (*(v29 + 24) == 1)
  {
    v22 = DYGetGLGuestAppClient();
    v23 = [v22 overrideFlags] | 0x100;
  }

  else
  {
    v22 = DYGetGLGuestAppClient();
    v23 = [v22 overrideFlags] & 0xFFFFFEFF;
  }

  [v22 setOverrideFlags:v23];
  [DYGetGLGuestAppClient() unlockGraphics];
  v24 = [NSNumber numberWithBool:v21];
  [(NSMutableDictionary *)v2 setObject:v24 forKey:kDYResourceUpdateSucceededKey];
  v25 = [[DYTransportMessage alloc] initWithKind:objc_msgSend(a1 attributes:"kind") objectPayload:{0, v2}];

  [DYGetGLGuestAppClient() sendMessage:v25 inReplyTo:a1];
  _Block_object_dispose(&v28, 8);
}

void sub_BC88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL __UpdateResourceObject_block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = GPUTools::ResourceUpdater::HasDrawOverride(*(a2 + 3472));
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

void ClearResourceOverrides(void *a1)
{
  [DYGetGLGuestAppClient() lockGraphicsAndWaitForThreads:1];
  v2 = DYGetGLGuestAppClient();
  [v2 setOverrideFlags:{objc_msgSend(v2, "overrideFlags") & 0xFFFFFEFF}];
  iter_contexts(&__block_literal_global_22);
  [DYGetGLGuestAppClient() unlockGraphics];
  v3 = [[DYTransportMessage alloc] initWithKind:objc_msgSend(a1 attributes:"kind") objectPayload:{0, 0}];
  [DYGetGLGuestAppClient() sendMessage:v3 inReplyTo:a1];
}

BOOL IsInterposeGLObject(uint64_t a1, int a2, unsigned int a3)
{
  v4 = a2;
  if (a2 > 35647)
  {
    if (a2 != 35648)
    {
      if (a2 != 35656)
      {
        return 0;
      }

      v4 = 35648;
    }
  }

  else if (a2 != 5890 && a2 != 35407)
  {
    return 0;
  }

  v5 = &v4;
  return *(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int volatile>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int volatile>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int volatile>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int volatile>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((a1 + 232), &v4, &std::piecewise_construct, &v5) + 5) <= a3;
}

id reset_graphics_timing(uint64_t a1)
{
  [DYGetGLGuestAppClient() lockGraphicsAndWaitForThreads:1];
  iter_contexts(&__block_literal_global_24);
  v1 = DYGetGLGuestAppClient();

  return [v1 unlockGraphics];
}

void __reset_graphics_timing_block_invoke(id a1, void *a2, BOOL *a3)
{
  *(a2 + 464) = 0;
  *(a2 + 231) = 0u;
  bzero(a2 + 3736, 0x388uLL);
}

void get_graphics_timing(uint64_t *a1, void *a2, void *a3)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  [DYGetGLGuestAppClient() lockGraphicsAndWaitForThreads:1];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __get_graphics_timing_block_invoke;
  v7[3] = &unk_20CE78;
  v7[4] = &v16;
  v7[5] = &v12;
  v7[6] = &v8;
  iter_contexts(v7);
  [DYGetGLGuestAppClient() unlockGraphics];
  v6 = v17[3];
  if (g_DYTimebaseInfo != *(&g_DYTimebaseInfo + 1))
  {
    v6 = __udivti3();
  }

  *a1 = v6;
  *a2 = v13[3];
  *a3 = v9[3];
  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);
}

void sub_C00C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

void *__get_graphics_timing_block_invoke(void *result, void *a2)
{
  *(*(result[4] + 8) + 24) += a2[462];
  *(*(result[5] + 8) + 24) += a2[463];
  *(*(result[6] + 8) + 24) += a2[464];
  return result;
}

id get_profiling_data(uint64_t a1, volatile int *a2)
{
  GPUTools::DYLockUtils::Lock(&_MergedGlobals, a2);
  v2 = qword_21B328;
  GPUTools::DYLockUtils::Unlock(&_MergedGlobals, v3);
  return v2;
}

void GPUTools::ScopeFunction::~ScopeFunction(GPUTools::ScopeFunction *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    (*(*v2 + 48))(v2);
    v3 = *(this + 3);
    if (v3 == this)
    {
      (*(*v3 + 32))(v3);
    }

    else if (v3)
    {
      (*(*v3 + 40))(v3);
    }
  }
}

void *copy_profiling_data_dictionary(ContextInfo *a1, int a2, uint64_t a3)
{
  v3 = [[NSMutableDictionary alloc] initWithObjectsAndKeys:{+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", (a2 - 1)), @"frame index", +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", a3), @"frame duration", +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", *a1), @"context", +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", *(a1 + 579)), @"cpu idle time", 0}];
  *host_info_outCnt = 0;
  v35 = host_info_outCnt;
  v36 = 0x2020000000;
  v37 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  bzero(&v38, 0x380uLL);
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = ___ZL30copy_profiling_data_dictionaryP11ContextInfojy_block_invoke;
  v25[3] = &unk_20CEA0;
  v25[4] = host_info_outCnt;
  v25[5] = &v30;
  v25[6] = &v26;
  v25[7] = &v38;
  v25[8] = &v39;
  v25[9] = &v40;
  v25[10] = &v41;
  iter_contexts(v25);
  v4 = v35;
  v5 = *(v35 + 3);
  if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
  {
    *(v35 + 3) = v5;
    v6 = gProfilingFlags;
    if ((gProfilingFlags & 4) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = __udivti3();
    *(v4 + 3) = v5;
    v6 = gProfilingFlags;
    if ((gProfilingFlags & 4) == 0)
    {
LABEL_3:
      if ((v6 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  [v3 setObject:+[NSNumber numberWithUnsignedLongLong:](NSNumber forKey:{"numberWithUnsignedLongLong:", v5), @"total GL time"}];
LABEL_7:
  [v3 setObject:+[NSNumber numberWithUnsignedLongLong:](NSNumber forKey:{"numberWithUnsignedLongLong:", v27[3]), @"total platform time"}];
LABEL_8:
  [v3 setObject:+[NSNumber numberWithUnsignedLongLong:](NSNumber forKey:{"numberWithUnsignedLongLong:", v31[3]), @"total GL command"}];
  v21 = v3;
  v24 = objc_opt_new();
  v7 = 0;
  v8 = copy_profiling_data_dictionary(ContextInfo *,unsigned int,unsigned long long)::modeList;
  do
  {
    if (*(&v38.ru_utime.tv_sec + v7))
    {
      [v24 setObject:+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary forKey:{"dictionaryWithObjectsAndKeys:", +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:"), @"commands num", +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", *(&v38.ru_utime.tv_usec + v7)), @"vertices num", +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", *(&v38.ru_stime.tv_sec + v7)), @"primitives num", +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", *(&v38.ru_stime.tv_usec + v7)), @"instances num", 0), *v8}];
    }

    ++v8;
    v7 += 32;
  }

  while (v7 != 224);
  v23 = objc_opt_new();
  v9 = copy_profiling_data_dictionary(ContextInfo *,unsigned int,unsigned long long)::modeList;
  for (i = 224; i != 448; i += 32)
  {
    if (*(&v38.ru_utime.tv_sec + i))
    {
      [v23 setObject:+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary forKey:{"dictionaryWithObjectsAndKeys:", +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:"), @"commands num", +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", *(&v38.ru_utime.tv_usec + i)), @"vertices num", +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", *(&v38.ru_stime.tv_sec + i)), @"primitives num", +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", *(&v38.ru_stime.tv_usec + i)), @"instances num", 0), *v9}];
    }

    ++v9;
  }

  v22 = objc_opt_new();
  v11 = copy_profiling_data_dictionary(ContextInfo *,unsigned int,unsigned long long)::modeList;
  for (j = 448; j != 672; j += 32)
  {
    if (*(&v38.ru_utime.tv_sec + j))
    {
      [v22 setObject:+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary forKey:{"dictionaryWithObjectsAndKeys:", +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:"), @"commands num", +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", *(&v38.ru_utime.tv_usec + j)), @"vertices num", +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", *(&v38.ru_stime.tv_sec + j)), @"primitives num", +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", *(&v38.ru_stime.tv_usec + j)), @"instances num", 0), *v11}];
    }

    ++v11;
  }

  v13 = objc_opt_new();
  v14 = copy_profiling_data_dictionary(ContextInfo *,unsigned int,unsigned long long)::modeList;
  for (k = 672; k != 896; k += 32)
  {
    if (*(&v38.ru_utime.tv_sec + k))
    {
      [v13 setObject:+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary forKey:{"dictionaryWithObjectsAndKeys:", +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:"), @"commands num", +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", *(&v38.ru_utime.tv_usec + k)), @"vertices num", +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", *(&v38.ru_stime.tv_sec + k)), @"primitives num", +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", *(&v38.ru_stime.tv_usec + k)), @"instances num", 0), *v14}];
    }

    ++v14;
  }

  [v21 setObject:+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary forKey:{"dictionaryWithObjectsAndKeys:", v24, @"index", v23, @"array", v22, @"index instanced", v13, @"array instanced", 0), @"GL draw command statistics"}];

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(host_info_outCnt, 8);
  v16 = gProfilingFlags;
  if ((gProfilingFlags & 0x20) != 0)
  {
    getrusage(0, &v38);
    [v21 setObject:+[NSNumber numberWithUnsignedLongLong:](NSNumber forKey:{"numberWithUnsignedLongLong:", 1000000000 * v38.ru_utime.tv_sec + 1000 * v38.ru_utime.tv_usec), @"user time"}];
    [v21 setObject:+[NSNumber numberWithUnsignedLongLong:](NSNumber forKey:{"numberWithUnsignedLongLong:", 1000000000 * v38.ru_stime.tv_sec + 1000 * v38.ru_stime.tv_usec), @"system time"}];
    v16 = gProfilingFlags;
  }

  if ((v16 & 0x10) != 0)
  {
    host_info_outCnt[0] = 40;
    if (!host_statistics(GPUTools::Interpose::gHostPort, 2, &v38, host_info_outCnt))
    {
      v17 = DYCreateDictionaryFromVMStatistics();
      if (v17)
      {
        [v21 setObject:v17 forKey:@"vm statistics"];
        CFRelease(v17);
      }
    }

    [v21 setObject:+[NSNumber numberWithUnsignedLong:](NSNumber forKey:{"numberWithUnsignedLong:", vm_page_size), @"vm page size"}];
  }

  collect_global_profiling_data(a1, v21);
  collect_all_context_profiling_data(v21);
  v18 = mach_absolute_time();
  if (g_DYTimebaseInfo != *(&g_DYTimebaseInfo + 1))
  {
    v18 = __udivti3();
  }

  [v21 setObject:+[NSNumber numberWithUnsignedLongLong:](NSNumber forKey:{"numberWithUnsignedLongLong:", v18), @"timestamp"}];
  return v21;
}

void sub_C990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZL30copy_profiling_data_dictionaryP11ContextInfojy_block_invoke(void *a1, uint64_t a2)
{
  *(*(a1[4] + 8) + 24) += *(a2 + 3696);
  *(*(a1[5] + 8) + 24) += *(a2 + 3704);
  *(*(a1[6] + 8) + 24) += *(a2 + 3712);
  *(a2 + 4632) = 0;
  *(a2 + 3696) = 0;
  *(a2 + 3712) = 0;
  *(a2 + 3704) = 0;
  v3 = a1[9];
  v2 = a1[10];
  v4 = a1[7];
  v5 = a1[8];
  v6 = v4[1];
  *v4 = vaddq_s64(*v4, *(a2 + 3736));
  v4[1] = vaddq_s64(v6, *(a2 + 3752));
  v7 = v5[1];
  *v5 = vaddq_s64(*v5, *(a2 + 3960));
  v5[1] = vaddq_s64(v7, *(a2 + 3976));
  v8 = v3[1];
  *v3 = vaddq_s64(*v3, *(a2 + 4184));
  v3[1] = vaddq_s64(v8, *(a2 + 4200));
  v9 = v2[1];
  *v2 = vaddq_s64(*v2, *(a2 + 4408));
  v2[1] = vaddq_s64(v9, *(a2 + 4424));
  v10 = v4[3];
  v4[2] = vaddq_s64(v4[2], *(a2 + 3768));
  v4[3] = vaddq_s64(v10, *(a2 + 3784));
  v11 = v5[3];
  v5[2] = vaddq_s64(v5[2], *(a2 + 3992));
  v5[3] = vaddq_s64(v11, *(a2 + 4008));
  v12 = v3[3];
  v3[2] = vaddq_s64(v3[2], *(a2 + 4216));
  v3[3] = vaddq_s64(v12, *(a2 + 4232));
  v13 = v2[3];
  v2[2] = vaddq_s64(v2[2], *(a2 + 4440));
  v2[3] = vaddq_s64(v13, *(a2 + 4456));
  v14 = v4[5];
  v4[4] = vaddq_s64(v4[4], *(a2 + 3800));
  v4[5] = vaddq_s64(v14, *(a2 + 3816));
  v15 = v5[5];
  v5[4] = vaddq_s64(v5[4], *(a2 + 4024));
  v5[5] = vaddq_s64(v15, *(a2 + 4040));
  v16 = v3[5];
  v3[4] = vaddq_s64(v3[4], *(a2 + 4248));
  v3[5] = vaddq_s64(v16, *(a2 + 4264));
  v17 = v2[5];
  v2[4] = vaddq_s64(v2[4], *(a2 + 4472));
  v2[5] = vaddq_s64(v17, *(a2 + 4488));
  v18 = v4[7];
  v4[6] = vaddq_s64(v4[6], *(a2 + 3832));
  v4[7] = vaddq_s64(v18, *(a2 + 3848));
  v19 = v5[7];
  v5[6] = vaddq_s64(v5[6], *(a2 + 4056));
  v5[7] = vaddq_s64(v19, *(a2 + 4072));
  v20 = v3[7];
  v3[6] = vaddq_s64(v3[6], *(a2 + 4280));
  v3[7] = vaddq_s64(v20, *(a2 + 4296));
  v21 = v2[7];
  v2[6] = vaddq_s64(v2[6], *(a2 + 4504));
  v2[7] = vaddq_s64(v21, *(a2 + 4520));
  v22 = v4[9];
  v4[8] = vaddq_s64(v4[8], *(a2 + 3864));
  v4[9] = vaddq_s64(v22, *(a2 + 3880));
  v23 = v5[9];
  v5[8] = vaddq_s64(v5[8], *(a2 + 4088));
  v5[9] = vaddq_s64(v23, *(a2 + 4104));
  v24 = v3[9];
  v3[8] = vaddq_s64(v3[8], *(a2 + 4312));
  v3[9] = vaddq_s64(v24, *(a2 + 4328));
  v25 = v2[9];
  v2[8] = vaddq_s64(v2[8], *(a2 + 4536));
  v2[9] = vaddq_s64(v25, *(a2 + 4552));
  v26 = v4[11];
  v4[10] = vaddq_s64(v4[10], *(a2 + 3896));
  v4[11] = vaddq_s64(v26, *(a2 + 3912));
  v27 = v5[11];
  v5[10] = vaddq_s64(v5[10], *(a2 + 4120));
  v5[11] = vaddq_s64(v27, *(a2 + 4136));
  v28 = v3[11];
  v3[10] = vaddq_s64(v3[10], *(a2 + 4344));
  v3[11] = vaddq_s64(v28, *(a2 + 4360));
  v29 = v2[11];
  v2[10] = vaddq_s64(v2[10], *(a2 + 4568));
  v2[11] = vaddq_s64(v29, *(a2 + 4584));
  v30 = v4[13];
  v4[12] = vaddq_s64(v4[12], *(a2 + 3928));
  v4[13] = vaddq_s64(v30, *(a2 + 3944));
  v31 = v5[13];
  v5[12] = vaddq_s64(v5[12], *(a2 + 4152));
  v5[13] = vaddq_s64(v31, *(a2 + 4168));
  v32 = v3[13];
  v3[12] = vaddq_s64(v3[12], *(a2 + 4376));
  v3[13] = vaddq_s64(v32, *(a2 + 4392));
  v33 = v2[13];
  v2[12] = vaddq_s64(v2[12], *(a2 + 4600));
  v2[13] = vaddq_s64(v33, *(a2 + 4616));
  bzero((a2 + 3736), 0x380uLL);
}

uint64_t std::__function::__func<HarvestResourceObject::$_0,std::allocator<HarvestResourceObject::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_20CF08;
  a2[1] = v2;
  return result;
}

unint64_t std::__function::__func<HarvestResourceObject::$_0,std::allocator<HarvestResourceObject::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  result = **(a1 + 8);
  if (result)
  {
    return destroy_internal_context(result);
  }

  return result;
}

ContextHarvester **std::unique_ptr<ContextHarvester>::~unique_ptr[abi:ne200100](ContextHarvester **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    ContextHarvester::~ContextHarvester(v2);
    operator delete();
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,unsigned int volatile>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int volatile>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int volatile>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int volatile>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_23;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v5 <= v4)
    {
      v7 = v4 % v5.i32[0];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v6.u32[0] < 2uLL)
  {
    while (1)
    {
      v11 = v9[1];
      if (v11 == v4)
      {
        if (*(v9 + 4) == v4)
        {
          return v9;
        }
      }

      else if ((v11 & (*&v5 - 1)) != v7)
      {
        goto LABEL_23;
      }

      v9 = *v9;
      if (!v9)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v10 >= *&v5)
    {
      v10 %= *&v5;
    }

    if (v10 != v7)
    {
      goto LABEL_23;
    }

LABEL_12:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_23;
    }
  }

  if (*(v9 + 4) != v4)
  {
    goto LABEL_12;
  }

  return v9;
}

int64x2_t init_vertex_arrays()
{
  result = xmmword_206690;
  v1 = xmmword_2066A0;
  v2 = &dword_210A90;
  v3 = 8;
  v4 = vdupq_n_s64(7uLL);
  v5 = vdupq_n_s64(4uLL);
  do
  {
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(v4, v1)), *result.i8).u8[0])
    {
      *(v2 - 60) = -1;
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), *&v1)), *&result).i8[2])
    {
      *(v2 - 30) = -1;
    }

    if (vuzp1_s16(*&result, vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), *&result))).i32[1])
    {
      *v2 = -1;
      v2[30] = -1;
    }

    result = vaddq_s64(result, v5);
    v1 = vaddq_s64(v1, v5);
    v2 += 120;
    v3 -= 4;
  }

  while (v3);
  return result;
}

void sub_DEE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_E068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<void const*,std::string>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,std::string>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,std::string>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,std::string>>>::clear(uint64_t result)
{
  if (*(result + 24))
  {
    std::__hash_table<std::__hash_value_type<void const*,std::string>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,std::string>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,std::string>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,std::string>>>::__deallocate_node(result, *(result + 16));
    *(result + 16) = 0;
    v2 = *(result + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*result + 8 * i) = 0;
      }
    }

    *(result + 24) = 0;
  }
}

void std::__hash_table<std::__hash_value_type<void const*,std::string>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,std::string>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,std::string>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,std::string>>>::__deallocate_node(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 47) < 0)
      {
        operator delete(v2[3]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *std::__hash_table<std::__hash_value_type<void const*,std::string>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,std::string>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,std::string>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,std::string>>>::__emplace_unique_key_args<void const*,std::pair<void const* const,std::string> const&>(float *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = *(a1 + 2);
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (result = *v8) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<void const*,std::string>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,std::string>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,std::string>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,std::string>>>::__construct_node_hash<std::pair<void const* const,std::string> const&>();
  }

  while (1)
  {
    v10 = result[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (result[2] != *a2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_E6EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<void const*,std::string>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_E7B4(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<void const*,std::string>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void std::__hash_table<std::__hash_value_type<void const*,std::string>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,std::string>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,std::string>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,std::string>>>::__rehash<true>(uint64_t result, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(result + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(result + 24) / *(result + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<void const*,std::string>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,std::string>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,std::string>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,std::string>>>::__do_rehash<true>(result, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<void const*,std::string>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,std::string>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,std::string>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,std::string>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<void const*,std::string>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 47) < 0)
    {
      operator delete(__p[3]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,std::string> const&>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (result = *v6) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::__construct_node_hash<std::pair<unsigned long long const,std::string> const&>();
  }

  while (1)
  {
    v8 = result[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (result[2] != v2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_ED34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<void const*,std::string>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_EDFC(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<void const*,std::string>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void apply_draw_overrides(uint64_t result, volatile int *a2)
{
  v2 = a2;
  v4 = *(result + 32);
  if ((a2 & 0x100) != 0)
  {
    GPUTools::ResourceUpdater::ApplyDrawOverrides(*(result + 3472));
    if ((v2 & 4) == 0)
    {
LABEL_3:
      if ((v2 & 0x100000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a2 & 4) == 0)
  {
    goto LABEL_3;
  }

  (*(v4 + 832))(*(result + 16), 3088, result + 3380);
  (*(v4 + 2008))(*(result + 16), 0, 0, 1, 1);
  v5 = (*(v4 + 1144))(*(result + 16), 3089);
  v6 = v5;
  if (!v5)
  {
    (*(v4 + 576))(*(result + 16), 3089);
  }

  *(result + 3396) = v6;
  if ((v2 & 0x100000) == 0)
  {
LABEL_4:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_5;
    }

LABEL_12:
    if ((*(v4 + 1144))(*(result + 16), 3042))
    {
      (*(v4 + 504))(*(result + 16), 3042);
    }

    *(result + 3376) |= 1u;
    if ((v2 & 0x20) == 0)
    {
      return;
    }

    goto LABEL_15;
  }

LABEL_11:
  (*(v4 + 2680))(*(result + 16), vcvtd_n_f64_s32(*(result + 3368) - (kDYOverrideDefaultViewport[0] * *(result + 3368)), 1uLL), vcvtd_n_f64_s32(*(result + 3372) - (kDYOverrideDefaultViewport[1] * *(result + 3372)), 1uLL));
  if ((v2 & 0x200000) != 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((v2 & 0x20) == 0)
  {
    return;
  }

LABEL_15:
  v7 = *(result + 40);
  GPUTools::DYLockUtils::Lock((v7 + 37), a2);
  *(result + 3648) = *(result + 3640);
  v74 = v7;
  if (v7[34] != v7[35])
  {
    goto LABEL_40;
  }

  v9 = *(result + 3408);
  v71 = *(result + 3416);
  if (v9 == v71)
  {
    goto LABEL_40;
  }

  do
  {
    v72 = v9;
    v10 = *v9;
    v11 = *(result + 32);
    v82 = result;
    v83 = v11;
    v12 = v74[35] - v74[34];
    std::vector<unsigned int>::resize((v74 + 34), (v12 >> 2) + 4);
    (*(v11 + 784))(*(result + 16), 4, v74[34] + v12);
    v78 = xmmword_2066C0;
    v79 = 0;
    v80 = 0;
    v81 = 0;
    GPUTools::GL::SavePixelStoreUnpackState();
    memset(v76, 0, sizeof(v76));
    v77 = 0;
    HIDWORD(v76[0]) = 1;
    GPUTools::GL::ApplyPixelStoreUnpackState();
    if (*(result + 3460) >= 2)
    {
      (*(v83 + 5136))(*(v82 + 16), 35052, 0);
    }

    v13 = &dword_20CFB8;
    v14 = 4;
    do
    {
      if (*(result + 3460) >= v13[3] && (v10 != 32879 || *(v13 - 2) != 34041))
      {
        (*(v83 + 40))(*(v82 + 16), v10, *(v74[34] + v12));
        (*(v83 + 2432))(*(v82 + 16), v10, 10241, v13[1]);
        (*(v83 + 2432))(*(v82 + 16), v10, 10240, 9728);
        v15 = *v13;
        if (v15 == 34041 && *(result + 3460) == 3)
        {
          v15 = 35056;
        }

        if (v10 > 34066)
        {
          if (v10 == 34067)
          {
            v25 = *(v13 - 2);
            v26 = *(v13 - 1);
            v27 = *(v13 - 2);
            (*(v83 + 2408))(*(v82 + 16), 34070, 0, v15, 2, 2, 0, v25, v26, v27);
            (*(v83 + 2408))(*(v82 + 16), 34069, 0, v15, 2, 2, 0, v25, v26, v27);
            (*(v83 + 2408))(*(v82 + 16), 34072, 0, v15, 2, 2, 0, v25, v26, v27);
            (*(v83 + 2408))(*(v82 + 16), 34071, 0, v15, 2, 2, 0, v25, v26, v27);
            (*(v83 + 2408))(*(v82 + 16), 34074, 0, v15, 2, 2, 0, v25, v26, v27);
            (*(v83 + 2408))(*(v82 + 16), 34073, 0, v15, 2, 2, 0, v25, v26, v27);
            (*(v83 + 2408))(*(v82 + 16), 34070, 1, v15, 1, 1, 0, v25, v26, v27);
            (*(v83 + 2408))(*(v82 + 16), 34069, 1, v15, 1, 1, 0, v25, v26, v27);
            (*(v83 + 2408))(*(v82 + 16), 34072, 1, v15, 1, 1, 0, v25, v26, v27);
            (*(v83 + 2408))(*(v82 + 16), 34071, 1, v15, 1, 1, 0, v25, v26, v27);
            (*(v83 + 2408))(*(v82 + 16), 34074, 1, v15, 1, 1, 0, v25, v26, v27);
            LODWORD(v65) = v26;
            (*(v83 + 2408))(*(v82 + 16), 34073, 1, v15, 1, 1, 0, v25, v65, v27, v69);
          }

          else
          {
            if (v10 != 35866)
            {
LABEL_83:
              v56 = dy_abort("unsupported or unknown texture target: 0x%04X", v10);
              unapply_draw_overrides(v56, v57);
              return;
            }

            v19 = *(v13 - 2);
            v20 = *(v13 - 1);
            (*(v83 + 3504))(*(v82 + 16), 35866, 0, v15, 2, 2, 2, 0, *(v13 - 1), 0);
            v21 = *(v13 - 2);
            HIDWORD(v60) = v19;
            LODWORD(v67) = v20;
            LODWORD(v60) = 1;
            (*(v83 + 3512))(*(v82 + 16), 35866, 0, 0, 0, 0, 2, 2, v60, v67, v21);
            HIDWORD(v61) = v19;
            LODWORD(v61) = 1;
            (*(v83 + 3512))(*(v82 + 16), 35866, 0, 0, 0, 1, 2, 2, v61, v20, v21);
            (*(v83 + 3504))(*(v82 + 16), 35866, 1, v15, 1, 1, 2, 0, __PAIR64__(v20, v19), 0);
            HIDWORD(v62) = v19;
            LODWORD(v62) = 1;
            (*(v83 + 3512))(*(v82 + 16), 35866, 1, 0, 0, 0, 1, 1, v62, v20, v21);
            HIDWORD(v63) = v19;
            LODWORD(v68) = v20;
            LODWORD(v63) = 1;
            (*(v83 + 3512))(*(v82 + 16), 35866, 1, 0, 0, 1, 1, 1, v63, v68, v21);
          }
        }

        else if (v10 == 3553)
        {
          v22 = *(v13 - 2);
          v23 = *(v13 - 1);
          v24 = *(v13 - 2);
          (*(v83 + 2408))(*(v82 + 16), 3553, 0, v15, 2, 2, 0, v22, v23, v24);
          LODWORD(v64) = v23;
          (*(v83 + 2408))(*(v82 + 16), 3553, 1, v15, 1, 1, 0, v22, v64, v24, v69);
        }

        else
        {
          if (v10 != 32879)
          {
            goto LABEL_83;
          }

          v16 = *(v13 - 2);
          v17 = *(v13 - 1);
          (*(v83 + 3504))(*(v82 + 16), 32879, 0, v15, 2, 2, 2, 0, *(v13 - 1), 0);
          v18 = *(v13 - 2);
          HIDWORD(v58) = v16;
          LODWORD(v66) = v17;
          LODWORD(v58) = 1;
          (*(v83 + 3512))(*(v82 + 16), 32879, 0, 0, 0, 0, 2, 2, v58, v66, v18);
          HIDWORD(v59) = v16;
          LODWORD(v59) = 1;
          (*(v83 + 3512))(*(v82 + 16), 32879, 0, 0, 0, 1, 2, 2, v59, v17, v18);
          (*(v83 + 3504))(*(v82 + 16), 32879, 1, v15, 1, 1, 1, 0, __PAIR64__(v17, v16), v18, v70);
        }
      }

      v12 += 4;
      v13 += 8;
      --v14;
    }

    while (v14);
    if (*(result + 3460) > 1)
    {
      (*(v83 + 5136))(*(v82 + 16), 35052, *(result + 2044));
    }

    GPUTools::GL::ApplyPixelStoreUnpackState();
    v9 = v72 + 1;
  }

  while (v72 + 1 != v71);
LABEL_40:
  if (*(result + 3444))
  {
    v28 = 0;
    v29 = 0;
    v73 = (result + 3640);
    while (1)
    {
      (*(v4 + 2736))(*(result + 16), (v28 + 33984));
      v30 = *(result + 3408);
      if (*(result + 3416) != v30)
      {
        break;
      }

LABEL_79:
      v28 = ++v29;
      if (*(result + 3444) <= v29)
      {
        goto LABEL_80;
      }
    }

    v31 = 0;
    while (2)
    {
      v32 = *(v30 + 4 * v31);
      if (v32 == 34067)
      {
        v33 = 34069;
      }

      else
      {
        v33 = v32;
      }

      LODWORD(v78) = 0;
      (*(v4 + 1000))(*(result + 16), v33, 0, 4096, &v78);
      if (v78)
      {
        LODWORD(v76[0]) = 0;
        (*(v4 + 1000))(*(result + 16), v33, 0, 4097, v76);
        if (LODWORD(v76[0]))
        {
          LODWORD(v82) = 0;
          (*(v4 + 1000))(*(result + 16), v33, 0, 4099, &v82);
          if (GPUTools::GL::IsCompressedFormat(v82, v34))
          {
            goto LABEL_50;
          }

          ImageUploadFormatInfo = GPUTools::GL::GetImageUploadFormatInfo(v82, 0, v35);
          v42 = v41;
          v43 = HIDWORD(ImageUploadFormatInfo);
          v36 = 1;
          if (v43 > 35055)
          {
            if ((v43 - 36166) >= 4 && (v43 - 36012) >= 2)
            {
              v44 = 35056;
              goto LABEL_70;
            }
          }

          else if ((v43 - 33189) >= 3 && (v43 - 6401) >= 2)
          {
            v44 = 34041;
LABEL_70:
            if (v43 != v44)
            {
              if (GPUTools::GL::IsIntegerFormat(v43, v41))
              {
                if (GPUTools::GL::IsSignedType(v42, v52))
                {
                  v36 = 2;
                }

                else
                {
                  v36 = 3;
                }
              }

              else
              {
LABEL_50:
                v36 = 0;
              }
            }
          }

          (*(v4 + 40))(*(result + 16), v32, *(v74[34] + ((16 * v31) | (4 * v36))));
          if (v36 == 1)
          {
            v75 = 0;
            if (*(result + 4860) == 1)
            {
              (*(v4 + 1016))(*(result + 16), v32, 34893, &v75);
              (*(v4 + 2432))(*(result + 16), v32, 34893, v75);
              (*(v4 + 1016))(*(result + 16), v32, 34892, &v75);
              (*(v4 + 2432))(*(result + 16), v32, 34892, v75);
            }
          }

          v37 = *(result + 3648);
          v38 = *(result + 3656);
          if (v37 >= v38)
          {
            v45 = *v73;
            v46 = v37 - *v73;
            v47 = v46 >> 3;
            v48 = (v46 >> 3) + 1;
            if (v48 >> 61)
            {
              std::vector<ProgramShaderInfo>::__throw_length_error[abi:ne200100]();
            }

            v49 = v38 - v45;
            if (v49 >> 2 > v48)
            {
              v48 = v49 >> 2;
            }

            v50 = v49 >= 0x7FFFFFFFFFFFFFF8;
            v51 = 0x1FFFFFFFFFFFFFFFLL;
            if (!v50)
            {
              v51 = v48;
            }

            if (v51)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned int,unsigned int>>>(v73, v51);
            }

            v53 = (8 * v47);
            *v53 = v28;
            v53[1] = v32;
            v39 = 8 * v47 + 8;
            v54 = &v53[-2 * (v46 >> 3)];
            memcpy(v54, v45, v46);
            v55 = *(result + 3640);
            *(result + 3640) = v54;
            *(result + 3648) = v39;
            *(result + 3656) = 0;
            if (v55)
            {
              operator delete(v55);
            }
          }

          else
          {
            *v37 = v28;
            *(v37 + 1) = v32;
            v39 = (v37 + 8);
          }

          *(result + 3648) = v39;
        }
      }

      ++v31;
      v30 = *(result + 3408);
      if (v31 >= (*(result + 3416) - v30) >> 2)
      {
        goto LABEL_79;
      }

      continue;
    }
  }

LABEL_80:
  GPUTools::DYLockUtils::Unlock((*(result + 40) + 296), v8);
}

void unapply_draw_overrides(uint64_t a1, int a2)
{
  v4 = *(a1 + 32);
  if ((a2 & 4) != 0 && ((*(v4 + 2008))(*(a1 + 16), *(a1 + 3380), *(a1 + 3384), *(a1 + 3388), *(a1 + 3392)), !*(a1 + 3396)))
  {
    (*(v4 + 504))(*(a1 + 16), 3089);
    if ((a2 & 0x100000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((a2 & 0x100000) == 0)
  {
    goto LABEL_7;
  }

  (*(v4 + 2680))(*(a1 + 16), *(a1 + 3360), *(a1 + 3364), *(a1 + 3368), *(a1 + 3372));
  (*(v4 + 2008))(*(a1 + 16), *(a1 + 3380), *(a1 + 3384), *(a1 + 3388), *(a1 + 3392));
  if (!*(a1 + 3396))
  {
    (*(v4 + 504))(*(a1 + 16), 3089);
  }

LABEL_7:
  if (a2 & 0x200000) != 0 && (*(a1 + 3376))
  {
    (*(v4 + 576))(*(a1 + 16), 3042);
  }

  if ((a2 & 0x20) != 0)
  {
    v5 = *(a1 + 3640);
    v6 = *(a1 + 3648);
    if (v5 != v6)
    {
      v7 = a1 + 2080;
      do
      {
        (*(v4 + 2736))(*(a1 + 16), *v5 + 33984);
        v8 = v5[1];
        if (v8 > 34066)
        {
          if (v8 == 34067)
          {
            (*(v4 + 40))(*(a1 + 16), 34067, *(v7 + 40 * *v5 + 16));
          }

          else
          {
            if (v8 != 35866)
            {
LABEL_28:
              v10 = dy_abort("unsupported or unknown texture target: 0x%04X", v5[1]);
              std::vector<unsigned int>::resize(v10, v11);
              return;
            }

            (*(v4 + 40))(*(a1 + 16), 35866, *(v7 + 40 * *v5 + 24));
          }
        }

        else if (v8 == 3553)
        {
          (*(v4 + 40))(*(a1 + 16), 3553, *(v7 + 40 * *v5 + 4));
        }

        else
        {
          if (v8 != 32879)
          {
            goto LABEL_28;
          }

          (*(v4 + 40))(*(a1 + 16), 32879, *(v7 + 40 * *v5 + 12));
        }

        v5 += 2;
      }

      while (v5 != v6);
    }

    (*(v4 + 2736))(*(a1 + 16), *(a1 + 2072));
  }

  if ((a2 & 0x100) != 0)
  {
    v9 = *(a1 + 3472);

    GPUTools::ResourceUpdater::RemoveDrawOverrides(v9);
  }
}

void std::vector<unsigned int>::resize(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __sz)
{
  v2 = this->__end_ - this->__begin_;
  if (__sz <= v2)
  {
    if (__sz < v2)
    {
      this->__end_ = &this->__begin_[__sz];
    }
  }

  else
  {
    std::vector<unsigned int>::__append(this, __sz - v2);
  }
}

void std::vector<unsigned int>::__append(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      bzero(this->__end_, 4 * __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v7 = end - this->__begin_;
    v8 = __n + (v7 >> 2);
    if (v8 >> 62)
    {
      std::vector<ProgramShaderInfo>::__throw_length_error[abi:ne200100]();
    }

    v9 = value - begin;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(this, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * __n);
    memcpy(0, begin, v7);
    v12 = this->__begin_;
    this->__begin_ = 0;
    this->__end_ = &v11[4 * __n];
    this->__end_cap_.__value_ = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned int,unsigned int>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void ContextHarvester::ContextHarvester(ContextHarvester *this, ContextInfo *a2, GPUTools::FB::Stream *a3)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = a2;
  v4 = *(a2 + 4);
  *(this + 3) = a2;
  *(this + 4) = v4;
  *(this + 5) = a3;
  v5 = *(a2 + 5);
  *(this + 4) = 0u;
  *(this + 6) = v5 + 104;
  *(this + 7) = v5 + 64;
  *(this + 5) = 0u;
  *(this + 24) = 1065353216;
  *(this + 13) = 0x100000001;
  v6 = (this + 104);
  *(this + 37) = 0;
  *(this + 11) = xmmword_2066C0;
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 104) = 0;
  *(this + 212) = xmmword_2066C0;
  *(this + 236) = 0;
  *(this + 228) = 0;
  *(this + 122) = 0;
  *(this + 31) = 35633;
  *(this + 256) = 0;
  *(this + 260) = 35632;
  *(this + 268) = 0;
  *(this + 34) = 36313;
  *(this + 280) = 0;
  *(this + 284) = 36488;
  *(this + 292) = 0;
  *(this + 37) = 36487;
  *(this + 304) = 0;
  *(this + 504) = 0u;
  *(this + 520) = 0u;
  *(this + 472) = 0u;
  *(this + 488) = 0u;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  GPUTools::VMBuffer::VMBuffer((this + 536), 0, 0);
  *(this + 591) = 1;
  *(this + 35) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  *(this + 21) = 0;
  clear_errors(*(this + 2));
  wrapper_cache_program_parameter();
  v12 = 1;
  [**(this + 2) setParameter:1501 to:&v12];
  *(this + 590) = GPUTools::GL::ShouldUseGLIReadTextureData();
  update_context_state_cache(*(this + 2));
  if (*(this + 68) <= 0x10uLL)
  {
    __assert_rtn("void GPUTools::VMBuffer::set_alignment(size_t)", &unk_204462, 0, "alignment < _size");
  }

  v7 = *(this + 67);
  v8 = vandq_s8(vaddq_s64(vdupq_n_s64(v7 + 15), *(this + 35)), vdupq_n_s64(0xFFFFFFFFFFFFFFF0));
  *(this + 72) = 16;
  *(this + 35) = vsubq_s64(v8, vdupq_n_s64(v7));
  v9 = *(this + 2);
  if (*(v9 + 3460) < 2)
  {
    *v6 = 0x100000001;
    if (*(v9 + 4862) != 1)
    {
LABEL_4:
      *(this + 28) = 0;
      if (*(v9 + 3460) >= 3)
      {
        goto LABEL_5;
      }

      goto LABEL_10;
    }
  }

  else
  {
    (*(*(this + 4) + 832))(*(*(this + 3) + 16), 36063, v6);
    (*(*(this + 4) + 832))(*(*(this + 3) + 16), 34852, this + 108);
    v9 = *(this + 2);
    if (*(v9 + 4862) != 1)
    {
      goto LABEL_4;
    }
  }

  (*(*(this + 4) + 832))(*(*(this + 3) + 16), 35979, this + 112);
  v9 = *(this + 2);
  if (*(v9 + 3460) >= 3)
  {
LABEL_5:
    (*(*(this + 4) + 832))(*(*(this + 3) + 16), 35375, this + 116);
    v9 = *(this + 2);
    v10 = *(v9 + 3456);
    v11 = *(this + 4);
    if (!v10)
    {
      goto LABEL_6;
    }

LABEL_11:
    *(this + 16) = *(v11 + 6144);
    *(this + 15) = 0x34800000346;
    if (v10 > 2)
    {
      if (v10 == 3)
      {
        *(this + 256) = 1;
        *(this + 268) = 1;
        *(this + 280) = 1;
        *(this + 292) = 0;
        *(this + 304) = 0;
        if (!*(this + 5))
        {
          return;
        }

        goto LABEL_23;
      }

      if (v10 != 4)
      {
LABEL_14:
        if (!*(this + 5))
        {
          return;
        }

        goto LABEL_23;
      }
    }

    else
    {
      if (v10 == 1)
      {
        *(this + 256) = 0;
        *(this + 268) = 0;
        *(this + 280) = 0;
        *(this + 292) = 0;
        *(this + 304) = 0;
        if (!*(this + 5))
        {
          return;
        }

        goto LABEL_23;
      }

      if (v10 != 2)
      {
        goto LABEL_14;
      }
    }

    *(this + 256) = 1;
    *(this + 268) = 1;
    *(this + 280) = 0;
    *(this + 292) = 0;
    *(this + 304) = 0;
    if (!*(this + 5))
    {
      return;
    }

    goto LABEL_23;
  }

LABEL_10:
  *(this + 29) = 0;
  v10 = *(v9 + 3456);
  v11 = *(this + 4);
  if (v10)
  {
    goto LABEL_11;
  }

LABEL_6:
  *(this + 16) = *(v11 + 4400);
  *(this + 15) = 0xD100000015;
  *(this + 256) = 1;
  *(this + 268) = 1;
  *(this + 280) = *(v9 + 4845);
  *(this + 292) = 0;
  *(this + 304) = 0;
  if (!*(this + 5))
  {
    return;
  }

LABEL_23:
  ContextHarvester::encode(this, 4294955024, 0, "Ciui", *v9, 7, 6);
}

void sub_10228(_Unwind_Exception *a1)
{
  GPUTools::NameTargetTupleArray::reset((v1 + 520));
  GPUTools::NameTargetTupleArray::reset((v1 + 504));
  GPUTools::NameTargetTupleArray::reset((v1 + 488));
  GPUTools::NameTargetTupleArray::reset((v1 + 472));
  GPUTools::NameTargetTupleArray::reset((v1 + 456));
  GPUTools::NameTargetTupleArray::reset((v1 + 440));
  GPUTools::NameTargetTupleArray::reset((v1 + 424));
  GPUTools::NameTargetTupleArray::reset((v1 + 408));
  GPUTools::NameTargetTupleArray::reset((v1 + 392));
  GPUTools::NameTargetTupleArray::reset((v1 + 376));
  GPUTools::NameTargetTupleArray::reset((v1 + 360));
  GPUTools::NameTargetTupleArray::reset((v1 + 344));
  GPUTools::NameTargetTupleArray::reset((v1 + 328));
  GPUTools::NameTargetTupleArray::reset(v3);
  std::unordered_map<unsigned int,BOOL>::~unordered_map[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

void ContextHarvester::encode(ContextHarvester *this, uint64_t a2, uint64_t a3, const char *a4, ...)
{
  va_start(va, a4);
  va_copy(v7, va);
  GPUTools::FB::VAListArgumentProvider::VAListArgumentProvider(v6, va);
  GPUTools::FB::Encode();
  v5 = *(this + 5);
  while (atomic_exchange((v5 + 56), 1u) == 1)
  {
      ;
    }
  }

  GPUTools::FB::Stream::Write_nolock();
  atomic_store(0, (v5 + 56));
  GPUTools::FB::VAListArgumentProvider::~VAListArgumentProvider(v6);
}

void sub_103C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  atomic_store(0, (v3 + 56));
  GPUTools::FB::VAListArgumentProvider::~VAListArgumentProvider(va);
  _Unwind_Resume(a1);
}

void sub_103E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  GPUTools::FB::VAListArgumentProvider::~VAListArgumentProvider(va);
  _Unwind_Resume(a1);
}

void ContextHarvester::~ContextHarvester(ContextHarvester *this)
{
  clear_errors(*(this + 2));
  wrapper_cache_program_parameter();
  v5 = 0;
  [**(this + 2) setParameter:1501 to:&v5];
  GPUTools::VMBuffer::~VMBuffer((this + 536));
  GPUTools::NameTargetTupleArray::reset((this + 520));
  GPUTools::NameTargetTupleArray::reset((this + 504));
  GPUTools::NameTargetTupleArray::reset((this + 488));
  GPUTools::NameTargetTupleArray::reset((this + 472));
  GPUTools::NameTargetTupleArray::reset((this + 456));
  GPUTools::NameTargetTupleArray::reset((this + 440));
  GPUTools::NameTargetTupleArray::reset((this + 424));
  GPUTools::NameTargetTupleArray::reset((this + 408));
  GPUTools::NameTargetTupleArray::reset((this + 392));
  GPUTools::NameTargetTupleArray::reset((this + 376));
  GPUTools::NameTargetTupleArray::reset((this + 360));
  GPUTools::NameTargetTupleArray::reset((this + 344));
  GPUTools::NameTargetTupleArray::reset((this + 328));
  GPUTools::NameTargetTupleArray::reset((this + 312));
  v2 = *(this + 10);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    operator delete(v4);
  }
}

void ContextHarvester::HarvestObjectNames(uint64_t a1, int a2, void **a3, unsigned int a4)
{
  if (a2 <= 6)
  {
    if (a2 > 3)
    {
      if (a2 == 4)
      {
        p_reserved1 = (&stru_600 + 73);
      }

      else if (a2 == 5)
      {
        p_reserved1 = (&stru_600 + 72);
      }

      else
      {
        p_reserved1 = (&stru_600 + 74);
      }

LABEL_28:
      v8 = *(a1 + 16);

      GPUTools::NameTargetTupleArray::querySpecificObjectList(v8, a3, p_reserved1);
      return;
    }

    switch(a2)
    {
      case 1:
        p_reserved1 = (&stru_600 + 64);
        goto LABEL_28;
      case 2:
        p_reserved1 = (&stru_600 + 69);
        goto LABEL_28;
      case 3:
        p_reserved1 = &stru_600.reserved1;
        goto LABEL_28;
    }

LABEL_31:
    v9 = dy_abort("unsupported resource type: %d", a2);
    __clang_call_terminate(v9);
  }

  if (a2 > 9)
  {
    switch(a2)
    {
      case 10:
        p_reserved1 = &stru_650;
        goto LABEL_28;
      case 11:
        p_reserved1 = (&stru_600 + 75);
        goto LABEL_28;
      case 12:
        p_reserved1 = (&stru_650 + 1);
        goto LABEL_28;
    }

    goto LABEL_31;
  }

  if ((a2 - 7) >= 2)
  {
    if (a2 == 9)
    {
      p_reserved1 = (&stru_600 + 70);
      goto LABEL_28;
    }

    goto LABEL_31;
  }

  v10[0] = 0;
  v10[1] = 0;
  GPUTools::NameTargetTupleArray::querySpecificObjectList(*(a1 + 16), v10, (&stru_600.flags + 3));
  if (a2 == 7)
  {
    v7 = 35648;
  }

  else
  {
    v7 = 35656;
  }

  GPUTools::NameTargetTupleArray::split(v10, v7, a3, 0);
  GPUTools::NameTargetTupleArray::reset(v10);
}

void sub_10694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  GPUTools::NameTargetTupleArray::reset(va);
  _Unwind_Resume(a1);
}

uint64_t ContextHarvester::HarvestBufferObject(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = 1;
  *(a1 + 8) = a5;
  ContextHarvester::harvestBufferObject(a1, (&loc_888C + 6), a2, a3, a4, 0);
  bound_buffer = wrapper_cache_get_bound_buffer(*(a1 + 16), 34962);
  v8 = GPUTools::GL::DYGetBufferBindingEnum((&loc_888C + 6), v7);
  v10 = *(a1 + 24);
  v9 = *(a1 + 32);
  v11 = *(v9 + 5136);
  v13 = 0;
  result = (*(v9 + 832))(*(v10 + 16), v8, &v13);
  if (v13 != bound_buffer)
  {
    return v11(*(*(a1 + 24) + 16), 34962, bound_buffer);
  }

  return result;
}

void ContextHarvester::harvestBufferObject(uint64_t **this, GPUTools::GL *a2, unsigned int a3, uint64_t a4, uint64_t a5, int a6)
{
  v70 = a3;
  if (!a2)
  {
    ContextHarvester::harvestBufferObject();
  }

  v6 = a4;
  if (a4 < 0)
  {
    ContextHarvester::harvestBufferObject();
  }

  if (a5 < 0)
  {
    ContextHarvester::harvestBufferObject();
  }

  if (!a3)
  {
    ContextHarvester::harvestBufferObject();
  }

  v69 = this;
  ContextHarvester::encodeCommand(this, 0xFFFFD007, 3u, a4, a5, 65028, kDYStateGroupBuffer, 65030, a3, 65030, 0);
  v12 = GPUTools::GL::DYGetBufferBindingEnum(a2, v11);
  v14 = this[3];
  v13 = this[4];
  v15 = v13[642];
  v16 = v70;
  LODWORD(v65[0]) = 0;
  (v13[104])(v14[2], v12, v65);
  if (LODWORD(v65[0]) != v16)
  {
    v15(this[3][2], a2, v16);
  }

  ContextHarvester::encode(this, 201, 0, "Ci@1ui", *this[2], 1, &v70);
  ContextHarvester::encode(this, 12, 128, "Ceui", *this[2], a2, v70);
  ContextHarvester::harvestObjectLabel(this, 0x9151u, v70);
  if (*(this[2] + 865) < 3)
  {
    LODWORD(v65[0]) = 0;
    (this[4][651])(this[3][2], a2, 34660, v65);
    v17 = SLODWORD(v65[0]);
  }

  else
  {
    v65[0] = 0;
    (this[4][799])(this[3][2], a2, 34660, v65);
    v17 = v65[0];
  }

  v68 = 0;
  v67 = 0;
  (this[4][651])(this[3][2], a2, 34661, &v68 + 4);
  (this[4][651])(this[3][2], a2, 35003, &v68);
  (this[4][651])(this[3][2], a2, 35004, &v67);
  if (*(this[2] + 4849) == 1)
  {
    LODWORD(v65[0]) = 0;
    LODWORD(v66) = 0;
    (this[4][651])(this[3][2], a2, 35346, v65);
    (this[4][651])(this[3][2], a2, 35347, &v66);
    ContextHarvester::encodeCommand(this, 0x1Eu, 3u, v23, v24, 529413, a2, 529413, 35346, 1053700, LODWORD(v65[0]));
    ContextHarvester::encodeCommand(this, 0x1Eu, 3u, v25, v26, 529413, a2, 529413, 35347, 1053700, v66);
  }

  if (!v17)
  {
    goto LABEL_74;
  }

  if (!v67)
  {
    v29 = 0;
    v30 = v17 - v6;
    if (v17 >= v6)
    {
      goto LABEL_26;
    }

    goto LABEL_21;
  }

  v27 = this[2];
  if (*(v27 + 4850))
  {
    v28 = 37152;
  }

  else
  {
    v28 = 34660;
  }

  if (*(v27 + 865) < 3)
  {
    LODWORD(v65[0]) = 0;
    (this[4][651])(this[3][2], a2, v28, v65);
    v29 = SLODWORD(v65[0]);
    v30 = v17 - v6;
    if (v17 >= v6)
    {
      goto LABEL_26;
    }

LABEL_21:
    v31 = 0;
    v6 = v17;
    if (!v67)
    {
LABEL_36:
      v66 = 0;
      v35 = this[2];
      if (*(v35 + 4844) == 1)
      {
        v36 = (this[4][649])(this[3][2], a2, 35000);
      }

      else
      {
        v41 = v35[4];
        v65[0] = this[2];
        v65[1] = v41;
        BufferSize = GPUTools::GL::GetBufferSize();
        v36 = (this[4][795])(this[3][2], a2, 0, BufferSize, 1);
      }

      v32 = v36;
      v66 = v36;
LABEL_44:
      if (!v32)
      {
        __assert_rtn("void ContextHarvester::harvestBufferObject(GLenum, GLuint, intptr_t, intptr_t, BOOL)", &unk_204462, 0, "mapPointer");
      }

      DYGetGLGuestAppClient();
      GPUTools::Interpose::DYSavePointer();
      v47 = this[2];
      v48 = v47 + 4644;
      v51 = *v47;
      v49 = (v47 + 15);
      v50 = v51;
      if (v6 < 1)
      {
        GPUTools::FB::Encode(v49, 29, 0, "CelUe", v43, v44, v45, v46, v50, a2, v31, v48, HIDWORD(v68));
      }

      else
      {
        GPUTools::FB::Encode(v49, 31, 0, "CellU", v43, v44, v45, v46, v50, a2, v6, v31, v48);
      }

      v52 = this[5];
      while (atomic_exchange(v52 + 14, 1u) == 1)
      {
          ;
        }
      }

      GPUTools::FB::Stream::Write_nolock();
      atomic_store(0, v52 + 14);
      if (!v67)
      {
        (this[4][650])(this[3][2], a2);
      }

      if (!v67)
      {
        goto LABEL_74;
      }

LABEL_60:
      LODWORD(v66) = 0;
      if (*(this[2] + 4850) == 1)
      {
        (this[4][651])(this[3][2], a2, 37151, &v66);
        v57 = v66 < 4;
        v58 = this[2];
        if (v29 != v17)
        {
          goto LABEL_66;
        }
      }

      else
      {
        v57 = 1;
        v58 = this[2];
        if (v29 != v17)
        {
          goto LABEL_66;
        }
      }

      if (v57)
      {
        GPUTools::FB::Encode((v58 + 15), 363, 0, "Cee", v19, v53, v54, v55, *v58, a2, v68);
LABEL_70:
        v64 = this[5];
        while (atomic_exchange(v64 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v64 + 14);
        goto LABEL_74;
      }

LABEL_66:
      if (*(v58 + 865) < 3)
      {
        LODWORD(v65[0]) = 0;
        (this[4][651])(this[3][2], a2, 37153, v65);
        v63 = SLODWORD(v65[0]);
      }

      else
      {
        v65[0] = 0;
        (this[4][799])(this[3][2], a2, 37153, v65);
        v63 = v65[0];
      }

      GPUTools::FB::Encode((this[2] + 15), 865, 0, "Celle", v59, v60, v61, v62, *this[2], a2, v63, v29, v66);
      goto LABEL_70;
    }

    goto LABEL_22;
  }

  v65[0] = 0;
  (this[4][799])(this[3][2], a2, v28, v65);
  v29 = v65[0];
  v30 = v17 - v6;
  if (v17 < v6)
  {
    goto LABEL_21;
  }

LABEL_26:
  if (a5)
  {
    v33 = a5;
  }

  else
  {
    v33 = v17;
  }

  if (v33 + v6 <= v17 && (v6 ^ 0x7FFFFFFFFFFFFFFFuLL) >= v33)
  {
    v31 = v33;
  }

  else
  {
    v31 = v30;
  }

  if (!v67)
  {
    goto LABEL_36;
  }

LABEL_22:
  if ((v68 - 35003) <= 0xFFFFFFFD && v29 == v17)
  {
    v66 = 0;
    (this[4][652])(this[3][2], a2, 35005, &v66);
    v32 = v66;
    goto LABEL_44;
  }

  if (a6)
  {
    std::vector<unsigned int>::push_back[abi:ne200100]((this[2] + 9), &v70);
  }

  v37 = this[2];
  v40 = *v37;
  v38 = (v37 + 15);
  v39 = v40;
  if (v6 < 1)
  {
    GPUTools::FB::Encode(v38, 29, 0, "Celte", v19, v20, v21, v22, v39, a2, v31, 0, HIDWORD(v68));
  }

  else
  {
    GPUTools::FB::Encode(v38, 31, 0, "Cellt", v19, v20, v21, v22, v39, a2, v6, v31, 0);
  }

  v56 = this[5];
  while (atomic_exchange(v56 + 14, 1u) == 1)
  {
      ;
    }
  }

  GPUTools::FB::Stream::Write_nolock();
  atomic_store(0, v56 + 14);
  if (v67)
  {
    goto LABEL_60;
  }

LABEL_74:
  ContextHarvester::encodeCommand(v69, 0xFFFFD008, 0, v18, v19);
}

void sub_10F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  AutoStateGroup::~AutoStateGroup(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void sub_10F50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  AutoStateGroup::~AutoStateGroup(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void sub_10F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  AutoStateGroup::~AutoStateGroup(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void sub_10F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  AutoStateGroup::~AutoStateGroup(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void sub_10F8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  AutoStateGroup::~AutoStateGroup(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void sub_10FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  atomic_store(0, (v20 + 56));
  AutoStateGroup::~AutoStateGroup(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void sub_1102C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  AutoStateGroup::~AutoStateGroup(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void sub_11040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  AutoStateGroup::~AutoStateGroup(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void sub_11058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  AutoStateGroup::~AutoStateGroup(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void sub_1106C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  AutoStateGroup::~AutoStateGroup(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void sub_11080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  AutoStateGroup::~AutoStateGroup(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void sub_11094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  AutoStateGroup::~AutoStateGroup(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void ContextHarvester::harvestGLSLShader(ContextHarvester *this, uint64_t a2)
{
  v4 = a2;
  v38 = 0;
  (*(*(this + 4) + 5256))(*(*(this + 3) + 16));
  v37 = this;
  ContextHarvester::encodeCommand(this, 0xFFFFD007, 3u, v5, v6, 65028, kDYStateGroupGLSLShader, 65030, v4, 65030, v38);
  ContextHarvester::encode_r(this, 117, 0, v4, "Ce", **(this + 2), v38);
  v36 = 0;
  (*(*(this + 4) + 5256))(*(*(this + 3) + 16), a2, 35713, &v36 + 4);
  (*(*(this + 4) + 5256))(*(*(this + 3) + 16), a2, 35712, &v36);
  *v35 = 0;
  v33 = 0;
  v34 = 0;
  ContextHarvester::copyCurrentShaderTextAndLog(this, a2, &v33, v35, &v34, &v35[1]);
  v7 = *(this + 7);
  v8 = v7[1];
  if (!*&v8)
  {
    goto LABEL_21;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v4;
    if (*&v8 <= v4)
    {
      v10 = a2 % v8.i32[0];
    }
  }

  else
  {
    v10 = (v8.i32[0] - 1) & v4;
  }

  v11 = *(*v7 + 8 * v10);
  if (v11)
  {
    v12 = *v11;
    if (*v11)
    {
      if (v9.u32[0] < 2uLL)
      {
        v13 = *&v8 - 1;
        while (1)
        {
          v15 = v12[1];
          if (v15 == v4)
          {
            if (*(v12 + 4) == a2)
            {
              goto LABEL_22;
            }
          }

          else if ((v15 & v13) != v10)
          {
            goto LABEL_21;
          }

          v12 = *v12;
          if (!v12)
          {
            goto LABEL_22;
          }
        }
      }

      do
      {
        v14 = v12[1];
        if (v14 == v4)
        {
          if (*(v12 + 4) == a2)
          {
            break;
          }
        }

        else
        {
          if (v14 >= *&v8)
          {
            v14 %= *&v8;
          }

          if (v14 != v10)
          {
            goto LABEL_21;
          }
        }

        v12 = *v12;
      }

      while (v12);
    }
  }

  else
  {
LABEL_21:
    v12 = 0;
  }

LABEL_22:
  ShaderInfo::ShaderInfo(&v29, *(this + 2));
  if (!v12)
  {
    v16 = &v29;
    v17 = *v29;
    if (!*v29)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v16 = v12[3];
  v17 = **v16;
  if (v17)
  {
LABEL_26:
    strlen(v17);
    DYGetGLGuestAppClient();
    GPUTools::Interpose::DYSavePointer();
    v18 = *(this + 2);
    v39 = v18 + 4644;
    ContextHarvester::encode(this, 540, 128, "Culi@1U<cb>t", *v18, a2, 1, &v39, 0);
    ContextHarvester::encode(this, 93, 128, "Cul", **(this + 2), a2);
  }

LABEL_27:
  v19 = *(v16 + 52);
  DYGetGLGuestAppClient();
  GPUTools::Interpose::DYSavePointer();
  v20 = *(this + 2);
  v39 = v20 + 4644;
  ContextHarvester::encode(this, 540, 0, "Culi@1U<cb>t", *v20, a2, 1, &v39, 0);
  if (((v17 == 0) & v19) != 0)
  {
    ContextHarvester::encode(this, 93, 128, "Cul", **(this + 2), a2);
  }

  v21 = v36;
  v22 = v35[1];
  v23 = HIDWORD(v36);
  if (v35[1] < 0x401u)
  {
    ContextHarvester::encode(this, 4294955024, 0, "CiuiiSii", **(this + 2), 13, a2, v35[1], v34, HIDWORD(v36) != 0, v36 != 0);
  }

  else
  {
    DYGetGLGuestAppClient();
    GPUTools::Interpose::DYSavePointer();
    ContextHarvester::encode(this, 4294955024, 0, "CiuiiU<cb>ii", **(this + 2), 13, a2, v22, *(this + 2) + 4644, v23 != 0, v21 != 0);
  }

  v26 = v32;
  if (v32 && !atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  v27 = v31;
  if (v31 && !atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v27->__on_zero_shared)(v27);
    std::__shared_weak_count::__release_weak(v27);
  }

  v28 = v30;
  if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
  }

  ContextHarvester::encodeCommand(v37, 0xFFFFD008, 0, v24, v25);
}