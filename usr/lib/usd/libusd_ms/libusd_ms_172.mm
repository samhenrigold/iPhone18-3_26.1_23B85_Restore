void sub_29AEF3DB4(_Unwind_Exception *a1)
{
  while (1)
  {
    v4 = *--v1;
    v3 = v4;
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v1 == &STACK[0x370])
    {
      __cxa_guard_abort(&qword_2A174FEC8);
      _Unwind_Resume(a1);
    }
  }
}

void *sub_29AEF3F8C(void *a1, void *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  sub_29AEF8088(a1, a2);
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29AEF4014(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AEF4050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x29EDCA608];
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v6)
  {
    v6 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  (*(*a2 + 120))(&v20, a2, a1 + 8, v6 + 440);
  v7 = sub_29AEF8288(&v20);
  if (v7)
  {
    if ((v21 & 4) != 0)
    {
      v8 = (*((v21 & 0xFFFFFFFFFFFFFFF8) + 168))(&v20);
    }

    else
    {
      v8 = v20;
    }

    sub_29A2258F0(a3, v8);
    sub_29A225948((a3 + 4), (v8 + 4));
    if (v8 != a3)
    {
      sub_29A324D54(a3 + 8, *(v8 + 8), *(v8 + 16), (*(v8 + 16) - *(v8 + 8)) >> 3);
      sub_29A324D54(a3 + 32, *(v8 + 32), *(v8 + 40), (*(v8 + 40) - *(v8 + 32)) >> 3);
    }

    v9 = *(v8 + 56);
    v10 = *(v8 + 72);
    v11 = *(v8 + 88);
    *(a3 + 104) = *(v8 + 104);
    *(a3 + 88) = v11;
    *(a3 + 72) = v10;
    *(a3 + 56) = v9;
    *(a3 + 112) = *(v8 + 112);
    *(a3 + 116) = *(v8 + 116);
    v12 = *(v8 + 120);
    *(a3 + 136) = *(v8 + 136);
    *(a3 + 120) = v12;
    v13 = *(v8 + 152);
    v14 = *(v8 + 168);
    v15 = *(v8 + 184);
    *(a3 + 200) = *(v8 + 200);
    *(a3 + 184) = v15;
    *(a3 + 168) = v14;
    *(a3 + 152) = v13;
  }

  else
  {
    v18[0] = "hd/task.h";
    v18[1] = "_GetTaskParams";
    v18[2] = 242;
    v18[3] = "BOOL pxrInternal__aapl__pxrReserved__::HdTask::_GetTaskParams(HdSceneDelegate *, T *) [T = pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskParams]";
    v19 = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 8));
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v18, 1, "Task params for %s is of unexpected type", Text);
  }

  sub_29A186B14(&v20);
  return v7;
}

void sub_29AEF423C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxSimpleLightTask::_AppendLightsOfType(uint64_t a1, pxrInternal__aapl__pxrReserved__::HdRenderIndex *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = *MEMORY[0x29EDCA608];
  v6 = *(a3 + 8);
  v14 = *a3;
  v15 = v6;
  while (v14 != v15)
  {
    v8 = sub_29A1FCDD0(&v14, a2, a3);
    if (pxrInternal__aapl__pxrReserved__::HdRenderIndex::IsSprimTypeSupported(a2, v8))
    {
      v11 = sub_29A1FCDD0(&v14, v9, v10);
      pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v11);
      pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetSprimSubtree(v13);
    }

    sub_29A1FCE50(&v14);
  }

  return 0;
}

void sub_29AEF43F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void **a20)
{
  sub_29AC1C940(&a20);
  a20 = &a10;
  sub_29A1E234C(&a20);
  a20 = &a13;
  sub_29A1E234C(&a20);
  _Unwind_Resume(a1);
}

uint64_t sub_29AEF4440(uint64_t a1, uint64_t a2, std::type_info *a3)
{
  v9 = *MEMORY[0x29EDCA608];
  (*(*a1 + 72))(&v8);
  v4 = sub_29A3F92A4(&v8);
  if (sub_29A293A9C(v4))
  {
    type_name = v4->__type_name;
    if ((type_name & 4) != 0)
    {
      a3 = (*((type_name & 0xFFFFFFFFFFFFFFF8) + 168))(v4);
    }

    else
    {
      a3 = v4;
    }
  }

  v6 = LODWORD(a3->__vftable);
  sub_29A186B14(&v8);
  return v6;
}

uint64_t sub_29AEF4520(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  *(a1 + 8) = &off_2A209C4B0;
  sub_29AEF85AC(a1, a2);
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29AEF45B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

pxrInternal__aapl__pxrReserved__::GlfSimpleLight **sub_29AEF45F0(pxrInternal__aapl__pxrReserved__::GlfSimpleLight **result)
{
  v1 = result[1];
  v2 = *result;
  v3 = result[2] - *result;
  v4 = v1 - *result;
  if (v3 > v4)
  {
    v5 = result;
    v6 = 0xFAFAFAFAFAFAFAFBLL * (v4 >> 3);
    v18 = result;
    if (v1 == v2)
    {
      v7 = 0;
      v9 = 0;
    }

    else
    {
      v7 = sub_29A936374(result, 0xFAFAFAFAFAFAFAFBLL * (v4 >> 3));
      v9 = v8;
      v2 = *v5;
      v3 = v5[2] - *v5;
    }

    v10 = v7 + 408 * v6;
    v15 = v7;
    v16 = v10;
    *&v17 = v10;
    *(&v17 + 1) = v7 + 408 * v9;
    if (v9 < 0xFAFAFAFAFAFAFAFBLL * (v3 >> 3))
    {
      v11 = v5[1];
      v12 = &v10[v2 - v11];
      sub_29AB828C8(v5, v2, v11, v12);
      v13 = *v5;
      *v5 = v12;
      v14 = v5[2];
      *(v5 + 1) = v17;
      *&v17 = v13;
      *(&v17 + 1) = v14;
      v15 = v13;
      v16 = v13;
    }

    return sub_29AB8296C(&v15);
  }

  return result;
}

void sub_29AEF46E4(void *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29AB8296C(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x29AEF46D0);
}

__n128 sub_29AEF470C@<Q0>(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (sub_29AEC11F8(a1))
  {
    v6 = *(a1 + 1);
    if ((v6 & 4) != 0)
    {
      a2 = (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
    }

    else
    {
      a2 = *a1;
    }
  }

  v7 = *(a2 + 8);
  *a3 = *a2;
  *(a3 + 8) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a2 + 16);
  *(a3 + 16) = result;
  *(a3 + 29) = *(a2 + 29);
  return result;
}

void sub_29AEF4790(void *a1, __int128 *a2)
{
  if (a1[1] < a1[2])
  {
    sub_29AB82270(a1[1], a2);
  }

  sub_29AEF8618(a1, a2);
}

pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter **pxrInternal__aapl__pxrReserved__::HdxSimpleLightTask::Prepare(uint64_t a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::HdRenderIndex *a3)
{
  v429 = *MEMORY[0x29EDCA608];
  v391 = *(*(a1 + 120) + 24);
  sub_29B293C98(&v391);
  if (v391 || (lpsrc[0] = "hdx/simpleLightTask.cpp", lpsrc[1] = "Prepare", *&v410 = 384, *(&v410 + 1) = "virtual void pxrInternal__aapl__pxrReserved__::HdxSimpleLightTask::Prepare(HdTaskContext *, HdRenderIndex *)", LOBYTE(v411) = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(lpsrc, "lightingContext", 0) & 1) != 0))
  {
    pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetResourceRegistry(lpsrc, a3);
    if (lpsrc[0])
    {
      if (v5)
      {
        v6 = lpsrc[1];
        if (lpsrc[1])
        {
          atomic_fetch_add_explicit(lpsrc[1] + 1, 1uLL, memory_order_relaxed);
        }
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
      v5 = 0;
    }

    if (lpsrc[1])
    {
      sub_29A014BEC(lpsrc[1]);
    }

    if (v5)
    {
      v353 = (a1 + 312);
      v352 = v6;
      v350 = v5;
      if (!*(a1 + 312))
      {
        v365 = 0uLL;
        v366.i64[0] = 0;
        v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v7)
        {
          v7 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        LODWORD(lpsrc[0]) = 0;
        lpsrc[1] = 1;
        v8 = v365.i64[1];
        if (v365.i64[1] >= v366.i64[0])
        {
          v11 = sub_29AD9CC10(&v365, v7 + 2, lpsrc);
        }

        else
        {
          v9 = lpsrc[0];
          v10 = *(v7 + 2);
          *v365.i64[1] = v10;
          if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            *v8 &= 0xFFFFFFFFFFFFFFF8;
          }

          v8[1] = v9;
          v8[2] = 1;
          v11 = (v8 + 3);
        }

        v365.i64[1] = v11;
        v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v12)
        {
          v12 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        LODWORD(lpsrc[0]) = 0;
        lpsrc[1] = 1;
        v13 = v365.i64[1];
        if (v365.i64[1] >= v366.i64[0])
        {
          v16 = sub_29AD9CC10(&v365, v12 + 3, lpsrc);
        }

        else
        {
          v14 = lpsrc[0];
          v15 = *(v12 + 3);
          *v365.i64[1] = v15;
          if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            *v13 &= 0xFFFFFFFFFFFFFFF8;
          }

          v13[1] = v14;
          v13[2] = 1;
          v16 = (v13 + 3);
        }

        v365.i64[1] = v16;
        v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v17)
        {
          v17 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AllocateUniformBufferArrayRange(v5, &v365, 4u, lpsrc, v17);
        v18 = *lpsrc;
        lpsrc[1] = 0;
        lpsrc[0] = 0;
        v19 = *(a1 + 320);
        *v353 = v18;
        if (v19)
        {
          sub_29A014BEC(v19);
          if (lpsrc[1])
          {
            sub_29A014BEC(lpsrc[1]);
          }
        }

        v20 = *(a1 + 120);
        v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v21)
        {
          v21 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        v22 = *(a1 + 312);
        v23 = *(a1 + 320);
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        lpsrc[0] = -4294967287;
        v24 = *(v21 + 1);
        lpsrc[1] = v24;
        if ((v24 & 7) != 0 && (atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          lpsrc[1] = (lpsrc[1] & 0xFFFFFFFFFFFFFFF8);
        }

        v410 = 0uLL;
        *&v411 = v22;
        *(&v411 + 1) = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        LOWORD(v412) = 1;
        *(&v412 + 1) = 0;
        LOBYTE(v413) = 0;
        pxrInternal__aapl__pxrReserved__::HdStSimpleLightingShader::AddBufferBinding(v20, lpsrc);
        v5 = v350;
        if (*(&v411 + 1))
        {
          sub_29A014BEC(*(&v411 + 1));
        }

        if (*(&v410 + 1))
        {
          sub_29A014BEC(*(&v410 + 1));
        }

        if ((lpsrc[1] & 7) != 0)
        {
          atomic_fetch_add_explicit((lpsrc[1] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (v23)
        {
          sub_29A014BEC(v23);
        }

        lpsrc[0] = &v365;
        sub_29ABC6FA0(lpsrc);
      }

      if (*(a1 + 376) == 1)
      {
        v25 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v25)
        {
          v25 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        v26 = sub_29AE99CDC(&v391);
        UseLighting = pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::GetUseLighting(v26);
        *(&v427[0] + 1) = &unk_2A20443C3;
        LOBYTE(v427[0]) = UseLighting;
        sub_29AD9CD3C((v25 + 16), v427, v389);
        *lpsrc = v389[0];
        v389[0] = 0uLL;
        v28 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v28)
        {
          v28 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        v29 = sub_29AE99CDC(&v391);
        UseColorMaterialDiffuse = pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::GetUseColorMaterialDiffuse(v29);
        *(&v425[0] + 1) = &unk_2A20443C3;
        LOBYTE(v425[0]) = UseColorMaterialDiffuse;
        sub_29AD9CD3C((v28 + 24), v425, v387);
        v410 = v387[0];
        v387[0] = 0uLL;
        v366.i64[0] = 0;
        v365 = 0uLL;
        sub_29AD9CF88(&v365, lpsrc, &v411, 2uLL);
        for (i = 3; i != -1; i -= 2)
        {
          v32 = lpsrc[i];
          if (v32)
          {
            sub_29A014BEC(v32);
          }
        }

        if (*(&v387[0] + 1))
        {
          sub_29A014BEC(*(&v387[0] + 1));
        }

        sub_29A186B14(v425);
        v6 = v352;
        if (*(&v389[0] + 1))
        {
          sub_29A014BEC(*(&v389[0] + 1));
        }

        sub_29A186B14(v427);
        pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddSources(v5, v353, &v365);
        lpsrc[0] = &v365;
        sub_29A0176E4(lpsrc);
      }

      v33 = sub_29AE99CDC(&v391);
      NumLightsUsed = pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::GetNumLightsUsed(v33);
      v35 = sub_29AE99CDC(&v391);
      v36 = pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::ComputeNumShadowsUsed(v35);
      if (!*(a1 + 328))
      {
        lpsrc[1] = 0;
        lpsrc[0] = 0;
        *&v410 = 0;
        v37 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v37)
        {
          v37 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        v365.i32[0] = 16;
        v365.i64[1] = 1;
        v38 = lpsrc[1];
        if (lpsrc[1] >= v410)
        {
          v41 = sub_29AD9CC10(lpsrc, v37 + 5, &v365);
        }

        else
        {
          v39 = v365.i64[0];
          v40 = *(v37 + 5);
          *lpsrc[1] = v40;
          if ((v40 & 7) != 0 && (atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            *v38 &= 0xFFFFFFFFFFFFFFF8;
          }

          v38[1] = v39;
          v38[2] = 1;
          v41 = v38 + 3;
        }

        lpsrc[1] = v41;
        v42 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v42)
        {
          v42 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        v365.i32[0] = 16;
        v365.i64[1] = 1;
        v43 = lpsrc[1];
        if (lpsrc[1] >= v410)
        {
          v46 = sub_29AD9CC10(lpsrc, v42 + 6, &v365);
        }

        else
        {
          v44 = v365.i64[0];
          v45 = *(v42 + 6);
          *lpsrc[1] = v45;
          if ((v45 & 7) != 0 && (atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            *v43 &= 0xFFFFFFFFFFFFFFF8;
          }

          v43[1] = v44;
          v43[2] = 1;
          v46 = v43 + 3;
        }

        lpsrc[1] = v46;
        v47 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v47)
        {
          v47 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        v365.i32[0] = 16;
        v365.i64[1] = 1;
        v48 = lpsrc[1];
        if (lpsrc[1] >= v410)
        {
          v51 = sub_29AD9CC10(lpsrc, v47 + 7, &v365);
        }

        else
        {
          v49 = v365.i64[0];
          v50 = *(v47 + 7);
          *lpsrc[1] = v50;
          if ((v50 & 7) != 0 && (atomic_fetch_add_explicit((v50 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            *v48 &= 0xFFFFFFFFFFFFFFF8;
          }

          v48[1] = v49;
          v48[2] = 1;
          v51 = v48 + 3;
        }

        lpsrc[1] = v51;
        v52 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v52)
        {
          v52 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        v365.i32[0] = 16;
        v365.i64[1] = 1;
        v53 = lpsrc[1];
        if (lpsrc[1] >= v410)
        {
          v56 = sub_29AD9CC10(lpsrc, v52 + 8, &v365);
        }

        else
        {
          v54 = v365.i64[0];
          v55 = *(v52 + 8);
          *lpsrc[1] = v55;
          if ((v55 & 7) != 0 && (atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            *v53 &= 0xFFFFFFFFFFFFFFF8;
          }

          v53[1] = v54;
          v53[2] = 1;
          v56 = v53 + 3;
        }

        lpsrc[1] = v56;
        v57 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v57)
        {
          v57 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        v365.i32[0] = 15;
        v365.i64[1] = 1;
        v58 = lpsrc[1];
        if (lpsrc[1] >= v410)
        {
          v61 = sub_29AD9CC10(lpsrc, v57 + 9, &v365);
        }

        else
        {
          v59 = v365.i64[0];
          v60 = *(v57 + 9);
          *lpsrc[1] = v60;
          if ((v60 & 7) != 0 && (atomic_fetch_add_explicit((v60 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            *v58 &= 0xFFFFFFFFFFFFFFF8;
          }

          v58[1] = v59;
          v58[2] = 1;
          v61 = v58 + 3;
        }

        lpsrc[1] = v61;
        v62 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v62)
        {
          v62 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        v365.i32[0] = 13;
        v365.i64[1] = 1;
        v63 = lpsrc[1];
        if (lpsrc[1] >= v410)
        {
          v66 = sub_29AD9CC10(lpsrc, v62 + 10, &v365);
        }

        else
        {
          v64 = v365.i64[0];
          v65 = *(v62 + 10);
          *lpsrc[1] = v65;
          if ((v65 & 7) != 0 && (atomic_fetch_add_explicit((v65 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            *v63 &= 0xFFFFFFFFFFFFFFF8;
          }

          v63[1] = v64;
          v63[2] = 1;
          v66 = v63 + 3;
        }

        lpsrc[1] = v66;
        v67 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v67)
        {
          v67 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        v365.i32[0] = 13;
        v365.i64[1] = 1;
        v68 = lpsrc[1];
        if (lpsrc[1] >= v410)
        {
          v71 = sub_29AD9CC10(lpsrc, v67 + 11, &v365);
        }

        else
        {
          v69 = v365.i64[0];
          v70 = *(v67 + 11);
          *lpsrc[1] = v70;
          if ((v70 & 7) != 0 && (atomic_fetch_add_explicit((v70 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            *v68 &= 0xFFFFFFFFFFFFFFF8;
          }

          v68[1] = v69;
          v68[2] = 1;
          v71 = v68 + 3;
        }

        lpsrc[1] = v71;
        v72 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v72)
        {
          v72 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        v365.i32[0] = 15;
        v365.i64[1] = 1;
        v73 = lpsrc[1];
        if (lpsrc[1] >= v410)
        {
          v76 = sub_29AD9CC10(lpsrc, v72 + 12, &v365);
        }

        else
        {
          v74 = v365.i64[0];
          v75 = *(v72 + 12);
          *lpsrc[1] = v75;
          if ((v75 & 7) != 0 && (atomic_fetch_add_explicit((v75 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            *v73 &= 0xFFFFFFFFFFFFFFF8;
          }

          v73[1] = v74;
          v73[2] = 1;
          v76 = v73 + 3;
        }

        lpsrc[1] = v76;
        v77 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v77)
        {
          v77 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        v365.i32[0] = 18;
        v365.i64[1] = 1;
        v78 = lpsrc[1];
        if (lpsrc[1] >= v410)
        {
          v81 = sub_29AD9CC10(lpsrc, v77 + 13, &v365);
        }

        else
        {
          v79 = v365.i64[0];
          v80 = *(v77 + 13);
          *lpsrc[1] = v80;
          if ((v80 & 7) != 0 && (atomic_fetch_add_explicit((v80 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            *v78 &= 0xFFFFFFFFFFFFFFF8;
          }

          v78[1] = v79;
          v78[2] = 1;
          v81 = v78 + 3;
        }

        lpsrc[1] = v81;
        v82 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v82)
        {
          v82 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        v365.i32[0] = 5;
        v365.i64[1] = 1;
        v83 = lpsrc[1];
        if (lpsrc[1] >= v410)
        {
          v86 = sub_29AD9CC10(lpsrc, v82 + 14, &v365);
        }

        else
        {
          v84 = v365.i64[0];
          v85 = *(v82 + 14);
          *lpsrc[1] = v85;
          if ((v85 & 7) != 0 && (atomic_fetch_add_explicit((v85 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            *v83 &= 0xFFFFFFFFFFFFFFF8;
          }

          v83[1] = v84;
          v83[2] = 1;
          v86 = v83 + 3;
        }

        lpsrc[1] = v86;
        v87 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v87)
        {
          v87 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        v365.i32[0] = 5;
        v365.i64[1] = 1;
        v88 = lpsrc[1];
        if (lpsrc[1] >= v410)
        {
          v91 = sub_29AD9CC10(lpsrc, v87 + 15, &v365);
        }

        else
        {
          v89 = v365.i64[0];
          v90 = *(v87 + 15);
          *lpsrc[1] = v90;
          if ((v90 & 7) != 0 && (atomic_fetch_add_explicit((v90 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            *v88 &= 0xFFFFFFFFFFFFFFF8;
          }

          v88[1] = v89;
          v88[2] = 1;
          v91 = v88 + 3;
        }

        lpsrc[1] = v91;
        v92 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v92)
        {
          v92 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        v365.i32[0] = 0;
        v365.i64[1] = 1;
        v93 = lpsrc[1];
        if (lpsrc[1] >= v410)
        {
          v96 = sub_29AD9CC10(lpsrc, v92 + 16, &v365);
        }

        else
        {
          v94 = v365.i64[0];
          v95 = *(v92 + 16);
          *lpsrc[1] = v95;
          if ((v95 & 7) != 0 && (atomic_fetch_add_explicit((v95 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            *v93 &= 0xFFFFFFFFFFFFFFF8;
          }

          v93[1] = v94;
          v93[2] = 1;
          v96 = v93 + 3;
        }

        lpsrc[1] = v96;
        v97 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v97)
        {
          v97 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        v365.i32[0] = 0;
        v365.i64[1] = 1;
        v98 = lpsrc[1];
        if (lpsrc[1] >= v410)
        {
          v101 = sub_29AD9CC10(lpsrc, v97 + 17, &v365);
        }

        else
        {
          v99 = v365.i64[0];
          v100 = *(v97 + 17);
          *lpsrc[1] = v100;
          if ((v100 & 7) != 0 && (atomic_fetch_add_explicit((v100 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            *v98 &= 0xFFFFFFFFFFFFFFF8;
          }

          v98[1] = v99;
          v98[2] = 1;
          v101 = v98 + 3;
        }

        lpsrc[1] = v101;
        v102 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v102)
        {
          v102 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AllocateUniformBufferArrayRange(v5, lpsrc, 4u, &v365, v102);
        v103 = v365;
        v365 = 0uLL;
        v104 = *(a1 + 336);
        *(a1 + 328) = v103;
        if (v104)
        {
          sub_29A014BEC(v104);
          if (v365.i64[1])
          {
            sub_29A014BEC(v365.i64[1]);
          }
        }

        v365.i64[0] = lpsrc;
        sub_29ABC6FA0(&v365);
      }

      v105 = *(a1 + 120);
      v106 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
      if (!v106)
      {
        v106 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdStSimpleLightingShader::RemoveBufferBinding(v105, (v106 + 32));
      v107 = NumLightsUsed;
      if (NumLightsUsed)
      {
        v108 = *(a1 + 120);
        v109 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v109)
        {
          v109 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        v110 = *(a1 + 328);
        v111 = *(a1 + 336);
        if (v111)
        {
          atomic_fetch_add_explicit(&v111->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        lpsrc[0] = -4294967287;
        v112 = *(v109 + 4);
        lpsrc[1] = v112;
        if ((v112 & 7) != 0 && (atomic_fetch_add_explicit((v112 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          lpsrc[1] = (lpsrc[1] & 0xFFFFFFFFFFFFFFF8);
        }

        v410 = 0uLL;
        *&v411 = v110;
        *(&v411 + 1) = v111;
        if (v111)
        {
          atomic_fetch_add_explicit(&v111->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        LOWORD(v412) = 1;
        *(&v412 + 1) = NumLightsUsed;
        LOBYTE(v413) = 1;
        pxrInternal__aapl__pxrReserved__::HdStSimpleLightingShader::AddBufferBinding(v108, lpsrc);
        if (*(&v411 + 1))
        {
          sub_29A014BEC(*(&v411 + 1));
        }

        if (*(&v410 + 1))
        {
          sub_29A014BEC(*(&v410 + 1));
        }

        if ((lpsrc[1] & 7) != 0)
        {
          atomic_fetch_add_explicit((lpsrc[1] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (v111)
        {
          sub_29A014BEC(v111);
        }
      }

      v113 = sub_29AE99CDC(&v391);
      UseShadows = pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::GetUseShadows(v113);
      v114 = (a1 + 344);
      if (((*(a1 + 344) == 0) & UseShadows) == 1)
      {
        lpsrc[1] = 0;
        lpsrc[0] = 0;
        *&v410 = 0;
        v115 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v115)
        {
          v115 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        v365.i32[0] = 18;
        v365.i64[1] = 1;
        v116 = lpsrc[1];
        if (lpsrc[1] >= v410)
        {
          v119 = sub_29AD9CC10(lpsrc, v115 + 19, &v365);
        }

        else
        {
          v117 = v365.i64[0];
          v118 = *(v115 + 19);
          *lpsrc[1] = v118;
          if ((v118 & 7) != 0 && (atomic_fetch_add_explicit((v118 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            *v116 &= 0xFFFFFFFFFFFFFFF8;
          }

          v116[1] = v117;
          v116[2] = 1;
          v119 = v116 + 3;
        }

        lpsrc[1] = v119;
        v120 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v120)
        {
          v120 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        v365.i32[0] = 18;
        v365.i64[1] = 1;
        v121 = lpsrc[1];
        if (lpsrc[1] >= v410)
        {
          v124 = sub_29AD9CC10(lpsrc, v120 + 20, &v365);
        }

        else
        {
          v122 = v365.i64[0];
          v123 = *(v120 + 20);
          *lpsrc[1] = v123;
          if ((v123 & 7) != 0 && (atomic_fetch_add_explicit((v123 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            *v121 &= 0xFFFFFFFFFFFFFFF8;
          }

          v121[1] = v122;
          v121[2] = 1;
          v124 = v121 + 3;
        }

        lpsrc[1] = v124;
        v125 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v125)
        {
          v125 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        v365.i32[0] = 13;
        v365.i64[1] = 1;
        v126 = lpsrc[1];
        if (lpsrc[1] >= v410)
        {
          v129 = sub_29AD9CC10(lpsrc, v125 + 21, &v365);
        }

        else
        {
          v127 = v365.i64[0];
          v128 = *(v125 + 21);
          *lpsrc[1] = v128;
          if ((v128 & 7) != 0 && (atomic_fetch_add_explicit((v128 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            *v126 &= 0xFFFFFFFFFFFFFFF8;
          }

          v126[1] = v127;
          v126[2] = 1;
          v129 = v126 + 3;
        }

        lpsrc[1] = v129;
        v130 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v130)
        {
          v130 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        v365.i32[0] = 13;
        v365.i64[1] = 1;
        v131 = lpsrc[1];
        if (lpsrc[1] >= v410)
        {
          v134 = sub_29AD9CC10(lpsrc, v130 + 22, &v365);
        }

        else
        {
          v132 = v365.i64[0];
          v133 = *(v130 + 22);
          *lpsrc[1] = v133;
          if ((v133 & 7) != 0 && (atomic_fetch_add_explicit((v133 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            *v131 &= 0xFFFFFFFFFFFFFFF8;
          }

          v131[1] = v132;
          v131[2] = 1;
          v134 = v131 + 3;
        }

        lpsrc[1] = v134;
        v135 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v135)
        {
          v135 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AllocateUniformBufferArrayRange(v5, lpsrc, 4u, &v365, v135);
        v136 = v365;
        v365 = 0uLL;
        v137 = *(a1 + 352);
        *v114 = v136;
        if (v137)
        {
          sub_29A014BEC(v137);
          if (v365.i64[1])
          {
            sub_29A014BEC(v365.i64[1]);
          }
        }

        v365.i64[0] = lpsrc;
        sub_29ABC6FA0(&v365);
      }

      v138 = *(a1 + 120);
      v139 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
      if (!v139)
      {
        v139 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdStSimpleLightingShader::RemoveBufferBinding(v138, (v139 + 144));
      v140 = v36;
      if (v36)
      {
        v141 = *(a1 + 120);
        v142 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v142)
        {
          v142 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        v143 = *(a1 + 344);
        v144 = *(a1 + 352);
        if (v144)
        {
          atomic_fetch_add_explicit(&v144->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        lpsrc[0] = -4294967287;
        v145 = *(v142 + 18);
        lpsrc[1] = v145;
        if ((v145 & 7) != 0 && (atomic_fetch_add_explicit((v145 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          lpsrc[1] = (lpsrc[1] & 0xFFFFFFFFFFFFFFF8);
        }

        v410 = 0uLL;
        *&v411 = v143;
        *(&v411 + 1) = v144;
        if (v144)
        {
          atomic_fetch_add_explicit(&v144->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        LOWORD(v412) = 1;
        *(&v412 + 1) = v140;
        LOBYTE(v413) = 1;
        pxrInternal__aapl__pxrReserved__::HdStSimpleLightingShader::AddBufferBinding(v141, lpsrc);
        if (*(&v411 + 1))
        {
          sub_29A014BEC(*(&v411 + 1));
        }

        if (*(&v410 + 1))
        {
          sub_29A014BEC(*(&v410 + 1));
        }

        if ((lpsrc[1] & 7) != 0)
        {
          atomic_fetch_add_explicit((lpsrc[1] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (v144)
        {
          sub_29A014BEC(v144);
        }
      }

      if (*(a1 + 377) == 1)
      {
        sub_29A195790(v389, NumLightsUsed);
        sub_29A195790(v427, NumLightsUsed);
        sub_29A195790(v387, NumLightsUsed);
        sub_29A195790(v425, NumLightsUsed);
        sub_29A193124(v385, NumLightsUsed);
        sub_29A18E048(v423, NumLightsUsed);
        sub_29A18E048(v383, NumLightsUsed);
        sub_29A193124(v421, NumLightsUsed);
        sub_29A198988(v381, NumLightsUsed, v146, v147, v148, v149, v150, v151);
        sub_29A19D6E4(v419, NumLightsUsed);
        sub_29A19D6E4(v379, NumLightsUsed);
        sub_29A20CB6C(v417, NumLightsUsed);
        sub_29A20CB6C(v377, NumLightsUsed);
        sub_29A198988(v375, v140, v152, v153, v154, v155, v156, v157);
        sub_29A198988(v373, v140, v158, v159, v160, v161, v162, v163);
        sub_29A18E048(v371, v140);
        sub_29A18E048(v369, v140);
        v164 = sub_29AE99CDC(&v391);
        Lights = pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::GetLights(v164);
        v166 = sub_29AE99CDC(&v391);
        Shadows = pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::GetShadows(v166);
        if (NumLightsUsed)
        {
          v168 = Shadows;
          v169 = 0;
          do
          {
            Position = pxrInternal__aapl__pxrReserved__::GlfSimpleLight::GetPosition((*Lights + 408 * v169));
            sub_29A195BC4(v389);
            *(v390 + 16 * v169) = *Position;
            pxrInternal__aapl__pxrReserved__::GlfSimpleLight::GetAmbient((*Lights + 408 * v169));
            v172 = v171;
            sub_29A195BC4(v427);
            *(v428 + 16 * v169) = *v172;
            Diffuse = pxrInternal__aapl__pxrReserved__::GlfSimpleLight::GetDiffuse((*Lights + 408 * v169));
            sub_29A195BC4(v387);
            *(v388 + 16 * v169) = *Diffuse;
            Specular = pxrInternal__aapl__pxrReserved__::GlfSimpleLight::GetSpecular((*Lights + 408 * v169));
            sub_29A195BC4(v425);
            *(v426 + 16 * v169) = *Specular;
            SpotDirection = pxrInternal__aapl__pxrReserved__::GlfSimpleLight::GetSpotDirection((*Lights + 408 * v169));
            sub_29A1935CC(v385);
            v176 = v386 + 12 * v169;
            v177 = *SpotDirection;
            *(v176 + 8) = *(SpotDirection + 8);
            *v176 = v177;
            v178 = *pxrInternal__aapl__pxrReserved__::GlfSimpleLight::GetSpotCutoff((*Lights + 408 * v169));
            sub_29A18E624(v423);
            *(v424 + 4 * v169) = v178;
            v179 = *pxrInternal__aapl__pxrReserved__::GlfSimpleLight::GetSpotFalloff((*Lights + 408 * v169));
            sub_29A18E624(v383);
            *(v384 + 4 * v169) = v179;
            Attenuation = pxrInternal__aapl__pxrReserved__::GlfSimpleLight::GetAttenuation((*Lights + 408 * v169));
            sub_29A1935CC(v421);
            v181 = v422 + 12 * v169;
            v182 = *Attenuation;
            *(v181 + 8) = *(Attenuation + 8);
            *v181 = v182;
            Transform = pxrInternal__aapl__pxrReserved__::GlfSimpleLight::GetTransform((*Lights + 408 * v169));
            pxrInternal__aapl__pxrReserved__::GfMatrix4d::GetInverse(lpsrc, Transform, 0, 0.0);
            pxrInternal__aapl__pxrReserved__::GfMatrix4f::GfMatrix4f(&v365, lpsrc);
            sub_29A198DC8(v381);
            v184 = (v382 + (v169 << 6));
            v185 = v365;
            v186 = v366;
            v187 = v368;
            v184[2] = v367;
            v184[3] = v187;
            *v184 = v185;
            v184[1] = v186;
            LODWORD(Attenuation) = pxrInternal__aapl__pxrReserved__::GlfSimpleLight::GetShadowIndexStart((*Lights + 408 * v169));
            sub_29A19DBEC(v419);
            *(v420 + 4 * v169) = Attenuation;
            LODWORD(Attenuation) = pxrInternal__aapl__pxrReserved__::GlfSimpleLight::GetShadowIndexEnd((*Lights + 408 * v169));
            sub_29A19DBEC(v379);
            *(v380 + 4 * v169) = Attenuation;
            LOBYTE(Attenuation) = pxrInternal__aapl__pxrReserved__::GlfSimpleLight::HasShadow((*Lights + 408 * v169));
            sub_29A20D1F0(v417);
            *(v418 + v169) = Attenuation;
            LOBYTE(Attenuation) = pxrInternal__aapl__pxrReserved__::GlfSimpleLight::IsDomeLight((*Lights + 408 * v169));
            sub_29A20D1F0(v377);
            *(v378 + v169) = Attenuation;
            sub_29A20D1F0(v417);
            if (*(v418 + v169) == 1)
            {
              sub_29A19DBEC(v419);
              v188 = *(v420 + 4 * v169);
              for (j = v188 << 6; ; j += 64)
              {
                sub_29A19DBEC(v379);
                if (v188 > *(v380 + 4 * v169))
                {
                  break;
                }

                v190 = sub_29AB80170(v168);
                pxrInternal__aapl__pxrReserved__::GlfSimpleShadowArray::GetWorldToShadowMatrix(lpsrc, v190, v188);
                pxrInternal__aapl__pxrReserved__::GfMatrix4f::GfMatrix4f(&v365, lpsrc);
                sub_29A198DC8(v375);
                v191 = (v376 + j);
                v192 = v365;
                v193 = v366;
                v194 = v368;
                v191[2] = v367;
                v191[3] = v194;
                *v191 = v192;
                v191[1] = v193;
                sub_29A198DC8(v375);
                pxrInternal__aapl__pxrReserved__::GfMatrix4f::GetInverse((v376 + j), 0, 0.0, lpsrc);
                sub_29A198DC8(v373);
                v195 = (v374 + j);
                v196 = *lpsrc;
                v197 = v410;
                v198 = v412;
                v195[2] = v411;
                v195[3] = v198;
                *v195 = v196;
                v195[1] = v197;
                ShadowBlur = pxrInternal__aapl__pxrReserved__::GlfSimpleLight::GetShadowBlur((*Lights + 408 * v169));
                sub_29A18E624(v371);
                *(v372 + 4 * v188) = ShadowBlur;
                ShadowBias = pxrInternal__aapl__pxrReserved__::GlfSimpleLight::GetShadowBias((*Lights + 408 * v169));
                sub_29A18E624(v369);
                *(v370 + 4 * v188++) = ShadowBias;
              }
            }

            ++v169;
          }

          while (v169 != v107);
        }

        v201 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v201)
        {
          v201 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        *(&v408 + 1) = &off_2A20435E8;
        v202 = operator new(0x30uLL);
        v203 = v389[1];
        *v202 = v389[0];
        *(v202 + 1) = v203;
        v204 = v390;
        *(v202 + 4) = v390;
        if (v204)
        {
          v205 = (v204 - 16);
          if (*(v202 + 3))
          {
            v205 = *(v202 + 3);
          }

          atomic_fetch_add_explicit(v205, 1uLL, memory_order_relaxed);
        }

        atomic_store(0, v202 + 10);
        *&v408 = v202;
        atomic_fetch_add_explicit(v202 + 10, 1u, memory_order_relaxed);
        sub_29AD9CD3C((v201 + 40), &v408, &v355);
        *lpsrc = v355;
        v355 = 0uLL;
        v206 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v206)
        {
          v206 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        *(&v406 + 1) = &off_2A20435E8;
        v207 = operator new(0x30uLL);
        v208 = v427[1];
        *v207 = v427[0];
        *(v207 + 1) = v208;
        v209 = v428;
        *(v207 + 4) = v428;
        if (v209)
        {
          v210 = (v209 - 16);
          if (*(v207 + 3))
          {
            v210 = *(v207 + 3);
          }

          atomic_fetch_add_explicit(v210, 1uLL, memory_order_relaxed);
        }

        atomic_store(0, v207 + 10);
        *&v406 = v207;
        atomic_fetch_add_explicit(v207 + 10, 1u, memory_order_relaxed);
        sub_29AD9CD3C((v206 + 48), &v406, &v407);
        v410 = v407;
        v407 = 0uLL;
        v211 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v211)
        {
          v211 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        *(&v404 + 1) = &off_2A20435E8;
        v212 = operator new(0x30uLL);
        v213 = v387[1];
        *v212 = v387[0];
        *(v212 + 1) = v213;
        v214 = v388;
        *(v212 + 4) = v388;
        if (v214)
        {
          v215 = (v214 - 16);
          if (*(v212 + 3))
          {
            v215 = *(v212 + 3);
          }

          atomic_fetch_add_explicit(v215, 1uLL, memory_order_relaxed);
        }

        atomic_store(0, v212 + 10);
        *&v404 = v212;
        atomic_fetch_add_explicit(v212 + 10, 1u, memory_order_relaxed);
        sub_29AD9CD3C((v211 + 56), &v404, &v405);
        v411 = v405;
        v405 = 0uLL;
        v216 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v216)
        {
          v216 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        *(&v402 + 1) = &off_2A20435E8;
        v217 = operator new(0x30uLL);
        v218 = v425[1];
        *v217 = v425[0];
        *(v217 + 1) = v218;
        v219 = v426;
        *(v217 + 4) = v426;
        if (v219)
        {
          v220 = (v219 - 16);
          if (*(v217 + 3))
          {
            v220 = *(v217 + 3);
          }

          atomic_fetch_add_explicit(v220, 1uLL, memory_order_relaxed);
        }

        atomic_store(0, v217 + 10);
        *&v402 = v217;
        atomic_fetch_add_explicit(v217 + 10, 1u, memory_order_relaxed);
        sub_29AD9CD3C((v216 + 64), &v402, &v403);
        v412 = v403;
        v403 = 0uLL;
        v221 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v221)
        {
          v221 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        v400[1] = &off_2A20433C0;
        v222 = operator new(0x30uLL);
        v223 = v385[1];
        *v222 = v385[0];
        *(v222 + 1) = v223;
        v224 = v386;
        *(v222 + 4) = v386;
        if (v224)
        {
          v225 = (v224 - 16);
          if (*(v222 + 3))
          {
            v225 = *(v222 + 3);
          }

          atomic_fetch_add_explicit(v225, 1uLL, memory_order_relaxed);
        }

        atomic_store(0, v222 + 10);
        v400[0] = v222;
        atomic_fetch_add_explicit(v222 + 10, 1u, memory_order_relaxed);
        sub_29AD9CD3C((v221 + 72), v400, &v401);
        v413 = v401;
        v401 = 0uLL;
        v226 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v226)
        {
          v226 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        v399[1] = &off_2A2042F70;
        v227 = operator new(0x30uLL);
        v228 = v423[1];
        *v227 = v423[0];
        *(v227 + 1) = v228;
        v229 = v424;
        *(v227 + 4) = v424;
        if (v229)
        {
          v230 = (v229 - 16);
          if (*(v227 + 3))
          {
            v230 = *(v227 + 3);
          }

          atomic_fetch_add_explicit(v230, 1uLL, memory_order_relaxed);
        }

        atomic_store(0, v227 + 10);
        v399[0] = v227;
        atomic_fetch_add_explicit(v227 + 10, 1u, memory_order_relaxed);
        sub_29AD9CD3C((v226 + 80), v399, &v364);
        v414 = v364;
        v364 = 0uLL;
        v231 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v231)
        {
          v231 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        v398[1] = &off_2A2042F70;
        v232 = operator new(0x30uLL);
        v233 = v383[1];
        *v232 = v383[0];
        *(v232 + 1) = v233;
        v234 = v384;
        *(v232 + 4) = v384;
        if (v234)
        {
          v235 = (v234 - 16);
          if (*(v232 + 3))
          {
            v235 = *(v232 + 3);
          }

          atomic_fetch_add_explicit(v235, 1uLL, memory_order_relaxed);
        }

        atomic_store(0, v232 + 10);
        v398[0] = v232;
        atomic_fetch_add_explicit(v232 + 10, 1u, memory_order_relaxed);
        sub_29AD9CD3C((v231 + 88), v398, &v363);
        v415[0] = v363;
        v363 = 0uLL;
        v236 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v236)
        {
          v236 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        v397[1] = &off_2A20433C0;
        v237 = operator new(0x30uLL);
        v238 = v421[1];
        *v237 = v421[0];
        *(v237 + 1) = v238;
        v239 = v422;
        *(v237 + 4) = v422;
        if (v239)
        {
          v240 = (v239 - 16);
          if (*(v237 + 3))
          {
            v240 = *(v237 + 3);
          }

          atomic_fetch_add_explicit(v240, 1uLL, memory_order_relaxed);
        }

        atomic_store(0, v237 + 10);
        v397[0] = v237;
        atomic_fetch_add_explicit(v237 + 10, 1u, memory_order_relaxed);
        sub_29AD9CD3C((v236 + 96), v397, &v362);
        v415[1] = v362;
        v362 = 0uLL;
        v241 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v241)
        {
          v241 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        v396[1] = &off_2A20438C8;
        v242 = operator new(0x30uLL);
        v243 = v381[1];
        *v242 = v381[0];
        *(v242 + 1) = v243;
        v244 = v382;
        *(v242 + 4) = v382;
        if (v244)
        {
          v245 = (v244 - 16);
          if (*(v242 + 3))
          {
            v245 = *(v242 + 3);
          }

          atomic_fetch_add_explicit(v245, 1uLL, memory_order_relaxed);
        }

        atomic_store(0, v242 + 10);
        v396[0] = v242;
        atomic_fetch_add_explicit(v242 + 10, 1u, memory_order_relaxed);
        sub_29AD9CD3C((v241 + 104), v396, &v361);
        v415[2] = v361;
        v361 = 0uLL;
        v246 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v246)
        {
          v246 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        v395[1] = &off_2A2043D18;
        v247 = operator new(0x30uLL);
        v248 = v419[1];
        *v247 = v419[0];
        *(v247 + 1) = v248;
        v249 = v420;
        *(v247 + 4) = v420;
        if (v249)
        {
          v250 = (v249 - 16);
          if (*(v247 + 3))
          {
            v250 = *(v247 + 3);
          }

          atomic_fetch_add_explicit(v250, 1uLL, memory_order_relaxed);
        }

        atomic_store(0, v247 + 10);
        v395[0] = v247;
        atomic_fetch_add_explicit(v247 + 10, 1u, memory_order_relaxed);
        sub_29AD9CD3C((v246 + 112), v395, &v360);
        v415[3] = v360;
        v360 = 0uLL;
        v251 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v251)
        {
          v251 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        v394[1] = &off_2A2043D18;
        v252 = operator new(0x30uLL);
        v253 = v379[1];
        *v252 = v379[0];
        *(v252 + 1) = v253;
        v254 = v380;
        *(v252 + 4) = v380;
        if (v254)
        {
          v255 = (v254 - 16);
          if (*(v252 + 3))
          {
            v255 = *(v252 + 3);
          }

          atomic_fetch_add_explicit(v255, 1uLL, memory_order_relaxed);
        }

        atomic_store(0, v252 + 10);
        v394[0] = v252;
        atomic_fetch_add_explicit(v252 + 10, 1u, memory_order_relaxed);
        sub_29AD9CD3C((v251 + 120), v394, &v359);
        v415[4] = v359;
        v359 = 0uLL;
        v256 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v256)
        {
          v256 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        v393[1] = &off_2A20474B8;
        v257 = operator new(0x30uLL);
        v258 = v417[1];
        *v257 = v417[0];
        *(v257 + 1) = v258;
        v259 = v418;
        *(v257 + 4) = v418;
        if (v259)
        {
          v260 = (v259 - 16);
          if (*(v257 + 3))
          {
            v260 = *(v257 + 3);
          }

          atomic_fetch_add_explicit(v260, 1uLL, memory_order_relaxed);
        }

        atomic_store(0, v257 + 10);
        v393[0] = v257;
        atomic_fetch_add_explicit(v257 + 10, 1u, memory_order_relaxed);
        sub_29AD9CD3C((v256 + 128), v393, &v358);
        v415[5] = v358;
        v358 = 0uLL;
        v261 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v261)
        {
          v261 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        v392[1] = &off_2A20474B8;
        v262 = operator new(0x30uLL);
        v263 = v377[1];
        *v262 = v377[0];
        *(v262 + 1) = v263;
        v264 = v378;
        *(v262 + 4) = v378;
        if (v264)
        {
          v265 = (v264 - 16);
          if (*(v262 + 3))
          {
            v265 = *(v262 + 3);
          }

          atomic_fetch_add_explicit(v265, 1uLL, memory_order_relaxed);
        }

        atomic_store(0, v262 + 10);
        v392[0] = v262;
        atomic_fetch_add_explicit(v262 + 10, 1u, memory_order_relaxed);
        sub_29AD9CD3C((v261 + 136), v392, &v357);
        v415[6] = v357;
        v357 = 0uLL;
        v366.i64[0] = 0;
        v365 = 0uLL;
        sub_29AD9CF88(&v365, lpsrc, &v416, 0xDuLL);
        v266 = 25;
        while (1)
        {
          v267 = lpsrc[v266];
          if (v267)
          {
            sub_29A014BEC(v267);
          }

          v266 -= 2;
          if (v266 == -1)
          {
            if (*(&v357 + 1))
            {
              sub_29A014BEC(*(&v357 + 1));
            }

            sub_29A186B14(v392);
            if (*(&v358 + 1))
            {
              sub_29A014BEC(*(&v358 + 1));
            }

            sub_29A186B14(v393);
            if (*(&v359 + 1))
            {
              sub_29A014BEC(*(&v359 + 1));
            }

            sub_29A186B14(v394);
            if (*(&v360 + 1))
            {
              sub_29A014BEC(*(&v360 + 1));
            }

            sub_29A186B14(v395);
            if (*(&v361 + 1))
            {
              sub_29A014BEC(*(&v361 + 1));
            }

            sub_29A186B14(v396);
            if (*(&v362 + 1))
            {
              sub_29A014BEC(*(&v362 + 1));
            }

            sub_29A186B14(v397);
            if (*(&v363 + 1))
            {
              sub_29A014BEC(*(&v363 + 1));
            }

            sub_29A186B14(v398);
            if (*(&v364 + 1))
            {
              sub_29A014BEC(*(&v364 + 1));
            }

            sub_29A186B14(v399);
            if (*(&v401 + 1))
            {
              sub_29A014BEC(*(&v401 + 1));
            }

            sub_29A186B14(v400);
            if (*(&v403 + 1))
            {
              sub_29A014BEC(*(&v403 + 1));
            }

            sub_29A186B14(&v402);
            if (*(&v405 + 1))
            {
              sub_29A014BEC(*(&v405 + 1));
            }

            sub_29A186B14(&v404);
            if (*(&v407 + 1))
            {
              sub_29A014BEC(*(&v407 + 1));
            }

            sub_29A186B14(&v406);
            if (*(&v355 + 1))
            {
              sub_29A014BEC(*(&v355 + 1));
            }

            sub_29A186B14(&v408);
            pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddSources(v350, (a1 + 328), &v365);
            if (UseShadows)
            {
              v268 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
              if (!v268)
              {
                v268 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
              }

              *(&v407 + 1) = &off_2A20438C8;
              v269 = operator new(0x30uLL);
              v270 = v375[1];
              *v269 = v375[0];
              *(v269 + 1) = v270;
              v271 = v376;
              *(v269 + 4) = v376;
              if (v271)
              {
                v272 = (v271 - 16);
                if (*(v269 + 3))
                {
                  v272 = *(v269 + 3);
                }

                atomic_fetch_add_explicit(v272, 1uLL, memory_order_relaxed);
              }

              atomic_store(0, v269 + 10);
              *&v407 = v269;
              atomic_fetch_add_explicit(v269 + 10, 1u, memory_order_relaxed);
              sub_29AD9CD3C((v268 + 152), &v407, &v408);
              *lpsrc = v408;
              v408 = 0uLL;
              v273 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
              if (!v273)
              {
                v273 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
              }

              *(&v405 + 1) = &off_2A20438C8;
              v274 = operator new(0x30uLL);
              v275 = v373[1];
              *v274 = v373[0];
              *(v274 + 1) = v275;
              v276 = v374;
              *(v274 + 4) = v374;
              if (v276)
              {
                v277 = (v276 - 16);
                if (*(v274 + 3))
                {
                  v277 = *(v274 + 3);
                }

                atomic_fetch_add_explicit(v277, 1uLL, memory_order_relaxed);
              }

              atomic_store(0, v274 + 10);
              *&v405 = v274;
              atomic_fetch_add_explicit(v274 + 10, 1u, memory_order_relaxed);
              sub_29AD9CD3C((v273 + 160), &v405, &v406);
              v410 = v406;
              v406 = 0uLL;
              v278 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
              if (!v278)
              {
                v278 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
              }

              *(&v403 + 1) = &off_2A2042F70;
              v279 = operator new(0x30uLL);
              v280 = v371[1];
              *v279 = v371[0];
              *(v279 + 1) = v280;
              v281 = v372;
              *(v279 + 4) = v372;
              if (v281)
              {
                v282 = (v281 - 16);
                if (*(v279 + 3))
                {
                  v282 = *(v279 + 3);
                }

                atomic_fetch_add_explicit(v282, 1uLL, memory_order_relaxed);
              }

              atomic_store(0, v279 + 10);
              *&v403 = v279;
              atomic_fetch_add_explicit(v279 + 10, 1u, memory_order_relaxed);
              sub_29AD9CD3C((v278 + 168), &v403, &v404);
              v411 = v404;
              v404 = 0uLL;
              v283 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
              if (!v283)
              {
                v283 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
              }

              *(&v401 + 1) = &off_2A2042F70;
              v284 = operator new(0x30uLL);
              v285 = v369[1];
              *v284 = v369[0];
              *(v284 + 1) = v285;
              v286 = v370;
              *(v284 + 4) = v370;
              if (v286)
              {
                v287 = (v286 - 16);
                if (*(v284 + 3))
                {
                  v287 = *(v284 + 3);
                }

                atomic_fetch_add_explicit(v287, 1uLL, memory_order_relaxed);
              }

              atomic_store(0, v284 + 10);
              *&v401 = v284;
              atomic_fetch_add_explicit(v284 + 10, 1u, memory_order_relaxed);
              sub_29AD9CD3C((v283 + 176), &v401, &v402);
              v412 = v402;
              v402 = 0uLL;
              v356 = 0;
              v355 = 0uLL;
              sub_29AD9CF88(&v355, lpsrc, &v413, 4uLL);
              for (k = 7; k != -1; k -= 2)
              {
                v289 = lpsrc[k];
                if (v289)
                {
                  sub_29A014BEC(v289);
                }
              }

              if (*(&v402 + 1))
              {
                sub_29A014BEC(*(&v402 + 1));
              }

              sub_29A186B14(&v401);
              if (*(&v404 + 1))
              {
                sub_29A014BEC(*(&v404 + 1));
              }

              sub_29A186B14(&v403);
              if (*(&v406 + 1))
              {
                sub_29A014BEC(*(&v406 + 1));
              }

              sub_29A186B14(&v405);
              if (*(&v408 + 1))
              {
                sub_29A014BEC(*(&v408 + 1));
              }

              sub_29A186B14(&v407);
              pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddSources(v350, v114, &v355);
              lpsrc[0] = &v355;
              sub_29A0176E4(lpsrc);
            }

            lpsrc[0] = &v365;
            sub_29A0176E4(lpsrc);
            pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
          }
        }
      }

      v354 = (a1 + 360);
      if (!*(a1 + 360))
      {
        v365 = 0uLL;
        v366.i64[0] = 0;
        v290 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v290)
        {
          v290 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        LODWORD(lpsrc[0]) = 16;
        lpsrc[1] = 1;
        v291 = v365.i64[1];
        if (v365.i64[1] >= v366.i64[0])
        {
          v294 = sub_29AD9CC10(&v365, v290 + 6, lpsrc);
        }

        else
        {
          v292 = lpsrc[0];
          v293 = *(v290 + 6);
          *v365.i64[1] = v293;
          if ((v293 & 7) != 0 && (atomic_fetch_add_explicit((v293 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            *v291 &= 0xFFFFFFFFFFFFFFF8;
          }

          v291[1] = v292;
          v291[2] = 1;
          v294 = (v291 + 3);
        }

        v365.i64[1] = v294;
        v295 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v295)
        {
          v295 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        LODWORD(lpsrc[0]) = 16;
        lpsrc[1] = 1;
        v296 = v365.i64[1];
        if (v365.i64[1] >= v366.i64[0])
        {
          v299 = sub_29AD9CC10(&v365, v295 + 7, lpsrc);
        }

        else
        {
          v297 = lpsrc[0];
          v298 = *(v295 + 7);
          *v365.i64[1] = v298;
          if ((v298 & 7) != 0 && (atomic_fetch_add_explicit((v298 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            *v296 &= 0xFFFFFFFFFFFFFFF8;
          }

          v296[1] = v297;
          v296[2] = 1;
          v299 = (v296 + 3);
        }

        v365.i64[1] = v299;
        v300 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v300)
        {
          v300 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        LODWORD(lpsrc[0]) = 16;
        lpsrc[1] = 1;
        v301 = v365.i64[1];
        if (v365.i64[1] >= v366.i64[0])
        {
          v304 = sub_29AD9CC10(&v365, v300 + 8, lpsrc);
        }

        else
        {
          v302 = lpsrc[0];
          v303 = *(v300 + 8);
          *v365.i64[1] = v303;
          if ((v303 & 7) != 0 && (atomic_fetch_add_explicit((v303 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            *v301 &= 0xFFFFFFFFFFFFFFF8;
          }

          v301[1] = v302;
          v301[2] = 1;
          v304 = (v301 + 3);
        }

        v365.i64[1] = v304;
        v305 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v305)
        {
          v305 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        LODWORD(lpsrc[0]) = 16;
        lpsrc[1] = 1;
        v306 = v365.i64[1];
        if (v365.i64[1] >= v366.i64[0])
        {
          v309 = sub_29AD9CC10(&v365, v305 + 24, lpsrc);
        }

        else
        {
          v307 = lpsrc[0];
          v308 = *(v305 + 24);
          *v365.i64[1] = v308;
          if ((v308 & 7) != 0 && (atomic_fetch_add_explicit((v308 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            *v306 &= 0xFFFFFFFFFFFFFFF8;
          }

          v306[1] = v307;
          v306[2] = 1;
          v309 = (v306 + 3);
        }

        v365.i64[1] = v309;
        v310 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v310)
        {
          v310 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        LODWORD(lpsrc[0]) = 16;
        lpsrc[1] = 1;
        v311 = v365.i64[1];
        if (v365.i64[1] >= v366.i64[0])
        {
          v314 = sub_29AD9CC10(&v365, v310 + 25, lpsrc);
        }

        else
        {
          v312 = lpsrc[0];
          v313 = *(v310 + 25);
          *v365.i64[1] = v313;
          if ((v313 & 7) != 0 && (atomic_fetch_add_explicit((v313 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            *v311 &= 0xFFFFFFFFFFFFFFF8;
          }

          v311[1] = v312;
          v311[2] = 1;
          v314 = (v311 + 3);
        }

        v365.i64[1] = v314;
        v315 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v315)
        {
          v315 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        LODWORD(lpsrc[0]) = 13;
        lpsrc[1] = 1;
        v316 = v365.i64[1];
        if (v365.i64[1] >= v366.i64[0])
        {
          v319 = sub_29AD9CC10(&v365, v315 + 26, lpsrc);
        }

        else
        {
          v317 = lpsrc[0];
          v318 = *(v315 + 26);
          *v365.i64[1] = v318;
          if ((v318 & 7) != 0 && (atomic_fetch_add_explicit((v318 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            *v316 &= 0xFFFFFFFFFFFFFFF8;
          }

          v316[1] = v317;
          v316[2] = 1;
          v319 = (v316 + 3);
        }

        v365.i64[1] = v319;
        v320 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v320)
        {
          v320 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AllocateUniformBufferArrayRange(v5, &v365, 4u, lpsrc, v320);
        v321 = *lpsrc;
        lpsrc[1] = 0;
        lpsrc[0] = 0;
        v322 = *(a1 + 368);
        *v354 = v321;
        if (v322)
        {
          sub_29A014BEC(v322);
          if (lpsrc[1])
          {
            sub_29A014BEC(lpsrc[1]);
          }
        }

        v323 = *(a1 + 120);
        pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v389, "material");
        v324 = *(a1 + 360);
        v325 = *(a1 + 368);
        if (v325)
        {
          atomic_fetch_add_explicit(&v325->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        lpsrc[0] = -4294967287;
        lpsrc[1] = *&v389[0];
        if ((v389[0] & 7) != 0 && (atomic_fetch_add_explicit((*&v389[0] & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          lpsrc[1] = (lpsrc[1] & 0xFFFFFFFFFFFFFFF8);
        }

        v410 = 0uLL;
        *&v411 = v324;
        *(&v411 + 1) = v325;
        if (v325)
        {
          atomic_fetch_add_explicit(&v325->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        LOWORD(v412) = 1;
        *(&v412 + 1) = 0;
        LOBYTE(v413) = 1;
        pxrInternal__aapl__pxrReserved__::HdStSimpleLightingShader::AddBufferBinding(v323, lpsrc);
        if (*(&v411 + 1))
        {
          sub_29A014BEC(*(&v411 + 1));
        }

        if (*(&v410 + 1))
        {
          sub_29A014BEC(*(&v410 + 1));
        }

        if ((lpsrc[1] & 7) != 0)
        {
          atomic_fetch_add_explicit((lpsrc[1] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (v325)
        {
          sub_29A014BEC(v325);
        }

        if ((v389[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((*&v389[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        lpsrc[0] = &v365;
        sub_29ABC6FA0(lpsrc);
      }

      if (*(a1 + 378) == 1)
      {
        v326 = sub_29AE99CDC(&v391);
        Material = pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::GetMaterial(v326);
        v328 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v328)
        {
          v328 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        pxrInternal__aapl__pxrReserved__::GlfSimpleMaterial::GetAmbient(Material);
        v330 = v329;
        *(&v427[0] + 1) = &off_2A2042A68 + 2;
        v331 = operator new(0x14uLL);
        *v331 = *v330;
        atomic_store(0, v331 + 4);
        *&v427[0] = v331;
        atomic_fetch_add_explicit(v331 + 4, 1u, memory_order_relaxed);
        sub_29AD9CD3C((v328 + 48), v427, v389);
        *lpsrc = v389[0];
        v389[0] = 0uLL;
        v332 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v332)
        {
          v332 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        v333 = pxrInternal__aapl__pxrReserved__::GlfSimpleMaterial::GetDiffuse(Material);
        *(&v425[0] + 1) = &off_2A2042A68 + 2;
        v334 = operator new(0x14uLL);
        *v334 = *v333;
        atomic_store(0, v334 + 4);
        *&v425[0] = v334;
        atomic_fetch_add_explicit(v334 + 4, 1u, memory_order_relaxed);
        sub_29AD9CD3C((v332 + 56), v425, v387);
        v410 = v387[0];
        v387[0] = 0uLL;
        v335 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v335)
        {
          v335 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        v336 = pxrInternal__aapl__pxrReserved__::GlfSimpleMaterial::GetSpecular(Material);
        *(&v423[0] + 1) = &off_2A2042A68 + 2;
        v337 = operator new(0x14uLL);
        *v337 = *v336;
        atomic_store(0, v337 + 4);
        *&v423[0] = v337;
        atomic_fetch_add_explicit(v337 + 4, 1u, memory_order_relaxed);
        sub_29AD9CD3C((v335 + 64), v423, v385);
        v411 = v385[0];
        v385[0] = 0uLL;
        v338 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v338)
        {
          v338 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        Emission = pxrInternal__aapl__pxrReserved__::GlfSimpleMaterial::GetEmission(Material);
        *(&v421[0] + 1) = &off_2A2042A68 + 2;
        v340 = operator new(0x14uLL);
        *v340 = *Emission;
        atomic_store(0, v340 + 4);
        *&v421[0] = v340;
        atomic_fetch_add_explicit(v340 + 4, 1u, memory_order_relaxed);
        sub_29AD9CD3C((v338 + 192), v421, v383);
        v412 = v383[0];
        v383[0] = 0uLL;
        v341 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v341)
        {
          v341 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        v342 = sub_29AE99CDC(&v391);
        SceneAmbient = pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::GetSceneAmbient(v342);
        *(&v419[0] + 1) = &off_2A2042A68 + 2;
        v344 = operator new(0x14uLL);
        *v344 = *SceneAmbient;
        atomic_store(0, v344 + 4);
        *&v419[0] = v344;
        atomic_fetch_add_explicit(v344 + 4, 1u, memory_order_relaxed);
        sub_29AD9CD3C((v341 + 200), v419, v381);
        v413 = v381[0];
        v381[0] = 0uLL;
        v345 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        if (!v345)
        {
          v345 = sub_29AEF8760(&pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens);
        }

        Shininess = pxrInternal__aapl__pxrReserved__::GlfSimpleMaterial::GetShininess(Material);
        *(&v417[0] + 1) = &unk_2A2044C63;
        *v417 = Shininess;
        sub_29AD9CD3C((v345 + 208), v417, v379);
        v414 = v379[0];
        v379[0] = 0uLL;
        v366.i64[0] = 0;
        v365 = 0uLL;
        sub_29AD9CF88(&v365, lpsrc, v415, 6uLL);
        for (m = 11; m != -1; m -= 2)
        {
          v348 = lpsrc[m];
          if (v348)
          {
            sub_29A014BEC(v348);
          }
        }

        if (*(&v379[0] + 1))
        {
          sub_29A014BEC(*(&v379[0] + 1));
        }

        sub_29A186B14(v417);
        v6 = v352;
        if (*(&v381[0] + 1))
        {
          sub_29A014BEC(*(&v381[0] + 1));
        }

        sub_29A186B14(v419);
        if (*(&v383[0] + 1))
        {
          sub_29A014BEC(*(&v383[0] + 1));
        }

        sub_29A186B14(v421);
        if (*(&v385[0] + 1))
        {
          sub_29A014BEC(*(&v385[0] + 1));
        }

        sub_29A186B14(v423);
        if (*(&v387[0] + 1))
        {
          sub_29A014BEC(*(&v387[0] + 1));
        }

        sub_29A186B14(v425);
        if (*(&v389[0] + 1))
        {
          sub_29A014BEC(*(&v389[0] + 1));
        }

        sub_29A186B14(v427);
        pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddSources(v350, v354, &v365);
        lpsrc[0] = &v365;
        sub_29A0176E4(lpsrc);
      }

      *(a1 + 376) = 0;
      *(a1 + 378) = 0;
    }

    if (v6)
    {
      sub_29A014BEC(v6);
    }
  }

  return sub_29AE9C770(&v391);
}

void sub_29AEF735C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v63 = &STACK[0x450];
  if (STACK[0x3D8])
  {
    sub_29A014BEC(STACK[0x3D8]);
  }

  sub_29A186B14(&STACK[0x3C0]);
  if (STACK[0x3F8])
  {
    sub_29A014BEC(STACK[0x3F8]);
  }

  sub_29A186B14(&STACK[0x3E0]);
  if (STACK[0x418])
  {
    sub_29A014BEC(STACK[0x418]);
  }

  sub_29A186B14(&STACK[0x400]);
  if (&STACK[0x420] != &STACK[0x450])
  {
    do
    {
      v64 = *(v63 - 1);
      if (v64)
      {
        sub_29A014BEC(v64);
      }

      v63 -= 2;
    }

    while (v63 != &STACK[0x420]);
  }

  STACK[0x420] = &a35;
  sub_29A0176E4(&STACK[0x420]);
  pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxSimpleLightTask::Execute()
{
  result = sub_29A0ECEEC(&v1, "hdx", "virtual void pxrInternal__aapl__pxrReserved__::HdxSimpleLightTask::Execute(HdTaskContext *)");
  if (v1)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v2, v1);
  }

  return result;
}

void sub_29AEF8010(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_29AEF8010(a1, *a2);
    sub_29AEF8010(a1, *(a2 + 1));
    v5 = (a2 + 40);
    sub_29A1E234C(&v5);
    v4 = *(a2 + 4);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(a2);
  }
}

void *sub_29AEF8088(void *a1, void *a2)
{
  a1[1] = &off_2A209C3F8;
  result = operator new(0x18uLL);
  v5 = a2[1];
  *result = *a2;
  *(result + 1) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  atomic_store(0, result + 4);
  *a1 = result;
  atomic_fetch_add_explicit(result + 4, 1u, memory_order_relaxed);
  return result;
}

uint64_t *sub_29AEF80EC(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29AEF810C(uint64_t *a1, uint64_t *a2)
{
  *a2 = *a1;
  *a1 = 0;
  sub_29A1D2264(a1);
}

void *sub_29AEF8278@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = 0;
  return sub_29AEF8088(a2, v2);
}

uint64_t sub_29AEF8288(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B715E94 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A209AD70);
}

uint64_t *sub_29AEF8314(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29AEF8334(uint64_t *a1, uint64_t *a2)
{
  *a2 = *a1;
  *a1 = 0;
  sub_29AEF848C(a1);
}

uint64_t sub_29AEF8474@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_2A209C4B0;
  return sub_29AEF85AC(a2, v2);
}

void sub_29AEF848C(uint64_t *a1)
{
  v2 = *a1;
  if (v2 && atomic_fetch_add_explicit((v2 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    v4 = v1;
    __dmb(9u);
    v3 = sub_29AE9C770(v2);

    operator delete(v3);
  }
}

uint64_t sub_29AEF84D8(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 8));
  if (v2 != 1)
  {
    sub_29AEF8540(*a1, &v4);
    sub_29AEF848C(a1);
    *a1 = v4;
    v4 = 0;
    sub_29AEF848C(&v4);
  }

  return *a1;
}

uint64_t sub_29AEF8540@<X0>(void *a1@<X0>, unsigned int **a2@<X8>)
{
  v4 = operator new(0x10uLL);
  *v4 = *a1;
  result = sub_29B293C98(v4);
  atomic_store(0, v4 + 2);
  *a2 = v4;
  atomic_fetch_add_explicit(v4 + 2, 1u, memory_order_relaxed);
  return result;
}

uint64_t sub_29AEF85AC(unsigned int **a1, void *a2)
{
  v4 = operator new(0x10uLL);
  *v4 = *a2;
  result = sub_29B293C98(v4);
  atomic_store(0, v4 + 2);
  *a1 = v4;
  atomic_fetch_add_explicit(v4 + 2, 1u, memory_order_relaxed);
  return result;
}

void sub_29AEF8618(void *a1, __int128 *a2)
{
  v2 = 0xFAFAFAFAFAFAFAFBLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 <= 0xA0A0A0A0A0A0A0)
  {
    if (0xF5F5F5F5F5F5F5F6 * ((a1[2] - *a1) >> 3) > v3)
    {
      v3 = 0xF5F5F5F5F5F5F5F6 * ((a1[2] - *a1) >> 3);
    }

    if (0xFAFAFAFAFAFAFAFBLL * ((a1[2] - *a1) >> 3) >= 0x50505050505050)
    {
      v5 = 0xA0A0A0A0A0A0A0;
    }

    else
    {
      v5 = v3;
    }

    v11 = a1;
    if (v5)
    {
      v6 = sub_29A936374(a1, v5);
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    v8 = &v6[408 * v2];
    v9 = v8;
    v10 = &v6[408 * v5];
    sub_29AB82270(v8, a2);
  }

  sub_29A00C9A4();
}

void sub_29AEF874C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29AB8296C(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens_StaticTokenType *sub_29AEF8760(atomic_ullong *a1)
{
  result = sub_29AEF87A8();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens_StaticTokenType::~HdxSimpleLightTaskTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens_StaticTokenType *sub_29AEF87A8()
{
  v0 = operator new(0xF0uLL);
  pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskTokens_StaticTokenType::HdxSimpleLightTaskTokens_StaticTokenType(v0);
  return v0;
}

uint64_t *sub_29AEF87EC(uint64_t ***a1, uint64_t *a2, uint64_t a3, uint64_t **a4)
{
  v6 = sub_29A153CF4(a1, &v9, a2);
  result = *v6;
  if (!*v6)
  {
    sub_29AC44F30(a1, a4, &v8);
    sub_29A00B204(a1, v9, v6, v8);
    return v8;
  }

  return result;
}

double pxrInternal__aapl__pxrReserved__::HdxSkydomeTask::HdxSkydomeTask(pxrInternal__aapl__pxrReserved__::HdxSkydomeTask *this, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v3 = pxrInternal__aapl__pxrReserved__::HdxTask::HdxTask(this, a3);
  *v3 = &unk_2A209C578;
  result = 0.0;
  *(v3 + 2) = 0u;
  *(v3 + 3) = 0u;
  *(v3 + 16) = 0;
  *(v3 + 68) = 1;
  *(v3 + 9) = 0;
  return result;
}

{
  v3 = pxrInternal__aapl__pxrReserved__::HdxTask::HdxTask(this, a3);
  *v3 = &unk_2A209C578;
  result = 0.0;
  *(v3 + 2) = 0u;
  *(v3 + 3) = 0u;
  *(v3 + 16) = 0;
  *(v3 + 68) = 1;
  *(v3 + 9) = 0;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdxSkydomeTask::~HdxSkydomeTask(pxrInternal__aapl__pxrReserved__::HdxSkydomeTask *this)
{
  *this = &unk_2A209C578;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  pxrInternal__aapl__pxrReserved__::HdxTask::~HdxTask(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdxSkydomeTask::~HdxSkydomeTask(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::HdxSkydomeTask::_Sync(pxrInternal__aapl__pxrReserved__::HdxTask *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v51 = *MEMORY[0x29EDCA608];
  v48 = a2;
  if (!*(a1 + 9))
  {
    Hgi = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(a1);
    v8 = operator new(0x398uLL);
    sub_29A008E78(__p, "Skydome");
    pxrInternal__aapl__pxrReserved__::HdxFullscreenShader::HdxFullscreenShader(v8, Hgi, __p);
    if (SBYTE7(v29) < 0)
    {
      operator delete(__p[0]);
    }

    v9 = *(a1 + 9);
    *(a1 + 9) = v8;
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }
  }

  if ((*a4 & 4) != 0)
  {
    sub_29AEC0310(__p);
    v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v10)
    {
      v10 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    (*(*a2 + 120))(&v49, a2, a1 + 8, v10 + 440);
    if (sub_29AEE9810(&v49))
    {
      if ((v50 & 4) != 0)
      {
        v11 = (*((v50 & 0xFFFFFFFFFFFFFFF8) + 168))(&v49);
      }

      else
      {
        v11 = v49;
      }

      v12 = *v11;
      v13 = *(v11 + 2);
      v29 = *(v11 + 1);
      v30 = v13;
      *__p = v12;
      v14 = *(v11 + 3);
      v15 = *(v11 + 4);
      v16 = *(v11 + 5);
      v34 = *(v11 + 24);
      v32 = v15;
      v33 = v16;
      v31 = v14;
      if (__p != v11)
      {
        sub_29AC944C0(v35, v11[13], v11[14], 0xCCCCCCCCCCCCCCCDLL * ((v11[14] - v11[13]) >> 4));
        sub_29AC944C0(v36, v11[16], v11[17], 0xCCCCCCCCCCCCCCCDLL * ((v11[17] - v11[16]) >> 4));
      }

      v17 = *(v11 + 19);
      v38 = *(v11 + 21);
      v37 = v17;
      v18 = *(v11 + 23);
      v19 = *(v11 + 25);
      v20 = *(v11 + 27);
      *&v41[12] = *(v11 + 228);
      *v41 = v20;
      v40 = v19;
      v39 = v18;
      sub_29A2258F0(&v42, v11 + 61);
      sub_29A225948(&v43, v11 + 62);
      v22 = *(v11 + 284);
      v21 = *(v11 + 300);
      v23 = *(v11 + 268);
      *(v47 + 13) = *(v11 + 313);
      v46 = v22;
      v47[0] = v21;
      v45 = v23;
      v44 = *(v11 + 252);
      v24 = *(a1 + 6);
      if (!v24)
      {
        sub_29AEEA170(&v48, (a1 + 8), &v27);
        v25 = v27;
        v27 = 0uLL;
        v26 = *(a1 + 7);
        *(a1 + 3) = v25;
        if (v26)
        {
          sub_29A014BEC(v26);
          if (*(&v27 + 1))
          {
            sub_29A014BEC(*(&v27 + 1));
          }
        }

        v24 = *(a1 + 6);
      }

      pxrInternal__aapl__pxrReserved__::HdxRenderSetupTask::SyncParams(v24, v48, __p);
    }

    sub_29A186B14(&v49);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v43);
    sub_29A1DE3A4(&v42);
    v49 = v36;
    sub_29AC943DC(&v49);
    v49 = v35;
    sub_29AC943DC(&v49);
  }

  *a4 = 0;
}

void sub_29AEF8CD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  sub_29A186B14(v16 - 72);
  sub_29AEBC5BC(&__p);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxSkydomeTask::Prepare(uint64_t a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::HdRenderIndex *this)
{
  v5 = *(a1 + 48);
  if (v5)
  {
    (*(*v5 + 24))(v5, a2, this);
  }

  RenderDelegate = pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetRenderDelegate(this);
  result = (*(*RenderDelegate + 88))(RenderDelegate);
  if (*(a1 + 64) != result)
  {
    *(a1 + 64) = result;
    v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsTokens);
    if (!v8)
    {
      v8 = sub_29AEF9C94(&pxrInternal__aapl__pxrReserved__::HdRenderSettingsTokens);
    }

    LOBYTE(v9.__vftable) = 1;
    result = sub_29AE84234(RenderDelegate, v8 + 24, &v9);
    *(a1 + 68) = result;
  }

  *(a1 + 24) = this;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdxSkydomeTask::Execute(uint64_t a1, uint64_t a2)
{
  *(&v44 + 1) = *MEMORY[0x29EDCA608];
  sub_29A0ECEEC(&v41, "hdx", "virtual void pxrInternal__aapl__pxrReserved__::HdxSkydomeTask::Execute(HdTaskContext *)");
  pxrInternal__aapl__pxrReserved__::HdxSkydomeTask::_GetRenderPassState(a1, a2, &v39);
  if (v39)
  {
    if (v4)
    {
      v5 = v4;
      pxrInternal__aapl__pxrReserved__::HdStRenderPassState::MakeGraphicsCmdsDesc(v32, v4, *(a1 + 24));
      pxrInternal__aapl__pxrReserved__::GfMatrix4f::SetDiagonal(v31, 1.0);
      if ((*(a1 + 68) & 1) == 0)
      {
        goto LABEL_24;
      }

      v28[0].i64[0] = 0;
      v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
      if (!v6)
      {
        v6 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
      }

      if (sub_29AECFEDC(a2, v6 + 6, v28))
      {
        v7 = sub_29AE99CDC(v28);
        Lights = pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::GetLights(v7);
        v9 = -408;
        v10 = -1;
        while (1)
        {
          v11 = sub_29AE99CDC(v28);
          if (++v10 >= pxrInternal__aapl__pxrReserved__::GlfSimpleLightingContext::GetNumLightsUsed(v11))
          {
            break;
          }

          v12 = *Lights;
          IsDomeLight = pxrInternal__aapl__pxrReserved__::GlfSimpleLight::IsDomeLight((*Lights + v9 + 408));
          v9 += 408;
          if (IsDomeLight)
          {
            Transform = pxrInternal__aapl__pxrReserved__::GlfSimpleLight::GetTransform((v12 + v9));
            pxrInternal__aapl__pxrReserved__::GfMatrix4d::GetInverse(&v29, Transform, 0, 0.0);
            pxrInternal__aapl__pxrReserved__::GfMatrix4f::GfMatrix4f(__p, &v29);
            v15 = 0;
            v31[0] = *__p;
            v31[1] = v25;
            v31[2] = v26;
            v31[3] = v27;
            goto LABEL_12;
          }
        }
      }

      v15 = 1;
LABEL_12:
      sub_29AE9C770(v28);
      if (v15 & 1) == 0 && (*(a1 + 68) & 1) != 0 && v33 != v34 && (pxrInternal__aapl__pxrReserved__::HdxSkydomeTask::_GetSkydomeTexture(a1, a2))
      {
        pxrInternal__aapl__pxrReserved__::HdxSkydomeTask::_SetFragmentShader(a1);
        memset(v28, 0, sizeof(v28));
        (*(*v5 + 32))(__p, v5);
        pxrInternal__aapl__pxrReserved__::GfMatrix4d::GetInverse(&v29, __p, 0, 0.0);
        pxrInternal__aapl__pxrReserved__::GfMatrix4f::GfMatrix4f(v28, &v29);
        memset(v23, 0, sizeof(v23));
        (*(*v5 + 24))(__p, v5);
        pxrInternal__aapl__pxrReserved__::GfMatrix4d::GetInverse(&v29, __p, 0, 0.0);
        pxrInternal__aapl__pxrReserved__::GfMatrix4f::GfMatrix4f(v23, &v29);
        if (pxrInternal__aapl__pxrReserved__::HdxSkydomeTask::_UpdateParameterBuffer(a1, v28, v23, v31))
        {
          pxrInternal__aapl__pxrReserved__::HdxFullscreenShader::SetShaderConstants(*(a1 + 72), 0xC0u, (a1 + 80));
        }

        v16 = *(a1 + 72);
        v43 = *(a1 + 32);
        v30 = 0;
        v29 = 0uLL;
        sub_29AECA4EC(&v29, &v43, &v44, 1uLL);
        __p[0] = 0;
        __p[1] = 0;
        *&v25 = 0;
        pxrInternal__aapl__pxrReserved__::HdxFullscreenShader::BindTextures(v16, &v29, __p);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        if (*&v29.f64[0])
        {
          v29.f64[1] = v29.f64[0];
          operator delete(*&v29.f64[0]);
        }

        *&v29.f64[0] = pxrInternal__aapl__pxrReserved__::HdStRenderPassState::ComputeViewport(v5);
        v29.f64[1] = v17;
        if (v33 == v34)
        {
          __p[0] = 0;
          __p[1] = 0;
        }

        else
        {
          *__p = *v33;
        }

        if (v35 == v36)
        {
          v43 = 0uLL;
        }

        else
        {
          v43 = *v35;
        }

        v21 = v38;
        v22 = v37;
        pxrInternal__aapl__pxrReserved__::HdxFullscreenShader::Draw(*(a1 + 72), __p, &v43, &v22, &v21, &v29);
      }

      else
      {
LABEL_24:
        Hgi = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(a1);
        v19 = pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(a1);
        (*(*v19 + 24))(&v29);
        pxrInternal__aapl__pxrReserved__::Hgi::SubmitCmds(Hgi, *&v29.f64[0], 0);
        v20 = v29.f64[0];
        v29.f64[0] = 0.0;
        if (v20 != 0.0)
        {
          (*(**&v20 + 8))(COERCE_FLOAT64_T(*&v20));
        }
      }

      if (v35)
      {
        v36 = v35;
        operator delete(v35);
      }

      if (v33)
      {
        v34 = v33;
        operator delete(v33);
      }

      if (v32[0])
      {
        v32[1] = v32[0];
        operator delete(v32[0]);
      }
    }
  }

  if (v40)
  {
    sub_29A014BEC(v40);
  }

  if (v41)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v42, v41);
  }
}

void sub_29AEF92A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_29AB905FC(&a65);
  v67 = *(v65 - 120);
  if (v67)
  {
    sub_29A014BEC(v67);
  }

  sub_29A0E9CEC(v65 - 112);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxSkydomeTask::_GetRenderPassState@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(result + 48);
  if (v4)
  {
    v6 = *(v4 + 16);
    v5 = *(v4 + 24);
    *a3 = v6;
    a3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
    if (!v8)
    {
      v8 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
    }

    return sub_29AEC7990(a2, v8 + 23, a3);
  }

  return result;
}

void sub_29AEF93F8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxSkydomeTask::_GetSkydomeTexture(uint64_t a1, uint64_t a2)
{
  lpsrc = 0;
  v12 = 0;
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxTokens);
  if (!v4)
  {
    v4 = sub_29AEC837C(&pxrInternal__aapl__pxrReserved__::HdxTokens);
  }

  {
    v9 = 0;
    goto LABEL_12;
  }

  v6 = *(v5 + 9);
  v7 = *(v5 + 10);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  {
    v9 = 0;
    if (!v7)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

  *(a1 + 32) = *(v8 + 9);
  v9 = 1;
  if (v7)
  {
LABEL_20:
    sub_29A014BEC(v7);
  }

LABEL_12:
  if (v12)
  {
    sub_29A014BEC(v12);
  }

  return v9;
}

void sub_29AEF959C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxSkydomeTask::_SetFragmentShader(pxrInternal__aapl__pxrReserved__::HdxSkydomeTask *this)
{
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionDesc::HgiShaderFunctionDesc(&v11);
  v2 = atomic_load(&qword_2A174FED0);
  if (!v2)
  {
    v2 = sub_29AEF9D20();
  }

  if ((*v2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*v2 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v2);
  }

  std::string::operator=(&v11, EmptyString);
  v12 = 2;
  sub_29A008E78(&v10, "uvOut");
  sub_29A008E78(&v9, "vec2");
  memset(&__p, 0, sizeof(__p));
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageInput(&v11, &v10, &v9, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&v10, "skydomeTexture");
  LODWORD(v9.__r_.__value_.__l.__data_) = 13;
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddTexture(&v11, &v10, 0, 2u, &v9, 0);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&v10, "hd_FragColor");
  sub_29A008E78(&v9, "vec4");
  sub_29A008E78(&__p, "color");
  memset(&v7, 0, sizeof(v7));
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageOutput(&v11, &v10, &v9, &__p, &v7);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&v10, "gl_FragDepth");
  sub_29A008E78(&v9, "float");
  sub_29A008E78(&__p, "depth(any)");
  memset(&v7, 0, sizeof(v7));
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddStageOutput(&v11, &v10, &v9, &__p, &v7);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&v10, "invProjMatrix");
  sub_29A008E78(&v9, "mat4");
  memset(&__p, 0, sizeof(__p));
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddConstantParam(&v11, &v10, &v9, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&v10, "viewToWorld");
  sub_29A008E78(&v9, "mat4");
  memset(&__p, 0, sizeof(__p));
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddConstantParam(&v11, &v10, &v9, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&v10, "lightTransform");
  sub_29A008E78(&v9, "mat4");
  memset(&__p, 0, sizeof(__p));
  pxrInternal__aapl__pxrReserved__::HgiShaderFunctionAddConstantParam(&v11, &v10, &v9, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v4 = *(this + 9);
  pxrInternal__aapl__pxrReserved__::HdxPackageSkydomeShader(&v10);
  v5 = atomic_load(&qword_2A174FED0);
  if (!v5)
  {
    v5 = sub_29AEF9D20();
  }

  pxrInternal__aapl__pxrReserved__::HdxFullscreenShader::SetProgram(v4, &v10, v5, &v11);
  if ((v10.__r_.__value_.__s.__data_[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v10.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return sub_29AB89F90(&v11);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxSkydomeTask::_UpdateParameterBuffer(pxrInternal__aapl__pxrReserved__::HdxSkydomeTask *this, const pxrInternal__aapl__pxrReserved__::GfMatrix4f *a2, const pxrInternal__aapl__pxrReserved__::GfMatrix4f *a3, const pxrInternal__aapl__pxrReserved__::GfMatrix4f *a4)
{
  if (pxrInternal__aapl__pxrReserved__::GfMatrix4f::operator==(a2, this + 20) && pxrInternal__aapl__pxrReserved__::GfMatrix4f::operator==(a3, this + 36) && pxrInternal__aapl__pxrReserved__::GfMatrix4f::operator==(a4, this + 52))
  {
    return 0;
  }

  v9 = *a2;
  v10 = *(a2 + 1);
  v11 = *(a2 + 3);
  *(this + 7) = *(a2 + 2);
  *(this + 8) = v11;
  *(this + 5) = v9;
  *(this + 6) = v10;
  v12 = *a3;
  v13 = *(a3 + 1);
  v14 = *(a3 + 3);
  *(this + 11) = *(a3 + 2);
  *(this + 12) = v14;
  *(this + 9) = v12;
  *(this + 10) = v13;
  v15 = *a4;
  v16 = *(a4 + 1);
  v17 = *(a4 + 3);
  *(this + 15) = *(a4 + 2);
  *(this + 16) = v17;
  *(this + 13) = v15;
  *(this + 14) = v16;
  return 1;
}

uint64_t sub_29AEF9B28(uint64_t result, void *a2, void *a3)
{
  if (!result)
  {
    return result;
  }

  v4 = sub_29A16039C(result, a2);
  if (!v4)
  {
    v11 = "hd/task.h";
    v12 = "_GetTaskContextData";
    v13 = 214;
    v14 = "static BOOL pxrInternal__aapl__pxrReserved__::HdTask::_GetTaskContextData(const HdTaskContext *, const TfToken &, T *) [T = std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdStLightingShader>]";
    v15 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v11, 1, "Token %s missing from task context");
    return 0;
  }

  v5 = v4;
  if ((sub_29AED0040((v4 + 3)) & 1) == 0)
  {
    v11 = "hd/task.h";
    v12 = "_GetTaskContextData";
    v13 = 221;
    v14 = "static BOOL pxrInternal__aapl__pxrReserved__::HdTask::_GetTaskContextData(const HdTaskContext *, const TfToken &, T *) [T = std::shared_ptr<pxrInternal__aapl__pxrReserved__::HdStLightingShader>]";
    v15 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v11, 1, "Token %s in task context is of mismatched type");
    return 0;
  }

  v6 = v5[4];
  if ((v6 & 4) != 0)
  {
    v7 = (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))(v5 + 3);
  }

  else
  {
    v7 = v5[3];
  }

  v9 = *v7;
  v8 = v7[1];
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = a3[1];
  *a3 = v9;
  a3[1] = v8;
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  return 1;
}

pxrInternal__aapl__pxrReserved__::HdRenderSettingsTokens_StaticTokenType *sub_29AEF9C94(atomic_ullong *a1)
{
  result = sub_29AEF9CDC();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdRenderSettingsTokens_StaticTokenType::~HdRenderSettingsTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdRenderSettingsTokens_StaticTokenType *sub_29AEF9CDC()
{
  v0 = operator new(0x58uLL);
  pxrInternal__aapl__pxrReserved__::HdRenderSettingsTokens_StaticTokenType::HdRenderSettingsTokens_StaticTokenType(v0);
  return v0;
}

uint64_t *sub_29AEF9D20()
{
  v13 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x28uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "SkydomeFragment");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "skydomeTexture");
  v1 = v0 + 2;
  v2 = *v0;
  v11 = v2;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      v11 = v3;
    }
  }

  v4 = v0[1];
  v12 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 = v5;
    }
  }

  *v1 = 0;
  v0[3] = 0;
  v0[4] = 0;
  sub_29A12EF7C(v1, &v11, &v13, 2uLL);
  for (i = 8; i != -8; i -= 8)
  {
    v7 = *(&v11 + i);
    if ((v7 & 7) != 0)
    {
      atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v8 = 0;
  atomic_compare_exchange_strong(&qword_2A174FED0, &v8, v0);
  if (v8)
  {
    v9 = sub_29A1DAC64(v0);
    operator delete(v9);
    return atomic_load(&qword_2A174FED0);
  }

  return v0;
}

void sub_29AEF9E64(_Unwind_Exception *a1)
{
  v4 = 8;
  while (1)
  {
    v5 = *(v2 + v4);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v4 -= 8;
    if (v4 == -8)
    {
      v6 = v1[1];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      operator delete(v1);
      _Unwind_Resume(a1);
    }
  }
}

pxrInternal__aapl__pxrReserved__::HdTask *pxrInternal__aapl__pxrReserved__::HdxTask::HdxTask(pxrInternal__aapl__pxrReserved__::HdxTask *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  result = pxrInternal__aapl__pxrReserved__::HdTask::HdTask(this, a2);
  *result = &unk_2A209C5E8;
  *(result + 2) = 0;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxTask::Sync(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (!a1[2])
  {
    v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiTokens);
    if (!v8)
    {
      v8 = sub_29AB8834C(&pxrInternal__aapl__pxrReserved__::HgiTokens);
    }

    a1[2] = sub_29AEE0144(a3, v8 + 1);
  }

  v9 = *(*a1 + 64);

  return v9(a1, a2, a3, a4);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxTask::_ToggleRenderTarget(uint64_t a1, float *a2)
{
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
  if (!v3)
  {
    v3 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
  }

  result = pxrInternal__aapl__pxrReserved__::HdTask::_HasTaskContextData(a2, v3);
  if (result)
  {
    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxAovTokens);
    if (!v5)
    {
      v5 = sub_29AEC519C(&pxrInternal__aapl__pxrReserved__::HdxAovTokens);
    }

    result = pxrInternal__aapl__pxrReserved__::HdTask::_HasTaskContextData(a2, v5);
    if (result)
    {
      v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
      if (!v6)
      {
        result = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
        v6 = result;
      }

      v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxAovTokens);
      if (!v7)
      {
        v8 = v6;
        result = sub_29AEC519C(&pxrInternal__aapl__pxrReserved__::HdxAovTokens);
        v6 = v8;
        v7 = result;
      }

      return pxrInternal__aapl__pxrReserved__::HdxTask::_SwapTextures(result, a2, v6, v7);
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxTask::_SwapTextures(uint64_t a1, float *a2, uint64_t *a3, uint64_t *a4)
{
  v9[2] = *MEMORY[0x29EDCA608];
  v9[0] = a3;
  v6 = sub_29AC1E77C(a2, a3, &unk_29B4D6118, v9);
  v9[0] = a4;
  v7 = sub_29AC1E77C(a2, a4, &unk_29B4D6118, v9);
  sub_29A186A3C(v9, v6 + 3);
  sub_29A18606C(v6 + 3, v7 + 3);
  sub_29A18606C(v7 + 3, v9);
  return sub_29A186B14(v9);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxTask::_ToggleDepthTarget(uint64_t a1, float *a2)
{
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
  if (!v3)
  {
    v3 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
  }

  result = pxrInternal__aapl__pxrReserved__::HdTask::_HasTaskContextData(a2, v3 + 1);
  if (result)
  {
    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxAovTokens);
    if (!v5)
    {
      v5 = sub_29AEC519C(&pxrInternal__aapl__pxrReserved__::HdxAovTokens);
    }

    result = pxrInternal__aapl__pxrReserved__::HdTask::_HasTaskContextData(a2, v5 + 1);
    if (result)
    {
      v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
      if (!v6)
      {
        v6 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
      }

      v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxAovTokens);
      if (!v7)
      {
        v8 = v6;
        v7 = sub_29AEC519C(&pxrInternal__aapl__pxrReserved__::HdxAovTokens);
        v6 = v8;
      }

      return pxrInternal__aapl__pxrReserved__::HdxTask::_SwapTextures(v6, a2, v6 + 1, v7 + 1);
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi(pxrInternal__aapl__pxrReserved__::HdxTask *this)
{
  result = *(this + 2);
  if (!result)
  {
    v3[0] = "hdx/task.cpp";
    v3[1] = "_GetHgi";
    v3[2] = 88;
    v3[3] = "Hgi *pxrInternal__aapl__pxrReserved__::HdxTask::_GetHgi() const";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "Hgi driver missing. See HdxTask::Sync.");
    return *(this + 2);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxTaskController::_Delegate::Get@<X0>(pxrInternal__aapl__pxrReserved__::HdxTaskController::_Delegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a3@<X2>, void *a4@<X8>)
{
  v9[2] = *MEMORY[0x29EDCA608];
  v6 = sub_29A2F4F50(this + 3, a2);
  v9[1] = 0;
  if (v6 && (v7 = sub_29A16039C(v6 + 3, a3)) != 0)
  {
    sub_29A1854E8(v9, v7 + 3);
    sub_29A186A3C(a4, v9);
  }

  else
  {
    a4[1] = 0;
  }

  return sub_29A186B14(v9);
}

void sub_29AEFA3A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void **pxrInternal__aapl__pxrReserved__::HdxTaskController::_Delegate::GetTransform@<X0>(pxrInternal__aapl__pxrReserved__::HdxTaskController::_Delegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = sub_29A2F4F50(this + 3, a2);
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = v5;
  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v7)
  {
    v7 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  v8 = sub_29A160470(v6 + 3, v7 + 80);
  if (v8 && (v9 = v8, sub_29A3FC38C((v8 + 3))))
  {
    result = sub_29AB14D3C((v9 + 3));
    v11 = *(result + 3);
    v13 = *result;
    v12 = *(result + 1);
    a3[2] = *(result + 2);
    a3[3] = v11;
    *a3 = v13;
    a3[1] = v12;
    v14 = *(result + 7);
    v16 = *(result + 4);
    v15 = *(result + 5);
    a3[6] = *(result + 6);
    a3[7] = v14;
    a3[4] = v16;
    a3[5] = v15;
  }

  else
  {
LABEL_7:
    v18[0] = "hdx/taskController.cpp";
    v18[1] = "GetTransform";
    v18[2] = 113;
    v18[3] = "virtual GfMatrix4d pxrInternal__aapl__pxrReserved__::HdxTaskController::_Delegate::GetTransform(const SdfPath &)";
    v19 = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v18, 1, "Unexpected call to GetTransform for %s in HdxTaskController's internal scene delegate.\n", Text);
    return pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(a3, 1.0);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxTaskController::_Delegate::GetMaterialResource(pxrInternal__aapl__pxrReserved__::HdxTaskController::_Delegate *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v4 = atomic_load(&qword_2A174FED8);
  if (!v4)
  {
    v4 = sub_29AF06160();
  }

  v5 = *(*this + 120);

  return v5(this, a2, v4 + 17);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxTaskController::_Delegate::GetRenderBufferDescriptor@<X0>(pxrInternal__aapl__pxrReserved__::HdxTaskController::_Delegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = atomic_load(&qword_2A174FED8);
  if (!v6)
  {
    v6 = sub_29AF06160();
  }

  return sub_29AEFA5D8(this, a2, v6 + 14, a3);
}

uint64_t sub_29AEFA5D8@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v13[2] = *MEMORY[0x29EDCA608];
  v13[1] = 0;
  memset(v11, 0, sizeof(v11));
  v12 = 1065353216;
  if (!sub_29AF06108((a1 + 24), a2, v11) || (v6 = sub_29A16039C(v11, a3)) == 0 || (sub_29A1854E8(v13, v6 + 3), (sub_29AEBFAC0(v13) & 1) == 0))
  {
    v9[0] = "hdx/taskController.h";
    v9[1] = "GetParameter";
    v9[2] = 347;
    v9[3] = "T pxrInternal__aapl__pxrReserved__::HdxTaskController::_Delegate::GetParameter(const SdfPath &, const TfToken &) const [T = pxrInternal__aapl__pxrReserved__::HdRenderBufferDescriptor]";
    v10 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v9, "TfMapLookup(_valueCacheMap, id, &vCache) && TfMapLookup(vCache, key, &vParams) && vParams.IsHolding<T>()", 0);
  }

  v7 = sub_29AF069F0(v13);
  *a4 = *v7;
  *(a4 + 16) = *(v7 + 4);
  sub_29AC1E22C(v11);
  return sub_29A186B14(v13);
}

void sub_29AEFA6E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_29AC1E22C(va);
  sub_29A186B14(v13 - 40);
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::HdxTaskController::_Delegate::GetTaskRenderTags@<W0>(pxrInternal__aapl__pxrReserved__::HdxTaskController::_Delegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, void *a3@<X8>)
{
  v6 = atomic_load(&qword_2A174FED8);
  if (!v6)
  {
    v6 = sub_29AF06160();
  }

  result = sub_29AEFA7A8(this, a2, v6 + 15);
  if (result)
  {
    v8 = atomic_load(&qword_2A174FED8);
    if (!v8)
    {
      v8 = sub_29AF06160();
    }

    sub_29AEFA82C(this, a2, v8 + 15, a3);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  return result;
}

BOOL sub_29AEFA7A8(uint64_t a1, unsigned int *a2, void *a3)
{
  memset(v6, 0, sizeof(v6));
  v7 = 1065353216;
  v4 = sub_29AF06108((a1 + 24), a2, v6) && sub_29A16039C(v6, a3);
  sub_29AC1E22C(v6);
  return v4;
}

void sub_29AEFA82C(uint64_t a1@<X0>, unsigned int *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v11[2] = *MEMORY[0x29EDCA608];
  v11[1] = 0;
  memset(v9, 0, sizeof(v9));
  v10 = 1065353216;
  if (!sub_29AF06108((a1 + 24), a2, v9) || (v6 = sub_29A16039C(v9, a3)) == 0 || (sub_29A1854E8(v11, v6 + 3), (sub_29A1DE724(v11) & 1) == 0))
  {
    v7[0] = "hdx/taskController.h";
    v7[1] = "GetParameter";
    v7[2] = 347;
    v7[3] = "T pxrInternal__aapl__pxrReserved__::HdxTaskController::_Delegate::GetParameter(const SdfPath &, const TfToken &) const [T = std::vector<pxrInternal__aapl__pxrReserved__::TfToken>]";
    v8 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v7, "TfMapLookup(_valueCacheMap, id, &vCache) && TfMapLookup(vCache, key, &vParams) && vParams.IsHolding<T>()", 0);
  }

  sub_29A1DE690(v11);
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
}

void sub_29AEFA944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_29AC1E22C(va);
  sub_29A186B14(v13 - 40);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdxTaskController::HdxTaskController(pxrInternal__aapl__pxrReserved__::HdxTaskController *this, pxrInternal__aapl__pxrReserved__::HdRenderIndex *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, char a4)
{
  *this = a2;
  sub_29A1E21F4(this + 2, a3);
  sub_29A1E2240(this + 3, a3 + 1);
  *(this + 16) = a4;
  pxrInternal__aapl__pxrReserved__::HdSceneDelegate::HdSceneDelegate((this + 24), a2, a3);
  *(this + 3) = &unk_2A209C658;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 20) = 1065353216;
  v8 = operator new(0xE8uLL);
  pxrInternal__aapl__pxrReserved__::HdxFreeCameraSceneDelegate::HdxFreeCameraSceneDelegate(v8, a2, a3);
  *(this + 11) = v8;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(this + 24);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(this + 25);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(this + 26);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(this + 27);
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(this + 34);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(this + 35);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(this + 36);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(this + 37);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(this + 38);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(this + 39);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(this + 40);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(this + 41);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(this + 42);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(this + 43);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(this + 44);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(this + 45);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(this + 46);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(this + 47);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(this + 48);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(this + 49);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(this + 50);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(this + 51);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(this + 52);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(this + 53);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(this + 54);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(this + 55);
  *(this + 14) = 0u;
  *(this + 17) = 0u;
  *(this + 38) = 0;
  *(this + 18) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  pxrInternal__aapl__pxrReserved__::CameraUtilFraming::CameraUtilFraming((this + 312));
  *(this + 348) = 0;
  *(this + 352) = 0;
  *(this + 45) = 0;
  *(this + 46) = 0;
  *(this + 47) = 0x3FF0000000000000;
  *(this + 48) = 0x3FF0000000000000;
  pxrInternal__aapl__pxrReserved__::HdxTaskController::_CreateRenderGraph(this);
}

void sub_29AEFABB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  operator delete(v12);
  sub_29AEFB160(v11);
  sub_29A1DCEA8((v10 + 8));
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdxTaskController::_CreateRenderGraph(pxrInternal__aapl__pxrReserved__::HdxTaskController *this)
{
  v5[2] = *MEMORY[0x29EDCA608];
  if (sub_29AEFB76C(*this))
  {
    if ((*(this + 16) & 1) == 0)
    {
      v3[0] = "hdx/taskController.cpp";
      v3[1] = "_CreateRenderGraph";
      v3[2] = 246;
      v3[3] = "void pxrInternal__aapl__pxrReserved__::HdxTaskController::_CreateRenderGraph()";
      v4 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v3, "Trying to use Storm while disabling the GPU.", v2);
      *(this + 16) = 1;
    }

    pxrInternal__aapl__pxrReserved__::HdxTaskController::_CreateLightingTask(this);
  }

  v5[0] = 0;
  pxrInternal__aapl__pxrReserved__::HdxTaskController::_CreateRenderTask(v3, this, v5, v2);
}

void sub_29AEFB160(pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a1)
{
  *a1 = &unk_2A209C658;
  sub_29AEC007C(a1 + 24);

  pxrInternal__aapl__pxrReserved__::HdSceneDelegate::~HdSceneDelegate(a1);
}

void pxrInternal__aapl__pxrReserved__::HdxTaskController::~HdxTaskController(pxrInternal__aapl__pxrReserved__::HdxTaskController *this)
{
  v38 = *MEMORY[0x29EDCA608];
  sub_29A1E21F4(&v17, this + 34);
  sub_29A1E2240(&v17 + 1, this + 35);
  sub_29A1E21F4(&v18, this + 36);
  sub_29A1E2240(&v19, this + 37);
  sub_29A1E21F4(&v20, this + 38);
  sub_29A1E2240(&v21, this + 39);
  sub_29A1E21F4(&v22, this + 24);
  sub_29A1E2240(&v23, this + 25);
  sub_29A1E21F4(&v24, this + 26);
  sub_29A1E2240(&v25, this + 27);
  sub_29A1E21F4(&v26, this + 40);
  sub_29A1E2240(&v27, this + 41);
  sub_29A1E21F4(&v28, this + 42);
  sub_29A1E2240(&v29, this + 43);
  sub_29A1E21F4(&v30, this + 46);
  sub_29A1E2240(&v31, this + 47);
  sub_29A1E21F4(&v32, this + 48);
  sub_29A1E2240(&v33, this + 49);
  sub_29A1E21F4(&v34, this + 50);
  sub_29A1E2240(&v35, this + 51);
  sub_29A1E21F4(&v36, this + 52);
  sub_29A1E2240(&v37, this + 53);
  for (i = 0; i != 11; ++i)
  {
    if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(&(&v17)[i]))
    {
      pxrInternal__aapl__pxrReserved__::HdRenderIndex::RemoveTask(*this, &(&v17)[i]);
    }
  }

  v3 = *(this + 14);
  v4 = *(this + 15);
  while (v3 != v4)
  {
    pxrInternal__aapl__pxrReserved__::HdRenderIndex::RemoveTask(*this, v3);
    v3 = (v3 + 8);
  }

  pxrInternal__aapl__pxrReserved__::HdxTaskController::_GetCameraLightType(&v16, this);
  v5 = *(this + 28);
  for (j = *(this + 29); v5 != j; v5 = (v5 + 8))
  {
    pxrInternal__aapl__pxrReserved__::HdRenderIndex::RemoveSprim(*this, &v16, v5);
    v7 = *this;
    v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v8)
    {
      v8 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdRenderIndex::RemoveSprim(v7, (v8 + 240), v5);
  }

  v9 = *(this + 31);
  for (k = *(this + 32); v9 != k; v9 = (v9 + 8))
  {
    v11 = *this;
    v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v12)
    {
      v12 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdRenderIndex::RemoveBprim(v11, (v12 + 312), v9);
  }

  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = 11;
  do
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((&v16 + v13 * 8 + 4));
    sub_29A1DE3A4(&(&v17)[--v13]);
  }

  while (v13 * 8);
  v14 = *(this + 37);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v17 = (this + 272);
  sub_29A124AB0(&v17);
  v17 = (this + 248);
  sub_29A1E234C(&v17);
  v17 = (this + 224);
  sub_29A1E234C(&v17);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 55);
  sub_29A1DE3A4(this + 54);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 53);
  sub_29A1DE3A4(this + 52);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 51);
  sub_29A1DE3A4(this + 50);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 49);
  sub_29A1DE3A4(this + 48);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 47);
  sub_29A1DE3A4(this + 46);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 45);
  sub_29A1DE3A4(this + 44);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 43);
  sub_29A1DE3A4(this + 42);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 41);
  sub_29A1DE3A4(this + 40);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 39);
  sub_29A1DE3A4(this + 38);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 37);
  sub_29A1DE3A4(this + 36);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 35);
  sub_29A1DE3A4(this + 34);
  v17 = (this + 112);
  sub_29A1E234C(&v17);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 27);
  sub_29A1DE3A4(this + 26);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 25);
  sub_29A1DE3A4(this + 24);
  v15 = *(this + 11);
  *(this + 11) = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  *(this + 3) = &unk_2A209C658;
  sub_29AEC007C(this + 48);
  pxrInternal__aapl__pxrReserved__::HdSceneDelegate::~HdSceneDelegate((this + 24));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(this + 3);
  sub_29A1DE3A4(this + 2);
}

void sub_29AEFB604(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_299FEDEEC(a1);
  }

  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::HdxTaskController::_GetCameraLightType@<X0>(uint64_t *__return_ptr a1@<X8>, pxrInternal__aapl__pxrReserved__::HdxTaskController *this@<X0>)
{
  v3 = *this;
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v4)
  {
    v4 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  IsSprimTypeSupported = pxrInternal__aapl__pxrReserved__::HdRenderIndex::IsSprimTypeSupported(v3, v4 + 35);
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (IsSprimTypeSupported)
  {
    if (!result)
    {
      result = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    v7 = result + 280;
  }

  else
  {
    if (!result)
    {
      result = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    v7 = result + 232;
  }

  v8 = *v7;
  *a1 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a1 = v9;
    }
  }

  return result;
}

const void *sub_29AEFB76C(pxrInternal__aapl__pxrReserved__::HdRenderIndex *a1)
{
  result = pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetRenderDelegate(a1);
  if (result)
  {
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdxTaskController::_CreateLightingTask(pxrInternal__aapl__pxrReserved__::HdxTaskController *this)
{
  v2 = atomic_load(&qword_2A174FED8);
  if (!v2)
  {
    v2 = sub_29AF06160();
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(v3, (this + 8), v2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
}

void sub_29AEFB908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29AEBC888(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdxTaskController::_CreateShadowTask(uint64_t **this)
{
  v4 = *MEMORY[0x29EDCA608];
  v2 = atomic_load(&qword_2A174FED8);
  if (!v2)
  {
    v2 = sub_29AF06160();
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(&v3, (this + 1), (v2 + 1));
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
}

void pxrInternal__aapl__pxrReserved__::HdxTaskController::_CreateSkydomeTask(uint64_t *__return_ptr a1@<X8>, pxrInternal__aapl__pxrReserved__::HdxTaskController *this@<X0>)
{
  v4 = atomic_load(&qword_2A174FED8);
  if (!v4)
  {
    v4 = sub_29AF06160();
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(a1, (this + 8), (v4 + 11));
  sub_29AEFE510(*this, this + 24, a1);
  sub_29AEC0310(v9);
  v5 = *(this + 11);
  sub_29A2258F0(&v10, (v5 + 24));
  sub_29A225948(&v11, (v5 + 28));
  v6 = *(this + 376);
  v15 = *(this + 360);
  v16 = v6;
  v7 = *(this + 312);
  v13 = *(this + 328);
  v12 = v7;
  v14 = *(this + 86);
  v17 = *(this + 87);
  v18 = *(this + 352);
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v8)
  {
    v8 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  sub_29AEFDF58(this + 24, a1, v8 + 55, v9);
}

void sub_29AEFBDB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  sub_29AEBC5BC(va);
  sub_29A1DCEA8(v24);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdxTaskController::_CreateRenderTask(uint64_t *__return_ptr a1@<X8>, pxrInternal__aapl__pxrReserved__::HdxTaskController *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a3@<X1>, char *a4@<X2>)
{
  v40 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::HdxTaskController::_GetRenderTaskPath(a1, this, a3, a4);
  sub_29AEC0310(v28);
  v7 = *(this + 11);
  sub_29A2258F0(&v30, (v7 + 24));
  v8 = sub_29A225948(&v31, (v7 + 28));
  v9 = *(this + 376);
  v35 = *(this + 360);
  v36 = v9;
  v10 = *(this + 312);
  v33 = *(this + 328);
  v32 = v10;
  v34 = *(this + 86);
  v37 = *(this + 87);
  v38 = *(this + 352);
  pxrInternal__aapl__pxrReserved__::HdxTaskController::_SetBlendStateForMaterialTag(v8, a3, v28);
  v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v11)
  {
    v11 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
  if (!v12)
  {
    v12 = sub_29AC91284(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
  }

  v13 = *(v12 + 3);
  v24 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v24 &= 0xFFFFFFFFFFFFFFF8;
  }

  v25 = 0;
  v26 = 0;
  v14 = pxrInternal__aapl__pxrReserved__::HdRprimCollection::HdRprimCollection(v27, (v11 + 288), &v24, 0, a3);
  if ((v26 & 7) != 0)
  {
    atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v25 & 7) != 0)
  {
    atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v24 & 7) != 0)
  {
    atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v14);
  pxrInternal__aapl__pxrReserved__::HdRprimCollection::SetRootPath(v27, v15);
  v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
  if (!v16)
  {
    v16 = sub_29ADC79B8(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
  }

  if ((*v16 ^ *a3) < 8)
  {
    goto LABEL_20;
  }

  v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
  if (!v17)
  {
    v17 = sub_29ADC79B8(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
  }

  if ((*(v17 + 3) ^ *a3) < 8)
  {
    goto LABEL_20;
  }

  v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
  if (!v21)
  {
    v21 = sub_29ADC79B8(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
  }

  if (!*a3 || (*(v21 + 1) ^ *a3) <= 7)
  {
LABEL_20:
    sub_29AEBC29C(*this, this + 24, a1);
    goto LABEL_21;
  }

  v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
  if (!v22)
  {
    v22 = sub_29ADC79B8(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
  }

  if ((*(v22 + 4) ^ *a3) > 7)
  {
    v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
    if (!v23)
    {
      v23 = sub_29ADC79B8(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
    }

    if ((*(v23 + 5) ^ *a3) > 7)
    {
LABEL_21:
      v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdRenderTagTokens);
      if (!v18)
      {
        v18 = sub_29AC2917C(&pxrInternal__aapl__pxrReserved__::HdRenderTagTokens);
      }

      v39 = *v18;
      if ((v39 & 7) != 0)
      {
        v19 = v39 & 0xFFFFFFFFFFFFFFF8;
        if ((atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v39 = v19;
        }
      }

      v24 = 0;
      v25 = 0;
      v26 = 0;
      sub_29A12EF7C(&v24, &v39, &v40, 1uLL);
      if ((v39 & 7) != 0)
      {
        atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v20)
      {
        v20 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      sub_29AEFDF58(this + 24, a1, v20 + 55, v28);
    }

    sub_29AEFDE9C(*this, this + 24, a1);
  }

  else
  {
    sub_29AEFDDE0(*this, this + 24, a1);
  }

  v29 = 0;
  goto LABEL_21;
}

void sub_29AEFC294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  pxrInternal__aapl__pxrReserved__::HdRprimCollection::~HdRprimCollection(va);
  sub_29AEBC5BC(va1);
  sub_29A1DCEA8(v7);
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::HdxTaskController::_AovsSupported(pxrInternal__aapl__pxrReserved__::HdxTaskController *this)
{
  v1 = *this;
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v2)
  {
    v2 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  return pxrInternal__aapl__pxrReserved__::HdRenderIndex::IsBprimTypeSupported(v1, v2 + 39);
}

void pxrInternal__aapl__pxrReserved__::HdxTaskController::_CreateAovInputTask(pxrInternal__aapl__pxrReserved__::HdxTaskController *this)
{
  v2 = atomic_load(&qword_2A174FED8);
  if (!v2)
  {
    v2 = sub_29AF06160();
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(&v3, (this + 8), (v2 + 2));
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
}

void pxrInternal__aapl__pxrReserved__::HdxTaskController::_CreateOitResolveTask(pxrInternal__aapl__pxrReserved__::HdxTaskController *this)
{
  v4 = 256;
  v2 = atomic_load(&qword_2A174FED8);
  if (!v2)
  {
    v2 = sub_29AF06160();
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(&v3, (this + 8), (v2 + 5));
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
}

void pxrInternal__aapl__pxrReserved__::HdxTaskController::_CreateSelectionTask(uint64_t **this)
{
  v2 = atomic_load(&qword_2A174FED8);
  if (!v2)
  {
    v2 = sub_29AF06160();
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(&v3, (this + 1), (v2 + 3));
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
}

void pxrInternal__aapl__pxrReserved__::HdxTaskController::_CreateColorCorrectionTask(pxrInternal__aapl__pxrReserved__::HdxTaskController *this)
{
  v2 = atomic_load(&qword_2A174FED8);
  if (!v2)
  {
    v2 = sub_29AF06160();
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(&v3, (this + 8), (v2 + 6));
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
}

void sub_29AEFC7EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29AECB604(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdxTaskController::_CreateVisualizeAovTask(pxrInternal__aapl__pxrReserved__::HdxTaskController *this)
{
  v2 = atomic_load(&qword_2A174FED8);
  if (!v2)
  {
    v2 = sub_29AF06160();
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(&v3, (this + 8), (v2 + 12));
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
}

void pxrInternal__aapl__pxrReserved__::HdxTaskController::_CreatePresentTask(pxrInternal__aapl__pxrReserved__::HdxTaskController *this)
{
  v3[6] = *MEMORY[0x29EDCA608];
  v2 = atomic_load(&qword_2A174FED8);
  if (!v2)
  {
    v2 = sub_29AF06160();
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(v3, (this + 8), (v2 + 10));
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
}

void sub_29AEFCA40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdxTaskController::_CreatePickTask(uint64_t **this)
{
  v2 = atomic_load(&qword_2A174FED8);
  if (!v2)
  {
    v2 = sub_29AF06160();
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(&v3, (this + 1), (v2 + 7));
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
}

void pxrInternal__aapl__pxrReserved__::HdxTaskController::_CreateBoundingBoxTask(pxrInternal__aapl__pxrReserved__::HdxTaskController *this)
{
  v2 = atomic_load(&qword_2A174FED8);
  if (!v2)
  {
    v2 = sub_29AF06160();
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(__p, (this + 8), (v2 + 9));
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
}

void sub_29AEFCC6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    a11 = __p;
    operator delete(__p);
  }

  sub_29B294B14(&a9);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdxTaskController::_CreateColorizeSelectionTask(pxrInternal__aapl__pxrReserved__::HdxTaskController *this)
{
  v2 = atomic_load(&qword_2A174FED8);
  if (!v2)
  {
    v2 = sub_29AF06160();
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(&v3, (this + 8), (v2 + 4));
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
}

void pxrInternal__aapl__pxrReserved__::HdxTaskController::_CreatePickFromRenderBufferTask(pxrInternal__aapl__pxrReserved__::HdxTaskController *this)
{
  v2 = atomic_load(&qword_2A174FED8);
  if (!v2)
  {
    v2 = sub_29AF06160();
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(v3, (this + 8), (v2 + 8));
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
}

void pxrInternal__aapl__pxrReserved__::HdxTaskController::SetRenderOutputs(uint64_t a1, char **a2)
{
  v12 = *MEMORY[0x29EDCA608];
  if (pxrInternal__aapl__pxrReserved__::HdxTaskController::_AovsSupported(a1) && *(a1 + 112) != *(a1 + 120))
  {
    v5 = *(a1 + 272);
    v4 = *(a1 + 280);
    v6 = a2[1];
    v7 = v6 - *a2;
    if (v4 - v5 != v7)
    {
      goto LABEL_9;
    }

    if (v5 != v4)
    {
      for (i = *a2; (*i ^ *v5) <= 7; i += 8)
      {
        v5 += 8;
        if (v5 == v4)
        {
          return;
        }
      }

LABEL_9:
      if ((a1 + 272) != a2)
      {
        sub_29A34AC54((a1 + 272), *a2, v6, v7 >> 3);
      }

      v9 = 0;
      v10 = 0;
      v11 = 0;
      std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
    }
  }
}

void sub_29AEFDA40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, void **a27)
{
  a27 = &a23;
  sub_29A124AB0(&a27);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdxTaskController::_GetRenderTaskPath(uint64_t *__return_ptr a1@<X8>, pxrInternal__aapl__pxrReserved__::HdxTaskController *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a3@<X1>, char *a4@<X2>)
{
  v6 = *a3 & 0xFFFFFFFFFFFFFFF8;
  if (v6)
  {
    v7 = (v6 + 16);
    if (*(v6 + 39) < 0)
    {
      v7 = *v7;
    }
  }

  else
  {
    v7 = "";
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("renderTask_%s", a3, a4, v7);
  v8 = v12;
  if ((v12 & 0x80u) == 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  if ((v12 & 0x80u) != 0)
  {
    v8 = __p[1];
  }

  for (; v8; --v8)
  {
    if (*v9 == 58)
    {
      *v9 = 95;
    }

    v9 = (v9 + 1);
  }

  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v10, __p);
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(a1, (this + 8), &v10);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29AEFDC64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if ((a11 & 7) != 0)
  {
    atomic_fetch_add_explicit((a11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t pxrInternal__aapl__pxrReserved__::HdxTaskController::_SetBlendStateForMaterialTag(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a3)
  {
    result = sub_29B2CB9F8(v7);
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
  if (!result)
  {
    result = sub_29ADC79B8(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
  }

  if ((*(result + 24) ^ *a2) <= 7)
  {
    v6 = 0;
    *(a3 + 240) = 1;
    *(a3 + 200) = xmmword_29B715670;
    *(a3 + 216) = 0x100000000;
LABEL_13:
    *(a3 + 168) = v6;
LABEL_14:
    *(a3 + 241) = v6;
    return result;
  }

  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
  if (!result)
  {
    result = sub_29ADC79B8(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
  }

  if ((*result ^ *a2) < 8)
  {
    goto LABEL_12;
  }

  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
  if (!result)
  {
    result = sub_29ADC79B8(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
  }

  if ((*(result + 8) ^ *a2) <= 7)
  {
LABEL_12:
    *(a3 + 240) = 0;
    v6 = 1;
    goto LABEL_13;
  }

  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
  if (!result)
  {
    result = sub_29ADC79B8(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
  }

  if ((*(result + 40) ^ *a2) < 8)
  {
    v6 = 0;
    goto LABEL_14;
  }

  return result;
}

void sub_29AEFDDE0(uint64_t *a1, unint64_t a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v6 = operator new(0x20uLL);
  v6[1] = 0;
  v6[2] = 0;
  *v6 = &unk_2A209C830;
  v6[3] = &unk_2A209C880;
  *&v7 = v6 + 3;
  *(&v7 + 1) = v6;
  pxrInternal__aapl__pxrReserved__::HdRenderIndex::_InsertSceneDelegateTask(a1, a2, a3, &v7);
  if (*(&v7 + 1))
  {
    sub_29A014BEC(*(&v7 + 1));
  }
}

void sub_29AEFDE84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AEFDE9C(uint64_t *a1, unint64_t a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v6 = operator new(0x20uLL);
  v6[1] = 0;
  v6[2] = 0;
  *v6 = &unk_2A209C910;
  v6[3] = &unk_2A209C960;
  *&v7 = v6 + 3;
  *(&v7 + 1) = v6;
  pxrInternal__aapl__pxrReserved__::HdRenderIndex::_InsertSceneDelegateTask(a1, a2, a3, &v7);
  if (*(&v7 + 1))
  {
    sub_29A014BEC(*(&v7 + 1));
  }
}

void sub_29AEFDF40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AEFDF58(uint64_t a1, uint64_t *a2, uint64_t *a3, __int128 *a4)
{
  v8 = a2;
  v6 = sub_29AEC0BF4(a1 + 24, a2, &unk_29B4D6118, &v8);
  v8 = a3;
  v7 = sub_29AC1E77C(v6 + 6, a3, &unk_29B4D6118, &v8);
  sub_29AF06F7C((v7 + 3), a4);
}

uint64_t sub_29AEFDFD4(uint64_t a1, uint64_t *a2, uint64_t *a3, const pxrInternal__aapl__pxrReserved__::HdRprimCollection *a4)
{
  v9 = a2;
  v6 = sub_29AEC0BF4(a1 + 24, a2, &unk_29B4D6118, &v9);
  v9 = a3;
  v7 = sub_29AC1E77C(v6 + 6, a3, &unk_29B4D6118, &v9);
  return sub_29AE622B8((v7 + 3), a4);
}

void sub_29AEFE050(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a2;
  v4 = sub_29AEC0BF4(a1 + 24, a2, &unk_29B4D6118, &v6);
  v6 = a3;
  v5 = sub_29AC1E77C(v4 + 6, a3, &unk_29B4D6118, &v6);
  sub_29A34A3E4(v5 + 3);
}

void sub_29AEFE0CC(uint64_t *a1, unint64_t a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v6 = operator new(0x20uLL);
  v6[1] = 0;
  v6[2] = 0;
  *v6 = &unk_2A209C9F0;
  v6[3] = &unk_2A209CA40;
  *&v7 = v6 + 3;
  *(&v7 + 1) = v6;
  pxrInternal__aapl__pxrReserved__::HdRenderIndex::_InsertSceneDelegateTask(a1, a2, a3, &v7);
  if (*(&v7 + 1))
  {
    sub_29A014BEC(*(&v7 + 1));
  }
}

void sub_29AEFE170(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AEFE188(uint64_t a1, uint64_t *a2, uint64_t *a3, _WORD *a4)
{
  v9 = a2;
  v6 = sub_29AEC0BF4(a1 + 24, a2, &unk_29B4D6118, &v9);
  v9 = a3;
  v7 = sub_29AC1E77C(v6 + 6, a3, &unk_29B4D6118, &v9);
  return sub_29AF07298((v7 + 3), a4);
}

void *sub_29AEFE204(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v9 = a2;
  v6 = sub_29AEC0BF4(a1 + 24, a2, &unk_29B4D6118, &v9);
  v9 = a3;
  v7 = sub_29AC1E77C(v6 + 6, a3, &unk_29B4D6118, &v9);
  return sub_29AF07464(v7 + 3, a4);
}

void sub_29AEFE280(uint64_t *a1, unint64_t a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v6 = operator new(0x20uLL);
  v6[1] = 0;
  v6[2] = 0;
  *v6 = &unk_2A209CC40;
  v6[3] = &unk_2A209CC90;
  *&v7 = v6 + 3;
  *(&v7 + 1) = v6;
  pxrInternal__aapl__pxrReserved__::HdRenderIndex::_InsertSceneDelegateTask(a1, a2, a3, &v7);
  if (*(&v7 + 1))
  {
    sub_29A014BEC(*(&v7 + 1));
  }
}

void sub_29AEFE324(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29AEFE33C(uint64_t a1, uint64_t *a2, uint64_t *a3, __int128 *a4)
{
  v9 = a2;
  v6 = sub_29AEC0BF4(a1 + 24, a2, &unk_29B4D6118, &v9);
  v9 = a3;
  v7 = sub_29AC1E77C(v6 + 6, a3, &unk_29B4D6118, &v9);
  return sub_29AF079F8(v7 + 3, a4);
}

_DWORD *sub_29AEFE3B8(_DWORD *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 16);
  sub_29A1DE3A4(a1 + 15);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 14);
  sub_29A1DE3A4(a1 + 13);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 12);
  sub_29A1DE3A4(a1 + 11);
  return a1;
}

void sub_29AEFE418(uint64_t a1, uint64_t *a2, uint64_t *a3, _DWORD *a4)
{
  v8 = a2;
  v6 = sub_29AEC0BF4(a1 + 24, a2, &unk_29B4D6118, &v8);
  v8 = a3;
  v7 = sub_29AC1E77C(v6 + 6, a3, &unk_29B4D6118, &v8);
  sub_29AF07E08((v7 + 3), a4);
}

void *sub_29AEFE494(uint64_t a1, uint64_t *a2, uint64_t *a3, _OWORD *a4)
{
  v9 = a2;
  v6 = sub_29AEC0BF4(a1 + 24, a2, &unk_29B4D6118, &v9);
  v9 = a3;
  v7 = sub_29AC1E77C(v6 + 6, a3, &unk_29B4D6118, &v9);
  return sub_29AF07ED8(v7 + 3, a4);
}

void sub_29AEFE510(uint64_t *a1, unint64_t a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v6 = operator new(0x20uLL);
  v6[1] = 0;
  v6[2] = 0;
  *v6 = &unk_2A209CDD8;
  v6[3] = &unk_2A209CE28;
  *&v7 = v6 + 3;
  *(&v7 + 1) = v6;
  pxrInternal__aapl__pxrReserved__::HdRenderIndex::_InsertSceneDelegateTask(a1, a2, a3, &v7);
  if (*(&v7 + 1))
  {
    sub_29A014BEC(*(&v7 + 1));
  }
}

void sub_29AEFE5B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AEFE5CC(uint64_t *a1, unint64_t a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v6 = operator new(0x20uLL);
  v6[1] = 0;
  v6[2] = 0;
  *v6 = &unk_2A209CEB8;
  v6[3] = &unk_2A209CF08;
  *&v7 = v6 + 3;
  *(&v7 + 1) = v6;
  pxrInternal__aapl__pxrReserved__::HdRenderIndex::_InsertSceneDelegateTask(a1, a2, a3, &v7);
  if (*(&v7 + 1))
  {
    sub_29A014BEC(*(&v7 + 1));
  }
}

void sub_29AEFE670(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AEFE688(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v9 = a2;
  v6 = sub_29AEC0BF4(a1 + 24, a2, &unk_29B4D6118, &v9);
  v9 = a3;
  v7 = sub_29AC1E77C(v6 + 6, a3, &unk_29B4D6118, &v9);
  return sub_29AF08468((v7 + 3), a4);
}

void sub_29AEFE704(uint64_t *a1, unint64_t a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v6 = operator new(0x20uLL);
  v6[1] = 0;
  v6[2] = 0;
  *v6 = &unk_2A209D050;
  v6[3] = &unk_2A209D0A0;
  *&v7 = v6 + 3;
  *(&v7 + 1) = v6;
  pxrInternal__aapl__pxrReserved__::HdRenderIndex::_InsertSceneDelegateTask(a1, a2, a3, &v7);
  if (*(&v7 + 1))
  {
    sub_29A014BEC(*(&v7 + 1));
  }
}

void sub_29AEFE7A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AEFE7C0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v9 = a2;
  v6 = sub_29AEC0BF4(a1 + 24, a2, &unk_29B4D6118, &v9);
  v9 = a3;
  v7 = sub_29AC1E77C(v6 + 6, a3, &unk_29B4D6118, &v9);
  return sub_29AF08AD4((v7 + 3), a4);
}

void *sub_29AEFE83C(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v9 = a2;
  v6 = sub_29AEC0BF4(a1 + 24, a2, &unk_29B4D6118, &v9);
  v9 = a3;
  v7 = sub_29AC1E77C(v6 + 6, a3, &unk_29B4D6118, &v9);
  return sub_29AEBD044(v7 + 3, a4);
}

void sub_29AEFE8B8(uint64_t *a1, unint64_t a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v6 = operator new(0x20uLL);
  v6[1] = 0;
  v6[2] = 0;
  *v6 = &unk_2A209D1F8;
  v6[3] = &unk_2A209D248;
  *&v7 = v6 + 3;
  *(&v7 + 1) = v6;
  pxrInternal__aapl__pxrReserved__::HdRenderIndex::_InsertSceneDelegateTask(a1, a2, a3, &v7);
  if (*(&v7 + 1))
  {
    sub_29A014BEC(*(&v7 + 1));
  }
}

void sub_29AEFE95C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29AEFE974(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v9 = a2;
  v6 = sub_29AEC0BF4(a1 + 24, a2, &unk_29B4D6118, &v9);
  v9 = a3;
  v7 = sub_29AC1E77C(v6 + 6, a3, &unk_29B4D6118, &v9);
  return sub_29AF090AC(v7 + 3, a4);
}

void sub_29AEFE9F0(uint64_t *a1, unint64_t a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v6 = operator new(0x20uLL);
  v6[1] = 0;
  v6[2] = 0;
  *v6 = &unk_2A209D390;
  v6[3] = &unk_2A209D3E0;
  *&v7 = v6 + 3;
  *(&v7 + 1) = v6;
  pxrInternal__aapl__pxrReserved__::HdRenderIndex::_InsertSceneDelegateTask(a1, a2, a3, &v7);
  if (*(&v7 + 1))
  {
    sub_29A014BEC(*(&v7 + 1));
  }
}

void sub_29AEFEA94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AEFEAAC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = a2;
  v6 = sub_29AEC0BF4(a1 + 24, a2, &unk_29B4D6118, &v8);
  v8 = a3;
  v7 = sub_29AC1E77C(v6 + 6, a3, &unk_29B4D6118, &v8);
  sub_29AF09700((v7 + 3), a4);
}

void sub_29AEFEB28(uint64_t *a1, unint64_t a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v6 = operator new(0x20uLL);
  v6[1] = 0;
  v6[2] = 0;
  *v6 = &unk_2A209D528;
  v6[3] = &unk_2A209D578;
  *&v7 = v6 + 3;
  *(&v7 + 1) = v6;
  pxrInternal__aapl__pxrReserved__::HdRenderIndex::_InsertSceneDelegateTask(a1, a2, a3, &v7);
  if (*(&v7 + 1))
  {
    sub_29A014BEC(*(&v7 + 1));
  }
}

void sub_29AEFEBCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29AEFEBE4(uint64_t a1, uint64_t *a2, uint64_t *a3, _DWORD *a4)
{
  v9 = a2;
  v6 = sub_29AEC0BF4(a1 + 24, a2, &unk_29B4D6118, &v9);
  v9 = a3;
  v7 = sub_29AC1E77C(v6 + 6, a3, &unk_29B4D6118, &v9);
  return sub_29AF09DD4(v7 + 3, a4);
}

void sub_29AEFEC60(uint64_t *a1, unint64_t a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v6 = operator new(0x20uLL);
  v6[1] = 0;
  v6[2] = 0;
  *v6 = &unk_2A209D6C0;
  v6[3] = &unk_2A209D710;
  *&v7 = v6 + 3;
  *(&v7 + 1) = v6;
  pxrInternal__aapl__pxrReserved__::HdRenderIndex::_InsertSceneDelegateTask(a1, a2, a3, &v7);
  if (*(&v7 + 1))
  {
    sub_29A014BEC(*(&v7 + 1));
  }
}

void sub_29AEFED04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AEFED1C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v9 = a2;
  v6 = sub_29AEC0BF4(a1 + 24, a2, &unk_29B4D6118, &v9);
  v9 = a3;
  v7 = sub_29AC1E77C(v6 + 6, a3, &unk_29B4D6118, &v9);
  return sub_29AF0A3E4((v7 + 3), a4);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxTaskController::_ShadowsEnabled(pxrInternal__aapl__pxrReserved__::HdxTaskController *this)
{
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(this + 24))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v2)
    {
      v2 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    sub_29AEFEE60(this + 24, this + 24, v2 + 55, v4);
  }

  return 0;
}

void sub_29AEFEE60(uint64_t a1@<X0>, unsigned int *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v12[2] = *MEMORY[0x29EDCA608];
  v12[1] = 0;
  memset(v10, 0, sizeof(v10));
  v11 = 1065353216;
  if (!sub_29AF06108((a1 + 24), a2, v10) || (v6 = sub_29A16039C(v10, a3)) == 0 || (sub_29A1854E8(v12, v6 + 3), (sub_29AEF8288(v12) & 1) == 0))
  {
    v8[0] = "hdx/taskController.h";
    v8[1] = "GetParameter";
    v8[2] = 347;
    v8[3] = "T pxrInternal__aapl__pxrReserved__::HdxTaskController::_Delegate::GetParameter(const SdfPath &, const TfToken &) const [T = pxrInternal__aapl__pxrReserved__::HdxSimpleLightTaskParams]";
    v9 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v8, "TfMapLookup(_valueCacheMap, id, &vCache) && TfMapLookup(vCache, key, &vParams) && vParams.IsHolding<T>()", 0);
  }

  v7 = sub_29AF0A840(v12);
  sub_29A1E21F4(a4, v7);
  sub_29A1E2240((a4 + 4), v7 + 1);
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>();
}

void sub_29AEFF00C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_29AC1E22C(va);
  sub_29A186B14(v13 - 56);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxTaskController::_SelectionEnabled(pxrInternal__aapl__pxrReserved__::HdxTaskController *this)
{
  v1 = *(this + 14);
  if (v1 != *(this + 15))
  {
    v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v3)
    {
      v3 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    sub_29AEFF110(this + 24, v1, v3 + 55, v5);
  }

  return 0;
}

void sub_29AEFF110(uint64_t a1@<X0>, unsigned int *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v17[2] = *MEMORY[0x29EDCA608];
  v17[1] = 0;
  memset(v15, 0, sizeof(v15));
  v16 = 1065353216;
  if (!sub_29AF06108((a1 + 24), a2, v15) || (v6 = sub_29A16039C(v15, a3)) == 0 || (sub_29A1854E8(v17, v6 + 3), (sub_29AEE9810(v17) & 1) == 0))
  {
    v13[0] = "hdx/taskController.h";
    v13[1] = "GetParameter";
    v13[2] = 347;
    v13[3] = "T pxrInternal__aapl__pxrReserved__::HdxTaskController::_Delegate::GetParameter(const SdfPath &, const TfToken &) const [T = pxrInternal__aapl__pxrReserved__::HdxRenderTaskParams]";
    v14 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v13, "TfMapLookup(_valueCacheMap, id, &vCache) && TfMapLookup(vCache, key, &vParams) && vParams.IsHolding<T>()", 0);
  }

  v7 = sub_29AF0A9EC(v17);
  v8 = *v7;
  v9 = *(v7 + 2);
  *(a4 + 16) = *(v7 + 1);
  *(a4 + 32) = v9;
  *a4 = v8;
  v10 = *(v7 + 3);
  v11 = *(v7 + 4);
  v12 = *(v7 + 5);
  *(a4 + 96) = *(v7 + 24);
  *(a4 + 64) = v11;
  *(a4 + 80) = v12;
  *(a4 + 48) = v10;
  *(a4 + 104) = 0;
  *(a4 + 112) = 0;
  *(a4 + 120) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::HdRenderPassAovBinding>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HdRenderPassAovBinding*,pxrInternal__aapl__pxrReserved__::HdRenderPassAovBinding*>();
}

void sub_29AEFF2FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_29AC1E22C(va);
  sub_29A186B14(v13 - 56);
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::HdxTaskController::_ColorizeSelectionEnabled(pxrInternal__aapl__pxrReserved__::HdxTaskController *this)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
  if (!v2)
  {
    v2 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
  }

  return (*v2 ^ *(this + 37)) < 8uLL;
}

BOOL pxrInternal__aapl__pxrReserved__::HdxTaskController::_ColorCorrectionEnabled(pxrInternal__aapl__pxrReserved__::HdxTaskController *this)
{
  if (!pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(this + 42))
  {
    return 0;
  }

  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v2)
  {
    v2 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  sub_29AEFF4BC(this + 24, this + 42, v2 + 55, v7);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTokens);
  if (!v3)
  {
    v3 = sub_29AECDE6C(&pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTokens);
  }

  v5 = (*v3 ^ v7[0]) > 7 && v7[0] != 0;
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v14 < 0)
  {
    operator delete(__p);
  }

  if (v12 < 0)
  {
    operator delete(v11);
  }

  if (v10 < 0)
  {
    operator delete(v9);
  }

  if (v8 < 0)
  {
    operator delete(v7[1]);
  }

  if ((v7[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v7[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return v5;
}

void sub_29AEFF4A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29AECB604(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AEFF4BC@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v13[2] = *MEMORY[0x29EDCA608];
  v13[1] = 0;
  memset(v11, 0, sizeof(v11));
  v12 = 1065353216;
  if (!sub_29AF06108((a1 + 24), a2, v11) || (v6 = sub_29A16039C(v11, a3)) == 0 || (sub_29A1854E8(v13, v6 + 3), (sub_29AECE348(v13) & 1) == 0))
  {
    v9[0] = "hdx/taskController.h";
    v9[1] = "GetParameter";
    v9[2] = 347;
    v9[3] = "T pxrInternal__aapl__pxrReserved__::HdxTaskController::_Delegate::GetParameter(const SdfPath &, const TfToken &) const [T = pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTaskParams]";
    v10 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v9, "TfMapLookup(_valueCacheMap, id, &vCache) && TfMapLookup(vCache, key, &vParams) && vParams.IsHolding<T>()", 0);
  }

  v7 = sub_29AF0AB94(v13);
  sub_29AECE7B8(a4, v7);
  sub_29AC1E22C(v11);
  return sub_29A186B14(v13);
}

void sub_29AEFF5C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_29AC1E22C(va);
  sub_29A186B14(v13 - 40);
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::HdxTaskController::_VisualizeAovEnabled(pxrInternal__aapl__pxrReserved__::HdxTaskController *this)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
  if (!v2)
  {
    v2 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
  }

  return (*v2 ^ *(this + 37)) > 7uLL;
}

void **pxrInternal__aapl__pxrReserved__::HdxTaskController::GetRenderingTasks@<X0>(pxrInternal__aapl__pxrReserved__::HdRenderIndex **this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(this + 24))
  {
    Task = pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetTask(*this, (this + 12));
    sub_29A017F80(a2, Task);
  }

  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(this + 26) && pxrInternal__aapl__pxrReserved__::HdxTaskController::_ShadowsEnabled(this))
  {
    v6 = pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetTask(*this, (this + 13));
    sub_29A017F80(a2, v6);
  }

  if (this[14] != this[15])
  {
    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
    if (!v7)
    {
      v7 = sub_29ADC79B8(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdxTaskController::_GetRenderTaskPath(&v25, this, (v7 + 40), v5);
    v8 = this[14];
    v9 = this[15];
    while (v8 != v9)
    {
      if (*v8 != v25)
      {
        v10 = pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetTask(*this, v8);
        sub_29A017F80(a2, v10);
      }

      v8 = (v8 + 8);
    }

    if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(this + 34))
    {
      v11 = pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetTask(*this, (this + 17));
      sub_29A017F80(a2, v11);
    }

    if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(this + 50))
    {
      v12 = pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetTask(*this, (this + 25));
      sub_29A017F80(a2, v12);
    }

    v13 = this[14];
    v14 = this[15];
    if (v13 != v14)
    {
      while (*v13 != v25)
      {
        v13 = (v13 + 8);
        if (v13 == v14)
        {
          goto LABEL_24;
        }
      }
    }

    if (v13 != v14)
    {
      v15 = pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetTask(*this, &v25);
      sub_29A017F80(a2, v15);
    }

LABEL_24:
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v25 + 1);
    sub_29A1DE3A4(&v25);
  }

  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(this + 36))
  {
    v16 = pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetTask(*this, (this + 18));
    sub_29A017F80(a2, v16);
  }

  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(this + 38) && pxrInternal__aapl__pxrReserved__::HdxTaskController::_SelectionEnabled(this))
  {
    v17 = pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetTask(*this, (this + 19));
    sub_29A017F80(a2, v17);
  }

  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(this + 40))
  {
    v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
    if (!v18)
    {
      v18 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
    }

    if ((*v18 ^ this[37]) <= 7)
    {
      v19 = pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetTask(*this, (this + 20));
      sub_29A017F80(a2, v19);
    }
  }

  if (pxrInternal__aapl__pxrReserved__::HdxTaskController::_ColorCorrectionEnabled(this))
  {
    v20 = pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetTask(*this, (this + 21));
    sub_29A017F80(a2, v20);
  }

  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(this + 44))
  {
    v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
    if (!v21)
    {
      v21 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
    }

    if ((*v21 ^ this[37]) >= 8)
    {
      v22 = pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetTask(*this, (this + 22));
      sub_29A017F80(a2, v22);
    }
  }

  result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(this + 52);
  if (result)
  {
    v24 = pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetTask(*this, (this + 26));
    return sub_29A017F80(a2, v24);
  }

  return result;
}

void sub_29AEFF950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A0176E4(va);
  _Unwind_Resume(a1);
}

void **pxrInternal__aapl__pxrReserved__::HdxTaskController::GetPickingTasks@<X0>(pxrInternal__aapl__pxrReserved__::HdRenderIndex **this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(this + 46))
  {
    Task = pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetTask(*this, (this + 23));
    sub_29A017F80(a2, Task);
  }

  result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(this + 48);
  if (result)
  {
    v6 = pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetTask(*this, (this + 24));
    return sub_29A017F80(a2, v6);
  }

  return result;
}

void sub_29AEFFA20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A0176E4(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdxTaskController::_GetAovPath(uint64_t *__return_ptr a1@<X8>, pxrInternal__aapl__pxrReserved__::HdxTaskController *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a3@<X1>)
{
  v6 = sub_29A008E78(&v13, "aov_");
  if ((*a3 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a3 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v6);
  }

  pxrInternal__aapl__pxrReserved__::TfMakeValidIdentifier(EmptyString, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v10 = std::string::append(&v13, p_p, size);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v15 = v10->__r_.__value_.__r.__words[2];
  *v14 = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v13, v14);
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(a1, (this + 8), &v13);
  if ((v13.__r_.__value_.__s.__data_[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v13.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[0]);
  }
}

void sub_29AEFFB40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if ((a15 & 7) != 0)
  {
    atomic_fetch_add_explicit((a15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdxTaskController::_GetDomeLightTexture(void x0_0, const pxrInternal__aapl__pxrReserved__::GlfSimpleLight *a1)
{
  pxrInternal__aapl__pxrReserved__::GlfSimpleLight::GetDomeLightTextureFile(a1);
  pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(&v2);
  pxrInternal__aapl__pxrReserved__::SdfAssetPath::operator==();
}

void sub_29AEFFD4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  __cxa_guard_abort(&qword_2A174FEF0);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdxTaskController::_SetParameters(pxrInternal__aapl__pxrReserved__::HdxTaskController *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::GlfSimpleLight *a3)
{
  v29 = *MEMORY[0x29EDCA608];
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  if (!v6)
  {
    v6 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  }

  *&v28[8] = &unk_2A2044C63;
  *v28 = 1065353216;
  sub_29AF0029C(this + 24, a2, v6 + 7, v28);
  sub_29A186B14(v28);
  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  if (!v7)
  {
    v7 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  }

  *&v28[8] = &unk_2A2044C63;
  *v28 = 0;
  sub_29AF0029C(this + 24, a2, v7 + 5, v28);
  sub_29A186B14(v28);
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  if (!v8)
  {
    v8 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  }

  v28[0] = 0;
  sub_29AF00318(this + 24, a2, v8 + 16, v28);
  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  if (!v9)
  {
    v9 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  }

  *&v28[8] = &off_2A2042840 + 2;
  v10 = operator new(0x10uLL);
  __asm { FMOV            V0.2S, #1.0 }

  *v10 = _D0;
  v10[2] = 1065353216;
  atomic_store(0, v10 + 3);
  *v28 = v10;
  atomic_fetch_add_explicit(v10 + 3, 1u, memory_order_relaxed);
  sub_29AF0029C(this + 24, a2, v9 + 1, v28);
  sub_29A186B14(v28);
  v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v16)
  {
    v16 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  Transform = pxrInternal__aapl__pxrReserved__::GlfSimpleLight::GetTransform(a3);
  *&v28[8] = &off_2A2042BD8 + 2;
  v18 = operator new(0x88uLL);
  v19 = *Transform;
  v20 = Transform[1];
  v21 = Transform[3];
  *(v18 + 2) = Transform[2];
  *(v18 + 3) = v21;
  *v18 = v19;
  *(v18 + 1) = v20;
  v22 = Transform[4];
  v23 = Transform[5];
  v24 = Transform[7];
  *(v18 + 6) = Transform[6];
  *(v18 + 7) = v24;
  *(v18 + 4) = v22;
  *(v18 + 5) = v23;
  atomic_store(0, v18 + 32);
  *v28 = v18;
  atomic_fetch_add_explicit(v18 + 32, 1u, memory_order_relaxed);
  sub_29AF0029C(this + 24, a2, v16 + 80, v28);
  sub_29A186B14(v28);
  v25 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  if (!v25)
  {
    v25 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  }

  memset(v28, 0, sizeof(v28));
  sub_29AF003C4(this + 24, a2, v25 + 32, v28);
  if (*&v28[8])
  {
    sub_29A014BEC(*&v28[8]);
  }

  v26 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  if (!v26)
  {
    v26 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  }

  *&v28[8] = 0;
  sub_29AF0029C(this + 24, a2, v26 + 31, v28);
  sub_29A186B14(v28);
  v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  if (!v27)
  {
    v27 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  }

  sub_29AF00440(this + 24, a2, v27 + 30, a3);
}

void *sub_29AF0029C(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v9 = a2;
  v6 = sub_29AEC0BF4(a1 + 24, a2, &unk_29B4D6118, &v9);
  v9 = a3;
  v7 = sub_29AC1E77C(v6 + 6, a3, &unk_29B4D6118, &v9);
  return sub_29A1854E8(v7 + 3, a4);
}

void *sub_29AF00318(uint64_t a1, uint64_t *a2, uint64_t *a3, char *a4)
{
  v5 = *a4;
  v11 = a2;
  v6 = sub_29AEC0BF4(a1 + 24, a2, &unk_29B4D6118, &v11);
  v11 = a3;
  result = sub_29AC1E77C(v6 + 6, a3, &unk_29B4D6118, &v11);
  v8 = result;
  v9 = result[4];
  if (v9)
  {
    v10 = (result[4] & 3) == 3;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    result = (*((v9 & 0xFFFFFFFFFFFFFFF8) + 32))(result + 3);
  }

  v8[4] = &unk_2A20443C3;
  *(v8 + 24) = v5;
  return result;
}

void *sub_29AF003C4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v9 = a2;
  v6 = sub_29AEC0BF4(a1 + 24, a2, &unk_29B4D6118, &v9);
  v9 = a3;
  v7 = sub_29AC1E77C(v6 + 6, a3, &unk_29B4D6118, &v9);
  return sub_29AEBAD14(v7 + 3, a4);
}

void sub_29AF00440(uint64_t a1, uint64_t *a2, uint64_t *a3, __int128 *a4)
{
  v8 = a2;
  v6 = sub_29AEC0BF4(a1 + 24, a2, &unk_29B4D6118, &v8);
  v8 = a3;
  v7 = sub_29AC1E77C(v6 + 6, a3, &unk_29B4D6118, &v8);
  sub_29AE62178((v7 + 3), a4);
}

void pxrInternal__aapl__pxrReserved__::HdxTaskController::_SetMaterialNetwork(pxrInternal__aapl__pxrReserved__::HdxTaskController *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::GlfSimpleLight *a3)
{
  v23[16] = *MEMORY[0x29EDCA608];
  v20[0] = 0;
  v20[1] = 0;
  v18 = 0;
  v19 = v20;
  v21 = 0u;
  v22 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v9);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v10);
  v13[0] = 0;
  v13[1] = 0;
  v11 = 0;
  v12 = v13;
  sub_29A2258F0(&v9, a2);
  sub_29A225948(&v10, a2 + 1);
  IsDomeLight = pxrInternal__aapl__pxrReserved__::GlfSimpleLight::IsDomeLight(a3);
  v6 = atomic_load(&qword_2A174FED8);
  if (IsDomeLight)
  {
    if (!v6)
    {
      v6 = sub_29AF06160();
    }

    v7 = v6 + 19;
  }

  else
  {
    if (!v6)
    {
      v6 = sub_29AF06160();
    }

    v7 = v6 + 18;
  }

  sub_29A166F2C(&v11, v7);
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  if (!v8)
  {
    v8 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  }

  v23[0] = (v8 + 56);
  sub_29A94BD04(&v12, v8 + 56, &unk_29B4D6118, v23);
}

void sub_29AF00C98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  sub_29ACC9478(&a12);
  sub_29AF00CFC(&a17);
  sub_29ABE8884(&a26);
  _Unwind_Resume(a1);
}

void **sub_29AF00CFC(void **a1)
{
  v3 = a1 + 6;
  sub_29A124AB0(&v3);
  v3 = a1 + 3;
  sub_29ABED178(&v3);
  v3 = a1;
  sub_29ABECE84(&v3);
  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdxTaskController::_GetLightAtId(pxrInternal__aapl__pxrReserved__::HdxTaskController *this@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v8[0] = xmmword_29B43C8B0;
  pxrInternal__aapl__pxrReserved__::GlfSimpleLight::GlfSimpleLight(a3, v8);
  v5 = *a2;
  v6 = *(this + 28);
  if (v5 < (*(this + 29) - v6) >> 3)
  {
    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    if (!v7)
    {
      v7 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
    }

    sub_29AF00E30(this + 24, (v6 + 8 * v5), v7 + 30, v8);
  }
}

void sub_29AF00E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  pxrInternal__aapl__pxrReserved__::GlfSimpleLight::~GlfSimpleLight(&a9);
  pxrInternal__aapl__pxrReserved__::GlfSimpleLight::~GlfSimpleLight(v9);
  _Unwind_Resume(a1);
}

void sub_29AF00E30(uint64_t a1@<X0>, unsigned int *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v12[2] = *MEMORY[0x29EDCA608];
  v12[1] = 0;
  memset(v10, 0, sizeof(v10));
  v11 = 1065353216;
  if (!sub_29AF06108((a1 + 24), a2, v10) || (v6 = sub_29A16039C(v10, a3)) == 0 || (sub_29A1854E8(v12, v6 + 3), (sub_29AE613A4(v12) & 1) == 0))
  {
    v8[0] = "hdx/taskController.h";
    v8[1] = "GetParameter";
    v8[2] = 347;
    v8[3] = "T pxrInternal__aapl__pxrReserved__::HdxTaskController::_Delegate::GetParameter(const SdfPath &, const TfToken &) const [T = pxrInternal__aapl__pxrReserved__::GlfSimpleLight]";
    v9 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v8, "TfMapLookup(_valueCacheMap, id, &vCache) && TfMapLookup(vCache, key, &vParams) && vParams.IsHolding<T>()", 0);
  }

  v7 = sub_29AE61430(v12);
  sub_29AB82270(a4, v7);
}

void sub_29AF00F38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_29AC1E22C(va);
  sub_29A186B14(v13 - 40);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::HdRenderIndex **pxrInternal__aapl__pxrReserved__::HdxTaskController::_RemoveLightSprim(pxrInternal__aapl__pxrReserved__::HdRenderIndex **this, const unint64_t *a2)
{
  if (*a2 < (this[29] - this[28]) >> 3)
  {
    v3 = this;
    v4 = *this;
    pxrInternal__aapl__pxrReserved__::HdxTaskController::_GetCameraLightType(&v7, this);
    pxrInternal__aapl__pxrReserved__::HdRenderIndex::RemoveSprim(v4, &v7, (v3[28] + 8 * *a2));
    if ((v7 & 7) != 0)
    {
      atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v5 = *v3;
    v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v6)
    {
      v6 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    return pxrInternal__aapl__pxrReserved__::HdRenderIndex::RemoveSprim(v5, (v6 + 240), (v3[28] + 8 * *a2));
  }

  return this;
}

void pxrInternal__aapl__pxrReserved__::HdxTaskController::_ReplaceLightSprim(pxrInternal__aapl__pxrReserved__::HdRenderIndex **this, const unint64_t *a2, const pxrInternal__aapl__pxrReserved__::GlfSimpleLight *a3, const pxrInternal__aapl__pxrReserved__::SdfPath *a4)
{
  pxrInternal__aapl__pxrReserved__::HdxTaskController::_RemoveLightSprim(this, a2);
  IsDomeLight = pxrInternal__aapl__pxrReserved__::GlfSimpleLight::IsDomeLight(a3);
  v8 = *this;
  if (IsDomeLight)
  {
    v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v9)
    {
      v9 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdRenderIndex::InsertSprim(v8, (v9 + 240), (this + 3), a4);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::HdxTaskController::_GetCameraLightType(&v10, this);
    pxrInternal__aapl__pxrReserved__::HdRenderIndex::InsertSprim(v8, &v10, (this + 3), a4);
    if ((v10 & 7) != 0)
    {
      atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  pxrInternal__aapl__pxrReserved__::HdxTaskController::_SetParameters(this, a4, a3);
}

void sub_29AF01154(uint64_t a1, int *a2)
{
  if (*(a1 + 8) < *(a1 + 16))
  {
    sub_29AF0B158(a1, *(a1 + 8), a2);
  }

  sub_29AF0B044(a1, a2);
}

void *sub_29AF011B4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v9 = a2;
  v6 = sub_29AEC0BF4(a1 + 24, a2, &unk_29B4D6118, &v9);
  v9 = a3;
  v7 = sub_29AC1E77C(v6 + 6, a3, &unk_29B4D6118, &v9);
  return sub_29AEBB3D4(v7 + 3, a4);
}

void *sub_29AF01230(uint64_t a1, uint64_t *a2, uint64_t *a3, int *a4)
{
  v5 = *a4;
  v11 = a2;
  v6 = sub_29AEC0BF4(a1 + 24, a2, &unk_29B4D6118, &v11);
  v11 = a3;
  result = sub_29AC1E77C(v6 + 6, a3, &unk_29B4D6118, &v11);
  v8 = result;
  v9 = result[4];
  if (v9)
  {
    v10 = (result[4] & 3) == 3;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    result = (*((v9 & 0xFFFFFFFFFFFFFFF8) + 32))(result + 3);
  }

  v8[4] = &unk_2A2044813;
  *(v8 + 6) = v5;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdxTaskController::SetViewportRenderOutput(pxrInternal__aapl__pxrReserved__::HdxTaskController *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  if (pxrInternal__aapl__pxrReserved__::HdxTaskController::_AovsSupported(this) && (*a2 ^ *(this + 37)) >= 8)
  {
    sub_29A166F2C(this + 37, a2);
    if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(this + 34))
    {
      v4 = sub_29AEC50C0(&v36);
      if (*a2)
      {
        v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
        if (!v5)
        {
          v5 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
        }

        if ((*v5 ^ *a2) <= 7)
        {
          v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
          if (!v6)
          {
            v6 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
          }

          pxrInternal__aapl__pxrReserved__::HdxTaskController::_GetAovPath(&v49, this, v6);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
        }

        pxrInternal__aapl__pxrReserved__::HdxTaskController::_GetAovPath(&v49, this, a2);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
      }

      v7 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v4);
      sub_29A2258F0(&v36, v7);
      v8 = sub_29A225948(&v36 + 1, v7 + 1);
      v9 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v8);
      sub_29A2258F0(&v36 + 2, v9);
      sub_29A225948(&v36 + 3, v9 + 1);
      v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v10)
      {
        v10 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      sub_29AEFEBE4(this + 24, this + 17, v10 + 55, &v36);
      pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkTaskDirty((*this + 440), (this + 136));
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v36 + 3);
      sub_29A1DE3A4(&v36 + 2);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v36 + 1);
      sub_29A1DE3A4(&v36);
    }

    if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(this + 40))
    {
      v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v11)
      {
        v11 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      sub_29AF02288(this + 24, this + 40, v11 + 55, &v36);
      v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
      if (!v12)
      {
        v12 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
      }

      if ((*v12 ^ *a2) <= 7)
      {
        v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
        if (!v13)
        {
          v13 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
        }

        pxrInternal__aapl__pxrReserved__::HdxTaskController::_GetAovPath(&v49, this, (v13 + 32));
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
      }

      v14 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v12);
      sub_29A2258F0(&v40, v14);
      v15 = sub_29A225948(&v41, v14 + 1);
      v16 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v15);
      sub_29A2258F0(&v42, v16);
      v17 = sub_29A225948(&v43, v16 + 1);
      v18 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v17);
      sub_29A2258F0(&v43 + 1, v18);
      sub_29A225948(v44, v18 + 1);
      v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v19)
      {
        v19 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      sub_29AEFE33C(this + 24, this + 20, v19 + 55, &v36);
      pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkTaskDirty((*this + 440), (this + 160));
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v44);
      sub_29A1DE3A4(&v43 + 1);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v43);
      sub_29A1DE3A4(&v42);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v41);
      sub_29A1DE3A4(&v40);
    }

    if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(this + 48))
    {
      v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v20)
      {
        v20 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      sub_29AF02400(this + 24, this + 48, v20 + 55, &v36);
      v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
      if (!v21)
      {
        v21 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
      }

      if ((*v21 ^ *a2) <= 7)
      {
        v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
        if (!v22)
        {
          v22 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
        }

        pxrInternal__aapl__pxrReserved__::HdxTaskController::_GetAovPath(&v49, this, (v22 + 32));
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
      }

      v23 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v21);
      sub_29A2258F0(&v36, v23);
      v24 = sub_29A225948(&v36 + 1, v23 + 1);
      v25 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v24);
      sub_29A2258F0(&v36 + 2, v25);
      v26 = sub_29A225948(&v36 + 3, v25 + 1);
      v27 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v26);
      sub_29A2258F0(v37, v27);
      v28 = sub_29A225948(&v37[1], v27 + 1);
      v29 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v28);
      sub_29A2258F0(&v39, v29);
      sub_29A225948(&v39 + 1, v29 + 1);
      v30 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v30)
      {
        v30 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      sub_29AEFE974(this + 24, this + 24, v30 + 55, &v36);
      pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkTaskDirty((*this + 440), (this + 192));
      sub_29AEE8844(&v36);
    }

    if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(this + 42))
    {
      v31 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v31)
      {
        v31 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      sub_29AEFF4BC(this + 24, this + 42, v31 + 55, &v36);
      sub_29A166F2C(&v48, a2);
      v32 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v32)
      {
        v32 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      sub_29AEFE688(this + 24, this + 21, v32 + 55, &v36);
      pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkTaskDirty((*this + 440), (this + 168));
      if ((v48 & 7) != 0)
      {
        atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (v47 < 0)
      {
        operator delete(__p);
      }

      if (v45 < 0)
      {
        operator delete(v43);
      }

      if (SHIBYTE(v42) < 0)
      {
        operator delete(v39);
      }

      if (v38 < 0)
      {
        operator delete(*(&v36 + 1));
      }

      if ((v36 & 7) != 0)
      {
        atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(this + 44))
    {
      v33 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v33)
      {
        v33 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      sub_29AF025C8(this + 24, this + 44, v33 + 55, &v36);
      sub_29A166F2C(&v36, a2);
      v34 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v34)
      {
        v34 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      sub_29AEFE7C0(this + 24, this + 22, v34 + 55, &v36);
      pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkTaskDirty((*this + 440), (this + 176));
      if ((v36 & 7) != 0)
      {
        atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(this + 50))
    {
      v35 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v35)
      {
        v35 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      sub_29AF02708(this + 24, this + 50, v35 + 55, &v36);
    }
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxTaskController::_SetCameraFramingForTasks(pxrInternal__aapl__pxrReserved__::HdxTaskController *this)
{
  v32 = *MEMORY[0x29EDCA608];
  v21 = 0u;
  if (*(this + 31) == *(this + 32))
  {
    v21 = *(this + 360);
  }

  v20 = *(this + 376);
  v2 = *(this + 14);
  v19 = *this;
  if (v2 != *(this + 15))
  {
    v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v3)
    {
      v3 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    sub_29AEFF110(this + 24, v2, v3 + 55, &v22);
  }

  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(this + 48))
  {
    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v4)
    {
      v4 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    sub_29AF02400(this + 24, this + 48, v4 + 55, &v22);
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v30, v21), vceqq_f64(v31, v20))))) & 1) != 0 || pxrInternal__aapl__pxrReserved__::CameraUtilFraming::operator!=(v26, this + 312))
    {
      goto LABEL_16;
    }

    v5 = v29;
    v6 = *(this + 352);
    if (v29 == v6 && v29)
    {
      v5 = v28;
      v6 = *(this + 87);
    }

    if (v5 != v6)
    {
LABEL_16:
      v7 = *(this + 86);
      v8 = *(this + 328);
      v26[0] = *(this + 312);
      v26[1] = v8;
      v9 = *(this + 87);
      v27 = v7;
      v28 = v9;
      v29 = *(this + 352);
      v30 = v21;
      v31 = v20;
      v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v10)
      {
        v10 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      sub_29AEFE974(this + 24, this + 24, v10 + 55, &v22);
      pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkTaskDirty((v19 + 440), (this + 192));
    }

    sub_29AEE8844(&v22);
  }

  result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(this + 52);
  if (result)
  {
    v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v12)
    {
      v12 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    sub_29AF05D8C(this + 24, this + 52, v12 + 55, &v22);
    if (pxrInternal__aapl__pxrReserved__::CameraUtilFraming::IsValid((this + 312)))
    {
      v13 = 0;
      v14 = 0;
      v15 = *(this + 38);
    }

    else
    {
      v13 = *(this + 45);
      v14 = *(this + 46);
      v15 = *(this + 47) | (*(this + 48) << 32);
    }

    v17 = v24 == v13 && HIDWORD(v24) == v14 && v25 == v15;
    if (!v17 || HIDWORD(v25) != HIDWORD(v15))
    {
      v24 = v13 | (v14 << 32);
      v25 = v15;
      v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v18)
      {
        v18 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      sub_29AEFED1C(this + 24, this + 26, v18 + 55, &v22);
      pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkTaskDirty((v19 + 440), (this + 208));
    }

    result = sub_29A186B14(&v23);
    if ((v22 & 7) != 0)
    {
      atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return result;
}

void sub_29AF02218(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AF02288@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v15[2] = *MEMORY[0x29EDCA608];
  v15[1] = 0;
  memset(v13, 0, sizeof(v13));
  v14 = 1065353216;
  if (!sub_29AF06108((a1 + 24), a2, v13) || (v6 = sub_29A16039C(v13, a3)) == 0 || (sub_29A1854E8(v15, v6 + 3), (sub_29AECA10C(v15) & 1) == 0))
  {
    v11[0] = "hdx/taskController.h";
    v11[1] = "GetParameter";
    v11[2] = 347;
    v11[3] = "T pxrInternal__aapl__pxrReserved__::HdxTaskController::_Delegate::GetParameter(const SdfPath &, const TfToken &) const [T = pxrInternal__aapl__pxrReserved__::HdxColorizeSelectionTaskParams]";
    v12 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v11, "TfMapLookup(_valueCacheMap, id, &vCache) && TfMapLookup(vCache, key, &vParams) && vParams.IsHolding<T>()", 0);
  }

  v7 = sub_29AF0B3AC(v15);
  v8 = *v7;
  v9 = *(v7 + 1);
  *(a4 + 28) = *(v7 + 28);
  *a4 = v8;
  *(a4 + 16) = v9;
  sub_29A1E21F4((a4 + 44), v7 + 11);
  sub_29A1E2240((a4 + 48), v7 + 12);
  sub_29A1E21F4((a4 + 52), v7 + 13);
  sub_29A1E2240((a4 + 56), v7 + 14);
  sub_29A1E21F4((a4 + 60), v7 + 15);
  sub_29A1E2240((a4 + 64), v7 + 16);
  sub_29AC1E22C(v13);
  return sub_29A186B14(v15);
}

void sub_29AF023E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_29AC1E22C(va);
  sub_29A186B14(v13 - 40);
  _Unwind_Resume(a1);
}

uint64_t sub_29AF02400@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v16[2] = *MEMORY[0x29EDCA608];
  v16[1] = 0;
  memset(v14, 0, sizeof(v14));
  v15 = 1065353216;
  if (!sub_29AF06108((a1 + 24), a2, v14) || (v6 = sub_29A16039C(v14, a3)) == 0 || (sub_29A1854E8(v16, v6 + 3), (sub_29AEE88E8(v16) & 1) == 0))
  {
    v12[0] = "hdx/taskController.h";
    v12[1] = "GetParameter";
    v12[2] = 347;
    v12[3] = "T pxrInternal__aapl__pxrReserved__::HdxTaskController::_Delegate::GetParameter(const SdfPath &, const TfToken &) const [T = pxrInternal__aapl__pxrReserved__::HdxPickFromRenderBufferTaskParams]";
    v13 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v12, "TfMapLookup(_valueCacheMap, id, &vCache) && TfMapLookup(vCache, key, &vParams) && vParams.IsHolding<T>()", 0);
  }

  v7 = sub_29AF0B56C(v16);
  sub_29A1E21F4(a4, v7);
  sub_29A1E2240((a4 + 4), v7 + 1);
  sub_29A1E21F4((a4 + 8), v7 + 2);
  sub_29A1E2240((a4 + 12), v7 + 3);
  sub_29A1E21F4((a4 + 16), v7 + 4);
  sub_29A1E2240((a4 + 20), v7 + 5);
  sub_29A1E21F4((a4 + 24), v7 + 6);
  sub_29A1E2240((a4 + 28), v7 + 7);
  sub_29A1E21F4((a4 + 32), v7 + 8);
  sub_29A1E2240((a4 + 36), v7 + 9);
  sub_29A1E21F4((a4 + 40), v7 + 10);
  sub_29A1E2240((a4 + 44), v7 + 11);
  *(a4 + 48) = *(v7 + 3);
  v8 = *(v7 + 4);
  v9 = *(v7 + 5);
  v10 = *(v7 + 7);
  *(a4 + 96) = *(v7 + 6);
  *(a4 + 112) = v10;
  *(a4 + 64) = v8;
  *(a4 + 80) = v9;
  sub_29AC1E22C(v14);
  return sub_29A186B14(v16);
}

void sub_29AF025A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_29AC1E22C(va);
  sub_29A186B14(v13 - 40);
  _Unwind_Resume(a1);
}

uint64_t sub_29AF025C8@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, void *a3@<X2>, atomic_uint **a4@<X8>)
{
  v15[2] = *MEMORY[0x29EDCA608];
  v15[1] = 0;
  memset(v13, 0, sizeof(v13));
  v14 = 1065353216;
  if (!sub_29AF06108((a1 + 24), a2, v13) || (v6 = sub_29A16039C(v13, a3)) == 0 || (sub_29A1854E8(v15, v6 + 3), (sub_29AF0B6DC(v15) & 1) == 0))
  {
    v11[0] = "hdx/taskController.h";
    v11[1] = "GetParameter";
    v11[2] = 347;
    v11[3] = "T pxrInternal__aapl__pxrReserved__::HdxTaskController::_Delegate::GetParameter(const SdfPath &, const TfToken &) const [T = pxrInternal__aapl__pxrReserved__::HdxVisualizeAovTaskParams]";
    v12 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v11, "TfMapLookup(_valueCacheMap, id, &vCache) && TfMapLookup(vCache, key, &vParams) && vParams.IsHolding<T>()", 0);
  }

  v7 = sub_29AF0B768(v15);
  v8 = *v7;
  *a4 = *v7;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a4 = v9;
    }
  }

  sub_29AC1E22C(v13);
  return sub_29A186B14(v15);
}

void sub_29AF026E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_29AC1E22C(va);
  sub_29A186B14(v13 - 40);
  _Unwind_Resume(a1);
}

void sub_29AF02708(uint64_t a1@<X0>, unsigned int *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v14[2] = *MEMORY[0x29EDCA608];
  v14[1] = 0;
  memset(v12, 0, sizeof(v12));
  v13 = 1065353216;
  if (!sub_29AF06108((a1 + 24), a2, v12) || (v6 = sub_29A16039C(v12, a3)) == 0 || (sub_29A1854E8(v14, v6 + 3), (sub_29AEC8128(v14) & 1) == 0))
  {
    v10[0] = "hdx/taskController.h";
    v10[1] = "GetParameter";
    v10[2] = 347;
    v10[3] = "T pxrInternal__aapl__pxrReserved__::HdxTaskController::_Delegate::GetParameter(const SdfPath &, const TfToken &) const [T = pxrInternal__aapl__pxrReserved__::HdxBoundingBoxTaskParams]";
    v11 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v10, "TfMapLookup(_valueCacheMap, id, &vCache) && TfMapLookup(vCache, key, &vParams) && vParams.IsHolding<T>()", 0);
  }

  v7 = sub_29AF0B8CC(v14);
  v8 = *v7;
  *a4 = *v7;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a4 = v9;
    }
  }

  a4[1] = 0;
  a4[2] = 0;
  a4[3] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::GfBBox3d>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::GfBBox3d*,pxrInternal__aapl__pxrReserved__::GfBBox3d*>();
}

void sub_29AF0286C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_29AC1E22C(va);
  sub_29A186B14(v13 - 40);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxTaskController::GetRenderOutput(pxrInternal__aapl__pxrReserved__::HdxTaskController *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  if (pxrInternal__aapl__pxrReserved__::HdxTaskController::_AovsSupported(this))
  {
    pxrInternal__aapl__pxrReserved__::HdxTaskController::_GetAovPath(&v7, this, a2);
    v4 = *this;
    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v5)
    {
      v5 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetBprim(v4, (v5 + 312), &v7);
  }

  return 0;
}

void sub_29AF0294C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxTaskController::SetRenderOutputSettings(unsigned int **a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, int *a3)
{
  v21[3] = *MEMORY[0x29EDCA608];
  result = pxrInternal__aapl__pxrReserved__::HdxTaskController::_AovsSupported(a1);
  if (result && a1[14] != a1[15])
  {
    pxrInternal__aapl__pxrReserved__::HdxTaskController::_GetAovPath(v21, a1, a2);
    v7 = atomic_load(&qword_2A174FED8);
    if (!v7)
    {
      v7 = sub_29AF06160();
    }

    if (!sub_29AEFA7A8((a1 + 3), v21, v7 + 14))
    {
      v16[0] = "hdx/taskController.cpp";
      v16[1] = "SetRenderOutputSettings";
      v16[2] = 1288;
      v16[3] = "void pxrInternal__aapl__pxrReserved__::HdxTaskController::SetRenderOutputSettings(const TfToken &, const HdAovDescriptor &)";
      v17 = 0;
      v11 = *a2 & 0xFFFFFFFFFFFFFFF8;
      if (v11)
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

      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v16, "Render output %s doesn't exist", v8, v12);
      goto LABEL_24;
    }

    v9 = atomic_load(&qword_2A174FED8);
    if (!v9)
    {
      v9 = sub_29AF06160();
    }

    sub_29AEFA5D8((a1 + 3), v21, v9 + 14, v18);
    if (v19 == *a3)
    {
      v10 = *(a3 + 4);
      if (v20 == v10)
      {
LABEL_18:
        v14 = a1[14];
        if (v14 != a1[15])
        {
          v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
          if (!v15)
          {
            v15 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
          }

          sub_29AEFF110((a1 + 3), v14, v15 + 55, v16);
        }

LABEL_24:
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v21 + 1);
        return sub_29A1DE3A4(v21);
      }
    }

    else
    {
      LOBYTE(v10) = *(a3 + 4);
    }

    v19 = *a3;
    v20 = v10;
    v13 = atomic_load(&qword_2A174FED8);
    if (!v13)
    {
      v13 = sub_29AF06160();
    }

    sub_29AF011B4((a1 + 3), v21, v13 + 14, v18);
    pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkBprimDirty((*a1 + 110), v21);
    goto LABEL_18;
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxTaskController::GetRenderOutputSettings@<X0>(unsigned int **this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, uint64_t a3@<X8>)
{
  result = pxrInternal__aapl__pxrReserved__::HdxTaskController::_AovsSupported(this);
  if (!result || this[14] == this[15])
  {
    *a3 = -1;
    *(a3 + 4) = 0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0;
    *(a3 + 56) = 1065353216;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::HdxTaskController::_GetAovPath(&v15, this, a2);
    v7 = atomic_load(&qword_2A174FED8);
    if (!v7)
    {
      v7 = sub_29AF06160();
    }

    if (sub_29AEFA7A8((this + 3), &v15, v7 + 14))
    {
      v8 = atomic_load(&qword_2A174FED8);
      if (!v8)
      {
        v8 = sub_29AF06160();
      }

      sub_29AEFA5D8((this + 3), &v15, v8 + 14, v12);
      *(a3 + 48) = 0;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *(a3 + 56) = 1065353216;
      *a3 = v13;
      *(a3 + 4) = v14;
      v9 = this[14];
      v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v10)
      {
        v10 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      sub_29AEFF110((this + 3), v9, v10 + 55, v11);
    }

    *a3 = -1;
    *(a3 + 4) = 0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0;
    *(a3 + 56) = 1065353216;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v15 + 1);
    return sub_29A1DE3A4(&v15);
  }

  return result;
}

void sub_29AF02F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29AEBC5BC(va);
  sub_29AC1E22C(v3 + 24);
  sub_29A186B14(v3 + 8);
  sub_29A1DCEA8((v4 - 64));
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdxTaskController::SetCollection(pxrInternal__aapl__pxrReserved__::HdxTaskController *this, const pxrInternal__aapl__pxrReserved__::HdRprimCollection *a2)
{
  pxrInternal__aapl__pxrReserved__::HdRprimCollection::HdRprimCollection(v9, a2);
  v3 = *(this + 14);
  for (i = *(this + 15); v3 != i; v3 += 2)
  {
    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v5)
    {
      v5 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    sub_29AF030EC(this + 24, v3, v5 + 12, v8);
    MaterialTag = pxrInternal__aapl__pxrReserved__::HdRprimCollection::GetMaterialTag(v8);
    pxrInternal__aapl__pxrReserved__::HdRprimCollection::SetMaterialTag(v9, MaterialTag);
    if (!pxrInternal__aapl__pxrReserved__::HdRprimCollection::operator==(v8, v9))
    {
      v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v7)
      {
        v7 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      sub_29AEFDFD4(this + 24, v3, v7 + 12, v9);
      pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkTaskDirty((*this + 440), v3);
    }

    pxrInternal__aapl__pxrReserved__::HdRprimCollection::~HdRprimCollection(v8);
  }

  pxrInternal__aapl__pxrReserved__::HdRprimCollection::~HdRprimCollection(v9);
}

void sub_29AF030C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  pxrInternal__aapl__pxrReserved__::HdRprimCollection::~HdRprimCollection(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AF030EC@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, void *a3@<X2>, pxrInternal__aapl__pxrReserved__::HdRprimCollection *a4@<X8>)
{
  v13[2] = *MEMORY[0x29EDCA608];
  v13[1] = 0;
  memset(v11, 0, sizeof(v11));
  v12 = 1065353216;
  if (!sub_29AF06108((a1 + 24), a2, v11) || (v6 = sub_29A16039C(v11, a3)) == 0 || (sub_29A1854E8(v13, v6 + 3), (sub_29AC0660C(v13) & 1) == 0))
  {
    v9[0] = "hdx/taskController.h";
    v9[1] = "GetParameter";
    v9[2] = 347;
    v9[3] = "T pxrInternal__aapl__pxrReserved__::HdxTaskController::_Delegate::GetParameter(const SdfPath &, const TfToken &) const [T = pxrInternal__aapl__pxrReserved__::HdRprimCollection]";
    v10 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v9, "TfMapLookup(_valueCacheMap, id, &vCache) && TfMapLookup(vCache, key, &vParams) && vParams.IsHolding<T>()", 0);
  }

  v7 = sub_29AE49138(v13);
  pxrInternal__aapl__pxrReserved__::HdRprimCollection::HdRprimCollection(a4, v7);
  sub_29AC1E22C(v11);
  return sub_29A186B14(v13);
}

void sub_29AF031F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_29AC1E22C(va);
  sub_29A186B14(v13 - 40);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdxTaskController::SetRenderParams(unsigned int *a1, uint64_t a2)
{
  v4 = *(a1 + 14);
  if (v4 != *(a1 + 15))
  {
    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v5)
    {
      v5 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    sub_29AF030EC((a1 + 6), v4, v5 + 12, v15);
    v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v6)
    {
      v6 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    sub_29AEFF110((a1 + 6), v4, v6 + 55, v13);
  }

  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 26))
  {
    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v7)
    {
      v7 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    sub_29AF03754((a1 + 6), a1 + 26, v7 + 55, v13);
    if (v14 != *(a2 + 60))
    {
      v14 = *(a2 + 60);
      v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v8)
      {
        v8 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      sub_29AEFE494((a1 + 6), a1 + 13, v8 + 55, v13);
      pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkTaskDirty((*a1 + 440), (a1 + 26));
    }
  }

  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 46))
  {
    v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v9)
    {
      v9 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    v10 = sub_29AF03888((a1 + 6), a1 + 46, v9 + 55);
    if (*(a2 + 320) == v10)
    {
      v11 = *(a2 + 60);
      if (v11 == BYTE4(v10))
      {
        return;
      }
    }

    else
    {
      LOBYTE(v11) = *(a2 + 60);
    }

    LODWORD(v13[0]) = *(a2 + 320);
    BYTE4(v13[0]) = v11;
    v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v12)
    {
      v12 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    sub_29AEFE83C((a1 + 6), a1 + 23, v12 + 55, v13);
    pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkTaskDirty((*a1 + 440), (a1 + 46));
  }
}

void sub_29AF036E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, ...)
{
  va_start(va, a59);
  sub_29AEBC5BC(&a17);
  sub_29AEBC5BC(va);
  pxrInternal__aapl__pxrReserved__::HdRprimCollection::~HdRprimCollection((v59 - 200));
  _Unwind_Resume(a1);
}

uint64_t sub_29AF03754@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, void *a3@<X2>, _OWORD *a4@<X8>)
{
  v14[2] = *MEMORY[0x29EDCA608];
  v14[1] = 0;
  memset(v12, 0, sizeof(v12));
  v13 = 1065353216;
  if (!sub_29AF06108((a1 + 24), a2, v12) || (v6 = sub_29A16039C(v12, a3)) == 0 || (sub_29A1854E8(v14, v6 + 3), (sub_29AEF2700(v14) & 1) == 0))
  {
    v10[0] = "hdx/taskController.h";
    v10[1] = "GetParameter";
    v10[2] = 347;
    v10[3] = "T pxrInternal__aapl__pxrReserved__::HdxTaskController::_Delegate::GetParameter(const SdfPath &, const TfToken &) const [T = pxrInternal__aapl__pxrReserved__::HdxShadowTaskParams]";
    v11 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v10, "TfMapLookup(_valueCacheMap, id, &vCache) && TfMapLookup(vCache, key, &vParams) && vParams.IsHolding<T>()", 0);
  }

  v7 = sub_29AF0BA20(v14);
  v8 = *(v7 + 1);
  *a4 = *v7;
  a4[1] = v8;
  a4[2] = *(v7 + 2);
  *(a4 + 44) = *(v7 + 44);
  sub_29AC1E22C(v12);
  return sub_29A186B14(v14);
}

void sub_29AF03868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_29AC1E22C(va);
  sub_29A186B14(v13 - 40);
  _Unwind_Resume(a1);
}

void *sub_29AF03888(uint64_t a1, unsigned int *a2, void *a3)
{
  v11[2] = *MEMORY[0x29EDCA608];
  v11[1] = 0;
  memset(v9, 0, sizeof(v9));
  v10 = 1065353216;
  if (!sub_29AF06108((a1 + 24), a2, v9) || (v4 = sub_29A16039C(v9, a3)) == 0 || (sub_29A1854E8(v11, v4 + 3), (sub_29AEE5B2C(v11) & 1) == 0))
  {
    v7[0] = "hdx/taskController.h";
    v7[1] = "GetParameter";
    v7[2] = 347;
    v7[3] = "T pxrInternal__aapl__pxrReserved__::HdxTaskController::_Delegate::GetParameter(const SdfPath &, const TfToken &) const [T = pxrInternal__aapl__pxrReserved__::HdxPickTaskParams]";
    v8 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v7, "TfMapLookup(_valueCacheMap, id, &vCache) && TfMapLookup(vCache, key, &vParams) && vParams.IsHolding<T>()", 0);
  }

  v5 = *sub_29AF0BB34(v11);
  sub_29AC1E22C(v9);
  sub_29A186B14(v11);
  return v5;
}

void sub_29AF03988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_29AC1E22C(va);
  sub_29A186B14(v13 - 40);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdxTaskController::SetRenderTags(void *a1, uint64_t a2)
{
  v4 = a1[14];
  for (i = a1[15]; v4 != i; v4 = (v4 + 8))
  {
    pxrInternal__aapl__pxrReserved__::HdxTaskController::_Delegate::GetTaskRenderTags((a1 + 3), v4, &v12);
    v6 = v12;
    v7 = *a2;
    if (v13 - v12 != *(a2 + 8) - *a2)
    {
LABEL_6:
      v14 = &v12;
      sub_29A124AB0(&v14);
      v8 = atomic_load(&qword_2A174FED8);
      if (!v8)
      {
        v8 = sub_29AF06160();
      }

      sub_29AEFE050((a1 + 3), v4, v8 + 15);
    }

    while (v6 != v13)
    {
      if ((*v7 ^ *v6) > 7)
      {
        goto LABEL_6;
      }

      v6 += 8;
      ++v7;
    }

    v14 = &v12;
    sub_29A124AB0(&v14);
  }

  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 46))
  {
    pxrInternal__aapl__pxrReserved__::HdxTaskController::_Delegate::GetTaskRenderTags((a1 + 3), (a1 + 23), &v12);
    v9 = v12;
    v10 = *a2;
    if (v13 - v12 != *(a2 + 8) - *a2)
    {
LABEL_15:
      v14 = &v12;
      sub_29A124AB0(&v14);
      v11 = atomic_load(&qword_2A174FED8);
      if (!v11)
      {
        v11 = sub_29AF06160();
      }

      sub_29AEFE050((a1 + 3), a1 + 23, v11 + 15);
    }

    while (v9 != v13)
    {
      if ((*v10 ^ *v9) > 7)
      {
        goto LABEL_15;
      }

      v9 += 8;
      ++v10;
    }

    v14 = &v12;
    sub_29A124AB0(&v14);
  }
}

void pxrInternal__aapl__pxrReserved__::HdxTaskController::SetShadowParams(_DWORD *a1, _OWORD *a2)
{
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 26))
  {
    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v4)
    {
      v4 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    sub_29AF03754((a1 + 6), a1 + 26, v4 + 55, v9);
    v5 = a2[2];
    v7[1] = a2[1];
    v8[0] = v5;
    v7[0] = *a2;
    *(v8 + 12) = *(a2 + 44);
    BYTE1(v8[0]) = v10;
    if (pxrInternal__aapl__pxrReserved__::operator!=(v7, v9))
    {
      v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v6)
      {
        v6 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      sub_29AEFE494((a1 + 6), a1 + 13, v6 + 55, v7);
      pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkTaskDirty((*a1 + 440), (a1 + 26));
    }
  }
}

BOOL pxrInternal__aapl__pxrReserved__::HdxTaskController::SetEnableShadows(pxrInternal__aapl__pxrReserved__::HdxTaskController *this, int a2)
{
  result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(this + 24);
  if (result)
  {
    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v4)
    {
      v4 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    sub_29AEFEE60(this + 24, this + 24, v4 + 55, v5);
  }

  return result;
}

void sub_29AF03D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29AEBC888(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxTaskController::SetEnableSelection(pxrInternal__aapl__pxrReserved__::HdxTaskController *this, int a2)
{
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(this + 38))
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v4)
    {
      v4 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    sub_29AF03F8C(this + 24, this + 38, v4 + 55, v9);
    if (LOBYTE(v9[0]) != a2 || BYTE1(v9[0]) != a2)
    {
      LOBYTE(v9[0]) = a2;
      BYTE1(v9[0]) = a2;
      v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v5)
      {
        v5 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      sub_29AEFE204(this + 24, this + 19, v5 + 55, v9);
      pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkTaskDirty((*this + 440), (this + 152));
    }
  }

  result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(this + 40);
  if (result)
  {
    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v7)
    {
      v7 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    sub_29AF02288(this + 24, this + 40, v7 + 55, v9);
    if (LOBYTE(v9[0]) != a2 || BYTE1(v9[0]) != a2)
    {
      LOBYTE(v9[0]) = a2;
      BYTE1(v9[0]) = a2;
      v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v8)
      {
        v8 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      sub_29AEFE33C(this + 24, this + 20, v8 + 55, v9);
      pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkTaskDirty((*this + 440), (this + 160));
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v16);
    sub_29A1DE3A4(&v15);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v14);
    sub_29A1DE3A4(&v13);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v12);
    return sub_29A1DE3A4(&v11);
  }

  return result;
}

uint64_t sub_29AF03F8C@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v14[2] = *MEMORY[0x29EDCA608];
  v14[1] = 0;
  memset(v12, 0, sizeof(v12));
  v13 = 1065353216;
  if (!sub_29AF06108((a1 + 24), a2, v12) || (v6 = sub_29A16039C(v12, a3)) == 0 || (sub_29A1854E8(v14, v6 + 3), (sub_29AEEE4A0(v14) & 1) == 0))
  {
    v10[0] = "hdx/taskController.h";
    v10[1] = "GetParameter";
    v10[2] = 347;
    v10[3] = "T pxrInternal__aapl__pxrReserved__::HdxTaskController::_Delegate::GetParameter(const SdfPath &, const TfToken &) const [T = pxrInternal__aapl__pxrReserved__::HdxSelectionTaskParams]";
    v11 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v10, "TfMapLookup(_valueCacheMap, id, &vCache) && TfMapLookup(vCache, key, &vParams) && vParams.IsHolding<T>()", 0);
  }

  v7 = sub_29AF0BC24(v14);
  v8 = *(v7 + 1);
  *a4 = *v7;
  *(a4 + 16) = v8;
  *(a4 + 32) = v7[4];
  sub_29AC1E22C(v12);
  return sub_29A186B14(v14);
}

void sub_29AF04098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_29AC1E22C(va);
  sub_29A186B14(v13 - 40);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxTaskController::SetSelectionColor(uint64_t *a1, uint64_t a2)
{
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 38))
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v4)
    {
      v4 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    sub_29AF03F8C((a1 + 3), a1 + 38, v4 + 55, v9);
    if (*(v9 + 2) != *a2 || *(v9 + 3) != *(a2 + 4) || *&v9[1] != *(a2 + 8) || *(&v9[1] + 1) != *(a2 + 12))
    {
      *(v9 + 8) = *a2;
      v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v5)
      {
        v5 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      sub_29AEFE204((a1 + 3), a1 + 19, v5 + 55, v9);
      pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkTaskDirty((*a1 + 440), (a1 + 19));
    }
  }

  result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 40);
  if (result)
  {
    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v7)
    {
      v7 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    sub_29AF02288((a1 + 3), a1 + 40, v7 + 55, v9);
    if (*(v9 + 1) != *a2 || *(v9 + 2) != *(a2 + 4) || *(v9 + 3) != *(a2 + 8) || *&v9[1] != *(a2 + 12))
    {
      *(v9 + 4) = *a2;
      v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v8)
      {
        v8 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      sub_29AEFE33C((a1 + 3), a1 + 20, v8 + 55, v9);
      pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkTaskDirty((*a1 + 440), (a1 + 20));
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v16);
    sub_29A1DE3A4(&v15);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v14);
    sub_29A1DE3A4(&v13);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v12);
    return sub_29A1DE3A4(&v11);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxTaskController::SetSelectionLocateColor(_DWORD *a1, uint64_t a2)
{
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 38))
  {
    memset(v9, 0, sizeof(v9));
    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v4)
    {
      v4 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    sub_29AF03F8C((a1 + 6), a1 + 38, v4 + 55, v9);
    if (*&v9[24] != *a2 || *&v9[28] != *(a2 + 4) || *&v9[32] != *(a2 + 8) || *&v9[36] != *(a2 + 12))
    {
      *&v9[24] = *a2;
      v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v5)
      {
        v5 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      sub_29AEFE204((a1 + 6), a1 + 19, v5 + 55, v9);
      pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkTaskDirty((*a1 + 440), (a1 + 38));
    }
  }

  result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 40);
  if (result)
  {
    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v7)
    {
      v7 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    sub_29AF02288((a1 + 6), a1 + 40, v7 + 55, v9);
    if (*&v9[20] != *a2 || *&v9[24] != *(a2 + 4) || *&v9[28] != *(a2 + 8) || *&v9[32] != *(a2 + 12))
    {
      *&v9[20] = *a2;
      v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v8)
      {
        v8 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      sub_29AEFE33C((a1 + 6), a1 + 20, v8 + 55, v9);
      pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkTaskDirty((*a1 + 440), (a1 + 40));
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v15);
    sub_29A1DE3A4(&v14);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v13);
    sub_29A1DE3A4(&v12);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v11);
    return sub_29A1DE3A4(&v10);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxTaskController::SetSelectionEnableOutline(pxrInternal__aapl__pxrReserved__::HdxTaskController *this, int a2)
{
  result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(this + 40);
  if (result)
  {
    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v5)
    {
      v5 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    sub_29AF02288(this + 24, this + 40, v5 + 55, v7);
    if (v8 != a2)
    {
      v8 = a2;
      v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v6)
      {
        v6 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      sub_29AEFE33C(this + 24, this + 20, v6 + 55, v7);
      pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkTaskDirty((*this + 440), (this + 160));
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v14);
    sub_29A1DE3A4(&v13);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v12);
    sub_29A1DE3A4(&v11);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10);
    return sub_29A1DE3A4(&v9);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxTaskController::SetSelectionOutlineRadius(pxrInternal__aapl__pxrReserved__::HdxTaskController *this, int a2)
{
  result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(this + 40);
  if (result)
  {
    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v5)
    {
      v5 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    sub_29AF02288(this + 24, this + 40, v5 + 55, v7);
    if (v8 != a2)
    {
      v8 = a2;
      v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v6)
      {
        v6 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      sub_29AEFE33C(this + 24, this + 20, v6 + 55, v7);
      pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkTaskDirty((*this + 440), (this + 160));
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v14);
    sub_29A1DE3A4(&v13);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v12);
    sub_29A1DE3A4(&v11);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10);
    return sub_29A1DE3A4(&v9);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxTaskController::_SupportBuiltInLightTypes(pxrInternal__aapl__pxrReserved__::HdxTaskController *this)
{
  v1 = *this;
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v2)
  {
    v2 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  IsSprimTypeSupported = pxrInternal__aapl__pxrReserved__::HdRenderIndex::IsSprimTypeSupported(v1, v2 + 30);
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v4)
  {
    v4 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  if (pxrInternal__aapl__pxrReserved__::HdRenderIndex::IsSprimTypeSupported(v1, v4 + 35))
  {
    v5 = 1;
  }

  else
  {
    v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v6)
    {
      v6 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    v5 = pxrInternal__aapl__pxrReserved__::HdRenderIndex::IsSprimTypeSupported(v1, v6 + 29);
  }

  return IsSprimTypeSupported & v5;
}

void pxrInternal__aapl__pxrReserved__::HdxTaskController::_SetBuiltInLightingState(pxrInternal__aapl__pxrReserved__::HdxTaskController *a1, uint64_t *a2)
{
  v8 = *MEMORY[0x29EDCA608];
  v4 = sub_29B2CB954(a2);
  if (v5 & 1 | v4)
  {
    if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 24) || pxrInternal__aapl__pxrReserved__::HdxTaskController::_SupportBuiltInLightTypes(a1))
    {
      sub_29AF04E14(a2);
    }
  }

  else
  {
    __p[0] = "hdx/taskController.cpp";
    __p[1] = "_SetBuiltInLightingState";
    __p[2] = 1706;
    __p[3] = "void pxrInternal__aapl__pxrReserved__::HdxTaskController::_SetBuiltInLightingState(const GlfSimpleLightingContextPtr &)";
    v7 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(__p, 1, "Null lighting context");
  }
}

void sub_29AF04D60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF04E14(uint64_t *a1)
{
  if (a1[1])
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
  }

  sub_29B2CBA44(v1);
}

void *sub_29AF04E64(uint64_t a1, uint64_t *a2, uint64_t *a3, _OWORD *a4)
{
  v9 = a2;
  v6 = sub_29AEC0BF4(a1 + 24, a2, &unk_29B4D6118, &v9);
  v9 = a3;
  v7 = sub_29AC1E77C(v6 + 6, a3, &unk_29B4D6118, &v9);
  return sub_29A3FC3C4(v7 + 3, a4);
}

BOOL pxrInternal__aapl__pxrReserved__::HdxTaskController::SetLightingState(unsigned int *a1, uint64_t *a2)
{
  pxrInternal__aapl__pxrReserved__::HdxTaskController::_SetBuiltInLightingState(a1, a2);
  result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 24);
  if (result)
  {
    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v4)
    {
      v4 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    sub_29AEFEE60((a1 + 6), a1 + 24, v4 + 55, v5);
  }

  return result;
}

void sub_29AF050A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29AEBC888(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdxTaskController::SetRenderViewport(uint64_t this, uint64_t a2)
{
  if (*(this + 360) != *a2 || *(this + 368) != *(a2 + 8) || *(this + 376) != *(a2 + 16) || *(this + 384) != *(a2 + 24))
  {
    v4 = *(a2 + 16);
    *(this + 360) = *a2;
    *(this + 376) = v4;
    pxrInternal__aapl__pxrReserved__::HdxTaskController::_SetCameraFramingForTasks(this);
    v5 = *(a2 + 16) | (*(a2 + 24) << 32);
    pxrInternal__aapl__pxrReserved__::HdxTaskController::_UpdateAovDimensions(this, &v5);
  }
}

void pxrInternal__aapl__pxrReserved__::HdxTaskController::_UpdateAovDimensions(uint64_t *a1, int *a2)
{
  v2 = a1[31];
  v3 = a1[32];
  if (v2 != v3)
  {
    v5 = *a2;
    v6 = a2[1];
    v7 = *a1;
    do
    {
      v8 = atomic_load(&qword_2A174FED8);
      if (!v8)
      {
        v8 = sub_29AF06160();
      }

      sub_29AEFA5D8((a1 + 3), v2, v8 + 14, &v12);
      if (v12 != v5 || v13 != v6 || v14 != 1)
      {
        v12 = v5;
        v13 = v6;
        v14 = 1;
        v11 = atomic_load(&qword_2A174FED8);
        if (!v11)
        {
          v11 = sub_29AF06160();
        }

        sub_29AF011B4((a1 + 3), v2, v11 + 14, &v12);
        pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkBprimDirty((v7 + 440), v2);
      }

      v2 += 2;
    }

    while (v2 != v3);
  }
}

void pxrInternal__aapl__pxrReserved__::HdxTaskController::SetRenderBufferSize(uint64_t *a1, int *a2)
{
  if (*(a1 + 76) != *a2 || *(a1 + 77) != a2[1])
  {
    a1[38] = *a2;
    pxrInternal__aapl__pxrReserved__::HdxTaskController::_UpdateAovDimensions(a1, a2);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxTaskController::SetFraming(pxrInternal__aapl__pxrReserved__::HdxTaskController *this, const pxrInternal__aapl__pxrReserved__::CameraUtilFraming *a2)
{
  v2 = *a2;
  v3 = *(a2 + 1);
  *(this + 86) = *(a2 + 8);
  *(this + 312) = v2;
  *(this + 328) = v3;
  return pxrInternal__aapl__pxrReserved__::HdxTaskController::_SetCameraFramingForTasks(this);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxTaskController::SetOverrideWindowPolicy(uint64_t a1, int *a2)
{
  v2 = *a2;
  *(a1 + 352) = *(a2 + 4);
  *(a1 + 348) = v2;
  return pxrInternal__aapl__pxrReserved__::HdxTaskController::_SetCameraFramingForTasks(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxTaskController::_SetCameraParamForTasks(uint64_t this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v2 = (this + 216);
  if (*(this + 216) != *a2)
  {
    v4 = this;
    sub_29A2258F0((this + 216), a2);
    sub_29A225948((v4 + 220), a2 + 1);
    v5 = *(v4 + 112);
    if (v5 != *(v4 + 120))
    {
      v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v6)
      {
        v6 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      sub_29AEFF110(v4 + 24, v5, v6 + 55, &v10);
    }

    if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL((v4 + 96)))
    {
      v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v7)
      {
        v7 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      sub_29AEFEE60(v4 + 24, (v4 + 96), v7 + 55, &v10);
    }

    this = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL((v4 + 192));
    if (this)
    {
      v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v8)
      {
        v8 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      sub_29AF02400(v4 + 24, (v4 + 192), v8 + 55, &v10);
      sub_29A2258F0(&v11, v2);
      sub_29A225948(v12, (v4 + 220));
      v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v9)
      {
        v9 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      sub_29AEFE974(v4 + 24, (v4 + 192), v9 + 55, &v10);
      pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkTaskDirty((*v4 + 440), (v4 + 192));
      return sub_29AEE8844(&v10);
    }
  }

  return this;
}

void sub_29AF05580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29AEE8844(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdxTaskController::SetFreeCameraClipPlanes(uint64_t a1, float64x2_t **a2)
{
  v4 = *a2;
  v3 = a2[1];
  v5 = (v3 - *a2) >> 5;
  v7 = 0;
  v8 = 0;
  __p = 0;
  sub_29AF0BD14(&__p, v4, v3, v5);
  pxrInternal__aapl__pxrReserved__::HdxFreeCameraSceneDelegate::SetClipPlanes(*(a1 + 88), &__p);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }
}

void sub_29AF05660(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxTaskController::IsConverged(pxrInternal__aapl__pxrReserved__::HdRenderIndex **this)
{
  pxrInternal__aapl__pxrReserved__::HdxTaskController::GetRenderingTasks(this, &v10);
  v1 = v11;
  if (v10 != v11)
  {
    v2 = v10 + 16;
    v3 = 1;
    while (1)
    {
      v4 = *(v2 - 16);
      if (!v4)
      {
        break;
      }

      if (!v5)
      {
        break;
      }

      v6 = *(v2 - 8);
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v3)
      {
        v7 = 1;
        if ((*(*v5 + 56))(v5))
        {
          v3 = 1;
LABEL_11:
          v7 = 0;
          if (!v6)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v3 = 0;
          if (!v6)
          {
            goto LABEL_15;
          }
        }

LABEL_14:
        sub_29A014BEC(v6);
        goto LABEL_15;
      }

      v3 = 0;
      v7 = 1;
      if (v6)
      {
        goto LABEL_14;
      }

LABEL_15:
      if (v2 == v1)
      {
        v8 = 1;
      }

      else
      {
        v8 = v7;
      }

      v2 += 16;
      if (v8 == 1)
      {
        goto LABEL_23;
      }
    }

    v6 = 0;
    goto LABEL_11;
  }

  v3 = 1;
LABEL_23:
  v12 = &v10;
  sub_29A0176E4(&v12);
  return v3 & 1;
}

void sub_29AF057DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  if (v12)
  {
    sub_29A014BEC(v12);
  }

  a12 = &a9;
  sub_29A0176E4(&a12);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdxTaskController::SetColorCorrectionParams(pxrInternal__aapl__pxrReserved__::HdxTaskController *this, const pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTaskParams *a2)
{
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(this + 42))
  {
    v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v4)
    {
      v4 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    sub_29AEFF4BC(this + 24, this + 42, v4 + 55, v15);
    sub_29AECE7B8(v6, a2);
    sub_29A166F2C(&v14, &v23);
    if (pxrInternal__aapl__pxrReserved__::operator!=(v6, v15))
    {
      v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v5)
      {
        v5 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      sub_29AEFE688(this + 24, this + 21, v5 + 55, v6);
      pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkTaskDirty((*this + 440), (this + 168));
    }

    if ((v14 & 7) != 0)
    {
      atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v13 < 0)
    {
      operator delete(__p);
    }

    if (v11 < 0)
    {
      operator delete(v10);
    }

    if (v9 < 0)
    {
      operator delete(v8);
    }

    if (v7 < 0)
    {
      operator delete(v6[1]);
    }

    if ((v6[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((v6[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v23 & 7) != 0)
    {
      atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v22 < 0)
    {
      operator delete(v21);
    }

    if (v20 < 0)
    {
      operator delete(v19);
    }

    if (v18 < 0)
    {
      operator delete(v17);
    }

    if (v16 < 0)
    {
      operator delete(v15[1]);
    }

    if ((v15[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((v15[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }
}

void sub_29AF059D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  sub_29AECB604(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdxTaskController::SetBBoxParams(_DWORD *a1, uint64_t a2)
{
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 50))
  {
    v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v3)
    {
      v3 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    sub_29AF02708((a1 + 6), a1 + 50, v3 + 55, &v4);
  }
}

void sub_29AF05BBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if ((a16 & 7) != 0)
  {
    atomic_fetch_add_explicit((a16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxTaskController::SetEnablePresentation(pxrInternal__aapl__pxrReserved__::HdxTaskController *this, int a2)
{
  v10 = *MEMORY[0x29EDCA608];
  result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(this + 52);
  if (result)
  {
    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v5)
    {
      v5 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    sub_29AF05D8C(this + 24, this + 52, v5 + 55, &v7);
    if (v9 != a2)
    {
      v9 = a2;
      v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v6)
      {
        v6 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      sub_29AEFED1C(this + 24, this + 26, v6 + 55, &v7);
      pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkTaskDirty((*this + 440), (this + 208));
    }

    result = sub_29A186B14(&v8);
    if ((v7 & 7) != 0)
    {
      atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return result;
}

uint64_t sub_29AF05D8C@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v16[2] = *MEMORY[0x29EDCA608];
  v16[1] = 0;
  memset(v14, 0, sizeof(v14));
  v15 = 1065353216;
  if (!sub_29AF06108((a1 + 24), a2, v14) || (v6 = sub_29A16039C(v14, a3)) == 0 || (sub_29A1854E8(v16, v6 + 3), (sub_29AEE91D0(v16) & 1) == 0))
  {
    v12[0] = "hdx/taskController.h";
    v12[1] = "GetParameter";
    v12[2] = 347;
    v12[3] = "T pxrInternal__aapl__pxrReserved__::HdxTaskController::_Delegate::GetParameter(const SdfPath &, const TfToken &) const [T = pxrInternal__aapl__pxrReserved__::HdxPresentTaskParams]";
    v13 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v12, "TfMapLookup(_valueCacheMap, id, &vCache) && TfMapLookup(vCache, key, &vParams) && vParams.IsHolding<T>()", 0);
  }

  v7 = sub_29AF0BD90(v16);
  v8 = *v7;
  *a4 = *v7;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a4 = v9;
    }
  }

  sub_29A186EF4((a4 + 8), v7 + 1);
  v10 = *(v7 + 3);
  *(a4 + 40) = *(v7 + 40);
  *(a4 + 24) = v10;
  sub_29AC1E22C(v14);
  return sub_29A186B14(v16);
}

void sub_29AF05ECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_29AC1E22C(va);
  sub_29A186B14(v13 - 40);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdxTaskController::SetPresentationOutput(pxrInternal__aapl__pxrReserved__::HdxTaskController *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::VtValue *a3)
{
  v10[5] = *MEMORY[0x29EDCA608];
  result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(this + 52);
  if (result)
  {
    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v7)
    {
      v7 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    sub_29AF05D8C(this + 24, this + 52, v7 + 55, &v9);
    if ((*a2 ^ v9) <= 7)
    {
      pxrInternal__aapl__pxrReserved__::VtValue::operator==();
    }

    sub_29A166F2C(&v9, a2);
    sub_29A1854E8(v10, a3);
    v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v8)
    {
      v8 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    sub_29AEFED1C(this + 24, this + 26, v8 + 55, &v9);
    pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkTaskDirty((*this + 440), (this + 208));
    result = sub_29A186B14(v10);
    if ((v9 & 7) != 0)
    {
      atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return result;
}

void sub_29AF060B0(pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a1)
{
  *a1 = &unk_2A209C658;
  sub_29AEC007C(a1 + 24);
  pxrInternal__aapl__pxrReserved__::HdSceneDelegate::~HdSceneDelegate(a1);

  operator delete(v2);
}

BOOL sub_29AF06108(void *a1, unsigned int *a2, uint64_t a3)
{
  v4 = sub_29A328A44(a1, a2);
  v5 = v4;
  if (v4 && v4 + 3 != a3)
  {
    *(a3 + 32) = *(v4 + 14);
    sub_29AC9488C(a3, v4[5], 0);
  }

  return v5 != 0;
}

uint64_t *sub_29AF06160()
{
  v47 = *MEMORY[0x29EDCA608];
  v0 = operator new(0xB8uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "simpleLightTask");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "shadowTask");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 2, "aovInputTask");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 3, "selectionTask");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 4, "colorizeSelectionTask");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 5, "oitResolveTask");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 6, "colorCorrectionTask");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 7, "pickTask");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 8, "pickFromRenderBufferTask");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 9, "boundingBoxTask");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 10, "presentTask");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 11, "skydomeTask");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 12, "visualizeAovTask");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 13, "camera");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 14, "renderBufferDescriptor");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 15, "renderTags");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 16, "StageOrientation");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 17, "materialNetworkMap");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 18, "PxrDistantLight");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 19, "PxrDomeLight");
  v1 = v0 + 20;
  v2 = *v0;
  v27 = v2;
  if ((v2 & 7) != 0 && (atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v27 &= 0xFFFFFFFFFFFFFFF8;
  }

  v3 = v0[1];
  v28 = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v28 &= 0xFFFFFFFFFFFFFFF8;
  }

  v4 = v0[2];
  v29 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v29 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = v0[3];
  v30 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v30 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = v0[4];
  v31 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v31 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = v0[5];
  v32 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v32 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = v0[6];
  v33 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v33 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = v0[7];
  v34 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v34 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = v0[8];
  v35 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v35 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = v0[9];
  v36 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v36 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = v0[10];
  v37 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v37 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = v0[11];
  v38 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v38 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = v0[12];
  v39 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v39 &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = v0[13];
  v40 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v40 &= 0xFFFFFFFFFFFFFFF8;
  }

  v16 = v0[14];
  v41 = v16;
  if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v41 &= 0xFFFFFFFFFFFFFFF8;
  }

  v17 = v0[15];
  v42 = v17;
  if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v42 &= 0xFFFFFFFFFFFFFFF8;
  }

  v18 = v0[16];
  v43 = v18;
  if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v43 &= 0xFFFFFFFFFFFFFFF8;
  }

  v19 = v0[17];
  v44 = v19;
  if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v44 &= 0xFFFFFFFFFFFFFFF8;
  }

  v20 = v0[18];
  v45 = v20;
  if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v45 &= 0xFFFFFFFFFFFFFFF8;
  }

  v21 = v0[19];
  v46 = v21;
  if ((v21 & 7) != 0 && (atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v46 &= 0xFFFFFFFFFFFFFFF8;
  }

  *v1 = 0;
  v0[21] = 0;
  v0[22] = 0;
  sub_29A12EF7C(v1, &v27, &v47, 0x14uLL);
  for (i = 152; i != -8; i -= 8)
  {
    v23 = *(&v27 + i);
    if ((v23 & 7) != 0)
    {
      atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v24 = 0;
  atomic_compare_exchange_strong(&qword_2A174FED8, &v24, v0);
  if (v24)
  {
    v25 = sub_29AAC3F34(v0);
    operator delete(v25);
    return atomic_load(&qword_2A174FED8);
  }

  return v0;
}

void sub_29AF06734(_Unwind_Exception *a1)
{
  v4 = 152;
  while (1)
  {
    v5 = *(v2 + v4);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v4 -= 8;
    if (v4 == -8)
    {
      v6 = v1[19];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[18];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[17];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[16];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[15];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[14];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[13];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[12];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[11];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v15 = v1[10];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v16 = v1[9];
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v17 = v1[8];
      if ((v17 & 7) != 0)
      {
        atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v18 = v1[7];
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v19 = v1[6];
      if ((v19 & 7) != 0)
      {
        atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v20 = v1[5];
      if ((v20 & 7) != 0)
      {
        atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v21 = v1[4];
      if ((v21 & 7) != 0)
      {
        atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v22 = v1[3];
      if ((v22 & 7) != 0)
      {
        atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v23 = v1[2];
      if ((v23 & 7) != 0)
      {
        atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v24 = v1[1];
      if ((v24 & 7) != 0)
      {
        atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      operator delete(v1);
      _Unwind_Resume(a1);
    }
  }
}

void **sub_29AF069F0(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29AEBFAC0(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29AF06A84, &stru_2A209A888);
  }
}

double sub_29AF06A84@<D0>(void *a1@<X8>)
{
  v2 = operator new(0x14uLL);
  result = 0.0;
  *v2 = xmmword_29B6C2BB0;
  v2[16] = 0;
  *a1 = v2;
  a1[1] = sub_29AF06AD8;
  a1[2] = &stru_2A209A888;
  return result;
}

void sub_29AF06AD8(void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

void sub_29AF06B04(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A209C830;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

double sub_29AF06B70@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>)
{
  v6 = a1;
  sub_29AF06BE0(&v6, a3, &v5);
  result = *&v5;
  *a2 = v5;
  return result;
}

void sub_29AF06BB8(pxrInternal__aapl__pxrReserved__::HdLegacyTaskFactory *a1)
{
  pxrInternal__aapl__pxrReserved__::HdLegacyTaskFactory::~HdLegacyTaskFactory(a1);

  operator delete(v1);
}

void *sub_29AF06BE0@<X0>(pxrInternal__aapl__pxrReserved__::HdSceneDelegate **a1@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x90uLL);
  result = sub_29AF06C44(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;
  return result;
}

void *sub_29AF06C44(void *a1, pxrInternal__aapl__pxrReserved__::HdSceneDelegate **a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A209C8C0;
  pxrInternal__aapl__pxrReserved__::HdxOitRenderTask::HdxOitRenderTask((a1 + 3), *a2, a3);
  return a1;
}

void sub_29AF06CC4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A209C8C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AF06D50(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A209C910;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

double sub_29AF06DBC@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>)
{
  v6 = a1;
  sub_29AF06E2C(&v6, a3, &v5);
  result = *&v5;
  *a2 = v5;
  return result;
}

void sub_29AF06E04(pxrInternal__aapl__pxrReserved__::HdLegacyTaskFactory *a1)
{
  pxrInternal__aapl__pxrReserved__::HdLegacyTaskFactory::~HdLegacyTaskFactory(a1);

  operator delete(v1);
}

void *sub_29AF06E2C@<X0>(pxrInternal__aapl__pxrReserved__::HdSceneDelegate **a1@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x80uLL);
  result = sub_29AF06E90(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;
  return result;
}

void *sub_29AF06E90(void *a1, pxrInternal__aapl__pxrReserved__::HdSceneDelegate **a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A209C9A0;
  pxrInternal__aapl__pxrReserved__::HdxOitVolumeRenderTask::HdxOitVolumeRenderTask((a1 + 3), *a2, a3);
  return a1;
}

void sub_29AF06F10(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A209C9A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AF06F7C(uint64_t a1, __int128 *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  sub_29A186978(v4, a1);
  *(a1 + 8) = &off_2A209AB10;
  sub_29AEC2674(a1, a2);
}

void sub_29AF07010(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF0706C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A209C9F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

double sub_29AF070D8@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>)
{
  v6 = a1;
  sub_29AF07148(&v6, a3, &v5);
  result = *&v5;
  *a2 = v5;
  return result;
}

void sub_29AF07120(pxrInternal__aapl__pxrReserved__::HdLegacyTaskFactory *a1)
{
  pxrInternal__aapl__pxrReserved__::HdLegacyTaskFactory::~HdLegacyTaskFactory(a1);

  operator delete(v1);
}

void *sub_29AF07148@<X0>(pxrInternal__aapl__pxrReserved__::HdSceneDelegate **a1@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0xB0uLL);
  result = sub_29AF071AC(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;
  return result;
}

void *sub_29AF071AC(void *a1, pxrInternal__aapl__pxrReserved__::HdSceneDelegate **a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A209CA80;
  pxrInternal__aapl__pxrReserved__::HdxOitResolveTask::HdxOitResolveTask((a1 + 3), *a2, a3);
  return a1;
}

void sub_29AF0722C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A209CA80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF07298(uint64_t a1, _WORD *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  *(a1 + 8) = &off_2A209CAC0 + 1;
  *a1 = *a2;
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29AF0732C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_299FEDEEC(a1);
  }

  _Unwind_Resume(a1);
}

_WORD *sub_29AF07448@<X0>(_WORD *result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &off_2A209CAC0 + 1;
  *a2 = *result;
  return result;
}

void *sub_29AF07464(void *a1, uint64_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  sub_29A186978(v7, a1);
  a1[1] = &off_2A209CB78 + 2;
  v4 = operator new(0x2CuLL);
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 1) = v5;
  *(v4 + 4) = *(a2 + 32);
  atomic_store(0, v4 + 10);
  *a1 = v4;
  atomic_fetch_add_explicit(v4 + 10, 1u, memory_order_relaxed);
  if (v8)
  {
    (*(v8 + 32))(v7);
  }

  return a1;
}

void sub_29AF0751C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29AF07558(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29AF07574(atomic_uint **a1)
{
  v1 = *a1;
  if (v1)
  {
    if (atomic_fetch_add_explicit(v1 + 10, 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      operator delete(v1);
    }
  }
}

void *sub_29AF0759C(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

void *sub_29AF076B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  a2[1] = &off_2A209CB78 + 2;
  result = operator new(0x2CuLL);
  v5 = *(v3 + 32);
  v6 = *(v3 + 16);
  *result = *v3;
  *(result + 1) = v6;
  *(result + 4) = v5;
  atomic_store(0, result + 10);
  *a2 = result;
  atomic_fetch_add_explicit(result + 10, 1u, memory_order_relaxed);
  return result;
}

atomic_uint *sub_29AF07710(atomic_uint **a1)
{
  v1 = atomic_load(*a1 + 10);
  v2 = *a1;
  if (v1 == 1)
  {
    return *a1;
  }

  v3 = operator new(0x2CuLL);
  v5 = *(v2 + 4);
  v6 = *(v2 + 1);
  *v3 = *v2;
  *(v3 + 1) = v6;
  *(v3 + 4) = v5;
  atomic_store(0, v3 + 10);
  atomic_fetch_add_explicit(v3 + 10, 1u, memory_order_relaxed);
  if (atomic_fetch_add_explicit(v2 + 10, 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    operator delete(v2);
  }

  *a1 = v3;
  return v3;
}

void sub_29AF077CC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A209CC40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

double sub_29AF07838@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>)
{
  v6 = a1;
  sub_29AF078A8(&v6, a3, &v5);
  result = *&v5;
  *a2 = v5;
  return result;
}

void sub_29AF07880(pxrInternal__aapl__pxrReserved__::HdLegacyTaskFactory *a1)
{
  pxrInternal__aapl__pxrReserved__::HdLegacyTaskFactory::~HdLegacyTaskFactory(a1);

  operator delete(v1);
}

void *sub_29AF078A8@<X0>(pxrInternal__aapl__pxrReserved__::HdSceneDelegate **a1@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x108uLL);
  result = sub_29AF0790C(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;
  return result;
}

void *sub_29AF0790C(void *a1, pxrInternal__aapl__pxrReserved__::HdSceneDelegate **a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A209CCD0;
  pxrInternal__aapl__pxrReserved__::HdxColorizeSelectionTask::HdxColorizeSelectionTask((a1 + 3), *a2, a3);
  return a1;
}

void sub_29AF0798C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A209CCD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t *sub_29AF079F8(uint64_t *a1, __int128 *a2)
{
  v9 = *MEMORY[0x29EDCA608];
  sub_29A186978(v7, a1);
  a1[1] = &off_2A209CD10;
  v4 = operator new(0x48uLL);
  v5 = sub_29AF07D80(v4, a2);
  *a1 = v5;
  atomic_fetch_add_explicit((v5 + 68), 1u, memory_order_relaxed);
  if (v8)
  {
    (*(v8 + 32))(v7);
  }

  return a1;
}

void sub_29AF07AA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29AF07ADC(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 68), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29AF07AF8(atomic_uint **a1)
{
  v1 = *a1;
  if (v1)
  {
    sub_29AF07C6C(v1);
  }
}

void *sub_29AF07B08(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

uint64_t sub_29AF07C1C@<X0>(__int128 **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  a2[1] = &off_2A209CD10;
  v4 = operator new(0x48uLL);
  result = sub_29AF07D80(v4, v3);
  *a2 = result;
  atomic_fetch_add_explicit((result + 68), 1u, memory_order_relaxed);
  return result;
}

void sub_29AF07C6C(atomic_uint *a1)
{
  if (atomic_fetch_add_explicit(a1 + 17, 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    if (a1)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 16);
      sub_29A1DE3A4(a1 + 15);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 14);
      sub_29A1DE3A4(a1 + 13);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 12);
      sub_29A1DE3A4(a1 + 11);

      operator delete(a1);
    }
  }
}

atomic_uint *sub_29AF07D04(atomic_uint **a1)
{
  v1 = atomic_load(*a1 + 17);
  v2 = *a1;
  if (v1 == 1)
  {
    return *a1;
  }

  v3 = operator new(0x48uLL);
  atomic_fetch_add_explicit((sub_29AF07D80(v3, v2) + 68), 1u, memory_order_relaxed);
  if (*a1)
  {
    sub_29AF07C6C(*a1);
  }

  *a1 = v3;
  return v3;
}

uint64_t sub_29AF07D80(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  *(a1 + 28) = *(a2 + 28);
  *a1 = v4;
  *(a1 + 16) = v5;
  sub_29A1E21F4((a1 + 44), a2 + 11);
  sub_29A1E2240((a1 + 48), a2 + 12);
  sub_29A1E21F4((a1 + 52), a2 + 13);
  sub_29A1E2240((a1 + 56), a2 + 14);
  sub_29A1E21F4((a1 + 60), a2 + 15);
  sub_29A1E2240((a1 + 64), a2 + 16);
  atomic_store(0, (a1 + 68));
  return a1;
}

void sub_29AF07E08(uint64_t a1, _DWORD *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  sub_29A186978(v4, a1);
  *(a1 + 8) = &off_2A209ACB8;
  sub_29AEC2CC4(a1, a2);
}

void sub_29AF07E9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AF07ED8(void *a1, _OWORD *a2)
{
  v9 = *MEMORY[0x29EDCA608];
  sub_29A186978(v7, a1);
  a1[1] = &off_2A209AE60;
  v4 = operator new(0x40uLL);
  v5 = a2[1];
  *v4 = *a2;
  *(v4 + 1) = v5;
  *(v4 + 2) = a2[2];
  *(v4 + 44) = *(a2 + 44);
  atomic_store(0, v4 + 15);
  *a1 = v4;
  atomic_fetch_add_explicit(v4 + 15, 1u, memory_order_relaxed);
  if (v8)
  {
    (*(v8 + 32))(v7);
  }

  return a1;
}

void sub_29AF07F94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF07FF0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A209CDD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

double sub_29AF0805C@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>)
{
  v6 = a1;
  sub_29AF080CC(&v6, a3, &v5);
  result = *&v5;
  *a2 = v5;
  return result;
}

void sub_29AF080A4(pxrInternal__aapl__pxrReserved__::HdLegacyTaskFactory *a1)
{
  pxrInternal__aapl__pxrReserved__::HdLegacyTaskFactory::~HdLegacyTaskFactory(a1);

  operator delete(v1);
}

void *sub_29AF080CC@<X0>(pxrInternal__aapl__pxrReserved__::HdSceneDelegate **a1@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x128uLL);
  result = sub_29AF08130(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;
  return result;
}

void *sub_29AF08130(void *a1, pxrInternal__aapl__pxrReserved__::HdSceneDelegate **a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A209CE68;
  pxrInternal__aapl__pxrReserved__::HdxSkydomeTask::HdxSkydomeTask((a1 + 3), *a2, a3);
  return a1;
}

void sub_29AF081B0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A209CE68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AF0823C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A209CEB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

double sub_29AF082A8@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>)
{
  v6 = a1;
  sub_29AF08318(&v6, a3, &v5);
  result = *&v5;
  *a2 = v5;
  return result;
}

void sub_29AF082F0(pxrInternal__aapl__pxrReserved__::HdLegacyTaskFactory *a1)
{
  pxrInternal__aapl__pxrReserved__::HdLegacyTaskFactory::~HdLegacyTaskFactory(a1);

  operator delete(v1);
}

void *sub_29AF08318@<X0>(pxrInternal__aapl__pxrReserved__::HdSceneDelegate **a1@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x1F8uLL);
  result = sub_29AF0837C(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;
  return result;
}

void *sub_29AF0837C(void *a1, pxrInternal__aapl__pxrReserved__::HdSceneDelegate **a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A209CF48;
  pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTask::HdxColorCorrectionTask((a1 + 3), *a2, a3);
  return a1;
}

void sub_29AF083FC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A209CF48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF08468(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  *(a1 + 8) = &off_2A209CF88;
  sub_29AF08820(a1, a2);
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29AF084FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29AF08538(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 120), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29AF08558(atomic_uint **a1, atomic_uint **a2)
{
  *a2 = *a1;
  *a1 = 0;
  sub_29AF08684(a1);
}

uint64_t sub_29AF0866C@<X0>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_2A209CF88;
  return sub_29AF08820(a2, v2);
}

void sub_29AF08684(atomic_uint **a1)
{
  v1 = *a1;
  if (*a1 && atomic_fetch_add_explicit(v1 + 30, 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    v2 = *(v1 + 14);
    if ((v2 & 7) != 0)
    {
      atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (*(v1 + 103) < 0)
    {
      operator delete(*(v1 + 10));
    }

    if (*(v1 + 79) < 0)
    {
      operator delete(*(v1 + 7));
    }

    if (*(v1 + 55) < 0)
    {
      operator delete(*(v1 + 4));
    }

    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 1));
    }

    if ((*v1 & 7) != 0)
    {
      atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(v1);
  }
}

atomic_uint *sub_29AF08750(atomic_uint **a1)
{
  v2 = atomic_load(*a1 + 30);
  if (v2 != 1)
  {
    sub_29AF087B8(*a1, &v4);
    sub_29AF08684(a1);
    *a1 = v4;
    v4 = 0;
    sub_29AF08684(&v4);
  }

  return *a1;
}

uint64_t sub_29AF087B8@<X0>(uint64_t *a1@<X0>, unsigned int **a2@<X8>)
{
  v4 = operator new(0x80uLL);
  result = sub_29AECE7B8(v4, a1);
  atomic_store(0, v4 + 30);
  *a2 = v4;
  atomic_fetch_add_explicit(v4 + 30, 1u, memory_order_relaxed);
  return result;
}

uint64_t sub_29AF08820(unsigned int **a1, uint64_t *a2)
{
  v4 = operator new(0x80uLL);
  result = sub_29AECE7B8(v4, a2);
  atomic_store(0, v4 + 30);
  *a1 = v4;
  atomic_fetch_add_explicit(v4 + 30, 1u, memory_order_relaxed);
  return result;
}

void sub_29AF088A8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A209D050;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

double sub_29AF08914@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>)
{
  v6 = a1;
  sub_29AF08984(&v6, a3, &v5);
  result = *&v5;
  *a2 = v5;
  return result;
}

void sub_29AF0895C(pxrInternal__aapl__pxrReserved__::HdLegacyTaskFactory *a1)
{
  pxrInternal__aapl__pxrReserved__::HdLegacyTaskFactory::~HdLegacyTaskFactory(a1);

  operator delete(v1);
}

void *sub_29AF08984@<X0>(pxrInternal__aapl__pxrReserved__::HdSceneDelegate **a1@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x118uLL);
  result = sub_29AF089E8(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;
  return result;
}

void *sub_29AF089E8(void *a1, pxrInternal__aapl__pxrReserved__::HdSceneDelegate **a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A209D0E0;
  pxrInternal__aapl__pxrReserved__::HdxVisualizeAovTask::HdxVisualizeAovTask((a1 + 3), *a2, a3);
  return a1;
}

void sub_29AF08A68(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A209D0E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF08AD4(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  *(a1 + 8) = &off_2A209D120;
  sub_29AF08DFC(a1, a2);
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29AF08B68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29AF08BA4(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29AF08BC4(atomic_uint **a1, atomic_uint **a2)
{
  *a2 = *a1;
  *a1 = 0;
  sub_29AF08CF0(a1);
}

unsigned int *sub_29AF08CD8@<X0>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_2A209D120;
  return sub_29AF08DFC(a2, v2);
}

void sub_29AF08CF0(atomic_uint **a1)
{
  v1 = *a1;
  if (v1 && atomic_fetch_add_explicit(v1 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    if ((*v1 & 7) != 0)
    {
      atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(v1);
  }
}

atomic_uint *sub_29AF08D30(atomic_uint **a1)
{
  v2 = atomic_load(*a1 + 2);
  if (v2 != 1)
  {
    sub_29AF08D98(*a1, &v4);
    sub_29AF08CF0(a1);
    *a1 = v4;
    v4 = 0;
    sub_29AF08CF0(&v4);
  }

  return *a1;
}

unsigned int *sub_29AF08D98@<X0>(uint64_t *a1@<X0>, unsigned int **a2@<X8>)
{
  result = operator new(0x10uLL);
  v5 = *a1;
  *result = *a1;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      *result = v6;
    }
  }

  atomic_store(0, result + 2);
  *a2 = result;
  atomic_fetch_add_explicit(result + 2, 1u, memory_order_relaxed);
  return result;
}

unsigned int *sub_29AF08DFC(unsigned int **a1, uint64_t *a2)
{
  result = operator new(0x10uLL);
  v5 = *a2;
  *result = *a2;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      *result = v6;
    }
  }

  atomic_store(0, result + 2);
  *a1 = result;
  atomic_fetch_add_explicit(result + 2, 1u, memory_order_relaxed);
  return result;
}

void sub_29AF08E80(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A209D1F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

double sub_29AF08EEC@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>)
{
  v6 = a1;
  sub_29AF08F5C(&v6, a3, &v5);
  result = *&v5;
  *a2 = v5;
  return result;
}

void sub_29AF08F34(pxrInternal__aapl__pxrReserved__::HdLegacyTaskFactory *a1)
{
  pxrInternal__aapl__pxrReserved__::HdLegacyTaskFactory::~HdLegacyTaskFactory(a1);

  operator delete(v1);
}

void *sub_29AF08F5C@<X0>(pxrInternal__aapl__pxrReserved__::HdSceneDelegate **a1@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x2C8uLL);
  result = sub_29AF08FC0(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;
  return result;
}

void *sub_29AF08FC0(void *a1, pxrInternal__aapl__pxrReserved__::HdSceneDelegate **a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A209D288;
  pxrInternal__aapl__pxrReserved__::HdxPickFromRenderBufferTask::HdxPickFromRenderBufferTask((a1 + 3), *a2, a3);
  return a1;
}

void sub_29AF09040(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A209D288;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t *sub_29AF090AC(uint64_t *a1, uint64_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  sub_29A186978(v7, a1);
  a1[1] = &off_2A209D2C8;
  v4 = operator new(0x88uLL);
  v5 = sub_29AF093E4(v4, a2);
  *a1 = v5;
  atomic_fetch_add_explicit((v5 + 128), 1u, memory_order_relaxed);
  if (v8)
  {
    (*(v8 + 32))(v7);
  }

  return a1;
}

void sub_29AF09154(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29AF09190(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 128), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29AF091B0(_DWORD **a1, void *a2)
{
  *a2 = *a1;
  *a1 = 0;
  sub_29AF09314(a1);
}

uint64_t sub_29AF092C4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  a2[1] = &off_2A209D2C8;
  v4 = operator new(0x88uLL);
  result = sub_29AF093E4(v4, v3);
  *a2 = result;
  atomic_fetch_add_explicit((result + 128), 1u, memory_order_relaxed);
  return result;
}

void sub_29AF09314(_DWORD **a1)
{
  v2 = *a1;
  if (v2 && atomic_fetch_add_explicit(v2 + 32, 0xFFFFFFFF, memory_order_release) == 1)
  {
    v4 = v1;
    __dmb(9u);
    v3 = sub_29AEE8844(v2);

    operator delete(v3);
  }
}

uint64_t sub_29AF09360(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 128));
  if (v2 != 1)
  {
    v3 = *a1;
    v4 = operator new(0x88uLL);
    atomic_fetch_add_explicit((sub_29AF093E4(v4, v3) + 128), 1u, memory_order_relaxed);
    sub_29AF09314(a1);
    *a1 = v4;
    v6 = 0;
    sub_29AF09314(&v6);
  }

  return *a1;
}

uint64_t sub_29AF093E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_29A1E21F4(a1, a2);
  sub_29A1E2240(v4 + 1, (a2 + 4));
  sub_29A1E21F4((a1 + 8), (a2 + 8));
  sub_29A1E2240((a1 + 12), (a2 + 12));
  sub_29A1E21F4((a1 + 16), (a2 + 16));
  sub_29A1E2240((a1 + 20), (a2 + 20));
  sub_29A1E21F4((a1 + 24), (a2 + 24));
  sub_29A1E2240((a1 + 28), (a2 + 28));
  sub_29A1E21F4((a1 + 32), (a2 + 32));
  sub_29A1E2240((a1 + 36), (a2 + 36));
  sub_29A1E21F4((a1 + 40), (a2 + 40));
  sub_29A1E2240((a1 + 44), (a2 + 44));
  *(a1 + 48) = *(a2 + 48);
  v5 = *(a2 + 64);
  v6 = *(a2 + 80);
  v7 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  atomic_store(0, (a1 + 128));
  return a1;
}

void sub_29AF094D4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A209D390;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

double sub_29AF09540@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>)
{
  v6 = a1;
  sub_29AF095B0(&v6, a3, &v5);
  result = *&v5;
  *a2 = v5;
  return result;
}

void sub_29AF09588(pxrInternal__aapl__pxrReserved__::HdLegacyTaskFactory *a1)
{
  pxrInternal__aapl__pxrReserved__::HdLegacyTaskFactory::~HdLegacyTaskFactory(a1);

  operator delete(v1);
}

void *sub_29AF095B0@<X0>(pxrInternal__aapl__pxrReserved__::HdSceneDelegate **a1@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x160uLL);
  result = sub_29AF09614(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;
  return result;
}

void *sub_29AF09614(void *a1, pxrInternal__aapl__pxrReserved__::HdSceneDelegate **a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A209D420;
  pxrInternal__aapl__pxrReserved__::HdxBoundingBoxTask::HdxBoundingBoxTask((a1 + 3), *a2, a3);
  return a1;
}

void sub_29AF09694(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A209D420;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AF09700(uint64_t a1, uint64_t *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  sub_29A186978(v4, a1);
  *(a1 + 8) = &off_2A209D460;
  sub_29AF09B24(a1, a2);
}

void sub_29AF09794(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29AF097D0(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 56), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29AF097F0(atomic_uint **a1, atomic_uint **a2)
{
  *a2 = *a1;
  *a1 = 0;
  sub_29AF0991C(a1);
}

void sub_29AF09904(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_2A209D460;
  sub_29AF09B24(a2, v2);
}

void sub_29AF0991C(atomic_uint **a1)
{
  v1 = *a1;
  if (*a1 && atomic_fetch_add_explicit(v1 + 14, 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    v2 = *(v1 + 1);
    if (v2)
    {
      *(v1 + 2) = v2;
      operator delete(v2);
    }

    if ((*v1 & 7) != 0)
    {
      atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(v1);
  }
}

atomic_uint *sub_29AF099A0(atomic_uint **a1)
{
  v1 = atomic_load(*a1 + 14);
  if (v1 != 1)
  {
    sub_29AF09A08(*a1);
  }

  return *a1;
}

void sub_29AF09A6C(void *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  if ((v2 & 7) != 0 && (atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::GfBBox3d>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::GfBBox3d*,pxrInternal__aapl__pxrReserved__::GfBBox3d*>();
}

void sub_29AF09BA8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A209D528;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

double sub_29AF09C14@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>)
{
  v6 = a1;
  sub_29AF09C84(&v6, a3, &v5);
  result = *&v5;
  *a2 = v5;
  return result;
}

void sub_29AF09C5C(pxrInternal__aapl__pxrReserved__::HdLegacyTaskFactory *a1)
{
  pxrInternal__aapl__pxrReserved__::HdLegacyTaskFactory::~HdLegacyTaskFactory(a1);

  operator delete(v1);
}

void *sub_29AF09C84@<X0>(pxrInternal__aapl__pxrReserved__::HdSceneDelegate **a1@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x98uLL);
  result = sub_29AF09CE8(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;
  return result;
}

void *sub_29AF09CE8(void *a1, pxrInternal__aapl__pxrReserved__::HdSceneDelegate **a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A209D5B8;
  pxrInternal__aapl__pxrReserved__::HdxAovInputTask::HdxAovInputTask((a1 + 3), *a2, a3);
  return a1;
}

void sub_29AF09D68(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A209D5B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t *sub_29AF09DD4(uint64_t *a1, _DWORD *a2)
{
  v9 = *MEMORY[0x29EDCA608];
  sub_29A186978(v7, a1);
  a1[1] = &off_2A209D5F8;
  v4 = operator new(0x14uLL);
  v5 = sub_29AF0A140(v4, a2);
  *a1 = v5;
  atomic_fetch_add_explicit(v5 + 4, 1u, memory_order_relaxed);
  if (v8)
  {
    (*(v8 + 32))(v7);
  }

  return a1;
}

void sub_29AF09E7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29AF09EB8(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1u, memory_order_relaxed);
  }

  return result;
}