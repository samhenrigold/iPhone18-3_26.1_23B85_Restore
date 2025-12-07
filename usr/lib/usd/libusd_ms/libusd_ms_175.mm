const pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet ***pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver::PrimsDirtied(const pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet ***result, uint64_t a2, uint64_t a3)
{
  v16[7] = *MEMORY[0x29EDCA608];
  if (result[70])
  {
    v3 = *(a3 + 7428) >= 0x11u ? *a3 : a3;
    v4 = *(a3 + 7424);
    if (v4)
    {
      v5 = result;
      v6 = 464 * v4;
      do
      {
        if (!pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::Intersects((v3 + 8), v5 + 8))
        {
          if ((atomic_load_explicit(&qword_2A1750C50, memory_order_acquire) & 1) == 0)
          {
            v8 = __cxa_guard_acquire(&qword_2A1750C50);
            if (v8)
            {
              DefaultLocator = pxrInternal__aapl__pxrReserved__::HdXformSchema::GetDefaultLocator(v8);
              sub_29ABD30AC(v15, DefaultLocator);
              v16[0] = v15;
              v16[1] = 1;
              pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::HdDataSourceLocatorSet(&unk_2A1750A88, v16);
              sub_29ABC3488(v15);
              __cxa_atexit(sub_29ABE62AC, &unk_2A1750A88, &dword_299FE7000);
              __cxa_guard_release(&qword_2A1750C50);
            }
          }

          if (pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::Intersects((v3 + 8), &unk_2A1750A88))
          {
            if ((atomic_load_explicit(&qword_2A1750E20, memory_order_acquire) & 1) == 0)
            {
              v10 = __cxa_guard_acquire(&qword_2A1750E20);
              if (v10)
              {
                v13 = pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetDefaultLocator(v10);
                v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
                if (!v11)
                {
                  v11 = sub_29ABD4260(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
                }

                pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(v16, v13, v11 + 6);
                v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
                if (!v12)
                {
                  v12 = sub_29ABEC6D0(&pxrInternal__aapl__pxrReserved__::HdPrimvarSchemaTokens);
                }

                pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(v15, v16, v12);
                v14[0] = v15;
                v14[1] = 1;
                pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::HdDataSourceLocatorSet(&unk_2A1750C58, v14);
                sub_29ABC3488(v15);
                sub_29ABC3488(v16);
                __cxa_atexit(sub_29ABE62AC, &unk_2A1750C58, &dword_299FE7000);
                __cxa_guard_release(&qword_2A1750E20);
              }
            }

            pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver::_DirtyInstancerForInstance(v5, v3, &unk_2A1750C58);
          }

          v15[56] = 0x800000000;
          LOBYTE(v16[0]) = 0;
          pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValueLocatorsAndNeedsResyncFlag((v3 + 8), v15, v16, v7);
          if (LOBYTE(v16[0]) == 1)
          {
            pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver::_RemovePrim(v5, v3);
            pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver::_AddPrim(v5, v3);
          }

          else if (!pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::IsEmpty(v15))
          {
            pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver::_DirtyInstancerForInstance(v5, v3, v15);
          }

          sub_29ABD3178(v15);
        }

        pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver::_RemovePrim(v5, v3);
        result = pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver::_AddPrim(v5, v3);
        v3 += 464;
        v6 -= 464;
      }

      while (v6);
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver::_DirtyInstancerForInstance(pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet *a3)
{
  v3 = MEMORY[0x2A1C7C4A8](this);
  v5 = v4;
  v6 = v3;
  v15 = *MEMORY[0x29EDCA608];
  result = sub_29A55CDFC(v3 + 544, v7);
  if (v6 + 552 != result)
  {
    sub_29AF2A21C(result + 40, &v10);
    v9 = sub_29AF2A104((v6 + 24));
    sub_29ABD2F24(&v11, &v10, v5);
    v14 = 0x1000000001;
    sub_29ABD3720(&v11, v13, v13);
    (*(*v9 + 56))(v9, v13);
    sub_29ABD3844(v13);
    sub_29ABD3178(&v12);
  }

  return result;
}

void sub_29AF28DA8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_299FEDEEC(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver::PrimsRemoved(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 560))
  {
    v3 = *(a3 + 128);
    v4 = *(a3 + 132) >= 0x11u ? *a3 : a3;
    if (v3)
    {
      v5 = v4 + 8 * v3;
      do
      {
        if (*(result + 552))
        {
          pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
        }

        v4 += 8;
      }

      while (v4 != v5);
    }
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver::_RemoveInstance(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v30 = *MEMORY[0x29EDCA608];
  v7 = *v2;
  sub_29AF2A21C((*v2 + 5), &v23);
  v8 = pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver::_RemoveInstanceFromInfoToInstance(v6, v5, (v7 + 5));
  if (v8)
  {
    v9 = sub_29AF2A104((v6 + 24));
    sub_29A1E21F4(&v24, v5);
    sub_29A1E2240(&v24 + 1, v5 + 1);
    v28 = 0x1000000001;
    sub_29A1E21F4(v26, &v24);
    sub_29A1E2240(v26 + 1, &v24 + 1);
    (*(*v9 + 48))(v9, v26);
    sub_29AC26348(v26);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v24 + 1);
    sub_29A1DE3A4(&v24);
    if (v8 == 1)
    {
      if ((atomic_load_explicit(&qword_2A1751390, memory_order_acquire) & 1) == 0)
      {
        v16 = __cxa_guard_acquire(&qword_2A1751390);
        if (v16)
        {
          DefaultLocator = pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchema::GetDefaultLocator(v16);
          v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
          if (!v18)
          {
            v18 = sub_29ABED5F8(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
          }

          pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(v26, DefaultLocator, v18 + 2);
          v20 = pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetDefaultLocator(v19);
          sub_29ABD30AC(v27, v20);
          v24 = v26;
          v25[0] = 2;
          pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::HdDataSourceLocatorSet(&unk_2A17511C8, &v24);
          for (i = 7; i != -7; i -= 7)
          {
            sub_29ABC3488(&v26[i]);
          }

          __cxa_atexit(sub_29ABE62AC, &unk_2A17511C8, &dword_299FE7000);
          __cxa_guard_release(&qword_2A1751390);
        }
      }

      v10 = sub_29AF2A104((v6 + 24));
      sub_29ABD2F24(&v24, &v23, &unk_2A17511C8);
      v29 = 0x1000000001;
      sub_29ABD3720(&v24, v26, v26);
      (*(*v10 + 56))(v10, v26);
      sub_29ABD3844(v26);
      sub_29ABD3178(v25);
    }

    v11 = sub_29AF2A104((v6 + 24));
    sub_29A1E21F4(&v24, &v23);
    sub_29A1E2240(&v24 + 1, &v23 + 1);
    v28 = 0x1000000001;
    sub_29A1E21F4(v26, &v24);
    sub_29A1E2240(v26 + 1, &v24 + 1);
    (*(*v11 + 48))(v11, v26);
    sub_29AC26348(v26);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v24 + 1);
    sub_29A1DE3A4(&v24);
    sub_29AF43F04((v6 + 568), &v23);
    if (v8 >= 3)
    {
      v12 = sub_29AF2A104((v6 + 24));
      sub_29AF2A184(&v22, (v7 + 5));
      sub_29A1E21F4(&v24, &v22);
      sub_29A1E2240(&v24 + 1, &v22 + 1);
      v28 = 0x1000000001;
      sub_29A1E21F4(v26, &v24);
      sub_29A1E2240(v26 + 1, &v24 + 1);
      (*(*v12 + 48))(v12, v26);
      sub_29AC26348(v26);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v24 + 1);
      sub_29A1DE3A4(&v24);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v22 + 1);
      sub_29A1DE3A4(&v22);
    }
  }

  v13 = *v3;
  v14 = sub_29A03AFE8((v6 + 544), v13);
  sub_29AF40ED4((v13 + 4));
  operator delete(v13);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v23 + 1);
  sub_29A1DE3A4(&v23);
  return v14;
}

void sub_29AF29348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v4 = &STACK[0x218];
  v5 = -112;
  do
  {
    v4 = (sub_29ABC3488(v4) - 56);
    v5 += 56;
  }

  while (v5);
  __cxa_guard_abort(&qword_2A1751390);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver::_AddPrim(pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver::_GetInfo(&v4, this);
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver::_AddInstance(this);
  }

  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v4 + 1);
  return sub_29A1DE3A4(&v4);
}

void sub_29AF294DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29AF2967C(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver::_GetInfo(uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((a3 + 4));
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetUsdPrototypeName(&v7, a2);
  v5 = *(a3 + 16);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = v7;
  *(a3 + 16) = v7;
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrototypeRoot(a2, &v7);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
  }
}

_DWORD *sub_29AF2967C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 8);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));

  return sub_29A1DE3A4(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver::_GetInfo(uint64_t *__return_ptr a1@<X8>, pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver *this@<X0>)
{
  v3 = sub_29AC1199C(this + 2);
  (*(*v3 + 16))(&v4);
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver::_GetInfo(&v5, a1);
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29AF29790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  sub_29B294B14(&a10);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver::_AddInstance(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v3 = v2;
  v4 = v1;
  v36 = *MEMORY[0x29EDCA608];
  v28 = v2;
  v5 = sub_29A389294((v1 + 520), v2, &unk_29B4D6118, &v28, &v26);
  v28 = v3 + 1;
  v6 = sub_29A166C1C(v5 + 5, v3 + 1, &unk_29B4D6118, &v28, &v26);
  if (!v6[7])
  {
    v7 = sub_29AF2A104((v4 + 24));
    sub_29AF2A184(&v28, v3);
    v29 = 0;
    v8 = sub_29AC1199C((v4 + 16));
    (*(*v8 + 16))(&v24);
    pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_MakeBindingCopy(&v24 + 8, (v4 + 40), &v30);
    v26 = 0;
    v27[0] = 0;
    v27[1] = 0;
    sub_29AC3E6DC(&v26, &v28, &v31, 1uLL);
    (*(*v7 + 40))(v7, &v26);
    *&v22 = &v26;
    sub_29AC3E968(&v22);
    if (*(&v30 + 1))
    {
      sub_29A014BEC(*(&v30 + 1));
    }

    if ((v29 & 7) != 0)
    {
      atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v28 + 1);
    sub_29A1DE3A4(&v28);
    if (v25)
    {
      sub_29A014BEC(v25);
    }

    if ((v24 & 7) != 0)
    {
      atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  sub_29AF2A21C(v3, &v23);
  v28 = v3 + 2;
  v9 = sub_29AF41074(v6 + 5, v3 + 2, &unk_29B4D6118, &v28, &v26);
  if (v9[5])
  {
    if ((atomic_load_explicit(&qword_2A17511C0, memory_order_acquire) & 1) == 0)
    {
      v15 = __cxa_guard_acquire(&qword_2A17511C0);
      if (v15)
      {
        DefaultLocator = pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchema::GetDefaultLocator(v15);
        v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
        if (!v17)
        {
          v17 = sub_29ABED5F8(&pxrInternal__aapl__pxrReserved__::HdInstancerTopologySchemaTokens);
        }

        pxrInternal__aapl__pxrReserved__::HdDataSourceLocator::Append(&v28, DefaultLocator, v17 + 2);
        v19 = pxrInternal__aapl__pxrReserved__::HdPrimvarsSchema::GetDefaultLocator(v18);
        sub_29ABD30AC(&v34 + 2, v19);
        v26 = &v28;
        v27[0] = 2;
        pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::HdDataSourceLocatorSet(&qword_2A1750FF8, &v26);
        for (i = 7; i != -7; i -= 7)
        {
          sub_29ABC3488(&(&v28)[i]);
        }

        __cxa_atexit(sub_29ABE62AC, &qword_2A1750FF8, &dword_299FE7000);
        __cxa_guard_release(&qword_2A17511C0);
      }
    }

    v10 = sub_29AF2A104((v4 + 24));
    sub_29ABD2F24(&v26, &v23, &qword_2A1750FF8);
    v35 = 0x1000000001;
    sub_29ABD3720(&v26, &v28, &v28);
    (*(*v10 + 56))(v10, &v28);
    sub_29ABD3844(&v28);
    sub_29ABD3178(v27);
  }

  v11 = operator new(0x30uLL);
  v11[1] = 0;
  v11[2] = 0;
  *v11 = &unk_2A20A1160;
  v11[5] = 0;
  v11[4] = 0;
  v11[3] = v11 + 4;
  v12 = v9[6];
  v9[5] = (v11 + 3);
  v9[6] = v11;
  if (v12)
  {
    sub_29A014BEC(v12);
  }

  sub_29AF2A104((v4 + 24));
  sub_29AF2A2A8(v3, &v28);
  v29 = 0;
  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(&v24);
  v30 = v24;
  v24 = 0uLL;
  sub_29A1E21F4(&v31, &v23);
  sub_29A1E2240(&v32, &v23 + 1);
  v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v13)
  {
    v13 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  v14 = *(v13 + 21);
  v33 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v33 &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29AF2A3BC(v3, &v21);
  sub_29AF2A320((v4 + 16), v3, &v21, v9 + 5, (v4 + 32));
}

void sub_29AF29ECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  v12 = &STACK[0x258];
  v13 = -112;
  do
  {
    v12 = (sub_29ABC3488(v12) - 56);
    v13 += 56;
  }

  while (v13);
  __cxa_guard_abort(&qword_2A17511C0);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AF2A104(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    v7 = v2;
    v8 = v1;
    v9 = v3;
    v10 = v4;
    v6 = j__strrchr("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/base/tf/refPtr.h", 47);
    FunctionLite::substringFromPreviousDelim("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/base/tf/refPtr.h", v6, 0x2F);
  }

  return result;
}

uint64_t *sub_29AF2A184@<X0>(uint64_t *__return_ptr a1@<X8>, pxrInternal__aapl__pxrReserved__::SdfPath *this@<X0>)
{
  v4 = atomic_load(&qword_2A1751588);
  if (!v4)
  {
    v4 = sub_29AF40AB0();
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(&v6, this, v4);
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(a1, &v6, (this + 8));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v6 + 1);
  return sub_29A1DE3A4(&v6);
}

void sub_29AF2A208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_29AF2A21C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_29AF2A2A8(a1, &v5);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImaging_NiPrototypeSceneIndexTokens);
  if (!v3)
  {
    v3 = sub_29AF40CCC(&pxrInternal__aapl__pxrReserved__::UsdImaging_NiPrototypeSceneIndexTokens);
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(a2, &v5, v3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v5 + 1);
  return sub_29A1DE3A4(&v5);
}

void sub_29AF2A294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_29AF2A2A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_29AF2A184(&v5, a1);
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(a2, &v5, (a1 + 16));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v5 + 1);
  return sub_29A1DE3A4(&v5);
}

void sub_29AF2A30C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_29AF2A3BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_29AF2A21C(a1, &v5);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImaging_NiPrototypeSceneIndexTokens);
  if (!v3)
  {
    v3 = sub_29AF40CCC(&pxrInternal__aapl__pxrReserved__::UsdImaging_NiPrototypeSceneIndexTokens);
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(a2, &v5, (v3 + 8));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v5 + 1);
  return sub_29A1DE3A4(&v5);
}

void sub_29AF2A438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver::_GetDataSourceForInstance@<X0>(uint64_t *__return_ptr a1@<X8>, pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X1>)
{
  v22 = *MEMORY[0x29EDCA608];
  v5 = sub_29AF43FB8(&v16, this);
  SchemaToken = pxrInternal__aapl__pxrReserved__::HdInstanceSchema::GetSchemaToken(v5);
  v10 = v16;
  if (*(&v16 + 1))
  {
    atomic_fetch_add_explicit((*(&v16 + 1) + 8), 1u, memory_order_relaxed);
  }

  sub_29A1E21F4(&v11, a3);
  sub_29A1E2240(v12, a3 + 1);
  v7 = operator new(0x38uLL);
  v17 = v10;
  sub_29A1E21F4(&v18, &v11);
  sub_29A1E2240(&v19, v12);
  v8 = operator new(0x20uLL);
  *v8 = &unk_2A20A17C0;
  *(v8 + 8) = v17;
  v17 = 0uLL;
  sub_29A1E21F4(v8 + 6, &v18);
  sub_29A1E2240(v8 + 7, &v19);
  v21 = v8;
  pxrInternal__aapl__pxrReserved__::HdLazyContainerDataSource::HdLazyContainerDataSource(v7);
  sub_29AF44244(&v13, v7);
  sub_29AC38844(v20);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v19);
  sub_29B2A0A84(&v18, &v17 + 1);
  v14 = v13;
  v13 = 0uLL;
  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(SchemaToken, &v14, v15);
  sub_29B2CBDE4(v15, a1, &v14 + 1, &v13 + 1);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v12);
  sub_29A1DE3A4(&v11);
  result = *(&v16 + 1);
  if (*(&v16 + 1))
  {
    if (atomic_fetch_add_explicit((*(&v16 + 1) + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void sub_29AF2A688(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver::_DirtyInstancesAndResetPointer(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v15 = *MEMORY[0x29EDCA608];
  v3 = *v2;
  if (*v2)
  {
    v4 = v1;
    v5 = *(v2 + 8);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      v6 = *(v2 + 8);
      *v2 = 0;
      *(v2 + 8) = 0;
      if (v6)
      {
        sub_29A014BEC(v6);
      }
    }

    else
    {
      *v2 = 0;
      *(v2 + 8) = 0;
    }

    v7 = *v3;
    if (*v3 != v3 + 1)
    {
      if ((atomic_load_explicit(qword_2A1751560, memory_order_acquire) & 1) == 0)
      {
        v9 = __cxa_guard_acquire(qword_2A1751560);
        if (v9)
        {
          DefaultLocator = pxrInternal__aapl__pxrReserved__::HdInstanceSchema::GetDefaultLocator(v9);
          sub_29ABD30AC(v13, DefaultLocator);
          v11 = v13;
          v12[0] = 1;
          pxrInternal__aapl__pxrReserved__::HdDataSourceLocatorSet::HdDataSourceLocatorSet(&unk_2A1751398, &v11);
          sub_29ABC3488(v13);
          __cxa_atexit(sub_29ABE62AC, &unk_2A1751398, &dword_299FE7000);
          __cxa_guard_release(qword_2A1751560);
        }
      }

      v8 = sub_29AF2A104((v4 + 24));
      sub_29ABD2F24(&v11, v7 + 7, &unk_2A1751398);
      v14 = 0x1000000001;
      sub_29ABD3720(&v11, v13, v13);
      (*(*v8 + 56))(v8, v13);
      sub_29ABD3844(v13);
      sub_29ABD3178(v12);
    }

    if (v5)
    {
      sub_29A014BEC(v5);
    }
  }
}

void sub_29AF2A980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_29ABC3488(&a65);
  __cxa_guard_abort(qword_2A1751560);
  if (v65)
  {
    sub_29A014BEC(v65);
  }

  _Unwind_Resume(a1);
}

void sub_29AF2A9E0(void *a1, int a2)
{
  if (a2)
  {
    sub_299FEDEEC(a1);
  }

  JUMPOUT(0x29AF2A9D8);
}

pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver *pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver::_RemovePrim(pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  result = sub_29A55CDFC(this + 544, a2);
  if ((this + 552) != result)
  {
    return pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver::_RemoveInstance(this);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver::_RemoveInstanceFromInfoToInstance(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29A55CDFC(a1 + 520, a3);
  if (a1 + 528 == v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = sub_29A31B8F0(v6 + 40, (a3 + 8));
  if (v7 + 48 == v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = sub_29A31B8F0(v8 + 40, (a3 + 16));
  if (v9 + 48 == v10)
  {
    return 0;
  }

  v11 = v10;
  sub_29A389594(*(v10 + 40), a2);
  if (*(v11[5] + 16))
  {
    return 1;
  }

  sub_29AC6BBD0((v9 + 40), v11);
  if (*(v9 + 56))
  {
    return 2;
  }

  sub_29AF43F60((v7 + 40), v9);
  if (*(v7 + 56))
  {
    return 3;
  }

  sub_29A03AFE8((a1 + 520), v7);
  sub_29AF40DB4(v7 + 32);
  operator delete(v7);
  return 4;
}

uint64_t sub_29AF2AB50(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29B2A4268(a1);
  return a1;
}

void pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver::_GetInstanceSchemaDataSource(pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_29A55CDFC(this + 544, a2);
  if ((this + 552) == v6)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
  }

  else
  {
    v7 = v6;
    if ((atomic_load_explicit(&qword_2A1751580, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1751580))
    {
      LODWORD(v17) = 0;
      sub_29AF2ADF0(&v17, &v18);
      xmmword_2A1751570 = v18;
      __cxa_atexit(sub_29AF2AE58, &xmmword_2A1751570, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1751580);
    }

    v19 = 0u;
    v20 = 0u;
    v18 = 0u;
    sub_29AF2A21C(v7 + 40, &v15);
    sub_29ABE8360(&v15, &v16);
    v17 = v16;
    v16 = 0uLL;
    v8 = pxrInternal__aapl__pxrReserved__::HdInstanceSchema::Builder::SetInstancer(&v18, &v17);
    v9 = pxrInternal__aapl__pxrReserved__::HdInstanceSchema::Builder::SetPrototypeIndex(v8, &xmmword_2A1751570);
    InstanceIndex = pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver::_GetInstanceIndex(this, v7 + 40, a2);
    v11 = operator new(0x10uLL);
    *v11 = &unk_2A2077528;
    v11[2] = InstanceIndex;
    sub_29ABF40E4(&v13, v11);
    v14 = v13;
    v13 = 0uLL;
    v12 = pxrInternal__aapl__pxrReserved__::HdInstanceSchema::Builder::SetInstanceIndex(v9, &v14);
    pxrInternal__aapl__pxrReserved__::HdInstanceSchema::Builder::Build(v12, a3);
    if (*(&v14 + 1))
    {
      sub_29A014BEC(*(&v14 + 1));
    }

    if (*(&v13 + 1))
    {
      sub_29A014BEC(*(&v13 + 1));
    }

    if (*(&v17 + 1))
    {
      sub_29A014BEC(*(&v17 + 1));
    }

    if (*(&v16 + 1))
    {
      sub_29A014BEC(*(&v16 + 1));
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v15 + 1);
    sub_29A1DE3A4(&v15);
    if (*(&v20 + 1))
    {
      sub_29A014BEC(*(&v20 + 1));
    }

    if (*(&v19 + 1))
    {
      sub_29A014BEC(*(&v19 + 1));
    }

    if (*(&v18 + 1))
    {
      sub_29A014BEC(*(&v18 + 1));
    }
  }
}

void *sub_29AF2ADF0@<X0>(_DWORD *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x10uLL);
  *v4 = &unk_2A2077528;
  v4[2] = *a1;

  return sub_29ABF40E4(a2, v4);
}

uint64_t sub_29AF2AE58(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver::_GetInstanceIndex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver::_GetInstanceToIndex(a1, a2, &v7);
  if (!v7 || (v4 = sub_29A1EF6EC(v7, a3), v7 + 8 == v4))
  {
    v5 = 0xFFFFFFFFLL;
  }

  else
  {
    v5 = *(v4 + 36);
  }

  if (v8)
  {
    sub_29A014BEC(v8);
  }

  return v5;
}

void sub_29AF2AEF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver::_GetInstanceToIndex(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_29AF2A21C(a2, v11);
  v6 = sub_29A55CDFC(a1 + 568, v11);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v11 + 1);
  sub_29A1DE3A4(v11);
  if (a1 + 576 == v6)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    sub_29ABEC66C((v6 + 40), a3);
    if (!*a3)
    {
      pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver::_ComputeInstanceToIndex(a1, a2, v11);
      v7 = v11[1];
      v8 = a3[1];
      *a3 = v11[0];
      a3[1] = v7;
      if (v8)
      {
        sub_29A014BEC(v8);
        v7 = a3[1];
      }

      v9 = *a3;
      v10 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_29ABEC600((v6 + 40), &v9);
      if (v10)
      {
        sub_29A014BEC(v10);
      }
    }
  }
}

void sub_29AF2AFFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, char a11)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  v13 = *(v11 + 8);
  if (v13)
  {
    sub_29A014BEC(v13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver::_ComputeInstanceToIndex@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t ****a3@<X8>)
{
  v6 = operator new(0x30uLL);
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  *v6 = &unk_2A20A18C8;
  *(v6 + 4) = 0;
  *(v6 + 5) = 0;
  *(v6 + 3) = v6 + 32;
  *a3 = (v6 + 24);
  a3[1] = v6;
  result = sub_29A55CDFC(a1 + 520, a2);
  v8 = result;
  if (a1 + 528 != result)
  {
    result = sub_29A31B8F0(result + 40, (a2 + 8));
    v9 = result;
    if (v8 + 48 != result)
    {
      result = sub_29A31B8F0(result + 40, (a2 + 16));
      if (v9 + 48 != result)
      {
        v10 = *(result + 40);
        v13 = *v10;
        v11 = v10 + 1;
        v12 = v13;
        if (v13 != v11)
        {
          v14 = 0;
          do
          {
            v15 = *a3;
            v19 = v12 + 7;
            result = sub_29AD04BE4(v15, v12 + 28, &unk_29B4D6118, &v19);
            *(result + 36) = v14;
            v16 = v12[1];
            if (v16)
            {
              do
              {
                v17 = v16;
                v16 = *v16;
              }

              while (v16);
            }

            else
            {
              do
              {
                v17 = v12[2];
                v18 = *v17 == v12;
                v12 = v17;
              }

              while (!v18);
            }

            ++v14;
            v12 = v17;
          }

          while (v17 != v11);
        }
      }
    }
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex::UsdImaging_NiInstanceAggregationSceneIndex(pxrInternal__aapl__pxrReserved__::HdSceneIndexBase *a1, void *a2, char a3, const pxrInternal__aapl__pxrReserved__::TfToken **a4)
{
  pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::HdSceneIndexBase(a1);
  *v7 = &unk_2A209E880;
  v7[14] = 0;
  v7[15] = 0;
  v7[16] = 0;
  v8 = operator new(0x250uLL);
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_InstanceObserver::_InstanceObserver(v8, a2, a3, a4);
}

void sub_29AF2B298(_Unwind_Exception *a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v13 = a10;
  if (a10 && atomic_fetch_add_explicit((a10 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v13 + 8))(v13, a2, a3, a4, a5, a6, a7, a8);
  }

  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver(v11, a2);
  v14 = *(v10 + 17);
  *(v10 + 17) = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  sub_29A124AB0(&a9);
  pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::~HdSceneIndexBase(v10);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex::_RetainedSceneIndexObserver::_RetainedSceneIndexObserver(void *result, uint64_t a2)
{
  *result = &unk_2A209E8C0;
  result[1] = 0;
  result[2] = a2;
  return result;
}

{
  *result = &unk_2A209E8C0;
  result[1] = 0;
  result[2] = a2;
  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex::~UsdImaging_NiInstanceAggregationSceneIndex(pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex *this, const void *a2)
{
  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver((this + 144), a2);
  v3 = *(this + 17);
  *(this + 17) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = (this + 112);
  sub_29A124AB0(&v4);
  pxrInternal__aapl__pxrReserved__::HdSceneIndexBase::~HdSceneIndexBase(this);
}

{
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex::~UsdImaging_NiInstanceAggregationSceneIndex(this, a2);

  operator delete(v2);
}

void pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex::GetInputScenes(pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex *this)
{
  v3 = *MEMORY[0x29EDCA608];
  v2 = *(*(this + 17) + 24);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex::GetPrim(pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v2 = *(*sub_29AF2A104((*(this + 17) + 24)) + 16);

  return v2();
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex::GetChildPrimPaths(pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v2 = *(*sub_29AF2A104((*(this + 17) + 24)) + 24);

  return v2();
}

pxrInternal__aapl__pxrReserved__::UsdImaging_NiPrototypeSceneIndexTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex::GetPrototypeNameFromInstancerPath@<X0>(pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex *this@<X0>, atomic_uint **a2@<X8>)
{
  result = pxrInternal__aapl__pxrReserved__::SdfPath::GetPathElementCount(this);
  if (result <= 3)
  {
    goto LABEL_5;
  }

  NameToken = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(this);
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdImaging_NiPrototypeSceneIndexTokens);
  if (!result)
  {
    result = sub_29AF40CCC(&pxrInternal__aapl__pxrReserved__::UsdImaging_NiPrototypeSceneIndexTokens);
  }

  if ((*result ^ *NameToken) < 8)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v9, this);
    v6 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(&v9);
    v7 = *v6;
    *a2 = *v6;
    if ((v7 & 7) != 0)
    {
      v8 = (v7 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed) & 1) == 0)
      {
        *a2 = v8;
      }
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v9 + 1);
    return sub_29A1DE3A4(&v9);
  }

  else
  {
LABEL_5:
    *a2 = 0;
  }

  return result;
}

void sub_29AF2B678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex::GetBindingScopeFromInstancerPath@<X0>(pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex *this@<X0>, uint64_t *a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v4, this);
  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(a2, &v4);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v4 + 1);
  return sub_29A1DE3A4(&v4);
}

void sub_29AF2B6E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

void sub_29AF2B750(uint64_t a1)
{
  *a1 = &unk_2A209E840;
  sub_29AF40F58(a1 + 568, *(a1 + 576));
  sub_29AF40E78(a1 + 544, *(a1 + 552));
  sub_29AF40D58(a1 + 520, *(a1 + 528));
  sub_29ABD3178(a1 + 64);
}

void sub_29AF2B7E8(uint64_t a1)
{
  *a1 = &unk_2A209E840;
  sub_29AF40F58(a1 + 568, *(a1 + 576));
  sub_29AF40E78(a1 + 544, *(a1 + 552));
  sub_29AF40D58(a1 + 520, *(a1 + 528));
  sub_29ABD3178(a1 + 64);
}

void sub_29AF2B884(pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver *a1, const void *a2)
{
  pxrInternal__aapl__pxrReserved__::HdSceneIndexObserver::~HdSceneIndexObserver(a1, a2);

  operator delete(v2);
}

void sub_29AF2B8AC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  if ((v4 & 4) != 0)
  {
    (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF2CB0C(a2, a2 + 1, a2 + 3);
}

void sub_29AF2B90C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  if ((v4 & 4) != 0)
  {
    (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF2D0F4(a2, a2 + 1, a2 + 3);
}

void sub_29AF2B96C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  if ((v4 & 4) != 0)
  {
    (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF2D6DC(a2, a2 + 1, a2 + 3);
}

void sub_29AF2B9CC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  if ((v4 & 4) != 0)
  {
    (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF2DCC4(a2, a2 + 1, a2 + 3);
}

void sub_29AF2BA2C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  if ((v4 & 4) != 0)
  {
    (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF2E2AC(a2, a2 + 1, a2 + 3);
}

void sub_29AF2BA8C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  if ((v4 & 4) != 0)
  {
    (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF2E894(a2, a2 + 1, a2 + 3);
}

void sub_29AF2BAEC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  if ((v4 & 4) != 0)
  {
    (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF2EE7C(a2, a2 + 1, a2 + 3);
}

void sub_29AF2BB4C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  if ((v4 & 4) != 0)
  {
    (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF2F464(a2, a2 + 1, a2 + 3);
}

void sub_29AF2BBAC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  if ((v4 & 4) != 0)
  {
    (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF2FA4C(a2, a2 + 1, a2 + 3);
}

void sub_29AF2BC0C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  if ((v4 & 4) != 0)
  {
    (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF30034(a2, a2 + 1, a2 + 3);
}

void sub_29AF2BC6C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  if ((v4 & 4) != 0)
  {
    (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF30620(a2, a2 + 1, a2 + 3);
}

void sub_29AF2BCCC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  if ((v4 & 4) != 0)
  {
    (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF30C0C(a2, a2 + 1, a2 + 3);
}

void sub_29AF2BD2C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  if ((v4 & 4) != 0)
  {
    (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF311F4(a2, a2 + 1, a2 + 3);
}

void sub_29AF2BD8C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  if ((v4 & 4) != 0)
  {
    (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF3188C(a2, a2 + 1, a2 + 3);
}

void sub_29AF2BDEC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  if ((v4 & 4) != 0)
  {
    (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF31F28(a2, a2 + 1, a2 + 3);
}

void sub_29AF2BE4C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  if ((v4 & 4) != 0)
  {
    (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF3252C(a2, a2 + 1, a2 + 3);
}

void sub_29AF2BEAC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  if ((v4 & 4) != 0)
  {
    (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF32B40(a2, a2 + 1, a2 + 3);
}

void sub_29AF2BF0C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  if ((v4 & 4) != 0)
  {
    (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF33128(a2, a2 + 1, a2 + 3);
}

void sub_29AF2BF6C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  if ((v4 & 4) != 0)
  {
    (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF33710(a2, a2 + 1, a2 + 3);
}

void sub_29AF2BFCC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  if ((v4 & 4) != 0)
  {
    (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF33D20(a2, a2 + 1, a2 + 3);
}

void sub_29AF2C02C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  if ((v4 & 4) != 0)
  {
    (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF34308(a2, a2 + 1, a2 + 3);
}

void sub_29AF2C08C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  if ((v4 & 4) != 0)
  {
    (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF34938(a2, a2 + 1, a2 + 3);
}

void sub_29AF2C0EC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  if ((v4 & 4) != 0)
  {
    (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF34F60(a2, a2 + 1, a2 + 3);
}

void sub_29AF2C14C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  if ((v4 & 4) != 0)
  {
    (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF3555C(a2, a2 + 1, a2 + 3);
}

void sub_29AF2C1AC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  if ((v4 & 4) != 0)
  {
    (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF35B8C(a2, a2 + 1, a2 + 3);
}

void sub_29AF2C20C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  if ((v4 & 4) != 0)
  {
    (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF361B4(a2, a2 + 1, a2 + 3);
}

void sub_29AF2C26C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  if ((v4 & 4) != 0)
  {
    (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF367B0(a2, a2 + 1, a2 + 3);
}

void sub_29AF2C2CC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  if ((v4 & 4) != 0)
  {
    (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF36DD8(a2, a2 + 1, a2 + 3);
}

void sub_29AF2C32C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  if ((v4 & 4) != 0)
  {
    (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF37408(a2, a2 + 1, a2 + 3);
}

void sub_29AF2C38C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  if ((v4 & 4) != 0)
  {
    (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF37A38(a2, a2 + 1, a2 + 3);
}

void sub_29AF2C3EC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  if ((v4 & 4) != 0)
  {
    (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF380A0(a2, a2 + 1, a2 + 3);
}

void sub_29AF2C44C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  if ((v4 & 4) != 0)
  {
    (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF386F4(a2, a2 + 1, a2 + 3);
}

void sub_29AF2C4AC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  if ((v4 & 4) != 0)
  {
    (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF38D24(a2, a2 + 1, a2 + 3);
}

void sub_29AF2C50C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  if ((v4 & 4) != 0)
  {
    (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF39360(a2, a2 + 1, a2 + 3);
}

void sub_29AF2C56C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  if ((v4 & 4) != 0)
  {
    (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF399BC(a2, a2 + 1, a2 + 3);
}

void sub_29AF2C5CC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  if ((v4 & 4) != 0)
  {
    (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF3A014(a2, a2 + 1, a2 + 3);
}

void sub_29AF2C62C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  if ((v4 & 4) != 0)
  {
    (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF3A668(a2, a2 + 1, a2 + 3);
}

void sub_29AF2C68C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  if ((v4 & 4) != 0)
  {
    (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF3AC84(a2, a2 + 1, a2 + 3);
}

void sub_29AF2C6EC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  if ((v4 & 4) != 0)
  {
    (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF3B29C(a2, a2 + 1, a2 + 3);
}

void sub_29AF2C74C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  if ((v4 & 4) != 0)
  {
    (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF3B8CC(a2, a2 + 1, a2 + 3);
}

void sub_29AF2C7AC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  if ((v4 & 4) != 0)
  {
    (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF3BEEC(a2, a2 + 1, a2 + 3);
}

void sub_29AF2C80C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  if ((v4 & 4) != 0)
  {
    (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF3C4C8(a2, a2 + 1, a2 + 3);
}

void sub_29AF2C86C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  if ((v4 & 4) != 0)
  {
    (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF3CAEC(a2, a2 + 1, a2 + 3);
}

void sub_29AF2C8CC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  if ((v4 & 4) != 0)
  {
    (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF3D110(a2, a2 + 1, a2 + 3);
}

void sub_29AF2C92C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  if ((v4 & 4) != 0)
  {
    (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF3D734(a2, a2 + 1, a2 + 3);
}

void sub_29AF2C98C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  if ((v4 & 4) != 0)
  {
    (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF3DD24(a2, a2 + 1, a2 + 3);
}

void sub_29AF2C9EC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  if ((v4 & 4) != 0)
  {
    (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF3E314(a2, a2 + 1, a2 + 3);
}

void sub_29AF2CA4C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  if ((v4 & 4) != 0)
  {
    (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF3E91C(a2, a2 + 1, a2 + 3);
}

void sub_29AF2CAAC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  if ((v4 & 4) != 0)
  {
    (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29AF3F9D0(a2, a2 + 1, a2 + 3);
}

void sub_29AF2CB90(void *a1, void *a2, void *a3, uint64_t *a4)
{
  *a1 = &unk_2A209E948;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF2CC44(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A209E948;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF2CCC0(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A209E948;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF2CD40(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A20474B8;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_DecRef();
}

uint64_t sub_29AF2CDD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29A20CB6C(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      v10 = sub_29AF2CEA4((a1 + 8), v7 + 28, (a1 + 32));
      result = sub_29A20D1F0(a2);
      *(*(a2 + 32) + v9) = v10;
      v11 = v7[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v7[2];
          v13 = *v12 == v7;
          v7 = v12;
        }

        while (!v13);
      }

      ++v9;
      v7 = v12;
    }

    while (v12 != v6);
  }

  return result;
}

uint64_t sub_29AF2CEA4(uint64_t *a1, uint64_t a2, atomic_uint **a3)
{
  v11 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a3, &v9);
  if (sub_29A1EFCDC(&v9))
  {
    if ((v10 & 4) != 0)
    {
      v3 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
    }

    else
    {
      v3 = &v9;
    }

    v4 = *v3;
  }

  else
  {
    if (sub_29A2CB120(&v9))
    {
      if ((v10 & 4) != 0)
      {
        v5 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
      }

      else
      {
        v5 = v9;
      }

      v6 = *(v5 + 32);
      if (v6)
      {
        v7 = *(v5 + 24);
        if (!v7)
        {
          v7 = (v6 - 16);
        }

        atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_DecRef();
    }

    v4 = 0;
  }

  sub_29A186B14(&v9);
  return v4 & 1;
}

void sub_29AF2CFB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF2CFE8(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A209E998;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF2D040(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF2D05C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF2D084(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF2D0B4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209E9E8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF2D178(void *a1, void *a2, void *a3, uint64_t *a4)
{
  *a1 = &unk_2A209EA10;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF2D22C(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A209EA10;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF2D2A8(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A209EA10;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF2D328(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A207D888;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<char>::_DecRef();
}

uint64_t sub_29AF2D3BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29AC82B6C(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      v10 = sub_29AF2D48C((a1 + 8), v7 + 28, (a1 + 32));
      result = sub_29AC830F0(a2);
      *(*(a2 + 32) + v9) = v10;
      v11 = v7[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v7[2];
          v13 = *v12 == v7;
          v7 = v12;
        }

        while (!v13);
      }

      ++v9;
      v7 = v12;
    }

    while (v12 != v6);
  }

  return result;
}

uint64_t sub_29AF2D48C(uint64_t *a1, uint64_t a2, atomic_uint **a3)
{
  v11 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a3, &v9);
  if (sub_29A1F8DE8(&v9))
  {
    if ((v10 & 4) != 0)
    {
      v3 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
    }

    else
    {
      v3 = &v9;
    }

    v4 = *v3;
  }

  else
  {
    if (sub_29AD64314(&v9))
    {
      if ((v10 & 4) != 0)
      {
        v5 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
      }

      else
      {
        v5 = v9;
      }

      v6 = *(v5 + 32);
      if (v6)
      {
        v7 = *(v5 + 24);
        if (!v7)
        {
          v7 = (v6 - 16);
        }

        atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<char>::_DecRef();
    }

    v4 = 0;
  }

  sub_29A186B14(&v9);
  return v4;
}

void sub_29AF2D5A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF2D5D0(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A209EA60;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF2D628(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF2D644(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF2D66C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF2D69C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209EAB0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF2D760(void *a1, void *a2, void *a3, uint64_t *a4)
{
  *a1 = &unk_2A209EAD8;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF2D814(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A209EAD8;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF2D890(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A209EAD8;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF2D910(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2043DD0;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DecRef();
}

uint64_t sub_29AF2D9A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29A19E1E4(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      v10 = sub_29AF2DA74((a1 + 8), v7 + 28, (a1 + 32));
      result = sub_29A19E500(a2);
      *(*(a2 + 32) + v9) = v10;
      v11 = v7[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v7[2];
          v13 = *v12 == v7;
          v7 = v12;
        }

        while (!v13);
      }

      ++v9;
      v7 = v12;
    }

    while (v12 != v6);
  }

  return result;
}

uint64_t sub_29AF2DA74(uint64_t *a1, uint64_t a2, atomic_uint **a3)
{
  v11 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a3, &v9);
  if (sub_29A1F9040(&v9))
  {
    if ((v10 & 4) != 0)
    {
      v3 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
    }

    else
    {
      v3 = &v9;
    }

    v4 = *v3;
  }

  else
  {
    if (sub_29A19E5FC(&v9))
    {
      if ((v10 & 4) != 0)
      {
        v5 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
      }

      else
      {
        v5 = v9;
      }

      v6 = *(v5 + 32);
      if (v6)
      {
        v7 = *(v5 + 24);
        if (!v7)
        {
          v7 = (v6 - 16);
        }

        atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DecRef();
    }

    v4 = 0;
  }

  sub_29A186B14(&v9);
  return v4;
}

void sub_29AF2DB88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF2DBB8(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A209EB28;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF2DC10(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF2DC2C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF2DC54(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF2DC84(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209EB78))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF2DD48(void *a1, void *a2, void *a3, uint64_t *a4)
{
  *a1 = &unk_2A209EBA0;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF2DDFC(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A209EBA0;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF2DE78(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A209EBA0;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF2DEF8(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A207D940;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<short>::_DecRef();
}

uint64_t sub_29AF2DF8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29AC83134(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      v10 = sub_29AF2E05C((a1 + 8), v7 + 28, (a1 + 32));
      result = sub_29AC83A44(a2);
      *(*(a2 + 32) + 2 * v9) = v10;
      v11 = v7[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v7[2];
          v13 = *v12 == v7;
          v7 = v12;
        }

        while (!v13);
      }

      ++v9;
      v7 = v12;
    }

    while (v12 != v6);
  }

  return result;
}

uint64_t sub_29AF2E05C(uint64_t *a1, uint64_t a2, atomic_uint **a3)
{
  v11 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a3, &v9);
  if (sub_29AD81948(&v9))
  {
    if ((v10 & 4) != 0)
    {
      v3 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
    }

    else
    {
      v3 = &v9;
    }

    v4 = *v3;
  }

  else
  {
    if (sub_29AD659D8(&v9))
    {
      if ((v10 & 4) != 0)
      {
        v5 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
      }

      else
      {
        v5 = v9;
      }

      v6 = *(v5 + 32);
      if (v6)
      {
        v7 = *(v5 + 24);
        if (!v7)
        {
          v7 = (v6 - 16);
        }

        atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<short>::_DecRef();
    }

    v4 = 0;
  }

  sub_29A186B14(&v9);
  return v4;
}

void sub_29AF2E170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF2E1A0(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A209EBF0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF2E1F8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF2E214(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF2E23C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF2E26C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209EC40))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF2E330(void *a1, void *a2, void *a3, uint64_t *a4)
{
  *a1 = &unk_2A209EC68;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF2E3E4(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A209EC68;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF2E460(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A209EC68;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF2E4E0(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2043BA8;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<unsigned short>::_DecRef();
}

uint64_t sub_29AF2E574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29A19BBD0(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      v10 = sub_29AF2E644((a1 + 8), v7 + 28, (a1 + 32));
      result = sub_29A19C344(a2);
      *(*(a2 + 32) + 2 * v9) = v10;
      v11 = v7[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v7[2];
          v13 = *v12 == v7;
          v7 = v12;
        }

        while (!v13);
      }

      ++v9;
      v7 = v12;
    }

    while (v12 != v6);
  }

  return result;
}

uint64_t sub_29AF2E644(uint64_t *a1, uint64_t a2, atomic_uint **a3)
{
  v11 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a3, &v9);
  if (sub_29AD81C64(&v9))
  {
    if ((v10 & 4) != 0)
    {
      v3 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
    }

    else
    {
      v3 = &v9;
    }

    v4 = *v3;
  }

  else
  {
    if (sub_29A19C440(&v9))
    {
      if ((v10 & 4) != 0)
      {
        v5 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
      }

      else
      {
        v5 = v9;
      }

      v6 = *(v5 + 32);
      if (v6)
      {
        v7 = *(v5 + 24);
        if (!v7)
        {
          v7 = (v6 - 16);
        }

        atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<unsigned short>::_DecRef();
    }

    v4 = 0;
  }

  sub_29A186B14(&v9);
  return v4;
}

void sub_29AF2E758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF2E788(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A209ECB8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF2E7E0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF2E7FC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF2E824(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF2E854(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209ED08))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF2E918(void *a1, void *a2, void *a3, uint64_t *a4)
{
  *a1 = &unk_2A209ED30;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF2E9CC(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A209ED30;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF2EA48(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A209ED30;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF2EAC8(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2043D18;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

uint64_t sub_29AF2EB5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29A19D6E4(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      v10 = sub_29AF2EC2C((a1 + 8), v7 + 28, (a1 + 32));
      result = sub_29A19DBEC(a2);
      *(*(a2 + 32) + 4 * v9) = v10;
      v11 = v7[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v7[2];
          v13 = *v12 == v7;
          v7 = v12;
        }

        while (!v13);
      }

      ++v9;
      v7 = v12;
    }

    while (v12 != v6);
  }

  return result;
}

uint64_t sub_29AF2EC2C(uint64_t *a1, uint64_t a2, atomic_uint **a3)
{
  v11 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a3, &v9);
  if (sub_29A293A9C(&v9))
  {
    if ((v10 & 4) != 0)
    {
      v3 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
    }

    else
    {
      v3 = &v9;
    }

    v4 = *v3;
  }

  else
  {
    if (sub_29A19D610(&v9))
    {
      if ((v10 & 4) != 0)
      {
        v5 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
      }

      else
      {
        v5 = v9;
      }

      v6 = *(v5 + 32);
      if (v6)
      {
        v7 = *(v5 + 24);
        if (!v7)
        {
          v7 = (v6 - 16);
        }

        atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
    }

    v4 = 0;
  }

  sub_29A186B14(&v9);
  return v4;
}

void sub_29AF2ED40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF2ED70(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A209ED80;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF2EDC8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF2EDE4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF2EE0C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF2EE3C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209EDD0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF2EF00(void *a1, void *a2, void *a3, uint64_t *a4)
{
  *a1 = &unk_2A209EDF8;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF2EFB4(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A209EDF8;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF2F030(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A209EDF8;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF2F0B0(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2043C60;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DecRef();
}

uint64_t sub_29AF2F144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29A19C954(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      v10 = sub_29AF2F214((a1 + 8), v7 + 28, (a1 + 32));
      result = sub_29A19CEF8(a2);
      *(*(a2 + 32) + 4 * v9) = v10;
      v11 = v7[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v7[2];
          v13 = *v12 == v7;
          v7 = v12;
        }

        while (!v13);
      }

      ++v9;
      v7 = v12;
    }

    while (v12 != v6);
  }

  return result;
}

uint64_t sub_29AF2F214(uint64_t *a1, uint64_t a2, atomic_uint **a3)
{
  v11 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a3, &v9);
  if (sub_29A3F94B8(&v9))
  {
    if ((v10 & 4) != 0)
    {
      v3 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
    }

    else
    {
      v3 = &v9;
    }

    v4 = *v3;
  }

  else
  {
    if (sub_29A19BC88(&v9))
    {
      if ((v10 & 4) != 0)
      {
        v5 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
      }

      else
      {
        v5 = v9;
      }

      v6 = *(v5 + 32);
      if (v6)
      {
        v7 = *(v5 + 24);
        if (!v7)
        {
          v7 = (v6 - 16);
        }

        atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DecRef();
    }

    v4 = 0;
  }

  sub_29A186B14(&v9);
  return v4;
}

void sub_29AF2F328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF2F358(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A209EE48;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF2F3B0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF2F3CC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF2F3F4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF2F424(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209EE98))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF2F4E8(void *a1, void *a2, void *a3, uint64_t *a4)
{
  *a1 = &unk_2A209EEC0;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF2F59C(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A209EEC0;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF2F618(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A209EEC0;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF2F698(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2047630;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DecRef();
}

uint64_t sub_29AF2F72C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29A20F8FC(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      v10 = sub_29AF2F7FC((a1 + 8), v7 + 28, (a1 + 32));
      result = sub_29A21013C(a2);
      *(*(a2 + 32) + 8 * v9) = v10;
      v11 = v7[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v7[2];
          v13 = *v12 == v7;
          v7 = v12;
        }

        while (!v13);
      }

      ++v9;
      v7 = v12;
    }

    while (v12 != v6);
  }

  return result;
}

uint64_t sub_29AF2F7FC(uint64_t *a1, uint64_t a2, atomic_uint **a3)
{
  v11 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a3, &v9);
  if (sub_29A298D2C(&v9))
  {
    if ((v10 & 4) != 0)
    {
      v3 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
    }

    else
    {
      v3 = &v9;
    }

    v4 = *v3;
  }

  else
  {
    if (sub_29A27DEAC(&v9))
    {
      if ((v10 & 4) != 0)
      {
        v5 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
      }

      else
      {
        v5 = v9;
      }

      v6 = *(v5 + 32);
      if (v6)
      {
        v7 = *(v5 + 24);
        if (!v7)
        {
          v7 = (v6 - 16);
        }

        atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DecRef();
    }

    v4 = 0;
  }

  sub_29A186B14(&v9);
  return v4;
}

void sub_29AF2F910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF2F940(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A209EF10;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF2F998(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF2F9B4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF2F9DC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF2FA0C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209EF60))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF2FAD0(void *a1, void *a2, void *a3, uint64_t *a4)
{
  *a1 = &unk_2A209EF88;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF2FB84(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A209EF88;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF2FC00(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A209EF88;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF2FC80(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2047718;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>::_DecRef();
}

uint64_t sub_29AF2FD14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29A2109E8(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      v10 = sub_29AF2FDE4((a1 + 8), v7 + 28, (a1 + 32));
      result = sub_29A2111A0(a2);
      *(*(a2 + 32) + 8 * v9) = v10;
      v11 = v7[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v7[2];
          v13 = *v12 == v7;
          v7 = v12;
        }

        while (!v13);
      }

      ++v9;
      v7 = v12;
    }

    while (v12 != v6);
  }

  return result;
}

uint64_t sub_29AF2FDE4(uint64_t *a1, uint64_t a2, atomic_uint **a3)
{
  v11 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a3, &v9);
  if (sub_29A3F9968(&v9))
  {
    if ((v10 & 4) != 0)
    {
      v3 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
    }

    else
    {
      v3 = &v9;
    }

    v4 = *v3;
  }

  else
  {
    if (sub_29A27F920(&v9))
    {
      if ((v10 & 4) != 0)
      {
        v5 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
      }

      else
      {
        v5 = v9;
      }

      v6 = *(v5 + 32);
      if (v6)
      {
        v7 = *(v5 + 24);
        if (!v7)
        {
          v7 = (v6 - 16);
        }

        atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>::_DecRef();
    }

    v4 = 0;
  }

  sub_29A186B14(&v9);
  return v4;
}

void sub_29AF2FEF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF2FF28(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A209EFD8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF2FF80(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF2FF9C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF2FFC4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF2FFF4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209F028))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF300B8(void *a1, void *a2, void *a3, uint64_t *a4)
{
  *a1 = &unk_2A209F050;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF3016C(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A209F050;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF301E8(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A209F050;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF30268(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A20430E0;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<double>::_DecRef();
}

uint64_t sub_29AF302FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29A18FC40(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      v10 = sub_29AF303D4((a1 + 8), v7 + 28, (a1 + 32));
      result = sub_29A190088(a2);
      *(*(a2 + 32) + 8 * v9) = v10;
      v11 = v7[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v7[2];
          v13 = *v12 == v7;
          v7 = v12;
        }

        while (!v13);
      }

      ++v9;
      v7 = v12;
    }

    while (v12 != v6);
  }

  return result;
}

double sub_29AF303D4(uint64_t *a1, uint64_t a2, atomic_uint **a3)
{
  v11 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a3, &v9);
  if (sub_29A346994(&v9))
  {
    if ((v10 & 4) != 0)
    {
      v3 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
    }

    else
    {
      v3 = &v9;
    }

    v4 = *v3;
  }

  else
  {
    v4 = 0.0;
    if (sub_29A190184(&v9))
    {
      if ((v10 & 4) != 0)
      {
        v5 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
      }

      else
      {
        v5 = v9;
      }

      v6 = *(v5 + 32);
      if (v6)
      {
        v7 = *(v5 + 24);
        if (!v7)
        {
          v7 = (v6 - 16);
        }

        atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<double>::_DecRef();
    }
  }

  sub_29A186B14(&v9);
  return v4;
}

void sub_29AF304E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF30514(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A209F0A0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF3056C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF30588(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF305B0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF305E0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209F0F0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF306A4(void *a1, void *a2, void *a3, uint64_t *a4)
{
  *a1 = &unk_2A209F118;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF30758(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A209F118;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF307D4(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A209F118;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF30854(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2042F70;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
}

uint64_t sub_29AF308E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29A18E048(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      v10 = sub_29AF309C0((a1 + 8), v7 + 28, (a1 + 32));
      result = sub_29A18E624(a2);
      *(*(a2 + 32) + 4 * v9) = v10;
      v11 = v7[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v7[2];
          v13 = *v12 == v7;
          v7 = v12;
        }

        while (!v13);
      }

      ++v9;
      v7 = v12;
    }

    while (v12 != v6);
  }

  return result;
}

float sub_29AF309C0(uint64_t *a1, uint64_t a2, atomic_uint **a3)
{
  v11 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a3, &v9);
  if (sub_29A3F9DF4(&v9))
  {
    if ((v10 & 4) != 0)
    {
      v3 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
    }

    else
    {
      v3 = &v9;
    }

    v4 = *v3;
  }

  else
  {
    v4 = 0.0;
    if (sub_29A18E720(&v9))
    {
      if ((v10 & 4) != 0)
      {
        v5 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
      }

      else
      {
        v5 = v9;
      }

      v6 = *(v5 + 32);
      if (v6)
      {
        v7 = *(v5 + 24);
        if (!v7)
        {
          v7 = (v6 - 16);
        }

        atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
    }
  }

  sub_29A186B14(&v9);
  return v4;
}

void sub_29AF30AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF30B00(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A209F168;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF30B58(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF30B74(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF30B9C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF30BCC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209F1B8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF30C90(void *a1, void *a2, void *a3, uint64_t *a4)
{
  *a1 = &unk_2A209F1E0;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF30D44(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A209F1E0;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF30DC0(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A209F1E0;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF30E40(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2043028;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>::_DecRef();
}

uint64_t sub_29AF30ED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29A18EE04(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      v10 = sub_29AF30FA4((a1 + 8), v7 + 28, (a1 + 32));
      result = sub_29A18F540(a2);
      *(*(a2 + 32) + 2 * v9) = v10;
      v11 = v7[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v7[2];
          v13 = *v12 == v7;
          v7 = v12;
        }

        while (!v13);
      }

      ++v9;
      v7 = v12;
    }

    while (v12 != v6);
  }

  return result;
}

uint64_t sub_29AF30FA4(uint64_t *a1, uint64_t a2, atomic_uint **a3)
{
  v11 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a3, &v9);
  if (sub_29A3F9C34(&v9))
  {
    if ((v10 & 4) != 0)
    {
      v3 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
    }

    else
    {
      v3 = &v9;
    }

    v4 = *v3;
  }

  else
  {
    if (sub_29A18E100(&v9))
    {
      if ((v10 & 4) != 0)
      {
        v5 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
      }

      else
      {
        v5 = v9;
      }

      v6 = *(v5 + 32);
      if (v6)
      {
        v7 = *(v5 + 24);
        if (!v7)
        {
          v7 = (v6 - 16);
        }

        atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>::_DecRef();
    }

    v4 = 0;
  }

  sub_29A186B14(&v9);
  return v4;
}

void sub_29AF310B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF310E8(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A209F230;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF31140(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF3115C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF31184(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF311B4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209F280))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF31278(void *a1, void *a2, void *a3, uint64_t *a4)
{
  *a1 = &unk_2A209F2A8;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF3132C(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A209F2A8;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF313A8(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A209F2A8;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF31428(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = off_2A20479C8;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef();
}

void sub_29AF314BC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_29A213A04(a2, *(*(a1 + 16) + 16));
  v4 = *(a1 + 16);
  v7 = *v4;
  v5 = v4 + 1;
  v6 = v7;
  if (v7 != v5)
  {
    v8 = 0;
    do
    {
      sub_29AF315D8((a1 + 8), (a1 + 32), &v14);
      sub_29A214388(a2);
      v9 = *(a2 + 32) + 24 * v8;
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v10 = v14;
      *(v9 + 16) = v15;
      *v9 = v10;
      v11 = v6[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v6[2];
          v13 = *v12 == v6;
          v6 = v12;
        }

        while (!v13);
      }

      ++v8;
      v6 = v12;
    }

    while (v12 != v5);
  }
}

uint64_t sub_29AF315D8@<X0>(uint64_t *a1@<X0>, atomic_uint **a2@<X2>, uint64_t a3@<X8>)
{
  v14 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a2, &v12);
  if (sub_29A1EFC10(&v12))
  {
    if ((v13 & 4) != 0)
    {
      v4 = (*((v13 & 0xFFFFFFFFFFFFFFF8) + 168))(&v12);
    }

    else
    {
      v4 = v12;
    }

    if (*(v4 + 23) < 0)
    {
      sub_29A008D14(a3, *v4, *(v4 + 8));
    }

    else
    {
      v5 = *v4;
      *(a3 + 16) = *(v4 + 16);
      *a3 = v5;
    }
  }

  else
  {
    if (sub_29A1FA6D8(&v12))
    {
      if ((v13 & 4) != 0)
      {
        v6 = (*((v13 & 0xFFFFFFFFFFFFFFF8) + 168))(&v12);
      }

      else
      {
        v6 = v12;
      }

      v11 = *v6;
      v7 = *(v6 + 32);
      if (v7)
      {
        v8 = *(v6 + 24);
        if (!v8)
        {
          v8 = (v7 - 1);
        }

        atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
      }

      if (v11)
      {
        if (*(v7 + 23) < 0)
        {
          sub_29A008D14(a3, *v7, *(v7 + 1));
        }

        else
        {
          v9 = *v7;
          *(a3 + 16) = *(v7 + 2);
          *a3 = v9;
        }
      }

      else
      {
        *a3 = 0;
        *(a3 + 8) = 0;
        *(a3 + 16) = 0;
      }

      pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef();
    }

    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  return sub_29A186B14(&v12);
}

void sub_29AF3173C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF31780(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A209F2F8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF317D8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF317F4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF3181C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF3184C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209F348))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF31910(void *a1, void *a2, void *a3, uint64_t *a4)
{
  *a1 = &unk_2A209F370;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF319C4(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A209F370;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF31A40(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A209F370;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF31AC0(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = off_2A2047A80;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef();
}

uint64_t sub_29AF31B54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29A214860(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      sub_29AF31C98((a1 + 8), (a1 + 32), &v14);
      result = sub_29A215100(a2);
      v10 = (*(a2 + 32) + 8 * v9);
      if (&v14 == v10)
      {
        if ((v14 & 7) != 0)
        {
          atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      else
      {
        if ((*v10 & 7) != 0)
        {
          atomic_fetch_add_explicit((*v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        *v10 = v14;
      }

      v11 = v7[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v7[2];
          v13 = *v12 == v7;
          v7 = v12;
        }

        while (!v13);
      }

      ++v9;
      v7 = v12;
    }

    while (v12 != v6);
  }

  return result;
}

uint64_t sub_29AF31C98@<X0>(uint64_t *a1@<X0>, atomic_uint **a2@<X2>, atomic_uint **a3@<X8>)
{
  v16 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a2, &v14);
  if (!sub_29A1FA710(&v14))
  {
    if (!sub_29A1FA748(&v14))
    {
      *a3 = 0;
      return sub_29A186B14(&v14);
    }

    if ((v15 & 4) != 0)
    {
      v7 = (*((v15 & 0xFFFFFFFFFFFFFFF8) + 168))(&v14);
    }

    else
    {
      v7 = v14;
    }

    v13 = *v7;
    v8 = *(v7 + 32);
    if (v8)
    {
      v9 = *(v7 + 24);
      if (!v9)
      {
        v9 = (v8 - 2);
      }

      atomic_fetch_add_explicit(v9, 1uLL, memory_order_relaxed);
    }

    if (v13)
    {
      v10 = *v8;
      *a3 = v10;
      if (v10 & 7) == 0 || (v11 = (v10 & 0xFFFFFFFFFFFFFFF8), (atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed)))
      {
LABEL_21:
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef();
      }
    }

    else
    {
      v11 = 0;
    }

    *a3 = v11;
    goto LABEL_21;
  }

  if ((v15 & 4) != 0)
  {
    v4 = (*((v15 & 0xFFFFFFFFFFFFFFF8) + 168))(&v14);
  }

  else
  {
    v4 = &v14;
  }

  v5 = *v4;
  *a3 = *v4;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a3 = v6;
    }
  }

  return sub_29A186B14(&v14);
}

void sub_29AF31DEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF31E1C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A209F3C0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF31E74(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF31E90(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF31EB8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF31EE8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209F410))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF31FAC(void *a1, void *a2, void *a3, uint64_t *a4)
{
  *a1 = &unk_2A209F438;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF32060(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A209F438;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF320DC(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A209F438;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF3215C(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2048280;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::_DecRef();
}

uint64_t sub_29AF321F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29A21DF14(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      v10 = sub_29AF322D0((a1 + 8), v7 + 28, (a1 + 32));
      v12 = v11;
      result = sub_29A21E784(a2);
      v13 = (*(a2 + 32) + 16 * v9);
      *v13 = v10;
      v13[1] = v12;
      v14 = v7[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v7[2];
          v16 = *v15 == v7;
          v7 = v15;
        }

        while (!v16);
      }

      ++v9;
      v7 = v15;
    }

    while (v15 != v6);
  }

  return result;
}

uint64_t sub_29AF322D0(uint64_t *a1, uint64_t a2, atomic_uint **a3)
{
  v11 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a3, &v9);
  if (sub_29A3FE4B4(&v9))
  {
    if ((v10 & 4) != 0)
    {
      v3 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
    }

    else
    {
      v3 = v9;
    }

    v4 = *v3;
  }

  else
  {
    if (sub_29A3FE614(&v9))
    {
      if ((v10 & 4) != 0)
      {
        v5 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
      }

      else
      {
        v5 = v9;
      }

      v6 = *(v5 + 32);
      if (v6)
      {
        v7 = *(v5 + 24);
        if (!v7)
        {
          v7 = (v6 - 16);
        }

        atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::_DecRef();
    }

    v4 = 0;
  }

  sub_29A186B14(&v9);
  return v4;
}

void sub_29AF323F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF32420(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A209F488;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF32478(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF32494(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF324BC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF324EC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209F4D8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF325B0(void *a1, void *a2, void *a3, uint64_t *a4)
{
  *a1 = &unk_2A209F500;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF32664(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A209F500;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF326E0(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A209F500;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF32760(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2048110;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::_DecRef();
}

uint64_t sub_29AF327F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29A21BE0C(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      v10 = sub_29AF328DC((a1 + 8), v7 + 28, (a1 + 32));
      v12 = v11;
      result = sub_29A21C6E0(a2);
      v13 = *(a2 + 32) + 12 * v9;
      *v13 = v10;
      *(v13 + 8) = v12;
      v14 = v7[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v7[2];
          v16 = *v15 == v7;
          v7 = v15;
        }

        while (!v16);
      }

      ++v9;
      v7 = v15;
    }

    while (v15 != v6);
  }

  return result;
}

uint64_t sub_29AF328DC(uint64_t *a1, uint64_t a2, atomic_uint **a3)
{
  v11 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a3, &v9);
  if (sub_29A3FD868(&v9))
  {
    if ((v10 & 4) != 0)
    {
      v3 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
    }

    else
    {
      v3 = v9;
    }

    v4 = *v3;
  }

  else
  {
    if (sub_29A3FD9D0(&v9))
    {
      if ((v10 & 4) != 0)
      {
        v5 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
      }

      else
      {
        v5 = v9;
      }

      v6 = *(v5 + 32);
      if (v6)
      {
        v7 = *(v5 + 24);
        if (!v7)
        {
          v7 = (v6 - 16);
        }

        atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::_DecRef();
    }

    v4 = 0;
  }

  sub_29A186B14(&v9);
  return v4;
}

void sub_29AF32A04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF32A34(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A209F550;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF32A8C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF32AA8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF32AD0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF32B00(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209F5A0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF32BC4(void *a1, void *a2, void *a3, uint64_t *a4)
{
  *a1 = &unk_2A209F5C8;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF32C78(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A209F5C8;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF32CF4(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A209F5C8;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF32D74(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2047FA0;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::_DecRef();
}

uint64_t sub_29AF32E08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29A219F48(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      v10 = sub_29AF32ED8((a1 + 8), v7 + 28, (a1 + 32));
      result = sub_29A21A6E8(a2);
      *(*(a2 + 32) + 8 * v9) = v10;
      v11 = v7[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v7[2];
          v13 = *v12 == v7;
          v7 = v12;
        }

        while (!v13);
      }

      ++v9;
      v7 = v12;
    }

    while (v12 != v6);
  }

  return result;
}

uint64_t sub_29AF32ED8(uint64_t *a1, uint64_t a2, atomic_uint **a3)
{
  v11 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a3, &v9);
  if (sub_29A3FCE54(&v9))
  {
    if ((v10 & 4) != 0)
    {
      v3 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
    }

    else
    {
      v3 = &v9;
    }

    v4 = *v3;
  }

  else
  {
    if (sub_29A3FCEC4(&v9))
    {
      if ((v10 & 4) != 0)
      {
        v5 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
      }

      else
      {
        v5 = v9;
      }

      v6 = *(v5 + 32);
      if (v6)
      {
        v7 = *(v5 + 24);
        if (!v7)
        {
          v7 = (v6 - 16);
        }

        atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::_DecRef();
    }

    v4 = 0;
  }

  sub_29A186B14(&v9);
  return v4;
}

void sub_29AF32FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF3301C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A209F618;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF33074(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF33090(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF330B8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF330E8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209F668))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF331AC(void *a1, void *a2, void *a3, uint64_t *a4)
{
  *a1 = &unk_2A209F690;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF33260(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A209F690;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF332DC(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A209F690;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF3335C(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A20436A0;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::_DecRef();
}

uint64_t sub_29AF333F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29A1962EC(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      v10 = sub_29AF334C0((a1 + 8), v7 + 28, (a1 + 32));
      result = sub_29A1966EC(a2);
      *(*(a2 + 32) + 8 * v9) = v10;
      v11 = v7[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v7[2];
          v13 = *v12 == v7;
          v7 = v12;
        }

        while (!v13);
      }

      ++v9;
      v7 = v12;
    }

    while (v12 != v6);
  }

  return result;
}

uint64_t sub_29AF334C0(uint64_t *a1, uint64_t a2, atomic_uint **a3)
{
  v11 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a3, &v9);
  if (sub_29A3FE8A4(&v9))
  {
    if ((v10 & 4) != 0)
    {
      v3 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
    }

    else
    {
      v3 = &v9;
    }

    v4 = *v3;
  }

  else
  {
    if (sub_29A195848(&v9))
    {
      if ((v10 & 4) != 0)
      {
        v5 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
      }

      else
      {
        v5 = v9;
      }

      v6 = *(v5 + 32);
      if (v6)
      {
        v7 = *(v5 + 24);
        if (!v7)
        {
          v7 = (v6 - 16);
        }

        atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::_DecRef();
    }

    v4 = 0;
  }

  sub_29A186B14(&v9);
  return v4;
}

void sub_29AF335D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF33604(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A209F6E0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF3365C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF33678(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF336A0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF336D0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209F730))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF33794(void *a1, void *a2, void *a3, uint64_t *a4)
{
  *a1 = &unk_2A209F758;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF33848(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A209F758;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF338C4(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A209F758;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF33944(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2043478;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef();
}

uint64_t sub_29AF339D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29A193C60(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      v10 = sub_29AF33AC0((a1 + 8), v7 + 28, (a1 + 32));
      result = sub_29A1940CC(a2);
      v11 = *(a2 + 32) + 6 * v9;
      *(v11 + 4) = WORD2(v10);
      *v11 = v10;
      v12 = v7[1];
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
          v13 = v7[2];
          v14 = *v13 == v7;
          v7 = v13;
        }

        while (!v14);
      }

      ++v9;
      v7 = v13;
    }

    while (v13 != v6);
  }

  return result;
}

unint64_t sub_29AF33AC0(uint64_t *a1, uint64_t a2, atomic_uint **a3)
{
  v11 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a3, &v9);
  if (sub_29A3FDC80(&v9))
  {
    if ((v10 & 4) != 0)
    {
      v3 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
    }

    else
    {
      v3 = &v9;
    }

    v4 = *v3 | (*(v3 + 2) << 32);
  }

  else
  {
    if (sub_29A1931E0(&v9))
    {
      if ((v10 & 4) != 0)
      {
        v5 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
      }

      else
      {
        v5 = v9;
      }

      v6 = *(v5 + 32);
      if (v6)
      {
        v7 = *(v5 + 24);
        if (!v7)
        {
          v7 = (v6 - 16);
        }

        atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef();
    }

    v4 = 0;
  }

  sub_29A186B14(&v9);
  return v4;
}

void sub_29AF33BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF33C14(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A209F7A8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF33C6C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF33C88(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF33CB0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF33CE0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209F7F8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF33DA4(void *a1, void *a2, void *a3, uint64_t *a4)
{
  *a1 = &unk_2A209F820;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF33E58(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A209F820;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF33ED4(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A209F820;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF33F54(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2043250;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::_DecRef();
}

uint64_t sub_29AF33FE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29A191640(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      v10 = sub_29AF340B8((a1 + 8), v7 + 28, (a1 + 32));
      result = sub_29A191A40(a2);
      *(*(a2 + 32) + 4 * v9) = v10;
      v11 = v7[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v7[2];
          v13 = *v12 == v7;
          v7 = v12;
        }

        while (!v13);
      }

      ++v9;
      v7 = v12;
    }

    while (v12 != v6);
  }

  return result;
}

uint64_t sub_29AF340B8(uint64_t *a1, uint64_t a2, atomic_uint **a3)
{
  v11 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a3, &v9);
  if (sub_29A3FD158(&v9))
  {
    if ((v10 & 4) != 0)
    {
      v3 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
    }

    else
    {
      v3 = &v9;
    }

    v4 = *v3;
  }

  else
  {
    if (sub_29A190BD0(&v9))
    {
      if ((v10 & 4) != 0)
      {
        v5 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
      }

      else
      {
        v5 = v9;
      }

      v6 = *(v5 + 32);
      if (v6)
      {
        v7 = *(v5 + 24);
        if (!v7)
        {
          v7 = (v6 - 16);
        }

        atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::_DecRef();
    }

    v4 = 0;
  }

  sub_29A186B14(&v9);
  return v4;
}

void sub_29AF341CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF341FC(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A209F870;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF34254(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF34270(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF34298(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF342C8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209F8C0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF3438C(void *a1, void *a2, void *a3, uint64_t *a4)
{
  *a1 = &unk_2A209F8E8;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF34440(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A209F8E8;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF344BC(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A209F8E8;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF3453C(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A20435E8;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DecRef();
}

uint64_t sub_29AF345D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29A195790(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      v10 = sub_29AF346C4((a1 + 8), v7 + 28, (a1 + 32));
      v12 = v11;
      v14 = v13;
      v16 = v15;
      result = sub_29A195BC4(a2);
      v17 = (*(a2 + 32) + 16 * v9);
      *v17 = v10;
      *(v17 + 1) = v12;
      *(v17 + 2) = v14;
      *(v17 + 3) = v16;
      v18 = v7[1];
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v7[2];
          v20 = *v19 == v7;
          v7 = v19;
        }

        while (!v20);
      }

      ++v9;
      v7 = v19;
    }

    while (v19 != v6);
  }

  return result;
}

float sub_29AF346C4(uint64_t *a1, uint64_t a2, atomic_uint **a3)
{
  v11 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a3, &v9);
  if (sub_29A3FEA70(&v9))
  {
    if ((v10 & 4) != 0)
    {
      v3 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
    }

    else
    {
      v3 = v9;
    }

    v4 = *v3;
  }

  else
  {
    v4 = 0.0;
    if (sub_29A195CC0(&v9))
    {
      if ((v10 & 4) != 0)
      {
        v5 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
      }

      else
      {
        v5 = v9;
      }

      v6 = *(v5 + 32);
      if (v6)
      {
        v7 = *(v5 + 24);
        if (!v7)
        {
          v7 = (v6 - 16);
        }

        atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DecRef();
    }
  }

  sub_29A186B14(&v9);
  return v4;
}

void sub_29AF347FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF3482C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A209F938;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF34884(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF348A0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF348C8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF348F8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209F988))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF349BC(void *a1, void *a2, void *a3, uint64_t *a4)
{
  *a1 = &unk_2A209F9B0;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF34A70(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A209F9B0;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF34AEC(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A209F9B0;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF34B6C(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A20433C0;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
}

uint64_t sub_29AF34C00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29A193124(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      v10 = sub_29AF34CF4((a1 + 8), v7 + 28, (a1 + 32));
      v12 = v11;
      v14 = v13;
      result = sub_29A1935CC(a2);
      v15 = (*(a2 + 32) + 12 * v9);
      *v15 = v10;
      *(v15 + 1) = v12;
      *(v15 + 2) = v14;
      v16 = v7[1];
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = v7[2];
          v18 = *v17 == v7;
          v7 = v17;
        }

        while (!v18);
      }

      ++v9;
      v7 = v17;
    }

    while (v17 != v6);
  }

  return result;
}

float sub_29AF34CF4(uint64_t *a1, uint64_t a2, atomic_uint **a3)
{
  v11 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a3, &v9);
  if (sub_29A3FDE60(&v9))
  {
    if ((v10 & 4) != 0)
    {
      v3 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
    }

    else
    {
      v3 = v9;
    }

    v4 = *v3;
  }

  else
  {
    v4 = 0.0;
    if (sub_29A1936C8(&v9))
    {
      if ((v10 & 4) != 0)
      {
        v5 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
      }

      else
      {
        v5 = v9;
      }

      v6 = *(v5 + 32);
      if (v6)
      {
        v7 = *(v5 + 24);
        if (!v7)
        {
          v7 = (v6 - 16);
        }

        atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
    }
  }

  sub_29A186B14(&v9);
  return v4;
}

void sub_29AF34E24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF34E54(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A209FA00;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF34EAC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF34EC8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF34EF0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF34F20(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209FA50))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF34FE4(void *a1, void *a2, void *a3, uint64_t *a4)
{
  *a1 = &unk_2A209FA78;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF35098(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A209FA78;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF35114(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A209FA78;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF35194(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2043198;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DecRef();
}

uint64_t sub_29AF35228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29A190B18(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      v10 = sub_29AF35308((a1 + 8), v7 + 28, (a1 + 32));
      v12 = v11;
      result = sub_29A190F50(a2);
      v13 = (*(a2 + 32) + 8 * v9);
      *v13 = v10;
      *(v13 + 1) = v12;
      v14 = v7[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v7[2];
          v16 = *v15 == v7;
          v7 = v15;
        }

        while (!v16);
      }

      ++v9;
      v7 = v15;
    }

    while (v15 != v6);
  }

  return result;
}

float sub_29AF35308(uint64_t *a1, uint64_t a2, atomic_uint **a3)
{
  v11 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a3, &v9);
  if (sub_29A3FD314(&v9))
  {
    if ((v10 & 4) != 0)
    {
      v3 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
    }

    else
    {
      v3 = &v9;
    }

    v4 = *v3;
  }

  else
  {
    v4 = 0.0;
    if (sub_29A19104C(&v9))
    {
      if ((v10 & 4) != 0)
      {
        v5 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
      }

      else
      {
        v5 = v9;
      }

      v6 = *(v5 + 32);
      if (v6)
      {
        v7 = *(v5 + 24);
        if (!v7)
        {
          v7 = (v6 - 16);
        }

        atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DecRef();
    }
  }

  sub_29A186B14(&v9);
  return v4;
}

void sub_29AF35420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF35450(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A209FAC8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF354A8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF354C4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF354EC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF3551C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209FB18))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF355E0(void *a1, void *a2, void *a3, uint64_t *a4)
{
  *a1 = &unk_2A209FB40;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF35694(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A209FB40;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF35710(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A209FB40;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF35790(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2043758;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_DecRef();
}

uint64_t sub_29AF35824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  result = sub_29A196EB8(a4, *(*(a1 + 16) + 16), a2, a3);
  v7 = *(a1 + 16);
  v10 = *v7;
  v8 = v7 + 1;
  v9 = v10;
  if (v10 != v8)
  {
    v11 = 0;
    do
    {
      v12 = sub_29AF35918((a1 + 8), v9 + 28, (a1 + 32));
      v14 = v13;
      v16 = v15;
      v18 = v17;
      result = sub_29A19722C(a4);
      v19 = (*(a4 + 32) + 32 * v11);
      *v19 = v12;
      *(v19 + 1) = v14;
      *(v19 + 2) = v16;
      *(v19 + 3) = v18;
      v20 = v9[1];
      if (v20)
      {
        do
        {
          v21 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          v21 = v9[2];
          v22 = *v21 == v9;
          v9 = v21;
        }

        while (!v22);
      }

      ++v11;
      v9 = v21;
    }

    while (v21 != v8);
  }

  return result;
}

double sub_29AF35918(uint64_t *a1, uint64_t a2, atomic_uint **a3)
{
  v11 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a3, &v9);
  if (sub_29A3FED30(&v9))
  {
    if ((v10 & 4) != 0)
    {
      v3 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
    }

    else
    {
      v3 = v9;
    }

    v4 = *v3;
  }

  else
  {
    v4 = 0.0;
    if (sub_29A197328(&v9))
    {
      if ((v10 & 4) != 0)
      {
        v5 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
      }

      else
      {
        v5 = v9;
      }

      v6 = *(v5 + 32);
      if (v6)
      {
        v7 = *(v5 + 24);
        if (!v7)
        {
          v7 = (v6 - 16);
        }

        atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_DecRef();
    }
  }

  sub_29A186B14(&v9);
  return v4;
}

void sub_29AF35A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF35A80(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A209FB90;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF35AD8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF35AF4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF35B1C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF35B4C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209FBE0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF35C10(void *a1, void *a2, void *a3, uint64_t *a4)
{
  *a1 = &unk_2A209FC08;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF35CC4(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A209FC08;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF35D40(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A209FC08;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF35DC0(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2043530;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_DecRef();
}

uint64_t sub_29AF35E54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  result = sub_29A1948F8(a3, *(*(a1 + 16) + 16), a2);
  v6 = *(a1 + 16);
  v9 = *v6;
  v7 = v6 + 1;
  v8 = v9;
  if (v9 != v7)
  {
    v10 = 0;
    do
    {
      v11 = sub_29AF35F48((a1 + 8), v8 + 28, (a1 + 32));
      v13 = v12;
      v15 = v14;
      result = sub_29A194CC8(a3);
      v16 = (*(a3 + 32) + 24 * v10);
      *v16 = v11;
      *(v16 + 1) = v13;
      *(v16 + 2) = v15;
      v17 = v8[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v8[2];
          v19 = *v18 == v8;
          v8 = v18;
        }

        while (!v19);
      }

      ++v10;
      v8 = v18;
    }

    while (v18 != v7);
  }

  return result;
}

double sub_29AF35F48(uint64_t *a1, uint64_t a2, atomic_uint **a3)
{
  v11 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a3, &v9);
  if (sub_29A3FE138(&v9))
  {
    if ((v10 & 4) != 0)
    {
      v3 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
    }

    else
    {
      v3 = v9;
    }

    v4 = *v3;
  }

  else
  {
    v4 = 0.0;
    if (sub_29A194DC4(&v9))
    {
      if ((v10 & 4) != 0)
      {
        v5 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
      }

      else
      {
        v5 = v9;
      }

      v6 = *(v5 + 32);
      if (v6)
      {
        v7 = *(v5 + 24);
        if (!v7)
        {
          v7 = (v6 - 16);
        }

        atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_DecRef();
    }
  }

  sub_29A186B14(&v9);
  return v4;
}

void sub_29AF36078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF360A8(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A209FC58;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF36100(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF3611C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF36144(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF36174(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209FCA8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF36238(void *a1, void *a2, void *a3, uint64_t *a4)
{
  *a1 = &unk_2A209FCD0;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF362EC(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A209FCD0;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF36368(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A209FCD0;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF363E8(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2043308;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_DecRef();
}

uint64_t sub_29AF3647C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29A1921FC(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      v10 = sub_29AF3655C((a1 + 8), v7 + 28, (a1 + 32));
      v12 = v11;
      result = sub_29A19255C(a2);
      v13 = (*(a2 + 32) + 16 * v9);
      *v13 = v10;
      *(v13 + 1) = v12;
      v14 = v7[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v7[2];
          v16 = *v15 == v7;
          v7 = v15;
        }

        while (!v16);
      }

      ++v9;
      v7 = v15;
    }

    while (v15 != v6);
  }

  return result;
}

double sub_29AF3655C(uint64_t *a1, uint64_t a2, atomic_uint **a3)
{
  v11 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a3, &v9);
  if (sub_29A3FD4E0(&v9))
  {
    if ((v10 & 4) != 0)
    {
      v3 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
    }

    else
    {
      v3 = v9;
    }

    v4 = *v3;
  }

  else
  {
    v4 = 0.0;
    if (sub_29A192658(&v9))
    {
      if ((v10 & 4) != 0)
      {
        v5 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
      }

      else
      {
        v5 = v9;
      }

      v6 = *(v5 + 32);
      if (v6)
      {
        v7 = *(v5 + 24);
        if (!v7)
        {
          v7 = (v6 - 16);
        }

        atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_DecRef();
    }
  }

  sub_29A186B14(&v9);
  return v4;
}

void sub_29AF36674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF366A4(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A209FD20;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF366FC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF36718(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF36740(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF36770(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209FD70))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF36834(void *a1, void *a2, void *a3, uint64_t *a4)
{
  *a1 = &unk_2A209FD98;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF368E8(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A209FD98;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF36964(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A209FD98;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF369E4(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A20438C8;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4f>::_DecRef();
}

uint64_t sub_29AF36A78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  result = sub_29A198988(a8, *(*(a1 + 16) + 16), a2, a3, a4, a5, a6, a7);
  v11 = *(a1 + 16);
  v14 = *v11;
  v12 = v11 + 1;
  v13 = v14;
  if (v14 != v12)
  {
    v15 = 0;
    do
    {
      sub_29AF36B60((a1 + 8), (a1 + 32), v23);
      result = sub_29A198DC8(a8);
      v16 = (*(a8 + 32) + (v15 << 6));
      v17 = v23[0];
      v18 = v23[1];
      v19 = v23[3];
      v16[2] = v23[2];
      v16[3] = v19;
      *v16 = v17;
      v16[1] = v18;
      v20 = v13[1];
      if (v20)
      {
        do
        {
          v21 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          v21 = v13[2];
          v22 = *v21 == v13;
          v13 = v21;
        }

        while (!v22);
      }

      ++v15;
      v13 = v21;
    }

    while (v21 != v12);
  }

  return result;
}

uint64_t sub_29AF36B60@<X0>(uint64_t *a1@<X0>, atomic_uint **a2@<X2>, _OWORD *a3@<X8>)
{
  v16 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a2, &v14);
  if (sub_29A76D024(&v14))
  {
    if ((v15 & 4) != 0)
    {
      v4 = (*((v15 & 0xFFFFFFFFFFFFFFF8) + 168))(&v14);
    }

    else
    {
      v4 = v14;
    }

    v5 = v4[1];
    *a3 = *v4;
    a3[1] = v5;
    v6 = v4[3];
    a3[2] = v4[2];
    a3[3] = v6;
  }

  else
  {
    if (sub_29A197E30(&v14))
    {
      if ((v15 & 4) != 0)
      {
        v7 = (*((v15 & 0xFFFFFFFFFFFFFFF8) + 168))(&v14);
      }

      else
      {
        v7 = v14;
      }

      v13 = *v7;
      v8 = *(v7 + 32);
      if (v8)
      {
        v9 = *(v7 + 24);
        if (!v9)
        {
          v9 = (v8 - 1);
        }

        atomic_fetch_add_explicit(v9, 1uLL, memory_order_relaxed);
      }

      if (v13)
      {
        v10 = v8[1];
        *a3 = *v8;
        a3[1] = v10;
        v11 = v8[3];
        a3[2] = v8[2];
        a3[3] = v11;
      }

      else
      {
        a3[2] = 0u;
        a3[3] = 0u;
        *a3 = 0u;
        a3[1] = 0u;
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4f>::_DecRef();
    }

    a3[2] = 0u;
    a3[3] = 0u;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return sub_29A186B14(&v14);
}

void sub_29AF36C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF36CCC(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A209FDE8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF36D24(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF36D40(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF36D68(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF36D98(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209FE38))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF36E5C(void *a1, void *a2, void *a3, uint64_t *a4)
{
  *a1 = &unk_2A209FE60;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF36F10(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A209FE60;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF36F8C(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A209FE60;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF3700C(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A207D2C8;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3f>::_DecRef();
}

uint64_t sub_29AF370A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  result = sub_29A859D60(a5, *(*(a1 + 16) + 16), a2, a3, a4);
  v8 = *(a1 + 16);
  v11 = *v8;
  v9 = v8 + 1;
  v10 = v11;
  if (v11 != v9)
  {
    v12 = 0;
    do
    {
      sub_29AF37190((a1 + 8), (a1 + 32), v19);
      result = sub_29A85C4A8(a5);
      v13 = *(a5 + 32) + 36 * v12;
      v14 = v19[0];
      v15 = v19[1];
      *(v13 + 32) = v20;
      *v13 = v14;
      *(v13 + 16) = v15;
      v16 = v10[1];
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = v10[2];
          v18 = *v17 == v10;
          v10 = v17;
        }

        while (!v18);
      }

      ++v12;
      v10 = v17;
    }

    while (v17 != v9);
  }

  return result;
}

uint64_t sub_29AF37190@<X0>(uint64_t *a1@<X0>, atomic_uint **a2@<X2>, uint64_t a3@<X8>)
{
  v14 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a2, &v12);
  if (sub_29AD8F100(&v12))
  {
    if ((v13 & 4) != 0)
    {
      v4 = (*((v13 & 0xFFFFFFFFFFFFFFF8) + 168))(&v12);
    }

    else
    {
      v4 = v12;
    }

    v5 = *(v4 + 16);
    *a3 = *v4;
    *(a3 + 16) = v5;
    *(a3 + 32) = *(v4 + 32);
  }

  else
  {
    if (sub_29AD57258(&v12))
    {
      if ((v13 & 4) != 0)
      {
        v6 = (*((v13 & 0xFFFFFFFFFFFFFFF8) + 168))(&v12);
      }

      else
      {
        v6 = v12;
      }

      v11 = *v6;
      v7 = *(v6 + 32);
      if (v7)
      {
        v8 = *(v6 + 24);
        if (!v8)
        {
          v8 = (v7 - 16);
        }

        atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
      }

      if (v11)
      {
        v9 = *(v7 + 16);
        *a3 = *v7;
        *(a3 + 16) = v9;
        *(a3 + 32) = *(v7 + 32);
      }

      else
      {
        *(a3 + 32) = 0;
        *a3 = 0u;
        *(a3 + 16) = 0u;
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3f>::_DecRef();
    }

    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return sub_29A186B14(&v12);
}

void sub_29AF372CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF372FC(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A209FEB0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF37354(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF37370(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF37398(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF373C8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209FF00))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF3748C(void *a1, void *a2, void *a3, uint64_t *a4)
{
  *a1 = &unk_2A209FF28;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF37540(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A209FF28;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF375BC(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A209FF28;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF3763C(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A207D380;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2f>::_DecRef();
}

uint64_t sub_29AF376D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29AC7F660(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      v10 = sub_29AF377C4((a1 + 8), v7 + 28, (a1 + 32));
      v12 = v11;
      v14 = v13;
      v16 = v15;
      result = sub_29AC7FCAC(a2);
      v17 = (*(a2 + 32) + 16 * v9);
      *v17 = v10;
      *(v17 + 1) = v12;
      *(v17 + 2) = v14;
      *(v17 + 3) = v16;
      v18 = v7[1];
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v7[2];
          v20 = *v19 == v7;
          v7 = v19;
        }

        while (!v20);
      }

      ++v9;
      v7 = v19;
    }

    while (v19 != v6);
  }

  return result;
}

float sub_29AF377C4(uint64_t *a1, uint64_t a2, atomic_uint **a3)
{
  v11 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a3, &v9);
  if (sub_29AD8F444(&v9))
  {
    if ((v10 & 4) != 0)
    {
      v3 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
    }

    else
    {
      v3 = v9;
    }

    v4 = *v3;
  }

  else
  {
    v4 = 0.0;
    if (sub_29AD57C40(&v9))
    {
      if ((v10 & 4) != 0)
      {
        v5 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
      }

      else
      {
        v5 = v9;
      }

      v6 = *(v5 + 32);
      if (v6)
      {
        v7 = *(v5 + 24);
        if (!v7)
        {
          v7 = (v6 - 16);
        }

        atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2f>::_DecRef();
    }
  }

  sub_29A186B14(&v9);
  return v4;
}

void sub_29AF378FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF3792C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A209FF78;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF37984(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF379A0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF379C8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF379F8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A209FFC8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF37ABC(void *a1, void *a2, void *a3, uint64_t *a4)
{
  *a1 = &unk_2A209FFF0;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF37B70(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A209FFF0;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF37BEC(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A209FFF0;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF37C6C(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2043810;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::_DecRef();
}

uint64_t sub_29AF37D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  result = sub_29A197D6C(a8, *(*(a1 + 16) + 16), a2, a3, a4, a5, a6, a7);
  v11 = *(a1 + 16);
  v14 = *v11;
  v12 = v11 + 1;
  v13 = v14;
  if (v14 != v12)
  {
    v15 = 0;
    do
    {
      sub_29AF37DF8((a1 + 8), (a1 + 32), v26);
      result = sub_29A198240(a8);
      v16 = (*(a8 + 32) + (v15 << 7));
      v17 = v26[0];
      v18 = v26[1];
      v19 = v26[3];
      v16[2] = v26[2];
      v16[3] = v19;
      v20 = v26[7];
      v22 = v26[4];
      v21 = v26[5];
      v16[6] = v26[6];
      v16[7] = v20;
      v16[4] = v22;
      v16[5] = v21;
      *v16 = v17;
      v16[1] = v18;
      v23 = v13[1];
      if (v23)
      {
        do
        {
          v24 = v23;
          v23 = *v23;
        }

        while (v23);
      }

      else
      {
        do
        {
          v24 = v13[2];
          v25 = *v24 == v13;
          v13 = v24;
        }

        while (!v25);
      }

      ++v15;
      v13 = v24;
    }

    while (v24 != v12);
  }

  return result;
}

uint64_t sub_29AF37DF8@<X0>(uint64_t *a1@<X0>, atomic_uint **a2@<X2>, _OWORD *a3@<X8>)
{
  v20 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a2, &v18);
  if (sub_29A3FC38C(&v18))
  {
    if ((v19 & 4) != 0)
    {
      v4 = (*((v19 & 0xFFFFFFFFFFFFFFF8) + 168))(&v18);
    }

    else
    {
      v4 = v18;
    }

    v5 = v4[5];
    a3[4] = v4[4];
    a3[5] = v5;
    v6 = v4[7];
    a3[6] = v4[6];
    a3[7] = v6;
    v7 = v4[1];
    *a3 = *v4;
    a3[1] = v7;
    v8 = v4[3];
    a3[2] = v4[2];
    a3[3] = v8;
  }

  else
  {
    if (sub_29A19833C(&v18))
    {
      if ((v19 & 4) != 0)
      {
        v9 = (*((v19 & 0xFFFFFFFFFFFFFFF8) + 168))(&v18);
      }

      else
      {
        v9 = v18;
      }

      v17 = *v9;
      v10 = *(v9 + 32);
      if (v10)
      {
        v11 = *(v9 + 24);
        if (!v11)
        {
          v11 = (v10 - 1);
        }

        atomic_fetch_add_explicit(v11, 1uLL, memory_order_relaxed);
      }

      if (v17)
      {
        v12 = v10[5];
        a3[4] = v10[4];
        a3[5] = v12;
        v13 = v10[7];
        a3[6] = v10[6];
        a3[7] = v13;
        v14 = v10[1];
        *a3 = *v10;
        a3[1] = v14;
        v15 = v10[3];
        a3[2] = v10[2];
        a3[3] = v15;
      }

      else
      {
        a3[6] = 0u;
        a3[7] = 0u;
        a3[4] = 0u;
        a3[5] = 0u;
        a3[2] = 0u;
        a3[3] = 0u;
        *a3 = 0u;
        a3[1] = 0u;
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::_DecRef();
    }

    a3[6] = 0u;
    a3[7] = 0u;
    a3[4] = 0u;
    a3[5] = 0u;
    a3[2] = 0u;
    a3[3] = 0u;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return sub_29A186B14(&v18);
}

void sub_29AF37F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF37F94(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A0040;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF37FEC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF38008(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF38030(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF38060(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A0090))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF38124(void *a1, void *a2, void *a3, uint64_t *a4)
{
  *a1 = &unk_2A20A00B8;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF381D8(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A00B8;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF38254(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A00B8;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF382D4(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2048560;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>::_DecRef();
}

uint64_t sub_29AF38368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  result = sub_29A221F2C(a8, *(*(a1 + 16) + 16), a2, a3, a4, a5, a6, a7);
  v11 = *(a1 + 16);
  v14 = *v11;
  v12 = v11 + 1;
  v13 = v14;
  if (v14 != v12)
  {
    v15 = 0;
    do
    {
      sub_29AF38464((a1 + 8), (a1 + 32), v23);
      result = sub_29A222868(a8);
      v16 = *(a8 + 32) + 72 * v15;
      v17 = v23[1];
      v18 = v23[2];
      v19 = v23[3];
      *(v16 + 64) = v24;
      *(v16 + 32) = v18;
      *(v16 + 48) = v19;
      *v16 = v23[0];
      *(v16 + 16) = v17;
      v20 = v13[1];
      if (v20)
      {
        do
        {
          v21 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          v21 = v13[2];
          v22 = *v21 == v13;
          v13 = v21;
        }

        while (!v22);
      }

      ++v15;
      v13 = v21;
    }

    while (v21 != v12);
  }

  return result;
}

uint64_t sub_29AF38464@<X0>(uint64_t *a1@<X0>, atomic_uint **a2@<X2>, uint64_t a3@<X8>)
{
  v16 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a2, &v14);
  if (sub_29A3FBEFC(&v14))
  {
    if ((v15 & 4) != 0)
    {
      v4 = (*((v15 & 0xFFFFFFFFFFFFFFF8) + 168))(&v14);
    }

    else
    {
      v4 = v14;
    }

    v5 = *(v4 + 48);
    *(a3 + 32) = *(v4 + 32);
    *(a3 + 48) = v5;
    *(a3 + 64) = *(v4 + 64);
    v6 = *(v4 + 16);
    *a3 = *v4;
    *(a3 + 16) = v6;
  }

  else
  {
    if (sub_29A3FC06C(&v14))
    {
      if ((v15 & 4) != 0)
      {
        v7 = (*((v15 & 0xFFFFFFFFFFFFFFF8) + 168))(&v14);
      }

      else
      {
        v7 = v14;
      }

      v13 = *v7;
      v8 = *(v7 + 32);
      if (v8)
      {
        v9 = *(v7 + 24);
        if (!v9)
        {
          v9 = (v8 - 16);
        }

        atomic_fetch_add_explicit(v9, 1uLL, memory_order_relaxed);
      }

      if (v13)
      {
        v10 = *(v8 + 48);
        *(a3 + 32) = *(v8 + 32);
        *(a3 + 48) = v10;
        *(a3 + 64) = *(v8 + 64);
        v11 = *(v8 + 16);
        *a3 = *v8;
        *(a3 + 16) = v11;
      }

      else
      {
        *(a3 + 64) = 0;
        *(a3 + 32) = 0u;
        *(a3 + 48) = 0u;
        *a3 = 0u;
        *(a3 + 16) = 0u;
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>::_DecRef();
    }

    *(a3 + 64) = 0;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return sub_29A186B14(&v14);
}

void sub_29AF385B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF385E8(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A0108;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF38640(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF3865C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF38684(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF386B4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A0158))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF38778(void *a1, void *a2, void *a3, uint64_t *a4)
{
  *a1 = &unk_2A20A0180;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF3882C(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A0180;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF388A8(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A0180;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF38928(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A20483F0;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>::_DecRef();
}

uint64_t sub_29AF389BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  result = sub_29A220F88(a4, *(*(a1 + 16) + 16), a2, a3);
  v7 = *(a1 + 16);
  v10 = *v7;
  v8 = v7 + 1;
  v9 = v10;
  if (v10 != v8)
  {
    v11 = 0;
    do
    {
      v12 = sub_29AF38AB0((a1 + 8), v9 + 28, (a1 + 32));
      v14 = v13;
      v16 = v15;
      v18 = v17;
      result = sub_29A2216E8(a4);
      v19 = (*(a4 + 32) + 32 * v11);
      *v19 = v12;
      *(v19 + 1) = v14;
      *(v19 + 2) = v16;
      *(v19 + 3) = v18;
      v20 = v9[1];
      if (v20)
      {
        do
        {
          v21 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          v21 = v9[2];
          v22 = *v21 == v9;
          v9 = v21;
        }

        while (!v22);
      }

      ++v11;
      v9 = v21;
    }

    while (v21 != v8);
  }

  return result;
}

double sub_29AF38AB0(uint64_t *a1, uint64_t a2, atomic_uint **a3)
{
  v11 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a3, &v9);
  if (sub_29A3FB9E8(&v9))
  {
    if ((v10 & 4) != 0)
    {
      v3 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
    }

    else
    {
      v3 = v9;
    }

    v4 = *v3;
  }

  else
  {
    v4 = 0.0;
    if (sub_29A3FBB48(&v9))
    {
      if ((v10 & 4) != 0)
      {
        v5 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
      }

      else
      {
        v5 = v9;
      }

      v6 = *(v5 + 32);
      if (v6)
      {
        v7 = *(v5 + 24);
        if (!v7)
        {
          v7 = (v6 - 16);
        }

        atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>::_DecRef();
    }
  }

  sub_29A186B14(&v9);
  return v4;
}

void sub_29AF38BE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF38C18(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A01D0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF38C70(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF38C8C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF38CB4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF38CE4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A0220))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF38DA8(void *a1, void *a2, void *a3, uint64_t *a4)
{
  *a1 = &unk_2A20A0248;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF38E5C(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A0248;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF38ED8(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A0248;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF38F58(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2044220;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange3f>::_DecRef();
}

uint64_t sub_29AF38FEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  result = sub_29A1A253C(a3, *(*(a1 + 16) + 16), a2);
  v6 = *(a1 + 16);
  v9 = *v6;
  v7 = v6 + 1;
  v8 = v9;
  if (v9 != v7)
  {
    v10 = 0;
    do
    {
      sub_29AF390D8((a1 + 8), (a1 + 32), &v16);
      result = sub_29A1A29B4(a3);
      v11 = *(a3 + 32) + 24 * v10;
      v12 = v16;
      *(v11 + 16) = v17;
      *v11 = v12;
      v13 = v8[1];
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
          v14 = v8[2];
          v15 = *v14 == v8;
          v8 = v14;
        }

        while (!v15);
      }

      ++v10;
      v8 = v14;
    }

    while (v14 != v7);
  }

  return result;
}

uint64_t sub_29AF390D8@<X0>(uint64_t *a1@<X0>, atomic_uint **a2@<X2>, uint64_t a3@<X8>)
{
  v12 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a2, &v10);
  if (sub_29AD9009C(&v10))
  {
    if ((v11 & 4) != 0)
    {
      v4 = (*((v11 & 0xFFFFFFFFFFFFFFF8) + 168))(&v10);
    }

    else
    {
      v4 = v10;
    }

    *a3 = *v4;
    *(a3 + 16) = *(v4 + 16);
  }

  else
  {
    if (sub_29A1A19C0(&v10))
    {
      if ((v11 & 4) != 0)
      {
        v5 = (*((v11 & 0xFFFFFFFFFFFFFFF8) + 168))(&v10);
      }

      else
      {
        v5 = v10;
      }

      v9 = *v5;
      v6 = *(v5 + 32);
      if (v6)
      {
        v7 = *(v5 + 24);
        if (!v7)
        {
          v7 = (v6 - 16);
        }

        atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
      }

      if (v9)
      {
        *a3 = *v6;
        *(a3 + 16) = *(v6 + 16);
      }

      else
      {
        *a3 = xmmword_29B480F60;
        *(a3 + 16) = 0x80000000800000;
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange3f>::_DecRef();
    }

    *a3 = xmmword_29B480F60;
    *(a3 + 16) = 0x80000000800000;
  }

  return sub_29A186B14(&v10);
}

void sub_29AF39224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF39254(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A0298;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF392AC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF392C8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF392F0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF39320(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A02E8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF393E4(void *a1, void *a2, void *a3, uint64_t *a4)
{
  *a1 = &unk_2A20A0310;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF39498(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A0310;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF39514(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A0310;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF39594(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2044168;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange3d>::_DecRef();
}

uint64_t sub_29AF39628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  result = sub_29A1A18E4(a6, *(*(a1 + 16) + 16), a2, a3, a4, a5);
  v9 = *(a1 + 16);
  v12 = *v9;
  v10 = v9 + 1;
  v11 = v12;
  if (v12 != v10)
  {
    v13 = 0;
    do
    {
      sub_29AF39714((a1 + 8), (a1 + 32), v20);
      result = sub_29A1A1DA8(a6);
      v14 = *(a6 + 32) + 48 * v13;
      v15 = v20[0];
      v16 = v20[2];
      *(v14 + 16) = v20[1];
      *(v14 + 32) = v16;
      *v14 = v15;
      v17 = v11[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v11[2];
          v19 = *v18 == v11;
          v11 = v18;
        }

        while (!v19);
      }

      ++v13;
      v11 = v18;
    }

    while (v18 != v10);
  }

  return result;
}

uint64_t sub_29AF39714@<X0>(uint64_t *a1@<X0>, atomic_uint **a2@<X2>, int64x2_t *a3@<X8>)
{
  v16 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a2, &v14);
  if (sub_29AD903E4(&v14))
  {
    if ((v15 & 4) != 0)
    {
      v4 = (*((v15 & 0xFFFFFFFFFFFFFFF8) + 168))(&v14);
    }

    else
    {
      v4 = v14;
    }

    v5 = *(v4 + 16);
    *a3 = *v4;
    a3[1] = v5;
    v6 = *(v4 + 32);
  }

  else
  {
    if (sub_29A1A1EA4(&v14))
    {
      if ((v15 & 4) != 0)
      {
        v7 = (*((v15 & 0xFFFFFFFFFFFFFFF8) + 168))(&v14);
      }

      else
      {
        v7 = v14;
      }

      v13 = *v7;
      v8 = *(v7 + 32);
      if (v8)
      {
        i64 = *(v7 + 24);
        if (!i64)
        {
          i64 = v8[-1].i64;
        }

        atomic_fetch_add_explicit(i64, 1uLL, memory_order_relaxed);
      }

      if (v13)
      {
        v10 = v8[1];
        *a3 = *v8;
        a3[1] = v10;
        v11 = v8[2];
      }

      else
      {
        *a3 = vdupq_n_s64(0x47EFFFFFE0000000uLL);
        a3[1] = xmmword_29B43C5A0;
        v11 = vdupq_n_s64(0xC7EFFFFFE0000000);
      }

      a3[2] = v11;
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange3d>::_DecRef();
    }

    *a3 = vdupq_n_s64(0x47EFFFFFE0000000uLL);
    a3[1] = xmmword_29B43C5A0;
    v6 = vdupq_n_s64(0xC7EFFFFFE0000000);
  }

  a3[2] = v6;
  return sub_29A186B14(&v14);
}

void sub_29AF39880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF398B0(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A0360;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF39908(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF39924(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF3994C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF3997C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A03B0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF39A40(void *a1, void *a2, void *a3, uint64_t *a4)
{
  *a1 = &unk_2A20A03D8;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF39AF4(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A03D8;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF39B70(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A03D8;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF39BF0(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A20440B0;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange2f>::_DecRef();
}

uint64_t sub_29AF39C84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29A1A0CBC(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      v10 = sub_29AF39D78((a1 + 8), v7 + 28, (a1 + 32));
      v12 = v11;
      v14 = v13;
      v16 = v15;
      result = sub_29A1A10C0(a2);
      v17 = (*(a2 + 32) + 16 * v9);
      *v17 = v10;
      *(v17 + 1) = v12;
      *(v17 + 2) = v14;
      *(v17 + 3) = v16;
      v18 = v7[1];
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v7[2];
          v20 = *v19 == v7;
          v7 = v19;
        }

        while (!v20);
      }

      ++v9;
      v7 = v19;
    }

    while (v19 != v6);
  }

  return result;
}

float sub_29AF39D78(uint64_t *a1, uint64_t a2, atomic_uint **a3)
{
  v11 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a3, &v9);
  if (sub_29AD90734(&v9))
  {
    if ((v10 & 4) != 0)
    {
      v3 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
    }

    else
    {
      v3 = v9;
    }

    v4 = *v3;
  }

  else
  {
    if (sub_29A1A0250(&v9))
    {
      if ((v10 & 4) != 0)
      {
        v5 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
      }

      else
      {
        v5 = v9;
      }

      v6 = *(v5 + 32);
      if (v6)
      {
        v7 = *(v5 + 24);
        if (!v7)
        {
          v7 = (v6 - 16);
        }

        atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange2f>::_DecRef();
    }

    v4 = 3.4028e38;
  }

  sub_29A186B14(&v9);
  return v4;
}

void sub_29AF39ED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF39F08(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A0428;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF39F60(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF39F7C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF39FA4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF39FD4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A0478))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF3A098(void *a1, void *a2, void *a3, uint64_t *a4)
{
  *a1 = &unk_2A20A04A0;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF3A14C(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A04A0;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF3A1C8(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A04A0;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF3A248(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2043FF8;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange2d>::_DecRef();
}

uint64_t sub_29AF3A2DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  result = sub_29A1A0180(a4, *(*(a1 + 16) + 16), a2, a3);
  v7 = *(a1 + 16);
  v10 = *v7;
  v8 = v7 + 1;
  v9 = v10;
  if (v10 != v8)
  {
    v11 = 0;
    do
    {
      v12 = sub_29AF3A3D0((a1 + 8), v9 + 28, (a1 + 32));
      v14 = v13;
      v16 = v15;
      v18 = v17;
      result = sub_29A1A05E0(a4);
      v19 = (*(a4 + 32) + 32 * v11);
      *v19 = v12;
      *(v19 + 1) = v14;
      *(v19 + 2) = v16;
      *(v19 + 3) = v18;
      v20 = v9[1];
      if (v20)
      {
        do
        {
          v21 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          v21 = v9[2];
          v22 = *v21 == v9;
          v9 = v21;
        }

        while (!v22);
      }

      ++v11;
      v9 = v21;
    }

    while (v21 != v8);
  }

  return result;
}

double sub_29AF3A3D0(uint64_t *a1, uint64_t a2, atomic_uint **a3)
{
  v11 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdImaging_NiInstanceAggregationSceneIndex_Impl::_GetPrimvarValue(a1, a3, &v9);
  if (sub_29AD90A84(&v9))
  {
    if ((v10 & 4) != 0)
    {
      v3 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
    }

    else
    {
      v3 = v9;
    }

    v4 = *v3;
  }

  else
  {
    if (sub_29A1A06DC(&v9))
    {
      if ((v10 & 4) != 0)
      {
        v5 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
      }

      else
      {
        v5 = v9;
      }

      v6 = *(v5 + 32);
      if (v6)
      {
        v7 = *(v5 + 24);
        if (!v7)
        {
          v7 = (v6 - 16);
        }

        atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange2d>::_DecRef();
    }

    v4 = 3.40282347e38;
  }

  sub_29A186B14(&v9);
  return v4;
}

void sub_29AF3A52C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void *sub_29AF3A55C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20A04F0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AF3A5B4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2C466C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AF3A5D0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AF3A5F8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29AF3A628(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20A0540))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AF3A6EC(void *a1, void *a2, void *a3, uint64_t *a4)
{
  *a1 = &unk_2A20A0568;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::HdSceneIndexBase>::_AddRef();
}

void sub_29AF3A7A0(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A0568;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF3A81C(pxrInternal__aapl__pxrReserved__::HdDataSourceBase *a1)
{
  *a1 = &unk_2A20A0568;
  v2 = *(a1 + 4);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29ABD4DDC(a1 + 1);
}

void sub_29AF3A89C(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 32))(v3);
  a2[1] = &off_2A2043F40;
  sub_29A18ECC8(a2, v3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange1f>::_DecRef();
}

uint64_t sub_29AF3A930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29A19F70C(a2, *(*(a1 + 16) + 16));
  v5 = *(a1 + 16);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    v9 = 0;
    do
    {
      v10 = sub_29AF3AA10((a1 + 8), v7 + 28, (a1 + 32));
      v12 = v11;
      result = sub_29A19FB14(a2);
      v13 = (*(a2 + 32) + 8 * v9);
      *v13 = v10;
      *(v13 + 1) = v12;
      v14 = v7[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v7[2];
          v16 = *v15 == v7;
          v7 = v15;
        }

        while (!v16);
      }

      ++v9;
      v7 = v15;
    }

    while (v15 != v6);
  }

  return result;
}