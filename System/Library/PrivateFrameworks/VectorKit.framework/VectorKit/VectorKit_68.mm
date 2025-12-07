void sub_1B2C4E56C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, __int128 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (*(&a13 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&a13 + 1));
  }

  _Unwind_Resume(exception_object);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<VKTrafficIncidentFeature * {__strong},void *>>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

uint64_t md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0::operator()(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a1 + 200))(a1);
  v4 = [v3 routeOffset];
  v5 = (*(**a2 + 200))();
  v6 = [v5 routeOffset];
  if (v4 >= v6)
  {
    v7 = (v4 == v6) & (*(&v4 + 1) < *(&v6 + 1));
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

uint64_t std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0 &,std::shared_ptr<md::TrafficIncidentLabelFeature> *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0::operator()(*a2, a1);
  v9 = md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0::operator()(*a3, a2);
  if (v8)
  {
    v11 = a1 + 1;
    v10 = *a1;
    if (v9)
    {
      *a1 = *a3;
LABEL_9:
      *a3 = v10;
      v14 = a3 + 1;
      goto LABEL_10;
    }

    *a1 = *a2;
    *a2 = v10;
    v11 = a2 + 1;
    v16 = a1[1];
    a1[1] = a2[1];
    a2[1] = v16;
    if (md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0::operator()(*a3, a2))
    {
      v10 = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  else if (v9)
  {
    v12 = *a2;
    *a2 = *a3;
    *a3 = v12;
    v14 = a2 + 1;
    v13 = a2[1];
    a2[1] = a3[1];
    a3[1] = v13;
    if (md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0::operator()(*a2, a1))
    {
      v15 = *a1;
      *a1 = *a2;
      v11 = a1 + 1;
      *a2 = v15;
LABEL_10:
      v17 = *v11;
      *v11 = *v14;
      *v14 = v17;
    }
  }

  result = md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0::operator()(*a4, a3);
  if (result)
  {
    v19 = *a3;
    *a3 = *a4;
    *a4 = v19;
    v20 = a3[1];
    a3[1] = a4[1];
    a4[1] = v20;
    result = md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0::operator()(*a3, a2);
    if (result)
    {
      v21 = *a2;
      *a2 = *a3;
      *a3 = v21;
      v22 = a2[1];
      a2[1] = a3[1];
      a3[1] = v22;
      result = md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0::operator()(*a2, a1);
      if (result)
      {
        v23 = *a1;
        *a1 = *a2;
        *a2 = v23;
        v24 = a1[1];
        a1[1] = a2[1];
        a2[1] = v24;
      }
    }
  }

  return result;
}

uint64_t std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0 &,std::shared_ptr<md::TrafficIncidentLabelFeature> *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0 &,std::shared_ptr<md::TrafficIncidentLabelFeature> *,0>(a1, a2, a3, a4);
  result = md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0::operator()(*a5, a4);
  if (result)
  {
    v11 = *a4;
    *a4 = *a5;
    *a5 = v11;
    v12 = a4[1];
    a4[1] = a5[1];
    a5[1] = v12;
    result = md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0::operator()(*a4, a3);
    if (result)
    {
      v13 = *a3;
      *a3 = *a4;
      *a4 = v13;
      v14 = a3[1];
      a3[1] = a4[1];
      a4[1] = v14;
      result = md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0::operator()(*a3, a2);
      if (result)
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
        v16 = a2[1];
        a2[1] = a3[1];
        a3[1] = v16;
        result = md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0::operator()(*a2, a1);
        if (result)
        {
          v17 = *a1;
          *a1 = *a2;
          *a2 = v17;
          v18 = a1[1];
          a1[1] = a2[1];
          a2[1] = v18;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0 &,std::shared_ptr<md::TrafficIncidentLabelFeature> *>(uint64_t *a1, uint64_t *a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v7 = a1 + 2;
        v8 = md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0::operator()(a1[2], a1);
        v9 = md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0::operator()(*(a2 - 2), (a1 + 2));
        if (v8)
        {
          v11 = a1 + 1;
          v10 = *a1;
          if (v9)
          {
            *a1 = *(a2 - 2);
          }

          else
          {
            v25 = *(a1 + 1);
            a1[3] = a1[1];
            v11 = a1 + 3;
            a1[2] = v10;
            *a1 = v25;
            if (!md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0::operator()(*(a2 - 2), (a1 + 2)))
            {
              return 1;
            }

            v10 = *v7;
            *v7 = *(a2 - 2);
          }

          *(a2 - 2) = v10;
          v19 = a2 - 1;
        }

        else
        {
          if (!v9)
          {
            return 1;
          }

          v17 = a1[2];
          a1[2] = *(a2 - 2);
          *(a2 - 2) = v17;
          v19 = a1 + 3;
          v18 = a1[3];
          a1[3] = *(a2 - 1);
          *(a2 - 1) = v18;
          if (!md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0::operator()(a1[2], a1))
          {
            return 1;
          }

          v20 = *a1;
          *a1 = a1[2];
          a1[2] = v20;
          v11 = a1 + 1;
        }

        v26 = *v11;
        *v11 = *v19;
        *v19 = v26;
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0 &,std::shared_ptr<md::TrafficIncidentLabelFeature> *,0>(a1, a1 + 2, a1 + 4, a2 - 2);
        break;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0 &,std::shared_ptr<md::TrafficIncidentLabelFeature> *,0>(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2);
        break;
      default:
        goto LABEL_13;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if (md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0::operator()(*(a2 - 2), a1))
    {
      v5 = *a1;
      *a1 = *(a2 - 2);
      *(a2 - 2) = v5;
      v6 = a1[1];
      a1[1] = *(a2 - 1);
      *(a2 - 1) = v6;
    }

    return 1;
  }

LABEL_13:
  v12 = md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0::operator()(a1[2], a1);
  v13 = a1 + 4;
  v14 = md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0::operator()(a1[4], (a1 + 2));
  if (v12)
  {
    v16 = a1 + 1;
    v15 = *a1;
    if (v14)
    {
      *a1 = a1[4];
    }

    else
    {
      v27 = *(a1 + 1);
      a1[3] = a1[1];
      v16 = a1 + 3;
      a1[2] = v15;
      *a1 = v27;
      if (!md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0::operator()(a1[4], (a1 + 2)))
      {
        goto LABEL_31;
      }

      v15 = a1[2];
      a1[2] = a1[4];
    }

    a1[4] = v15;
    v23 = a1 + 5;
    goto LABEL_30;
  }

  if (v14)
  {
    v22 = *(a1 + 1);
    v21 = *(a1 + 2);
    *(a1 + 1) = v21;
    *(a1 + 2) = v22;
    if (md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0::operator()(v21, a1))
    {
      v23 = a1 + 3;
      v24 = *a1;
      *a1 = a1[2];
      a1[2] = v24;
      v16 = a1 + 1;
LABEL_30:
      v28 = *v16;
      *v16 = *v23;
      *v23 = v28;
    }
  }

LABEL_31:
  v29 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v30 = 0;
  v31 = 0;
  while (1)
  {
    if (md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0::operator()(*v29, v13))
    {
      v32 = *v29;
      *v29 = 0;
      v29[1] = 0;
      v42 = v32;
      v33 = v32;
      v34 = v30;
      while (1)
      {
        v35 = a1 + v34;
        v36 = *(a1 + v34 + 32);
        *(v35 + 4) = 0;
        *(v35 + 5) = 0;
        v37 = *(a1 + v34 + 56);
        *(v35 + 3) = v36;
        if (v37)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v37);
        }

        if (v34 == -32)
        {
          break;
        }

        v38 = md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0::operator()(v33, a1 + v34 + 16);
        v34 -= 16;
        if ((v38 & 1) == 0)
        {
          v39 = (a1 + v34 + 48);
          goto LABEL_41;
        }
      }

      v39 = a1;
LABEL_41:
      v40 = v39[1];
      *v39 = v42;
      if (v40)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v40);
      }

      if (++v31 == 8)
      {
        return v29 + 2 == a2;
      }
    }

    v13 = v29;
    v30 += 16;
    v29 += 2;
    if (v29 == a2)
    {
      return 1;
    }
  }
}

void sub_1B2C4ED50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (*(&a9 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&a9 + 1));
  }

  _Unwind_Resume(exception_object);
}

BOOL VKTrafficIncidentFeatureSetLessThan::operator()(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 uniqueString];
  if (v5 && ([v4 uniqueString], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
  {
    v7 = [v3 uniqueString];
    v8 = [v4 uniqueString];
    v9 = [v7 compare:v8];

    if (!v9)
    {
      v10 = [v4 isOnSelectedRoute];
      v11 = [v3 isOnSelectedRoute];
      if ((v11 & (v10 ^ 1)) != 0)
      {
        v9 = -1;
      }

      else
      {
        v9 = v10 & (v11 ^ 1u);
      }

      if (!v9)
      {
        v12 = [v3 routeRelevance];
        v13 = [v4 routeRelevance];
        if (v12 < v13)
        {
          v9 = -1;
        }

        else
        {
          v9 = v12 > v13;
        }
      }
    }
  }

  else
  {
    v14 = [v3 uniqueString];
    v15 = [v4 uniqueString];
    if (v14 < v15)
    {
      v9 = -1;
    }

    else
    {
      v9 = v14 > v15;
    }
  }

  return v9 == -1;
}

void geo::_retain_ptr<VKTrafficIncidentFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A542C0;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKTrafficIncidentFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A542C0;

  return a1;
}

void md::OverlayDataRequester::requestDataKeys(md::OverlayDataRequester *this, const gdc::SelectionContext *a2)
{
  v2 = *(a2 + 1);
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v3 = *(*(a2 + 8) + 24);
  if (v3)
  {
    do
    {
      v6 = *(v3 + 17);
      v7 = (*(v3 + 5) % (1 << v6) + (1 << v6)) % (1 << v6);
      v8 = *(v3 + 6) % (1 << v6) + (1 << v6);
      v15[0] = *(v3 + 16);
      v15[1] = v6;
      v16 = v7;
      v17 = v8 % (1 << v6);
      v18 = 0;
      v19 = 1;
      v21 = v20;
      if (*(this + 6) <= 1.9)
      {
        v9 = 512;
      }

      else
      {
        v9 = 256;
      }

      md::TileAdjustmentHelpers::adjustTileForSize(**(a2 + 8), v9, v15, &v20);
      v10 = v20;
      v11 = v21;
      while (v10 != v11)
      {
        gdc::Tiled::mapDataKeyFromTile(v12, 0, v10, *(this + 11), *(this + 4));
        gdc::LayerDataCollector::addDataKey(v2, v12, (v3 + 2));
        if (v13 != v14)
        {
          free(v13);
        }

        v10 += 32;
      }

      v3 = *v3;
    }

    while (v3);
    if (v20)
    {
      v21 = v20;
      operator delete(v20);
    }
  }
}

void sub_1B2C4F0F8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 128);
  if (v3)
  {
    *(v1 - 120) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::TextGlyph>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::TextQuad>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

double md::LabelText::LabelText(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *a1 = &unk_1F29E5388;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
    v4 = *(a1 + 8);
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  __asm { FMOV            V0.2S, #-1.0 }

  *(a1 + 96) = result;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 160) = 0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 192) = result;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 8) = v4 | (1 << a4);
  return result;
}

uint64_t md::LabelText::checkValidForZoom(uint64_t a1, char a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (*(v3 + 124) == 1)
  {
    v5 = *(a1 + 8);
    result = 1;
    v7 = 1 << a2;
    if (((1 << a2) & v5) != 0)
    {
      return result;
    }

    if (!md::FontOptions::needsGlyphUpdate(*(v3 + 16), (a3 + 72)))
    {
      *(a1 + 8) = v5 | v7;
      return 1;
    }
  }

  return 0;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::BufferLoadItem>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, a2 << 6, 0x1070040879ECE0CuLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::BufferLoadItem>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

uint64_t std::__function::__func<md::LabelGGLResourceCopier::uploadBuffer(geo::handle<mre::Buffer>,mre::BufferUploadDescriptor &&)::$_0,std::allocator<mre::BufferUploadDescriptor &&>,void ()(ggl::BufferLoadItem const&)>::operator()(uint64_t a1)
{
  result = *(a1 + 56);
  if (result)
  {
    return (*(*result + 48))();
  }

  return result;
}

uint64_t std::__function::__func<md::LabelGGLResourceCopier::uploadBuffer(geo::handle<mre::Buffer>,mre::BufferUploadDescriptor &&)::$_0,std::allocator<mre::BufferUploadDescriptor &&>,void ()(ggl::BufferLoadItem const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29E53F0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](a2 + 32, a1 + 32);
}

void std::__function::__func<md::LabelGGLResourceCopier::uploadBuffer(geo::handle<mre::Buffer>,mre::BufferUploadDescriptor &&)::$_0,std::allocator<mre::BufferUploadDescriptor &&>,void ()(ggl::BufferLoadItem const&)>::~__func(void *a1)
{
  *a1 = &unk_1F29E53F0;
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100]((a1 + 4));

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::LabelGGLResourceCopier::uploadBuffer(geo::handle<mre::Buffer>,mre::BufferUploadDescriptor &&)::$_0,std::allocator<mre::BufferUploadDescriptor &&>,void ()(ggl::BufferLoadItem const&)>::~__func(void *a1)
{
  *a1 = &unk_1F29E53F0;
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100]((a1 + 4));
  return a1;
}

ggl::zone_mallocator *md::LabelGGLResourceCopier::copyBufferToTexture(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, int *a5)
{
  BufferStorage = mre::GGLResourceStore::getBufferStorage(*(a1 + 24), a2);
  if (BufferStorage)
  {
    v10 = *BufferStorage;
  }

  else
  {
    v10 = 0;
  }

  v38.var0.value = a3;
  *&v38.isInternal = a4;
  result = mre::GGLResourceStore::getTextureStorage(*(a1 + 24), v38, 0);
  if (result)
  {
    if (v10)
    {
      v12 = *result;
      if (*result)
      {
        v13 = (***(a1 + 32))(*(a1 + 32));
        result = md::FrameGraph::renderQueueForPass(*(v13 + 8), *(a1 + 8));
        if (result)
        {
          result = *(*(result + 2) + 8 * *(a1 + 9));
          if (result)
          {
            v14 = *a5;
            v15 = a5[1];
            v16 = a5[2];
            v17 = *(a5 + 3);
            v18 = a5[5];
            v19 = a5[6];
            v20 = *(a5 + 7);
            v21 = a5[9];
            v22 = *(a5 + 40);
            v23[0] = 1;
            v24 = v10;
            v25 = 0;
            v26 = 0;
            v27 = v12;
            v28 = v17;
            v29 = v18;
            v30 = v20;
            v31 = v21;
            v32 = v14;
            v33 = v15;
            v34 = v16;
            v35 = 0;
            v36 = v19;
            v37 = v22;
            return ggl::CommandBuffer::pushCopyItem(result, v23);
          }
        }
      }
    }
  }

  return result;
}

ggl::zone_mallocator *ggl::CommandBuffer::pushCopyItem(ggl::zone_mallocator *result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 22);
  v5 = *(result + 23);
  if (v4 >= v5)
  {
    v14 = *(result + 21);
    v15 = 0x86BCA1AF286BCA1BLL * ((v4 - v14) >> 3);
    v16 = v15 + 1;
    if (v15 + 1 > 0x1AF286BCA1AF286)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v17 = 0x86BCA1AF286BCA1BLL * ((v5 - v14) >> 3);
    if (2 * v17 > v16)
    {
      v16 = 2 * v17;
    }

    if (v17 >= 0xD79435E50D7943)
    {
      v18 = 0x1AF286BCA1AF286;
    }

    else
    {
      v18 = v16;
    }

    v41[4] = result + 192;
    if (v18)
    {
      v19 = ggl::zone_mallocator::instance(result);
      v20 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::CopyItem>(v19, v18);
    }

    else
    {
      v20 = 0;
    }

    v21 = &v20[152 * v15];
    v22 = *(a2 + 16);
    *v21 = *a2;
    *(v21 + 1) = v22;
    v23 = *(a2 + 32);
    v24 = *(a2 + 48);
    v25 = *(a2 + 80);
    *(v21 + 4) = *(a2 + 64);
    *(v21 + 5) = v25;
    *(v21 + 2) = v23;
    *(v21 + 3) = v24;
    v26 = *(a2 + 96);
    v27 = *(a2 + 112);
    v28 = *(a2 + 128);
    *(v21 + 18) = *(a2 + 144);
    *(v21 + 7) = v27;
    *(v21 + 8) = v28;
    *(v21 + 6) = v26;
    v29 = *(v3 + 21);
    v30 = *(v3 + 22);
    v31 = &v21[v29 - v30];
    if (v30 != v29)
    {
      v32 = &v21[v29 - v30];
      do
      {
        v33 = *(v29 + 16);
        *v32 = *v29;
        *(v32 + 1) = v33;
        v34 = *(v29 + 32);
        v35 = *(v29 + 48);
        v36 = *(v29 + 80);
        *(v32 + 4) = *(v29 + 64);
        *(v32 + 5) = v36;
        *(v32 + 2) = v34;
        *(v32 + 3) = v35;
        v37 = *(v29 + 96);
        v38 = *(v29 + 112);
        v39 = *(v29 + 128);
        *(v32 + 18) = *(v29 + 144);
        *(v32 + 7) = v38;
        *(v32 + 8) = v39;
        *(v32 + 6) = v37;
        v29 += 152;
        v32 += 152;
      }

      while (v29 != v30);
      v29 = *(v3 + 21);
    }

    v13 = v21 + 152;
    *(v3 + 21) = v31;
    *(v3 + 22) = v21 + 152;
    v40 = *(v3 + 23);
    *(v3 + 23) = &v20[152 * v18];
    v41[2] = v29;
    v41[3] = v40;
    v41[0] = v29;
    v41[1] = v29;
    result = std::__split_buffer<ggl::CopyItem,geo::allocator_adapter<ggl::CopyItem,ggl::zone_mallocator> &>::~__split_buffer(v41);
  }

  else
  {
    v6 = *(a2 + 16);
    *v4 = *a2;
    *(v4 + 16) = v6;
    v7 = *(a2 + 32);
    v8 = *(a2 + 48);
    v9 = *(a2 + 80);
    *(v4 + 64) = *(a2 + 64);
    *(v4 + 80) = v9;
    *(v4 + 32) = v7;
    *(v4 + 48) = v8;
    v10 = *(a2 + 96);
    v11 = *(a2 + 112);
    v12 = *(a2 + 128);
    *(v4 + 144) = *(a2 + 144);
    *(v4 + 112) = v11;
    *(v4 + 128) = v12;
    *(v4 + 96) = v10;
    v13 = (v4 + 152);
  }

  *(v3 + 22) = v13;
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::CopyItem>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 152 * a2, 0x10200407E2CFBB0uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

ggl::zone_mallocator *std::__split_buffer<ggl::CopyItem,geo::allocator_adapter<ggl::CopyItem,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
{
  v2 = *(a1 + 2);
  if (v2 != *(a1 + 1))
  {
    *(a1 + 2) = (v2 - *(a1 + 1) - 152) % 0x98uLL + *(a1 + 1);
  }

  v3 = *a1;
  if (*a1)
  {
    v4 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::CopyItem>(v4, v3);
  }

  return a1;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::CopyItem>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

ggl::zone_mallocator *md::LabelGGLResourceCopier::copyTextureToTexture(uint64_t a1, TextureHandle a2, unint64_t a3, uint64_t a4, int *a5)
{
  TextureStorage = mre::GGLResourceStore::getTextureStorage(*(a1 + 24), a2, 0);
  if (TextureStorage)
  {
    v10 = *TextureStorage;
  }

  else
  {
    v10 = 0;
  }

  v39.var0.value = a3;
  *&v39.isInternal = a4;
  result = mre::GGLResourceStore::getTextureStorage(*(a1 + 24), v39, 0);
  if (result)
  {
    if (v10)
    {
      v12 = *result;
      if (*result)
      {
        v13 = (***(a1 + 32))(*(a1 + 32));
        result = md::FrameGraph::renderQueueForPass(*(v13 + 8), *(a1 + 8));
        if (result)
        {
          result = *(*(result + 2) + 8 * *(a1 + 9));
          if (result)
          {
            v14 = *a5;
            v15 = *(a5 + 1);
            v16 = a5[3];
            v17 = *(a5 + 2);
            v18 = a5[6];
            v19 = a5[7];
            v20 = *(a5 + 4);
            v21 = a5[10];
            v22 = *(a5 + 44);
            v23[0] = 3;
            v24 = 0;
            v25 = 0;
            v26 = v10;
            v27 = v12;
            v28 = v17;
            v29 = v18;
            v30 = v15;
            v31 = v16;
            v32 = v20;
            v33 = v21;
            v34 = 0;
            v35 = 0;
            v36 = v14;
            v37 = v19;
            v38 = v22;
            return ggl::CommandBuffer::pushCopyItem(result, v23);
          }
        }
      }
    }
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<md::GridRenderResources::TileMeshEntry,std::__list_iterator<geo::MarkedLRUCache<md::GridRenderResources::TileMeshEntry,std::shared_ptr<md::GridTileRenderable>,md::GridRenderResources::TileMeshEntryHash,std::equal_to<md::GridRenderResources::TileMeshEntry>>::CacheEntry,void *>>,std::__unordered_map_hasher<md::GridRenderResources::TileMeshEntry,std::__hash_value_type<md::GridRenderResources::TileMeshEntry,std::__list_iterator<geo::MarkedLRUCache<md::GridRenderResources::TileMeshEntry,std::shared_ptr<md::GridTileRenderable>,md::GridRenderResources::TileMeshEntryHash,std::equal_to<md::GridRenderResources::TileMeshEntry>>::CacheEntry,void *>>,md::GridRenderResources::TileMeshEntryHash,std::equal_to<md::GridRenderResources::TileMeshEntry>,true>,std::__unordered_map_equal<md::GridRenderResources::TileMeshEntry,std::__hash_value_type<md::GridRenderResources::TileMeshEntry,std::__list_iterator<geo::MarkedLRUCache<md::GridRenderResources::TileMeshEntry,std::shared_ptr<md::GridTileRenderable>,md::GridRenderResources::TileMeshEntryHash,std::equal_to<md::GridRenderResources::TileMeshEntry>>::CacheEntry,void *>>,std::equal_to<md::GridRenderResources::TileMeshEntry>,md::GridRenderResources::TileMeshEntryHash,true>,std::allocator<std::__hash_value_type<md::GridRenderResources::TileMeshEntry,std::__list_iterator<geo::MarkedLRUCache<md::GridRenderResources::TileMeshEntry,std::shared_ptr<md::GridTileRenderable>,md::GridRenderResources::TileMeshEntryHash,std::equal_to<md::GridRenderResources::TileMeshEntry>>::CacheEntry,void *>>>>::__erase_unique<md::GridRenderResources::TileMeshEntry>(void *a1, geo::QuadTile *this)
{
  v4 = md::GridRenderResources::TileMeshEntryHash::operator()(this);
  v5 = a1[1];
  if (v5)
  {
    v6 = v4;
    v7 = vcnt_s8(v5);
    v7.i16[0] = vaddlv_u8(v7);
    v8 = v7.u32[0];
    if (v7.u32[0] > 1uLL)
    {
      v9 = v4;
      if (v4 >= *&v5)
      {
        v9 = v4 % *&v5;
      }
    }

    else
    {
      v9 = (*&v5 - 1) & v4;
    }

    v10 = *(*a1 + 8 * v9);
    if (v10)
    {
      for (i = *v10; i; i = *i)
      {
        v12 = *(i + 1);
        if (v12 == v6)
        {
          if (std::__unordered_map_equal<md::GridRenderResources::TileMeshEntry,std::__hash_value_type<md::GridRenderResources::TileMeshEntry,std::__list_iterator<geo::MarkedLRUCache<md::GridRenderResources::TileMeshEntry,std::shared_ptr<md::GridTileRenderable>,md::GridRenderResources::TileMeshEntryHash,std::equal_to<md::GridRenderResources::TileMeshEntry>>::CacheEntry,void *>>,std::equal_to<md::GridRenderResources::TileMeshEntry>,md::GridRenderResources::TileMeshEntryHash,true>::operator()[abi:nn200100](i + 16, this))
          {
            v13 = a1[1];
            v14 = *(i + 1);
            v15 = vcnt_s8(v13);
            v15.i16[0] = vaddlv_u8(v15);
            if (v15.u32[0] > 1uLL)
            {
              if (v14 >= *&v13)
              {
                v14 %= *&v13;
              }
            }

            else
            {
              v14 &= *&v13 - 1;
            }

            v16 = *(*a1 + 8 * v14);
            do
            {
              v17 = v16;
              v16 = *v16;
            }

            while (v16 != i);
            if (v17 == a1 + 2)
            {
              goto LABEL_35;
            }

            v18 = v17[1];
            if (v15.u32[0] > 1uLL)
            {
              if (v18 >= *&v13)
              {
                v18 %= *&v13;
              }
            }

            else
            {
              v18 &= *&v13 - 1;
            }

            if (v18 != v14)
            {
LABEL_35:
              if (!*i)
              {
                goto LABEL_36;
              }

              v19 = *(*i + 8);
              if (v15.u32[0] > 1uLL)
              {
                if (v19 >= *&v13)
                {
                  v19 %= *&v13;
                }
              }

              else
              {
                v19 &= *&v13 - 1;
              }

              if (v19 != v14)
              {
LABEL_36:
                *(*a1 + 8 * v14) = 0;
              }
            }

            v20 = *i;
            if (*i)
            {
              v21 = *(v20 + 1);
              if (v15.u32[0] > 1uLL)
              {
                if (v21 >= *&v13)
                {
                  v21 %= *&v13;
                }
              }

              else
              {
                v21 &= *&v13 - 1;
              }

              if (v21 != v14)
              {
                *(*a1 + 8 * v21) = v17;
                v20 = *i;
              }
            }

            *v17 = v20;
            *i = 0;
            --a1[3];

            operator delete(i);
            return;
          }
        }

        else
        {
          if (v8 > 1)
          {
            if (v12 >= *&v5)
            {
              v12 %= *&v5;
            }
          }

          else
          {
            v12 &= *&v5 - 1;
          }

          if (v12 != v9)
          {
            return;
          }
        }
      }
    }
  }
}

void *std::list<geo::MarkedLRUCache<md::GridRenderResources::TileMeshEntry,std::shared_ptr<md::GridTileRenderable>,md::GridRenderResources::TileMeshEntryHash,std::equal_to<md::GridRenderResources::TileMeshEntry>>::CacheEntry,std::allocator<geo::MarkedLRUCache<md::GridRenderResources::TileMeshEntry,std::shared_ptr<md::GridTileRenderable>,md::GridRenderResources::TileMeshEntryHash,std::equal_to<md::GridRenderResources::TileMeshEntry>>::CacheEntry>>::erase(uint64_t a1, void *__p, void *a3)
{
  if (__p != a3)
  {
    v4 = __p;
    v6 = *(*a3 + 8);
    v7 = *__p;
    *(v7 + 8) = v6;
    *v6 = v7;
    do
    {
      v8 = v4[1];
      --*(a1 + 16);
      v9 = v4[8];
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v9);
      }

      operator delete(v4);
      v4 = v8;
    }

    while (v8 != a3);
  }

  return a3;
}

unsigned __int8 *std::__hash_table<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>>>::find<geo::QuadTile>(void *a1, geo::QuadTile *this)
{
  if (*(this + 24) == 1)
  {
    geo::QuadTile::computeHash(this);
    *(this + 24) = 0;
  }

  v4 = a1[1];
  if (!*&v4)
  {
    return 0;
  }

  v5 = *(this + 2);
  v6 = vcnt_s8(v4);
  v6.i16[0] = vaddlv_u8(v6);
  v7 = v6.u32[0];
  if (v6.u32[0] > 1uLL)
  {
    v8 = *(this + 2);
    if (v5 >= *&v4)
    {
      v8 = v5 % *&v4;
    }
  }

  else
  {
    v8 = (*&v4 - 1) & v5;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  v10 = *v9;
  if (*v9)
  {
    v11 = *(this + 2);
    do
    {
      v12 = *(v10 + 1);
      if (v5 == v12)
      {
        if (v10[40] == 1)
        {
          geo::QuadTile::computeHash(v10 + 16);
          v10[40] = 0;
          v13 = *(v10 + 4);
          if (*(this + 24))
          {
            v14 = (*(this + 1) + ((*this - 0x61C8864680B583EBLL) << 6) + ((*this - 0x61C8864680B583EBLL) >> 2) - 0x61C8864680B583EBLL) ^ (*this - 0x61C8864680B583EBLL);
            v15 = (*(this + 1) + (v14 << 6) + (v14 >> 2) - 0x61C8864680B583EBLL) ^ v14;
            v11 = (*(this + 2) + (v15 << 6) + (v15 >> 2) - 0x61C8864680B583EBLL) ^ v15;
            *(this + 2) = v11;
            *(this + 24) = 0;
          }

          else
          {
            v11 = *(this + 2);
          }
        }

        else
        {
          v13 = *(v10 + 4);
        }

        if (v13 == v11 && v10[16] == *this && v10[17] == *(this + 1) && *(v10 + 5) == *(this + 1) && *(v10 + 6) == *(this + 2))
        {
          return v10;
        }
      }

      else
      {
        if (v7 > 1)
        {
          if (v12 >= *&v4)
          {
            v12 %= *&v4;
          }
        }

        else
        {
          v12 &= *&v4 - 1;
        }

        if (v12 != v8)
        {
          return 0;
        }
      }

      v10 = *v10;
    }

    while (v10);
  }

  return v10;
}

{
  if (*(this + 24) == 1)
  {
    geo::QuadTile::computeHash(this);
    *(this + 24) = 0;
  }

  v4 = a1[1];
  if (!*&v4)
  {
    return 0;
  }

  v5 = *(this + 2);
  v6 = vcnt_s8(v4);
  v6.i16[0] = vaddlv_u8(v6);
  v7 = v6.u32[0];
  if (v6.u32[0] > 1uLL)
  {
    v8 = *(this + 2);
    if (v5 >= *&v4)
    {
      v8 = v5 % *&v4;
    }
  }

  else
  {
    v8 = (*&v4 - 1) & v5;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  for (i = *v9; i; i = *i)
  {
    v11 = *(i + 1);
    if (v11 == v5)
    {
      if (std::equal_to<geo::QuadTile>::operator()[abi:nn200100](i + 16, this))
      {
        return i;
      }
    }

    else
    {
      if (v7 > 1)
      {
        if (v11 >= *&v4)
        {
          v11 %= *&v4;
        }
      }

      else
      {
        v11 &= *&v4 - 1;
      }

      if (v11 != v8)
      {
        return 0;
      }
    }
  }

  return i;
}

void std::__shared_ptr_emplace<md::GridTileRenderable>::__on_zero_shared(void *a1)
{
  ggl::RenderItem::~RenderItem((a1 + 14));
  v2 = a1[13];
  a1[13] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[12];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = a1[10];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = a1[8];
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }
}

void std::__shared_ptr_emplace<md::GridTileRenderable>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E55E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::GridBase::GridView>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::GridBase::GridView>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E5538;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::Grid::Style>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::Grid::Style>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E5590;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_pointer<ggl::Grid::GridUVPipelineState *,std::shared_ptr<ggl::Grid::GridUVPipelineState>::__shared_ptr_default_delete<ggl::Grid::GridUVPipelineState,ggl::Grid::GridUVPipelineState>,std::allocator<ggl::Grid::GridUVPipelineState>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_pointer<ggl::Grid::GridPipelineState *,std::shared_ptr<ggl::Grid::GridPipelineState>::__shared_ptr_default_delete<ggl::Grid::GridPipelineState,ggl::Grid::GridPipelineState>,std::allocator<ggl::Grid::GridPipelineState>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

char *md::GridRenderLayer::setCommandBufferLocation(uint64_t a1, __int16 *a2)
{
  v3 = *a2;
  v5 = (a1 + 8);
  result = *(a1 + 8);
  v6 = v5[2];
  if (v6 == result)
  {
    if (v6)
    {
      *(a1 + 16) = result;
      operator delete(result);
      *v5 = 0;
      v5[1] = 0;
      v5[2] = 0;
    }

    std::vector<md::MapDataType>::__vallocate[abi:nn200100](v5, 1);
  }

  v7 = *(a1 + 16);
  if (v7 == result)
  {
    *v7 = v3;
    *(a1 + 16) = &v7[v7 - result + 2];
  }

  else
  {
    *result = v3;
    result += 2;
    *(a1 + 16) = result;
  }

  *(a1 + 57) = *a2;
  return result;
}

BOOL VKRectContainsPoint(double *a1, double *a2)
{
  if (*a1 <= *a2 && *a2 <= a1[1] && (v2 = a2[1], a1[2] <= v2))
  {
    return v2 <= a1[3];
  }

  else
  {
    return 0;
  }
}

void std::vector<md::PolygonSection>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 18;
      v7 = v4 - 18;
      v8 = v4 - 18;
      do
      {
        v9 = *v8;
        v8 -= 18;
        (*v9)(v7);
        v6 -= 18;
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

void std::__allocate_at_least[abi:nn200100]<std::allocator<md::PolygonSection>>(unint64_t a1)
{
  if (a1 < 0x1C71C71C71C71C8)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t (***std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::PolygonSection>,md::PolygonSection*>(uint64_t (***result)(void), uint64_t (***a2)(void), uint64_t a3))(void)
{
  if (result != a2)
  {
    v5 = result;
    v6 = 0;
    do
    {
      v7 = (a3 + v6 * 8);
      v8 = v5[v6 + 1];
      *v7 = &unk_1F2A40538;
      v7[1] = v8;
      std::vector<gm::Matrix<float,2,1>>::vector[abi:nn200100]((a3 + v6 * 8 + 16), &v5[v6 + 2]);
      std::vector<gm::Matrix<float,2,1>>::vector[abi:nn200100]((a3 + v6 * 8 + 40), &v5[v6 + 5]);
      std::vector<BOOL>::vector((a3 + v6 * 8 + 64), &v5[v6 + 8]);
      v9 = a3 + v6 * 8;
      v10 = *&v5[v6 + 11];
      *(v9 + 104) = v5[v6 + 13];
      *(v9 + 88) = v10;
      std::vector<unsigned int>::vector[abi:nn200100]((a3 + v6 * 8 + 112), &v5[v6 + 14]);
      *(v9 + 136) = v5[v6 + 17];
      v6 += 18;
    }

    while (&v5[v6] != a2);
    v11 = v5;
    v12 = v5;
    do
    {
      v13 = *v12;
      v12 += 18;
      result = (*v13)(v5);
      v11 += 18;
      v5 = v12;
    }

    while (v12 != a2);
  }

  return result;
}

void sub_1B2C5063C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    *(v1 + 24) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<md::PolygonSection>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 144);
    *(a1 + 16) = i - 144;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *std::vector<gm::Matrix<float,2,1>>::vector[abi:nn200100](uint64_t *a1, uint64_t **a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<gdc::Entity>::__vallocate[abi:nn200100](a1, v2 - *a2);
  }

  return a1;
}

uint64_t *std::vector<BOOL>::vector(uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = *(a2 + 8);
  if (v2)
  {
    std::vector<BOOL>::__vallocate[abi:nn200100](a1, v2);
  }

  return a1;
}

uint64_t *std::vector<unsigned int>::vector[abi:nn200100](uint64_t *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<unsigned int>::__vallocate[abi:nn200100](a1, (v2 - *a2) >> 2);
  }

  return a1;
}

void md::PolygonSection::~PolygonSection(md::PolygonSection *this)
{
  md::PolygonSection::~PolygonSection(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A40538;
  v2 = *(this + 14);
  if (v2)
  {
    *(this + 15) = v2;
    operator delete(v2);
  }

  v3 = *(this + 8);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    *(this + 6) = v4;
    operator delete(v4);
  }

  v5 = *(this + 2);
  if (v5)
  {
    *(this + 3) = v5;
    operator delete(v5);
  }
}

void std::vector<ggl::PolygonBase::CompressedMeshMesh>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 18;
      v7 = v4 - 18;
      v8 = v4 - 18;
      do
      {
        v9 = *v8;
        v8 -= 18;
        (*v9)(v7);
        v6 -= 18;
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

uint64_t md::VenueFloorGroup::VenueFloorGroup(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, int a6)
{
  v36 = *MEMORY[0x1E69E9840];
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 60) = a6;
  *(a1 + 64) = a5;
  md::createFeatureAttributeSet(v27, (a4 + 24));
  v10 = *a3;
  LODWORD(v28) = 65604;
  WORD2(v28) = 0;
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::vector[abi:nn200100](&v33, &v28, 1uLL);
  gss::FeatureAttributeSet::setByReplacingAttributes(v30, v27, v33, v34);
  gss::StylesheetManager<gss::PropertyID>::styleQueryForFeatureAttributes(&v23, v10, v30);
  v11 = v23;
  v23 = 0uLL;
  v12 = *(a1 + 48);
  *(a1 + 40) = v11;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
    if (*(&v23 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*(&v23 + 1));
    }
  }

  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v30);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v33);
  v13 = *a3;
  LODWORD(v28) = 65604;
  WORD2(v28) = 1;
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::vector[abi:nn200100](&v33, &v28, 1uLL);
  gss::FeatureAttributeSet::setByReplacingAttributes(v30, v27, v33, v34);
  gss::StylesheetManager<gss::PropertyID>::styleQueryForFeatureAttributes(&v23, v13, v30);
  v14 = v23;
  v23 = 0uLL;
  v15 = *(a1 + 32);
  *(a1 + 24) = v14;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
    if (*(&v23 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*(&v23 + 1));
    }
  }

  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v30);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v33);
  v16 = *(a4 + 96);
  v24 = 0;
  v23 = 0uLL;
  v22 = a2;
  if (v16)
  {
    v31 = &v23;
    std::__allocate_at_least[abi:nn200100]<std::allocator<md::PolygonSection>>(v16);
  }

  v17 = *(&v23 + 1);
  v18 = v23;
  if (v23 == *(&v23 + 1))
  {
    *(a1 + 56) = 0;
  }

  else
  {
    v19 = 0;
    v20 = v23;
    do
    {
      v19 |= ggl::CullingGrid::intersectedCellsForRibbon(*(v20 + 88), *(v20 + 8), 1);
      v20 += 144;
    }

    while (v20 != v17);
    *(a1 + 56) = v19;
    if (v18 != v17)
    {
      v26 = *(v18 + 88);
      v25 = 1;
      std::allocate_shared[abi:nn200100]<ggl::VertexDataTyped<ggl::PolygonBase::CompressedVbo>,std::allocator<ggl::VertexDataTyped<ggl::PolygonBase::CompressedVbo>>,char const(&)[28],unsigned long &,ggl::BufferUsage,0>(&v33, "Venue footprint vertex data", &v26, &v25);
    }
  }

  (*(*v22 + 24))(&v26);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = ___ZN2md24VenueFloorMeshGeneration19_writeFootprintDataEPN3ggl6DeviceERKNSt3__16vectorINS_14PolygonSectionENS4_9allocatorIS6_EEEERNS5_INS1_11PolygonBase18CompressedMeshMeshENS7_ISD_EEEE_block_invoke;
  v30[3] = &__block_descriptor_48_e30_v16__0__ResourceAccessor_____8l;
  v31 = a1;
  v32 = &v23;
  v35 = 0;
  v33 = &unk_1F2A59B50;
  v34 = MEMORY[0x1B8C62DA0](v30);
  v35 = &v33;
  v28 = 0;
  v29 = 0;
  ggl::Loader::performWithAccessor(v26);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v29);
  }

  std::__function::__value_func<void ()(ggl::ResourceAccessor *)>::~__value_func[abi:nn200100](&v33);
  ggl::Loader::~Loader(&v26);
  v30[0] = &v23;
  std::vector<md::PolygonSection>::__destroy_vector::operator()[abi:nn200100](v30);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v27);
  return a1;
}

void sub_1B2C5117C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  va_copy(va2, va1);
  v21 = va_arg(va2, void **);
  v23 = va_arg(va2, void);
  v24 = va_arg(va2, void);
  v25 = va_arg(va2, void);
  v26 = va_arg(va2, void);
  v27 = va_arg(va2, void);
  std::__split_buffer<md::PolygonSection>::~__split_buffer(va2);
  *(v10 - 128) = va;
  std::vector<md::PolygonSection>::__destroy_vector::operator()[abi:nn200100]((v10 - 128));
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va1);
  v12 = *(v9 + 48);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  v13 = *(v9 + 32);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }

  v21 = v9;
  std::vector<ggl::PolygonBase::CompressedMeshMesh>::__destroy_vector::operator()[abi:nn200100](va1);
  _Unwind_Resume(a1);
}

double std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,QuadTileCompare &,geo::QuadTile *,0>(char *a1, char *a2, uint64_t a3, char *a4, uint64_t a5)
{
  result = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,QuadTileCompare &,geo::QuadTile *,0>(a1, a2, a3, a4);
  v11 = *(a5 + 1);
  v12 = a4[1];
  if (v11 != v12)
  {
    if (v11 >= v12)
    {
      return result;
    }

LABEL_7:
    v16 = *a4;
    v17 = *(a4 + 2);
    v18 = a4[24];
    result = *(a4 + 4);
    v19 = *(a5 + 9);
    *a4 = *a5;
    *(a4 + 9) = v19;
    *a5 = v16;
    *(a5 + 1) = v12;
    *(a5 + 4) = result;
    *(a5 + 16) = v17;
    *(a5 + 24) = v18;
    v20 = a4[1];
    v21 = *(a3 + 1);
    if (v20 == v21)
    {
      v22 = *(a4 + 1);
      v23 = *(a3 + 4);
      v24 = v22 < v23;
      if (v22 == v23)
      {
        v24 = *(a4 + 2) < *(a3 + 8);
      }

      if (!v24)
      {
        return result;
      }
    }

    else if (v20 >= v21)
    {
      return result;
    }

    v25 = *a3;
    v26 = *(a3 + 16);
    v27 = *(a3 + 24);
    result = *(a3 + 4);
    v28 = *(a4 + 9);
    *a3 = *a4;
    *(a3 + 9) = v28;
    *a4 = v25;
    a4[1] = v21;
    *(a4 + 4) = result;
    *(a4 + 2) = v26;
    a4[24] = v27;
    v29 = *(a3 + 1);
    v30 = a2[1];
    if (v29 == v30)
    {
      v31 = *(a3 + 4);
      v32 = *(a2 + 1);
      v33 = v31 < v32;
      if (v31 == v32)
      {
        v33 = *(a3 + 8) < *(a2 + 2);
      }

      if (!v33)
      {
        return result;
      }
    }

    else if (v29 >= v30)
    {
      return result;
    }

    v34 = *a2;
    v35 = *(a2 + 2);
    v36 = a2[24];
    result = *(a2 + 4);
    v37 = *(a3 + 9);
    *a2 = *a3;
    *(a2 + 9) = v37;
    *a3 = v34;
    *(a3 + 1) = v30;
    *(a3 + 4) = result;
    *(a3 + 16) = v35;
    *(a3 + 24) = v36;
    v38 = a2[1];
    v39 = a1[1];
    if (v38 == v39)
    {
      v40 = *(a2 + 1);
      v41 = *(a1 + 1);
      v42 = v40 < v41;
      if (v40 == v41)
      {
        v42 = *(a2 + 2) < *(a1 + 2);
      }

      if (!v42)
      {
        return result;
      }
    }

    else if (v38 >= v39)
    {
      return result;
    }

    v43 = *a1;
    v44 = *(a1 + 2);
    v45 = a1[24];
    result = *(a1 + 4);
    v46 = *(a2 + 9);
    *a1 = *a2;
    *(a1 + 9) = v46;
    *a2 = v43;
    a2[1] = v39;
    *(a2 + 4) = result;
    *(a2 + 2) = v44;
    a2[24] = v45;
    return result;
  }

  v13 = *(a5 + 4);
  v14 = *(a4 + 1);
  v15 = v13 < v14;
  if (v13 == v14)
  {
    v15 = *(a5 + 8) < *(a4 + 2);
  }

  if (v15)
  {
    goto LABEL_7;
  }

  return result;
}

char *std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,QuadTileCompare &,geo::QuadTile *>(char *result, char *a2)
{
  if (result != a2)
  {
    for (i = result + 32; result + 32 != a2; i = result + 32)
    {
      v3 = result;
      result = i;
      v4 = i[1];
      v5 = v3[1];
      if (v4 == v5)
      {
        v6 = *(result + 1);
        v7 = *(v3 + 1);
        v8 = v6 < v7;
        if (v6 == v7)
        {
          v8 = *(result + 2) < *(v3 + 2);
        }

        if (v8)
        {
LABEL_9:
          v9 = v3[33];
          v10 = *(v3 + 36);
          v11 = *result;
          v12 = *(v3 + 6);
          v13 = v3[56];
          do
          {
            while (1)
            {
              v14 = v3;
              *(v3 + 2) = *v3;
              *(v3 + 41) = *(v3 + 9);
              v3 -= 32;
              v15 = *(v14 - 31);
              if (v9 == v15)
              {
                break;
              }

              if (v9 >= v15)
              {
                goto LABEL_16;
              }
            }

            v16 = *(v14 - 7);
            v17 = v10 < v16;
            if (v10 == v16)
            {
              v17 = SHIDWORD(v10) < *(v14 - 6);
            }
          }

          while (v17);
LABEL_16:
          *v14 = v11;
          v14[1] = v9;
          *(v14 + 1) = v18;
          *(v14 + 4) = v10;
          *(v14 + 2) = v12;
          v14[24] = v13;
        }
      }

      else if (v4 < v5)
      {
        goto LABEL_9;
      }
    }
  }

  return result;
}

uint64_t std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,QuadTileCompare &,geo::QuadTile *,geo::QuadTile *>(uint64_t result, _OWORD *a2, _OWORD *a3)
{
  if (result != a2)
  {
    v4 = a2;
    v5 = result;
    v6 = (a2 - result) >> 5;
    if (v6 >= 2)
    {
      v7 = (v6 - 2) >> 1;
      v8 = v7 + 1;
      v9 = (result + 32 * v7);
      do
      {
        result = std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,QuadTileCompare &,geo::QuadTile *>(v5, v6, v9);
        v9 -= 32;
        --v8;
      }

      while (v8);
    }

    if (v4 != a3)
    {
      v10 = v4;
      while (1)
      {
        v11 = *(v10 + 1);
        v12 = *(v5 + 1);
        if (v11 == v12)
        {
          break;
        }

        if (v11 < v12)
        {
          goto LABEL_13;
        }

LABEL_14:
        v10 += 2;
        if (v10 == a3)
        {
          goto LABEL_15;
        }
      }

      v13 = *(v10 + 1);
      v14 = *(v5 + 4);
      v15 = v13 < v14;
      if (v13 == v14)
      {
        v15 = *(v10 + 2) < *(v5 + 8);
      }

      if (!v15)
      {
        goto LABEL_14;
      }

LABEL_13:
      v16 = *v10;
      v17 = *(v10 + 2);
      v18 = *(v10 + 24);
      v19 = *(v10 + 4);
      v20 = *(v5 + 9);
      *v10 = *v5;
      *(v10 + 9) = v20;
      *v5 = v16;
      *(v5 + 1) = v11;
      *(v5 + 4) = v19;
      *(v5 + 16) = v17;
      *(v5 + 24) = v18;
      result = std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,QuadTileCompare &,geo::QuadTile *>(v5, v6, v5);
      goto LABEL_14;
    }

LABEL_15:
    if (v6 >= 2)
    {
      while (1)
      {
        result = 0;
        v21 = v4;
        v22 = *(v5 + 1);
        v23 = *(v5 + 4);
        v24 = *(v5 + 8);
        v25 = *v5;
        v26 = *(v5 + 16);
        v27 = *(v5 + 24);
        v28 = v5;
        do
        {
          v29 = &v28[2 * result];
          v30 = v29 + 2;
          v31 = (2 * result) | 1;
          result = 2 * result + 2;
          if (result >= v6)
          {
            result = v31;
          }

          else
          {
            v32 = *(v29 + 33);
            v33 = *(v29 + 65);
            if (v32 == v33)
            {
              v34 = *(v29 + 9);
              v35 = *(v29 + 17);
              v36 = v34 < v35;
              if (v34 == v35)
              {
                v36 = *(v29 + 10) < *(v29 + 18);
              }

              v37 = v36;
            }

            else
            {
              v37 = v32 < v33;
            }

            v38 = v29 + 4;
            if (v37)
            {
              v30 = v38;
            }

            else
            {
              result = v31;
            }
          }

          v39 = *v30;
          *(v28 + 9) = *(v30 + 9);
          *v28 = v39;
          v28 = v30;
        }

        while (result <= (v6 - 2) / 2);
        v4 -= 2;
        if (v30 == v21 - 2)
        {
          break;
        }

        v40 = *v4;
        *(v30 + 9) = *(v21 - 23);
        *v30 = v40;
        *(v21 - 32) = v25;
        *(v21 - 31) = v22;
        *(v21 - 7) = v23;
        *(v21 - 6) = v24;
        *(v21 - 2) = v26;
        *(v21 - 8) = v27;
        v41 = (v30 - v5 + 32) >> 5;
        v15 = v41 < 2;
        v42 = v41 - 2;
        if (!v15)
        {
          v43 = v42 >> 1;
          v44 = v5 + 32 * (v42 >> 1);
          v45 = *(v44 + 1);
          v46 = *(v30 + 1);
          if (v45 == v46)
          {
            v47 = *(v44 + 4);
            v48 = *(v30 + 1);
            v49 = v47 < v48;
            if (v47 == v48)
            {
              v49 = *(v44 + 8) < *(v30 + 2);
            }

            if (!v49)
            {
              goto LABEL_51;
            }

LABEL_39:
            v51 = *(v30 + 4);
            v52 = *v30;
            v26 = *(v30 + 2);
            v27 = *(v30 + 24);
            while (1)
            {
              v50 = v44;
              v53 = *v44;
              *(v30 + 9) = *(v44 + 9);
              *v30 = v53;
              if (!v43)
              {
                break;
              }

              v43 = (v43 - 1) >> 1;
              v44 = v5 + 32 * v43;
              v54 = *(v44 + 1);
              v55 = v54 >= v46;
              if (v54 == v46)
              {
                v56 = *(v44 + 4);
                v57 = v56 < v51;
                if (v56 == v51)
                {
                  result = *(v44 + 8);
                  v30 = v50;
                  if (result >= SHIDWORD(v51))
                  {
                    break;
                  }
                }

                else
                {
                  v30 = v50;
                  if (!v57)
                  {
                    break;
                  }
                }
              }

              else
              {
                v30 = v50;
                if (v55)
                {
                  break;
                }
              }
            }

            *v50 = v52;
            *(v50 + 1) = v46;
            *(v50 + 4) = v51;
LABEL_50:
            *(v50 + 16) = v26;
            *(v50 + 24) = v27;
            goto LABEL_51;
          }

          if (v45 < v46)
          {
            goto LABEL_39;
          }
        }

LABEL_51:
        v15 = v6-- <= 2;
        if (v15)
        {
          return result;
        }
      }

      *v30 = v25;
      *(v30 + 1) = v22;
      v50 = v30;
      *(v30 + 1) = v23;
      *(v30 + 2) = v24;
      goto LABEL_50;
    }
  }

  return result;
}

char *std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,geo::QuadTile *,QuadTileCompare &>(char *a1, _DWORD *a2)
{
  v2 = a1[1];
  v3 = *(a1 + 4);
  v4 = *(a2 - 31);
  if (v2 == v4)
  {
    v5 = *(a2 - 7);
    if (v3 == v5)
    {
      if (SHIDWORD(v3) >= *(a2 - 6))
      {
        goto LABEL_16;
      }

LABEL_6:
      for (i = a1 + 32; ; i += 32)
      {
        v7 = i[1];
        if (v2 == v7)
        {
          v8 = *(i + 1);
          v9 = v3 < v8;
          if (v3 == v8)
          {
            v9 = SHIDWORD(v3) < *(i + 2);
          }

          if (v9)
          {
            goto LABEL_26;
          }
        }

        else if (v2 < v7)
        {
          goto LABEL_26;
        }
      }
    }

    if (v3 < v5)
    {
      goto LABEL_6;
    }
  }

  else if (v2 < v4)
  {
    goto LABEL_6;
  }

LABEL_16:
  for (i = a1 + 32; i < a2; i += 32)
  {
    v10 = i[1];
    if (v2 == v10)
    {
      v11 = *(i + 1);
      v12 = v3 < v11;
      if (v3 == v11)
      {
        v12 = SHIDWORD(v3) < *(i + 2);
      }

      if (v12)
      {
        break;
      }
    }

    else if (v2 < v10)
    {
      break;
    }
  }

LABEL_26:
  if (i < a2)
  {
    for (j = a2 - 7; ; j -= 8)
    {
      if (v2 == v4)
      {
        v14 = v3 < *j;
        if (v3 == *j)
        {
          v14 = SHIDWORD(v3) < j[1];
        }

        if (!v14)
        {
LABEL_35:
          a2 = j - 1;
          break;
        }
      }

      else if (v2 >= v4)
      {
        goto LABEL_35;
      }

      v4 = *(j - 35);
    }
  }

  v15 = *a1;
  v16 = *(a1 + 2);
  v17 = a1[24];
  if (i >= a2)
  {
    goto LABEL_52;
  }

  do
  {
    v18 = *i;
    v19 = *(i + 2);
    v20 = i[24];
    v21 = *(i + 4);
    v22 = *(a2 + 9);
    *i = *a2;
    *(i + 9) = v22;
    *a2 = v18;
    *(a2 + 1) = v21;
    *(a2 + 2) = v19;
    i += 32;
    *(a2 + 24) = v20;
    while (1)
    {
      v23 = i[1];
      if (v2 == v23)
      {
        break;
      }

      if (v2 < v23)
      {
        goto LABEL_47;
      }

LABEL_45:
      i += 32;
    }

    v24 = *(i + 1);
    v25 = v3 < v24;
    if (v3 == v24)
    {
      v25 = SHIDWORD(v3) < *(i + 2);
    }

    if (!v25)
    {
      goto LABEL_45;
    }

    do
    {
LABEL_47:
      while (1)
      {
        a2 -= 8;
        v26 = *(a2 + 1);
        if (v2 == v26)
        {
          break;
        }

        if (v2 >= v26)
        {
          goto LABEL_51;
        }
      }

      v27 = a2[1];
      v28 = v3 < v27;
      if (v3 == v27)
      {
        v28 = SHIDWORD(v3) < a2[2];
      }
    }

    while (v28);
LABEL_51:
    ;
  }

  while (i < a2);
LABEL_52:
  if (i - 32 != a1)
  {
    v29 = *(i - 2);
    *(a1 + 9) = *(i - 23);
    *a1 = v29;
  }

  *(i - 32) = v15;
  *(i - 31) = v2;
  *(i - 15) = v31;
  *(i - 28) = v3;
  *(i - 2) = v16;
  *(i - 8) = v17;
  return i;
}

char *std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,geo::QuadTile *,QuadTileCompare &>(char *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = *(a1 + 4);
  v4 = *a1;
  v5 = *(a1 + 2);
  v6 = a1[24];
  for (i = a1 + 32; ; i += 32)
  {
    v8 = i[1];
    if (v8 == v2)
    {
      break;
    }

    if (v8 >= v2)
    {
      goto LABEL_10;
    }

LABEL_9:
    ;
  }

  v9 = *(i + 1);
  if (v9 == v3)
  {
    if (*(i + 2) >= SHIDWORD(v3))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v9 < v3)
  {
    goto LABEL_9;
  }

LABEL_10:
  v10 = i - 32;
  v11 = a2 - 32;
  if (i - 32 != a1)
  {
    while (1)
    {
      v12 = *(v11 + 1);
      if (v12 == v2)
      {
        v13 = *(v11 + 4);
        v14 = v13 < v3;
        if (v13 == v3)
        {
          v14 = *(v11 + 8) < SHIDWORD(v3);
        }

        if (v14)
        {
          goto LABEL_29;
        }
      }

      else if (v12 < v2)
      {
        goto LABEL_29;
      }

      v11 -= 32;
    }
  }

  while (i < v11 + 32)
  {
    v15 = *(v11 + 1);
    if (v15 == v2)
    {
      v16 = *(v11 + 4);
      v17 = v16 < v3;
      if (v16 == v3)
      {
        v17 = *(v11 + 8) < SHIDWORD(v3);
      }

      if (v17)
      {
        goto LABEL_29;
      }
    }

    else if (v15 < v2)
    {
      goto LABEL_29;
    }

    v11 -= 32;
  }

  v11 += 32;
LABEL_29:
  if (i >= v11)
  {
    goto LABEL_49;
  }

  v18 = i;
  v19 = v11;
  while (2)
  {
    v20 = *v18;
    v21 = *(v18 + 2);
    v22 = v18[24];
    v23 = *(v18 + 4);
    v24 = *(v19 + 9);
    *v18 = *v19;
    *(v18 + 9) = v24;
    *v19 = v20;
    *(v19 + 4) = v23;
    *(v19 + 16) = v21;
    v18 += 32;
    *(v19 + 24) = v22;
    while (2)
    {
      v25 = v18[1];
      if (v25 != v2)
      {
        if (v25 >= v2)
        {
          break;
        }

        goto LABEL_39;
      }

      v26 = *(v18 + 1);
      if (v26 == v3)
      {
        if (*(v18 + 2) >= SHIDWORD(v3))
        {
          break;
        }

        goto LABEL_39;
      }

      if (v26 < v3)
      {
LABEL_39:
        v18 += 32;
        continue;
      }

      break;
    }

    v10 = v18 - 32;
    do
    {
      while (1)
      {
        v19 -= 32;
        v27 = *(v19 + 1);
        if (v27 == v2)
        {
          break;
        }

        if (v27 < v2)
        {
          goto LABEL_48;
        }
      }

      v28 = *(v19 + 4);
      v29 = v28 < v3;
      if (v28 == v3)
      {
        v29 = *(v19 + 8) < SHIDWORD(v3);
      }
    }

    while (!v29);
LABEL_48:
    if (v18 < v19)
    {
      continue;
    }

    break;
  }

LABEL_49:
  if (v10 != a1)
  {
    v30 = *v10;
    *(a1 + 9) = *(v10 + 9);
    *a1 = v30;
  }

  *v10 = v4;
  v10[1] = v2;
  *(v10 + 1) = v32;
  *(v10 + 4) = v3;
  *(v10 + 2) = v5;
  v10[24] = v6;
  return v10;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,QuadTileCompare &,geo::QuadTile *>(uint64_t a1, char *a2)
{
  v4 = &a2[-a1] >> 5;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,QuadTileCompare &,geo::QuadTile *,0>(a1, (a1 + 32), a2 - 2);
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,QuadTileCompare &,geo::QuadTile *,0>(a1, a1 + 32, (a1 + 64), (a2 - 32));
        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,QuadTileCompare &,geo::QuadTile *,0>(a1, (a1 + 32), a1 + 64, (a1 + 96), (a2 - 32));
        return 1;
    }

LABEL_15:
    v10 = (a1 + 64);
    std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,QuadTileCompare &,geo::QuadTile *,0>(a1, (a1 + 32), (a1 + 64));
    v11 = (a1 + 96);
    if ((a1 + 96) == a2)
    {
      return 1;
    }

    v12 = 0;
    v13 = 0;
LABEL_17:
    v14 = v11[1];
    v15 = v10[1];
    if (v14 == v15)
    {
      v16 = *(v11 + 1);
      v17 = *(v10 + 1);
      v18 = v16 < v17;
      if (v16 == v17)
      {
        v18 = *(v11 + 2) < *(v10 + 2);
      }

      if (!v18)
      {
        goto LABEL_35;
      }
    }

    else if (v14 >= v15)
    {
      goto LABEL_35;
    }

    v19 = *(v11 + 4);
    v20 = *v11;
    v21 = *(v11 + 2);
    v22 = v11[24];
    for (i = v12; ; i -= 32)
    {
      v24 = a1 + i;
      *(v24 + 96) = *(a1 + i + 64);
      *(v24 + 105) = *(a1 + i + 73);
      if (i == -64)
      {
        v28 = a1;
        goto LABEL_34;
      }

      v25 = *(v24 + 33);
      if (v14 == v25)
      {
        v26 = *(a1 + i + 36);
        v27 = v19 < v26;
        if (v19 == v26)
        {
          v27 = SHIDWORD(v19) < *(a1 + i + 40);
        }

        if (!v27)
        {
LABEL_33:
          v28 = a1 + i + 64;
LABEL_34:
          *v28 = v20;
          *(v28 + 1) = v14;
          *(v28 + 2) = v35;
          *(v28 + 4) = v19;
          *(v28 + 16) = v21;
          *(v28 + 24) = v22;
          if (++v13 != 8)
          {
LABEL_35:
            v10 = v11;
            v12 += 32;
            v11 += 32;
            if (v11 == a2)
            {
              return 1;
            }

            goto LABEL_17;
          }

          return v11 + 32 == a2;
        }
      }

      else if (v14 >= v25)
      {
        goto LABEL_33;
      }
    }
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 != 2)
  {
    goto LABEL_15;
  }

  v5 = *(a2 - 31);
  v6 = *(a1 + 1);
  if (v5 == v6)
  {
    v7 = *(a2 - 7);
    v8 = *(a1 + 4);
    v9 = v7 < v8;
    if (v7 == v8)
    {
      v9 = *(a2 - 6) < *(a1 + 8);
    }

    if (!v9)
    {
      return 1;
    }
  }

  else if (v5 >= v6)
  {
    return 1;
  }

  v30 = *a1;
  v31 = *(a1 + 16);
  v32 = *(a1 + 24);
  v33 = *(a1 + 4);
  v34 = *(a2 - 23);
  *a1 = *(a2 - 2);
  *(a1 + 9) = v34;
  *(a2 - 32) = v30;
  *(a2 - 31) = v6;
  *(a2 - 28) = v33;
  *(a2 - 2) = v31;
  result = 1;
  *(a2 - 8) = v32;
  return result;
}

uint64_t std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,QuadTileCompare &,geo::QuadTile *>(uint64_t result, uint64_t a2, char *a3)
{
  if (a2 < 2)
  {
    return result;
  }

  v3 = &a3[-result];
  v4 = (a2 - 2) >> 1;
  if (v4 < &a3[-result] >> 5)
  {
    return result;
  }

  v5 = v3 >> 4;
  v6 = (v3 >> 4) + 1;
  v7 = (result + 32 * v6);
  v8 = v5 + 2;
  if (v8 < a2)
  {
    v9 = *(v7 + 1);
    v10 = *(v7 + 33);
    if (v9 == v10)
    {
      v11 = *(v7 + 1);
      v12 = *(v7 + 9);
      v13 = v11 < v12;
      if (v11 == v12)
      {
        v13 = *(v7 + 2) < *(v7 + 10);
      }

      v14 = v13;
    }

    else
    {
      v14 = v9 < v10;
    }

    v15 = !v14;
    v16 = 32;
    if (v15)
    {
      v16 = 0;
    }

    v7 = (v7 + v16);
    if (!v15)
    {
      v6 = v8;
    }
  }

  v17 = *(v7 + 1);
  v18 = a3[1];
  if (v17 == v18)
  {
    v19 = *(v7 + 1);
    v20 = *(a3 + 1);
    v21 = v19 < v20;
    if (v19 == v20)
    {
      v21 = *(v7 + 2) < *(a3 + 2);
    }

    if (v21)
    {
      return result;
    }
  }

  else if (v17 < v18)
  {
    return result;
  }

  v22 = *(a3 + 4);
  v23 = *a3;
  v24 = *(a3 + 2);
  v25 = a3[24];
  while (1)
  {
    v26 = v7;
    v27 = *v7;
    *(a3 + 9) = *(v7 + 9);
    *a3 = v27;
    if (v4 < v6)
    {
      break;
    }

    v28 = (2 * v6) | 1;
    v7 = (result + 32 * v28);
    v6 = 2 * v6 + 2;
    if (v6 >= a2)
    {
      v6 = v28;
    }

    else
    {
      v29 = *(v7 + 1);
      v30 = *(v7 + 33);
      if (v29 == v30)
      {
        v31 = *(v7 + 1);
        v32 = *(v7 + 9);
        v33 = v31 < v32;
        if (v31 == v32)
        {
          v33 = *(v7 + 2) < *(v7 + 10);
        }

        v34 = v33;
      }

      else
      {
        v34 = v29 < v30;
      }

      v35 = !v34;
      if (v34)
      {
        v36 = 32;
      }

      else
      {
        v36 = 0;
      }

      v7 = (v7 + v36);
      if (v35)
      {
        v6 = v28;
      }
    }

    v37 = *(v7 + 1);
    v38 = v37 >= v18;
    if (v37 == v18)
    {
      v39 = *(v7 + 1);
      v40 = v39 < v22;
      if (v39 == v22)
      {
        a3 = v26;
        if (*(v7 + 2) < SHIDWORD(v22))
        {
          break;
        }
      }

      else
      {
        a3 = v26;
        if (v40)
        {
          break;
        }
      }
    }

    else
    {
      a3 = v26;
      if (!v38)
      {
        break;
      }
    }
  }

  *v26 = v23;
  *(v26 + 1) = v18;
  *(v26 + 1) = v41;
  *(v26 + 4) = v22;
  *(v26 + 2) = v24;
  *(v26 + 24) = v25;
  return result;
}

void ___ZN3geo9TaskQueue14queueAsyncTaskENSt3__110shared_ptrINS_4TaskEEEPU28objcproto17OS_dispatch_group8NSObject_block_invoke_7(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  if (v3)
  {
    dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  }

  queue = *(v2 + 16);
  md::LabelExternalPointFeature::incident(queue);
  objc_claimAutoreleasedReturnValue();
  dispatch_async(queue, *(a1 + 40));
}

void std::__shared_ptr_emplace<geo::Task>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A60150;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__function::__func<md::CartographicRenderer::layoutRenderLayers(md::LayoutContext &)::$_0,std::allocator<md::CartographicRenderer::layoutRenderLayers(md::LayoutContext &)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 40);
  for (i = *(v1 + 48); v2 != i; ++v2)
  {
    if (*v2 && (*(*v2 + 33) & 1) == 0)
    {
      v5 = objc_autoreleasePoolPush();
      v6 = *v2;
      if (*(*v2 + 32) == 1)
      {
        v7 = *(a1 + 16);
        v8 = *(v6[5] + 24);
        (*(*v6 + 32))(&v14, *v2, v7);
        v9 = v14;
        v10 = v15;
        if (v14 != v15)
        {
          do
          {
            v11 = md::FrameGraph::renderQueueForPass(*(v8 + 8), *v9);
            if (v11)
            {
              v12 = *(*(v11 + 16) + 8 * v9[1]);
              v12[4] = 0;
              ggl::CommandBuffer::clearRenderItems(v12);
              v12[14] = v12[13];
              ggl::CommandBuffer::clearMPSItems(v12);
              ggl::CommandBuffer::clearTextureLoadItems(v12);
              ggl::CommandBuffer::clearBufferLoadItems(v12);
            }

            v9 += 2;
          }

          while (v9 != v10);
          v9 = v14;
        }

        if (v9)
        {
          v15 = v9;
          operator delete(v9);
        }

        v13 = gdc::Context::get<md::StyleLogicContext>(*(v7 + 8));
        if (*v13 && *(v13 + 82) == 1)
        {
          (*(*v6 + 16))(v6, v7);
        }

        else
        {
          (*(*v6 + 80))(v6, v7);
        }
      }

      objc_autoreleasePoolPop(v5);
    }
  }
}

__n128 std::__function::__func<md::CartographicRenderer::layoutRenderLayers(md::LayoutContext &)::$_0,std::allocator<md::CartographicRenderer::layoutRenderLayers(md::LayoutContext &)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29E5750;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void md::CartographicRenderer::~CartographicRenderer(md::CartographicRenderer *this)
{
  md::CartographicRenderer::~CartographicRenderer(this);

  JUMPOUT(0x1B8C62190);
}

{
  v3[4] = *MEMORY[0x1E69E9840];
  *this = off_1F29E5680;
  v2 = *(*(this + 1) + 8);
  v3[0] = &unk_1F29E5708;
  v3[3] = v3;
  geo::TaskQueue::barrierSync(v2, v3);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v3);
  md::Renderer::~Renderer(this);
}

void sub_1B2C524E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  md::Renderer::~Renderer(v3);
  _Unwind_Resume(a1);
}

uint64_t ___ZN3geo9TaskQueue11barrierSyncENSt3__18functionIFvvEEE_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:nn200100]();
    JUMPOUT(0x1B2C52544);
  }

  v3 = *(*v2 + 48);

  return v3();
}

void sub_1B2C52EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a20);
  }

  _Unwind_Resume(a1);
}

uint64_t md::LegacyTrafficLayerDataSource::updateRequest(uint64_t a1, gdc::LayerDataRequest **a2, uint64_t a3, unsigned __int16 **a4)
{
  result = md::TrafficLayerDataSource::updateRequest(a1, a2, a3, a4);
  *(a1 + 792) = result;
  return result;
}

void md::LegacyTrafficLayerDataSource::createLayerData(uint64_t a1@<X0>, unsigned __int16 **a3@<X2>, void *a4@<X8>)
{
  v19 = *MEMORY[0x1E69E9840];
  gdc::LayerDataSource::getResourceFromMap<md::TrafficSkeletonTileResource>(&v15, *a3, a3[1]);
  gdc::LayerDataSource::getResourceFromMap(&v17, 16, *a3, a3[1]);
  v7 = v17;
  v8 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  if (v15)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    std::atomic_load[abi:nn200100]<md::RegistryManager>(&v14, (a1 + 768));
    gdc::LayerDataSource::getResourceFromMap<md::GEOVectorTileResource>(&v13, 9, *a3, a3[1]);
    (*(*[*(a1 + 784) gglDevice] + 24))(&v12);
    _ZNSt3__115allocate_sharedB8nn200100IN3ggl17ConstantDataTypedINS1_4Tile4ViewEEENS_9allocatorIS5_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(&v11);
  }

  if (*(a1 + 792) != 1 && *(a1 + 793) == 1)
  {
    _ZNSt3__115allocate_sharedB8nn200100IN3ggl17ConstantDataTypedINS1_4Tile4ViewEEENS_9allocatorIS5_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(&v10);
  }

  *a4 = 0;
  a4[1] = 0;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }
}

void sub_1B2C53894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, std::__shared_weak_count *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *__p)
{
  if (STACK[0x228])
  {
    (*(*STACK[0x228] + 8))(STACK[0x228], a2, a3, a4, a5, a6, a7, a8);
  }

  if (a37)
  {
    (*(*a37 + 8))(a37, a2, a3, a4, a5, a6, a7, a8);
  }

  std::__shared_weak_count::~__shared_weak_count(v60);
  operator delete(v62);
  if (__p)
  {
    operator delete(__p);
  }

  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&STACK[0x2D8]);
  if (a49)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a49);
  }

  if (v59)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v59);
  }

  if (STACK[0x2B0])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](STACK[0x2B0]);
  }

  _Unwind_Resume(a1);
}

void gdc::LayerDataSource::getResourceFromMap<md::TrafficSkeletonTileResource>(void *a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  gdc::LayerDataSource::getResourceFromMap(v5, 17, a2, a3);
  v4 = v5[1];
  *a1 = v5[0];
  a1[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);

    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }
}

__n128 __Block_byref_object_copy__773(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  v2 = *(a2 + 144);
  v3 = *(a2 + 160);
  *(a1 + 172) = *(a2 + 172);
  *(a1 + 144) = v2;
  *(a1 + 160) = v3;
  *(a1 + 192) = *(a2 + 192);
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  *(a1 + 208) = *(a2 + 208);
  *(a2 + 208) = 0;
  *(a2 + 216) = 0;
  result = *(a2 + 224);
  v5 = *(a2 + 240);
  v6 = *(a2 + 256);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 240) = v5;
  *(a1 + 256) = v6;
  *(a1 + 224) = result;
  return result;
}

void __Block_byref_object_dispose__774(void *a1)
{
  v2 = a1[27];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[25];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = a1[15];
  if (v4)
  {
    a1[16] = v4;
    operator delete(v4);
  }

  v5 = a1[12];
  if (v5)
  {
    a1[13] = v5;
    operator delete(v5);
  }

  v6 = a1[9];
  if (v6)
  {
    a1[10] = v6;
    operator delete(v6);
  }

  v7 = a1[6];
  if (v7)
  {
    a1[7] = v7;

    operator delete(v7);
  }
}

void ___ZNK2md28LegacyTrafficLayerDataSource15createLayerDataERKN3gdc19LayerDataRequestKeyERKN3geo10linear_mapItNSt3__113unordered_mapINS1_11ResourceKeyENS7_10shared_ptrINS1_8ResourceEEENS1_15ResourceKeyHashENS7_8equal_toIS9_EENS7_9allocatorINS7_4pairIKS9_SC_EEEEEENSE_ItEENSG_INSH_ItSL_EEEENS7_6vectorISN_SO_EEEEx_block_invoke(_OWORD *a1, geo::codec *this, unint64_t *a3, uint64_t a4, int a5, int a6, uint64_t a7, char a8, float a9, float a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, char a15, uint64_t a16, char a17)
{
  v20 = a4;
  v29 = a3;
  v45 = 0;
  v25 = geo::codec::multiSectionFeatureCharacteristicPoints(this, &v45, a3);
  v26 = md::characteristicPointSectionRange(v25, v45, v20);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = ___ZNK2md28LegacyTrafficLayerDataSource15createLayerDataERKN3gdc19LayerDataRequestKeyERKN3geo10linear_mapItNSt3__113unordered_mapINS1_11ResourceKeyENS7_10shared_ptrINS1_8ResourceEEENS1_15ResourceKeyHashENS7_8equal_toIS9_EENS7_9allocatorINS7_4pairIKS9_SC_EEEEEENSE_ItEENSG_INSH_ItSL_EEEENS7_6vectorISN_SO_EEEEx_block_invoke_2;
  v30[3] = &unk_1E7B2FCF0;
  v42 = a17;
  v43 = a8;
  v36 = a5;
  v37 = a6;
  v38 = v20;
  v39 = a9;
  v44 = a15;
  v33 = this;
  v34 = a7;
  v27 = a1[3];
  v40 = a1[4];
  v31 = a1[2];
  v32 = v27;
  v41 = v29;
  v35 = a16;
  md::splitRoadSectionByZ(a11, a14, &v25[100 * v26], HIDWORD(v26) - v26, v30, a9, a10);
}

uint64_t std::__hash_table<std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::TrafficBatchKey,std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,mdm::zone_mallocator>>>,std::hash<md::TrafficBatchKey>,std::equal_to<md::TrafficBatchKey>,true>,std::__unordered_map_equal<md::TrafficBatchKey,std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::TrafficBatchKey>,std::hash<md::TrafficBatchKey>,true>,std::allocator<std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,mdm::zone_mallocator>>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:nn200100]<std::pair<md::TrafficBatchKey const,std::vector<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,mdm::zone_mallocator>>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::TrafficBatchKey,std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>>,std::hash<md::TrafficBatchKey>,std::equal_to<md::TrafficBatchKey>,true>,std::__unordered_map_equal<md::TrafficBatchKey,std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::TrafficBatchKey>,std::hash<md::TrafficBatchKey>,true>,std::allocator<std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:nn200100]<std::pair<md::TrafficBatchKey const,std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::TrafficBatchKey,std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>>,std::hash<md::TrafficBatchKey>,std::equal_to<md::TrafficBatchKey>,true>,std::__unordered_map_equal<md::TrafficBatchKey,std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::TrafficBatchKey>,std::hash<md::TrafficBatchKey>,true>,std::allocator<std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:nn200100]<std::pair<md::TrafficBatchKey const,std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void std::__shared_ptr_emplace<md::TrafficTileData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E5880;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__destroy_at[abi:nn200100]<std::pair<md::TrafficBatchKey const,std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>>,0>(uint64_t a1)
{
  v3 = a1 + 32;
  std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(a1 + 8);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }
}

void std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *result)
{
  v1 = *result;
  v2 = **result;
  if (v2)
  {
    v3 = v1[1];
    v4 = **result;
    if (v3 != v2)
    {
      do
      {
        std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>::reset[abi:nn200100](--v3);
      }

      while (v3 != v2);
      v4 = **result;
    }

    v1[1] = v2;
    v6 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>>(v6, v4);
  }
}

void std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>::reset[abi:nn200100](uint64_t (****result)(void))
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = (**v1)(v1);
    v3 = mdm::zone_mallocator::instance(v2);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::TrafficRibbon>(v3, v1);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::TrafficRibbon>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void std::__destroy_at[abi:nn200100]<std::pair<md::TrafficBatchKey const,std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>>,0>(uint64_t a1)
{
  v3 = a1 + 32;
  std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(a1 + 8);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }
}

void std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *result)
{
  v1 = *result;
  v2 = **result;
  if (v2)
  {
    v3 = v1[1];
    v4 = **result;
    if (v3 != v2)
    {
      do
      {
        std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>::reset[abi:nn200100](--v3);
      }

      while (v3 != v2);
      v4 = **result;
    }

    v1[1] = v2;
    v6 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>>(v6, v4);
  }
}

void std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>::reset[abi:nn200100](uint64_t (****result)(void))
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = (**v1)(v1);
    v3 = mdm::zone_mallocator::instance(v2);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::SolidTrafficRibbon>(v3, v1);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::SolidTrafficRibbon>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void std::__destroy_at[abi:nn200100]<std::pair<md::TrafficBatchKey const,std::vector<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,mdm::zone_mallocator>>>,0>(uint64_t a1)
{
  v3 = a1 + 32;
  std::vector<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(a1 + 8);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }
}

void std::vector<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *result)
{
  v1 = *result;
  v2 = **result;
  if (v2)
  {
    v3 = v1[1];
    v4 = **result;
    if (v3 != v2)
    {
      do
      {
        v7 = *--v3;
        v6 = v7;
        *v3 = 0;
        if (v7)
        {
          v8 = (**v6)(v6);
          v9 = mdm::zone_mallocator::instance(v8);
          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::CasedTrafficRibbon>(v9, v6);
        }
      }

      while (v3 != v2);
      v4 = **result;
    }

    v1[1] = v2;
    v10 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>>(v10, v4);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::CasedTrafficRibbon>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void __destroy_helper_block_ea8_64c68_ZTSNSt3__110shared_ptrIN3ggl17ConstantDataTypedINS1_4Tile4ViewEEEEE80c73_ZTSNSt3__110shared_ptrIN3ggl17ConstantDataTypedINS1_4Tile9TransformEEEEE(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

void *__copy_helper_block_ea8_64c68_ZTSNSt3__110shared_ptrIN3ggl17ConstantDataTypedINS1_4Tile4ViewEEEEE80c73_ZTSNSt3__110shared_ptrIN3ggl17ConstantDataTypedINS1_4Tile9TransformEEEEE(void *result, void *a2)
{
  v2 = a2[9];
  result[8] = a2[8];
  result[9] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[11];
  result[10] = a2[10];
  result[11] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void md::PilledTrafficLayer::PilledTrafficLayer(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t *a5, char *a6)
{
  v7 = a3;
  v73[4] = *MEMORY[0x1E69E9840];
  v63 = a6[32];
  if (v63 == 1)
  {
    v59 = a6[1];
    v6 = *(a6 + 4);
    v60 = *(a6 + 2);
    v61 = a6[24];
    v62 = *a6;
  }

  else
  {
    v62 = 0;
  }

  if (!a3)
  {
    *a1 = &unk_1F29F19E0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 112) = 0;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0;
    if (v63)
    {
      *(a1 + 81) = v59;
      *(a1 + 84) = v6;
      *(a1 + 80) = v62;
      *(a1 + 96) = v60;
      *(a1 + 104) = v61;
      *(a1 + 112) = 1;
    }

    v48 = *(a1 + 8);
    if (v48)
    {
      do
      {
        v64 = v48;
        v49 = *v48;
        v49[1] = a1;
        v50 = v49[31];
        if (v50 != v49[32])
        {
          v51 = *v50;
          v51[1] = **v50;
          v51[3] = v51[2];
          v51[5] = v51[4];
          v68 = 0;
          v69 = 0;
          *&v70 = 0;
          memset(&__p, 0, sizeof(__p));
          v52 = v51[7];
          v53 = v51[8];
          if (v52 != v53)
          {
            do
            {
              v54 = *v52;
              v73[0] = 1;
              md::Ribbons::RibbonWriter<md::Ribbons::PilledTrafficRibbonDescriptor>::eliminateDuplicates(v54, &v68, &__p, v73);
              if (v73[0] >= 2uLL)
              {
                v55 = 4 * (v73[0] - 1);
                if (v55 < 0x10000)
                {
                  v56 = v54[1] + v55;
                  v57 = v54[3] + 6 * (v73[0] - 1);
                }

                else
                {
                  v56 = v54[1];
                  v57 = v54[3];
                }

                v54[2] = v56;
                v54[4] = v57;
                v54[6] = v54[5];
              }

              v58 = *v52++;
              v51[1] = v58[2] + v51[1] - v58[1];
              v51[3] = v58[4] + v51[3] - v58[3];
              v51[5] = v58[6] + v51[5] - v58[5];
            }

            while (v52 != v53);
            if (__p.__begin_)
            {
              operator delete(__p.__begin_);
            }
          }

          if (v68)
          {
            v69 = v68;
            operator delete(v68);
          }

          operator new();
        }

        ++v48;
      }

      while (v64 != -8);
      if (*(a1 + 64))
      {
        operator new();
      }
    }

    v73[0] = 0;
    v66 = "BatchType/IData";
    operator new();
  }

  v68 = 0;
  v69 = 0;
  v71 = 0;
  *(&v70 + 1) = 0;
  *(&v70 + 1) = 0;
  v72 = 1.0;
  v9 = *(a3 + 48);
  v8 = *(a3 + 56);
  for (i = v8; ; v8 = i)
  {
    if (v9 == v8)
    {
      operator new();
    }

    v10 = ggl::CullingGrid::intersectedCellsForRibbon(*(*v9 + 88), *(*v9 + 72), 0);
    v11 = v10;
    v12 = v10;
    v13 = v69;
    if (v69)
    {
      v14 = vcnt_s8(v69);
      v14.i16[0] = vaddlv_u8(v14);
      if (v14.u32[0] > 1uLL)
      {
        v7 = v10;
        if (v69 <= v10)
        {
          v7 = v10 % v69;
        }
      }

      else
      {
        v7 = (v69 - 1) & v10;
      }

      v15 = *&v68[8 * v7];
      if (v15)
      {
        v16 = *v15;
        if (*v15)
        {
          do
          {
            v17 = v16[1];
            if (v17 == v10)
            {
              if (*(v16 + 4) == v10)
              {
                goto LABEL_82;
              }
            }

            else
            {
              if (v14.u32[0] > 1uLL)
              {
                if (v17 >= v69)
                {
                  v17 %= v69;
                }
              }

              else
              {
                v17 &= v69 - 1;
              }

              if (v17 != v7)
              {
                break;
              }
            }

            v16 = *v16;
          }

          while (v16);
        }
      }
    }

    v18 = mdm::zone_mallocator::instance(v10);
    v19 = pthread_rwlock_rdlock((v18 + 32));
    if (v19)
    {
      geo::read_write_lock::logFailure(v19, "read lock", v20);
    }

    v16 = malloc_type_zone_malloc(*v18, 0x38uLL, 0x10200408A1E2E81uLL);
    atomic_fetch_add((v18 + 24), 1u);
    geo::read_write_lock::unlock((v18 + 32));
    *v16 = 0;
    v16[1] = v12;
    *(v16 + 4) = v11;
    v16[3] = 0;
    v16[4] = 0;
    v16[5] = 0;
    v22 = (v71 + 1);
    if (!v13 || (v72 * v13) < v22)
    {
      break;
    }

LABEL_72:
    v43 = v68;
    v44 = *&v68[8 * v7];
    if (v44)
    {
      *v16 = *v44;
LABEL_80:
      *v44 = v16;
      goto LABEL_81;
    }

    *v16 = *(&v70 + 1);
    *(&v70 + 1) = v16;
    *&v43[8 * v7] = &v70 + 8;
    if (*v16)
    {
      v45 = *(*v16 + 8);
      if ((v13 & (v13 - 1)) != 0)
      {
        if (v45 >= v13)
        {
          v45 %= v13;
        }
      }

      else
      {
        v45 &= v13 - 1;
      }

      v44 = &v68[8 * v45];
      goto LABEL_80;
    }

LABEL_81:
    ++v71;
LABEL_82:
    std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>::push_back[abi:nn200100]((v16 + 3), v9++);
  }

  v23 = (v13 & (v13 - 1)) != 0;
  if (v13 < 3)
  {
    v23 = 1;
  }

  v24 = v23 | (2 * v13);
  v25 = vcvtps_u32_f32(v22 / v72);
  if (v24 <= v25)
  {
    v26 = v25;
  }

  else
  {
    v26 = v24;
  }

  if (v26 == 1)
  {
    v26 = 2;
  }

  else if ((v26 & (v26 - 1)) != 0)
  {
    prime = std::__next_prime(v26);
    v26 = prime;
  }

  v13 = v69;
  if (v26 > v69)
  {
    goto LABEL_37;
  }

  if (v26 < v69)
  {
    prime = vcvtps_u32_f32(v71 / v72);
    if (v69 < 3 || (v38 = vcnt_s8(v69), v38.i16[0] = vaddlv_u8(v38), v38.u32[0] > 1uLL))
    {
      prime = std::__next_prime(prime);
    }

    else
    {
      v39 = 1 << -__clz(prime - 1);
      if (prime >= 2)
      {
        prime = v39;
      }
    }

    if (v26 <= prime)
    {
      v26 = prime;
    }

    if (v26 >= v69)
    {
      v13 = v69;
    }

    else
    {
      if (v26)
      {
LABEL_37:
        v27 = mdm::zone_mallocator::instance(prime);
        v28 = pthread_rwlock_rdlock((v27 + 32));
        if (v28)
        {
          geo::read_write_lock::logFailure(v28, "read lock", v29);
        }

        v30 = malloc_type_zone_malloc(*v27, 8 * v26, 0x2004093837F09uLL);
        atomic_fetch_add((v27 + 24), 1u);
        geo::read_write_lock::unlock((v27 + 32));
        v32 = v68;
        v68 = v30;
        if (v32)
        {
          v33 = mdm::zone_mallocator::instance(v31);
          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>>,void *> *> *>(v33, v32);
        }

        v34 = 0;
        v69 = v26;
        do
        {
          *&v68[8 * v34++] = 0;
        }

        while (v26 != v34);
        v35 = *(&v70 + 1);
        if (*(&v70 + 1))
        {
          v36 = *(*(&v70 + 1) + 8);
          v37 = vcnt_s8(v26);
          v37.i16[0] = vaddlv_u8(v37);
          if (v37.u32[0] > 1uLL)
          {
            if (v36 >= v26)
            {
              v36 %= v26;
            }
          }

          else
          {
            v36 &= v26 - 1;
          }

          *&v68[8 * v36] = &v70 + 8;
          for (j = *v35; j; v36 = v41)
          {
            v41 = j[1];
            if (v37.u32[0] > 1uLL)
            {
              if (v41 >= v26)
              {
                v41 %= v26;
              }
            }

            else
            {
              v41 &= v26 - 1;
            }

            if (v41 != v36)
            {
              v42 = v68;
              if (!*&v68[8 * v41])
              {
                *&v68[8 * v41] = v35;
                goto LABEL_63;
              }

              *v35 = *j;
              *j = **&v42[8 * v41];
              **&v42[8 * v41] = j;
              j = v35;
            }

            v41 = v36;
LABEL_63:
            v35 = j;
            j = *j;
          }
        }

        v13 = v26;
        goto LABEL_67;
      }

      v46 = v68;
      v68 = 0;
      if (v46)
      {
        v47 = mdm::zone_mallocator::instance(prime);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>>,void *> *> *>(v47, v46);
      }

      v13 = 0;
      v69 = 0;
    }
  }

LABEL_67:
  if ((v13 & (v13 - 1)) != 0)
  {
    if (v13 <= v12)
    {
      v7 = v12 % v13;
    }

    else
    {
      v7 = v12;
    }
  }

  else
  {
    v7 = (v13 - 1) & v12;
  }

  goto LABEL_72;
}

std::__shared_weak_count *md::SolidTrafficLayer::SolidTrafficLayer(std::__shared_weak_count *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, std::__shared_weak_count_vtbl **a5, char *a6)
{
  v8 = a1;
  v273 = *MEMORY[0x1E69E9840];
  v239 = a6[32];
  if (v239 == 1)
  {
    v227 = a6[1];
    v7 = *(a6 + 4);
    v238 = *a6;
    v232 = *(a6 + 2);
    v235 = a6[24];
  }

  else
  {
    v238 = 0;
  }

  if (a3)
  {
    v266 = 0;
    v267 = 0;
    *(&v269 + 1) = 0;
    *(&v268 + 1) = 0;
    *(&v268 + 1) = 0;
    LODWORD(v270) = 1065353216;
    v10 = a3[6];
    v9 = a3[7];
    for (i = v9; ; v9 = i)
    {
      if (v10 == v9)
      {
        operator new();
      }

      v11 = ggl::CullingGrid::intersectedCellsForRibbon(*(*v10 + 88), *(*v10 + 72), 0);
      v12 = v11;
      v13 = v11;
      v14 = v267;
      if (v267)
      {
        v15 = vcnt_s8(v267);
        v15.i16[0] = vaddlv_u8(v15);
        if (v15.u32[0] > 1uLL)
        {
          v6 = v11;
          if (v267 <= v11)
          {
            v6 = v11 % v267;
          }
        }

        else
        {
          v6 = (v267 - 1) & v11;
        }

        v16 = v266[v6];
        if (v16)
        {
          v17 = *v16;
          if (*v16)
          {
            do
            {
              v18 = v17[1];
              if (v18 == v11)
              {
                if (*(v17 + 4) == v11)
                {
                  goto LABEL_82;
                }
              }

              else
              {
                if (v15.u32[0] > 1uLL)
                {
                  if (v18 >= v267)
                  {
                    v18 %= v267;
                  }
                }

                else
                {
                  v18 &= v267 - 1;
                }

                if (v18 != v6)
                {
                  break;
                }
              }

              v17 = *v17;
            }

            while (v17);
          }
        }
      }

      v19 = mdm::zone_mallocator::instance(v11);
      v20 = pthread_rwlock_rdlock((v19 + 32));
      if (v20)
      {
        geo::read_write_lock::logFailure(v20, "read lock", v21);
      }

      v17 = malloc_type_zone_malloc(*v19, 0x38uLL, 0x10200408A1E2E81uLL);
      atomic_fetch_add((v19 + 24), 1u);
      geo::read_write_lock::unlock((v19 + 32));
      *v17 = 0;
      v17[1] = v13;
      *(v17 + 4) = v12;
      v17[3] = 0;
      v17[4] = 0;
      v17[5] = 0;
      v23 = (*(&v269 + 1) + 1);
      if (!v14 || (*&v270 * v14) < v23)
      {
        break;
      }

LABEL_72:
      v44 = v266;
      v45 = v266[v6];
      if (v45)
      {
        *v17 = *v45;
LABEL_80:
        *v45 = v17;
        goto LABEL_81;
      }

      *v17 = *(&v268 + 1);
      *(&v268 + 1) = v17;
      v44[v6] = &v268 + 8;
      if (*v17)
      {
        v46 = *(*v17 + 8);
        if ((v14 & (v14 - 1)) != 0)
        {
          if (v46 >= v14)
          {
            v46 %= v14;
          }
        }

        else
        {
          v46 &= v14 - 1;
        }

        v45 = &v266[v46];
        goto LABEL_80;
      }

LABEL_81:
      ++*(&v269 + 1);
LABEL_82:
      std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>::push_back[abi:nn200100]((v17 + 3), v10++);
    }

    v24 = (v14 & (v14 - 1)) != 0;
    if (v14 < 3)
    {
      v24 = 1;
    }

    v25 = v24 | (2 * v14);
    v26 = vcvtps_u32_f32(v23 / *&v270);
    if (v25 <= v26)
    {
      v27 = v26;
    }

    else
    {
      v27 = v25;
    }

    if (v27 == 1)
    {
      v27 = 2;
    }

    else if ((v27 & (v27 - 1)) != 0)
    {
      prime = std::__next_prime(v27);
      v27 = prime;
    }

    v14 = v267;
    if (v27 > v267)
    {
      goto LABEL_37;
    }

    if (v27 < v267)
    {
      prime = vcvtps_u32_f32(*(&v269 + 1) / *&v270);
      if (v267 < 3 || (v39 = vcnt_s8(v267), v39.i16[0] = vaddlv_u8(v39), v39.u32[0] > 1uLL))
      {
        prime = std::__next_prime(prime);
      }

      else
      {
        v40 = 1 << -__clz(prime - 1);
        if (prime >= 2)
        {
          prime = v40;
        }
      }

      if (v27 <= prime)
      {
        v27 = prime;
      }

      if (v27 >= v267)
      {
        v14 = v267;
      }

      else
      {
        if (v27)
        {
LABEL_37:
          v28 = mdm::zone_mallocator::instance(prime);
          v29 = pthread_rwlock_rdlock((v28 + 32));
          if (v29)
          {
            geo::read_write_lock::logFailure(v29, "read lock", v30);
          }

          v31 = malloc_type_zone_malloc(*v28, 8 * v27, 0x2004093837F09uLL);
          atomic_fetch_add((v28 + 24), 1u);
          geo::read_write_lock::unlock((v28 + 32));
          v33 = v266;
          v266 = v31;
          if (v33)
          {
            v34 = mdm::zone_mallocator::instance(v32);
            geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>>,void *> *> *>(v34, v33);
          }

          v35 = 0;
          v267 = v27;
          do
          {
            v266[v35++] = 0;
          }

          while (v27 != v35);
          v36 = *(&v268 + 1);
          if (*(&v268 + 1))
          {
            v37 = *(*(&v268 + 1) + 8);
            v38 = vcnt_s8(v27);
            v38.i16[0] = vaddlv_u8(v38);
            if (v38.u32[0] > 1uLL)
            {
              if (v37 >= v27)
              {
                v37 %= v27;
              }
            }

            else
            {
              v37 &= v27 - 1;
            }

            v266[v37] = &v268 + 8;
            for (j = *v36; j; v37 = v42)
            {
              v42 = j[1];
              if (v38.u32[0] > 1uLL)
              {
                if (v42 >= v27)
                {
                  v42 %= v27;
                }
              }

              else
              {
                v42 &= v27 - 1;
              }

              if (v42 != v37)
              {
                v43 = v266;
                if (!v266[v42])
                {
                  v266[v42] = v36;
                  goto LABEL_63;
                }

                *v36 = *j;
                *j = *v43[v42];
                *v43[v42] = j;
                j = v36;
              }

              v42 = v37;
LABEL_63:
              v36 = j;
              j = *j;
            }
          }

          v14 = v27;
          goto LABEL_67;
        }

        v47 = v266;
        v266 = 0;
        if (v47)
        {
          v48 = mdm::zone_mallocator::instance(prime);
          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>>,void *> *> *>(v48, v47);
        }

        v14 = 0;
        v267 = 0;
      }
    }

LABEL_67:
    if ((v14 & (v14 - 1)) != 0)
    {
      if (v14 <= v13)
      {
        v6 = v13 % v14;
      }

      else
      {
        v6 = v13;
      }
    }

    else
    {
      v6 = (v14 - 1) & v13;
    }

    goto LABEL_72;
  }

  a1->__vftable = &unk_1F29F1A78;
  a1->__shared_owners_ = 0;
  a1->__shared_weak_owners_ = 0;
  a1[1].__vftable = 0;
  *&a1[1].__shared_owners_ = 0u;
  a1[3].__shared_owners_ = 0;
  LOBYTE(a1[3].__shared_weak_owners_) = 0;
  LOBYTE(a1[5].__vftable) = 0;
  a1[2].std::__shared_count = 0u;
  *(&a1[2].__shared_owners_ + 1) = 0u;
  if (v239)
  {
    BYTE1(a1[3].__shared_weak_owners_) = v227;
    *(&a1[3].__shared_weak_owners_ + 4) = v7;
    LOBYTE(a1[3].__shared_weak_owners_) = v238;
    a1[4].__shared_owners_ = v232;
    LOBYTE(a1[4].__shared_weak_owners_) = v235;
    LOBYTE(a1[5].__vftable) = 1;
  }

  if (!a1->__shared_owners_)
  {
    v50 = 0;
    goto LABEL_149;
  }

  v240 = 0;
  shared_owners = a1->__shared_owners_;
  v50 = 0;
  do
  {
    v228 = shared_owners;
    v51 = *shared_owners;
    v51[1] = v8;
    v52 = v51[47];
    v233 = v51[48];
    if (v52 == v233)
    {
      goto LABEL_145;
    }

    do
    {
      v53 = *v52;
      v53[1] = **v52;
      v53[3] = v53[2];
      v53[5] = v53[4];
      v266 = 0;
      v267 = 0;
      *&v268 = 0;
      v258 = 0;
      v259 = 0;
      v260[0] = 0;
      v54 = v53[7];
      v55 = v53[8];
      if (v54 == v55)
      {
        goto LABEL_138;
      }

      v236 = v52;
      v242 = v53[8];
      do
      {
        v56 = *v54;
        v257[0] = 1;
        md::Ribbons::RibbonWriter<md::Ribbons::PilledTrafficRibbonDescriptor>::eliminateDuplicates(v56, &v266, &v258, v257);
        v57 = v257[0];
        if (v257[0] < 2uLL)
        {
          goto LABEL_135;
        }

        v58 = v266;
        v59 = 1;
        while (1)
        {
          v60 = &v266[v59];
          v61 = *v60;
          v62 = v60[1];
          v63 = 1;
          v64 = *v266;
          v65 = v61;
          do
          {
            v66 = vabds_f32(v65, v64);
            if ((v63 & 1) == 0)
            {
              break;
            }

            v63 = 0;
            v64 = *(v266 + 1);
            v65 = v62;
          }

          while (v66 < 1.0e-10);
          if (v66 >= 1.0e-10)
          {
            break;
          }

          if (++v59 == v257[0])
          {
            v67 = 0.0;
            v68 = 1.0;
            goto LABEL_109;
          }
        }

        v69 = v61 - *v266;
        v70 = v62 - *(v266 + 1);
        v71 = 1.0 / sqrtf((v69 * v69) + (v70 * v70));
        v68 = v71 * v69;
        v67 = v71 * v70;
LABEL_109:
        v72 = v257[0] - 1;
        if ((v257[0] - 1) < 2)
        {
          v98 = 8;
          goto LABEL_133;
        }

        v73 = 2;
        v74 = 1;
        do
        {
          v75 = v68;
          v76 = v67;
          v77 = v74++;
          if (v74 < v57)
          {
            v78 = &v58[v77];
            v79 = *v78;
            v80 = v78[1];
            v81 = v74;
            while (1)
            {
              v82 = &v58[v81];
              v83 = *v82;
              v84 = v82[1];
              v85 = 1;
              v86 = v79;
              v87 = v83;
              do
              {
                v88 = vabds_f32(v87, v86);
                if ((v85 & 1) == 0)
                {
                  break;
                }

                v85 = 0;
                v86 = v80;
                v87 = v84;
              }

              while (v88 < 1.0e-10);
              if (v88 >= 1.0e-10)
              {
                break;
              }

              if (++v81 == v57)
              {
                goto LABEL_120;
              }
            }

            v89 = v83 - v79;
            v90 = v84 - v80;
            v91 = 1.0 / sqrtf((v89 * v89) + (v90 * v90));
            v68 = v91 * v89;
            v67 = v91 * v90;
          }

LABEL_120:
          v92 = atan2f(v67, v68);
          v93 = v92 - atan2f(v76, v75);
          v94 = v93;
          if (v93 <= 3.14159265)
          {
            if (v94 >= -3.14159265)
            {
              goto LABEL_125;
            }

            v95 = 6.28318531;
          }

          else
          {
            v95 = -6.28318531;
          }

          v93 = v94 + v95;
LABEL_125:
          v96 = fmaxf(ceilf(fabsf(v93) * 1.2732), 1.0);
          if (v96 >= 2)
          {
            v97 = 2 * v96;
          }

          else
          {
            v97 = 2;
          }

          v73 += v97;
        }

        while (v74 != v72);
        v98 = v73 + 6;
        v99 = (v73 + 6) >= 0x10000;
        v8 = a1;
        if (v99)
        {
          v56[2] = v56[1];
          v100 = v56[3];
        }

        else
        {
LABEL_133:
          v101 = 3 * v98 + v56[3];
          v56[2] = v56[1] + v98;
          v100 = v101 - 6;
        }

        v55 = v242;
        v56[4] = v100;
        v56[6] = v56[5];
LABEL_135:
        v102 = *v54++;
        v53[1] = v102[2] + v53[1] - v102[1];
        v53[3] = v102[4] + v53[3] - v102[3];
        v53[5] = v102[6] + v53[5] - v102[5];
      }

      while (v54 != v55);
      v52 = v236;
      if (v258)
      {
        operator delete(v258);
      }

LABEL_138:
      if (v266)
      {
        v267 = v266;
        operator delete(v266);
      }

      v103 = *v52;
      v104 = v52;
      if (((v240 >> 3) + 1) >> 61)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      if (v240 >> 3 != -1)
      {
        if (!(((v240 >> 3) + 1) >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v105 = (8 * (v240 >> 3));
      *v105 = v103;
      memcpy(0, 0, v240);
      v50 = (v105 + 1);
      v52 = v104 + 1;
      v240 = v50;
    }

    while (v104 + 1 != v233);
LABEL_145:
    shared_owners = v228 + 1;
  }

  while (v228 != -8);
  if (v8[3].__vftable)
  {
    operator new();
  }

LABEL_149:
  v106 = 0;
  v107 = 0;
  v108 = 0;
  v252 = 0;
  __p.__begin_ = 0;
  v109 = v50 >> 3;
  do
  {
    if (v108 == v109 || &v107[*(*(8 * v108) + 8) - **(8 * v108)] >= 0x10000)
    {
      v264 = "BatchType/IData";
      v265 = "BatchType/VData";
      LOBYTE(v258) = 1;
      std::allocate_shared[abi:nn200100]<ggl::VertexDataTyped<ggl::TrafficBase::DefaultVbo>,std::allocator<ggl::VertexDataTyped<ggl::TrafficBase::DefaultVbo>>,char const*&,unsigned long &,ggl::BufferUsage,0>(&v266, &v265, &v252, &v258);
    }

    if (v108 < v50 >> 3)
    {
      v110 = *(8 * v108);
      v107 += v110->i64[1] - v110->i64[0];
      v252 = v107;
      v111 = vaddq_s64(v110[1], v110[2]);
      v106 = (v106 + vsubq_s64(vdupq_laneq_s64(v111, 1), v111).u64[0]);
      __p.__begin_ = v106;
    }

    v109 = v50 >> 3;
    ++v108;
  }

  while (v108 <= v50 >> 3);
  v112 = a1;
  a1->__vftable = &unk_1F29F1A58;
  a1[5].__shared_owners_ = *a4;
  v113 = a4[1];
  a1[5].__shared_weak_owners_ = v113;
  if (v113)
  {
    atomic_fetch_add_explicit((v113 + 8), 1uLL, memory_order_relaxed);
  }

  a1[6].__vftable = *a5;
  v114 = a5[1];
  a1[6].__shared_owners_ = v114;
  if (v114)
  {
    atomic_fetch_add_explicit((v114 + 8), 1uLL, memory_order_relaxed);
  }

  a1[6].__shared_weak_owners_ = 0;
  v115 = a1->__shared_owners_;
  shared_weak_owners = a1->__shared_weak_owners_;
  if (v115 != shared_weak_owners)
  {
    v116 = 1.0;
    do
    {
      v217 = v115;
      v117 = *v115;
      v119 = *(*v115 + 376);
      v118 = *(v117 + 384);
      v218 = v118;
      while (v119 != v118)
      {
        v219 = v119;
        v120 = *v119;
        ggl::DataAccess<ggl::TrafficBase::DefaultVbo>::DataAccess(v257, **((*v119)[11] + 64), **v119, (*v119)[1], a2);
        v121 = v120[2];
        v123 = v120[4];
        v122 = v120[5];
        if (v122 == v123)
        {
          v124 = v120[3];
        }

        else
        {
          if (v123 < v121)
          {
            v121 = v120[4];
          }

          if (v120[3] <= v122)
          {
            v124 = v120[5];
          }

          else
          {
            v124 = v120[3];
          }
        }

        v125 = v257[5];
        v126 = ggl::DataAccess<ggl::DaVinci::TexturedCompressedVbo>::DataAccess(&v255, *(v120[11] + 96), v121, v124, 1, 1, a2);
        v127 = v120[2];
        v128 = v120[4];
        v252 = 0;
        v253 = 0;
        v254 = 0;
        memset(&__p, 0, sizeof(__p));
        v221 = v120;
        v129 = v120[7];
        v222 = (v120 + 7);
        v130 = v120[8];
        if (v129 != v130)
        {
          v131 = v256 + 2 * v128 - 2 * v121;
          v132 = v256 + 2 * v127 - 2 * v121;
          v223 = v130;
          do
          {
            v133 = *v129;
            v266 = &v112->__vftable;
            v267 = v133;
            v268 = xmmword_1B33B0570;
            v269 = xmmword_1B33B0580;
            v270 = xmmword_1B33B0590;
            v271[0] = xmmword_1B33B05A0;
            v271[1] = xmmword_1B33B05B0;
            v271[2] = xmmword_1B33B05C0;
            v265 = v125;
            v134 = v133[2];
            if (v134 == v133[1])
            {
              v135 = v133[2];
            }

            else
            {
              v264 = 1;
              md::Ribbons::RibbonWriter<md::Ribbons::PilledTrafficRibbonDescriptor>::eliminateDuplicates(v133, &v252, &__p, &v264);
              v230 = v132;
              v136 = v264;
              if (v264 >= 2)
              {
                v224 = v131;
                v137 = v252;
                begin = __p.__begin_;
                v272 = v125;
                v138 = *v252;
                v139 = 0.0;
                v140 = 1;
                v141 = *v252;
                do
                {
                  v142 = *(v252 + 8 * v140);
                  v143 = vsub_f32(v142, v141);
                  v139 = sqrtf(vaddv_f32(vmul_f32(v143, v143))) + v139;
                  ++v140;
                  v141 = v142;
                }

                while (v264 != v140);
                v144 = v139;
                v145 = v116 / v139;
                if (v144 <= 1.0e-10)
                {
                  v145 = 0.0;
                }

                v234 = v145;
                v146 = sqrtf(((*(v252 + 2) - v138.f32[0]) * (*(v252 + 2) - v138.f32[0])) + ((*(v252 + 3) - v138.f32[1]) * (*(v252 + 3) - v138.f32[1])));
                v147 = 1;
                v225 = v125;
                while (1)
                {
                  v148 = 1;
                  LODWORD(v149) = *v252;
                  LODWORD(v150) = *(v252 + v147);
                  do
                  {
                    v151 = vabds_f32(v150, v149);
                    if ((v148 & 1) == 0)
                    {
                      break;
                    }

                    v148 = 0;
                    LODWORD(v149) = HIDWORD(*v252);
                    LODWORD(v150) = HIDWORD(*(v252 + v147));
                  }

                  while (v151 < 1.0e-10);
                  if (v151 >= 1.0e-10)
                  {
                    break;
                  }

                  if (++v147 == v264)
                  {
                    v152 = 1065353216;
                    goto LABEL_188;
                  }
                }

                v153 = vsub_f32(*(v252 + 8 * v147), v138);
                v152 = vmul_n_f32(v153, v116 / sqrtf(vaddv_f32(vmul_f32(v153, v153))));
LABEL_188:
                v244 = v152;
                v249 = -*&v152.i32[1];
                v258 = *__p.__begin_;
                *&v260[2] = -*&v152.i32[1];
                HIDWORD(v260[2]) = v152.i32[0];
                v154 = vdup_lane_s32(v152, 0);
                v154.f32[0] = -*&v152.i32[1];
                v263 = 1;
                v259 = v138;
                v260[0] = vsub_f32(v154, v152);
                *&v260[1] = *&v152.i32[1] - *v152.i32;
                *(&v260[1] + 1) = -vaddv_f32(v152);
                v261 = xmmword_1B33B0570;
                v262 = 0;
                md::Ribbons::RibbonWriter<md::Ribbons::SolidTrafficRibbonDescriptor>::writeVertex(&v266, &v265, &v258);
                LOBYTE(v263) = 0;
                *v260 = v249;
                *(v260 + 4) = v244;
                *(&v260[1] + 1) = -*v244.i32;
                v261 = xmmword_1B33B0590;
                md::Ribbons::RibbonWriter<md::Ribbons::SolidTrafficRibbonDescriptor>::writeVertex(&v266, &v265, &v258);
                v155 = v136 - 1;
                if (v136 - 1 < 2)
                {
                  v190 = v244;
                }

                else
                {
                  v156 = 1;
                  v157 = v244;
                  do
                  {
                    v258 = begin[v156];
                    v158 = v137[v156++];
                    v159 = v158.f32[1];
                    v160 = v157;
                    if (v156 < v136)
                    {
                      v161 = v156;
                      while (1)
                      {
                        v162 = 1;
                        v163 = v158.f32[0];
                        LODWORD(v164) = v137[v161];
                        do
                        {
                          v165 = vabds_f32(v164, v163);
                          if ((v162 & 1) == 0)
                          {
                            break;
                          }

                          v162 = 0;
                          v163 = v158.f32[1];
                          LODWORD(v164) = HIDWORD(v137[v161]);
                        }

                        while (v165 < 1.0e-10);
                        if (v165 >= 1.0e-10)
                        {
                          break;
                        }

                        if (++v161 == v136)
                        {
                          v160 = v157;
                          goto LABEL_199;
                        }
                      }

                      v166 = vsub_f32(v137[v161], v158);
                      v160 = vmul_n_f32(v166, v116 / sqrtf(vaddv_f32(vmul_f32(v166, v166))));
                    }

LABEL_199:
                    v167 = &v137[v156];
                    v168 = *v167;
                    v169 = v167[1];
                    v170 = vadd_f32(v160, v157);
                    v171 = vaddv_f32(vmul_f32(v170, v170));
                    v172 = v157;
                    if (v171 > 0.0)
                    {
                      *v172.i32 = -*&v170.i32[1];
                      v172 = vmul_n_f32(vzip1_s32(v172, v170), v116 / sqrtf(v171));
                    }

                    v173 = v157.f32[1];
                    v243 = v158.f32[0];
                    v245 = v157.f32[0];
                    v259 = v158;
                    *&v262 = v146;
                    *(&v262 + 1) = v146 * v234;
                    v261 = xmmword_1B33B0590;
                    v246 = v160;
                    v250 = v172;
                    LODWORD(v260[2]) = v172.i32[0];
                    HIBYTE(v263) = 1;
                    v174 = atan2f(v160.f32[1], v160.f32[0]);
                    v175 = v174 - atan2f(v173, v245);
                    v176 = v175;
                    v241 = v169;
                    if (v175 <= 3.14159265)
                    {
                      v177 = &xmmword_1B33B2000;
                      if (v176 < -3.14159265)
                      {
                        v175 = v176 + 6.28318531;
                      }
                    }

                    else
                    {
                      v175 = v176 + -6.28318531;
                      v177 = &xmmword_1B33B2000;
                    }

                    v178 = vmul_f32(v246, v250);
                    v179 = vadd_f32(vdup_lane_s32(v178, 1), v178);
                    v180 = vmul_f32(v179, v179);
                    *v180.i32 = sqrtf(fmaxf(v116 - *v180.i32, 0.1));
                    v181 = vdiv_f32(v250, vdup_lane_s32(v180, 0));
                    v182 = fabsf(v175);
                    v183 = fmaxf(ceilf(v182 * *(v177 + 384)), v116);
                    if (v183 < 2)
                    {
                      HIDWORD(v260[2]) = v250.i32[1];
                      v260[0] = v181;
                      v260[1] = vneg_f32(v181);
                      md::Ribbons::RibbonWriter<md::Ribbons::SolidTrafficRibbonDescriptor>::writeVertex(&v266, &v265, &v258);
                    }

                    else
                    {
                      v184 = 0;
                      v185 = vneg_f32(v181);
                      do
                      {
                        v186 = __sincosf_stret(((v184 * (1.0 / (v183 + -1.0))) + -0.5) * v175);
                        v187 = vrev64_s32(vmul_n_f32(v250, v186.__sinval));
                        v188 = vmul_n_f32(v250, v186.__cosval);
                        v189.i32[0] = vsub_f32(v188, v187).u32[0];
                        v189.i32[1] = vadd_f32(v188, v187).i32[1];
                        v260[2] = v189;
                        if (v182 >= 1.5708)
                        {
                          v260[0] = v189;
                          v260[1] = vneg_f32(v189);
                          md::Ribbons::RibbonWriter<md::Ribbons::SolidTrafficRibbonDescriptor>::writeVertex(&v266, &v265, &v258);
                          HIBYTE(v263) = 0;
                        }

                        else
                        {
                          if (v175 >= 0.0)
                          {
                            v260[0] = v181;
                            v260[1] = vneg_f32(v189);
                          }

                          else
                          {
                            v260[0] = v189;
                            v260[1] = v185;
                          }

                          md::Ribbons::RibbonWriter<md::Ribbons::SolidTrafficRibbonDescriptor>::writeVertex(&v266, &v265, &v258);
                        }

                        ++v184;
                      }

                      while (v183 != v184);
                    }

                    v146 = sqrtf(((v168 - v243) * (v168 - v243)) + ((v241 - v159) * (v241 - v159))) + v146;
                    v190 = v246;
                    v157 = v246;
                    v116 = 1.0;
                  }

                  while (v156 != v155);
                }

                v191 = v137[v155];
                v192 = v137[v136 - 2];
                v193 = 1;
                v194 = v192.f32[0];
                v195 = v191.f32[0];
                do
                {
                  v196 = vabds_f32(v195, v194);
                  if ((v193 & 1) == 0)
                  {
                    break;
                  }

                  v193 = 0;
                  LODWORD(v194) = HIDWORD(v137[v136 - 2]);
                  LODWORD(v195) = HIDWORD(v137[v155]);
                }

                while (v196 < 1.0e-10);
                v131 = v224;
                v125 = v225;
                v130 = v223;
                if (v196 >= 1.0e-10)
                {
                  v197 = vsub_f32(v191, v192);
                  v190 = vmul_n_f32(v197, v116 / sqrtf(vaddv_f32(vmul_f32(v197, v197))));
                }

                v247 = v190;
                v198 = vneg_f32(v190);
                LODWORD(v260[0]) = v198.i32[1];
                *(v260 + 4) = v190;
                HIBYTE(v263) = 0;
                v258 = begin[v136 - 1];
                v259 = v191;
                *(&v260[1] + 4) = v198;
                HIDWORD(v260[2]) = v190.i32[0];
                *&v262 = v146;
                *(&v262 + 1) = v146 * v234;
                md::Ribbons::RibbonWriter<md::Ribbons::SolidTrafficRibbonDescriptor>::writeVertex(&v266, &v265, &v258);
                LOBYTE(v263) = 1;
                *v260 = v247.f32[0] - v247.f32[1];
                HIDWORD(v260[0]) = vaddv_f32(v247);
                LODWORD(v260[1]) = HIDWORD(v260[0]);
                *(&v260[1] + 1) = v247.f32[1] - v247.f32[0];
                v261 = *(v271 + 8);
                md::Ribbons::RibbonWriter<md::Ribbons::SolidTrafficRibbonDescriptor>::writeVertex(&v266, &v265, &v258);
                v199 = v133[1];
                v200 = v133[2] - v199;
                v201 = v200 >> 1;
                if (v200 >= 4)
                {
                  v202 = 2;
                  if (v201 > 2)
                  {
                    v202 = v201;
                  }

                  v203 = v202 - 1;
                  v204 = v133[1];
                  v205 = v230;
                  do
                  {
                    *v205 = v204;
                    v206 = v204 + 1;
                    v205[1] = v204 + 1;
                    v207 = v204 + 3;
                    LODWORD(v204) = v204 + 2;
                    v205[2] = v204;
                    v205[3] = v206;
                    v205[4] = v207;
                    v205[5] = v204;
                    v205 += 6;
                    --v203;
                  }

                  while (v203);
                }

                if (v133[6] != v133[5] && v201 - 1 >= 3)
                {
                  v208 = v201 - 3;
                  v209 = v199 + 4;
                  v210 = v199 + 65538;
                  v211 = v224;
                  do
                  {
                    *v211 = v210;
                    *(v211 + 1) = v209;
                    v209 += 2;
                    v210 += 2;
                    v211 = (v211 + 4);
                    --v208;
                  }

                  while (v208);
                }
              }

              v133 = *v129;
              v134 = *(*v129 + 8);
              v135 = *(*v129 + 16);
              v112 = a1;
              v132 = v230;
            }

            v125 += 20 * (v135 - v134);
            v132 += 2 * (v133[4] - v133[3]);
            v131 += 2 * (v133[6] - v133[5]);
            v129 += 8;
          }

          while (v129 != v130);
          v129 = *v222;
        }

        if (v129)
        {
          v212 = v221[8];
          v213 = v129;
          if (v212 != v129)
          {
            do
            {
              v212 -= 8;
              std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>::reset[abi:nn200100](v212);
            }

            while (v212 != v129);
            v213 = *v222;
          }

          v221[8] = v129;
          v214 = mdm::zone_mallocator::instance(v126);
          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>>(v214, v213);
          *v222 = 0;
          v222[1] = 0;
          v222[2] = 0;
        }

        *v222 = 0;
        v222[1] = 0;
        v222[2] = 0;
        v267 = 0;
        *&v268 = 0;
        v266 = 0;
        v258 = &v266;
        std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v258);
        if (__p.__begin_)
        {
          operator delete(__p.__begin_);
        }

        if (v252)
        {
          v253 = v252;
          operator delete(v252);
        }

        ggl::BufferMemory::~BufferMemory(&v255);
        ggl::BufferMemory::~BufferMemory(v257);
        v118 = v218;
        v119 = v219 + 1;
      }

      v115 = v217 + 8;
    }

    while (v217 + 8 != shared_weak_owners);
  }

  v112->__vftable = &unk_1F29F1A38;
  v112[7].__vftable = 0;
  return v112;
}

void md::SolidTrafficLayer::~SolidTrafficLayer(md::SolidTrafficLayer *this)
{
  *this = &unk_1F29F1A58;
  v2 = *(this + 19);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 17);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::Ribbons::RibbonLayer<md::Ribbons::SolidTrafficRibbonDescriptor>::~RibbonLayer(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F29F1A58;
  v2 = *(this + 19);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 17);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::Ribbons::RibbonLayer<md::Ribbons::SolidTrafficRibbonDescriptor>::~RibbonLayer(this);
}

void *md::Ribbons::RibbonLayer<md::Ribbons::SolidTrafficRibbonDescriptor>::~RibbonLayer(void *a1)
{
  *a1 = &unk_1F29F1A78;
  v2 = a1[1];
  v3 = a1[2];
  while (v2 != v3)
  {
    if (*v2)
    {
      (*(**v2 + 8))(*v2);
    }

    ++v2;
  }

  v4 = a1[4];
  v5 = a1[5];
  while (v4 != v5)
  {
    if (*v4)
    {
      (*(**v4 + 8))(*v4);
    }

    ++v4;
  }

  v6 = a1[10];
  a1[10] = 0;
  if (v6)
  {
    std::default_delete<gdc::GlobeTileGrid>::operator()[abi:nn200100](v6);
  }

  v7 = a1[4];
  if (v7)
  {
    a1[5] = v7;
    operator delete(v7);
  }

  v8 = a1[1];
  if (v8)
  {
    a1[2] = v8;
    operator delete(v8);
  }

  return a1;
}

void md::Ribbons::RibbonLayer<md::Ribbons::SolidTrafficRibbonDescriptor>::~RibbonLayer(void *a1)
{
  md::Ribbons::RibbonLayer<md::Ribbons::SolidTrafficRibbonDescriptor>::~RibbonLayer(a1);

  JUMPOUT(0x1B8C62190);
}

void md::RibbonLayer<md::Ribbons::SolidTrafficRibbonDescriptor>::~RibbonLayer(void *a1)
{
  *a1 = &unk_1F29F1A58;
  v2 = a1[19];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[17];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::Ribbons::RibbonLayer<md::Ribbons::SolidTrafficRibbonDescriptor>::~RibbonLayer(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::RibbonLayer<md::Ribbons::SolidTrafficRibbonDescriptor>::~RibbonLayer(void *a1)
{
  *a1 = &unk_1F29F1A58;
  v2 = a1[19];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[17];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  return md::Ribbons::RibbonLayer<md::Ribbons::SolidTrafficRibbonDescriptor>::~RibbonLayer(a1);
}

void *ggl::DataAccess<ggl::TrafficBase::DefaultVbo>::DataAccess(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ggl::BufferMemory::BufferMemory(a1);
  ggl::ResourceAccessor::accessIndexData(v11, a5, a2, a3, a4, 1, 1);
  ggl::BufferMemory::operator=(a1, v11);
  ggl::BufferMemory::~BufferMemory(v11);
  return a1;
}

void std::vector<gm::Matrix<float,2,1>>::resize(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 8 * a2;
    }
  }

  else
  {
    std::vector<gm::Matrix<float,2,1>>::__append(result, a2 - v2);
  }
}

void std::vector<gm::Matrix<float,2,1>>::__append(void *a1, unint64_t a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (a2 <= (v3 - v4) >> 3)
  {
    a1[1] = v4 + 8 * a2;
  }

  else
  {
    v5 = v4 - *a1;
    v6 = a2 + (v5 >> 3);
    if (v6 >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v7 = v5 >> 3;
    v8 = v3 - *a1;
    if (v8 >> 2 > v6)
    {
      v6 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v6;
    }

    __p[4] = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v9);
    }

    __p[0] = 0;
    __p[1] = (8 * v7);
    __p[2] = (8 * v7 + 8 * a2);
    __p[3] = 0;
    std::vector<gm::Matrix<float,2,1>>::__swap_out_circular_buffer(a1, __p);
    if (__p[0])
    {
      operator delete(__p[0]);
    }
  }
}

void non-virtual thunk toggl::VertexDataTyped<ggl::TrafficBase::DefaultVbo>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::TrafficBase::DefaultVbo>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::TrafficBase::DefaultVbo>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29F1A98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

mdm::zone_mallocator *std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>::push_back[abi:nn200100](mdm::zone_mallocator *result, uint64_t *a2)
{
  v3 = result;
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (v5 >= v4)
  {
    v8 = *result;
    v9 = v5 - *result;
    v10 = v9 >> 3;
    v11 = (v9 >> 3) + 1;
    if (v11 >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v12 = v4 - v8;
    if (v12 >> 2 > v11)
    {
      v11 = v12 >> 2;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF8)
    {
      v13 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    v22[4] = result + 24;
    if (v13)
    {
      v14 = mdm::zone_mallocator::instance(result);
      v15 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>>(v14, v13);
      v8 = *v3;
      v9 = *(v3 + 1) - *v3;
    }

    else
    {
      v15 = 0;
    }

    v16 = &v15[8 * v10];
    v17 = &v15[8 * v13];
    v18 = *a2;
    *a2 = 0;
    v19 = &v16[-8 * (v9 >> 3)];
    *v16 = v18;
    v7 = v16 + 8;
    memcpy(v19, v8, v9);
    v20 = *v3;
    *v3 = v19;
    *(v3 + 1) = v7;
    v21 = *(v3 + 2);
    *(v3 + 2) = v17;
    v22[2] = v20;
    v22[3] = v21;
    v22[0] = v20;
    v22[1] = v20;
    result = std::__split_buffer<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator> &>::~__split_buffer(v22);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 1;
  }

  *(v3 + 1) = v7;
  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::SolidTrafficRibbonDescriptor>::batch(std::unordered_map<md::TrafficBatchKey,std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::TrafficBatchKey,std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::SolidTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::SolidTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,false>(uint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v6 = result;
  while (2)
  {
    v117 = a2;
    v119 = a2 - 1;
    v114 = a2 - 3;
    v115 = a2 - 2;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v7 = v6;
          v8 = a2 - v6;
          if (v8 > 2)
          {
            switch(v8)
            {
              case 3:

                return std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(v6, v6 + 1, v119);
              case 4:

                return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(v6, v6 + 1, v6 + 2, v119);
              case 5:

                return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(v6, v6 + 1, v6 + 2, v6 + 3, v119);
            }
          }

          else
          {
            if (v8 < 2)
            {
              return result;
            }

            if (v8 == 2)
            {
              v41 = *v119;
              v42 = ggl::CullingGrid::sortOrderForCells(*(*v119 + 96));
              v43 = *v6;
              result = ggl::CullingGrid::sortOrderForCells(*(*v6 + 96));
              if (v42 < result)
              {
                *v6 = v41;
                *v119 = v43;
              }

              return result;
            }
          }

          if (v8 <= 23)
          {
            v44 = v6 + 1;
            v46 = v6 == a2 || v44 == a2;
            if (a4)
            {
              if (!v46)
              {
                v47 = 0;
                v48 = v6;
                do
                {
                  v49 = v44;
                  v50 = v48[1];
                  v51 = ggl::CullingGrid::sortOrderForCells(*(v50 + 96));
                  result = ggl::CullingGrid::sortOrderForCells(*(*v48 + 96));
                  if (v51 < result)
                  {
                    *v49 = 0;
                    v124 = v50;
                    v52 = *v48;
                    v53 = v47;
                    while (1)
                    {
                      *(v7 + v53) = 0;
                      std::unique_ptr<md::RibbonSection<md::Ribbons::SolidTrafficRibbonDescriptor>>::reset[abi:nn200100]((v7 + v53 + 8), v52);
                      v54 = v124;
                      if (!v53)
                      {
                        break;
                      }

                      v55 = ggl::CullingGrid::sortOrderForCells(*(v124 + 96));
                      v52 = *(v7 + v53 - 8);
                      v53 -= 8;
                      if (v55 >= ggl::CullingGrid::sortOrderForCells(*(v52 + 96)))
                      {
                        v56 = (v7 + v53 + 8);
                        goto LABEL_84;
                      }
                    }

                    v56 = v7;
LABEL_84:
                    v124 = 0;
                    std::unique_ptr<md::RibbonSection<md::Ribbons::SolidTrafficRibbonDescriptor>>::reset[abi:nn200100](v56, v54);
                    result = std::unique_ptr<md::RibbonSection<md::Ribbons::SolidTrafficRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
                    a2 = v117;
                  }

                  v44 = v49 + 1;
                  v47 += 8;
                  v48 = v49;
                }

                while (v49 + 1 != a2);
              }
            }

            else if (!v46)
            {
              do
              {
                v106 = v44;
                v107 = v7[1];
                v108 = ggl::CullingGrid::sortOrderForCells(*(v107 + 96));
                result = ggl::CullingGrid::sortOrderForCells(*(*v7 + 96));
                if (v108 < result)
                {
                  *v106 = 0;
                  v124 = v107;
                  v109 = *v7;
                  v110 = v106;
                  v111 = v106;
                  do
                  {
                    *--v111 = 0;
                    std::unique_ptr<md::RibbonSection<md::Ribbons::SolidTrafficRibbonDescriptor>>::reset[abi:nn200100](v110, v109);
                    v112 = v124;
                    v113 = ggl::CullingGrid::sortOrderForCells(*(v124 + 96));
                    v109 = *(v110 - 2);
                    v110 = v111;
                  }

                  while (v113 < ggl::CullingGrid::sortOrderForCells(*(v109 + 96)));
                  v124 = 0;
                  std::unique_ptr<md::RibbonSection<md::Ribbons::SolidTrafficRibbonDescriptor>>::reset[abi:nn200100](v111, v112);
                  result = std::unique_ptr<md::RibbonSection<md::Ribbons::SolidTrafficRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
                }

                v44 = v106 + 1;
                v7 = v106;
              }

              while (v106 + 1 != a2);
            }

            return result;
          }

          v122 = v6;
          if (!a3)
          {
            if (v6 != a2)
            {
              v57 = (v8 - 2) >> 1;
              v120 = v57;
              do
              {
                v58 = v57;
                if (v120 >= v57)
                {
                  v59 = (2 * v57) | 1;
                  v60 = &v122[v59];
                  if (2 * v57 + 2 >= v8)
                  {
                    v65 = *v60;
                  }

                  else
                  {
                    v61 = *v60;
                    v62 = ggl::CullingGrid::sortOrderForCells(*(*v60 + 96));
                    v63 = v60[1];
                    v64 = ggl::CullingGrid::sortOrderForCells(*(v63 + 96));
                    if (v62 >= v64)
                    {
                      v65 = v61;
                    }

                    else
                    {
                      v65 = v63;
                    }

                    if (v62 < v64)
                    {
                      ++v60;
                      v59 = 2 * v58 + 2;
                    }
                  }

                  v66 = &v122[v58];
                  v67 = ggl::CullingGrid::sortOrderForCells(*(v65 + 96));
                  v68 = *v66;
                  result = ggl::CullingGrid::sortOrderForCells(*(*v66 + 96));
                  if (v67 >= result)
                  {
                    *v66 = 0;
                    v124 = v68;
                    v69 = *v60;
                    while (1)
                    {
                      v70 = v60;
                      *v60 = 0;
                      std::unique_ptr<md::RibbonSection<md::Ribbons::SolidTrafficRibbonDescriptor>>::reset[abi:nn200100](v66, v69);
                      if (v120 < v59)
                      {
                        break;
                      }

                      v71 = (2 * v59) | 1;
                      v60 = &v122[v71];
                      v72 = 2 * v59 + 2;
                      if (v72 >= v8)
                      {
                        v69 = *v60;
                        v59 = (2 * v59) | 1;
                      }

                      else
                      {
                        v73 = *v60;
                        v74 = ggl::CullingGrid::sortOrderForCells(*(*v60 + 96));
                        v75 = v60[1];
                        v76 = ggl::CullingGrid::sortOrderForCells(*(v75 + 96));
                        v77 = v74 >= v76;
                        if (v74 >= v76)
                        {
                          v69 = v73;
                        }

                        else
                        {
                          v69 = v75;
                        }

                        if (v77)
                        {
                          v59 = v71;
                        }

                        else
                        {
                          ++v60;
                          v59 = v72;
                        }
                      }

                      v78 = ggl::CullingGrid::sortOrderForCells(*(v69 + 96));
                      v79 = v124;
                      v66 = v70;
                      if (v78 < ggl::CullingGrid::sortOrderForCells(*(v124 + 96)))
                      {
                        goto LABEL_112;
                      }
                    }

                    v79 = v124;
LABEL_112:
                    a2 = v117;
                    v124 = 0;
                    std::unique_ptr<md::RibbonSection<md::Ribbons::SolidTrafficRibbonDescriptor>>::reset[abi:nn200100](v70, v79);
                    result = std::unique_ptr<md::RibbonSection<md::Ribbons::SolidTrafficRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
                  }
                }

                v57 = v58 - 1;
              }

              while (v58);
              v80 = v122;
              do
              {
                if (v8 >= 2)
                {
                  v81 = 0;
                  v82 = *v80;
                  *v80 = 0;
                  v118 = a2;
                  v121 = v82;
                  v123 = v82;
                  v83 = v80;
                  do
                  {
                    v84 = &v83[v81];
                    v85 = v84 + 1;
                    v86 = (2 * v81) | 1;
                    v81 = 2 * v81 + 2;
                    if (v81 >= v8)
                    {
                      v93 = *v85;
                      v81 = v86;
                    }

                    else
                    {
                      v87 = v84[1];
                      v88 = ggl::CullingGrid::sortOrderForCells(*(v87 + 96));
                      v91 = v84[2];
                      v90 = v84 + 2;
                      v89 = v91;
                      v92 = ggl::CullingGrid::sortOrderForCells(*(v91 + 96));
                      if (v88 >= v92)
                      {
                        v93 = v87;
                      }

                      else
                      {
                        v93 = v89;
                      }

                      if (v88 >= v92)
                      {
                        v81 = v86;
                      }

                      else
                      {
                        v85 = v90;
                      }
                    }

                    *v85 = 0;
                    std::unique_ptr<md::RibbonSection<md::Ribbons::SolidTrafficRibbonDescriptor>>::reset[abi:nn200100](v83, v93);
                    v83 = v85;
                  }

                  while (v81 <= ((v8 - 2) >> 1));
                  a2 = v118;
                  v94 = v118 - 1;
                  if (v85 == v118 - 1)
                  {
                    v123 = 0;
                    std::unique_ptr<md::RibbonSection<md::Ribbons::SolidTrafficRibbonDescriptor>>::reset[abi:nn200100](v85, v121);
                    v80 = v122;
                  }

                  else
                  {
                    v95 = *v94;
                    *v94 = 0;
                    std::unique_ptr<md::RibbonSection<md::Ribbons::SolidTrafficRibbonDescriptor>>::reset[abi:nn200100](v85, v95);
                    v123 = 0;
                    std::unique_ptr<md::RibbonSection<md::Ribbons::SolidTrafficRibbonDescriptor>>::reset[abi:nn200100](v94, v121);
                    v80 = v122;
                    v96 = (v85 - v122 + 8) >> 3;
                    v97 = v96 < 2;
                    v98 = v96 - 2;
                    if (!v97)
                    {
                      v99 = v98 >> 1;
                      v100 = &v122[v98 >> 1];
                      v101 = ggl::CullingGrid::sortOrderForCells(*(*v100 + 96));
                      v102 = *v85;
                      if (v101 < ggl::CullingGrid::sortOrderForCells(*(*v85 + 96)))
                      {
                        *v85 = 0;
                        v103 = *v100;
                        do
                        {
                          v104 = v100;
                          *v100 = 0;
                          std::unique_ptr<md::RibbonSection<md::Ribbons::SolidTrafficRibbonDescriptor>>::reset[abi:nn200100](v85, v103);
                          if (!v99)
                          {
                            break;
                          }

                          v99 = (v99 - 1) >> 1;
                          v100 = &v122[v99];
                          v103 = *v100;
                          v105 = ggl::CullingGrid::sortOrderForCells(*(*v100 + 96));
                          v85 = v104;
                        }

                        while (v105 < ggl::CullingGrid::sortOrderForCells(*(v102 + 96)));
                        v124 = 0;
                        std::unique_ptr<md::RibbonSection<md::Ribbons::SolidTrafficRibbonDescriptor>>::reset[abi:nn200100](v104, v102);
                        std::unique_ptr<md::RibbonSection<md::Ribbons::SolidTrafficRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
                        a2 = v118;
                      }
                    }
                  }

                  result = std::unique_ptr<md::RibbonSection<md::Ribbons::SolidTrafficRibbonDescriptor>>::reset[abi:nn200100](&v123, 0);
                }

                --a2;
                v97 = v8-- > 2;
              }

              while (v97);
            }

            return result;
          }

          v9 = v8 >> 1;
          v10 = &v6[v8 >> 1];
          if (v8 < 0x81)
          {
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(&v6[v8 >> 1], v6, v119);
          }

          else
          {
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(v6, &v6[v8 >> 1], v119);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(v6 + 1, v10 - 1, v115);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(v6 + 2, &v6[v9 + 1], v114);
            v7 = v6;
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(v10 - 1, &v6[v8 >> 1], &v6[v9 + 1]);
            v11 = *v6;
            *v6 = *v10;
            *v10 = v11;
          }

          --a3;
          v12 = *v7;
          if (a4)
          {
            break;
          }

          v14 = ggl::CullingGrid::sortOrderForCells(*(*(v7 - 1) + 96));
          v13 = ggl::CullingGrid::sortOrderForCells(*(v12 + 96));
          v77 = v14 >= v13;
          v7 = v6;
          if (!v77)
          {
            goto LABEL_18;
          }

          *v6 = 0;
          v124 = v12;
          if (v13 >= ggl::CullingGrid::sortOrderForCells(*(*v119 + 96)))
          {
            v31 = (v6 + 1);
            do
            {
              v6 = v31;
              if (v31 >= a2)
              {
                break;
              }

              v31 += 8;
            }

            while (v13 >= ggl::CullingGrid::sortOrderForCells(*(*v6 + 96)));
          }

          else
          {
            do
            {
              v30 = v6[1];
              ++v6;
            }

            while (v13 >= ggl::CullingGrid::sortOrderForCells(*(v30 + 96)));
          }

          v32 = a2;
          if (v6 < a2)
          {
            v32 = a2;
            do
            {
              v33 = *--v32;
            }

            while (v13 < ggl::CullingGrid::sortOrderForCells(*(v33 + 96)));
          }

          if (v6 < v32)
          {
            v34 = *v6;
            v35 = *v32;
            do
            {
              *v6 = v35;
              *v32 = v34;
              v12 = v124;
              v36 = ggl::CullingGrid::sortOrderForCells(*(v124 + 96));
              do
              {
                v37 = v6[1];
                ++v6;
                v34 = v37;
              }

              while (v36 >= ggl::CullingGrid::sortOrderForCells(*(v37 + 96)));
              do
              {
                v38 = *--v32;
                v35 = v38;
              }

              while (v36 < ggl::CullingGrid::sortOrderForCells(*(v38 + 96)));
            }

            while (v6 < v32);
          }

          v39 = v6 - 1;
          if (v6 - 1 != v122)
          {
            v40 = *v39;
            *v39 = 0;
            std::unique_ptr<md::RibbonSection<md::Ribbons::SolidTrafficRibbonDescriptor>>::reset[abi:nn200100](v122, v40);
            v12 = v124;
          }

          v124 = 0;
          std::unique_ptr<md::RibbonSection<md::Ribbons::SolidTrafficRibbonDescriptor>>::reset[abi:nn200100](v6 - 1, v12);
          result = std::unique_ptr<md::RibbonSection<md::Ribbons::SolidTrafficRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
          a4 = 0;
        }

        v13 = ggl::CullingGrid::sortOrderForCells(*(v12 + 96));
LABEL_18:
        *v7 = 0;
        v124 = v12;
        v15 = v7;
        do
        {
          v16 = v15;
          v18 = v15[1];
          ++v15;
          v17 = v18;
        }

        while (ggl::CullingGrid::sortOrderForCells(*(v18 + 96)) < v13);
        v19 = a2;
        if (v16 == v122)
        {
          v19 = a2;
          do
          {
            if (v15 >= v19)
            {
              break;
            }

            v21 = *--v19;
          }

          while (ggl::CullingGrid::sortOrderForCells(*(v21 + 96)) >= v13);
        }

        else
        {
          do
          {
            v20 = *--v19;
          }

          while (ggl::CullingGrid::sortOrderForCells(*(v20 + 96)) >= v13);
        }

        if (v15 < v19)
        {
          v22 = *v19;
          v23 = v15;
          v24 = v19;
          do
          {
            *v23 = v22;
            *v24 = v17;
            v12 = v124;
            v25 = ggl::CullingGrid::sortOrderForCells(*(v124 + 96));
            do
            {
              v16 = v23;
              v26 = v23[1];
              ++v23;
              v17 = v26;
            }

            while (ggl::CullingGrid::sortOrderForCells(*(v26 + 96)) < v25);
            do
            {
              v27 = *--v24;
              v22 = v27;
            }

            while (ggl::CullingGrid::sortOrderForCells(*(v27 + 96)) >= v25);
          }

          while (v23 < v24);
        }

        if (v16 != v122)
        {
          v28 = *v16;
          *v16 = 0;
          std::unique_ptr<md::RibbonSection<md::Ribbons::SolidTrafficRibbonDescriptor>>::reset[abi:nn200100](v122, v28);
          v12 = v124;
        }

        v124 = 0;
        std::unique_ptr<md::RibbonSection<md::Ribbons::SolidTrafficRibbonDescriptor>>::reset[abi:nn200100](v16, v12);
        std::unique_ptr<md::RibbonSection<md::Ribbons::SolidTrafficRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
        a2 = v117;
        if (v15 >= v19)
        {
          break;
        }

LABEL_37:
        result = std::__introsort<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::SolidTrafficRibbonDescriptor>::batch(std::unordered_map<md::TrafficBatchKey,std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::TrafficBatchKey,std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::SolidTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::SolidTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,false>(v122, v16, a3, a4 & 1);
        a4 = 0;
        v6 = v16 + 1;
      }

      v29 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::SolidTrafficRibbonDescriptor>::batch(std::unordered_map<md::TrafficBatchKey,std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::TrafficBatchKey,std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::SolidTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::SolidTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*>(v122, v16);
      v6 = v16 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::SolidTrafficRibbonDescriptor>::batch(std::unordered_map<md::TrafficBatchKey,std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::TrafficBatchKey,std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::SolidTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::SolidTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*>(v16 + 1, v117);
      if (result)
      {
        break;
      }

      if (!v29)
      {
        goto LABEL_37;
      }
    }

    a2 = v16;
    v6 = v122;
    if (!v29)
    {
      continue;
    }

    return result;
  }
}

uint64_t *std::unique_ptr<md::RibbonSection<md::Ribbons::SolidTrafficRibbonDescriptor>>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2 + 56;
    std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v3);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::vector<std::unique_ptr<md::RibbonSection<md::Ribbons::SolidTrafficRibbonDescriptor>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        std::unique_ptr<md::RibbonSection<md::Ribbons::SolidTrafficRibbonDescriptor>>::reset[abi:nn200100](--v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__hash_table<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__deallocate_node(void *result)
{
  if (result)
  {
    v1 = result;
    do
    {
      v2 = *v1;
      v5 = v1 + 3;
      std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v5);
      v4 = mdm::zone_mallocator::instance(v3);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>>,void *>>(v4, v1);
      v1 = v2;
    }

    while (v2);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>>,void *> *> *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>>,void *>>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::SolidTrafficRibbonDescriptor>::batch(std::unordered_map<md::TrafficBatchKey,std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::TrafficBatchKey,std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::SolidTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::SolidTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*>(uint64_t *a1, uint64_t *a2)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(a1, a1 + 1, a2 - 1);
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(a1, a1 + 1, a1 + 2, a2 - 1);
        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = *(a2 - 1);
      v6 = ggl::CullingGrid::sortOrderForCells(*(v5 + 96));
      v7 = *a1;
      if (v6 < ggl::CullingGrid::sortOrderForCells(*(*a1 + 96)))
      {
        *a1 = v5;
        *(a2 - 1) = v7;
      }

      return 1;
    }
  }

  v8 = a1 + 2;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(a1, a1 + 1, a1 + 2);
  v9 = a1 + 3;
  if (a1 + 3 != a2)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = *v9;
      v13 = ggl::CullingGrid::sortOrderForCells(*(*v9 + 96));
      if (v13 < ggl::CullingGrid::sortOrderForCells(*(*v8 + 96)))
      {
        *v9 = 0;
        v21 = v12;
        v14 = *v8;
        v15 = v10;
        while (1)
        {
          *(a1 + v15 + 16) = 0;
          std::unique_ptr<md::RibbonSection<md::Ribbons::SolidTrafficRibbonDescriptor>>::reset[abi:nn200100]((a1 + v15 + 24), v14);
          v16 = v21;
          if (v15 == -16)
          {
            break;
          }

          v17 = ggl::CullingGrid::sortOrderForCells(*(v21 + 96));
          v14 = *(a1 + v15 + 8);
          v15 -= 8;
          if (v17 >= ggl::CullingGrid::sortOrderForCells(*(v14 + 96)))
          {
            v18 = (a1 + v15 + 24);
            goto LABEL_19;
          }
        }

        v18 = a1;
LABEL_19:
        v21 = 0;
        std::unique_ptr<md::RibbonSection<md::Ribbons::SolidTrafficRibbonDescriptor>>::reset[abi:nn200100](v18, v16);
        if (++v11 == 8)
        {
          v19 = v9 + 1 == a2;
          std::unique_ptr<md::RibbonSection<md::Ribbons::SolidTrafficRibbonDescriptor>>::reset[abi:nn200100](&v21, 0);
          return v19;
        }

        std::unique_ptr<md::RibbonSection<md::Ribbons::SolidTrafficRibbonDescriptor>>::reset[abi:nn200100](&v21, 0);
      }

      v8 = v9;
      v10 += 8;
      ++v9;
    }

    while (v9 != a2);
  }

  return 1;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x2004093837F09uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

mdm::zone_mallocator *std::__split_buffer<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  for (i = *(a1 + 2); i != v3; i = *(a1 + 2))
  {
    *(a1 + 2) = i - 8;
    std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>::reset[abi:nn200100]((i - 8));
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>>(v5, v4);
  }

  return a1;
}

void md::PilledTrafficLayer::~PilledTrafficLayer(md::PilledTrafficLayer *this)
{
  *this = &unk_1F29F19C0;
  v2 = *(this + 18);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::Ribbons::RibbonLayer<md::Ribbons::PilledTrafficRibbonDescriptor>::~RibbonLayer(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F29F19C0;
  v2 = *(this + 18);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::Ribbons::RibbonLayer<md::Ribbons::PilledTrafficRibbonDescriptor>::~RibbonLayer(this);
}

void *md::Ribbons::RibbonLayer<md::Ribbons::PilledTrafficRibbonDescriptor>::~RibbonLayer(void *a1)
{
  *a1 = &unk_1F29F19E0;
  v2 = a1[1];
  v3 = a1[2];
  while (v2 != v3)
  {
    if (*v2)
    {
      (*(**v2 + 8))(*v2);
    }

    ++v2;
  }

  v4 = a1[4];
  v5 = a1[5];
  while (v4 != v5)
  {
    if (*v4)
    {
      (*(**v4 + 8))(*v4);
    }

    ++v4;
  }

  v6 = a1[9];
  a1[9] = 0;
  if (v6)
  {
    std::default_delete<gdc::GlobeTileGrid>::operator()[abi:nn200100](v6);
  }

  v7 = a1[4];
  if (v7)
  {
    a1[5] = v7;
    operator delete(v7);
  }

  v8 = a1[1];
  if (v8)
  {
    a1[2] = v8;
    operator delete(v8);
  }

  return a1;
}

void md::Ribbons::RibbonLayer<md::Ribbons::PilledTrafficRibbonDescriptor>::~RibbonLayer(void *a1)
{
  md::Ribbons::RibbonLayer<md::Ribbons::PilledTrafficRibbonDescriptor>::~RibbonLayer(a1);

  JUMPOUT(0x1B8C62190);
}

void md::RibbonLayer<md::Ribbons::PilledTrafficRibbonDescriptor>::~RibbonLayer(void *a1)
{
  *a1 = &unk_1F29F19C0;
  v2 = a1[18];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[16];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::Ribbons::RibbonLayer<md::Ribbons::PilledTrafficRibbonDescriptor>::~RibbonLayer(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::RibbonLayer<md::Ribbons::PilledTrafficRibbonDescriptor>::~RibbonLayer(void *a1)
{
  *a1 = &unk_1F29F19C0;
  v2 = a1[18];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[16];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  return md::Ribbons::RibbonLayer<md::Ribbons::PilledTrafficRibbonDescriptor>::~RibbonLayer(a1);
}

void md::Ribbons::RibbonWriter<md::Ribbons::PilledTrafficRibbonDescriptor>::eliminateDuplicates(uint64_t a1, void *a2, std::vector<unsigned int> *a3, uint64_t *a4)
{
  *a4 = 1;
  std::vector<gm::Matrix<float,2,1>>::resize(a2, *(a1 + 88));
  std::vector<unsigned int>::resize(a3, *(a1 + 88));
  v8 = *a2;
  begin = a3->__begin_;
  v10 = *(a1 + 72);
  *v8 = *v10;
  v8[1] = v10[1];
  *begin = 0;
  v11 = *(a1 + 88);
  if (v11 >= 2)
  {
    v12 = *a4;
    v13 = v10 + 2;
    for (i = 1; i < v11; ++i)
    {
      v15 = &v8[2 * v12];
      if (*v13 != *(v15 - 1))
      {
        begin[v12++] = i;
        *a4 = v12;
        *v15 = *v13;
        v15[1] = v13[1];
        v11 = *(a1 + 88);
      }

      v13 += 2;
    }
  }
}

void non-virtual thunk toggl::VertexDataTyped<ggl::OptimizedTraffic::DefaultVbo>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::OptimizedTraffic::DefaultVbo>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::OptimizedTraffic::DefaultVbo>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29F1A00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

mdm::zone_mallocator *std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>::push_back[abi:nn200100](mdm::zone_mallocator *result, uint64_t *a2)
{
  v3 = result;
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (v5 >= v4)
  {
    v8 = *result;
    v9 = v5 - *result;
    v10 = v9 >> 3;
    v11 = (v9 >> 3) + 1;
    if (v11 >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v12 = v4 - v8;
    if (v12 >> 2 > v11)
    {
      v11 = v12 >> 2;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF8)
    {
      v13 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    v22[4] = result + 24;
    if (v13)
    {
      v14 = mdm::zone_mallocator::instance(result);
      v15 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>>(v14, v13);
      v8 = *v3;
      v9 = *(v3 + 1) - *v3;
    }

    else
    {
      v15 = 0;
    }

    v16 = &v15[8 * v10];
    v17 = &v15[8 * v13];
    v18 = *a2;
    *a2 = 0;
    v19 = &v16[-8 * (v9 >> 3)];
    *v16 = v18;
    v7 = v16 + 8;
    memcpy(v19, v8, v9);
    v20 = *v3;
    *v3 = v19;
    *(v3 + 1) = v7;
    v21 = *(v3 + 2);
    *(v3 + 2) = v17;
    v22[2] = v20;
    v22[3] = v21;
    v22[0] = v20;
    v22[1] = v20;
    result = std::__split_buffer<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator> &>::~__split_buffer(v22);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 1;
  }

  *(v3 + 1) = v7;
  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::PilledTrafficRibbonDescriptor>::batch(std::unordered_map<md::TrafficBatchKey,std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::TrafficBatchKey,std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::PilledTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::PilledTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,false>(uint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v6 = result;
  while (2)
  {
    v117 = a2;
    v119 = a2 - 1;
    v114 = a2 - 3;
    v115 = a2 - 2;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v7 = v6;
          v8 = a2 - v6;
          if (v8 > 2)
          {
            switch(v8)
            {
              case 3:

                return std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(v6, v6 + 1, v119);
              case 4:

                return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(v6, v6 + 1, v6 + 2, v119);
              case 5:

                return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(v6, v6 + 1, v6 + 2, v6 + 3, v119);
            }
          }

          else
          {
            if (v8 < 2)
            {
              return result;
            }

            if (v8 == 2)
            {
              v41 = *v119;
              v42 = ggl::CullingGrid::sortOrderForCells(*(*v119 + 96));
              v43 = *v6;
              result = ggl::CullingGrid::sortOrderForCells(*(*v6 + 96));
              if (v42 < result)
              {
                *v6 = v41;
                *v119 = v43;
              }

              return result;
            }
          }

          if (v8 <= 23)
          {
            v44 = v6 + 1;
            v46 = v6 == a2 || v44 == a2;
            if (a4)
            {
              if (!v46)
              {
                v47 = 0;
                v48 = v6;
                do
                {
                  v49 = v44;
                  v50 = v48[1];
                  v51 = ggl::CullingGrid::sortOrderForCells(*(v50 + 96));
                  result = ggl::CullingGrid::sortOrderForCells(*(*v48 + 96));
                  if (v51 < result)
                  {
                    *v49 = 0;
                    v124 = v50;
                    v52 = *v48;
                    v53 = v47;
                    while (1)
                    {
                      *(v7 + v53) = 0;
                      std::unique_ptr<md::RibbonSection<md::Ribbons::PilledTrafficRibbonDescriptor>>::reset[abi:nn200100]((v7 + v53 + 8), v52);
                      v54 = v124;
                      if (!v53)
                      {
                        break;
                      }

                      v55 = ggl::CullingGrid::sortOrderForCells(*(v124 + 96));
                      v52 = *(v7 + v53 - 8);
                      v53 -= 8;
                      if (v55 >= ggl::CullingGrid::sortOrderForCells(*(v52 + 96)))
                      {
                        v56 = (v7 + v53 + 8);
                        goto LABEL_84;
                      }
                    }

                    v56 = v7;
LABEL_84:
                    v124 = 0;
                    std::unique_ptr<md::RibbonSection<md::Ribbons::PilledTrafficRibbonDescriptor>>::reset[abi:nn200100](v56, v54);
                    result = std::unique_ptr<md::RibbonSection<md::Ribbons::PilledTrafficRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
                    a2 = v117;
                  }

                  v44 = v49 + 1;
                  v47 += 8;
                  v48 = v49;
                }

                while (v49 + 1 != a2);
              }
            }

            else if (!v46)
            {
              do
              {
                v106 = v44;
                v107 = v7[1];
                v108 = ggl::CullingGrid::sortOrderForCells(*(v107 + 96));
                result = ggl::CullingGrid::sortOrderForCells(*(*v7 + 96));
                if (v108 < result)
                {
                  *v106 = 0;
                  v124 = v107;
                  v109 = *v7;
                  v110 = v106;
                  v111 = v106;
                  do
                  {
                    *--v111 = 0;
                    std::unique_ptr<md::RibbonSection<md::Ribbons::PilledTrafficRibbonDescriptor>>::reset[abi:nn200100](v110, v109);
                    v112 = v124;
                    v113 = ggl::CullingGrid::sortOrderForCells(*(v124 + 96));
                    v109 = *(v110 - 2);
                    v110 = v111;
                  }

                  while (v113 < ggl::CullingGrid::sortOrderForCells(*(v109 + 96)));
                  v124 = 0;
                  std::unique_ptr<md::RibbonSection<md::Ribbons::PilledTrafficRibbonDescriptor>>::reset[abi:nn200100](v111, v112);
                  result = std::unique_ptr<md::RibbonSection<md::Ribbons::PilledTrafficRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
                }

                v44 = v106 + 1;
                v7 = v106;
              }

              while (v106 + 1 != a2);
            }

            return result;
          }

          v122 = v6;
          if (!a3)
          {
            if (v6 != a2)
            {
              v57 = (v8 - 2) >> 1;
              v120 = v57;
              do
              {
                v58 = v57;
                if (v120 >= v57)
                {
                  v59 = (2 * v57) | 1;
                  v60 = &v122[v59];
                  if (2 * v57 + 2 >= v8)
                  {
                    v65 = *v60;
                  }

                  else
                  {
                    v61 = *v60;
                    v62 = ggl::CullingGrid::sortOrderForCells(*(*v60 + 96));
                    v63 = v60[1];
                    v64 = ggl::CullingGrid::sortOrderForCells(*(v63 + 96));
                    if (v62 >= v64)
                    {
                      v65 = v61;
                    }

                    else
                    {
                      v65 = v63;
                    }

                    if (v62 < v64)
                    {
                      ++v60;
                      v59 = 2 * v58 + 2;
                    }
                  }

                  v66 = &v122[v58];
                  v67 = ggl::CullingGrid::sortOrderForCells(*(v65 + 96));
                  v68 = *v66;
                  result = ggl::CullingGrid::sortOrderForCells(*(*v66 + 96));
                  if (v67 >= result)
                  {
                    *v66 = 0;
                    v124 = v68;
                    v69 = *v60;
                    while (1)
                    {
                      v70 = v60;
                      *v60 = 0;
                      std::unique_ptr<md::RibbonSection<md::Ribbons::PilledTrafficRibbonDescriptor>>::reset[abi:nn200100](v66, v69);
                      if (v120 < v59)
                      {
                        break;
                      }

                      v71 = (2 * v59) | 1;
                      v60 = &v122[v71];
                      v72 = 2 * v59 + 2;
                      if (v72 >= v8)
                      {
                        v69 = *v60;
                        v59 = (2 * v59) | 1;
                      }

                      else
                      {
                        v73 = *v60;
                        v74 = ggl::CullingGrid::sortOrderForCells(*(*v60 + 96));
                        v75 = v60[1];
                        v76 = ggl::CullingGrid::sortOrderForCells(*(v75 + 96));
                        v77 = v74 >= v76;
                        if (v74 >= v76)
                        {
                          v69 = v73;
                        }

                        else
                        {
                          v69 = v75;
                        }

                        if (v77)
                        {
                          v59 = v71;
                        }

                        else
                        {
                          ++v60;
                          v59 = v72;
                        }
                      }

                      v78 = ggl::CullingGrid::sortOrderForCells(*(v69 + 96));
                      v79 = v124;
                      v66 = v70;
                      if (v78 < ggl::CullingGrid::sortOrderForCells(*(v124 + 96)))
                      {
                        goto LABEL_112;
                      }
                    }

                    v79 = v124;
LABEL_112:
                    a2 = v117;
                    v124 = 0;
                    std::unique_ptr<md::RibbonSection<md::Ribbons::PilledTrafficRibbonDescriptor>>::reset[abi:nn200100](v70, v79);
                    result = std::unique_ptr<md::RibbonSection<md::Ribbons::PilledTrafficRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
                  }
                }

                v57 = v58 - 1;
              }

              while (v58);
              v80 = v122;
              do
              {
                if (v8 >= 2)
                {
                  v81 = 0;
                  v82 = *v80;
                  *v80 = 0;
                  v118 = a2;
                  v121 = v82;
                  v123 = v82;
                  v83 = v80;
                  do
                  {
                    v84 = &v83[v81];
                    v85 = v84 + 1;
                    v86 = (2 * v81) | 1;
                    v81 = 2 * v81 + 2;
                    if (v81 >= v8)
                    {
                      v93 = *v85;
                      v81 = v86;
                    }

                    else
                    {
                      v87 = v84[1];
                      v88 = ggl::CullingGrid::sortOrderForCells(*(v87 + 96));
                      v91 = v84[2];
                      v90 = v84 + 2;
                      v89 = v91;
                      v92 = ggl::CullingGrid::sortOrderForCells(*(v91 + 96));
                      if (v88 >= v92)
                      {
                        v93 = v87;
                      }

                      else
                      {
                        v93 = v89;
                      }

                      if (v88 >= v92)
                      {
                        v81 = v86;
                      }

                      else
                      {
                        v85 = v90;
                      }
                    }

                    *v85 = 0;
                    std::unique_ptr<md::RibbonSection<md::Ribbons::PilledTrafficRibbonDescriptor>>::reset[abi:nn200100](v83, v93);
                    v83 = v85;
                  }

                  while (v81 <= ((v8 - 2) >> 1));
                  a2 = v118;
                  v94 = v118 - 1;
                  if (v85 == v118 - 1)
                  {
                    v123 = 0;
                    std::unique_ptr<md::RibbonSection<md::Ribbons::PilledTrafficRibbonDescriptor>>::reset[abi:nn200100](v85, v121);
                    v80 = v122;
                  }

                  else
                  {
                    v95 = *v94;
                    *v94 = 0;
                    std::unique_ptr<md::RibbonSection<md::Ribbons::PilledTrafficRibbonDescriptor>>::reset[abi:nn200100](v85, v95);
                    v123 = 0;
                    std::unique_ptr<md::RibbonSection<md::Ribbons::PilledTrafficRibbonDescriptor>>::reset[abi:nn200100](v94, v121);
                    v80 = v122;
                    v96 = (v85 - v122 + 8) >> 3;
                    v97 = v96 < 2;
                    v98 = v96 - 2;
                    if (!v97)
                    {
                      v99 = v98 >> 1;
                      v100 = &v122[v98 >> 1];
                      v101 = ggl::CullingGrid::sortOrderForCells(*(*v100 + 96));
                      v102 = *v85;
                      if (v101 < ggl::CullingGrid::sortOrderForCells(*(*v85 + 96)))
                      {
                        *v85 = 0;
                        v103 = *v100;
                        do
                        {
                          v104 = v100;
                          *v100 = 0;
                          std::unique_ptr<md::RibbonSection<md::Ribbons::PilledTrafficRibbonDescriptor>>::reset[abi:nn200100](v85, v103);
                          if (!v99)
                          {
                            break;
                          }

                          v99 = (v99 - 1) >> 1;
                          v100 = &v122[v99];
                          v103 = *v100;
                          v105 = ggl::CullingGrid::sortOrderForCells(*(*v100 + 96));
                          v85 = v104;
                        }

                        while (v105 < ggl::CullingGrid::sortOrderForCells(*(v102 + 96)));
                        v124 = 0;
                        std::unique_ptr<md::RibbonSection<md::Ribbons::PilledTrafficRibbonDescriptor>>::reset[abi:nn200100](v104, v102);
                        std::unique_ptr<md::RibbonSection<md::Ribbons::PilledTrafficRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
                        a2 = v118;
                      }
                    }
                  }

                  result = std::unique_ptr<md::RibbonSection<md::Ribbons::PilledTrafficRibbonDescriptor>>::reset[abi:nn200100](&v123, 0);
                }

                --a2;
                v97 = v8-- > 2;
              }

              while (v97);
            }

            return result;
          }

          v9 = v8 >> 1;
          v10 = &v6[v8 >> 1];
          if (v8 < 0x81)
          {
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(&v6[v8 >> 1], v6, v119);
          }

          else
          {
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(v6, &v6[v8 >> 1], v119);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(v6 + 1, v10 - 1, v115);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(v6 + 2, &v6[v9 + 1], v114);
            v7 = v6;
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(v10 - 1, &v6[v8 >> 1], &v6[v9 + 1]);
            v11 = *v6;
            *v6 = *v10;
            *v10 = v11;
          }

          --a3;
          v12 = *v7;
          if (a4)
          {
            break;
          }

          v14 = ggl::CullingGrid::sortOrderForCells(*(*(v7 - 1) + 96));
          v13 = ggl::CullingGrid::sortOrderForCells(*(v12 + 96));
          v77 = v14 >= v13;
          v7 = v6;
          if (!v77)
          {
            goto LABEL_18;
          }

          *v6 = 0;
          v124 = v12;
          if (v13 >= ggl::CullingGrid::sortOrderForCells(*(*v119 + 96)))
          {
            v31 = (v6 + 1);
            do
            {
              v6 = v31;
              if (v31 >= a2)
              {
                break;
              }

              v31 += 8;
            }

            while (v13 >= ggl::CullingGrid::sortOrderForCells(*(*v6 + 96)));
          }

          else
          {
            do
            {
              v30 = v6[1];
              ++v6;
            }

            while (v13 >= ggl::CullingGrid::sortOrderForCells(*(v30 + 96)));
          }

          v32 = a2;
          if (v6 < a2)
          {
            v32 = a2;
            do
            {
              v33 = *--v32;
            }

            while (v13 < ggl::CullingGrid::sortOrderForCells(*(v33 + 96)));
          }

          if (v6 < v32)
          {
            v34 = *v6;
            v35 = *v32;
            do
            {
              *v6 = v35;
              *v32 = v34;
              v12 = v124;
              v36 = ggl::CullingGrid::sortOrderForCells(*(v124 + 96));
              do
              {
                v37 = v6[1];
                ++v6;
                v34 = v37;
              }

              while (v36 >= ggl::CullingGrid::sortOrderForCells(*(v37 + 96)));
              do
              {
                v38 = *--v32;
                v35 = v38;
              }

              while (v36 < ggl::CullingGrid::sortOrderForCells(*(v38 + 96)));
            }

            while (v6 < v32);
          }

          v39 = v6 - 1;
          if (v6 - 1 != v122)
          {
            v40 = *v39;
            *v39 = 0;
            std::unique_ptr<md::RibbonSection<md::Ribbons::PilledTrafficRibbonDescriptor>>::reset[abi:nn200100](v122, v40);
            v12 = v124;
          }

          v124 = 0;
          std::unique_ptr<md::RibbonSection<md::Ribbons::PilledTrafficRibbonDescriptor>>::reset[abi:nn200100](v6 - 1, v12);
          result = std::unique_ptr<md::RibbonSection<md::Ribbons::PilledTrafficRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
          a4 = 0;
        }

        v13 = ggl::CullingGrid::sortOrderForCells(*(v12 + 96));
LABEL_18:
        *v7 = 0;
        v124 = v12;
        v15 = v7;
        do
        {
          v16 = v15;
          v18 = v15[1];
          ++v15;
          v17 = v18;
        }

        while (ggl::CullingGrid::sortOrderForCells(*(v18 + 96)) < v13);
        v19 = a2;
        if (v16 == v122)
        {
          v19 = a2;
          do
          {
            if (v15 >= v19)
            {
              break;
            }

            v21 = *--v19;
          }

          while (ggl::CullingGrid::sortOrderForCells(*(v21 + 96)) >= v13);
        }

        else
        {
          do
          {
            v20 = *--v19;
          }

          while (ggl::CullingGrid::sortOrderForCells(*(v20 + 96)) >= v13);
        }

        if (v15 < v19)
        {
          v22 = *v19;
          v23 = v15;
          v24 = v19;
          do
          {
            *v23 = v22;
            *v24 = v17;
            v12 = v124;
            v25 = ggl::CullingGrid::sortOrderForCells(*(v124 + 96));
            do
            {
              v16 = v23;
              v26 = v23[1];
              ++v23;
              v17 = v26;
            }

            while (ggl::CullingGrid::sortOrderForCells(*(v26 + 96)) < v25);
            do
            {
              v27 = *--v24;
              v22 = v27;
            }

            while (ggl::CullingGrid::sortOrderForCells(*(v27 + 96)) >= v25);
          }

          while (v23 < v24);
        }

        if (v16 != v122)
        {
          v28 = *v16;
          *v16 = 0;
          std::unique_ptr<md::RibbonSection<md::Ribbons::PilledTrafficRibbonDescriptor>>::reset[abi:nn200100](v122, v28);
          v12 = v124;
        }

        v124 = 0;
        std::unique_ptr<md::RibbonSection<md::Ribbons::PilledTrafficRibbonDescriptor>>::reset[abi:nn200100](v16, v12);
        std::unique_ptr<md::RibbonSection<md::Ribbons::PilledTrafficRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
        a2 = v117;
        if (v15 >= v19)
        {
          break;
        }

LABEL_37:
        result = std::__introsort<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::PilledTrafficRibbonDescriptor>::batch(std::unordered_map<md::TrafficBatchKey,std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::TrafficBatchKey,std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::PilledTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::PilledTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,false>(v122, v16, a3, a4 & 1);
        a4 = 0;
        v6 = v16 + 1;
      }

      v29 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::PilledTrafficRibbonDescriptor>::batch(std::unordered_map<md::TrafficBatchKey,std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::TrafficBatchKey,std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::PilledTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::PilledTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*>(v122, v16);
      v6 = v16 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::PilledTrafficRibbonDescriptor>::batch(std::unordered_map<md::TrafficBatchKey,std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::TrafficBatchKey,std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::PilledTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::PilledTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*>(v16 + 1, v117);
      if (result)
      {
        break;
      }

      if (!v29)
      {
        goto LABEL_37;
      }
    }

    a2 = v16;
    v6 = v122;
    if (!v29)
    {
      continue;
    }

    return result;
  }
}

uint64_t *std::unique_ptr<md::RibbonSection<md::Ribbons::PilledTrafficRibbonDescriptor>>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2 + 56;
    std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v3);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::vector<std::unique_ptr<md::RibbonSection<md::Ribbons::PilledTrafficRibbonDescriptor>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        std::unique_ptr<md::RibbonSection<md::Ribbons::PilledTrafficRibbonDescriptor>>::reset[abi:nn200100](--v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__hash_table<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__deallocate_node(void *result)
{
  if (result)
  {
    v1 = result;
    do
    {
      v2 = *v1;
      v5 = v1 + 3;
      std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v5);
      v4 = mdm::zone_mallocator::instance(v3);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>>,void *>>(v4, v1);
      v1 = v2;
    }

    while (v2);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>>,void *> *> *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>>,void *>>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::PilledTrafficRibbonDescriptor>::batch(std::unordered_map<md::TrafficBatchKey,std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::TrafficBatchKey,std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::PilledTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::PilledTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*>(uint64_t *a1, uint64_t *a2)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(a1, a1 + 1, a2 - 1);
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(a1, a1 + 1, a1 + 2, a2 - 1);
        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = *(a2 - 1);
      v6 = ggl::CullingGrid::sortOrderForCells(*(v5 + 96));
      v7 = *a1;
      if (v6 < ggl::CullingGrid::sortOrderForCells(*(*a1 + 96)))
      {
        *a1 = v5;
        *(a2 - 1) = v7;
      }

      return 1;
    }
  }

  v8 = a1 + 2;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(a1, a1 + 1, a1 + 2);
  v9 = a1 + 3;
  if (a1 + 3 != a2)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = *v9;
      v13 = ggl::CullingGrid::sortOrderForCells(*(*v9 + 96));
      if (v13 < ggl::CullingGrid::sortOrderForCells(*(*v8 + 96)))
      {
        *v9 = 0;
        v21 = v12;
        v14 = *v8;
        v15 = v10;
        while (1)
        {
          *(a1 + v15 + 16) = 0;
          std::unique_ptr<md::RibbonSection<md::Ribbons::PilledTrafficRibbonDescriptor>>::reset[abi:nn200100]((a1 + v15 + 24), v14);
          v16 = v21;
          if (v15 == -16)
          {
            break;
          }

          v17 = ggl::CullingGrid::sortOrderForCells(*(v21 + 96));
          v14 = *(a1 + v15 + 8);
          v15 -= 8;
          if (v17 >= ggl::CullingGrid::sortOrderForCells(*(v14 + 96)))
          {
            v18 = (a1 + v15 + 24);
            goto LABEL_19;
          }
        }

        v18 = a1;
LABEL_19:
        v21 = 0;
        std::unique_ptr<md::RibbonSection<md::Ribbons::PilledTrafficRibbonDescriptor>>::reset[abi:nn200100](v18, v16);
        if (++v11 == 8)
        {
          v19 = v9 + 1 == a2;
          std::unique_ptr<md::RibbonSection<md::Ribbons::PilledTrafficRibbonDescriptor>>::reset[abi:nn200100](&v21, 0);
          return v19;
        }

        std::unique_ptr<md::RibbonSection<md::Ribbons::PilledTrafficRibbonDescriptor>>::reset[abi:nn200100](&v21, 0);
      }

      v8 = v9;
      v10 += 8;
      ++v9;
    }

    while (v9 != a2);
  }

  return 1;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x2004093837F09uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

mdm::zone_mallocator *std::__split_buffer<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  for (i = *(a1 + 2); i != v3; i = *(a1 + 2))
  {
    *(a1 + 2) = i - 8;
    std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>::reset[abi:nn200100]((i - 8));
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>>(v5, v4);
  }

  return a1;
}

void ___ZNK2md28LegacyTrafficLayerDataSource15createLayerDataERKN3gdc19LayerDataRequestKeyERKN3geo10linear_mapItNSt3__113unordered_mapINS1_11ResourceKeyENS7_10shared_ptrINS1_8ResourceEEENS1_15ResourceKeyHashENS7_8equal_toIS9_EENS7_9allocatorINS7_4pairIKS9_SC_EEEEEENSE_ItEENSG_INSH_ItSL_EEEENS7_6vectorISN_SO_EEEEx_block_invoke_2(uint64_t a1, int a2, uint64_t a3, int a4, int a5, float a6, float a7)
{
  v14 = *(*(a1 + 32) + 8);
  if ((*(a1 + 124) & 1) != 0 || !md::TrafficAccum::canAppend(v14 + 48, *(a1 + 64), *(a1 + 125), *(a1 + 88), *(a1 + 92), *(a1 + 96), a2, *(a1 + 126), *(a1 + 100), **(a1 + 72), 0))
  {
    md::TrafficAccum::flushToRibbonCollection(v14 + 48, a1 + 104, (*(*(a1 + 40) + 8) + 48), (*(*(a1 + 48) + 8) + 48), (*(*(a1 + 56) + 8) + 48));
    v15 = *(*(a1 + 32) + 8);
    v16 = *(a1 + 120);
    v17 = *(a1 + 125);
    v18 = *(a1 + 88);
    v19 = *(a1 + 92);
    v20 = *(a1 + 64);
    v21 = *(a1 + 72);
    v22 = *v21;
    v23 = v21[1];
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      v31 = 0;
      v32 = 0;
      md::TrafficAccum::reset(v15 + 48, v20, v16, v17, v18, v19, v22, v23, &v31, a2, *(a1 + 126));
      std::__shared_weak_count::__release_shared[abi:nn200100](v23);
    }

    else
    {
      v31 = 0;
      v32 = 0;
      md::TrafficAccum::reset(v15 + 48, v20, v16, v17, v18, v19, v22, 0, &v31, a2, *(a1 + 126));
    }
  }

  v24 = *(*(a1 + 32) + 8);
  v25 = *(a1 + 120);
  v26 = *(a1 + 96);
  *(v24 + 168) = *(a1 + 64);
  *(v24 + 176) = v25;
  *(v24 + 180) = v26;
  *(v24 + 184) = a7;
  v27 = *(a1 + 80);
  v28 = (*(*(a1 + 32) + 8) + 48);
  if (a5)
  {
    v29 = a7;
    v30 = a6;
  }

  else
  {
    v29 = a6;
    v30 = a7;
  }

  md::TrafficAccum::addPoints(v28, a3, 0, 0, a4, v27, v29, v30);
}

void md::LegacyTrafficLayerDataSource::~LegacyTrafficLayerDataSource(id *this)
{
  md::TrafficLayerDataSource::~TrafficLayerDataSource(this);

  JUMPOUT(0x1B8C62190);
}

{

  md::TrafficLayerDataSource::~TrafficLayerDataSource(this);
}

void md::Logic<md::VenueModeSwitchLogic,md::VenueModeSwitchContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::RegistryContext,md::NavigationContext>,gdc::TypeList<md::VenueLogicContext>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2, v3);
}

uint64_t md::Logic<md::VenueModeSwitchLogic,md::VenueModeSwitchContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::RegistryContext,md::NavigationContext>,gdc::TypeList<md::VenueLogicContext>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  if (*(a3 + 8) == 0xB6D730E769EC7123 && (v4 = *(a3 + 32)) != 0)
  {
    v6 = result;
    v7 = *(a2 + 8);
    v8 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v7, 0x1AF456233693CD46uLL);
    if (v8 && (v9 = v8[5], *(v9 + 8) == 0x1AF456233693CD46))
    {
      v10 = *(v9 + 32);
    }

    else
    {
      v10 = 0;
    }

    v11 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v7, 0xFBD83FDA8879FF7ELL);
    if (v11 && (v12 = v11[5], *(v12 + 8) == 0xFBD83FDA8879FF7ELL))
    {
      v13 = *(v12 + 32);
    }

    else
    {
      v13 = 0;
    }

    v14 = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v7, 0x1B8B241A8D896A1DuLL)[5] + 32);
    v15 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v7, 0x4927EB92E562CC46uLL);
    if (v15 && (v16 = v15[5], *(v16 + 8) == 0x4927EB92E562CC46))
    {
      v17 = *(v16 + 32);
    }

    else
    {
      v17 = 0;
    }

    v18[0] = v10;
    v18[1] = v13;
    v18[2] = v14;
    v18[3] = v17;
    return (*(*v6 + 160))(v6, a2, v18, v4);
  }

  else
  {
    a4[23] = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::VenueModeSwitchContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::VenueModeSwitchContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F29E5A28;
  v1 = a1[4];
  if (v1)
  {
    MEMORY[0x1B8C62190](v1, 0x1060C400373A306);
  }

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::VenueModeSwitchContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F29E5A28;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0x1060C400373A306);
  }

  return a1;
}

void md::VenueModeSwitchLogic::~VenueModeSwitchLogic(md::VenueModeSwitchLogic *this)
{
  md::VenueModeSwitchLogic::~VenueModeSwitchLogic(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F29E58B8;
  v2 = *(this + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls22MaterialRasterMaxIndexEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialRasterMaxIndex>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialRasterMaxIndex>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::MaterialRasterMaxIndex>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        LOWORD(v16) = *(v19 + 2 * v18);
        *(v19 + 2 * v18) = *(v17 + 2 * v15);
        *(v17 + 2 * v15) = v16;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialRasterMaxIndex>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialRasterMaxIndex>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialRasterMaxIndex>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialRasterMaxIndex>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MaterialRasterMaxIndex>();
    unk_1EB83CB60 = 0x7A5110AF346E0C7FLL;
    qword_1EB83CB68 = "md::ls::MaterialRasterMaxIndex]";
    qword_1EB83CB70 = 30;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::MaterialRasterMaxIndex,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A42588;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::MaterialRasterMaxIndex,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::MaterialRasterMaxIndex,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A425A8;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::MaterialRasterMaxIndex,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::MaterialRasterMaxIndex,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::MaterialRasterMaxIndex,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A42588;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::MaterialRasterMaxIndex,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls17HasMaterialRasterEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasMaterialRaster>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasMaterialRaster>(void)::metadata;
  HasMaterial = ecs2::BasicRegistry<void>::storage<md::ls::HasMaterialRaster>(v3);
  v6 = v2 >> 22;
  v7 = HasMaterial[1];
  if (v2 >> 22 < (HasMaterial[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = HasMaterial;
        v11 = HasMaterial[31];
        v12 = HasMaterial[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasMaterialRaster>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasMaterialRaster>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasMaterialRaster>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasMaterialRaster>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::HasMaterialRaster>();
    *algn_1EB83D298 = 0x9D7520A01DC69D83;
    qword_1EB83D2A0 = "md::ls::HasMaterialRaster]";
    qword_1EB83D2A8 = 25;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::HasMaterialRaster,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A42500;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::HasMaterialRaster,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::HasMaterialRaster,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A42520;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::HasMaterialRaster,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::HasMaterialRaster,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::HasMaterialRaster,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A42500;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::HasMaterialRaster,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls19ColorRampDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ColorRampDataHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ColorRampDataHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::ColorRampDataHandle>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ColorRampDataHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ColorRampDataHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::ColorRampDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A520D0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::ColorRampDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::ColorRampDataHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A520F0;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::ColorRampDataHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::ColorRampDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::ColorRampDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A520D0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::ColorRampDataHandle,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls22RenderableMaterialDataEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableMaterialData>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableMaterialData>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RenderableMaterialData>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v10[7];
        v16 = (*(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 32 * (v14 & 0x3F));
        v17 = (*(v15 + ((v13 >> 3) & 0x1FF8)) + 32 * (v13 & 0x3F));
        v19 = *v17;
        v18 = v17[1];
        v20 = v16[1];
        *v17 = *v16;
        v17[1] = v20;
        *v16 = v19;
        v16[1] = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableMaterialData>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableMaterialData>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RenderableMaterialData,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A42AF8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RenderableMaterialData,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RenderableMaterialData,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A42B18;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::RenderableMaterialData,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RenderableMaterialData,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RenderableMaterialData,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A42AF8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RenderableMaterialData,64ul>::~storage(a1);
}

void ecs2::BasicRegistry<void>::remove<md::ls::MeshRenderableID>(uint64_t a1, unint64_t a2)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderableID>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderableID>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::MeshRenderableID>(a1);
  v6 = a2 >> 22;
  v7 = v5[1];
  if (v6 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (a2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == a2)
      {
        v10 = v5;
        v11 = a2 >> 16;
        v13 = v5[31];
        v12 = v5[32];
        if (v13 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v13 + 24), a2);
            v13 += 32;
          }

          while (v13 != v12);
          v8 = *(v10[1] + 8 * v6);
          v11 = a2 >> 16;
        }

        v14 = *(v8 + 4 * v9 + 2);
        v15 = ((v10[5] - v10[4]) >> 2) - 1;
        v16 = v15 & 0x3F;
        v17 = v10[7];
        v18 = *(v17 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v19 = v14 & 0x3F;
        v20 = *(v17 + ((v14 >> 3) & 0x1FF8));
        v21 = *(v20 + 8 * v19);
        *(v20 + 8 * v19) = *(v18 + 8 * v16);
        *(v18 + 8 * v16) = v21;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, a2, v11);
      }
    }
  }

  v22 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v22 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderableID>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderableID>(void)::metadata) = *(a1 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderableID>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderableID>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MeshRenderableID>();
    unk_1EB83D5D0 = 0x8DCCA4FD35258189;
    qword_1EB83D5D8 = "md::ls::MeshRenderableID]";
    qword_1EB83D5E0 = 24;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::MeshRenderableID,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A55FF8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::MeshRenderableID,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::MeshRenderableID,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A56018;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::MeshRenderableID,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::MeshRenderableID,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::MeshRenderableID,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A55FF8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::MeshRenderableID,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls6InViewEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InView>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InView>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::InView>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InView>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InView>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::InView,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A56108;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::InView,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A56108;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void process<ecs2::Runtime>(uint64_t ***a1, uint64_t a2, unsigned int a3, uint64_t *a4, unint64_t *a5, unint64_t a6, uint64_t *a7)
{
  ColorRampData = md::VKMRenderResourcesStore::getColorRampData(*a1, a6);
  if (a7)
  {
    LOBYTE(v42) = 0;
    LOBYTE(v43) = 0;
    updated = md::MaterialRaster::updateStyleTextureIfNecessary(*a7, *a1[4], &v42, *(a1 + 40), *(a1[2] + 72) == 1, *(a1 + 6));
    ecs2::addComponent<md::ls::NeedsClimateTint>(a2, a3, *a4);
    v15 = *a4;
    v16 = (*a1)[1743];
    if (!*&v16)
    {
      goto LABEL_21;
    }

    v17 = vcnt_s8(v16);
    v17.i16[0] = vaddlv_u8(v17);
    if (v17.u32[0] > 1uLL)
    {
      v18 = *a4;
      if (v15 >= *&v16)
      {
        v18 = v15 % *&v16;
      }
    }

    else
    {
      v18 = (*&v16 - 1) & v15;
    }

    v20 = (*a1)[1742][v18];
    if (!v20 || (v21 = *v20) == 0)
    {
LABEL_21:
      operator new();
    }

    while (1)
    {
      v22 = v21[1];
      if (v22 == v15)
      {
        if (v21[2] == v15)
        {
          *(v21 + 24) = updated;
          if (v43)
          {
            v26 = *a1[4];
            v27 = v42;
            v37 = v42;
            gms::MaterialManager<ggl::Texture2D>::materialForKeyAndAttributes(&v35, v26, &v37, 0);
            if (*(v35 + 8) == 5)
            {
              v28 = a1[1];
              *&v37 = v27;
              *(&v37 + 1) = 1;
              v29 = std::__hash_table<std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,std::__unordered_map_hasher<md::MaterialKey,std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,md::MaterialKeyHasher,std::equal_to<md::MaterialKey>,true>,std::__unordered_map_equal<md::MaterialKey,std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,std::equal_to<md::MaterialKey>,md::MaterialKeyHasher,true>,std::allocator<std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>>>::find<md::MaterialKey>(&v28[46], &v37);
              if (!v29 || (MaterialHandle = v29[4]) == 0)
              {
                MaterialHandle = md::MaterialResourceStore::createMaterialHandle(v28, v27, 1);
                md::MaterialResourceStore::disconnect<geo::handle<md::MaterialIDStorage>>(a1[1], MaterialHandle);
              }

              *&v37 = MaterialHandle;
              *(&v37 + 1) = v27;
              *&v38 = v27;
              WORD4(v38) = 1;
              ecs2::addComponent<md::ls::RampMaterialData>(a2, a3, &v37);
            }

            disconnectColorRampDataHandles<ecs2::Runtime>(a2, a3, ColorRampData, *a1);
            if (*(ColorRampData + 80) == 1)
            {
              for (i = 72; i != 40; i -= 16)
              {
                v34 = *(ColorRampData + i);
                if (v34)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](v34);
                }
              }

              *(ColorRampData + 80) = 0;
            }

            v25 = v36;
            if (v36)
            {
              goto LABEL_47;
            }
          }

          else
          {
            disconnectColorRampDataHandles<ecs2::Runtime>(a2, a3, ColorRampData, *a1);
            if (*(ColorRampData + 80) == 1)
            {
              for (j = 72; j != 40; j -= 16)
              {
                v32 = *(ColorRampData + j);
                if (v32)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](v32);
                }
              }

              *(ColorRampData + 80) = 0;
            }
          }

          return;
        }
      }

      else
      {
        if (v17.u32[0] > 1uLL)
        {
          if (v22 >= *&v16)
          {
            v22 %= *&v16;
          }
        }

        else
        {
          v22 &= *&v16 - 1;
        }

        if (v22 != v18)
        {
          goto LABEL_21;
        }
      }

      v21 = *v21;
      if (!v21)
      {
        goto LABEL_21;
      }
    }
  }

  md::MaterialResourceStore::getMaterial(&v42, a1[1], *a5);
  if (*(v42 + 8) == 5)
  {
    v19 = a5[1];
    *&v37 = *a5;
    *(&v37 + 1) = v19;
    *&v38 = v19;
    WORD4(v38) = 1;
    ecs2::addComponent<md::ls::RampMaterialData>(a2, a3, &v37);
  }

  disconnectColorRampDataHandles<ecs2::Runtime>(a2, a3, ColorRampData, *a1);
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v37 = 0u;
  std::optional<md::ColorRampData>::emplace[abi:nn200100]<md::ColorRampData,void>(ColorRampData, &v37);
  for (k = 72; k != 40; k -= 16)
  {
    v24 = *(&v37 + k);
    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v24);
    }
  }

  v25 = v43;
  if (v43)
  {
LABEL_47:
    std::__shared_weak_count::__release_shared[abi:nn200100](v25);
  }
}

void sub_1B2C5D224(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void disconnectColorRampDataHandles<ecs2::Runtime>(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    if (*(a3 + 80) == 1)
    {
      operator new();
    }
  }
}

void sub_1B2C5D414(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (v9)
  {
    operator delete(v9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::optional<md::ColorRampData>::emplace[abi:nn200100]<md::ColorRampData,void>(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 80) == 1)
  {
    for (i = 72; i != 40; i -= 16)
    {
      v5 = *(a1 + i);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
      }
    }

    *(a1 + 80) = 0;
  }

  v6 = *a2;
  v7 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v7;
  *a1 = v6;
  *(a1 + 48) = a2[3];
  *(a2 + 6) = 0;
  *(a2 + 7) = 0;
  *(a1 + 64) = a2[4];
  *(a2 + 8) = 0;
  *(a2 + 9) = 0;
  *(a1 + 80) = 1;
  return a1;
}

void gms::BuildingMaterial<ggl::Texture2D>::albedoFactorRGB(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v3 = a3.n128_f32[0];
  v6 = **(a1 + 48);
  a3.n128_u32[1] = 872415232;
  if ((v6 > 0.00000011921 || (v7 = *(a1 + 16)) == 0) && (v6 < 1.0 || (v7 = *(a1 + 32)) == 0))
  {
    v9 = *(a1 + 16);
    if (v9)
    {
      (*(*v9 + 648))(&v18, a3.n128_f32[0]);
    }

    else
    {
      LOBYTE(v18) = 0;
      v20 = 0;
    }

    v10 = *(a1 + 32);
    if (v10)
    {
      (*(*v10 + 648))(&v15, v3);
    }

    else
    {
      LOBYTE(v15) = 0;
      v17 = 0;
    }

    if (v20 == 1)
    {
      if (v17 == 1)
      {
        *a2 = gm::lerp<gm::Matrix<float,3,1>,float>(*&v18, *(&v18 + 1), v19, *&v15, *(&v15 + 1), v16, v6);
        *(a2 + 4) = v11;
        *(a2 + 8) = v12;
        v13 = (a2 + 12);
LABEL_21:
        *v13 = 1;
        return;
      }

      v13 = (a2 + 12);
      *a2 = v18;
      v14 = v19;
    }

    else
    {
      *a2 = 0;
      *(a2 + 12) = 0;
      v13 = (a2 + 12);
      if (v17 != 1)
      {
        return;
      }

      *a2 = v15;
      v14 = v16;
    }

    *(a2 + 8) = v14;
    goto LABEL_21;
  }

  v8 = *(*v7 + 648);

  v8(a3);
}

float gm::lerp<gm::Matrix<float,3,1>,float>(float a1, float a2, float a3, float a4, float a5, float a6, float a7)
{
  v7 = 0;
  *v16 = a1;
  *&v16[1] = a2;
  *&v16[2] = a3;
  *v15 = a4;
  *&v15[1] = a5;
  *&v15[2] = a6;
  do
  {
    *(&v17 + v7 * 4) = *&v15[v7] - *&v16[v7];
    ++v7;
  }

  while (v7 != 3);
  v8 = 0;
  v11 = v17;
  v12 = v18;
  do
  {
    *(&v17 + v8) = *(&v11 + v8) * a7;
    v8 += 4;
  }

  while (v8 != 12);
  v9 = 0;
  v13 = v17;
  v14 = v18;
  do
  {
    *(&v17 + v9 * 4) = *(&v13 + v9 * 4) + *&v16[v9];
    ++v9;
  }

  while (v9 != 3);
  return *&v17;
}

unint64_t gms::BuildingMaterial<ggl::Texture2D>::maxAlpha(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  v5 = 0.0;
  if (v4)
  {
    v6 = (*(*v4 + 624))(v4, a2);
    v7 = HIDWORD(v6);
    v8 = *&v6;
  }

  else
  {
    LOBYTE(v7) = 0;
    v8 = 0.0;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = (*(*v9 + 624))(v9, v2);
    v11 = HIDWORD(v10);
    v5 = *&v10;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  v12 = fmaxf(v8, v5);
  if (v11)
  {
    v13 = 1;
  }

  else
  {
    v12 = v8;
    v13 = v7;
  }

  if (v7)
  {
    LOBYTE(v11) = v13;
  }

  else
  {
    v12 = v5;
  }

  return LODWORD(v12) | (v11 << 32);
}

unint64_t gms::BuildingMaterial<ggl::Texture2D>::minAlpha(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  v5 = 0.0;
  if (v4)
  {
    v6 = (*(*v4 + 624))(v4, a2);
    v7 = HIDWORD(v6);
    v8 = *&v6;
  }

  else
  {
    LOBYTE(v7) = 0;
    v8 = 0.0;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = (*(*v9 + 624))(v9, v2);
    v11 = HIDWORD(v10);
    v5 = *&v10;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  v12 = fminf(v5, v8);
  if (v11)
  {
    v13 = 1;
  }

  else
  {
    v12 = v8;
    v13 = v7;
  }

  if (v7)
  {
    LOBYTE(v11) = v13;
  }

  else
  {
    v12 = v5;
  }

  return LODWORD(v12) | (v11 << 32);
}

unint64_t gms::BuildingMaterial<ggl::Texture2D>::alpha(uint64_t a1, float a2)
{
  v4 = **(a1 + 48);
  if (v4 <= 0.00000011921 && (v5 = *(a1 + 16)) != 0 || v4 >= 1.0 && (v5 = *(a1 + 32)) != 0)
  {
    v6 = (*(*v5 + 624))(v5, a2);
    v7 = HIDWORD(v6);
  }

  else
  {
    v8 = *(a1 + 16);
    if (v8)
    {
      v9 = (*(*v8 + 624))(v8, a2);
      v10 = v9 & 0xFFFFFF00;
      v11 = HIDWORD(v9);
      v12 = v9;
    }

    else
    {
      v10 = 0;
      v12 = 0;
      LOBYTE(v11) = 0;
    }

    v13 = *(a1 + 32);
    if (v13)
    {
      v14 = (*(*v13 + 624))(v13, a2);
      v15 = v14 & 0xFFFFFF00;
      v7 = HIDWORD(v14);
      v16 = v14;
    }

    else
    {
      v15 = 0;
      v16 = 0;
      LOBYTE(v7) = 0;
    }

    v17 = v16 | v15;
    v18 = v12 | v10;
    if (v7)
    {
      *&v18 = COERCE_FLOAT(v12 | v10) + ((*&v17 - COERCE_FLOAT(v12 | v10)) * v4);
      v19 = 1;
    }

    else
    {
      v19 = v11;
    }

    if (v11)
    {
      LODWORD(v6) = v18;
    }

    else
    {
      LODWORD(v6) = v17;
    }

    if (v11)
    {
      LOBYTE(v7) = v19;
    }
  }

  return v6 | (v7 << 32);
}

uint64_t gms::BuildingMaterial<ggl::Texture2D>::maxNoColorCorrection(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (*(*v4 + 600))(v4, a2);
    v6 = HIBYTE(v5);
  }

  else
  {
    v6 = 0;
    LOBYTE(v5) = 0;
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    LOWORD(v7) = (*(*v7 + 600))(v7, v2);
    v8 = BYTE1(v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = v7;
  if (v5 > v7)
  {
    v9 = v5;
  }

  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v9 = v5;
    v10 = v6;
  }

  if (v6)
  {
    v8 = v10;
  }

  else
  {
    v9 = v7;
  }

  return v9 | (v8 << 8);
}

uint64_t gms::BuildingMaterial<ggl::Texture2D>::minNoColorCorrection(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (*(*v4 + 600))(v4, a2);
    v6 = HIBYTE(v5);
  }

  else
  {
    v6 = 0;
    LOBYTE(v5) = 0;
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    LOWORD(v7) = (*(*v7 + 600))(v7, v2);
    v8 = BYTE1(v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = v5;
  if (v7 < v5)
  {
    v9 = v7;
  }

  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v9 = v5;
    v10 = v6;
  }

  if (v6)
  {
    v8 = v10;
  }

  else
  {
    v9 = v7;
  }

  return v9 | (v8 << 8);
}

unint64_t gms::BuildingMaterial<ggl::Texture2D>::brightnessRemapRange(uint64_t a1, float a2)
{
  v5 = **(a1 + 48);
  if (v5 <= 0.00000011921 && (v6 = *(a1 + 16)) != 0 || (v7 = &xmmword_1B33B2000, v5 >= 1.0) && (v6 = *(a1 + 32)) != 0)
  {
    v8 = (*(*v6 + 528))(v6, a2);
    v7 = HIDWORD(v8);
  }

  else
  {
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = (*(*v9 + 528))(v9, a2);
      v12 = v11;
      v13 = v10 & 0xFFFFFF00;
      v2 = HIDWORD(v10);
      v14 = v10;
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v12 = 0;
    }

    v15 = *(a1 + 32);
    if (v15)
    {
      v16 = (*(*v15 + 528))(v15, a2);
      v18 = v16 & 0xFFFFFF00;
      v7 = HIDWORD(v16);
      v19 = v16;
    }

    else
    {
      v18 = 0;
      v19 = 0;
      v17 = 0;
    }

    v20 = v19 | v18;
    v21 = v14 | v13;
    v22 = *&v2 + ((*&v7 - *&v2) * v5);
    if (v17)
    {
      *&v21 = COERCE_FLOAT(v14 | v13) + ((*&v20 - COERCE_FLOAT(v14 | v13)) * v5);
    }

    else
    {
      v22 = *&v2;
    }

    if (v12)
    {
      v7 = LODWORD(v22);
    }

    else
    {
      v7 = v7;
    }

    if (v12)
    {
      LODWORD(v8) = v21;
    }

    else
    {
      LODWORD(v8) = v20;
    }
  }

  return v8 | (v7 << 32);
}

unint64_t gms::BuildingMaterial<ggl::Texture2D>::saturationRemapRange(uint64_t a1, float a2)
{
  v5 = **(a1 + 48);
  if (v5 <= 0.00000011921 && (v6 = *(a1 + 16)) != 0 || (v7 = &xmmword_1B33B2000, v5 >= 1.0) && (v6 = *(a1 + 32)) != 0)
  {
    v8 = (*(*v6 + 504))(v6, a2);
    v7 = HIDWORD(v8);
  }

  else
  {
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = (*(*v9 + 504))(v9, a2);
      v12 = v11;
      v13 = v10 & 0xFFFFFF00;
      v2 = HIDWORD(v10);
      v14 = v10;
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v12 = 0;
    }

    v15 = *(a1 + 32);
    if (v15)
    {
      v16 = (*(*v15 + 504))(v15, a2);
      v18 = v16 & 0xFFFFFF00;
      v7 = HIDWORD(v16);
      v19 = v16;
    }

    else
    {
      v18 = 0;
      v19 = 0;
      v17 = 0;
    }

    v20 = v19 | v18;
    v21 = v14 | v13;
    v22 = *&v2 + ((*&v7 - *&v2) * v5);
    if (v17)
    {
      *&v21 = COERCE_FLOAT(v14 | v13) + ((*&v20 - COERCE_FLOAT(v14 | v13)) * v5);
    }

    else
    {
      v22 = *&v2;
    }

    if (v12)
    {
      v7 = LODWORD(v22);
    }

    else
    {
      v7 = v7;
    }

    if (v12)
    {
      LODWORD(v8) = v21;
    }

    else
    {
      LODWORD(v8) = v20;
    }
  }

  return v8 | (v7 << 32);
}

void *gms::BuildingMaterial<ggl::Texture2D>::albedoFactor@<X0>(uint64_t a1@<X0>, float32x4_t *a2@<X8>, __n128 a3@<Q0>)
{
  v3 = a3.n128_f32[0];
  v6 = **(a1 + 48);
  a3.n128_u32[1] = 872415232;
  if (v6 <= 0.00000011921 && (v7 = *(a1 + 16)) != 0 || v6 >= 1.0 && (v7 = *(a1 + 32)) != 0)
  {
    v8 = *(*v7 + 192);

    return v8(a3);
  }

  else
  {
    v13 = v6;
    v10 = *(a1 + 16);
    if (v10)
    {
      (*(*v10 + 192))(&v16, a3.n128_f32[0]);
    }

    else
    {
      v16.i8[0] = 0;
      v17 = 0;
    }

    result = *(a1 + 32);
    if (result)
    {
      result = (*(*result + 192))(&v14, v3);
    }

    else
    {
      v14.i8[0] = 0;
      v15 = 0;
    }

    if (v17 == 1)
    {
      if (v15 == 1)
      {
        v11 = vmlaq_n_f32(v16, vsubq_f32(v14, v16), v13);
      }

      else
      {
        v11 = v16;
      }

      *a2 = v11;
      v12 = a2 + 1;
    }

    else
    {
      a2->i8[0] = 0;
      a2[1].i8[0] = 0;
      if (v15 != 1)
      {
        return result;
      }

      *a2 = v14;
      v12 = a2 + 1;
    }

    v12->i8[0] = 1;
  }

  return result;
}

uint64_t gms::BuildingMaterial<ggl::Texture2D>::albedo(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    LOWORD(v1) = (*(*v1 + 24))(v1);
    v2 = BYTE1(v1);
  }

  else
  {
    v2 = 0;
  }

  return v1 | (v2 << 8);
}

void gms::BuildingMaterial<ggl::Texture2D>::~BuildingMaterial(void *a1)
{
  gms::Material<ggl::Texture2D>::~Material(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<gms::BuildingMaterial<ggl::Texture2D>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A4A818;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void gms::PBRWithColorRampMaterial<ggl::Texture2D>::gradientMaskFactorRGB(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v3 = a3.n128_f32[0];
  v6 = **(a1 + 48);
  a3.n128_u32[1] = 872415232;
  if ((v6 > 0.00000011921 || (v7 = *(a1 + 16)) == 0) && (v6 < 1.0 || (v7 = *(a1 + 32)) == 0))
  {
    v9 = *(a1 + 16);
    if (v9)
    {
      (*(*v9 + 696))(&v18, a3.n128_f32[0]);
    }

    else
    {
      LOBYTE(v18) = 0;
      v20 = 0;
    }

    v10 = *(a1 + 32);
    if (v10)
    {
      (*(*v10 + 696))(&v15, v3);
    }

    else
    {
      LOBYTE(v15) = 0;
      v17 = 0;
    }

    if (v20 == 1)
    {
      if (v17 == 1)
      {
        *a2 = gm::lerp<gm::Matrix<float,3,1>,float>(*&v18, *(&v18 + 1), v19, *&v15, *(&v15 + 1), v16, v6);
        *(a2 + 4) = v11;
        *(a2 + 8) = v12;
        v13 = (a2 + 12);
LABEL_21:
        *v13 = 1;
        return;
      }

      v13 = (a2 + 12);
      *a2 = v18;
      v14 = v19;
    }

    else
    {
      *a2 = 0;
      *(a2 + 12) = 0;
      v13 = (a2 + 12);
      if (v17 != 1)
      {
        return;
      }

      *a2 = v15;
      v14 = v16;
    }

    *(a2 + 8) = v14;
    goto LABEL_21;
  }

  v8 = *(*v7 + 696);

  v8(a3);
}

void gms::PBRWithColorRampMaterial<ggl::Texture2D>::emissiveFactorRGB(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v3 = a3.n128_f32[0];
  v6 = **(a1 + 48);
  a3.n128_u32[1] = 872415232;
  if ((v6 > 0.00000011921 || (v7 = *(a1 + 16)) == 0) && (v6 < 1.0 || (v7 = *(a1 + 32)) == 0))
  {
    v9 = *(a1 + 16);
    if (v9)
    {
      (*(*v9 + 672))(&v18, a3.n128_f32[0]);
    }

    else
    {
      LOBYTE(v18) = 0;
      v20 = 0;
    }

    v10 = *(a1 + 32);
    if (v10)
    {
      (*(*v10 + 672))(&v15, v3);
    }

    else
    {
      LOBYTE(v15) = 0;
      v17 = 0;
    }

    if (v20 == 1)
    {
      if (v17 == 1)
      {
        *a2 = gm::lerp<gm::Matrix<float,3,1>,float>(*&v18, *(&v18 + 1), v19, *&v15, *(&v15 + 1), v16, v6);
        *(a2 + 4) = v11;
        *(a2 + 8) = v12;
        v13 = (a2 + 12);
LABEL_21:
        *v13 = 1;
        return;
      }

      v13 = (a2 + 12);
      *a2 = v18;
      v14 = v19;
    }

    else
    {
      *a2 = 0;
      *(a2 + 12) = 0;
      v13 = (a2 + 12);
      if (v17 != 1)
      {
        return;
      }

      *a2 = v15;
      v14 = v16;
    }

    *(a2 + 8) = v14;
    goto LABEL_21;
  }

  v8 = *(*v7 + 672);

  v8(a3);
}