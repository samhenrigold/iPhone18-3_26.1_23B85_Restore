void sub_1B2B357E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t __p, uint64_t __p_8, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a65)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a65);
  }

  _Unwind_Resume(a1);
}

void md::Ribbons::RibbonBatch<md::Ribbons::RouteLineRibbonDescriptor>::collectRenderItemsForPassesNoReset(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (*(a1 + 2960) == 1)
  {
    memset(&v50, 0, sizeof(v50));
    std::vector<unsigned int>::reserve(&v50, 5uLL);
    v6 = 0;
    v48 = a1 + 16;
    v7 = (a1 + 136);
    for (i = 7; i != 29; ++i)
    {
      if (((a2 >> (i - 7)) & 1) != 0 && *v7 == 1)
      {
        LODWORD(v51) = i - 7;
        std::vector<unsigned int>::push_back[abi:nn200100](&v50, &v51);
        v9 = *(*(a1 + 8) + 8 * i);
        *(v7 - 12) = v9;
        v6 |= *(v9 + 58) == 1;
      }

      v7 += 128;
    }

    begin = v50.__begin_;
    if (v50.__begin_ != v50.__end_)
    {
      v11 = *(a1 + 2936);
      v12 = *(a1 + 2944);
      if (v11 == v12)
      {
        v13 = 0;
      }

      else
      {
        v13 = 0;
        v14 = 16;
        if (v6)
        {
          v14 = 32;
        }

        v45 = *(a1 + 2944);
        v46 = v14;
        do
        {
          v15 = *v11;
          if (*(*v11 + 48) == 1)
          {
            if (*(v15 + 88) != v13)
            {
              v47 = v13;
              if (v13)
              {
                v16 = ggl::Batcher::commit((a1 + 2832), 0xC8u, v5);
                if (v16[1] != *v16)
                {
                  v17 = v50.__begin_;
                  end = v50.__end_;
                  if (v50.__begin_ != v50.__end_)
                  {
                    v19 = v16;
                    do
                    {
                      v20 = *v17;
                      v51 = &off_1F2A5D8B8;
                      v21 = v48 + (v20 << 7);
                      v52 = *(v21 + 8);
                      v53 = *(v21 + 24);
                      v54 = *(v21 + 40);
                      v58 = *(v21 + 104);
                      v57 = *(v21 + 88);
                      v56 = *(v21 + 72);
                      v55 = *(v21 + 56);
                      v22 = *(a1 + 2920);
                      v23 = v22[1];
                      if (v23 == *(a1 + 2928))
                      {
                        v22 = *v22;
                        if (!v22)
                        {
                          v22 = malloc_type_malloc(120 * v23 + 16, 0x1020040EDED9539uLL);
                          *v22 = 0;
                          v22[1] = 0;
                          **(a1 + 2920) = v22;
                        }

                        *(a1 + 2920) = v22;
                        v23 = v22[1];
                      }

                      v24 = &v22[15 * v23];
                      v22[1] = v23 + 1;
                      v24[2] = &off_1F2A5D8B8;
                      v25 = v52;
                      v26 = v53;
                      *(v24 + 7) = v54;
                      *(v24 + 5) = v26;
                      *(v24 + 3) = v25;
                      v27 = v55;
                      v28 = v56;
                      v29 = v57;
                      *(v24 + 15) = v58;
                      *(v24 + 13) = v29;
                      *(v24 + 11) = v28;
                      *(v24 + 9) = v27;
                      ggl::RenderItem::~RenderItem(&v51);
                      v24[10] = v47;
                      v30 = *v19;
                      v24[13] = *v19;
                      v24[14] = (v19[1] - v30) >> 4;
                      std::function<void ()(md::Ribbons::RouteLineRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(*(a3 + 24), v20, (v24 + 2));
                      ++v17;
                    }

                    while (v17 != end);
                  }
                }
              }

              v15 = *v11;
              v13 = *(*v11 + 88);
              v12 = v45;
            }

            ggl::Batcher::addRange(a1 + 2832, (v15 + v46));
          }

          ++v11;
        }

        while (v11 != v12);
        begin = v50.__begin_;
      }

      v31 = ggl::Batcher::commit((a1 + 2832), 0xC8u, v5);
      if (v31[1] != *v31)
      {
        v32 = v50.__end_;
        if (begin != v50.__end_)
        {
          v33 = v31;
          do
          {
            v34 = *begin;
            v51 = &off_1F2A5D8B8;
            v35 = v48 + (v34 << 7);
            v52 = *(v35 + 8);
            v53 = *(v35 + 24);
            v54 = *(v35 + 40);
            v58 = *(v35 + 104);
            v57 = *(v35 + 88);
            v56 = *(v35 + 72);
            v55 = *(v35 + 56);
            v36 = *(a1 + 2920);
            v37 = v36[1];
            if (v37 == *(a1 + 2928))
            {
              v36 = *v36;
              if (!v36)
              {
                v36 = malloc_type_malloc(120 * v37 + 16, 0x1020040EDED9539uLL);
                *v36 = 0;
                v36[1] = 0;
                **(a1 + 2920) = v36;
              }

              *(a1 + 2920) = v36;
              v37 = v36[1];
            }

            v38 = &v36[15 * v37];
            v36[1] = v37 + 1;
            v38[2] = &off_1F2A5D8B8;
            v39 = v56;
            v40 = v57;
            v41 = v58;
            *(v38 + 9) = v55;
            v42 = v52;
            v43 = v53;
            *(v38 + 7) = v54;
            *(v38 + 5) = v43;
            *(v38 + 3) = v42;
            *(v38 + 15) = v41;
            *(v38 + 13) = v40;
            *(v38 + 11) = v39;
            v38[10] = v13;
            v44 = *v33;
            v38[13] = *v33;
            v38[14] = (v33[1] - v44) >> 4;
            std::function<void ()(md::Ribbons::RouteLineRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(*(a3 + 24), v34, (v38 + 2));
            ++begin;
          }

          while (begin != v32);
          begin = v50.__begin_;
        }
      }
    }

    if (begin)
    {
      v50.__end_ = begin;
      operator delete(begin);
    }
  }
}

void sub_1B2B36A94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void md::TrafficSegmentsAlongRoute::addSegmentAt(md::TrafficSegmentsAlongRoute *this, unsigned int a2, uint64_t a3)
{
  v6 = *(this + 1);
  v5 = *(this + 2);
  if (v6 >= v5)
  {
    v8 = *this;
    v9 = v6 - *this;
    v10 = (v9 >> 3) + 1;
    if (v10 >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v11 = v5 - v8;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (!(v12 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v13 = (8 * (v9 >> 3));
    *v13 = a2 | (a3 << 32);
    v7 = v13 + 1;
    memcpy(0, v8, v9);
    *this = 0;
    *(this + 1) = v7;
    *(this + 2) = 0;
    if (v8)
    {
      operator delete(v8);
    }
  }

  else
  {
    *v6 = a2 | (a3 << 32);
    v7 = v6 + 1;
  }

  *(this + 1) = v7;
}

void md::NavigationLogic::setRouteContext(VKRouteContext **this, VKRouteContext *a2)
{
  v3 = a2;
  if (this[23] != v3)
  {
    geo::_retain_ptr<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::reset((this + 22), v3);
    v4 = 1;
    std::__hash_table<md::NavigationLogicEvent,std::hash<md::NavigationLogicEvent>,std::equal_to<md::NavigationLogicEvent>,std::allocator<md::NavigationLogicEvent>>::__emplace_unique_key_args<md::NavigationLogicEvent,md::NavigationLogicEvent const&>(this + 31, 1, &v4);
  }

  md::NavigationLogic::_updatePolygonSelection(this);
}

void std::__hash_table<md::NavigationLogicEvent,std::hash<md::NavigationLogicEvent>,std::equal_to<md::NavigationLogicEvent>,std::allocator<md::NavigationLogicEvent>>::__emplace_unique_key_args<md::NavigationLogicEvent,md::NavigationLogicEvent const&>(void *a1, int a2, _DWORD *a3)
{
  v3 = a1[1];
  if (!v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (v3 <= a2)
    {
      v5 = a2 % v3;
    }
  }

  else
  {
    v5 = (v3 - 1) & a2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == a2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= v3)
      {
        v8 %= v3;
      }
    }

    else
    {
      v8 &= v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != a2)
  {
    goto LABEL_17;
  }
}

uint64_t md::NavigationLogic::_updatePolygonSelection(uint64_t this)
{
  v1 = *(this + 216);
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  if (v2 == v3)
  {
    goto LABEL_8;
  }

  v4 = v2;
  while (*v4 != 41)
  {
    v4 += 16;
    if (v4 == v3)
    {
      goto LABEL_8;
    }
  }

  if (v4 == v3)
  {
LABEL_8:
    v5 = 0;
  }

  else
  {
    v5 = *(v4 + 8);
  }

  if (v2 == v3)
  {
    goto LABEL_16;
  }

  v6 = v2;
  while (*v6 != 58)
  {
    v6 += 16;
    if (v6 == v3)
    {
      goto LABEL_16;
    }
  }

  if (v6 == v3)
  {
LABEL_16:
    v7 = 0;
  }

  else
  {
    v7 = *(v6 + 8);
  }

  if (v2 != v3)
  {
    v8 = v2;
    while (*v8 != 42)
    {
      v8 += 16;
      if (v8 == v3)
      {
        goto LABEL_24;
      }
    }

    if (v8 != v3)
    {
      v9 = *(v8 + 8);
      goto LABEL_25;
    }
  }

LABEL_24:
  v9 = 0;
LABEL_25:
  while (v2 != v3)
  {
    if (*v2 == 49)
    {
      if (v2 != v3)
      {
        v10 = *(v2 + 8);
        if (v5)
        {
          goto LABEL_35;
        }

        goto LABEL_32;
      }

      break;
    }

    v2 += 16;
  }

  v10 = 0;
  if (v5)
  {
    goto LABEL_35;
  }

LABEL_32:
  if (!v7 && !v9 && !v10)
  {
    return this;
  }

LABEL_35:
  v14 = 0;
  v15 = &v14;
  v16 = 0x5812000000;
  v17 = __Block_byref_object_copy__35414;
  v18 = __Block_byref_object_dispose__35415;
  v19 = "";
  memset(v20, 0, sizeof(v20));
  v21 = 1065353216;
  v11 = *(this + 184);
  if (v11)
  {
    v12 = *(this + 225);
    if (v12 == 1 || v12 == 2 && !*(this + 224))
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = ___ZN2md15NavigationLogic23_updatePolygonSelectionEv_block_invoke;
      v13[3] = &unk_1E7B3B5F8;
      v13[4] = &v14;
      [v11 forEachRouteInfo:v13];
    }
  }

  if (v5)
  {
    md::SelectedPolygonLayerDataSource::setSelectedPolygons(v5, (v15 + 6));
  }

  if (v7)
  {
    md::SelectedDaVinciPolygonLayerDataSource::setSelectedPolygons(v7, (v15 + 6));
  }

  if (v9)
  {
    md::SelectedPolygonLayerDataSource::setSelectedPolygons(v9, (v15 + 6));
  }

  if (v10)
  {
    md::SelectedDaVinciRoadsLayerDataSource::setSelectedRoads(v10, (v15 + 6));
  }

  _Block_object_dispose(&v14, 8);
  return std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v20);
}

void sub_1B2B372FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v11 + 48);
  _Unwind_Resume(a1);
}

void md::SelectedPolygonLayerDataSource::setSelectedPolygons(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 816);
  if ((std::operator==[abi:nn200100]<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>(a1 + 816, a2) & 1) == 0)
  {
    gdc::LayerDataSource::cancelAllLayerDataRequests(a1);
    gdc::LayerDataStore::clearAllData(*(a1 + 16));
    if (v4 != a2)
    {
      *(a1 + 848) = *(a2 + 32);
      v5 = *(a2 + 16);

      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<unsigned long long,void *> *>>(v4, v5);
    }
  }
}

unint64_t std::operator==[abi:nn200100]<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>(uint64_t a1, void *a2)
{
  if (*(a1 + 24) != a2[3])
  {
    return 0;
  }

  v3 = (a1 + 16);
  while (1)
  {
    v3 = *v3;
    result = v3 == 0;
    if (!v3)
    {
      break;
    }

    v5 = v3[2];
    result = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(a2, v5);
    if (!result)
    {
      break;
    }

    if (v5 != *(result + 16))
    {
      return 0;
    }
  }

  return result;
}

void md::TransitLogic::setRouteContext(md::TransitLogic *this, VKRouteContext *a2)
{
  v3 = a2;
  if (*(this + 25) != v3)
  {
    *(this + 216) = 1;
  }

  v4 = v3;
  geo::_retain_ptr<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::reset(this + 192, v3);
}

void md::SelectedDaVinciPolygonLayerDataSource::setSelectedPolygons(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 800);
  if ((std::operator==[abi:nn200100]<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>(a1 + 800, a2) & 1) == 0)
  {
    gdc::LayerDataSource::cancelAllLayerDataRequests(a1);
    if (GEOGetVectorKitDrapingLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitDrapingLog_onceToken, &__block_literal_global_61);
    }

    v5 = GEOGetVectorKitDrapingLog_log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *v6 = 0;
      _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_DEBUG, "clearing SelectedDVPoly datastore", v6, 2u);
    }

    gdc::LayerDataStore::clearAllData(*(a1 + 16));
    if (v4 != a2)
    {
      *(a1 + 832) = *(a2 + 32);
      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<unsigned long long,void *> *>>(v4, *(a2 + 16));
    }
  }
}

void md::SelectedDaVinciRoadsLayerDataSource::setSelectedRoads(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 840);
  if ((std::operator==[abi:nn200100]<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>(a1 + 840, a2) & 1) == 0)
  {
    gdc::LayerDataSource::cancelAllLayerDataRequests(a1);
    gdc::LayerDataStore::clearAllData(*(a1 + 16));
    if (v4 != a2)
    {
      *(a1 + 872) = *(a2 + 32);
      v5 = *(a2 + 16);

      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<unsigned long long,void *> *>>(v4, v5);
    }
  }
}

void md::StyleLogic::setRouteSource(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *(a1 + 182);
  v4 = a2[1];
  if (v3 == v4 && v3 != 0)
  {
    v3 = *(a1 + 181);
    v4 = *a2;
  }

  if (v3 != v4)
  {
    v6 = *a2;
    *(a1 + 181) = *a2;
    v7 = *(a1 + 208);
    if ((v6 & 0x100) != 0)
    {
      gss::ClientStyleState<gss::PropertyID>::setClientStyleAttribute(v7, 65669, v6);
      if ((*(a1 + 182) & 1) == 0)
      {
        v9 = std::__throw_bad_optional_access[abi:nn200100]();
        [(VKRouteContext *)v9 .cxx_destruct];
        return;
      }

      gss::ClientStyleState<gss::ScenePropertyID>::setClientStyleAttribute(*(a1 + 224), 0x10085u, *(a1 + 181));
    }

    else
    {
      gss::ClientStyleState<gss::PropertyID>::removeClientStyleAttribute(v7, 65669);
      gss::ClientStyleState<gss::ScenePropertyID>::removeClientStyleAttribute(*(a1 + 224), 0x10085u);
    }

    v11 = 4;
    geo::linear_set<md::StyleManagerEvent,std::less<md::StyleManagerEvent>,std::allocator<md::StyleManagerEvent>,std::vector<md::StyleManagerEvent>>::insert((a1 + 1128), &v11);
    v8 = **(a1 + 1240);
    if (v8)
    {
      v12 = 12;
      md::MapEngine::setNeedsTick(v8, &v12);
    }
  }
}

void md::StyleLogic::setRouteTransportType(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *(a1 + 170);
  v4 = a2[1];
  if (v3 == v4 && v3 != 0)
  {
    v3 = *(a1 + 169);
    v4 = *a2;
  }

  if (v3 != v4)
  {
    v6 = *a2;
    *(a1 + 169) = *a2;
    v7 = *(a1 + 208);
    if ((v6 & 0x100) != 0)
    {
      gss::ClientStyleState<gss::PropertyID>::setClientStyleAttribute(v7, 65619, v6);
      if ((*(a1 + 170) & 1) == 0)
      {
        v9 = std::__throw_bad_optional_access[abi:nn200100]();
        [(VKIconModifiers *)v9 zoom];
        return;
      }

      gss::ClientStyleState<gss::ScenePropertyID>::setClientStyleAttribute(*(a1 + 224), 0x10053u, *(a1 + 169));
    }

    else
    {
      gss::ClientStyleState<gss::PropertyID>::removeClientStyleAttribute(v7, 65619);
      gss::ClientStyleState<gss::ScenePropertyID>::removeClientStyleAttribute(*(a1 + 224), 0x10053u);
    }

    v11 = 4;
    geo::linear_set<md::StyleManagerEvent,std::less<md::StyleManagerEvent>,std::allocator<md::StyleManagerEvent>,std::vector<md::StyleManagerEvent>>::insert((a1 + 1128), &v11);
    v8 = **(a1 + 1240);
    if (v8)
    {
      v12 = 12;
      md::MapEngine::setNeedsTick(v8, &v12);
    }
  }
}

void grl::IconManager::retrieveResourcePack(void *a1, uint64_t a2, const void **a3, int a4)
{
  std::__shared_mutex_base::lock_shared((a2 + 104));
  v8 = *(a2 + 96);
  if (!v8)
  {
    if (GEOGetGeoResourceLibIconManagerLog::onceToken != -1)
    {
      dispatch_once(&GEOGetGeoResourceLibIconManagerLog::onceToken, &__block_literal_global_53776);
    }

    v13 = GEOGetGeoResourceLibIconManagerLog::log;
    if (os_log_type_enabled(GEOGetGeoResourceLibIconManagerLog::log, OS_LOG_TYPE_ERROR))
    {
      *v20 = 0;
      _os_log_impl(&dword_1B2754000, v13, OS_LOG_TYPE_ERROR, "No packinfo available", v20, 2u);
    }

    goto LABEL_24;
  }

  if (a4 != 2)
  {
    if (a4 == 1)
    {
      v9 = (v8 + 304);
      std::mutex::lock((v8 + 304));
      v10 = geo::LRUPolicy<std::pair<std::string,float>,std::shared_ptr<grl::codec::IconDataPack>,grl::codec::PackKeyHash>::get(*(a2 + 96) + 152, (*(a2 + 96) + 112), a3);
      v11 = *(a2 + 96);
      v12 = v11 + 152;
    }

    else
    {
      v9 = (v8 + 240);
      std::mutex::lock((v8 + 240));
      v10 = geo::LRUPolicy<std::pair<std::string,float>,std::shared_ptr<grl::codec::IconDataPack>,grl::codec::PackKeyHash>::get(*(a2 + 96) + 80, (*(a2 + 96) + 40), a3);
      v11 = *(a2 + 96);
      v12 = v11 + 80;
    }

    if (v12 != v10)
    {
      ++*(v11 + 368);
      v19 = *(v10 + 48);
      v18 = *(v10 + 56);
      goto LABEL_20;
    }

    goto LABEL_23;
  }

  v9 = (v8 + 176);
  std::mutex::lock((v8 + 176));
  v14 = *(a2 + 96);
  v15 = *(v14 + 8);
  if (!v15)
  {
    goto LABEL_23;
  }

  v16 = v14 + 8;
  do
  {
    v17 = std::operator<=>[abi:nn200100]<std::string,float,std::string,float>(v15 + 32, a3);
    if (v17 != 255)
    {
      v16 = v15;
    }

    v15 = *(v15 + 8 * (v17 == 255));
  }

  while (v15);
  if (v16 == v14 + 8 || std::operator<=>[abi:nn200100]<std::string,float,std::string,float>(a3, v16 + 32) == 0xFF)
  {
LABEL_23:
    std::mutex::unlock(v9);
    ++*(*(a2 + 96) + 372);
LABEL_24:
    *a1 = 0;
    a1[1] = 0;
    goto LABEL_25;
  }

  ++*(v14 + 368);
  v19 = *(v16 + 64);
  v18 = *(v16 + 72);
LABEL_20:
  *a1 = v19;
  a1[1] = v18;
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

  std::mutex::unlock(v9);
LABEL_25:
  std::__shared_mutex_base::unlock_shared((a2 + 104));
}

uint64_t std::__tree<std::__value_type<grl::ResourceProvider::ResourceCacheKey,std::shared_ptr<std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>> const>>,std::__map_value_compare<grl::ResourceProvider::ResourceCacheKey,std::__value_type<grl::ResourceProvider::ResourceCacheKey,std::shared_ptr<std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>> const>>,std::less<grl::ResourceProvider::ResourceCacheKey>,true>,std::allocator<std::__value_type<grl::ResourceProvider::ResourceCacheKey,std::shared_ptr<std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>> const>>>>::find<grl::ResourceProvider::ResourceCacheKey>(uint64_t a1, unsigned __int8 *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = std::less<grl::ResourceProvider::ResourceCacheKey>::operator()[abi:nn200100]((v3 + 32), a2);
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v5 = v3;
    }

    v3 = *(v3 + v7);
  }

  while (v3);
  if (v5 == v2 || std::less<grl::ResourceProvider::ResourceCacheKey>::operator()[abi:nn200100](a2, (v5 + 32)))
  {
    return v2;
  }

  return v5;
}

uint64_t grl::zone_mallocator::instance(grl::zone_mallocator *this)
{
  v2 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  return grl::zone_mallocator::instance(void)::zone;
}

grl::zone_mallocator *std::vector<unsigned int,geo::allocator_adapter<unsigned int,grl::zone_mallocator>>::reserve(grl::zone_mallocator *result, unint64_t a2)
{
  if (a2 > (*(result + 2) - *result) >> 2)
  {
    if (a2 >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v3 = result;
    v4 = *(result + 1) - *result;
    v13[4] = result + 24;
    v5 = grl::zone_mallocator::instance(result);
    v6 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned int>(v5, a2);
    v7 = &v6[v4];
    v8 = &v6[4 * a2];
    v9 = *(v3 + 1) - *v3;
    v10 = &v7[-v9];
    memcpy(&v7[-v9], *v3, v9);
    v11 = *v3;
    *v3 = v10;
    *(v3 + 1) = v7;
    v12 = *(v3 + 2);
    *(v3 + 2) = v8;
    v13[2] = v11;
    v13[3] = v12;
    v13[0] = v11;
    v13[1] = v11;
    return std::__split_buffer<unsigned int,geo::allocator_adapter<unsigned int,grl::zone_mallocator> &>::~__split_buffer(v13);
  }

  return result;
}

unint64_t grl::codec::PackKeyHash::operator()(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 8);
  if (*(a1 + 23) >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    a1 = *a1;
    v3 = v2;
  }

  v4 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](a1, v3);
  v5 = 0x9E3779B97F4A7C15;
  v6 = *(v1 + 24);
  if (v6 != 0.0)
  {
    v5 = LODWORD(v6) - 0x61C8864680B583EBLL;
  }

  return (((v4 - 0x61C8864680B583EBLL) >> 2) + ((v4 - 0x61C8864680B583EBLL) << 6) + v5) ^ (v4 - 0x61C8864680B583EBLL);
}

void grl::codec::IconConfigPack::iconRenderItemForKey(grl::codec::IconConfigPack *this, const grl::IconKey *a2, grl::IconKey *a3, uint64_t a4)
{
  v32 = *(a3 + 8);
  LOBYTE(v42) = *(a3 + 24);
  *(&v42 + 2) = HIDWORD(v32);
  grl::codec::IconConfigPack::decodeIconRenderItemIfNeeded(&v33, a2, &v42);
  v8 = v33;
  if (!v33 || (v9 = std::__tree<std::__value_type<grl::IconKey,std::shared_ptr<grl::codec::IconRenderItem>>,std::__map_value_compare<grl::IconKey,std::__value_type<grl::IconKey,std::shared_ptr<grl::codec::IconRenderItem>>,std::less<grl::IconKey>,true>,geo::allocator_adapter<std::__value_type<grl::IconKey,std::shared_ptr<grl::codec::IconRenderItem>>,grl::zone_mallocator>>::find<grl::IconKey>(v33, a3), v8 + 8 == v9))
  {
    v42 = &unk_1F2A5F7A0;
    v43 = *(a3 + 8);
    v44 = *(a3 + 24);
    v12 = v44;
    if (v44)
    {
      while (1)
      {
        v44 = v12 - 1;
        v13 = (((DWORD2(v43) - 0x61C8864680B583EBLL) << 6) - 0x61C8864680B583EBLL + ((DWORD2(v43) - 0x61C8864680B583EBLL) >> 2) + WORD6(v43)) ^ (DWORD2(v43) - 0x61C8864680B583EBLL);
        v14 = (HIWORD(v43) - 0x61C8864680B583EBLL + (v13 << 6) + (v13 >> 2)) ^ v13;
        *&v43 = ((v12 - 1) - 0x61C8864680B583EBLL + (v14 << 6) + (v14 >> 2)) ^ v14;
        v35 = &unk_1F2A5F7A0;
        v37 = v12 - 1;
        v36 = v43;
        v38[0] = v12 - 1;
        v39 = HIDWORD(v43);
        grl::codec::IconConfigPack::decodeIconRenderItemIfNeeded(&v40, a2, v38);
        v15 = v40;
        if (v40)
        {
          v16 = std::__tree<std::__value_type<grl::IconKey,std::shared_ptr<grl::codec::IconRenderItem>>,std::__map_value_compare<grl::IconKey,std::__value_type<grl::IconKey,std::shared_ptr<grl::codec::IconRenderItem>>,std::less<grl::IconKey>,true>,geo::allocator_adapter<std::__value_type<grl::IconKey,std::shared_ptr<grl::codec::IconRenderItem>>,grl::zone_mallocator>>::find<grl::IconKey>(v40, &v42);
          if (v15 + 8 != v16)
          {
            break;
          }
        }

        if (v41)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v41);
        }

        v12 = v44;
        if (!v44)
        {
          goto LABEL_13;
        }
      }

      if (a4)
      {
        v30 = *(a3 + 8);
        *(a4 + 24) = *(a3 + 24);
        *(a4 + 8) = v30;
      }

      v31 = *(v16 + 64);
      v17 = *(v16 + 72);
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v41)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v41);
      }

      if (v31)
      {
        *this = v31;
        *(this + 1) = v17;
        goto LABEL_36;
      }
    }

    else
    {
LABEL_13:
      v17 = 0;
    }

    if (*(a3 + 11))
    {
      v18 = *(a3 + 10);
      v19 = *(a3 + 24);
      DWORD2(v43) = *(a3 + 4);
      HIDWORD(v43) = v18;
      v44 = v19;
      v20 = DWORD2(v43) - 0x61C8864680B583EBLL;
      v21 = (((((v20 << 6) - 0x61C8864680B583EBLL + (v20 >> 2) + v18) ^ v20) << 6) - 0x61C8864680B583EBLL + ((((v20 << 6) - 0x61C8864680B583EBLL + (v20 >> 2) + v18) ^ v20) >> 2)) ^ ((v20 << 6) - 0x61C8864680B583EBLL + (v20 >> 2) + v18) ^ v20;
      v42 = &unk_1F2A5F7A0;
      *&v43 = (v19 - 0x61C8864680B583EBLL + (v21 << 6) + (v21 >> 2)) ^ v21;
      grl::codec::IconConfigPack::iconRenderItemForKey(&v35, a2, &v42, a4);
      v23 = v35;
      v22 = v36;
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v17);
      }

      if (v23)
      {
        *this = v23;
        *(this + 1) = v22;
        goto LABEL_36;
      }
    }

    else
    {
      v22 = v17;
    }

    if (*(a3 + 10))
    {
      v24 = *(a3 + 11);
      v25 = *(a3 + 24);
      DWORD2(v43) = *(a3 + 4);
      WORD6(v43) = 0;
      HIWORD(v43) = v24;
      v44 = v25;
      v26 = DWORD2(v43) - 0x61C8864680B583EBLL;
      v27 = (v24 - 0x61C8864680B583EBLL + ((((v26 << 6) - 0x61C8864680B583EBLL + (v26 >> 2)) ^ v26) << 6) + ((((v26 << 6) - 0x61C8864680B583EBLL + (v26 >> 2)) ^ v26) >> 2)) ^ ((v26 << 6) - 0x61C8864680B583EBLL + (v26 >> 2)) ^ v26;
      v42 = &unk_1F2A5F7A0;
      *&v43 = (v25 - 0x61C8864680B583EBLL + (v27 << 6) + (v27 >> 2)) ^ v27;
      grl::codec::IconConfigPack::iconRenderItemForKey(&v35, a2, &v42, a4);
      v29 = v35;
      v28 = v36;
      if (v22)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v22);
      }

      if (v29)
      {
        *this = v29;
        *(this + 1) = v28;
        goto LABEL_36;
      }
    }

    else
    {
      v28 = v22;
    }

    *this = 0;
    *(this + 1) = 0;
    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v28);
    }
  }

  else
  {
    if (a4)
    {
      v10 = *(a3 + 8);
      *(a4 + 24) = *(a3 + 24);
      *(a4 + 8) = v10;
    }

    v11 = *(v9 + 72);
    *this = *(v9 + 64);
    *(this + 1) = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }
  }

LABEL_36:
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v34);
  }
}

void grl::codec::IconConfigPack::decodeIconRenderItemIfNeeded(void *a1, uint64_t a2, unsigned __int8 *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  std::mutex::lock((a2 + 232));
  v6 = geo::LRUPolicy<grl::codec::IconConfigPack::IconVariation,std::shared_ptr<std::map<grl::IconKey,std::shared_ptr<grl::codec::IconRenderItem>,std::less<grl::IconKey>,geo::allocator_adapter<std::pair<grl::IconKey const,std::shared_ptr<grl::codec::IconRenderItem>>,grl::zone_mallocator>>>,grl::codec::IconConfigPack::IconVariationHash>::get(a2 + 120, (a2 + 80), a3);
  if (a2 + 120 != v6)
  {
    atomic_fetch_add((a2 + 144), 1u);
    v7 = *(v6 + 32);
    *a1 = *(v6 + 24);
    a1[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    goto LABEL_55;
  }

  atomic_fetch_add((a2 + 148), 1u);
  *a1 = 0;
  a1[1] = 0;
  v8 = *(a2 + 48);
  if (v8)
  {
    v9 = *a3;
    v10 = *(a3 + 2);
    v11 = a2 + 48;
    v12 = *(a3 + 1);
    do
    {
      v13 = *(v8 + 28);
      v14 = v13 >= v9;
      if (v13 == v9)
      {
        v15 = *(v8 + 32);
        v14 = v15 >= v10;
        if (v15 == v10)
        {
          v14 = *(v8 + 30) >= v12;
        }
      }

      v16 = !v14;
      v17 = v16 == 0;
      if (v16)
      {
        v18 = 8;
      }

      else
      {
        v18 = 0;
      }

      if (v17)
      {
        v11 = v8;
      }

      v8 = *(v8 + v18);
    }

    while (v8);
    if (a2 + 48 != v11)
    {
      v19 = *(v11 + 28);
      v20 = v9 >= v19;
      if (v9 == v19)
      {
        v21 = *(v11 + 32);
        v20 = v10 >= v21;
        if (v10 == v21)
        {
          v20 = v12 >= *(v11 + 30);
        }
      }

      if (v20)
      {
        v38 = 0;
        v39 = 0;
        __p = 0;
        v37 = 0uLL;
        v22 = *(a2 + 176);
        v35[0] = *(a2 + 168);
        v35[1] = v22;
        if (v22)
        {
          atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v23 = grl::codec::ResourcePack::decodeChapterSize(v35, *(a2 + 184) + *(v11 + 36) + 16, &v39, &v38);
        if (v22)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v22);
        }

        if (v23)
        {
          v24 = *(a2 + 168);
          v25 = *(a2 + 176);
          if (v25)
          {
            atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v24)
          {
            v26 = v38;
            v27 = *(a2 + 184) + *(v11 + 36) + 32;
            memset(v40, 0, sizeof(v40));
            v41 = v27;
            std::istream::seekg();
            if (v26)
            {
              std::vector<unsigned char>::__append(&__p, v26);
              v28 = __p;
            }

            else
            {
              v28 = 0;
            }

            std::istream::read();
          }

          else
          {
            printf("\n%s : Parse Error Here: - %s : Failed in file - %s line - %i\n", "Pack Stream Is Invalid", "packStream", "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoResourceLib/GeoResourceLib/Codec/ResourcePack.cpp", 332);
            v28 = 0;
          }

          if (v25)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v25);
          }

          if (!v24)
          {
            printf("\n%s : Parse Error Here: - %s : Failed in file - %s line - %i\n", "Failed to read compressed Icon Data Chapter", "decodePackChunk(_packStream, _packStreamIconDataStart + locationIter->second + (sizeSkip * 2), compressedSize, chapterData)", "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoResourceLib/GeoResourceLib/Codec/IconConfigPack.cpp", 338);
            goto LABEL_49;
          }

          grl::codec::ResourcePack::decompressData(v40, v28, v37, v39);
          if (v28)
          {
            *&v37 = v28;
            operator delete(v28);
          }

          __p = *&v40[0];
          v37 = *(v40 + 8);
          if (*(&v40[0] + 1) - *&v40[0] >= 4uLL)
          {
            operator new();
          }

          v29 = 344;
          v30 = "numberOfIcons.has_value()";
          v31 = "Number of Icons could not be read";
        }

        else
        {
          v29 = 337;
          v30 = "decodeChapterSize(_packStream, _packStreamIconDataStart + locationIter->second + sizeSkip, rawSize, compressedSize)";
          v31 = "Failed to read Icon Data Chapter Size";
        }

        printf("\n%s : Parse Error Here: - %s : Failed in file - %s line - %i\n", v31, v30, "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoResourceLib/GeoResourceLib/Codec/IconConfigPack.cpp", v29);
LABEL_49:
        if (__p)
        {
          operator delete(__p);
        }

        v32 = a1[1];
        *a1 = 0;
        a1[1] = 0;
        if (v32)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v32);
        }
      }
    }
  }

  v33 = geo::Cache<grl::codec::IconConfigPack::IconVariation,std::shared_ptr<std::map<grl::IconKey,std::shared_ptr<grl::codec::IconRenderItem>,std::less<grl::IconKey>,geo::allocator_adapter<std::pair<grl::IconKey const,std::shared_ptr<grl::codec::IconRenderItem>>,grl::zone_mallocator>>>,grl::codec::IconConfigPack::IconVariationHash,geo::LRUPolicy>::operator[](a2 + 72, a3);
  v34 = v33[1];
  *v33 = 0;
  v33[1] = 0;
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v34);
  }

LABEL_55:

  std::mutex::unlock((a2 + 232));
}

uint64_t gss::QueryableLocker<gss::PropertyID>::hasTargetValueForKeyAtZ(uint64_t a1, unsigned __int16 a2, unsigned int a3)
{
  if (a3 >= 0x17)
  {
    v5 = 23;
  }

  else
  {
    v5 = a3;
  }

  v6 = *(a1 + 12);
  if (v6 == 2)
  {
    v7 = *(a1 + 16);
    if (v7)
    {
      v8 = *(v7 + 72);
      if (v8)
      {
        v9 = *v8 + 120 * *(v8 + v5 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v9, a2) != *(v9 + 12))
        {
          return 1;
        }
      }

      if (*(a1 + 56))
      {
        v10 = *(a1 + 48);
        v11 = 8 * *(a1 + 56);
        while (1)
        {
          v12 = *(*v10 + 72);
          if (v12)
          {
            v13 = *v12 + 120 * *(v12 + v5 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v13, a2) != *(v13 + 12))
            {
              return 1;
            }
          }

          v10 += 8;
          v6 = 1;
          v11 -= 8;
          if (!v11)
          {
            goto LABEL_15;
          }
        }
      }
    }

    v6 = 1;
  }

LABEL_15:
  v14 = *(a1 + 16 * v6 + 16);
  if (!v14)
  {
    return 0;
  }

  v15 = *(v14 + 72);
  if (!v15 || (v16 = *v15 + 120 * *(v15 + v5 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v16, a2) == *(v16 + 12)))
  {
    v18 = a1 + 16 * v6;
    if (*(v18 + 56))
    {
      v19 = *(v18 + 48);
      v20 = 8 * *(v18 + 56);
      while (1)
      {
        v21 = *(*v19 + 72);
        if (v21)
        {
          v22 = *v21 + 120 * *(v21 + v5 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v22, a2) != *(v22 + 12))
          {
            break;
          }
        }

        result = 0;
        v19 += 8;
        v20 -= 8;
        if (!v20)
        {
          return result;
        }
      }

      return 1;
    }

    return 0;
  }

  return 1;
}

uint64_t grl::IconManager::identifierForMapKeyValue(uint64_t a1, uint64_t a2, unsigned int a3, float a4)
{
  v5 = a2;
  v33 = *MEMORY[0x1E69E9840];
  v7 = ceilf(a4);
  std::string::basic_string[abi:nn200100]<0>(__p, "Default");
  v29 = v7;
  grl::IconManager::retrieveResourcePack(buf, a1, __p, 2);
  v9 = *buf;
  v8 = v31;
  if (*buf)
  {
    v10 = v31;
  }

  else
  {
    grl::IconManager::loadGlobalResourcePack(buf, a1, __p);
    v9 = *buf;
    v10 = v31;
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v8);
    }

    if (!v9)
    {
      if (GEOGetGeoResourceLibIconManagerLog::onceToken != -1)
      {
        dispatch_once(&GEOGetGeoResourceLibIconManagerLog::onceToken, &__block_literal_global_53776);
      }

      v25 = GEOGetGeoResourceLibIconManagerLog::log;
      if (!os_log_type_enabled(GEOGetGeoResourceLibIconManagerLog::log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_37;
      }

      *buf = 67109376;
      *&buf[4] = v5;
      LOWORD(v31) = 1024;
      *(&v31 + 2) = a3;
      v22 = "Failed to find map pack key: %i - value: %i";
      v23 = v25;
      v24 = 14;
      goto LABEL_36;
    }
  }

  v11 = v9[6];
  if (!*&v11)
  {
    goto LABEL_26;
  }

  v12 = (((v5 - 0x61C8864680B583EBLL) << 6) + a3 + ((v5 - 0x61C8864680B583EBLL) >> 2) - 0x61C8864680B583EBLL) ^ (v5 - 0x61C8864680B583EBLL);
  v13 = vcnt_s8(v11);
  v13.i16[0] = vaddlv_u8(v13);
  if (v13.u32[0] > 1uLL)
  {
    v14 = (((v5 - 0x61C8864680B583EBLL) << 6) + a3 + ((v5 - 0x61C8864680B583EBLL) >> 2) - 0x61C8864680B583EBLL) ^ (v5 - 0x61C8864680B583EBLL);
    if (v12 >= *&v11)
    {
      v14 = v12 % *&v11;
    }
  }

  else
  {
    v14 = v12 & (*&v11 - 1);
  }

  v15 = *(v9[5] + 8 * v14);
  if (!v15 || (v16 = *v15) == 0)
  {
LABEL_26:
    v19 = std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::find<unsigned int>(v9 + 49, v5);
    if (v19)
    {
      v20 = *(v19 + 5);
      if (v20)
      {
        goto LABEL_38;
      }
    }

    if (GEOGetGeoResourceLibIconManagerLog::onceToken != -1)
    {
      dispatch_once(&GEOGetGeoResourceLibIconManagerLog::onceToken, &__block_literal_global_53776);
    }

    v21 = GEOGetGeoResourceLibIconManagerLog::log;
    if (!os_log_type_enabled(GEOGetGeoResourceLibIconManagerLog::log, OS_LOG_TYPE_ERROR))
    {
LABEL_37:
      v20 = 0;
      goto LABEL_38;
    }

    *buf = 67109632;
    *&buf[4] = v5;
    LOWORD(v31) = 1024;
    *(&v31 + 2) = a3;
    HIWORD(v31) = 2048;
    v32 = v7;
    v22 = "Failed to find ID for Map Value\nKey: %i - Value: %i - Content Scale: %f";
    v23 = v21;
    v24 = 24;
LABEL_36:
    _os_log_impl(&dword_1B2754000, v23, OS_LOG_TYPE_ERROR, v22, buf, v24);
    goto LABEL_37;
  }

  while (1)
  {
    v17 = v16[1];
    if (v12 == v17)
    {
      break;
    }

    if (v13.u32[0] > 1uLL)
    {
      if (v17 >= *&v11)
      {
        v17 %= *&v11;
      }
    }

    else
    {
      v17 &= *&v11 - 1;
    }

    if (v17 != v14)
    {
      goto LABEL_26;
    }

LABEL_25:
    v16 = *v16;
    if (!v16)
    {
      goto LABEL_26;
    }
  }

  if (*(v16 + 4) != v5 || *(v16 + 5) != a3)
  {
    goto LABEL_25;
  }

  v20 = *(v16 + 6);
  if (!v20)
  {
    goto LABEL_26;
  }

LABEL_38:
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  if (v28 < 0)
  {
    operator delete(__p[0]);
  }

  return v20;
}

uint64_t std::operator<=>[abi:nn200100]<std::string,float,std::string,float>(uint64_t a1, uint64_t a2)
{
  v4 = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(a1, a2);
  if (v4)
  {
    return (v4 >> 31) | 1u;
  }

  v6 = *(a1 + 24);
  v7 = *(a2 + 24);
  if (v6 == v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = -127;
  }

  if (v6 > v7)
  {
    v8 = 1;
  }

  if (v6 < v7)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v8;
  }
}

void grl::IconManager::imageForIconID(void *a1, uint64_t a2, unsigned int a3, grl::IconModifiers *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v54 = *MEMORY[0x1E69E9840];
  v13 = *(a5 + 6);
  v14 = *(a5 + 8);
  v15 = *(a5 + 4);
  v44 = a3;
  v45 = v13;
  v16 = a3 - 0x61C8864680B583EBLL;
  v46 = v14;
  v47 = v15;
  v17 = (v14 + ((((v16 << 6) + (v16 >> 2) + v13 - 0x61C8864680B583EBLL) ^ v16) << 6) + ((((v16 << 6) + (v16 >> 2) + v13 - 0x61C8864680B583EBLL) ^ v16) >> 2) - 0x61C8864680B583EBLL) ^ ((v16 << 6) + (v16 >> 2) + v13 - 0x61C8864680B583EBLL) ^ v16;
  v43[0] = &unk_1F2A5F7A0;
  v43[1] = (v15 + (v17 << 6) + (v17 >> 2) - 0x61C8864680B583EBLL) ^ v17;
  v41 = 0;
  v42 = 0;
  if (*(a5 + 12))
  {
    (*(**(a2 + 8) + 32))(&v40);
    v18 = *(a5 + 16);
    v19 = *(a5 + 24);
    memset(&v52, 0, sizeof(v52));
    v20 = std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>::__init_with_size[abi:nn200100]<std::__wrap_iter<std::string const*>,std::__wrap_iter<std::string const*>>(&v52, v18, v19, 0xAAAAAAAAAAAAAAABLL * ((v19 - v18) >> 3));
    v22 = *v40;
    v21 = v40[1];
    v23 = v21 - *v40;
    if (v23 >= 1)
    {
      size = v52.__r_.__value_.__l.__size_;
      if ((v52.__r_.__value_.__r.__words[2] - v52.__r_.__value_.__l.__size_) >= v23)
      {
        v52.__r_.__value_.__l.__size_ = std::__uninitialized_allocator_copy[abi:nn200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(*v40, v21, v52.__r_.__value_.__l.__size_);
      }

      else
      {
        v25 = 0xAAAAAAAAAAAAAAABLL * ((v52.__r_.__value_.__l.__size_ - v52.__r_.__value_.__r.__words[0]) >> 3);
        v26 = v25 - 0x5555555555555555 * (v23 >> 3);
        if (v26 > 0xAAAAAAAAAAAAAAALL)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v27 = 0x5555555555555556 * ((v52.__r_.__value_.__r.__words[2] - v52.__r_.__value_.__r.__words[0]) >> 3);
        if (v27 <= v26)
        {
          v27 = v25 - 0x5555555555555555 * (v23 >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v52.__r_.__value_.__r.__words[2] - v52.__r_.__value_.__r.__words[0]) >> 3) >= 0x555555555555555)
        {
          v28 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v28 = v27;
        }

        v51 = &v53;
        if (v28)
        {
          v29 = grl::zone_mallocator::instance(v20);
          v30 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::string>(v29, v28);
        }

        else
        {
          v30 = 0;
        }

        v33 = &v30[3 * v25];
        v48 = v30;
        v49 = v33;
        *&v50 = v33;
        *(&v50 + 1) = &v30[3 * v28];
        v34 = v33 + v23;
        do
        {
          if (*(v22 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(v33, *v22, *(v22 + 1));
          }

          else
          {
            v35 = *v22;
            v33->__shared_weak_owners_ = *(v22 + 2);
            v33->std::__shared_count = v35;
          }

          ++v33;
          v22 = (v22 + 24);
          v23 -= 24;
        }

        while (v23);
        memcpy(v34, size, v52.__r_.__value_.__l.__size_ - size);
        *&v50 = &v34[v52.__r_.__value_.__l.__size_ - size];
        v52.__r_.__value_.__l.__size_ = size;
        v36 = &size[-v52.__r_.__value_.__r.__words[0]];
        v37 = (v49 - &size[-v52.__r_.__value_.__r.__words[0]]);
        memcpy(v37, v52.__r_.__value_.__l.__data_, v36);
        v38 = v52.__r_.__value_.__r.__words[0];
        v39 = v52.__r_.__value_.__r.__words[2];
        v52.__r_.__value_.__r.__words[0] = v37;
        *&v52.__r_.__value_.__r.__words[1] = v50;
        *&v50 = v38;
        *(&v50 + 1) = v39;
        v48 = v38;
        v49 = v38;
        std::__split_buffer<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator> &>::~__split_buffer(&v48);
      }
    }

    operator new();
  }

  (*(**(a2 + 8) + 32))(&v48);
  v31 = v48;
  v32 = v49;
  if (v49)
  {
    atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
    v41 = v31;
    v42 = v32;
    if (v49)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v49);
    }
  }

  else
  {
    v41 = v48;
    v42 = 0;
  }

  grl::IconManager::image(a1, a2, v43, a4, *(a5 + 10), &v41, a6, a7, ceilf(*a5));
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v32);
  }
}

void grl::ResourceProvider::resourceNamesOfResourceType(uint64_t a1@<X0>, unsigned int a2@<W1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v44 = *MEMORY[0x1E69E9840];
  v35[0] = a2;
  v35[1] = 0;
  v36 = a3;
  std::mutex::lock((a1 + 176));
  v8 = std::__tree<std::__value_type<grl::ResourceProvider::ResourceCacheKey,std::shared_ptr<std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>> const>>,std::__map_value_compare<grl::ResourceProvider::ResourceCacheKey,std::__value_type<grl::ResourceProvider::ResourceCacheKey,std::shared_ptr<std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>> const>>,std::less<grl::ResourceProvider::ResourceCacheKey>,true>,std::allocator<std::__value_type<grl::ResourceProvider::ResourceCacheKey,std::shared_ptr<std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>> const>>>>::find<grl::ResourceProvider::ResourceCacheKey>(a1 + 240, v35);
  if (a1 + 248 == v8)
  {
    std::mutex::unlock((a1 + 176));
    v41 = 0;
    v42 = 0;
    v43 = 0;
    (*(*a1 + 24))(&v34, a1, a3);
    if (!v34)
    {
      operator new();
    }

    std::mutex::lock((a1 + 112));
    v10 = *v34;
    v11 = v34[1];
    v32[0] = &v41;
    while (1)
    {
      if (v10 == v11)
      {
        if (v41 == v42 && *v34 != v34[1])
        {
          if (GEOGetGeoResourceLibResourceProviderLog(void)::onceToken != -1)
          {
            dispatch_once(&GEOGetGeoResourceLibResourceProviderLog(void)::onceToken, &__block_literal_global_54332);
          }

          v18 = GEOGetGeoResourceLibResourceProviderLog(void)::log;
          if (os_log_type_enabled(GEOGetGeoResourceLibResourceProviderLog(void)::log, OS_LOG_TYPE_ERROR))
          {
            v19 = v32;
            grl::buildStringFromResourceNames(v32, *v34, 0xAAAAAAAAAAAAAAABLL * ((v34[1] - *v34) >> 3));
            if (v33 < 0)
            {
              v19 = v32[0];
            }

            if (a2 > 3)
            {
              v20 = "";
            }

            else
            {
              v20 = off_1E7B584C8[a2];
            }

            v21 = 0;
            v22 = 0;
            v31 = 2;
            strcpy(v30, "00");
            do
            {
              v23 = v21;
              if ((a3 >> v22))
              {
                v24 = v22 ^ 1;
                if (v31 >= 0)
                {
                  v25 = v30;
                }

                else
                {
                  v25 = v30[0];
                }

                *(v25 + v24) = 49;
              }

              v21 = 1;
              v22 = 1;
            }

            while ((v23 & 1) == 0);
            if (v31 >= 0)
            {
              v26 = v30;
            }

            else
            {
              v26 = v30[0];
            }

            grl::buildStringFromResourceNames(__p, v41, 0xAAAAAAAAAAAAAAABLL * ((v42 - v41) >> 3));
            if (v29 >= 0)
            {
              v27 = __p;
            }

            else
            {
              v27 = __p[0];
            }

            LODWORD(v37.__r_.__value_.__l.__data_) = 136315906;
            *(v37.__r_.__value_.__r.__words + 4) = v19;
            WORD2(v37.__r_.__value_.__r.__words[1]) = 2080;
            *(&v37.__r_.__value_.__r.__words[1] + 6) = v20;
            HIWORD(v37.__r_.__value_.__r.__words[2]) = 2080;
            v38 = v26;
            v39 = 2080;
            v40 = v27;
            _os_log_impl(&dword_1B2754000, v18, OS_LOG_TYPE_ERROR, "Resources names got filtered to empty set for resourceType:%s location:%s input:%s output:%s", &v37, 0x2Au);
            if (v29 < 0)
            {
              operator delete(__p[0]);
            }

            if (v31 < 0)
            {
              operator delete(v30[0]);
            }

            if (v33 < 0)
            {
              operator delete(v32[0]);
            }
          }
        }

        std::mutex::unlock((a1 + 112));
        std::mutex::lock((a1 + 176));
        operator new();
      }

      v12 = *(v10 + 23);
      if ((v12 & 0x80u) == 0)
      {
        v13 = v10;
      }

      else
      {
        v13 = *v10;
      }

      if ((v12 & 0x80u) != 0)
      {
        v12 = *(v10 + 8);
      }

      if (v12)
      {
        v14 = v13 + v12;
        do
        {
          if (!v12)
          {
            goto LABEL_26;
          }

          v15 = *--v14;
          --v12;
        }

        while (v15 != 46);
        v16 = v14 - v13;
        if (v16 != -1)
        {
          std::string::basic_string(&v37, v10, v16 + 1, 0xFFFFFFFFFFFFFFFFLL, v30);
          grl::ResourceTypeFromPackExtension(v30, &v37);
          if (a2 == BYTE1(v30[0]))
          {
            v17 = LOBYTE(v30[0]);
          }

          else
          {
            v17 = 0;
          }

          if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            if (!v17)
            {
              goto LABEL_26;
            }

LABEL_25:
            std::back_insert_iterator<std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>>::operator=[abi:nn200100](v32, v10);
            goto LABEL_26;
          }

          operator delete(v37.__r_.__value_.__l.__data_);
          if (v17)
          {
            goto LABEL_25;
          }
        }
      }

LABEL_26:
      v10 += 24;
    }
  }

  v9 = *(v8 + 56);
  *a4 = *(v8 + 48);
  a4[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  std::mutex::unlock((a1 + 176));
}

BOOL std::less<grl::ResourceProvider::ResourceCacheKey>::operator()[abi:nn200100](unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = (a1[1] + ((*a1 - 0x61C8864680B583ABLL) >> 2) + (((*a1 - 0x61C8864680B583ABLL) ^ 1) << 6) - 0x61C8864680B583EBLL) ^ (*a1 - 0x61C8864680B583ABLL) ^ 1;
  v3 = (a2[1] + ((*a2 - 0x61C8864680B583ABLL) >> 2) + (((*a2 - 0x61C8864680B583ABLL) ^ 1) << 6) - 0x61C8864680B583EBLL) ^ (*a2 - 0x61C8864680B583ABLL) ^ 1;
  return ((*(a1 + 1) + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583EBLL) ^ v2) < ((*(a2 + 1) + (v3 << 6) + (v3 >> 2) - 0x61C8864680B583EBLL) ^ v3);
}

uint64_t std::vector<unsigned int,geo::allocator_adapter<unsigned int,grl::zone_mallocator>>::vector[abi:nn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = *(a2 + 24);
  v4 = *a2;
  v3 = *(a2 + 8);
  v5 = v3 - *a2;
  if (v3 != *a2)
  {
    if ((v5 >> 2) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v6 = grl::zone_mallocator::instance(a1);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned int>(v6, v5 >> 2);
    *a1 = v7;
    *(a1 + 8) = v7;
    v8 = &v7[v5];
    *(a1 + 16) = &v7[v5];
    memmove(v7, v4, v5);
    *(a1 + 8) = v8;
  }

  return a1;
}

void grl::codec::IconMapPack::regionNameForID(std::string *this, const unsigned int *a2, unsigned int a3)
{
  v3 = *(a2 + 38);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = a2 + 76;
  do
  {
    v5 = *(v3 + 32);
    v6 = v5 >= a3;
    v7 = v5 < a3;
    if (v6)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * v7);
  }

  while (v3);
  if (v4 != a2 + 76 && v4[8] <= a3)
  {
    if (*(v4 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(this, *(v4 + 5), *(v4 + 6));
    }

    else
    {
      v8 = *(v4 + 10);
      this->__r_.__value_.__r.__words[2] = *(v4 + 7);
      *&this->__r_.__value_.__l.__data_ = v8;
    }
  }

  else
  {
LABEL_9:
    std::string::basic_string[abi:nn200100]<0>(this, "Default");
  }
}

grl::zone_mallocator *std::__split_buffer<std::pair<std::string,float>,geo::allocator_adapter<std::pair<std::string,float>,grl::zone_mallocator> &>::~__split_buffer(grl::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 4;
      *(a1 + 2) = v2 - 4;
      if (*(v2 - 9) < 0)
      {
        operator delete(*v4);
        v4 = *(a1 + 2);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  v5 = *a1;
  if (*a1)
  {
    v6 = grl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::TextureRect::TextureVBO>,geo::allocator_adapter<ggl::VertexDataTyped<ggl::TextureRect::TextureVBO>,ggl::zone_mallocator>>>(v6, v5);
  }

  return a1;
}

float *std::__hash_table<std::__hash_value_type<std::pair<std::string,float>,std::__list_iterator<std::pair<std::pair<std::string,float>,std::shared_ptr<grl::codec::IconDataPack>>,void *>>,std::__unordered_map_hasher<std::pair<std::string,float>,std::__hash_value_type<std::pair<std::string,float>,std::__list_iterator<std::pair<std::pair<std::string,float>,std::shared_ptr<grl::codec::IconDataPack>>,void *>>,grl::codec::PackKeyHash,std::equal_to<std::pair<std::string,float>>,true>,std::__unordered_map_equal<std::pair<std::string,float>,std::__hash_value_type<std::pair<std::string,float>,std::__list_iterator<std::pair<std::pair<std::string,float>,std::shared_ptr<grl::codec::IconDataPack>>,void *>>,std::equal_to<std::pair<std::string,float>>,grl::codec::PackKeyHash,true>,std::allocator<std::__hash_value_type<std::pair<std::string,float>,std::__list_iterator<std::pair<std::pair<std::string,float>,std::shared_ptr<grl::codec::IconDataPack>>,void *>>>>::find<std::pair<std::string,float>>(void *a1, const void **a2)
{
  v4 = grl::codec::PackKeyHash::operator()(a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

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
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    v12 = *(a2 + 23);
    if (v12 >= 0)
    {
      v13 = *(a2 + 23);
    }

    else
    {
      v13 = a2[1];
    }

    if (v12 >= 0)
    {
      v14 = a2;
    }

    else
    {
      v14 = *a2;
    }

    v15 = *(a2 + 6);
    do
    {
      v16 = *(v11 + 1);
      if (v16 == v6)
      {
        v17 = *(v11 + 39);
        v18 = v17;
        if ((v17 & 0x80u) != 0)
        {
          v17 = *(v11 + 3);
        }

        if (v17 == v13)
        {
          v19 = v18 >= 0 ? (v11 + 4) : *(v11 + 2);
          if (!memcmp(v19, v14, v13) && v11[10] == v15)
          {
            return v11;
          }
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v16 >= *&v5)
          {
            v16 %= *&v5;
          }
        }

        else
        {
          v16 &= *&v5 - 1;
        }

        if (v16 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

uint64_t geo::LRUPolicy<std::pair<std::string,float>,std::shared_ptr<grl::codec::IconDataPack>,grl::codec::PackKeyHash>::get(uint64_t a1, void *a2, const void **a3)
{
  v4 = std::__hash_table<std::__hash_value_type<std::pair<std::string,float>,std::__list_iterator<std::pair<std::pair<std::string,float>,std::shared_ptr<grl::codec::IconDataPack>>,void *>>,std::__unordered_map_hasher<std::pair<std::string,float>,std::__hash_value_type<std::pair<std::string,float>,std::__list_iterator<std::pair<std::pair<std::string,float>,std::shared_ptr<grl::codec::IconDataPack>>,void *>>,grl::codec::PackKeyHash,std::equal_to<std::pair<std::string,float>>,true>,std::__unordered_map_equal<std::pair<std::string,float>,std::__hash_value_type<std::pair<std::string,float>,std::__list_iterator<std::pair<std::pair<std::string,float>,std::shared_ptr<grl::codec::IconDataPack>>,void *>>,std::equal_to<std::pair<std::string,float>>,grl::codec::PackKeyHash,true>,std::allocator<std::__hash_value_type<std::pair<std::string,float>,std::__list_iterator<std::pair<std::pair<std::string,float>,std::shared_ptr<grl::codec::IconDataPack>>,void *>>>>::find<std::pair<std::string,float>>(a2, a3);
  if (v4)
  {
    v5 = *(a1 + 8);
    v6 = *(v4 + 6);
    if (v5 == v6)
    {
      return *(a1 + 8);
    }

    v7 = v6[1];
    if (v7 == v5)
    {
      return *(a1 + 8);
    }

    else
    {
      v8 = *v6;
      *(v8 + 8) = v7;
      *v7 = v8;
      v9 = *v5;
      *(v9 + 8) = v6;
      *v6 = v9;
      *v5 = v6;
      v6[1] = v5;
      return *(a1 + 8);
    }
  }

  return a1;
}

uint64_t geo::LRUPolicy<grl::codec::IconConfigPack::IconVariation,std::shared_ptr<std::map<grl::IconKey,std::shared_ptr<grl::codec::IconRenderItem>,std::less<grl::IconKey>,geo::allocator_adapter<std::pair<grl::IconKey const,std::shared_ptr<grl::codec::IconRenderItem>>,grl::zone_mallocator>>>,grl::codec::IconConfigPack::IconVariationHash>::get(uint64_t a1, void *a2, unsigned __int8 *a3)
{
  v4 = std::__hash_table<std::__hash_value_type<grl::codec::IconConfigPack::IconVariation,std::__list_iterator<std::pair<grl::codec::IconConfigPack::IconVariation,std::shared_ptr<std::map<grl::IconKey,std::shared_ptr<grl::codec::IconRenderItem>,std::less<grl::IconKey>,geo::allocator_adapter<std::pair<grl::IconKey const,std::shared_ptr<grl::codec::IconRenderItem>>,grl::zone_mallocator>>>>,void *>>,std::__unordered_map_hasher<grl::codec::IconConfigPack::IconVariation,std::__hash_value_type<grl::codec::IconConfigPack::IconVariation,std::__list_iterator<std::pair<grl::codec::IconConfigPack::IconVariation,std::shared_ptr<std::map<grl::IconKey,std::shared_ptr<grl::codec::IconRenderItem>,std::less<grl::IconKey>,geo::allocator_adapter<std::pair<grl::IconKey const,std::shared_ptr<grl::codec::IconRenderItem>>,grl::zone_mallocator>>>>,void *>>,grl::codec::IconConfigPack::IconVariationHash,std::equal_to<grl::codec::IconConfigPack::IconVariation>,true>,std::__unordered_map_equal<grl::codec::IconConfigPack::IconVariation,std::__hash_value_type<grl::codec::IconConfigPack::IconVariation,std::__list_iterator<std::pair<grl::codec::IconConfigPack::IconVariation,std::shared_ptr<std::map<grl::IconKey,std::shared_ptr<grl::codec::IconRenderItem>,std::less<grl::IconKey>,geo::allocator_adapter<std::pair<grl::IconKey const,std::shared_ptr<grl::codec::IconRenderItem>>,grl::zone_mallocator>>>>,void *>>,std::equal_to<grl::codec::IconConfigPack::IconVariation>,grl::codec::IconConfigPack::IconVariationHash,true>,std::allocator<std::__hash_value_type<grl::codec::IconConfigPack::IconVariation,std::__list_iterator<std::pair<grl::codec::IconConfigPack::IconVariation,std::shared_ptr<std::map<grl::IconKey,std::shared_ptr<grl::codec::IconRenderItem>,std::less<grl::IconKey>,geo::allocator_adapter<std::pair<grl::IconKey const,std::shared_ptr<grl::codec::IconRenderItem>>,grl::zone_mallocator>>>>,void *>>>>::find<grl::codec::IconConfigPack::IconVariation>(a2, a3);
  if (v4)
  {
    v5 = *(a1 + 8);
    v6 = v4[3];
    if (v5 == v6)
    {
      return *(a1 + 8);
    }

    v7 = v6[1];
    if (v7 == v5)
    {
      return *(a1 + 8);
    }

    else
    {
      v8 = *v6;
      v8[1] = v7;
      *v7 = v8;
      v9 = *v5;
      v9[1] = v6;
      *v6 = v9;
      *v5 = v6;
      v6[1] = v5;
      return *(a1 + 8);
    }
  }

  return a1;
}

uint64_t ***std::__hash_table<std::__hash_value_type<grl::codec::IconConfigPack::IconVariation,std::__list_iterator<std::pair<grl::codec::IconConfigPack::IconVariation,std::shared_ptr<std::map<grl::IconKey,std::shared_ptr<grl::codec::IconRenderItem>,std::less<grl::IconKey>,geo::allocator_adapter<std::pair<grl::IconKey const,std::shared_ptr<grl::codec::IconRenderItem>>,grl::zone_mallocator>>>>,void *>>,std::__unordered_map_hasher<grl::codec::IconConfigPack::IconVariation,std::__hash_value_type<grl::codec::IconConfigPack::IconVariation,std::__list_iterator<std::pair<grl::codec::IconConfigPack::IconVariation,std::shared_ptr<std::map<grl::IconKey,std::shared_ptr<grl::codec::IconRenderItem>,std::less<grl::IconKey>,geo::allocator_adapter<std::pair<grl::IconKey const,std::shared_ptr<grl::codec::IconRenderItem>>,grl::zone_mallocator>>>>,void *>>,grl::codec::IconConfigPack::IconVariationHash,std::equal_to<grl::codec::IconConfigPack::IconVariation>,true>,std::__unordered_map_equal<grl::codec::IconConfigPack::IconVariation,std::__hash_value_type<grl::codec::IconConfigPack::IconVariation,std::__list_iterator<std::pair<grl::codec::IconConfigPack::IconVariation,std::shared_ptr<std::map<grl::IconKey,std::shared_ptr<grl::codec::IconRenderItem>,std::less<grl::IconKey>,geo::allocator_adapter<std::pair<grl::IconKey const,std::shared_ptr<grl::codec::IconRenderItem>>,grl::zone_mallocator>>>>,void *>>,std::equal_to<grl::codec::IconConfigPack::IconVariation>,grl::codec::IconConfigPack::IconVariationHash,true>,std::allocator<std::__hash_value_type<grl::codec::IconConfigPack::IconVariation,std::__list_iterator<std::pair<grl::codec::IconConfigPack::IconVariation,std::shared_ptr<std::map<grl::IconKey,std::shared_ptr<grl::codec::IconRenderItem>,std::less<grl::IconKey>,geo::allocator_adapter<std::pair<grl::IconKey const,std::shared_ptr<grl::codec::IconRenderItem>>,grl::zone_mallocator>>>>,void *>>>>::find<grl::codec::IconConfigPack::IconVariation>(void *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = *(a2 + 1);
  v5 = (v4 + ((v3 - 0x61C8864680B583EBLL) << 6) + ((v3 - 0x61C8864680B583EBLL) >> 2) - 0x61C8864680B583EBLL) ^ (v3 - 0x61C8864680B583EBLL);
  v6 = *(a2 + 2);
  v7 = (v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583EBLL) ^ v5;
  v8 = vcnt_s8(v2);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = (v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583EBLL) ^ v5;
    if (v7 >= *&v2)
    {
      v9 = v7 % *&v2;
    }
  }

  else
  {
    v9 = v7 & (*&v2 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (result = *v10; result; result = *result)
  {
    v12 = result[1];
    if (v12 == v7)
    {
      if (*(result + 16) == v3 && __PAIR64__(*(result + 10), *(result + 9)) == __PAIR64__(v6, v4))
      {
        return result;
      }
    }

    else
    {
      if (v8.u32[0] > 1uLL)
      {
        if (v12 >= *&v2)
        {
          v12 %= *&v2;
        }
      }

      else
      {
        v12 &= *&v2 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t std::__tree<std::__value_type<grl::IconKey,std::shared_ptr<grl::codec::IconRenderItem>>,std::__map_value_compare<grl::IconKey,std::__value_type<grl::IconKey,std::shared_ptr<grl::codec::IconRenderItem>>,std::less<grl::IconKey>,true>,geo::allocator_adapter<std::__value_type<grl::IconKey,std::shared_ptr<grl::codec::IconRenderItem>>,grl::zone_mallocator>>::find<grl::IconKey>(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = grl::IconKey::operator<(v3 + 32, a2);
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v5 = v3;
    }

    v3 = *(v3 + v7);
  }

  while (v3);
  if (v5 == v2 || grl::IconKey::operator<(a2, v5 + 32))
  {
    return v2;
  }

  return v5;
}

BOOL grl::IconKey::operator<(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v4 = v2 >= v3;
  if (v2 == v3)
  {
    v5 = *(a1 + 20);
    v6 = *(a2 + 20);
    v4 = v5 >= v6;
    if (v5 == v6)
    {
      v7 = *(a1 + 22);
      v8 = *(a2 + 22);
      v4 = v7 >= v8;
      if (v7 == v8)
      {
        v4 = *(a1 + 24) >= *(a2 + 24);
      }
    }
  }

  return !v4;
}

void std::vector<std::pair<std::string,float>,geo::allocator_adapter<std::pair<std::string,float>,grl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](void ****result)
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
        v6 = *(v3 - 9);
        v3 -= 4;
        if (v6 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = **result;
    }

    v1[1] = v2;
    v7 = grl::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::TextureRect::TextureVBO>,geo::allocator_adapter<ggl::VertexDataTyped<ggl::TextureRect::TextureVBO>,ggl::zone_mallocator>>>(v7, v4);
  }
}

void grl::codec::IconRenderItem::forEachTextLayer(uint64_t result, grl::IconModifiers *a2, uint64_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  if (*(a2 + 16) && !*(result + 80))
  {
    grl::codec::TextLayerData::TextLayerData(v24, 0, 0, a2);
    std::function<void ()(unsigned short,grl::codec::TextLayerData const&)>::operator()(*(a3 + 24), 0);
    if (v30 < 0)
    {
      operator delete(__p);
    }

    if (v28 < 0)
    {
      operator delete(v27);
    }

    if (v26 < 0)
    {
      operator delete(v25);
    }

    std::vector<void const*,geo::allocator_adapter<void const*,grl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v24);
  }

  v6 = *(result + 56);
  v7 = (result + 64);
  if (v6 != (result + 64))
  {
    do
    {
      v8 = *(v6 + 16);
      if (*(a2 + 16) || (*(a2 + 52) & 1) != 0 || (*(a2 + 30) & 1) != 0 || *a2 == 1)
      {
        v9 = *v7;
      }

      else
      {
        v9 = *v7;
        if ((*(a2 + 6) & 1) == 0)
        {
          if (v9)
          {
            v19 = v7;
            v20 = *v7;
            do
            {
              v21 = *(v20 + 16);
              v13 = v21 >= v8;
              v22 = v21 < v8;
              if (v13)
              {
                v19 = v20;
              }

              v20 = v20[v22];
            }

            while (v20);
            if (v19 != v7 && *(v19 + 16) <= v8)
            {
              v23 = std::map<unsigned short,grl::codec::PathLayerData,std::less<unsigned short>,geo::allocator_adapter<std::pair<unsigned short const,grl::codec::PathLayerData>,grl::zone_mallocator>>::at(v9, *(v6 + 16));
              grl::codec::TextLayerData::TextLayerData(v24, v23);
              goto LABEL_25;
            }
          }

          goto LABEL_24;
        }
      }

      if (v9)
      {
        v10 = v7;
        v11 = v9;
        do
        {
          v12 = *(v11 + 16);
          v13 = v12 >= v8;
          v14 = v12 < v8;
          if (v13)
          {
            v10 = v11;
          }

          v11 = v11[v14];
        }

        while (v11);
        if (v10 != v7 && *(v10 + 16) <= v8)
        {
          v18 = std::map<unsigned short,grl::codec::PathLayerData,std::less<unsigned short>,geo::allocator_adapter<std::pair<unsigned short const,grl::codec::PathLayerData>,grl::zone_mallocator>>::at(v9, *(v6 + 16));
          grl::codec::TextLayerData::TextLayerData(v24, v18, v8, a2);
          goto LABEL_25;
        }
      }

LABEL_24:
      grl::codec::TextLayerData::TextLayerData(v24);
LABEL_25:
      std::function<void ()(unsigned short,grl::codec::TextLayerData const&)>::operator()(*(a3 + 24), v8);
      if (v30 < 0)
      {
        operator delete(__p);
      }

      if (v28 < 0)
      {
        operator delete(v27);
      }

      if (v26 < 0)
      {
        operator delete(v25);
      }

      std::vector<void const*,geo::allocator_adapter<void const*,grl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v24);
      v15 = v6[1];
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = v6[2];
          v17 = *v16 == v6;
          v6 = v16;
        }

        while (!v17);
      }

      v6 = v16;
    }

    while (v16 != v7);
  }
}

grl::codec::TextLayerData *grl::codec::TextLayerData::TextLayerData(grl::codec::TextLayerData *this, const grl::codec::TextLayerData *a2)
{
  v4 = std::vector<grl::LayerStyle,geo::allocator_adapter<grl::LayerStyle,grl::zone_mallocator>>::vector[abi:nn200100](this, a2);
  *(v4 + 32) = *(a2 + 8);
  *(v4 + 36) = *(a2 + 36);
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((this + 40), *(a2 + 5), *(a2 + 6));
  }

  else
  {
    v5 = *(a2 + 40);
    *(this + 7) = *(a2 + 7);
    *(this + 40) = v5;
  }

  *(this + 16) = *(a2 + 16);
  *(this + 17) = *(a2 + 17);
  v6 = *(a2 + 9);
  *(this + 20) = *(a2 + 20);
  *(this + 9) = v6;
  *(this + 21) = *(a2 + 21);
  if (*(a2 + 111) < 0)
  {
    std::string::__init_copy_ctor_external((this + 88), *(a2 + 11), *(a2 + 12));
  }

  else
  {
    v7 = *(a2 + 88);
    *(this + 13) = *(a2 + 13);
    *(this + 88) = v7;
  }

  *(this + 28) = *(a2 + 28);
  *(this + 29) = *(a2 + 29);
  *(this + 30) = *(a2 + 30);
  *(this + 31) = *(a2 + 31);
  v8 = *(a2 + 16);
  *(this + 34) = *(a2 + 34);
  *(this + 16) = v8;
  if (*(a2 + 167) < 0)
  {
    std::string::__init_copy_ctor_external(this + 6, *(a2 + 18), *(a2 + 19));
  }

  else
  {
    v9 = *(a2 + 9);
    *(this + 20) = *(a2 + 20);
    *(this + 9) = v9;
  }

  v10 = *(a2 + 21);
  *(this + 88) = *(a2 + 88);
  *(this + 21) = v10;
  return this;
}

uint64_t **std::map<unsigned short,grl::codec::PathLayerData,std::less<unsigned short>,geo::allocator_adapter<std::pair<unsigned short const,grl::codec::PathLayerData>,grl::zone_mallocator>>::at(uint64_t ***a1, unsigned __int16 a2)
{
  if (!a1)
  {
LABEL_7:
    abort();
  }

  while (1)
  {
    while (1)
    {
      v2 = *(a1 + 16);
      if (v2 <= a2)
      {
        break;
      }

      a1 = *a1;
      if (!a1)
      {
        goto LABEL_7;
      }
    }

    if (v2 >= a2)
    {
      return (a1 + 5);
    }

    a1 = a1[1];
    if (!a1)
    {
      goto LABEL_7;
    }
  }
}

uint64_t std::vector<grl::LayerStyle,geo::allocator_adapter<grl::LayerStyle,grl::zone_mallocator>>::vector[abi:nn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = *(a2 + 24);
  v4 = *a2;
  v3 = *(a2 + 8);
  v5 = v3 - *a2;
  if (v3 != *a2)
  {
    std::vector<grl::LayerStyle,geo::allocator_adapter<grl::LayerStyle,grl::zone_mallocator>>::__vallocate[abi:nn200100](a1, v3 - *a2);
    v6 = *(a1 + 8);
    memmove(v6, v4, v5);
    *(a1 + 8) = &v6[v5];
  }

  return a1;
}

void std::vector<grl::LayerStyle,geo::allocator_adapter<grl::LayerStyle,grl::zone_mallocator>>::__vallocate[abi:nn200100](grl::zone_mallocator *a1, size_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v4 = grl::zone_mallocator::instance(a1);
  geo::read_write_lock::read_lock((v4 + 32));
  v5 = malloc_type_zone_malloc(*v4, a2, 0x100004077774924uLL);
  atomic_fetch_add((v4 + 24), 1u);
  geo::read_write_lock::unlock((v4 + 32));
  *a1 = v5;
  *(a1 + 1) = v5;
  *(a1 + 2) = &v5[a2];
}

uint64_t std::__tree<std::string,std::less<std::string>,geo::allocator_adapter<std::string,grl::zone_mallocator>>::__emplace_unique_key_args<std::string,std::string>(uint64_t result, void ***a2, __int128 *a3)
{
  v4 = result;
  v6 = (result + 8);
  v5 = *(result + 8);
  if (v5)
  {
    do
    {
      while (1)
      {
        v6 = v5;
        result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(a2, (v5 + 32));
        if ((result & 0x80) == 0)
        {
          break;
        }

        v5 = *v6;
        v8 = v6;
        if (!*v6)
        {
          goto LABEL_9;
        }
      }

      result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(v6 + 4, a2);
      if ((result & 0x80) == 0)
      {
        return result;
      }

      v8 = v6 + 1;
      v5 = v6[1];
    }

    while (v5);
  }

  else
  {
    v8 = (result + 8);
  }

LABEL_9:
  v9 = grl::zone_mallocator::instance(result);
  geo::read_write_lock::read_lock((v9 + 32));
  v10 = malloc_type_zone_malloc(*v9, 0x38uLL, 0x10320405564E975uLL);
  atomic_fetch_add((v9 + 24), 1u);
  geo::read_write_lock::unlock((v9 + 32));
  v11 = *a3;
  v10[6] = *(a3 + 2);
  *(v10 + 2) = v11;
  *a3 = 0;
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *v10 = 0;
  v10[1] = 0;
  v10[2] = v6;
  *v8 = v10;
  v12 = **v4;
  if (v12)
  {
    *v4 = v12;
    v10 = *v8;
  }

  result = std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(*(v4 + 8), v10);
  ++*(v4 + 24);
  return result;
}

void std::__function::__func<grl::codec::IconRenderItem::requiresFonts(std::set<std::string,std::less<std::string>,geo::allocator_adapter<std::string,grl::zone_mallocator>> &,grl::IconModifiers const&)::$_0,std::allocator<grl::codec::IconRenderItem::requiresFonts(std::set<std::string,std::less<std::string>,geo::allocator_adapter<std::string,grl::zone_mallocator>> &,grl::IconModifiers const&)::$_0>,void ()(unsigned short,grl::codec::TextLayerData const&)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  if (*(a3 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a3 + 40), *(a3 + 48));
  }

  else
  {
    __p = *(a3 + 40);
  }

  std::__tree<std::string,std::less<std::string>,geo::allocator_adapter<std::string,grl::zone_mallocator>>::__emplace_unique_key_args<std::string,std::string>(v5, &__p, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v6 = *(a1 + 8);
  if (*(a3 + 111) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a3 + 88), *(a3 + 96));
  }

  else
  {
    __p = *(a3 + 88);
  }

  std::__tree<std::string,std::less<std::string>,geo::allocator_adapter<std::string,grl::zone_mallocator>>::__emplace_unique_key_args<std::string,std::string>(v6, &__p, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

uint64_t std::function<void ()(unsigned short,grl::codec::TextLayerData const&)>::operator()(uint64_t a1, __int16 a2)
{
  v4 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v4);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__value_func<void ()(unsigned short,grl::codec::TextLayerData const&)>::~__value_func[abi:nn200100](v3);
}

uint64_t std::__function::__value_func<void ()(unsigned short,grl::codec::TextLayerData const&)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void grl::FontManager::fontForKey(grl::FontManager *a1, const grl::FontKey *a2, __int128 *a3, float a4)
{
  grl::FontKey::FontKey(v6, a3, a4);
  grl::FontManager::fontForKey(a1, a2, v6);
  esl::FontKey::~FontKey(v6);
}

void *std::string::basic_string[abi:ne200100]<0>(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
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

uint64_t esl::FontKey::FontKey(uint64_t a1, __int128 *a2, char a3, float a4)
{
  *a1 = &unk_1F29E15C0;
  *(a1 + 8) = 0;
  *(a1 + 12) = 0;
  *(a1 + 16) = a4;
  *(a1 + 20) = 1120403456;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = a3;
  std::string::basic_string[abi:ne200100]<0>((a1 + 48), "");
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 72), *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    *(a1 + 88) = *(a2 + 2);
    *(a1 + 72) = v6;
  }

  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 120) = 0;
  *(a1 + 112) = 0;
  return a1;
}

void sub_1B2B3A968(_Unwind_Exception *a1)
{
  if (*(v2 + 71) < 0)
  {
    operator delete(*(v2 + 48));
  }

  geo::optional<int>::~optional(v3);
  geo::optional<float>::~optional(v1);
  _Unwind_Resume(a1);
}

uint64_t grl::FontKey::FontKey(uint64_t a1, __int128 *a2, float a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = esl::FontKey::FontKey(a1, a2, 4, a3);
  *v4 = &unk_1F2A5F678;
  memset(&__p, 0, sizeof(__p));
  v5 = esl::FontKey::initialize(v4, &__p);
  if ((v5 - 1) >= 2)
  {
    if (v5 == 3)
    {
      if (GEOGetGeoResourceLibFontLog::onceToken != -1)
      {
        dispatch_once(&GEOGetGeoResourceLibFontLog::onceToken, &__block_literal_global_17_53800);
      }

      v11 = GEOGetGeoResourceLibFontLog::log;
      if (os_log_type_enabled(GEOGetGeoResourceLibFontLog::log, OS_LOG_TYPE_ERROR))
      {
        p_p = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136315138;
        v16 = p_p;
        v8 = "%s";
        v9 = v11;
        v10 = 12;
        goto LABEL_15;
      }
    }
  }

  else
  {
    if (GEOGetGeoResourceLibFontLog::onceToken != -1)
    {
      dispatch_once(&GEOGetGeoResourceLibFontLog::onceToken, &__block_literal_global_17_53800);
    }

    v6 = GEOGetGeoResourceLibFontLog::log;
    if (os_log_type_enabled(GEOGetGeoResourceLibFontLog::log, OS_LOG_TYPE_ERROR))
    {
      v7 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v7 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315906;
      v16 = v7;
      v17 = 2080;
      v18 = "false";
      v19 = 2080;
      v20 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoResourceLib/GeoResourceLib/Renderer/FontKey.cpp";
      v21 = 1024;
      v22 = 42;
      v8 = "%s: Assertion with expression - %s : Failed in file - %s line - %i";
      v9 = v6;
      v10 = 38;
LABEL_15:
      _os_log_impl(&dword_1B2754000, v9, OS_LOG_TYPE_ERROR, v8, buf, v10);
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return a1;
}

uint64_t esl::FontKey::initialize(uint64_t a1, std::string *a2)
{
  v2 = (a1 + 72);
  if (*(a1 + 95) < 0)
  {
    if (*(a1 + 80) < 2uLL)
    {
      goto LABEL_8;
    }

    v3 = v2->__r_.__value_.__r.__words[0];
  }

  else
  {
    v3 = (a1 + 72);
    if (*(a1 + 95) < 2u)
    {
      goto LABEL_8;
    }
  }

  if (*v3 == 37)
  {
    esl::FontKey::tokenize(&v5, (a1 + 72));
  }

LABEL_8:
  std::string::operator=((a1 + 48), v2);
  return 0;
}

void sub_1B2B3B424(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, __int16 a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32)
{
  geo::optional<esl::FontWeight>::~optional(&a11);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  std::__list_imp<std::string>::clear(&a32);
  _Unwind_Resume(a1);
}

void grl::FontManager::fontForKey(grl::FontManager *this, const grl::FontKey *a2, uint64_t a3)
{
  v126 = *MEMORY[0x1E69E9840];
  std::mutex::lock((a2 + 168));
  v6 = *(a3 + 95);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a3 + 80);
  }

  if (!v6)
  {
    *this = &unk_1F2A5F810;
    *(this + 1) = 0;
    goto LABEL_329;
  }

  v105 = &unk_1F2A5F810;
  v106 = 0;
  if ((a2 + 144) == geo::LRUPolicy<grl::FontKey,geo::_retain_ptr<__CTFont const*,geo::_retain_cf<__CTFont const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>,std::hash<grl::FontKey>>::get(a2 + 144, a2 + 13, a3))
  {
    v9 = a3 + 72;
    if (*(a3 + 11) == 1)
    {
      v10 = *(a3 + 71);
      if ((v10 & 0x80u) != 0)
      {
        v10 = *(a3 + 56);
      }

      if (v10)
      {
        (*(**(a2 + 1) + 48))(buf);
        if (*&buf[8] == *buf)
        {
          if (GEOGetGeoResourceLibFontLog::onceToken != -1)
          {
            dispatch_once(&GEOGetGeoResourceLibFontLog::onceToken, &__block_literal_global_17_53800);
          }

          v20 = GEOGetGeoResourceLibFontLog::log;
          if (os_log_type_enabled(GEOGetGeoResourceLibFontLog::log, OS_LOG_TYPE_ERROR))
          {
            if (*(a3 + 71) >= 0)
            {
              v21 = a3 + 48;
            }

            else
            {
              v21 = *(a3 + 48);
            }

            LODWORD(v117[0]) = 136315138;
            *(v117 + 4) = v21;
            _os_log_impl(&dword_1B2754000, v20, OS_LOG_TYPE_ERROR, "Failed to read resource font from manifest, %s.", v117, 0xCu);
          }

          *&v118[0] = &unk_1F2A5F810;
          *(&v118[0] + 1) = 0;
        }

        else
        {
          v11 = CFDataCreate(0, *buf, *&buf[8] - *buf);
          *&v117[0] = &unk_1F2A5F718;
          *(&v117[0] + 1) = v11;
          if (v11)
          {
            v12 = CGDataProviderCreateWithCFData(v11);
            *&v116[0] = &unk_1F2A5F738;
            *(&v116[0] + 1) = v12;
            if (v12)
            {
              v13 = CGFontCreateWithDataProvider(v12);
              *&v125 = &unk_1F2A5F758;
              *(&v125 + 1) = v13;
              CFRelease(*(&v116[0] + 1));
              *(&v116[0] + 1) = 0;
              if (*(&v125 + 1))
              {
                v14 = CTFontCreateWithGraphicsFont(*(&v125 + 1), *(a3 + 16), 0, 0);
                *&v119[0] = &unk_1F2A5F810;
                *(&v119[0] + 1) = v14;
                if (v14)
                {
                  *&v118[0] = &unk_1F2A5F810;
                  *(&v118[0] + 1) = v14;
                }

                else
                {
                  if (GEOGetGeoResourceLibCoreFoundationLog::onceToken != -1)
                  {
                    dispatch_once(&GEOGetGeoResourceLibCoreFoundationLog::onceToken, &__block_literal_global_33_53824);
                  }

                  v56 = GEOGetGeoResourceLibCoreFoundationLog::log;
                  if (os_log_type_enabled(GEOGetGeoResourceLibCoreFoundationLog::log, OS_LOG_TYPE_ERROR))
                  {
                    if (*(a3 + 95) >= 0)
                    {
                      v57 = a3 + 72;
                    }

                    else
                    {
                      v57 = *(a3 + 72);
                    }

                    LODWORD(v118[0]) = 136315138;
                    *(v118 + 4) = v57;
                    _os_log_impl(&dword_1B2754000, v56, OS_LOG_TYPE_ERROR, "Failed to create CTFont from CGFont for font name %s.", v118, 0xCu);
                  }

                  *&v118[0] = &unk_1F2A5F810;
                  *(&v118[0] + 1) = 0;
                  *&v119[0] = &unk_1F2A5F810;
                  if (*(&v119[0] + 1))
                  {
                    CFRelease(*(&v119[0] + 1));
                  }
                }
              }

              else
              {
                if (GEOGetGeoResourceLibCoreGraphicsLog::onceToken != -1)
                {
                  dispatch_once(&GEOGetGeoResourceLibCoreGraphicsLog::onceToken, &__block_literal_global_37_53830);
                }

                v30 = GEOGetGeoResourceLibCoreGraphicsLog::log;
                if (os_log_type_enabled(GEOGetGeoResourceLibCoreGraphicsLog::log, OS_LOG_TYPE_ERROR))
                {
                  if (*(a3 + 71) >= 0)
                  {
                    v31 = a3 + 48;
                  }

                  else
                  {
                    v31 = *(a3 + 48);
                  }

                  LODWORD(v119[0]) = 136315138;
                  *(v119 + 4) = v31;
                  _os_log_impl(&dword_1B2754000, v30, OS_LOG_TYPE_ERROR, "Failed to create CGFont from data provider for font name %s.", v119, 0xCu);
                }

                *&v118[0] = &unk_1F2A5F810;
                *(&v118[0] + 1) = 0;
                v9 = a3 + 72;
              }

              *&v125 = &unk_1F2A5F758;
              if (*(&v125 + 1))
              {
                CFRelease(*(&v125 + 1));
              }
            }

            else
            {
              if (GEOGetGeoResourceLibCoreFoundationLog::onceToken != -1)
              {
                dispatch_once(&GEOGetGeoResourceLibCoreFoundationLog::onceToken, &__block_literal_global_33_53824);
              }

              v28 = GEOGetGeoResourceLibCoreFoundationLog::log;
              if (os_log_type_enabled(GEOGetGeoResourceLibCoreFoundationLog::log, OS_LOG_TYPE_ERROR))
              {
                if (*(a3 + 71) >= 0)
                {
                  v29 = a3 + 48;
                }

                else
                {
                  v29 = *(a3 + 48);
                }

                LODWORD(v125) = 136315138;
                *(&v125 + 4) = v29;
                _os_log_impl(&dword_1B2754000, v28, OS_LOG_TYPE_ERROR, "Failed to create CFDataProvider for font name %s.", &v125, 0xCu);
              }

              *&v118[0] = &unk_1F2A5F810;
              *(&v118[0] + 1) = 0;
            }

            *&v116[0] = &unk_1F2A5F738;
          }

          else
          {
            if (GEOGetGeoResourceLibCoreFoundationLog::onceToken != -1)
            {
              dispatch_once(&GEOGetGeoResourceLibCoreFoundationLog::onceToken, &__block_literal_global_33_53824);
            }

            v24 = GEOGetGeoResourceLibCoreFoundationLog::log;
            if (os_log_type_enabled(GEOGetGeoResourceLibCoreFoundationLog::log, OS_LOG_TYPE_ERROR))
            {
              if (*(a3 + 71) >= 0)
              {
                v25 = a3 + 48;
              }

              else
              {
                v25 = *(a3 + 48);
              }

              LODWORD(v116[0]) = 136315138;
              *(v116 + 4) = v25;
              _os_log_impl(&dword_1B2754000, v24, OS_LOG_TYPE_ERROR, "Failed to generate CFData for font from manifest with name %s.", v116, 0xCu);
            }

            *&v118[0] = &unk_1F2A5F810;
            *(&v118[0] + 1) = 0;
          }

          *&v117[0] = &unk_1F2A5F718;
          if (*(&v117[0] + 1))
          {
            CFRelease(*(&v117[0] + 1));
          }
        }

        if (*buf)
        {
          *&buf[8] = *buf;
          operator delete(*buf);
        }
      }

      else
      {
        if (GEOGetGeoResourceLibFontLog::onceToken != -1)
        {
          dispatch_once(&GEOGetGeoResourceLibFontLog::onceToken, &__block_literal_global_17_53800);
        }

        v17 = GEOGetGeoResourceLibFontLog::log;
        if (os_log_type_enabled(GEOGetGeoResourceLibFontLog::log, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1B2754000, v17, OS_LOG_TYPE_ERROR, "Font name is empty, can't create font.", buf, 2u);
        }

        *&v118[0] = &unk_1F2A5F810;
        *(&v118[0] + 1) = 0;
      }

      v58 = *(&v118[0] + 1);
LABEL_317:
      v106 = v58;
      if (v58)
      {
        v104[1] = &unk_1F2A5F810;
        CFRetain(v58);
        v104[2] = v58;
        geo::Cache<grl::FontKey,geo::_retain_ptr<__CTFont const*,geo::_retain_cf<__CTFont const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>,std::hash<grl::FontKey>,geo::LRUPolicy>::insert(a2 + 96, a3, v58);
      }

      if (GEOGetGeoResourceLibCoreFoundationLog::onceToken != -1)
      {
        dispatch_once(&GEOGetGeoResourceLibCoreFoundationLog::onceToken, &__block_literal_global_33_53824);
      }

      v97 = GEOGetGeoResourceLibCoreFoundationLog::log;
      if (os_log_type_enabled(GEOGetGeoResourceLibCoreFoundationLog::log, OS_LOG_TYPE_ERROR))
      {
        if (*(a3 + 95) >= 0)
        {
          v98 = v9;
        }

        else
        {
          v98 = *(a3 + 72);
        }

        *buf = 136315138;
        *&buf[4] = v98;
        _os_log_impl(&dword_1B2754000, v97, OS_LOG_TYPE_ERROR, "Failed to load a font from disk/manifest for font name %s.", buf, 0xCu);
      }

      v8 = 0;
      *this = &unk_1F2A5F810;
      goto LABEL_327;
    }

    grl::createCFMutableDictionary(&v125);
    if (!*(&v125 + 1))
    {
      if (GEOGetGeoResourceLibCoreFoundationLog::onceToken != -1)
      {
        dispatch_once(&GEOGetGeoResourceLibCoreFoundationLog::onceToken, &__block_literal_global_33_53824);
      }

      v18 = GEOGetGeoResourceLibCoreFoundationLog::log;
      if (os_log_type_enabled(GEOGetGeoResourceLibCoreFoundationLog::log, OS_LOG_TYPE_ERROR))
      {
        if (*(a3 + 95) >= 0)
        {
          v19 = a3 + 72;
        }

        else
        {
          v19 = *(a3 + 72);
        }

        *buf = 136315906;
        *&buf[4] = v19;
        *&buf[12] = 2080;
        *&buf[14] = "!GRL_SUFFIX_LINE_NUMBER(didTriggerAssert)";
        v121 = 2080;
        v122 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoResourceLib/GeoResourceLib/Renderer/FontKey.cpp";
        v123 = 1024;
        v124 = 60;
        _os_log_impl(&dword_1B2754000, v18, OS_LOG_TYPE_ERROR, "Failed to create traits dictionary for font %s.: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x26u);
      }

      v107 = &unk_1F2A5F6F8;
      descriptor = 0;
      goto LABEL_290;
    }

    grl::createCFMutableDictionary(v119);
    if (!*(&v119[0] + 1))
    {
      if (GEOGetGeoResourceLibCoreFoundationLog::onceToken != -1)
      {
        dispatch_once(&GEOGetGeoResourceLibCoreFoundationLog::onceToken, &__block_literal_global_33_53824);
      }

      v22 = GEOGetGeoResourceLibCoreFoundationLog::log;
      if (os_log_type_enabled(GEOGetGeoResourceLibCoreFoundationLog::log, OS_LOG_TYPE_ERROR))
      {
        if (*(a3 + 95) >= 0)
        {
          v23 = a3 + 72;
        }

        else
        {
          v23 = *(a3 + 72);
        }

        *buf = 136315906;
        *&buf[4] = v23;
        *&buf[12] = 2080;
        *&buf[14] = "!GRL_SUFFIX_LINE_NUMBER(didTriggerAssert)";
        v121 = 2080;
        v122 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoResourceLib/GeoResourceLib/Renderer/FontKey.cpp";
        v123 = 1024;
        v124 = 64;
        _os_log_impl(&dword_1B2754000, v22, OS_LOG_TYPE_ERROR, "Failed to create variations dictionary for font %s.: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x26u);
      }

      v107 = &unk_1F2A5F6F8;
      descriptor = 0;
      goto LABEL_288;
    }

    *&v118[0] = &unk_1F29E14A8;
    *(&v118[0] + 1) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    if (!*(&v118[0] + 1))
    {
      if (GEOGetGeoResourceLibCoreFoundationLog::onceToken != -1)
      {
        dispatch_once(&GEOGetGeoResourceLibCoreFoundationLog::onceToken, &__block_literal_global_33_53824);
      }

      v26 = GEOGetGeoResourceLibCoreFoundationLog::log;
      if (os_log_type_enabled(GEOGetGeoResourceLibCoreFoundationLog::log, OS_LOG_TYPE_ERROR))
      {
        if (*(a3 + 95) >= 0)
        {
          v27 = a3 + 72;
        }

        else
        {
          v27 = *(a3 + 72);
        }

        *buf = 136315906;
        *&buf[4] = v27;
        *&buf[12] = 2080;
        *&buf[14] = "!GRL_SUFFIX_LINE_NUMBER(didTriggerAssert)";
        v121 = 2080;
        v122 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoResourceLib/GeoResourceLib/Renderer/FontKey.cpp";
        v123 = 1024;
        v124 = 68;
        _os_log_impl(&dword_1B2754000, v26, OS_LOG_TYPE_ERROR, "Failed to create settings array for font %s.: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x26u);
      }

      v107 = &unk_1F2A5F6F8;
      descriptor = 0;
      goto LABEL_286;
    }

    if ((*(a3 + 9) & 1) != 0 || *(a3 + 10))
    {
      v15 = *(a3 + 9) ? *(a3 + 10) | 0x40 : *(a3 + 10);
      grl::createCFNumber(v117, v15);
      v16 = *(&v117[0] + 1);
      if (*(&v117[0] + 1))
      {
        CFDictionarySetValue(*(&v125 + 1), *MEMORY[0x1E6965870], *(&v117[0] + 1));
      }

      else
      {
        if (GEOGetGeoResourceLibCoreFoundationLog::onceToken != -1)
        {
          dispatch_once(&GEOGetGeoResourceLibCoreFoundationLog::onceToken, &__block_literal_global_33_53824);
        }

        v32 = GEOGetGeoResourceLibCoreFoundationLog::log;
        if (os_log_type_enabled(GEOGetGeoResourceLibCoreFoundationLog::log, OS_LOG_TYPE_ERROR))
        {
          if (*(a3 + 95) >= 0)
          {
            v33 = a3 + 72;
          }

          else
          {
            v33 = *(a3 + 72);
          }

          *buf = 136315906;
          *&buf[4] = v33;
          *&buf[12] = 2080;
          *&buf[14] = "!GRL_SUFFIX_LINE_NUMBER(didTriggerAssert)";
          v121 = 2080;
          v122 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoResourceLib/GeoResourceLib/Renderer/FontKey.cpp";
          v123 = 1024;
          v124 = 89;
          _os_log_impl(&dword_1B2754000, v32, OS_LOG_TYPE_ERROR, "Failed to create CFNumber for CTFontSymbolicTraits, for font name %s.: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x26u);
        }

        v107 = &unk_1F2A5F6F8;
        descriptor = 0;
      }

      *&v117[0] = &unk_1F2A5F6D8;
      if (*(&v117[0] + 1))
      {
        CFRelease(*(&v117[0] + 1));
      }

      if (!v16)
      {
LABEL_286:
        *&v118[0] = &unk_1F29E14A8;
        if (*(&v118[0] + 1))
        {
          CFRelease(*(&v118[0] + 1));
        }

LABEL_288:
        *&v119[0] = &unk_1F2A5EFA0;
        if (*(&v119[0] + 1))
        {
          CFRelease(*(&v119[0] + 1));
        }

LABEL_290:
        *&v125 = &unk_1F2A5EFA0;
        if (*(&v125 + 1))
        {
          CFRelease(*(&v125 + 1));
        }

        if (descriptor)
        {
          v92 = CTFontCreateWithFontDescriptor(descriptor, *(a3 + 16), 0);
          *buf = &unk_1F2A5F810;
          *&buf[8] = v92;
          if (v92)
          {
            *&v117[0] = &unk_1F2A5F810;
            *(&v117[0] + 1) = v92;
          }

          else
          {
            if (GEOGetGeoResourceLibCoreFoundationLog::onceToken != -1)
            {
              dispatch_once(&GEOGetGeoResourceLibCoreFoundationLog::onceToken, &__block_literal_global_33_53824);
            }

            v95 = GEOGetGeoResourceLibCoreFoundationLog::log;
            if (os_log_type_enabled(GEOGetGeoResourceLibCoreFoundationLog::log, OS_LOG_TYPE_ERROR))
            {
              if (*(a3 + 95) >= 0)
              {
                v96 = a3 + 72;
              }

              else
              {
                v96 = *(a3 + 72);
              }

              LODWORD(v117[0]) = 136315138;
              *(v117 + 4) = v96;
              _os_log_impl(&dword_1B2754000, v95, OS_LOG_TYPE_ERROR, "Failed to create CTFont for font name %s.", v117, 0xCu);
            }

            *&v117[0] = &unk_1F2A5F810;
            *(&v117[0] + 1) = 0;
            *buf = &unk_1F2A5F810;
            if (*&buf[8])
            {
              CFRelease(*&buf[8]);
            }
          }
        }

        else
        {
          if (GEOGetGeoResourceLibCoreFoundationLog::onceToken != -1)
          {
            dispatch_once(&GEOGetGeoResourceLibCoreFoundationLog::onceToken, &__block_literal_global_33_53824);
          }

          v93 = GEOGetGeoResourceLibCoreFoundationLog::log;
          if (os_log_type_enabled(GEOGetGeoResourceLibCoreFoundationLog::log, OS_LOG_TYPE_ERROR))
          {
            if (*(a3 + 95) >= 0)
            {
              v94 = a3 + 72;
            }

            else
            {
              v94 = *(a3 + 72);
            }

            *buf = 136315138;
            *&buf[4] = v94;
            _os_log_impl(&dword_1B2754000, v93, OS_LOG_TYPE_ERROR, "Failed to create CTFontDescriptor for font name %s.", buf, 0xCu);
          }

          *&v117[0] = &unk_1F2A5F810;
          *(&v117[0] + 1) = 0;
        }

        v107 = &unk_1F2A5F6F8;
        if (descriptor)
        {
          CFRelease(descriptor);
        }

        if (v106)
        {
          CFRelease(v106);
        }

        v58 = *(&v117[0] + 1);
        goto LABEL_317;
      }
    }

    if (*(a3 + 13) == 1)
    {
      if (*(a3 + 12))
      {
        v34 = MEMORY[0x1E69658A8];
      }

      else
      {
        v34 = MEMORY[0x1E69658A0];
      }

      v35 = MEMORY[0x1E69658C8];
      if (!*(a3 + 12))
      {
        v35 = MEMORY[0x1E69658B8];
      }

      if (*(a3 + 8))
      {
        v36 = v34;
      }

      else
      {
        v36 = v35;
      }

      CFDictionarySetValue(*(&v125 + 1), *MEMORY[0x1E69658E0], *v36);
    }

    v37 = *MEMORY[0x1E69658F8];
    *buf = *MEMORY[0x1E6965898];
    *&buf[8] = v37;
    std::vector<void const*,geo::allocator_adapter<void const*,grl::zone_mallocator>>::vector[abi:nn200100](v117, buf, 2uLL);
    *buf = *(&v125 + 1);
    *&buf[8] = *(&v119[0] + 1);
    std::vector<void const*,geo::allocator_adapter<void const*,grl::zone_mallocator>>::vector[abi:nn200100](v116, buf, 2uLL);
    v104[0] = v118;
    v38 = *(a3 + 96);
    v39 = *(a3 + 104);
    while (v38 != v39)
    {
      v41 = *v38++;
      v40 = v41;
      if (v41 >= 0)
      {
        v42 = v40;
      }

      else
      {
        v42 = -v40;
      }

      grl::FontKey::createDescriptor(void)const::$_0::operator()(v104, 0x23u, __PAIR64__(v42, v40) >> 31);
    }

    if (*(a3 + 120))
    {
      grl::FontKey::createDescriptor(void)const::$_0::operator()(v104, 0x25u, *(a3 + 120));
    }

    if (CFArrayGetCount(*(&v118[0] + 1)))
    {
      *buf = *MEMORY[0x1E69657A8];
      std::vector<void const*,geo::allocator_adapter<void const*,grl::zone_mallocator>>::push_back[abi:nn200100](v117, buf);
      *buf = *(&v118[0] + 1);
      std::vector<void const*,geo::allocator_adapter<void const*,grl::zone_mallocator>>::push_back[abi:nn200100](v116, buf);
    }

    grl::createCFDictionary(&v114, *&v117[0], *(&v117[0] + 1), *&v116[0], *(&v116[0] + 1));
    if (!attributes)
    {
      if (GEOGetGeoResourceLibCoreFoundationLog::onceToken != -1)
      {
        dispatch_once(&GEOGetGeoResourceLibCoreFoundationLog::onceToken, &__block_literal_global_33_53824);
      }

      v51 = GEOGetGeoResourceLibCoreFoundationLog::log;
      if (os_log_type_enabled(GEOGetGeoResourceLibCoreFoundationLog::log, OS_LOG_TYPE_ERROR))
      {
        if (*(a3 + 95) >= 0)
        {
          v52 = a3 + 72;
        }

        else
        {
          v52 = *(a3 + 72);
        }

        *buf = 136315906;
        *&buf[4] = v52;
        *&buf[12] = 2080;
        *&buf[14] = "!GRL_SUFFIX_LINE_NUMBER(didTriggerAssert)";
        v121 = 2080;
        v122 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoResourceLib/GeoResourceLib/Renderer/FontKey.cpp";
        v123 = 1024;
        v124 = 156;
        _os_log_impl(&dword_1B2754000, v51, OS_LOG_TYPE_ERROR, "Failed to create CFDictionary for font traits for font name %s.: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x26u);
      }

      v107 = &unk_1F2A5F6F8;
      descriptor = 0;
      goto LABEL_283;
    }

    v112 = &unk_1F2A5F6F8;
    v113 = 0;
    v43 = *(a3 + 71);
    if (*(a3 + 13) == 1 && (v43 >= 0 ? (v44 = *(a3 + 71)) : (v44 = *(a3 + 56)), !v44))
    {
      v61 = CTFontDescriptorCreateWithAttributes(attributes);
      v62 = v113;
      v113 = v61;
      if (v62)
      {
        CFRelease(v62);
      }
    }

    else
    {
      if (v43 >= 0)
      {
        v45 = (a3 + 48);
      }

      else
      {
        v45 = *(a3 + 48);
      }

      v46 = CFStringCreateWithCString(0, v45, 0x8000100u);
      *buf = &unk_1F29E1668;
      *&buf[8] = v46;
      if (v46)
      {
        *&v111 = &unk_1F29E1668;
        *(&v111 + 1) = v46;
      }

      else
      {
        if (GEOGetGeoResourceLibCoreFoundationLog::onceToken != -1)
        {
          dispatch_once(&GEOGetGeoResourceLibCoreFoundationLog::onceToken, &__block_literal_global_33_53824);
        }

        v53 = GEOGetGeoResourceLibCoreFoundationLog::log;
        if (os_log_type_enabled(GEOGetGeoResourceLibCoreFoundationLog::log, OS_LOG_TYPE_ERROR))
        {
          *v109 = 0;
          _os_log_impl(&dword_1B2754000, v53, OS_LOG_TYPE_ERROR, "Failed to create CFString.", v109, 2u);
        }

        *&v111 = &unk_1F29E1668;
        *(&v111 + 1) = 0;
        *buf = &unk_1F29E1668;
        if (!*&buf[8] || (CFRelease(*&buf[8]), (v46 = *(&v111 + 1)) == 0))
        {
          if (GEOGetGeoResourceLibCoreFoundationLog::onceToken != -1)
          {
            dispatch_once(&GEOGetGeoResourceLibCoreFoundationLog::onceToken, &__block_literal_global_33_53824);
          }

          v54 = GEOGetGeoResourceLibCoreFoundationLog::log;
          if (os_log_type_enabled(GEOGetGeoResourceLibCoreFoundationLog::log, OS_LOG_TYPE_ERROR))
          {
            if (*(a3 + 95) >= 0)
            {
              v55 = a3 + 72;
            }

            else
            {
              v55 = *(a3 + 72);
            }

            *buf = 136315906;
            *&buf[4] = v55;
            *&buf[12] = 2080;
            *&buf[14] = "!GRL_SUFFIX_LINE_NUMBER(didTriggerAssert)";
            v121 = 2080;
            v122 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoResourceLib/GeoResourceLib/Renderer/FontKey.cpp";
            v123 = 1024;
            v124 = 168;
            _os_log_impl(&dword_1B2754000, v54, OS_LOG_TYPE_ERROR, "Failed to generate a CFString for font name %s.: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x26u);
          }

          v107 = &unk_1F2A5F6F8;
          descriptor = 0;
          *&v111 = &unk_1F29E1668;
          if (*(&v111 + 1))
          {
            CFRelease(*(&v111 + 1));
          }

          goto LABEL_281;
        }
      }

      v47 = CTFontDescriptorCreateWithNameAndSize(v46, *(a3 + 16));
      v48 = v47;
      *v109 = &unk_1F2A5F6F8;
      v110 = v47;
      if (v47)
      {
        CopyWithAttributes = CTFontDescriptorCreateCopyWithAttributes(v47, attributes);
        v50 = v113;
        v113 = CopyWithAttributes;
        if (v50)
        {
          CFRelease(v50);
        }
      }

      else
      {
        if (GEOGetGeoResourceLibCoreFoundationLog::onceToken != -1)
        {
          dispatch_once(&GEOGetGeoResourceLibCoreFoundationLog::onceToken, &__block_literal_global_33_53824);
        }

        v59 = GEOGetGeoResourceLibCoreFoundationLog::log;
        if (os_log_type_enabled(GEOGetGeoResourceLibCoreFoundationLog::log, OS_LOG_TYPE_ERROR))
        {
          if (*(a3 + 95) >= 0)
          {
            v60 = a3 + 72;
          }

          else
          {
            v60 = *(a3 + 72);
          }

          *buf = 136315906;
          *&buf[4] = v60;
          *&buf[12] = 2080;
          *&buf[14] = "!GRL_SUFFIX_LINE_NUMBER(didTriggerAssert)";
          v121 = 2080;
          v122 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoResourceLib/GeoResourceLib/Renderer/FontKey.cpp";
          v123 = 1024;
          v124 = 174;
          _os_log_impl(&dword_1B2754000, v59, OS_LOG_TYPE_ERROR, "Failed to create CTFontDescriptor for font name %s.: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x26u);
        }

        v107 = &unk_1F2A5F6F8;
        descriptor = 0;
      }

      *v109 = &unk_1F2A5F6F8;
      if (v110)
      {
        CFRelease(v110);
      }

      *&v111 = &unk_1F29E1668;
      if (*(&v111 + 1))
      {
        CFRelease(*(&v111 + 1));
      }

      if (!v48)
      {
LABEL_281:
        v112 = &unk_1F2A5F6F8;
        if (v113)
        {
          CFRelease(v113);
        }

        goto LABEL_283;
      }
    }

    v63 = *(a3 + 20);
    if (v63 == 100.0 && *(a3 + 40) == 3)
    {
      v64 = v113;
      if (!v113)
      {
        if (GEOGetGeoResourceLibCoreFoundationLog::onceToken != -1)
        {
          dispatch_once(&GEOGetGeoResourceLibCoreFoundationLog::onceToken, &__block_literal_global_33_53824);
        }

        v65 = GEOGetGeoResourceLibCoreFoundationLog::log;
        if (!os_log_type_enabled(GEOGetGeoResourceLibCoreFoundationLog::log, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_280;
        }

        if (*(a3 + 95) >= 0)
        {
          v66 = a3 + 72;
        }

        else
        {
          v66 = *(a3 + 72);
        }

        *buf = 136315906;
        *&buf[4] = v66;
        *&buf[12] = 2080;
        *&buf[14] = "!GRL_SUFFIX_LINE_NUMBER(didTriggerAssert)";
        v121 = 2080;
        v122 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoResourceLib/GeoResourceLib/Renderer/FontKey.cpp";
        v123 = 1024;
        v124 = 182;
LABEL_279:
        _os_log_impl(&dword_1B2754000, v65, OS_LOG_TYPE_ERROR, "Failed to create CTFontDescriptor for font name %s.: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x26u);
LABEL_280:
        v107 = &unk_1F2A5F6F8;
        descriptor = 0;
        goto LABEL_281;
      }

      goto LABEL_271;
    }

    if (v63 == 100.0 && *(a3 + 24) != 1)
    {
      goto LABEL_250;
    }

    v67 = CTFontCreateWithFontDescriptor(v113, *(a3 + 16), 0);
    v68 = v67;
    *buf = &unk_1F2A5F810;
    *&buf[8] = v67;
    if (v67)
    {
      v69 = CTFontCopyVariationAxes(v67);
      *&v111 = &unk_1F2A5F6B8;
      *(&v111 + 1) = v69;
      if (v69)
      {
        v99 = v68;
        Count = CFArrayGetCount(v69);
        if (Count >= 1)
        {
          v71 = Count;
          v100 = 0;
          v72 = 0;
          key = *MEMORY[0x1E6965910];
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(&v111 + 1), v72);
            v74 = CFGetTypeID(ValueAtIndex);
            if (v74 == CFDictionaryGetTypeID())
            {
              Value = CFDictionaryGetValue(ValueAtIndex, key);
              if (Value)
              {
                v76 = Value;
                v77 = CFGetTypeID(Value);
                if (v77 == CFNumberGetTypeID())
                {
                  grl::createCFNumber(v109, 0x77676874u);
                  v78 = CFNumberCompare(v76, v110, 0);
                  *v109 = &unk_1F2A5F6D8;
                  if (v110)
                  {
                    CFRelease(v110);
                  }

                  if (v78 == kCFCompareEqualTo)
                  {
                    esl::toFontWeightAxisValue(*(a3 + 40), v102);
                    if (v102[0] == 1)
                    {
                      if (*(a3 + 24) == 1)
                      {
                        v83 = *(a3 + 40);
                        if (v83 != 8)
                        {
                          esl::toFontWeightAxisValue((v83 + 1), v109);
                          v103 = v103 + (*(a3 + 28) * (*&v109[4] - v103));
                        }
                      }

                      v84 = *(&v119[0] + 1);
                      grl::createCFNumber(v109, v103);
                      CFDictionarySetValue(v84, v76, v110);
                      *v109 = &unk_1F2A5F6D8;
                      if (v110)
                      {
                        CFRelease(v110);
                      }

                      v100 = 1;
                    }

                    goto LABEL_231;
                  }

                  grl::createCFNumber(v109, 0x77647468u);
                  v79 = CFNumberCompare(v76, v110, 0);
                  *v109 = &unk_1F2A5F6D8;
                  if (v110)
                  {
                    CFRelease(v110);
                  }

                  if (v79)
                  {
                    grl::createCFNumber(v109, 0x6F70737Au);
                    v80 = CFNumberCompare(v76, v110, 0);
                    *v109 = &unk_1F2A5F6D8;
                    if (v110)
                    {
                      CFRelease(v110);
                    }

                    if (v80)
                    {
                      goto LABEL_231;
                    }

                    v81 = *(&v119[0] + 1);
                    v82 = *(a3 + 16);
                  }

                  else
                  {
                    v81 = *(&v119[0] + 1);
                    v82 = *(a3 + 20);
                  }

                  grl::createCFNumber(v109, v82);
                  CFDictionarySetValue(v81, v76, v110);
                  *v109 = &unk_1F2A5F6D8;
                  if (v110)
                  {
                    CFRelease(v110);
                  }
                }
              }
            }

LABEL_231:
            if (v71 == ++v72)
            {
              goto LABEL_243;
            }
          }
        }

        v100 = 0;
LABEL_243:
        *&v111 = &unk_1F2A5F6B8;
        if (*(&v111 + 1))
        {
          CFRelease(*(&v111 + 1));
        }

        v68 = v99;
      }

      else
      {
        v100 = 0;
      }
    }

    else
    {
      if (GEOGetGeoResourceLibCoreFoundationLog::onceToken != -1)
      {
        dispatch_once(&GEOGetGeoResourceLibCoreFoundationLog::onceToken, &__block_literal_global_33_53824);
      }

      v85 = GEOGetGeoResourceLibCoreFoundationLog::log;
      if (os_log_type_enabled(GEOGetGeoResourceLibCoreFoundationLog::log, OS_LOG_TYPE_ERROR))
      {
        if (*(a3 + 95) >= 0)
        {
          v86 = a3 + 72;
        }

        else
        {
          v86 = *(a3 + 72);
        }

        LODWORD(v111) = 136315138;
        *(&v111 + 4) = v86;
        _os_log_impl(&dword_1B2754000, v85, OS_LOG_TYPE_ERROR, "Failed to create CTFont for font name %s.", &v111, 0xCu);
      }

      v100 = 0;
      v107 = &unk_1F2A5F6F8;
      descriptor = 0;
    }

    *buf = &unk_1F2A5F810;
    if (*&buf[8])
    {
      CFRelease(*&buf[8]);
    }

    if (!v68)
    {
      goto LABEL_281;
    }

    if ((v100 & 1) == 0)
    {
LABEL_250:
      esl::toCGWeight(*(a3 + 40), v109);
      *&v111 = &unk_1F2A5F6D8;
      *(&v111 + 1) = 0;
      if (v109[0] != 1)
      {
        goto LABEL_255;
      }

      grl::createCFNumber(buf, *&v109[4]);
      if (*(&v111 + 1))
      {
        CFRelease(*(&v111 + 1));
      }

      *(&v111 + 1) = *&buf[8];
      if (*&buf[8])
      {
        CFDictionarySetValue(*(&v125 + 1), *MEMORY[0x1E6965970], *&buf[8]);
        v87 = 1;
      }

      else
      {
LABEL_255:
        if (GEOGetGeoResourceLibFontLog::onceToken != -1)
        {
          dispatch_once(&GEOGetGeoResourceLibFontLog::onceToken, &__block_literal_global_17_53800);
        }

        v88 = GEOGetGeoResourceLibFontLog::log;
        if (os_log_type_enabled(GEOGetGeoResourceLibFontLog::log, OS_LOG_TYPE_ERROR))
        {
          if (*(a3 + 95) >= 0)
          {
            v89 = a3 + 72;
          }

          else
          {
            v89 = *(a3 + 72);
          }

          *buf = 136315906;
          *&buf[4] = v89;
          *&buf[12] = 2080;
          *&buf[14] = "!GRL_SUFFIX_LINE_NUMBER(didTriggerAssert)";
          v121 = 2080;
          v122 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoResourceLib/GeoResourceLib/Renderer/FontKey.cpp";
          v123 = 1024;
          v124 = 243;
          _os_log_impl(&dword_1B2754000, v88, OS_LOG_TYPE_ERROR, "Failed to create a CFNumber for font weight for font name %s.: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x26u);
        }

        v87 = 0;
        v107 = &unk_1F2A5F6F8;
        descriptor = 0;
      }

      *&v111 = &unk_1F2A5F6D8;
      if (*(&v111 + 1))
      {
        CFRelease(*(&v111 + 1));
      }

      if (!v87)
      {
        goto LABEL_281;
      }
    }

    grl::createCFDictionary(buf, *&v117[0], *(&v117[0] + 1), *&v116[0], *(&v116[0] + 1));
    if (attributes)
    {
      CFRelease(attributes);
    }

    attributes = *&buf[8];
    v64 = CTFontDescriptorCreateCopyWithAttributes(v113, *&buf[8]);
    v90 = v113;
    v113 = v64;
    if (v90)
    {
      CFRelease(v90);
      v64 = v113;
    }

    if (!v64)
    {
      if (GEOGetGeoResourceLibCoreFoundationLog::onceToken != -1)
      {
        dispatch_once(&GEOGetGeoResourceLibCoreFoundationLog::onceToken, &__block_literal_global_33_53824);
      }

      v65 = GEOGetGeoResourceLibCoreFoundationLog::log;
      if (!os_log_type_enabled(GEOGetGeoResourceLibCoreFoundationLog::log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_280;
      }

      if (*(a3 + 95) >= 0)
      {
        v91 = a3 + 72;
      }

      else
      {
        v91 = *(a3 + 72);
      }

      *buf = 136315906;
      *&buf[4] = v91;
      *&buf[12] = 2080;
      *&buf[14] = "!GRL_SUFFIX_LINE_NUMBER(didTriggerAssert)";
      v121 = 2080;
      v122 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoResourceLib/GeoResourceLib/Renderer/FontKey.cpp";
      v123 = 1024;
      v124 = 252;
      goto LABEL_279;
    }

LABEL_271:
    v107 = &unk_1F2A5F6F8;
    descriptor = v64;
LABEL_283:
    v114 = &unk_1F2A5F698;
    if (attributes)
    {
      CFRelease(attributes);
    }

    std::vector<void const*,geo::allocator_adapter<void const*,grl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v116);
    std::vector<void const*,geo::allocator_adapter<void const*,grl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v117);
    goto LABEL_286;
  }

  v7 = geo::LRUPolicy<grl::FontKey,geo::_retain_ptr<__CTFont const*,geo::_retain_cf<__CTFont const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>,std::hash<grl::FontKey>>::get(a2 + 144, a2 + 13, a3);
  if ((a2 + 144) == v7)
  {
    *buf = &unk_1F2A5F810;
    *&buf[8] = 0;
    geo::Cache<grl::FontKey,geo::_retain_ptr<__CTFont const*,geo::_retain_cf<__CTFont const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>,std::hash<grl::FontKey>,geo::LRUPolicy>::insert(a2 + 96, a3, 0);
  }

  *this = &unk_1F2A5F810;
  v8 = v7[19];
  if (v8)
  {
    CFRetain(v7[19]);
  }

LABEL_327:
  *(this + 1) = v8;
  v105 = &unk_1F2A5F810;
  if (v106)
  {
    CFRelease(v106);
  }

LABEL_329:
  std::mutex::unlock((a2 + 168));
}

void esl::FontKey::~FontKey(esl::FontKey *this)
{
  *this = &unk_1F29E15C0;
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  geo::optional<int>::~optional(this + 32);
  geo::optional<float>::~optional(this + 24);
}

{
  esl::FontKey::~FontKey(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::LRUPolicy<unsigned short,grl::codec::IconDataPack::AtlasPageImage,std::hash<unsigned short>>::get(uint64_t a1, void *a2, unsigned __int16 a3)
{
  v4 = std::__hash_table<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,geo::mallocator>>::find<unsigned short>(a2, a3);
  if (v4)
  {
    v5 = *(a1 + 8);
    v6 = v4[3];
    if (v5 == v6)
    {
      return *(a1 + 8);
    }

    v7 = v6[1];
    if (v7 == v5)
    {
      return *(a1 + 8);
    }

    else
    {
      v8 = *v6;
      v8[1] = v7;
      *v7 = v8;
      v9 = *v5;
      v9[1] = v6;
      *v6 = v9;
      *v5 = v6;
      v6[1] = v5;
      return *(a1 + 8);
    }
  }

  return a1;
}

void esl::QuartzImage::createImageInRect(CGImageRef *a1@<X0>, float *a2@<X1>, void *a3@<X8>)
{
  if ((*(*a1 + 5))(a1))
  {
    v6 = a2[1];
    v8 = v6;
    v9 = a2[3] - v6;
    if ((a2[2] - *a2) >= 0.0)
    {
      v10 = a2[2] - *a2;
    }

    else
    {
      v10 = 0.0;
    }

    v11 = v10;
    if (v9 >= 0.0)
    {
      v12 = v9;
    }

    else
    {
      v12 = 0.0;
    }

    v13 = v12;
    v7 = *a2;
    CGImageCreateWithImageInRect(a1[2], *(&v8 - 1));
    std::allocate_shared[abi:ne200100]<esl::QuartzImage,std::allocator<esl::QuartzImage>,CGImage *&,0>();
  }

  *a3 = 0;
  a3[1] = 0;
}

void sub_1B2B3D404(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<esl::QuartzImage>::__shared_ptr_emplace[abi:ne200100]<CGImage *&,std::allocator<esl::QuartzImage>,0>(void *a1, CGImageRef *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F29E11B0;
  esl::QuartzImage::QuartzImage((a1 + 3), *a2);
  return a1;
}

esl::QuartzImage *esl::QuartzImage::QuartzImage(esl::QuartzImage *this, CGImageRef image)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F29E1060;
  *(this + 3) = 0;
  *(this + 4) = 0;
  CGImageRetain(image);
  *(this + 2) = image;
  return this;
}

void *std::__function::__value_func<std::shared_ptr<esl::QuartzImage> ()(void)>::swap[abi:nn200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

uint64_t std::__function::__func<grl::codec::IconDataPack::imageProviderForID(unsigned int)::$_0,std::allocator<grl::codec::IconDataPack::imageProviderForID(unsigned int)::$_0>,std::shared_ptr<esl::QuartzImage> ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F2A5F468;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<grl::codec::IconDataPack::imageProviderForID(unsigned int)::$_0,std::allocator<grl::codec::IconDataPack::imageProviderForID(unsigned int)::$_0>,std::shared_ptr<esl::QuartzImage> ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t std::__function::__value_func<std::shared_ptr<esl::QuartzImage> ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void grl::IconRenderer::IconRenderer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4, uint64_t a5, uint64_t a6, float a7)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F2A5F7A0;
  *(a1 + 24) = 4;
  *(a1 + 40) = 0;
  *(a1 + 32) = a1 + 40;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 68) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 200) = 0;
  *(a1 + 72) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 228) = 0;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0;
  *(a1 + 192) = a1 + 200;
  *(a1 + 232) = 0;
  *(a1 + 234) = 0;
  *(a1 + 236) = 0;
  *(a1 + 244) = 0;
  *(a1 + 248) = 0;
  *(a1 + 260) = 0;
  *(a1 + 272) = 0;
  *(a1 + 284) = 0;
  *(a1 + 296) = *(a3 + 4);
  *(a1 + 297) = 0;
  *(a1 + 299) = 0;
  *(a1 + 300) = a7;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = *a6;
  *(a1 + 328) = 0;
  if (*(a6 + 8) == 1)
  {
    if (*(a6 + 39) < 0)
    {
      std::string::__init_copy_ctor_external((a1 + 336), *(a6 + 16), *(a6 + 24));
    }

    else
    {
      v9 = *(a6 + 16);
      *(a1 + 352) = *(a6 + 32);
      *(a1 + 336) = v9;
    }

    *(a1 + 328) = 1;
  }

  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 396) = 0;
  *(a1 + 360) = a1 + 368;
  *(a1 + 368) = 0;
  *(a1 + 400) = a1 + 400;
  *(a1 + 408) = a1 + 400;
  *(a1 + 416) = 0;
  if (*(a3 + 160) != *(a3 + 168))
  {
    *(a1 + 299) = 1;
  }

  operator new();
}

void std::__function::__func<grl::IconRenderer::setupPathLayerRenderer(grl::codec::IconRenderItem const&,grl::IconModifiers const&)::$_0,std::allocator<grl::IconRenderer::setupPathLayerRenderer(grl::codec::IconRenderItem const&,grl::IconModifiers const&)::$_0>,void ()(unsigned short,grl::codec::PathLayerData const&)>::operator()(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  v25 = *MEMORY[0x1E69E9840];
  std::vector<grl::LayerStyle,geo::allocator_adapter<grl::LayerStyle,grl::zone_mallocator>>::vector[abi:nn200100](&v8, a3);
  v9 = *(a3 + 32);
  v10 = *(a3 + 34);
  v11 = *(a3 + 40);
  v12 = *(a3 + 44);
  v13 = *(a3 + 48);
  v5 = *(a3 + 68);
  v14 = *(a3 + 64);
  v15 = v5;
  v16 = *(a3 + 72);
  v19 = *(a3 + 84);
  v6 = *(a3 + 80);
  v17 = *(a3 + 76);
  v18 = v6;
  v20 = *(a3 + 85);
  v21 = *(a3 + 92);
  v7 = *(a3 + 104);
  v22 = *(a3 + 100);
  v23 = v7;
  *v24 = *(a3 + 108);
  *&v24[13] = *(a3 + 121);
  if (*(a1[1] + 144) && v24[20] == 1)
  {
    if (*(a1[2] + 5) == 1)
    {
      *(&v13 + 1) = ceilf(*(a1[3] + 300)) * 60.0;
      DWORD2(v13) = DWORD1(v13);
    }

    operator new();
  }

  std::vector<void const*,geo::allocator_adapter<void const*,grl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v8);
}

uint64_t **std::function<void ()(unsigned short,grl::codec::PathLayerData const&)>::operator()(uint64_t a1, __int16 a2)
{
  v7 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v7);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__tree<std::__value_type<grl::IconLayerMapKey,std::unique_ptr<grl::LayerRenderer>>,std::__map_value_compare<grl::IconLayerMapKey,std::__value_type<grl::IconLayerMapKey,std::unique_ptr<grl::LayerRenderer>>,grl::IconLayerMapKey,false>,geo::allocator_adapter<std::__value_type<grl::IconLayerMapKey,std::unique_ptr<grl::LayerRenderer>>,grl::zone_mallocator>>::__emplace_unique_key_args<grl::IconLayerMapKey,std::piecewise_construct_t const&,std::tuple<grl::IconLayerMapKey&&>,std::tuple<>>(v3, v4, v5, v6);
}

uint64_t **std::__tree<std::__value_type<grl::IconLayerMapKey,std::unique_ptr<grl::LayerRenderer>>,std::__map_value_compare<grl::IconLayerMapKey,std::__value_type<grl::IconLayerMapKey,std::unique_ptr<grl::LayerRenderer>>,grl::IconLayerMapKey,false>,geo::allocator_adapter<std::__value_type<grl::IconLayerMapKey,std::unique_ptr<grl::LayerRenderer>>,grl::zone_mallocator>>::__emplace_unique_key_args<grl::IconLayerMapKey,std::piecewise_construct_t const&,std::tuple<grl::IconLayerMapKey&&>,std::tuple<>>(_BOOL8 a1, uint64_t a2, uint64_t a3, _DWORD **a4)
{
  v5 = a1;
  v7 = (a1 + 8);
  v6 = *(a1 + 8);
  if (v6)
  {
    v8 = a3;
    v9 = a2;
    while (1)
    {
      while (1)
      {
        v7 = v6;
        v10 = *(v6 + 16);
        v11 = *(v6 + 17);
        a1 = grl::IconLayerMapKey::operator()(v9, v8, v10, v11);
        if (!a1)
        {
          break;
        }

        v6 = *v7;
        v12 = v7;
        if (!*v7)
        {
          goto LABEL_10;
        }
      }

      a1 = grl::IconLayerMapKey::operator()(v10, v11, v9, v8);
      if (!a1)
      {
        return v7;
      }

      v12 = v7 + 1;
      v6 = v7[1];
      if (!v6)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v12 = (a1 + 8);
LABEL_10:
    v13 = grl::zone_mallocator::instance(a1);
    geo::read_write_lock::read_lock((v13 + 32));
    v14 = malloc_type_zone_malloc(*v13, 0x30uLL, 0x102004044087E67uLL);
    atomic_fetch_add((v13 + 24), 1u);
    geo::read_write_lock::unlock((v13 + 32));
    v15 = *a4;
    v14[8] = **a4;
    *(v14 + 36) = 0;
    if (*(v15 + 4) == 1)
    {
      *(v14 + 37) = *(v15 + 5);
      *(v14 + 36) = 1;
    }

    *(v14 + 5) = 0;
    *v14 = 0;
    *(v14 + 1) = 0;
    *(v14 + 2) = v7;
    *v12 = v14;
    v16 = **v5;
    v17 = v14;
    if (v16)
    {
      *v5 = v16;
      v17 = *v12;
    }

    std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(v5[1], v17);
    v5[3] = (v5[3] + 1);
  }

  return v14;
}

void std::vector<void const*,geo::allocator_adapter<void const*,grl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](grl::zone_mallocator *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    v2 = grl::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ShaderLibrary::ComputeShaderEntry>(v2, v1);
  }
}

void std::__function::__func<grl::IconRenderer::setupImageLayerRenderer(grl::codec::IconRenderItem const&,grl::IconModifiers const&,std::map<unsigned short,grl::ImageProvider,std::less<unsigned short>,geo::allocator_adapter<std::pair<unsigned short const,grl::ImageProvider>,grl::zone_mallocator>> const&)::$_0,std::allocator<grl::IconRenderer::setupImageLayerRenderer(grl::codec::IconRenderItem const&,grl::IconModifiers const&,std::map<unsigned short,grl::ImageProvider,std::less<unsigned short>,geo::allocator_adapter<std::pair<unsigned short const,grl::ImageProvider>,grl::zone_mallocator>> const&)::$_0>,void ()(unsigned short,grl::codec::ImageLayerData const&)>::operator()(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v53 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  std::vector<grl::LayerStyle,geo::allocator_adapter<grl::LayerStyle,grl::zone_mallocator>>::vector[abi:nn200100](&v23, a3);
  v24 = *(a3 + 32);
  v25 = *(a3 + 34);
  v26 = *(a3 + 38);
  v27 = *(a3 + 54);
  v28 = *(a3 + 56);
  v29 = *(a3 + 60);
  v6 = *(a3 + 68);
  v30 = *(a3 + 64);
  v31 = v6;
  v32 = *(a3 + 72);
  v33 = *(a3 + 73);
  v7 = *(a3 + 96);
  *v34 = *(a3 + 80);
  *&v34[16] = v7;
  v35 = *(a3 + 112);
  v36 = *(a3 + 120);
  *&v37[10] = *(a3 + 134);
  *v37 = *(a3 + 124);
  if (v37[24] == 1)
  {
    v8 = *(a1 + 8);
    v9 = *(a1 + 16);
    v12 = *(v8 + 8);
    v10 = v8 + 8;
    v11 = v12;
    if (!v12)
    {
      goto LABEL_10;
    }

    v13 = v10;
    do
    {
      v14 = *(v11 + 32);
      v15 = v14 >= v5;
      v16 = v14 < v5;
      if (v15)
      {
        v13 = v11;
      }

      v11 = *(v11 + 8 * v16);
    }

    while (v11);
    if (v13 != v10 && *(v13 + 32) <= v5)
    {
      v45 = 0;
      v47 = 0;
      if (*(v13 + 72))
      {
        v45 = *(v13 + 40);
        v19 = std::__function::__value_func<std::shared_ptr<esl::QuartzImage> ()(void)>::__value_func[abi:nn200100](buf, v13 + 48);
        std::__function::__value_func<std::shared_ptr<esl::QuartzImage> ()(void)>::swap[abi:nn200100](v19, v46);
        std::__function::__value_func<std::shared_ptr<esl::QuartzImage> ()(void)>::~__value_func[abi:nn200100](buf);
        if (v5)
        {
          if (**(a1 + 40) == 1)
          {
            v17 = *(a1 + 24);
            if (*v17 != 1 || *(v17 + 4) != v45)
            {
              if (GEOGetGeoResourceLibRendererLog::onceToken != -1)
              {
                dispatch_once(&GEOGetGeoResourceLibRendererLog::onceToken, &__block_literal_global_13_53794);
              }

              v18 = GEOGetGeoResourceLibRendererLog::log;
              if (os_log_type_enabled(GEOGetGeoResourceLibRendererLog::log, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&dword_1B2754000, v18, OS_LOG_TYPE_ERROR, "All image layers must be the same size in a stretched icon.", buf, 2u);
              }

              goto LABEL_41;
            }
          }
        }

        else
        {
          v20 = *(a1 + 24);
          if ((*v20 & 1) == 0)
          {
            *v20 = 1;
          }

          *(v20 + 4) = v45;
          v21 = *(a1 + 32);
          v22 = *&v34[12];
          if ((*v21 & 1) == 0)
          {
            *v21 = 1;
          }

          *(v21 + 4) = v22;
          **(a1 + 40) = v35 == 1;
        }

        std::__function::__value_func<CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::__value_func[abi:nn200100](v43, *(a1 + 48) + 184);
        if (v34[20] == 1 && v44)
        {
          std::__function::__value_func<CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::__value_func[abi:nn200100](&v38, v43);
          v40 = v45;
          std::__function::__value_func<std::shared_ptr<esl::QuartzImage> ()(void)>::__value_func[abi:nn200100](v41, v46);
          if (v39)
          {
            if (v39 == &v38)
            {
              v49 = buf;
              (*(*v39 + 24))();
            }

            else
            {
              v49 = v39;
              v39 = 0;
            }
          }

          else
          {
            v49 = 0;
          }

          v50 = v40;
          if (v42)
          {
            if (v42 == v41)
            {
              v52 = &v51;
              (*(*v42 + 24))();
            }

            else
            {
              v52 = v42;
              v42 = 0;
            }
          }

          else
          {
            v52 = 0;
          }

          operator new();
        }

        operator new();
      }
    }

    else
    {
LABEL_10:
      v45 = 0;
      v47 = 0;
    }

    if (*(v9 + 320) == 1)
    {
      operator new();
    }

LABEL_41:
    std::__function::__value_func<std::shared_ptr<esl::QuartzImage> ()(void)>::~__value_func[abi:nn200100](v46);
  }

  std::vector<void const*,geo::allocator_adapter<void const*,grl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v23);
}

uint64_t std::__function::__value_func<std::shared_ptr<esl::QuartzImage> ()(void)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

BOOL grl::IconLayerMapKey::operator()(unsigned __int16 a1, unsigned __int16 a2, unsigned __int16 a3, unsigned __int16 a4)
{
  if (a1 > 4u)
  {
    v4 = 0;
  }

  else
  {
    v4 = dword_1B341DC3C[a1];
  }

  if (a3 > 4u)
  {
    v5 = 0;
  }

  else
  {
    v5 = dword_1B341DC3C[a3];
  }

  if (a1 == 1)
  {
    v6 = a2 > a4;
  }

  else
  {
    v6 = a2 < a4;
  }

  if (v4 == v5)
  {
    return v6;
  }

  else
  {
    return v4 < v5;
  }
}

void std::__function::__func<grl::IconRenderer::setupTextLayerRenderer(grl::codec::IconRenderItem const&,grl::IconModifiers const&,std::map<std::string,geo::_retain_ptr<__CTFont const*,geo::_retain_cf<__CTFont const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>,std::less<std::string>,geo::allocator_adapter<std::pair<std::string const,geo::_retain_ptr<__CTFont const*,geo::_retain_cf<__CTFont const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>>,grl::zone_mallocator>> const&,grl::IconMetricsRenderInput &)::$_0,std::allocator<grl::IconRenderer::setupTextLayerRenderer(grl::codec::IconRenderItem const&,grl::IconModifiers const&,std::map<std::string,geo::_retain_ptr<__CTFont const*,geo::_retain_cf<__CTFont const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>,std::less<std::string>,geo::allocator_adapter<std::pair<std::string const,geo::_retain_ptr<__CTFont const*,geo::_retain_cf<__CTFont const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>>,grl::zone_mallocator>> const&,grl::IconMetricsRenderInput &)::$_0>,void ()(unsigned short,grl::codec::TextLayerData const&)>::operator()(void *a1, unsigned __int16 *a2, grl::codec::TextLayerData *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  grl::codec::TextLayerData::TextLayerData(v29, a3);
  if (v35 == 1)
  {
    v4 = a1[2];
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v40, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v40 = __p;
    }

    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      size = v40.__r_.__value_.__l.__size_;
      operator delete(v40.__r_.__value_.__l.__data_);
      if (!size)
      {
        goto LABEL_73;
      }
    }

    else if (!*(&v40.__r_.__value_.__s + 23))
    {
      goto LABEL_73;
    }

    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v40, v30.__r_.__value_.__l.__data_, v30.__r_.__value_.__l.__size_);
    }

    else
    {
      v40 = v30;
    }

    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      v6 = v40.__r_.__value_.__l.__size_;
      operator delete(v40.__r_.__value_.__l.__data_);
      if (!v6)
      {
        goto LABEL_73;
      }
    }

    else if (!*(&v40.__r_.__value_.__s + 23))
    {
      goto LABEL_73;
    }

    v7 = a1[1];
    if (*v7 == 1 && v31 == 0.0)
    {
      v8 = v7[6];
      v9 = ceilf(*(v4 + 300));
      v10 = 32;
      v11 = &grl::codec::textBalloonMetrics;
      do
      {
        if (*v11 == v9)
        {
          goto LABEL_22;
        }

        v11 += 2;
        v10 -= 8;
      }

      while (v10);
      v11 = &grl::codec::textBalloonMetrics;
LABEL_22:
      v12 = v11[1];
      if (v8)
      {
        v12 = v12 + v12;
      }

      v31 = v12;
    }

    v38 = &unk_1F2A5F810;
    cf = 0;
    v13 = a1[3];
    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v40, v30.__r_.__value_.__l.__data_, v30.__r_.__value_.__l.__size_);
    }

    else
    {
      v40 = v30;
    }

    v14 = std::__tree<std::__value_type<std::string,std::unique_ptr<md::StyleSettingsNode>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<md::StyleSettingsNode>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<md::StyleSettingsNode>>>>::find<std::string>(v13, &v40);
    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }

    if (a1[3] + 8 == v14 || !*(v14 + 64))
    {
      if (GEOGetGeoResourceLibRendererLog::onceToken != -1)
      {
        dispatch_once(&GEOGetGeoResourceLibRendererLog::onceToken, &__block_literal_global_13_53794);
      }

      v15 = GEOGetGeoResourceLibRendererLog::log;
      if (os_log_type_enabled(GEOGetGeoResourceLibRendererLog::log, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v40.__r_.__value_.__l.__data_) = 136315650;
        *(v40.__r_.__value_.__r.__words + 4) = "fontIt != fontMap.end() && fontIt->second.get()";
        WORD2(v40.__r_.__value_.__r.__words[1]) = 2080;
        *(&v40.__r_.__value_.__r.__words[1] + 6) = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoResourceLib/GeoResourceLib/Renderer/IconRenderer.cpp";
        HIWORD(v40.__r_.__value_.__r.__words[2]) = 1024;
        v41 = 581;
        _os_log_impl(&dword_1B2754000, v15, OS_LOG_TYPE_ERROR, "TextLayerRender: Digit font not given.: Assertion with expression - %s : Failed in file - %s line - %i", &v40, 0x1Cu);
      }
    }

    if (a1[3] + 8 != v14)
    {
      v16 = *(v14 + 64);
      if (v16)
      {
        CopyWithAttributes = CTFontCreateCopyWithAttributes(v16, v31, 0, 0);
        v18 = cf;
        cf = CopyWithAttributes;
        if (!v18)
        {
          goto LABEL_41;
        }

        CFRelease(v18);
      }
    }

    CopyWithAttributes = cf;
LABEL_41:
    v36 = &unk_1F2A5F810;
    if (CopyWithAttributes)
    {
      CFRetain(CopyWithAttributes);
    }

    v37 = CopyWithAttributes;
    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v40, v32.__r_.__value_.__l.__data_, v32.__r_.__value_.__l.__size_);
    }

    else
    {
      v40 = v32;
    }

    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      v20 = v40.__r_.__value_.__l.__size_;
      operator delete(v40.__r_.__value_.__l.__data_);
      if (v20)
      {
        goto LABEL_48;
      }
    }

    else if (*(&v40.__r_.__value_.__s + 23))
    {
LABEL_48:
      v19 = a1[3];
      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v40, v32.__r_.__value_.__l.__data_, v32.__r_.__value_.__l.__size_);
      }

      else
      {
        v40 = v32;
      }

      v23 = std::__tree<std::__value_type<std::string,std::unique_ptr<md::StyleSettingsNode>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<md::StyleSettingsNode>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<md::StyleSettingsNode>>>>::find<std::string>(v19, &v40);
      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v40.__r_.__value_.__l.__data_);
      }

      if (a1[3] + 8 == v23 || !*(v23 + 64))
      {
        if (GEOGetGeoResourceLibRendererLog::onceToken != -1)
        {
          dispatch_once(&GEOGetGeoResourceLibRendererLog::onceToken, &__block_literal_global_13_53794);
        }

        v24 = GEOGetGeoResourceLibRendererLog::log;
        if (os_log_type_enabled(GEOGetGeoResourceLibRendererLog::log, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v40.__r_.__value_.__l.__data_) = 136315650;
          *(v40.__r_.__value_.__r.__words + 4) = "nonDigitFontIt != fontMap.end() && nonDigitFontIt->second.get()";
          WORD2(v40.__r_.__value_.__r.__words[1]) = 2080;
          *(&v40.__r_.__value_.__r.__words[1] + 6) = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoResourceLib/GeoResourceLib/Renderer/IconRenderer.cpp";
          HIWORD(v40.__r_.__value_.__r.__words[2]) = 1024;
          v41 = 597;
          _os_log_impl(&dword_1B2754000, v24, OS_LOG_TYPE_ERROR, "TextLayerRender: Non-digit font not given.: Assertion with expression - %s : Failed in file - %s line - %i", &v40, 0x1Cu);
        }
      }

      if (a1[3] + 8 == v23 || (v22 = *(v23 + 64)) == 0)
      {
LABEL_67:
        v27 = a1[1];
        if (*(v27 + 72) == 1)
        {
          if (*(v27 + 103) < 0)
          {
            std::string::__init_copy_ctor_external(&v28, *(v27 + 80), *(v27 + 88));
          }

          else
          {
            v28 = *(v27 + 80);
          }
        }

        else
        {
          *(&v28.__r_.__value_.__s + 23) = 0;
          v28.__r_.__value_.__s.__data_[0] = 0;
        }

        operator new();
      }

      v21 = v33;
LABEL_65:
      v25 = CTFontCreateCopyWithAttributes(v22, v21, 0, 0);
      v26 = v37;
      v37 = v25;
      if (v26)
      {
        CFRelease(v26);
      }

      goto LABEL_67;
    }

    v21 = v33;
    if (v31 == v33)
    {
      goto LABEL_67;
    }

    v22 = cf;
    goto LABEL_65;
  }

LABEL_73:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  std::vector<void const*,geo::allocator_adapter<void const*,grl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v29);
}

uint64_t grl::IconRenderer::findLayerRenderer(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 40);
  v3 = a1 + 40;
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v6 = v3;
  do
  {
    v7 = *(v4 + 32);
    if (v7 > 4)
    {
      v8 = 0;
    }

    else
    {
      v8 = dword_1B341DC3C[*(v4 + 32)];
    }

    if (a2 > 4)
    {
      v9 = 0;
    }

    else
    {
      v9 = dword_1B341DC3C[a2];
    }

    if (v8 == v9)
    {
      v10 = *(v4 + 34);
      v11 = v10 > a3;
      v12 = v10 < a3;
      v13 = v11;
      if (v7 == 1)
      {
        v14 = v13;
      }

      else
      {
        v14 = v12;
      }
    }

    else
    {
      v14 = v8 < v9;
    }

    v15 = !v14;
    if (v14)
    {
      v16 = 8;
    }

    else
    {
      v16 = 0;
    }

    if (v15)
    {
      v6 = v4;
    }

    v4 = *(v4 + v16);
  }

  while (v4);
  if (v6 == v3)
  {
    return 0;
  }

  if (a2 > 4)
  {
    v17 = 0;
  }

  else
  {
    v17 = dword_1B341DC3C[a2];
  }

  v18 = *(v6 + 32);
  if (v18 > 4)
  {
    v19 = 0;
  }

  else
  {
    v19 = dword_1B341DC3C[v18];
  }

  v20 = v17 >= v19;
  if (v17 == v19)
  {
    v21 = *(v6 + 34);
    if (a2 != 1)
    {
      if (v21 > a3)
      {
        return 0;
      }

      goto LABEL_37;
    }

    v20 = v21 >= a3;
  }

  if (!v20)
  {
    return 0;
  }

LABEL_37:
  result = *(v6 + 40);
  if (result)
  {
    return result;
  }

  if (GEOGetGeoResourceLibRendererLog::onceToken != -1)
  {
    dispatch_once(&GEOGetGeoResourceLibRendererLog::onceToken, &__block_literal_global_13_53794);
  }

  v23 = GEOGetGeoResourceLibRendererLog::log;
  if (os_log_type_enabled(GEOGetGeoResourceLibRendererLog::log, OS_LOG_TYPE_ERROR))
  {
    v24 = *(v6 + 32);
    v25 = *(v6 + 34);
    v26[0] = 67110146;
    v26[1] = v24;
    v27 = 1024;
    v28 = v25;
    v29 = 2080;
    v30 = "!GRL_SUFFIX_LINE_NUMBER(didTriggerAssert)";
    v31 = 2080;
    v32 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoResourceLib/GeoResourceLib/Renderer/IconRenderer.cpp";
    v33 = 1024;
    v34 = 1096;
    _os_log_impl(&dword_1B2754000, v23, OS_LOG_TYPE_ERROR, "Nullptr LayerRenderer found in IconRenderer. This should never occur. LayerType: %hu, LayerIndex: %d: Assertion with expression - %s : Failed in file - %s line - %i", v26, 0x28u);
  }

  return 0;
}

uint64_t grl::LayerMetrics::LayerMetrics(uint64_t a1, uint64_t a2, float *a3)
{
  *a1 = &unk_1F2A5F240;
  *(a1 + 8) = 2;
  *(a1 + 12) = 0u;
  v5 = (a1 + 12);
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0u;
  *(a1 + 76) = 0u;
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *a2;
  if (*a2 != v7)
  {
    v8 = *a2;
    while (*v8 != 3)
    {
      if (++v8 == v7)
      {
        v8 = *(a2 + 8);
        break;
      }
    }
  }

  if (v8 == v7)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = ceilf(fmaxf(*(a2 + 132) - *(a2 + 124), 0.0));
    if (v9 > 4295000000.0)
    {
      v9 = 4295000000.0;
    }
  }

  v10 = *a2;
  if (v6 != v7)
  {
    v10 = *a2;
    while (*v10 != 3)
    {
      if (++v10 == v7)
      {
        v10 = *(a2 + 8);
        break;
      }
    }
  }

  if (v10 == v7)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = ceilf(fmaxf(*(a2 + 124) + *(a2 + 132), 0.0));
    if (v11 > 4295000000.0)
    {
      v11 = 4295000000.0;
    }
  }

  v12 = *a2;
  if (v6 != v7)
  {
    v12 = *a2;
    while (*v12 != 3)
    {
      if (++v12 == v7)
      {
        v12 = *(a2 + 8);
        break;
      }
    }
  }

  if (v12 == v7)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = ceilf(fmaxf(*(a2 + 128) + *(a2 + 132), 0.0));
    if (v13 > 4295000000.0)
    {
      v13 = 4295000000.0;
    }
  }

  if (v6 != v7)
  {
    while (*v6 != 3)
    {
      if (++v6 == v7)
      {
        v6 = *(a2 + 8);
        break;
      }
    }
  }

  if (v6 == v7)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = 4295000000.0;
    v15 = ceilf(fmaxf(*(a2 + 132) - *(a2 + 128), 0.0));
    if (v15 <= 4295000000.0)
    {
      v14 = v15;
    }
  }

  v16 = *(a2 + 40);
  v17 = *(a2 + 112);
  v18 = a3[1];
  if (v17 == 2)
  {
    if (v16 > 0.0 || *(a2 + 44) > 0.0)
    {
      v18 = *(a2 + 44);
    }

    else
    {
      v16 = *a3;
    }
  }

  else
  {
    v16 = fmaxf(*a3, roundf(v16));
    if (v17 != 1)
    {
      v16 = *a3;
    }
  }

  v19 = ceilf(*(a2 + 80));
  v20 = *(a2 + 84) + v9;
  v21 = *(a2 + 140) + v14;
  v22 = v19 + *(a2 + 144);
  *(a1 + 44) = ((v16 + v11) + (v19 + *(a2 + 88))) + (v20 + v19);
  *(a1 + 48) = ((v18 + v13) + v22) + (v21 + v19);
  *(a1 + 12) = v20 + v19;
  *(a1 + 16) = v21 + v19;
  *(a1 + 20) = v16 + (v20 + v19);
  *(a1 + 24) = v18 + (v21 + v19);
  *(a1 + 28) = v20;
  *(a1 + 32) = v21;
  *(a1 + 36) = (v19 + v19) + (v20 + v16);
  *(a1 + 40) = (v21 + v18) + (v19 + v19);
  GradientStartPoint = grl::LayerMetrics::findGradientStartPoint(2u, v5, *(a2 + 52));
  *(a1 + 76) = LODWORD(GradientStartPoint);
  *(a1 + 80) = v24;
  v25 = fmodf(*(a2 + 52), 6.2832);
  v26 = fmodf(v25 + 6.2832, 6.2832);
  v27 = grl::LayerMetrics::findGradientStartPoint(2u, v5, v26 + -3.1416);
  *(a1 + 84) = LODWORD(v27);
  *(a1 + 88) = v28;
  return a1;
}

double grl::LayerMetrics::findGradientStartPoint(unsigned int a1, float *a2, float a3)
{
  v5 = __sincosf_stret(a3);
  if (a1 > 9)
  {
    return 0.0;
  }

  cosval = v5.__cosval;
  sinval = v5.__sinval;
  if (((1 << a1) & 0x2E6) != 0)
  {
    v8 = fmax(fabs(cosval), fabs(sinval));
    v9 = fmaxf(a2[2] - *a2, 0.0);
    v10 = *a2 + v9 * 0.5 + cosval * 0.5 * v9 / v8;
    result = sinval * 0.5 * fmaxf(a2[3] - a2[1], 0.0) / v8;
    if (v10 <= 3.40282347e38)
    {
      LODWORD(result) = -8388609;
      v15 = v10 < -3.40282347e38;
      v16 = v10;
      if (!v15)
      {
        *&result = v16;
      }
    }

    else
    {
      LODWORD(result) = 2139095039;
    }
  }

  else
  {
    v12 = fmaxf(a2[2] - *a2, 0.0);
    v13 = *a2 + (v12 + v12 * cosval) * 0.5;
    v14 = fmaxf(a2[3] - a2[1], 0.0);
    result = v14 + v14 * sinval;
    if (v13 <= 3.40282347e38)
    {
      LODWORD(result) = -8388609;
      v15 = v13 < -3.40282347e38;
      v17 = v13;
      if (!v15)
      {
        *&result = v17;
      }
    }

    else
    {
      LODWORD(result) = 2139095039;
    }
  }

  return result;
}

float gm::Box<float,2>::operator+(float *a1, float *a2)
{
  v4 = 0;
  v5 = 0;
  do
  {
    v6 = a1[v5 + 2];
    v7 = a1[v5];
    if (v4)
    {
      break;
    }

    v4 = 1;
    v5 = 1;
  }

  while (v6 >= v7);
  if (v6 < v7)
  {
    return 3.4028e38;
  }

  v10 = v2;
  v11 = v3;
  v9 = *a1;
  gm::Box<float,2>::operator+=(&v9, a2);
  return *&v9;
}

uint64_t std::__tree<std::__value_type<grl::IconLayerMapKey,std::unique_ptr<grl::LayerMetrics>>,std::__map_value_compare<grl::IconLayerMapKey,std::__value_type<grl::IconLayerMapKey,std::unique_ptr<grl::LayerMetrics>>,grl::IconLayerMapKey,false>,geo::allocator_adapter<std::__value_type<grl::IconLayerMapKey,std::unique_ptr<grl::LayerMetrics>>,grl::zone_mallocator>>::__emplace_unique_key_args<grl::IconLayerMapKey,grl::IconLayerMapKey const&,std::unique_ptr<grl::LayerMetrics>>(_BOOL8 a1, unsigned __int16 a2, unsigned __int16 a3, uint64_t a4, uint64_t *a5)
{
  v7 = a1;
  v9 = (a1 + 8);
  v8 = *(a1 + 8);
  if (v8)
  {
    while (1)
    {
      while (1)
      {
        v9 = v8;
        v12 = *(v8 + 32);
        v13 = *(v8 + 34);
        a1 = grl::IconLayerMapKey::operator()(a2, a3, v12, v13);
        if (!a1)
        {
          break;
        }

        v8 = *v9;
        v14 = v9;
        if (!*v9)
        {
          goto LABEL_9;
        }
      }

      a1 = grl::IconLayerMapKey::operator()(v12, v13, a2, a3);
      if (!a1)
      {
        return 0;
      }

      v14 = v9 + 1;
      v8 = v9[1];
      if (!v8)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    v14 = (a1 + 8);
LABEL_9:
    v15 = grl::zone_mallocator::instance(a1);
    geo::read_write_lock::read_lock((v15 + 32));
    v16 = malloc_type_zone_malloc(*v15, 0x30uLL, 0x102004044087E67uLL);
    atomic_fetch_add((v15 + 24), 1u);
    geo::read_write_lock::unlock((v15 + 32));
    v16[8] = *a4;
    *(v16 + 36) = 0;
    if (*(a4 + 4) == 1)
    {
      *(v16 + 37) = *(a4 + 5);
      *(v16 + 36) = 1;
    }

    v17 = *a5;
    *a5 = 0;
    *(v16 + 5) = v17;
    *v16 = 0;
    *(v16 + 1) = 0;
    *(v16 + 2) = v9;
    *v14 = v16;
    v18 = **v7;
    if (v18)
    {
      *v7 = v18;
      v16 = *v14;
    }

    std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(v7[1], v16);
    v7[3] = (v7[3] + 1);
    return 1;
  }
}

float gm::Box<float,2>::operator+=(float *a1, float *a2)
{
  v2 = 0;
  v3 = 0;
  do
  {
    result = a1[v3 + 2];
    v5 = a1[v3];
    if (v2)
    {
      break;
    }

    v2 = 1;
    v3 = 1;
  }

  while (result >= v5);
  if (result >= v5)
  {
    v6 = a1[1];
    *a1 = *a1 + *a2;
    a1[1] = v6 + a2[1];
    v7 = a1[3];
    a1[2] = a1[2] + *a2;
    result = v7 + a2[1];
    a1[3] = result;
  }

  return result;
}

void grl::IconMetricsRenderResult::cacheLayerMetrics(uint64_t a1, unsigned int a2, unsigned __int16 a3, uint64_t *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v10[0] = a2;
  v10[1] = a3;
  v11 = 0;
  if ((std::__tree<std::__value_type<grl::IconLayerMapKey,std::unique_ptr<grl::LayerMetrics>>,std::__map_value_compare<grl::IconLayerMapKey,std::__value_type<grl::IconLayerMapKey,std::unique_ptr<grl::LayerMetrics>>,grl::IconLayerMapKey,false>,geo::allocator_adapter<std::__value_type<grl::IconLayerMapKey,std::unique_ptr<grl::LayerMetrics>>,grl::zone_mallocator>>::__emplace_unique_key_args<grl::IconLayerMapKey,grl::IconLayerMapKey const&,std::unique_ptr<grl::LayerMetrics>>(a1 + 72, a2, a3, v10, a4) & 1) == 0)
  {
    if (GEOGetGeoResourceLibRendererLog::onceToken != -1)
    {
      dispatch_once(&GEOGetGeoResourceLibRendererLog::onceToken, &__block_literal_global_13_53794);
    }

    v5 = GEOGetGeoResourceLibRendererLog::log;
    if (os_log_type_enabled(GEOGetGeoResourceLibRendererLog::log, OS_LOG_TYPE_ERROR))
    {
      if (a2 > 4)
      {
        v6 = "";
      }

      else
      {
        v6 = off_1E7B58230[a2];
      }

      std::string::basic_string[abi:nn200100]<0>(__p, v6);
      if (v9 >= 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      *buf = 136315906;
      v13 = v7;
      v14 = 2080;
      v15 = "result.second";
      v16 = 2080;
      v17 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoResourceLib/GeoResourceLib/Renderer/IconMetricsRenderResult.cpp";
      v18 = 1024;
      v19 = 146;
      _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_ERROR, "Failed to insert LayerMetrics for an %s layer, due to the LayerMetrics already existing.: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x26u);
      if (v9 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

uint64_t grl::IconMetricsRenderResult::getLayerMetrics(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v5 = *(a1 + 80);
  v3 = a1 + 80;
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v6 = v3;
  do
  {
    v7 = *(v4 + 32);
    if (v7 > 4)
    {
      v8 = 0;
    }

    else
    {
      v8 = dword_1B341DC3C[*(v4 + 32)];
    }

    if (a2 > 4)
    {
      v9 = 0;
    }

    else
    {
      v9 = dword_1B341DC3C[a2];
    }

    if (v8 == v9)
    {
      v10 = *(v4 + 34);
      v11 = v10 > a3;
      v12 = v10 < a3;
      v13 = v11;
      if (v7 == 1)
      {
        v14 = v13;
      }

      else
      {
        v14 = v12;
      }
    }

    else
    {
      v14 = v8 < v9;
    }

    v15 = !v14;
    if (v14)
    {
      v16 = 8;
    }

    else
    {
      v16 = 0;
    }

    if (v15)
    {
      v6 = v4;
    }

    v4 = *(v4 + v16);
  }

  while (v4);
  if (v6 == v3)
  {
    return 0;
  }

  if (a2 > 4)
  {
    v17 = 0;
  }

  else
  {
    v17 = dword_1B341DC3C[a2];
  }

  v18 = *(v6 + 32);
  if (v18 > 4)
  {
    v19 = 0;
  }

  else
  {
    v19 = dword_1B341DC3C[v18];
  }

  v20 = v17 >= v19;
  if (v17 == v19)
  {
    v21 = *(v6 + 34);
    if (a2 != 1)
    {
      if (v21 > a3)
      {
        return 0;
      }

      return *(v6 + 40);
    }

    v20 = v21 >= a3;
  }

  if (!v20)
  {
    return 0;
  }

  return *(v6 + 40);
}

__n128 grl::ShapeLayerRenderer::setLayerMetrics(grl::ShapeLayerRenderer *this, const grl::LayerMetrics *a2)
{
  if (*(this + 152) == 1)
  {
    (**(this + 20))();
  }

  else
  {
    *(this + 152) = 1;
  }

  *(this + 20) = &unk_1F2A5F240;
  v4 = *(a2 + 8);
  *(this + 184) = *(a2 + 24);
  *(this + 168) = v4;
  v5 = *(a2 + 40);
  v6 = *(a2 + 56);
  v7 = *(a2 + 72);
  *(this + 62) = *(a2 + 22);
  *(this + 232) = v7;
  *(this + 216) = v6;
  *(this + 200) = v5;
  *(this + 20) = &unk_1F2A5F288;
  *(this + 252) = 0;
  if (*(a2 + 92) == 1)
  {
    *(this + 253) = *(a2 + 93);
    *(this + 252) = 1;
  }

  result = *(a2 + 6);
  v9 = *(a2 + 7);
  *(this + 36) = *(a2 + 16);
  *(this + 16) = result;
  *(this + 17) = v9;
  return result;
}

__n128 grl::ImageLayerRenderer::setLayerMetrics(grl::ImageLayerRenderer *this, const grl::LayerMetrics *a2)
{
  if (*(this + 168) == 1)
  {
    (**(this + 22))();
  }

  else
  {
    *(this + 168) = 1;
  }

  *(this + 22) = &unk_1F2A5F240;
  v4 = *(a2 + 8);
  *(this + 200) = *(a2 + 24);
  *(this + 184) = v4;
  result = *(a2 + 40);
  v6 = *(a2 + 56);
  v7 = *(a2 + 72);
  *(this + 66) = *(a2 + 22);
  *(this + 248) = v7;
  *(this + 232) = v6;
  *(this + 216) = result;
  return result;
}

void std::__tree<std::__value_type<grl::PropertyID,geo::Color<unsigned char,4,(geo::ColorSpace)2>>,std::__map_value_compare<grl::PropertyID,std::__value_type<grl::PropertyID,geo::Color<unsigned char,4,(geo::ColorSpace)2>>,std::less<grl::PropertyID>,true>,geo::allocator_adapter<std::__value_type<grl::PropertyID,geo::Color<unsigned char,4,(geo::ColorSpace)2>>,grl::zone_mallocator>>::destroy(void *result)
{
  if (result)
  {
    std::__tree<std::__value_type<grl::PropertyID,geo::Color<unsigned char,4,(geo::ColorSpace)2>>,std::__map_value_compare<grl::PropertyID,std::__value_type<grl::PropertyID,geo::Color<unsigned char,4,(geo::ColorSpace)2>>,std::less<grl::PropertyID>,true>,geo::allocator_adapter<std::__value_type<grl::PropertyID,geo::Color<unsigned char,4,(geo::ColorSpace)2>>,grl::zone_mallocator>>::destroy(*result);
    v2 = std::__tree<std::__value_type<grl::PropertyID,geo::Color<unsigned char,4,(geo::ColorSpace)2>>,std::__map_value_compare<grl::PropertyID,std::__value_type<grl::PropertyID,geo::Color<unsigned char,4,(geo::ColorSpace)2>>,std::less<grl::PropertyID>,true>,geo::allocator_adapter<std::__value_type<grl::PropertyID,geo::Color<unsigned char,4,(geo::ColorSpace)2>>,grl::zone_mallocator>>::destroy(result[1]);
    v3 = grl::zone_mallocator::instance(v2);
    geo::read_write_lock::read_lock((v3 + 32));
    atomic_fetch_add((v3 + 24), 0xFFFFFFFF);
    malloc_zone_free(*v3, result);

    geo::read_write_lock::unlock((v3 + 32));
  }
}

void grl::IconImage::init(uint64_t a1, grl::IconRenderer **a2, uint64_t a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  *a2 = 0;
  std::unique_ptr<grl::IconRenderer>::reset[abi:nn200100](a1, v5);
  v6 = *a1;
  if (*a1)
  {
    if ((a1 + 24) != (v6 + 120))
    {
      *(a1 + 24) = *(v6 + 30);
      *(a1 + 28) = *(v6 + 31);
      *(a1 + 32) = *(v6 + 32);
      *(a1 + 36) = *(v6 + 33);
      *(a1 + 40) = *(v6 + 34);
      *(a1 + 44) = *(v6 + 35);
      *(a1 + 48) = *(v6 + 36);
      *(a1 + 52) = *(v6 + 37);
      *(a1 + 56) = *(v6 + 38);
      *(a1 + 60) = *(v6 + 39);
      *(a1 + 64) = *(v6 + 40);
      *(a1 + 68) = *(v6 + 41);
      *(a1 + 72) = *(v6 + 42);
      *(a1 + 76) = *(v6 + 43);
      *(a1 + 80) = *(v6 + 44);
      *(a1 + 84) = *(v6 + 45);
      *(a1 + 88) = *(v6 + 46);
      *(a1 + 92) = *(v6 + 47);
      std::__tree<std::__value_type<grl::IconLayerMapKey,std::unique_ptr<grl::LayerMetrics>>,std::__map_value_compare<grl::IconLayerMapKey,std::__value_type<grl::IconLayerMapKey,std::unique_ptr<grl::LayerMetrics>>,grl::IconLayerMapKey,false>,geo::allocator_adapter<std::__value_type<grl::IconLayerMapKey,std::unique_ptr<grl::LayerMetrics>>,grl::zone_mallocator>>::destroy(*(a1 + 104));
      *(a1 + 96) = a1 + 104;
      *(a1 + 120) = 0;
      *(a1 + 104) = 0;
      v7 = *(v6 + 24);
      v8 = (v6 + 200);
      if (v7 != v8)
      {
        do
        {
          (*(*v7[5] + 16))(v41);
          std::__tree<std::__value_type<grl::IconLayerMapKey,std::unique_ptr<grl::LayerMetrics>>,std::__map_value_compare<grl::IconLayerMapKey,std::__value_type<grl::IconLayerMapKey,std::unique_ptr<grl::LayerMetrics>>,grl::IconLayerMapKey,false>,geo::allocator_adapter<std::__value_type<grl::IconLayerMapKey,std::unique_ptr<grl::LayerMetrics>>,grl::zone_mallocator>>::__emplace_unique_key_args<grl::IconLayerMapKey,grl::IconLayerMapKey const&,std::unique_ptr<grl::LayerMetrics>>(a1 + 96, *(v7 + 16), *(v7 + 17), (v7 + 4), v41);
          v9 = *v41;
          *v41 = 0;
          if (v9)
          {
            (*(*v9 + 8))(v9);
          }

          v10 = v7[1];
          if (v10)
          {
            do
            {
              v11 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              v11 = v7[2];
              v12 = *v11 == v7;
              v7 = v11;
            }

            while (!v12);
          }

          v7 = v11;
        }

        while (v11 != v8);
      }
    }

    v13 = *a1;
    if (*(*a1 + 72) == 1)
    {
      v14 = *(a1 + 138);
      *(a1 + 139) = *(v13 + 21);
      if ((v14 & 1) == 0)
      {
        *(a1 + 138) = 1;
      }

      if (*(v13 + 112) == 1)
      {
        v15 = *(a1 + 143);
        *(a1 + 144) = *(v13 + 22);
        if ((v15 & 1) == 0)
        {
          *(a1 + 143) = 1;
        }
      }

      else if (*(a1 + 143) == 1)
      {
        *(a1 + 143) = 0;
      }

      if (*(v13 + 113) == 1)
      {
        v17 = *(a1 + 148);
        *(a1 + 149) = *(v13 + 93);
        if ((v17 & 1) == 0)
        {
          *(a1 + 148) = 1;
        }
      }

      else if (*(a1 + 148) == 1)
      {
        *(a1 + 148) = 0;
      }

      v18 = *(v13 + 92);
      if ((*(a1 + 136) & 1) == 0)
      {
        *(a1 + 136) = 1;
      }

      *(a1 + 137) = v18;
      v19 = *(v13 + 101);
      if ((*(a1 + 168) & 1) == 0)
      {
        *(a1 + 168) = 1;
      }

      *(a1 + 169) = v19;
      v20 = *(v13 + 97);
      if ((*(a1 + 178) & 1) == 0)
      {
        *(a1 + 178) = 1;
      }

      *(a1 + 179) = v20;
    }

    if (grl::IconRenderer::hasPathLayers(v13))
    {
      LayerRenderer = grl::IconRenderer::findLayerRenderer(v13, 1u, 0);
      v22 = *(a1 + 153);
      *(a1 + 154) = *(LayerRenderer + 60);
      if ((v22 & 1) == 0)
      {
        *(a1 + 153) = 1;
      }

      v23 = grl::IconRenderer::findLayerRenderer(*a1, 1u, 0);
      v24 = *(a1 + 163);
      *(a1 + 164) = *(v23 + 101);
      if ((v24 & 1) == 0)
      {
        *(a1 + 163) = 1;
      }

      v25 = *(grl::IconRenderer::findLayerRenderer(*a1, 1u, 0) + 136);
      if ((*(a1 + 193) & 1) == 0)
      {
        *(a1 + 193) = 1;
      }

      *(a1 + 194) = v25;
      v26 = grl::IconRenderer::findLayerRenderer(*a1, 1u, 0);
      v27 = *(a1 + 173);
      *(a1 + 174) = *(v26 + 120);
      if ((v27 & 1) == 0)
      {
        *(a1 + 173) = 1;
      }

      v28 = grl::IconRenderer::findLayerRenderer(*a1, 1u, 0);
      v29 = *(a1 + 183);
      *(a1 + 184) = *(v28 + 92);
      if ((v29 & 1) == 0)
      {
        *(a1 + 183) = 1;
      }

      v30 = grl::IconRenderer::findLayerRenderer(*a1, 1u, 0);
      v31 = *(a1 + 188);
      *(a1 + 189) = *(v30 + 84);
      if ((v31 & 1) == 0)
      {
        *(a1 + 188) = 1;
      }

      v32 = grl::IconRenderer::findLayerRenderer(*a1, 1u, 0);
      v33 = *(a1 + 195);
      *(a1 + 196) = *(v32 + 76);
      if ((v33 & 1) == 0)
      {
        *(a1 + 195) = 1;
      }
    }

    v34 = *(*a1 + 32);
    v35 = *a1 + 40;
    if (v34 != v35)
    {
      while (*(v34 + 16) != 2)
      {
        v36 = v34[1];
        if (v36)
        {
          do
          {
            v37 = v36;
            v36 = *v36;
          }

          while (v36);
        }

        else
        {
          do
          {
            v37 = v34[2];
            v12 = *v37 == v34;
            v34 = v37;
          }

          while (!v12);
        }

        v34 = v37;
        if (v37 == v35)
        {
          goto LABEL_62;
        }
      }

      v38 = grl::IconRenderer::findLayerRenderer(*a1, 2u, 0);
      v39 = *(a1 + 158);
      *(a1 + 159) = *(v38 + 50);
      if ((v39 & 1) == 0)
      {
        *(a1 + 158) = 1;
      }
    }

LABEL_62:
    LODWORD(v40) = *(*a1 + 300);
    DWORD1(v40) = *(a3 + 8);
    *(&v40 + 1) = *(a1 + 56);
    *(a1 + 200) = v40;
    if (*(a3 + 3) == 1)
    {
      std::unique_ptr<grl::IconRenderer>::reset[abi:nn200100](a1, 0);
    }
  }

  else
  {
    if (GEOGetGeoResourceLibRendererLog::onceToken != -1)
    {
      dispatch_once(&GEOGetGeoResourceLibRendererLog::onceToken, &__block_literal_global_13_53794);
    }

    v16 = GEOGetGeoResourceLibRendererLog::log;
    if (os_log_type_enabled(GEOGetGeoResourceLibRendererLog::log, OS_LOG_TYPE_ERROR))
    {
      *v41 = 136315650;
      *&v41[4] = "!GRL_SUFFIX_LINE_NUMBER(didTriggerAssert)";
      v42 = 2080;
      v43 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoResourceLib/GeoResourceLib/Renderer/IconImage.cpp";
      v44 = 1024;
      v45 = 21;
      _os_log_impl(&dword_1B2754000, v16, OS_LOG_TYPE_ERROR, "grl::IconImage should never be passed a nullptr grl::IconRenderer.: Assertion with expression - %s : Failed in file - %s line - %i", v41, 0x1Cu);
    }
  }
}

grl::IconRenderer *std::unique_ptr<grl::IconRenderer>::reset[abi:nn200100](grl::IconRenderer **a1, grl::IconRenderer *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    grl::IconRenderer::~IconRenderer(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::__tree<std::__value_type<grl::IconLayerMapKey,std::unique_ptr<grl::LayerMetrics>>,std::__map_value_compare<grl::IconLayerMapKey,std::__value_type<grl::IconLayerMapKey,std::unique_ptr<grl::LayerMetrics>>,grl::IconLayerMapKey,false>,geo::allocator_adapter<std::__value_type<grl::IconLayerMapKey,std::unique_ptr<grl::LayerMetrics>>,grl::zone_mallocator>>::destroy(void *result)
{
  if (result)
  {
    std::__tree<std::__value_type<grl::IconLayerMapKey,std::unique_ptr<grl::LayerMetrics>>,std::__map_value_compare<grl::IconLayerMapKey,std::__value_type<grl::IconLayerMapKey,std::unique_ptr<grl::LayerMetrics>>,grl::IconLayerMapKey,false>,geo::allocator_adapter<std::__value_type<grl::IconLayerMapKey,std::unique_ptr<grl::LayerMetrics>>,grl::zone_mallocator>>::destroy(*result);
    std::__tree<std::__value_type<grl::IconLayerMapKey,std::unique_ptr<grl::LayerMetrics>>,std::__map_value_compare<grl::IconLayerMapKey,std::__value_type<grl::IconLayerMapKey,std::unique_ptr<grl::LayerMetrics>>,grl::IconLayerMapKey,false>,geo::allocator_adapter<std::__value_type<grl::IconLayerMapKey,std::unique_ptr<grl::LayerMetrics>>,grl::zone_mallocator>>::destroy(result[1]);
    v2 = result[5];
    result[5] = 0;
    if (v2)
    {
      v2 = (*(*v2 + 8))(v2);
    }

    if (*(result + 36) == 1)
    {
      *(result + 36) = 0;
    }

    v3 = grl::zone_mallocator::instance(v2);
    geo::read_write_lock::read_lock((v3 + 32));
    atomic_fetch_add((v3 + 24), 0xFFFFFFFF);
    malloc_zone_free(*v3, result);

    geo::read_write_lock::unlock((v3 + 32));
  }
}

BOOL grl::IconRenderer::hasPathLayers(grl::IconRenderer *this)
{
  v1 = *(this + 4);
  v2 = this + 40;
  if (v1 == this + 40)
  {
    return 0;
  }

  while (1)
  {
    v3 = *(v1 + 16);
    result = v3 == 1;
    if (v3 == 1)
    {
      break;
    }

    v5 = *(v1 + 1);
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
        v6 = *(v1 + 2);
        v7 = *v6 == v1;
        v1 = v6;
      }

      while (!v7);
    }

    v1 = v6;
    if (v6 == v2)
    {
      return 0;
    }
  }

  return result;
}

void std::__tree<std::__value_type<unsigned short,grl::ImageProvider>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,grl::ImageProvider>,std::less<unsigned short>,true>,geo::allocator_adapter<std::__value_type<unsigned short,grl::ImageProvider>,grl::zone_mallocator>>::destroy(void *result)
{
  if (result)
  {
    std::__tree<std::__value_type<unsigned short,grl::ImageProvider>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,grl::ImageProvider>,std::less<unsigned short>,true>,geo::allocator_adapter<std::__value_type<unsigned short,grl::ImageProvider>,grl::zone_mallocator>>::destroy(*result);
    std::__tree<std::__value_type<unsigned short,grl::ImageProvider>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,grl::ImageProvider>,std::less<unsigned short>,true>,geo::allocator_adapter<std::__value_type<unsigned short,grl::ImageProvider>,grl::zone_mallocator>>::destroy(result[1]);
    v2 = std::__function::__value_func<std::shared_ptr<esl::QuartzImage> ()(void)>::~__value_func[abi:nn200100]((result + 6));
    v3 = grl::zone_mallocator::instance(v2);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<std::__value_type<unsigned short,grl::ImageProvider>,void *>>(v3, result);
  }
}

uint64_t std::shared_ptr<grl::IconImage>::operator=[abi:nn200100]<grl::IconImage,std::default_delete<grl::IconImage>,0>(uint64_t a1, void *a2)
{
  if (*a2)
  {
    operator new();
  }

  *a2 = 0;
  v3 = *(a1 + 8);
  *a1 = 0u;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  return a1;
}

void std::__tree<std::string,std::less<std::string>,geo::allocator_adapter<std::string,grl::zone_mallocator>>::destroy(void *result)
{
  if (result)
  {
    std::__tree<std::string,std::less<std::string>,geo::allocator_adapter<std::string,grl::zone_mallocator>>::destroy(*result);
    v2 = std::__tree<std::string,std::less<std::string>,geo::allocator_adapter<std::string,grl::zone_mallocator>>::destroy(result[1]);
    if (*(result + 55) < 0)
    {
      operator delete(result[4]);
    }

    v3 = grl::zone_mallocator::instance(v2);
    geo::read_write_lock::read_lock((v3 + 32));
    atomic_fetch_add((v3 + 24), 0xFFFFFFFF);
    malloc_zone_free(*v3, result);

    geo::read_write_lock::unlock((v3 + 32));
  }
}

void std::__tree<std::__value_type<std::string,geo::_retain_ptr<__CTFont const*,geo::_retain_cf<__CTFont const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>>,std::__map_value_compare<std::string,std::__value_type<std::string,geo::_retain_ptr<__CTFont const*,geo::_retain_cf<__CTFont const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>>,std::less<std::string>,true>,geo::allocator_adapter<std::__value_type<std::string,geo::_retain_ptr<__CTFont const*,geo::_retain_cf<__CTFont const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>>,grl::zone_mallocator>>::destroy(void *result)
{
  if (result)
  {
    std::__tree<std::__value_type<std::string,geo::_retain_ptr<__CTFont const*,geo::_retain_cf<__CTFont const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>>,std::__map_value_compare<std::string,std::__value_type<std::string,geo::_retain_ptr<__CTFont const*,geo::_retain_cf<__CTFont const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>>,std::less<std::string>,true>,geo::allocator_adapter<std::__value_type<std::string,geo::_retain_ptr<__CTFont const*,geo::_retain_cf<__CTFont const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>>,grl::zone_mallocator>>::destroy(*result);
    std::__tree<std::__value_type<std::string,geo::_retain_ptr<__CTFont const*,geo::_retain_cf<__CTFont const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>>,std::__map_value_compare<std::string,std::__value_type<std::string,geo::_retain_ptr<__CTFont const*,geo::_retain_cf<__CTFont const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>>,std::less<std::string>,true>,geo::allocator_adapter<std::__value_type<std::string,geo::_retain_ptr<__CTFont const*,geo::_retain_cf<__CTFont const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>>,grl::zone_mallocator>>::destroy(result[1]);
    result[7] = &unk_1F2A5F810;
    v2 = result[8];
    if (v2)
    {
      CFRelease(v2);
    }

    if (*(result + 55) < 0)
    {
      operator delete(result[4]);
    }

    v3 = grl::zone_mallocator::instance(v2);
    geo::read_write_lock::read_lock((v3 + 32));
    atomic_fetch_add((v3 + 24), 0xFFFFFFFF);
    malloc_zone_free(*v3, result);

    geo::read_write_lock::unlock((v3 + 32));
  }
}

grl::IconImage **std::unique_ptr<grl::IconImage>::~unique_ptr[abi:nn200100](grl::IconImage **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    grl::IconImage::~IconImage(v2);
    MEMORY[0x1B8C62190]();
  }

  return a1;
}

void std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](void ****a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:nn200100](v2);
    v3 = **a1;
    v5 = grl::zone_mallocator::instance(v4);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::string>(v5, v3);
  }
}

void grl::IconImage::image(grl::IconImage *this, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  std::mutex::lock((a2 + 216));
  v4 = *(a2 + 8);
  if (!v4 || ((*(*v4 + 40))(v4) & 1) == 0)
  {
    v5 = *a2;
    if (*a2)
    {
      v6 = *(v5 + 38);
      if (v6)
      {
        v7 = *(v5 + 39);
        *&v8 = *(v5 + 38);
        *(&v8 + 1) = v7;
        if (v7)
        {
          atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
        }
      }

      else
      {
        v9 = 1;
        do
        {
          v10 = *(v5 + v6 + 38);
          if ((v9 & 1) == 0)
          {
            break;
          }

          v9 = 0;
          v6 = 1;
        }

        while (v10 >= 1.0);
        if (v10 >= 1.0)
        {
          operator new();
        }

        if (GEOGetGeoResourceLibRendererLog::onceToken != -1)
        {
          dispatch_once(&GEOGetGeoResourceLibRendererLog::onceToken, &__block_literal_global_13_53794);
        }

        v11 = GEOGetGeoResourceLibRendererLog::log;
        v12 = os_log_type_enabled(GEOGetGeoResourceLibRendererLog::log, OS_LOG_TYPE_ERROR);
        v8 = 0uLL;
        if (v12)
        {
          grl::IconRenderer::description(buf, v5);
          if (v20 >= 0)
          {
            v13 = buf;
          }

          else
          {
            v13 = *buf;
          }

          *v18 = 136315138;
          *&v18[4] = v13;
          _os_log_impl(&dword_1B2754000, v11, OS_LOG_TYPE_ERROR, "Icon generated with metric size of zero. %s", v18, 0xCu);
          if (SHIBYTE(v20) < 0)
          {
            operator delete(*buf);
          }

          v8 = 0uLL;
        }
      }

      v14 = *(a2 + 16);
      *(a2 + 8) = v8;
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v14);
      }

      std::unique_ptr<grl::IconRenderer>::reset[abi:nn200100](a2, 0);
    }
  }

  v15 = *(a2 + 8);
  if (v15 && ((*(*v15 + 40))(v15) & 1) != 0)
  {
    v16 = *(*(a2 + 8) + 16);
    *this = &unk_1F29E1200;
    if (v16)
    {
      CFRetain(v16);
    }
  }

  else
  {
    if (GEOGetGeoResourceLibRendererLog::onceToken != -1)
    {
      dispatch_once(&GEOGetGeoResourceLibRendererLog::onceToken, &__block_literal_global_13_53794);
    }

    v17 = GEOGetGeoResourceLibRendererLog::log;
    if (os_log_type_enabled(GEOGetGeoResourceLibRendererLog::log, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1B2754000, v17, OS_LOG_TYPE_ERROR, "grl::IconImage failed to generate the final icon image.", buf, 2u);
    }

    v16 = 0;
    *this = &unk_1F29E1200;
  }

  *(this + 1) = v16;
  std::mutex::unlock((a2 + 216));
}

void *esl::QuartzContext::QuartzContext(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  *a1 = &unk_1F29E1290;
  a1[1] = 0;
  if (a2 > 1)
  {
    v9 = 8194;
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
  }

  else
  {
    DeviceRGB = CGColorSpaceCreateDeviceGray();
    v9 = 0;
  }

  v10 = (*(*a1 + 88))(a1, a2, a3);
  a1[1] = CGBitmapContextCreate(0, a3, a4, 8uLL, v10, DeviceRGB, v9);
  CGColorSpaceRelease(DeviceRGB);
  (*(*a1 + 16))(a1);
  return a1;
}

uint64_t esl::QuartzContext::bitmapAlignedBytesPerRow(uint64_t a1, int a2, int a3)
{
  if (a2 == 1)
  {
    return 8 * a3;
  }

  else
  {
    return CGBitmapGetAlignedBytesPerRow();
  }
}

uint64_t esl::QuartzContext::clear(esl::QuartzContext *this)
{
  result = (*(*this + 24))(this);
  if (result)
  {
    v3 = *(this + 1);

    return MEMORY[0x1EEDB92B8](v3);
  }

  return result;
}

BOOL esl::QuartzContext::isValid(esl::QuartzContext *this, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(this + 1);
  if (!v2)
  {
    v3 = GEOGetEaselContextLog(this, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v7 = "valid";
      v8 = 2080;
      v9 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoResourceLib/Submodules/Easel/context/context.cpp";
      v10 = 1024;
      v11 = 2051;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_ERROR, "Invalid QuartzContext: missing CGContextRef.: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }

    v12 = 0;
    *v13 = 0xE00000001;
    v14 = 1;
    v15 = getpid();
    v5 = 648;
    if (!sysctl(v13, 4u, buf, &v5, 0, 0) && (v12 & 0x800) != 0)
    {
      __debugbreak();
    }
  }

  return v2 != 0;
}

uint64_t grl::ShapeLayerRenderer::renderToContext(uint64_t a1, void *a2, uint64_t *a3, _BYTE *a4)
{
  if (*(a1 + 10) != 1)
  {
    return 1;
  }

  v4 = *(a1 + 136);
  v5 = 1;
  if (v4 <= 9)
  {
    if (((1 << v4) & 0x3D8) != 0)
    {
      v6 = a2[1];
      v11[0] = *a2;
      v11[1] = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        v7 = grl::ShapeLayerRenderer::renderBalloonToContext(a1, v11, a3, a4);
LABEL_9:
        v5 = v7;
        std::__shared_weak_count::__release_shared[abi:nn200100](v6);
        return v5;
      }

      return grl::ShapeLayerRenderer::renderBalloonToContext(a1, v11, a3, a4);
    }

    else
    {
      v6 = a2[1];
      v10[0] = *a2;
      v10[1] = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        v7 = grl::ShapeLayerRenderer::renderShapeToContext(a1, v10, a3, a4);
        goto LABEL_9;
      }

      return grl::ShapeLayerRenderer::renderShapeToContext(a1, v10, a3, a4);
    }
  }

  return v5;
}

uint64_t grl::ShapeLayerRenderer::renderShapeToContext(uint64_t a1, void *a2, uint64_t *a3, _BYTE *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 152) & 1) == 0)
  {
    if (GEOGetGeoResourceLibRendererLog::onceToken != -1)
    {
      dispatch_once(&GEOGetGeoResourceLibRendererLog::onceToken, &__block_literal_global_13_53794);
    }

    v9 = GEOGetGeoResourceLibRendererLog::log;
    if (!os_log_type_enabled(GEOGetGeoResourceLibRendererLog::log, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 0;
    v10 = "Nullptr for LayerMetrics being used to render layer.";
LABEL_24:
    _os_log_impl(&dword_1B2754000, v9, OS_LOG_TYPE_ERROR, v10, buf, 2u);
    return 0;
  }

  *buf = 0;
  if (!*(a1 + 204))
  {
    if (GEOGetGeoResourceLibRendererLog::onceToken != -1)
    {
      dispatch_once(&GEOGetGeoResourceLibRendererLog::onceToken, &__block_literal_global_13_53794);
    }

    v9 = GEOGetGeoResourceLibRendererLog::log;
    if (!os_log_type_enabled(GEOGetGeoResourceLibRendererLog::log, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 0;
    v10 = "Metrics must contain a size to draw into a context.";
    goto LABEL_24;
  }

  if (!*a2 || ((*(**a2 + 24))(*a2) & 1) == 0)
  {
    if (GEOGetGeoResourceLibRendererLog::onceToken != -1)
    {
      dispatch_once(&GEOGetGeoResourceLibRendererLog::onceToken, &__block_literal_global_13_53794);
    }

    v9 = GEOGetGeoResourceLibRendererLog::log;
    if (!os_log_type_enabled(GEOGetGeoResourceLibRendererLog::log, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 0;
    v10 = "A valid context is required to draw the path layer into.";
    goto LABEL_24;
  }

  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  if (v6 != v7)
  {
    while (*v6 != 3)
    {
      if (++v6 == v7)
      {
        v6 = *(a1 + 24);
        break;
      }
    }
  }

  if (v6 == v7)
  {
    v8 = 0;
  }

  else if (*(a1 + 124))
  {
    v8 = 1;
  }

  else
  {
    v8 = *(a1 + 132) != 0.0;
  }

  (*(**a2 + 456))(*a2, v8);
  v12 = *(a1 + 136);
  if (v12 > 3)
  {
    if (v12 - 6 < 4 || v12 == 4)
    {
      return 0;
    }

    if (v12 != 5)
    {
      goto LABEL_49;
    }

    if (GEOGetGeoResourceLibRendererLog::onceToken != -1)
    {
      dispatch_once(&GEOGetGeoResourceLibRendererLog::onceToken, &__block_literal_global_13_53794);
    }

    v14 = GEOGetGeoResourceLibRendererLog::log;
    if (os_log_type_enabled(GEOGetGeoResourceLibRendererLog::log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "false";
      *&buf[12] = 2080;
      *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoResourceLib/GeoResourceLib/Renderer/LayerRenderer.cpp";
      v21 = 1024;
      v22 = 123;
      _os_log_impl(&dword_1B2754000, v14, OS_LOG_TYPE_ERROR, "Bottle shapetype is deprecated. Use Rectalloon instead.: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }

LABEL_47:
    gm::Box<float,2>::operator+((a1 + 172), (a1 + 212));
    operator new();
  }

  if (*(a1 + 136) <= 1u)
  {
    if (*(a1 + 136))
    {
      gm::Box<float,2>::operator+((a1 + 172), (a1 + 212));
      operator new();
    }

    gm::Box<float,2>::operator+((a1 + 172), (a1 + 212));
    operator new();
  }

  if (v12 == 2)
  {
    goto LABEL_47;
  }

  if (v12 == 3)
  {
    if (GEOGetGeoResourceLibRendererLog::onceToken != -1)
    {
      dispatch_once(&GEOGetGeoResourceLibRendererLog::onceToken, &__block_literal_global_13_53794);
    }

    v15 = GEOGetGeoResourceLibRendererLog::log;
    if (os_log_type_enabled(GEOGetGeoResourceLibRendererLog::log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "_data.shapeType() != ShapeType::Balloon";
      *&buf[12] = 2080;
      *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoResourceLib/GeoResourceLib/Renderer/LayerRenderer.cpp";
      v21 = 1024;
      v22 = 134;
      v16 = "Balloon paths have their own seperate drawing function, the code should never reach this point.: Assertion with expression - %s : Failed in file - %s line - %i";
      v17 = v15;
      v18 = 28;
LABEL_53:
      _os_log_impl(&dword_1B2754000, v17, OS_LOG_TYPE_ERROR, v16, buf, v18);
      return 0;
    }

    return 0;
  }

LABEL_49:
  if (GEOGetGeoResourceLibRendererLog::onceToken != -1)
  {
    dispatch_once(&GEOGetGeoResourceLibRendererLog::onceToken, &__block_literal_global_13_53794);
  }

  v19 = GEOGetGeoResourceLibRendererLog::log;
  if (os_log_type_enabled(GEOGetGeoResourceLibRendererLog::log, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v16 = "Failed to generate a path for a path layer.";
    v17 = v19;
    v18 = 2;
    goto LABEL_53;
  }

  return 0;
}

esl::QuartzPath *esl::QuartzPath::QuartzPath(esl::QuartzPath *this)
{
  *this = &unk_1F29E1698;
  *(this + 1) = 0;
  *(this + 1) = CGPathCreateMutable();
  return this;
}

void grl::drawFillToContext(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  if (!v5 || ((*(*v5 + 24))(v5) & 1) == 0)
  {
    if (GEOGetGeoResourceLibEaselLog::onceToken != -1)
    {
      dispatch_once(&GEOGetGeoResourceLibEaselLog::onceToken, &__block_literal_global_29_53818);
    }

    v13 = GEOGetGeoResourceLibEaselLog::log;
    if (!os_log_type_enabled(GEOGetGeoResourceLibEaselLog::log, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 136315650;
    *&buf[4] = "!GRL_SUFFIX_LINE_NUMBER(didTriggerAssert)";
    *&buf[12] = 2080;
    *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoResourceLib/GeoResourceLib/Renderer/EaselUtilities.cpp";
    *&buf[22] = 1024;
    v17 = 370;
    v10 = "A non-nullptr context is required for drawFillToContext().: Assertion with expression - %s : Failed in file - %s line - %i";
LABEL_19:
    v11 = v13;
    v12 = 28;
    goto LABEL_20;
  }

  if (!*a2 || ((*(**a2 + 16))(*a2) & 1) == 0)
  {
    if (GEOGetGeoResourceLibEaselLog::onceToken != -1)
    {
      dispatch_once(&GEOGetGeoResourceLibEaselLog::onceToken, &__block_literal_global_29_53818);
    }

    v13 = GEOGetGeoResourceLibEaselLog::log;
    if (!os_log_type_enabled(GEOGetGeoResourceLibEaselLog::log, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 136315650;
    *&buf[4] = "!GRL_SUFFIX_LINE_NUMBER(didTriggerAssert)";
    *&buf[12] = 2080;
    *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoResourceLib/GeoResourceLib/Renderer/EaselUtilities.cpp";
    *&buf[22] = 1024;
    v17 = 373;
    v10 = "A non-nullptr path is required for drawFillToContext().: Assertion with expression - %s : Failed in file - %s line - %i";
    goto LABEL_19;
  }

  if (!*(a3 + 3))
  {
    if (GEOGetGeoResourceLibRendererLog::onceToken != -1)
    {
      dispatch_once(&GEOGetGeoResourceLibRendererLog::onceToken, &__block_literal_global_13_53794);
    }

    v13 = GEOGetGeoResourceLibRendererLog::log;
    if (!os_log_type_enabled(GEOGetGeoResourceLibRendererLog::log, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 136315650;
    *&buf[4] = "!GRL_SUFFIX_LINE_NUMBER(didTriggerAssert)";
    *&buf[12] = 2080;
    *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoResourceLib/GeoResourceLib/Renderer/EaselUtilities.cpp";
    *&buf[22] = 1024;
    v17 = 376;
    v10 = "A non-zero alpha color is required to draw for drawFillToContext().: Assertion with expression - %s : Failed in file - %s line - %i";
    goto LABEL_19;
  }

  if ((*(**a2 + 24))())
  {
    if (GEOGetGeoResourceLibRendererLog::onceToken != -1)
    {
      dispatch_once(&GEOGetGeoResourceLibRendererLog::onceToken, &__block_literal_global_13_53794);
    }

    v9 = GEOGetGeoResourceLibRendererLog::log;
    if (os_log_type_enabled(GEOGetGeoResourceLibRendererLog::log, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v10 = "Receieved empty path for drawFillToContext().";
      v11 = v9;
      v12 = 2;
LABEL_20:
      _os_log_impl(&dword_1B2754000, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);
    }
  }

  else
  {
    esl::QuartzColor::QuartzColor(buf, a3);
    if (esl::QuartzColor::isValid(buf))
    {
      (*(**a1 + 408))(*a1);
      (*(**a1 + 232))(*a1, buf);
      (*(**a1 + 224))(*a1, a4);
      (*(**a1 + 288))();
      (*(**a1 + 312))();
      (*(**a1 + 400))();
    }

    else
    {
      if (GEOGetGeoResourceLibEaselLog::onceToken != -1)
      {
        dispatch_once(&GEOGetGeoResourceLibEaselLog::onceToken, &__block_literal_global_29_53818);
      }

      v14 = GEOGetGeoResourceLibEaselLog::log;
      if (os_log_type_enabled(GEOGetGeoResourceLibEaselLog::log, OS_LOG_TYPE_ERROR))
      {
        *v15 = 0;
        _os_log_impl(&dword_1B2754000, v14, OS_LOG_TYPE_ERROR, "Failed to create the fill color for a path.", v15, 2u);
      }
    }

    *buf = &unk_1F29E15F0;
    *&buf[8] = &unk_1F29E1130;
    if (*&buf[16])
    {
      CFRelease(*&buf[16]);
    }
  }
}

BOOL esl::QuartzPath::isEmpty(esl::QuartzPath *this)
{
  BoundingBox = CGPathGetBoundingBox(*(this + 1));

  return CGRectIsNull(BoundingBox);
}

void *esl::QuartzColor::QuartzColor(void *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_1F29E15F0;
  a1[1] = &unk_1F29E1130;
  a1[2] = 0;
  v5.i32[0] = *a2;
  v5.i32[1] = a2[1];
  v6 = vdup_n_s32(0x437F0000u);
  v7.i32[0] = a2[2];
  v7.i32[1] = a2[3];
  v9[0] = vcvtq_f64_f32(vdiv_f32(vcvt_f32_u32(v5), v6));
  v9[1] = vcvtq_f64_f32(vdiv_f32(vcvt_f32_u32(v7), v6));
  esl::QuartzColor::createColor(a1, 2, v9);
  return a1;
}

void *esl::QuartzColor::createColor(uint64_t a1, int a2, const CGFloat *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v9 = &unk_1F29E1230;
  cf = 0;
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return geo::_retain_ptr<CGColorSpace *,geo::_retain_cf<CGColorSpace *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(&v9);
      }

      v5 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F138]);
    }

    else
    {
      v5 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1B0]);
    }
  }

  else
  {
    switch(a2)
    {
      case 4:
        v5 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0B0]);
        break;
      case 3:
        v5 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0B8]);
        break;
      case 2:
        v5 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
        break;
      default:
        return geo::_retain_ptr<CGColorSpace *,geo::_retain_cf<CGColorSpace *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(&v9);
    }
  }

  cf = v5;
  if (v5)
  {
    v6 = CGColorCreate(v5, a3);
    v7 = *(a1 + 16);
    *(a1 + 16) = v6;
    if (v7)
    {
      CFRelease(v7);
    }
  }

  return geo::_retain_ptr<CGColorSpace *,geo::_retain_cf<CGColorSpace *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(&v9);
}

void *geo::_retain_ptr<CGColorSpace *,geo::_retain_cf<CGColorSpace *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(void *a1)
{
  *a1 = &unk_1F29E1230;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void esl::QuartzContext::saveState(esl::QuartzContext *this)
{
  if ((*(*this + 24))(this))
  {
    v2 = *(this + 1);

    CGContextSaveGState(v2);
  }
}

uint64_t esl::QuartzContext::setFillColor(uint64_t (***this)(CGContext **), const esl::QuartzColor *a2)
{
  v6[3] = *MEMORY[0x1E69E9840];
  result = (*(*a2 + 48))(a2);
  if (result)
  {
    result = (*this)[3](this);
    if (result)
    {
      v5 = this[1];
      esl::QuartzColor::color(v6, a2);
      CGContextSetFillColorWithColor(v5, v6[1]);
      geo::_retain_ptr<CGColor *,geo::_retain_cf<CGColor *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(v6);
      return 1;
    }
  }

  return result;
}

uint64_t *esl::QuartzColor::color@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>)
{
  *a1 = &unk_1F29E1130;
  v3 = this[2];
  if (v3)
  {
    this = CFRetain(this[2]);
  }

  a1[1] = v3;
  return this;
}

void *geo::_retain_ptr<CGColor *,geo::_retain_cf<CGColor *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(void *a1)
{
  *a1 = &unk_1F29E1130;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void esl::QuartzContext::setBlendMode(void *a1, int a2)
{
  if ((*(*a1 + 24))(a1))
  {
    v4 = a1[1];
    if ((a2 - 1) > 0x1A)
    {
      v5 = kCGBlendModeNormal;
    }

    else
    {
      v5 = dword_1B33ADE90[(a2 - 1)];
    }

    CGContextSetBlendMode(v4, v5);
  }
}

void esl::QuartzContext::fillPath(esl::QuartzContext *this)
{
  if ((*(*this + 24))(this))
  {
    v2 = *(this + 1);

    CGContextFillPath(v2);
  }
}

void esl::QuartzContext::restoreState(esl::QuartzContext *this)
{
  if ((*(*this + 24))(this))
  {
    v2 = *(this + 1);

    CGContextRestoreGState(v2);
  }
}

void esl::QuartzPath::~QuartzPath(esl::QuartzPath *this)
{
  *this = &unk_1F29E1698;
  v2 = *(this + 1);
  if (v2)
  {
    CGPathRelease(v2);
    *(this + 1) = 0;
  }
}

{
  esl::QuartzPath::~QuartzPath(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t grl::ImageLayerRenderer::renderToContext(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v140 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 168) & 1) == 0)
  {
    if (GEOGetGeoResourceLibRendererLog::onceToken != -1)
    {
      dispatch_once(&GEOGetGeoResourceLibRendererLog::onceToken, &__block_literal_global_13_53794);
    }

    v23 = GEOGetGeoResourceLibRendererLog::log;
    if (!os_log_type_enabled(GEOGetGeoResourceLibRendererLog::log, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 136315650;
    *&buf[4] = "!GRL_SUFFIX_LINE_NUMBER(didTriggerAssert)";
    *&buf[12] = 2080;
    *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoResourceLib/GeoResourceLib/Renderer/LayerRenderer.cpp";
    *&buf[22] = 1024;
    v139 = 368;
    v24 = "Nullptr for LayerMetrics being used to render layer.: Assertion with expression - %s : Failed in file - %s line - %i";
    goto LABEL_26;
  }

  *buf = 0;
  if (!*(a1 + 220))
  {
    if (GEOGetGeoResourceLibRendererLog::onceToken != -1)
    {
      dispatch_once(&GEOGetGeoResourceLibRendererLog::onceToken, &__block_literal_global_13_53794);
    }

    v23 = GEOGetGeoResourceLibRendererLog::log;
    if (!os_log_type_enabled(GEOGetGeoResourceLibRendererLog::log, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 136315650;
    *&buf[4] = "!GRL_SUFFIX_LINE_NUMBER(didTriggerAssert)";
    *&buf[12] = 2080;
    *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoResourceLib/GeoResourceLib/Renderer/LayerRenderer.cpp";
    *&buf[22] = 1024;
    v139 = 371;
    v24 = "Metrics must contain a size to draw into a context.: Assertion with expression - %s : Failed in file - %s line - %i";
LABEL_26:
    _os_log_impl(&dword_1B2754000, v23, OS_LOG_TYPE_ERROR, v24, buf, 0x1Cu);
    return 0;
  }

  if (*(a1 + 10) != 1)
  {
    return 1;
  }

  v9 = *(a1 + 304);
  if (!v9)
  {
    std::__throw_bad_function_call[abi:nn200100]();
    goto LABEL_295;
  }

  v4 = a4;
  v5 = a2;
  (*(*v9 + 48))(&v111);
  v10 = v111;
  if (!v111 || (v11 = vmaxnm_f32(vsub_f32(*(a1 + 196), *(a1 + 188)), 0), vmul_lane_f32(v11, v11, 1).f32[0] <= 0.0))
  {
    if (GEOGetGeoResourceLibRendererLog::onceToken != -1)
    {
      dispatch_once(&GEOGetGeoResourceLibRendererLog::onceToken, &__block_literal_global_13_53794);
    }

    v27 = GEOGetGeoResourceLibRendererLog::log;
    if (os_log_type_enabled(GEOGetGeoResourceLibRendererLog::log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "!GRL_SUFFIX_LINE_NUMBER(didTriggerAssert)";
      *&buf[12] = 2080;
      *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoResourceLib/GeoResourceLib/Renderer/LayerRenderer.cpp";
      *&buf[22] = 1024;
      v139 = 384;
      _os_log_impl(&dword_1B2754000, v27, OS_LOG_TYPE_ERROR, "Image layer needs an image and layer metrics to render.: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }

    v25 = 0;
    goto LABEL_249;
  }

  v12 = gm::Box<float,2>::operator+((a1 + 188), (a1 + 228));
  v14 = v13;
  *v108 = v12;
  v108[1] = v15;
  v109 = v13;
  v110 = v16;
  v104 = gm::Box<float,2>::operator+((a1 + 204), (a1 + 228));
  v105 = v17;
  v106 = v18;
  v107 = v19;
  v103 = 0uLL;
  if (*(v4 + 12) == 1)
  {
    if (*(v4 + 28))
    {
      v6 = v112;
      if (v112)
      {
        atomic_fetch_add_explicit(&v112->__shared_owners_, 1uLL, memory_order_relaxed);
        v14 = v109;
      }

      v20 = *(v4 + 32);
      v21 = *(v4 + 36);
      if ((*(*v10 + 40))(v10))
      {
        if ((*(*v10 + 24))(v10) && (*(*v10 + 32))(v10))
        {
          if (v20 > 0.0 && v21 > 0.0)
          {
            v22 = v14 - v12;
            *v135 = v10;
            v136 = v6;
            if (v6)
            {
              atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
              grl::getSize(&v126, v135);
              std::__shared_weak_count::__release_shared[abi:nn200100](v6);
            }

            else
            {
              grl::getSize(&v126, v135);
            }

            *v133 = 0;
            v134 = __PAIR64__(HIDWORD(v126), LODWORD(v20));
            v127 = *&v126 - v21;
            v128 = 0.0;
            v129 = v126;
            *v130 = v20;
            *&v130[4] = 0;
            v131 = *&v126 - v21;
            v132 = *(&v126 + 1);
            *&v125 = 0;
            *(&v125 + 1) = __PAIR64__(HIDWORD(v126), LODWORD(v20));
            v117 = v22 - v21;
            v118 = 0;
            v119 = v22;
            v120 = HIDWORD(v126);
            v121 = v20;
            v122 = 0.0;
            v123 = v22 - v21;
            v124 = HIDWORD(v126);
            (*(*v10 + 56))(buf, v10, v133);
            v98 = *buf;
            v116 = *buf;
            (*(*v10 + 56))(buf, v10, v130);
            v97 = *buf;
            *v115 = *buf;
            (*(*v10 + 56))(buf, v10, &v127);
            v91 = *buf;
            v7 = *&buf[8];
            v113 = *buf;
            v114 = *&buf[8];
            if (!v98.n128_u64[0] || ((*(*v98.n128_u64[0] + 40))(v98.n128_u64[0], v98) & 1) == 0)
            {
              if (GEOGetGeoResourceLibEaselLog::onceToken != -1)
              {
                dispatch_once(&GEOGetGeoResourceLibEaselLog::onceToken, &__block_literal_global_29_53818);
              }

              v92 = GEOGetGeoResourceLibEaselLog::log;
              v93 = os_log_type_enabled(GEOGetGeoResourceLibEaselLog::log, OS_LOG_TYPE_ERROR);
              v33 = 0uLL;
              if (!v93)
              {
                goto LABEL_284;
              }

              *buf = 134218240;
              *&buf[4] = fmaxf(*&v134 - *v133, 0.0);
              *&buf[12] = 2048;
              *&buf[14] = fmaxf(*(&v134 + 1) - *&v133[4], 0.0);
              v94 = "Failed to create the left part of a horizontally stretched image with size (x:%.3f, y:%.3f).";
              goto LABEL_282;
            }

            if (v97.n128_u64[0] && ((*(*v97.n128_u64[0] + 40))(v97.n128_u64[0], v97) & 1) != 0)
            {
              if (v91 && ((*(*v91 + 40))(v91) & 1) != 0)
              {
                operator new();
              }

              if (GEOGetGeoResourceLibEaselLog::onceToken != -1)
              {
                dispatch_once(&GEOGetGeoResourceLibEaselLog::onceToken, &__block_literal_global_29_53818);
              }

              v92 = GEOGetGeoResourceLibEaselLog::log;
              if (!os_log_type_enabled(GEOGetGeoResourceLibEaselLog::log, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_283;
              }

              *buf = 134218240;
              *&buf[4] = fmaxf(*&v129 - v127, 0.0);
              *&buf[12] = 2048;
              *&buf[14] = fmaxf(*(&v129 + 1) - v128, 0.0);
              v94 = "Failed to create the right part of a horizontally stretched image with size (x:%.3f, y:%.3f).";
LABEL_282:
              _os_log_impl(&dword_1B2754000, v92, OS_LOG_TYPE_ERROR, v94, buf, 0x16u);
LABEL_283:
              v33 = 0uLL;
              goto LABEL_284;
            }

            if (GEOGetGeoResourceLibEaselLog::onceToken == -1)
            {
LABEL_276:
              v92 = GEOGetGeoResourceLibEaselLog::log;
              v95 = os_log_type_enabled(GEOGetGeoResourceLibEaselLog::log, OS_LOG_TYPE_ERROR);
              v33 = 0uLL;
              if (!v95)
              {
LABEL_284:
                v99 = v33;
                if (v7)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](v7);
                  v33 = v99;
                }

                if (*&v115[8])
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](*&v115[8]);
                  v33 = v99;
                }

                if (*(&v116 + 1))
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](*(&v116 + 1));
                  v33 = v99;
                }

                goto LABEL_60;
              }

              *buf = 134218240;
              *&buf[4] = fmaxf(v131 - *v130, 0.0);
              *&buf[12] = 2048;
              *&buf[14] = fmaxf(v132 - *&v130[4], 0.0);
              v94 = "Failed to create the center part of a horizontally stretched image with size (x:%.3f, y:%.3f).";
              goto LABEL_282;
            }

LABEL_295:
            dispatch_once(&GEOGetGeoResourceLibEaselLog::onceToken, &__block_literal_global_29_53818);
            goto LABEL_276;
          }

          if (GEOGetGeoResourceLibRendererLog::onceToken != -1)
          {
            dispatch_once(&GEOGetGeoResourceLibRendererLog::onceToken, &__block_literal_global_13_53794);
          }

          v31 = GEOGetGeoResourceLibRendererLog::log;
          v36 = os_log_type_enabled(GEOGetGeoResourceLibRendererLog::log, OS_LOG_TYPE_ERROR);
          v33 = 0uLL;
          if (v36)
          {
            *buf = 0;
            v34 = "A positive left and right padding is required to create a stretched image.";
            goto LABEL_59;
          }

LABEL_60:
          v37 = *(&v103 + 1);
          v103 = v33;
          if (v37)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v37);
          }

          if (!v6)
          {
            goto LABEL_64;
          }

          goto LABEL_63;
        }

        if (GEOGetGeoResourceLibEaselLog::onceToken != -1)
        {
          dispatch_once(&GEOGetGeoResourceLibEaselLog::onceToken, &__block_literal_global_29_53818);
        }

        v31 = GEOGetGeoResourceLibEaselLog::log;
        v35 = os_log_type_enabled(GEOGetGeoResourceLibEaselLog::log, OS_LOG_TYPE_ERROR);
        v33 = 0uLL;
        if (!v35)
        {
          goto LABEL_60;
        }

        *buf = 0;
        v34 = "Input image must have a non-zero size to create a stretched image.";
      }

      else
      {
        if (GEOGetGeoResourceLibEaselLog::onceToken != -1)
        {
          dispatch_once(&GEOGetGeoResourceLibEaselLog::onceToken, &__block_literal_global_29_53818);
        }

        v31 = GEOGetGeoResourceLibEaselLog::log;
        v32 = os_log_type_enabled(GEOGetGeoResourceLibEaselLog::log, OS_LOG_TYPE_ERROR);
        v33 = 0uLL;
        if (!v32)
        {
          goto LABEL_60;
        }

        *buf = 0;
        v34 = "Input image must be a non-nullptr to create a stretched image.";
      }

LABEL_59:
      _os_log_impl(&dword_1B2754000, v31, OS_LOG_TYPE_ERROR, v34, buf, 2u);
      v33 = 0uLL;
      goto LABEL_60;
    }

    if (GEOGetGeoResourceLibRendererLog::onceToken != -1)
    {
      dispatch_once(&GEOGetGeoResourceLibRendererLog::onceToken, &__block_literal_global_13_53794);
    }

    v29 = GEOGetGeoResourceLibRendererLog::log;
    if (os_log_type_enabled(GEOGetGeoResourceLibRendererLog::log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "!GRL_SUFFIX_LINE_NUMBER(didTriggerAssert)";
      *&buf[12] = 2080;
      *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoResourceLib/GeoResourceLib/Renderer/LayerRenderer.cpp";
      *&buf[22] = 1024;
      v139 = 396;
      _os_log_impl(&dword_1B2754000, v29, OS_LOG_TYPE_ERROR, "IconRenderer: Failed to find HorizontalStretchedPadding property.: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }

    v10 = v111;
    v30 = v112;
    if (v112)
    {
      atomic_fetch_add_explicit(&v112->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v6 = *(&v103 + 1);
    *&v103 = v10;
    *(&v103 + 1) = v30;
    if (!v6)
    {
LABEL_65:
      if (!v10)
      {
LABEL_78:
        if (GEOGetGeoResourceLibEaselLog::onceToken != -1)
        {
          dispatch_once(&GEOGetGeoResourceLibEaselLog::onceToken, &__block_literal_global_29_53818);
        }

        v41 = GEOGetGeoResourceLibEaselLog::log;
        if (!os_log_type_enabled(GEOGetGeoResourceLibEaselLog::log, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_83;
        }

        *buf = 136315650;
        *&buf[4] = "!GRL_SUFFIX_LINE_NUMBER(didTriggerAssert)";
        *&buf[12] = 2080;
        *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoResourceLib/GeoResourceLib/Renderer/LayerRenderer.cpp";
        *&buf[22] = 1024;
        v139 = 406;
        v42 = "Failed to find image for image layer.: Assertion with expression - %s : Failed in file - %s line - %i";
        goto LABEL_82;
      }

      goto LABEL_66;
    }

LABEL_63:
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
LABEL_64:
    v10 = v103;
    goto LABEL_65;
  }

  v28 = v112;
  if (!v112)
  {
    *&v103 = v10;
    goto LABEL_66;
  }

  atomic_fetch_add_explicit(&v112->__shared_owners_, 1uLL, memory_order_relaxed);
  v6 = *(&v103 + 1);
  *&v103 = v10;
  *(&v103 + 1) = v28;
  if (v6)
  {
    goto LABEL_63;
  }

LABEL_66:
  if (((*(*v10 + 40))(v10) & 1) == 0)
  {
    goto LABEL_78;
  }

  (*(*v103 + 24))(v103);
  (*(*v103 + 32))(v103);
  v38 = *(a1 + 64);
  if (v38 == 2)
  {
    *&v125 = 0;
    v43 = (*(*v103 + 32))(v103);
    v121 = 0.0;
    v122 = fminf(v43, 16777000.0);
    v44 = *(&v103 + 1);
    if (*(&v103 + 1))
    {
      atomic_fetch_add_explicit((*(&v103 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v117 = *(a1 + 80);
    LODWORD(v116) = *(a1 + 72);
    if (v103 && ((*(*v103 + 40))(v103) & 1) != 0)
    {
      if ((*(*v103 + 24))(v103) && (*(*v103 + 32))(v103))
      {
        (*(*v103 + 48))(buf, v103);
        v45 = *&buf[8];
        *v133 = *buf;
        v134 = *&buf[8];
        if (*buf && ((*(**buf + 40))(*buf) & 1) != 0)
        {
          (*(*v103 + 24))(v103);
          (*(*v103 + 32))(v103);
          operator new();
        }

        if (GEOGetGeoResourceLibEaselLog::onceToken != -1)
        {
          dispatch_once(&GEOGetGeoResourceLibEaselLog::onceToken, &__block_literal_global_29_53818);
        }

        v89 = GEOGetGeoResourceLibEaselLog::log;
        v90 = os_log_type_enabled(GEOGetGeoResourceLibEaselLog::log, OS_LOG_TYPE_ERROR);
        v52 = 0uLL;
        if (v90)
        {
          *buf = 0;
          _os_log_impl(&dword_1B2754000, v89, OS_LOG_TYPE_ERROR, "Failed to create a grayscale version of an image, to be used to colorize an image.", buf, 2u);
          v52 = 0uLL;
        }

        if (v45)
        {
          v101 = v52;
          std::__shared_weak_count::__release_shared[abi:nn200100](v45);
          v52 = v101;
        }

        goto LABEL_121;
      }

      if (GEOGetGeoResourceLibEaselLog::onceToken != -1)
      {
        dispatch_once(&GEOGetGeoResourceLibEaselLog::onceToken, &__block_literal_global_29_53818);
      }

      v50 = GEOGetGeoResourceLibEaselLog::log;
      v56 = os_log_type_enabled(GEOGetGeoResourceLibEaselLog::log, OS_LOG_TYPE_ERROR);
      v52 = 0uLL;
      if (v56)
      {
        *buf = 0;
        v53 = "Input image must have a non-zero size to create a colorized image.";
        goto LABEL_120;
      }
    }

    else
    {
      if (GEOGetGeoResourceLibEaselLog::onceToken != -1)
      {
        dispatch_once(&GEOGetGeoResourceLibEaselLog::onceToken, &__block_literal_global_29_53818);
      }

      v50 = GEOGetGeoResourceLibEaselLog::log;
      v51 = os_log_type_enabled(GEOGetGeoResourceLibEaselLog::log, OS_LOG_TYPE_ERROR);
      v52 = 0uLL;
      if (v51)
      {
        *buf = 0;
        v53 = "Input image must be a non-nullptr to create a colorized image.";
LABEL_120:
        _os_log_impl(&dword_1B2754000, v50, OS_LOG_TYPE_ERROR, v53, buf, 2u);
        v52 = 0uLL;
      }
    }

LABEL_121:
    v57 = *(&v103 + 1);
    v103 = v52;
    if (v57)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v57);
    }

    if (v44)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v44);
    }

    if (!v103 || ((*(*v103 + 40))(v103) & 1) == 0)
    {
      if (GEOGetGeoResourceLibRendererLog::onceToken != -1)
      {
        dispatch_once(&GEOGetGeoResourceLibRendererLog::onceToken, &__block_literal_global_13_53794);
      }

      v41 = GEOGetGeoResourceLibRendererLog::log;
      if (!os_log_type_enabled(GEOGetGeoResourceLibRendererLog::log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_83;
      }

      *buf = 136315650;
      *&buf[4] = "!GRL_SUFFIX_LINE_NUMBER(didTriggerAssert)";
      *&buf[12] = 2080;
      *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoResourceLib/GeoResourceLib/Renderer/LayerRenderer.cpp";
      *&buf[22] = 1024;
      v139 = 433;
      v42 = "Failed to apply a gradient to an image.: Assertion with expression - %s : Failed in file - %s line - %i";
      goto LABEL_82;
    }

    goto LABEL_127;
  }

  if (v38 != 1)
  {
    goto LABEL_127;
  }

  v39 = *(&v103 + 1);
  if (*(&v103 + 1))
  {
    atomic_fetch_add_explicit((*(&v103 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  LODWORD(v125) = *(a1 + 50);
  if (v103 && ((*(*v103 + 40))(v103) & 1) != 0)
  {
    if ((*(*v103 + 24))(v103) && (*(*v103 + 32))(v103))
    {
      (*(*v103 + 48))(buf, v103);
      v40 = *&buf[8];
      *v133 = *buf;
      v134 = *&buf[8];
      if (*buf && ((*(**buf + 40))(*buf) & 1) != 0)
      {
        (*(*v103 + 24))(v103);
        (*(*v103 + 32))(v103);
        operator new();
      }

      if (GEOGetGeoResourceLibEaselLog::onceToken != -1)
      {
        dispatch_once(&GEOGetGeoResourceLibEaselLog::onceToken, &__block_literal_global_29_53818);
      }

      v87 = GEOGetGeoResourceLibEaselLog::log;
      v88 = os_log_type_enabled(GEOGetGeoResourceLibEaselLog::log, OS_LOG_TYPE_ERROR);
      v48 = 0uLL;
      if (v88)
      {
        *buf = 0;
        _os_log_impl(&dword_1B2754000, v87, OS_LOG_TYPE_ERROR, "Failed to create a grayscale version of the input image to create a colorized version of the image.", buf, 2u);
        v48 = 0uLL;
      }

      if (v40)
      {
        v100 = v48;
        std::__shared_weak_count::__release_shared[abi:nn200100](v40);
        v48 = v100;
      }

      goto LABEL_106;
    }

    if (GEOGetGeoResourceLibEaselLog::onceToken != -1)
    {
      dispatch_once(&GEOGetGeoResourceLibEaselLog::onceToken, &__block_literal_global_29_53818);
    }

    v46 = GEOGetGeoResourceLibEaselLog::log;
    v54 = os_log_type_enabled(GEOGetGeoResourceLibEaselLog::log, OS_LOG_TYPE_ERROR);
    v48 = 0uLL;
    if (v54)
    {
      *buf = 0;
      v49 = "Input image must have a non-zero size to create a colorized image.";
      goto LABEL_105;
    }
  }

  else
  {
    if (GEOGetGeoResourceLibEaselLog::onceToken != -1)
    {
      dispatch_once(&GEOGetGeoResourceLibEaselLog::onceToken, &__block_literal_global_29_53818);
    }

    v46 = GEOGetGeoResourceLibEaselLog::log;
    v47 = os_log_type_enabled(GEOGetGeoResourceLibEaselLog::log, OS_LOG_TYPE_ERROR);
    v48 = 0uLL;
    if (v47)
    {
      *buf = 0;
      v49 = "Input image must be a non-nullptr to create a colorized image.";
LABEL_105:
      _os_log_impl(&dword_1B2754000, v46, OS_LOG_TYPE_ERROR, v49, buf, 2u);
      v48 = 0uLL;
    }
  }

LABEL_106:
  v55 = *(&v103 + 1);
  v103 = v48;
  if (v55)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v55);
  }

  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v39);
  }

  if (!v103 || ((*(*v103 + 40))(v103) & 1) == 0)
  {
    if (GEOGetGeoResourceLibRendererLog::onceToken != -1)
    {
      dispatch_once(&GEOGetGeoResourceLibRendererLog::onceToken, &__block_literal_global_13_53794);
    }

    v41 = GEOGetGeoResourceLibRendererLog::log;
    if (!os_log_type_enabled(GEOGetGeoResourceLibRendererLog::log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_83;
    }

    *buf = 136315650;
    *&buf[4] = "!GRL_SUFFIX_LINE_NUMBER(didTriggerAssert)";
    *&buf[12] = 2080;
    *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoResourceLib/GeoResourceLib/Renderer/LayerRenderer.cpp";
    *&buf[22] = 1024;
    v139 = 423;
    v42 = "Failed to create a colorized image.: Assertion with expression - %s : Failed in file - %s line - %i";
LABEL_82:
    _os_log_impl(&dword_1B2754000, v41, OS_LOG_TYPE_ERROR, v42, buf, 0x1Cu);
LABEL_83:
    v25 = 0;
    goto LABEL_247;
  }

LABEL_127:
  (*(**v5 + 240))(*(a1 + 132));
  if (*(a1 + 16) == *(a1 + 24))
  {
    if (GEOGetGeoResourceLibRendererLog::onceToken != -1)
    {
      dispatch_once(&GEOGetGeoResourceLibRendererLog::onceToken, &__block_literal_global_13_53794);
    }

    v58 = GEOGetGeoResourceLibRendererLog::log;
    if (os_log_type_enabled(GEOGetGeoResourceLibRendererLog::log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "_data.hasLayerStyles()";
      *&buf[12] = 2080;
      *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoResourceLib/GeoResourceLib/Renderer/LayerRenderer.cpp";
      *&buf[22] = 1024;
      v139 = 442;
      _os_log_impl(&dword_1B2754000, v58, OS_LOG_TYPE_ERROR, "No LayerStyles given for image layer rendering.: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  v59 = *(a1 + 16);
  v60 = *(a1 + 24);
  if (v59 != v60)
  {
    while (1)
    {
      v61 = *v59;
      if (v61 <= 1)
      {
        if (!*v59)
        {
          if (GEOGetGeoResourceLibRendererLog::onceToken != -1)
          {
            dispatch_once(&GEOGetGeoResourceLibRendererLog::onceToken, &__block_literal_global_13_53794);
          }

          v69 = GEOGetGeoResourceLibRendererLog::log;
          if (os_log_type_enabled(GEOGetGeoResourceLibRendererLog::log, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "iconLayer != LayerStyle::None";
            *&buf[12] = 2080;
            *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoResourceLib/GeoResourceLib/Renderer/LayerRenderer.cpp";
            *&buf[22] = 1024;
            v139 = 446;
            _os_log_impl(&dword_1B2754000, v69, OS_LOG_TYPE_ERROR, "Invalid LayerStyle enum used.: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
          }

          goto LABEL_189;
        }

        if (v61 == 1)
        {
          v62 = *(a1 + 16);
          v63 = *(a1 + 24);
          if (v62 != v63)
          {
            while (*v62 != 1)
            {
              if (++v62 == v63)
              {
                v62 = *(a1 + 24);
                break;
              }
            }
          }

          if (v62 == v63)
          {
            goto LABEL_189;
          }

          (*(**v5 + 224))(*v5, *(a1 + 48));
          (*(**v5 + 376))();
          (*(**v5 + 224))(*v5, 0);
        }

        goto LABEL_187;
      }

      if (v61 != 2)
      {
        break;
      }

      v70 = *(a1 + 96);
      if (v70 > 0.0)
      {
        v71 = *(a1 + 89);
        if (HIBYTE(LODWORD(v71)))
        {
          v72 = v103;
          if (*(&v103 + 1))
          {
            v73 = *(&v103 + 1);
            atomic_fetch_add_explicit((*(&v103 + 1) + 8), 1uLL, memory_order_relaxed);
            v71 = *(a1 + 89);
            v70 = *(a1 + 96);
          }

          else
          {
            v73 = 0;
          }

          v121 = v71;
          if (v72 && ((*(*v72 + 40))(v72) & 1) != 0)
          {
            if ((*(*v72 + 24))(v72) && (*(*v72 + 32))(v72))
            {
              v79 = v73;
              if (v70 <= 0.0)
              {
                v125 = 0uLL;
              }

              else
              {
                if (atomic_load_explicit(grl::HaloGenerator::sharedHaloGenerator(void)::flag, memory_order_acquire) != -1)
                {
                  *buf = v133;
                  *v135 = buf;
                  std::__call_once(grl::HaloGenerator::sharedHaloGenerator(void)::flag, v135, std::__call_once_proxy[abi:nn200100]<std::tuple<grl::HaloGenerator::sharedHaloGenerator(void)::$_0 &&>>);
                  v79 = v73;
                }

                if (v79)
                {
                  atomic_fetch_add_explicit(&v79->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v96 = v79;
                if ((*(*v72 + 40))(v72))
                {
                  (*(*v72 + 24))(v72);
                  (*(*v72 + 32))(v72);
                  operator new();
                }

                *v133 = 0;
                v134 = 0;
                if (v96)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](v96);
                }

                if (*v133 && ((*(**v133 + 40))(*v133) & 1) != 0)
                {
                  (*(**v133 + 24))(*v133);
                  (*(**v133 + 32))(*v133);
                  operator new();
                }

                if (GEOGetGeoResourceLibEaselLog::onceToken != -1)
                {
                  dispatch_once(&GEOGetGeoResourceLibEaselLog::onceToken, &__block_literal_global_29_53818);
                }

                v86 = GEOGetGeoResourceLibEaselLog::log;
                if (os_log_type_enabled(GEOGetGeoResourceLibEaselLog::log, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315650;
                  *&buf[4] = "!GRL_SUFFIX_LINE_NUMBER(didTriggerAssert)";
                  *&buf[12] = 2080;
                  *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoResourceLib/GeoResourceLib/Renderer/EaselUtilities.cpp";
                  *&buf[22] = 1024;
                  v139 = 150;
                  _os_log_impl(&dword_1B2754000, v86, OS_LOG_TYPE_ERROR, "Generating the halo of an image has failed.: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
                }

                v125 = 0uLL;
                if (v134)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](v134);
                }

                v79 = v96;
              }

LABEL_213:
              if (v79)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v79);
              }

              if (!v125 || ((*(*v125 + 40))(v125) & 1) == 0)
              {
                if (GEOGetGeoResourceLibRendererLog::onceToken != -1)
                {
                  dispatch_once(&GEOGetGeoResourceLibRendererLog::onceToken, &__block_literal_global_13_53794);
                }

                v84 = GEOGetGeoResourceLibRendererLog::log;
                if (os_log_type_enabled(GEOGetGeoResourceLibRendererLog::log, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315650;
                  *&buf[4] = "!GRL_SUFFIX_LINE_NUMBER(didTriggerAssert)";
                  *&buf[12] = 2080;
                  *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoResourceLib/GeoResourceLib/Renderer/LayerRenderer.cpp";
                  *&buf[22] = 1024;
                  v139 = 469;
                  _os_log_impl(&dword_1B2754000, v84, OS_LOG_TYPE_ERROR, "Failed to create the halo for an image layer.: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
                }

                if (*(&v125 + 1))
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](*(&v125 + 1));
                }

                goto LABEL_189;
              }

              (*(**v5 + 224))(*v5, 0);
              (*(**v5 + 376))();
              v78 = *(&v125 + 1);
              if (!*(&v125 + 1))
              {
LABEL_187:
                if (*(v4 + 1) == 1)
                {
                  (*(**v5 + 392))(buf);
                  operator new();
                }

                goto LABEL_189;
              }

LABEL_186:
              std::__shared_weak_count::__release_shared[abi:nn200100](v78);
              goto LABEL_187;
            }

            if (GEOGetGeoResourceLibEaselLog::onceToken != -1)
            {
              dispatch_once(&GEOGetGeoResourceLibEaselLog::onceToken, &__block_literal_global_29_53818);
            }

            v83 = GEOGetGeoResourceLibEaselLog::log;
            if (os_log_type_enabled(GEOGetGeoResourceLibEaselLog::log, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              v81 = v83;
              v82 = "Input image must have a non-zero size to create a halo image.";
LABEL_211:
              _os_log_impl(&dword_1B2754000, v81, OS_LOG_TYPE_ERROR, v82, buf, 2u);
            }
          }

          else
          {
            if (GEOGetGeoResourceLibEaselLog::onceToken != -1)
            {
              dispatch_once(&GEOGetGeoResourceLibEaselLog::onceToken, &__block_literal_global_29_53818);
            }

            v80 = GEOGetGeoResourceLibEaselLog::log;
            if (os_log_type_enabled(GEOGetGeoResourceLibEaselLog::log, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              v81 = v80;
              v82 = "Input image must be a non-nullptr to create a halo image.";
              goto LABEL_211;
            }
          }

          v125 = 0uLL;
          v79 = v73;
          goto LABEL_213;
        }
      }

LABEL_189:
      if (++v59 == v60)
      {
        goto LABEL_246;
      }
    }

    if (v61 != 3)
    {
      goto LABEL_187;
    }

    v64 = *(a1 + 16);
    v65 = *(a1 + 24);
    if (v64 != v65)
    {
      while (*v64 != 3)
      {
        if (++v64 == v65)
        {
          v64 = *(a1 + 24);
          break;
        }
      }
    }

    if (v64 == v65 || !*(a1 + 140) && *(a1 + 148) == 0.0)
    {
      goto LABEL_189;
    }

    v66 = *v5;
    v67 = v5[1];
    if (v67)
    {
      atomic_fetch_add_explicit(&v67->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v102 = v103;
    if (*(&v103 + 1))
    {
      atomic_fetch_add_explicit((*(&v103 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v127 = *(a1 + 136);
    *v130 = *(a1 + 140);
    if (v66 && (v68 = *(a1 + 148), ((*(*v66 + 24))(v66) & 1) != 0))
    {
      if (v102 && ((*(*v102 + 40))(v102) & 1) != 0)
      {
        esl::QuartzColor::QuartzColor(buf, &v127);
        esl::QuartzColor::QuartzColor(v135, 1.0, 1.0, 1.0, 1.0);
        if (esl::QuartzColor::isValid(buf) && esl::QuartzColor::isValid(v135))
        {
          (*(*v66 + 408))(v66);
          (*(*v66 + 232))(v66, v135);
          *v133 = 0;
          v134 = 0;
          (*(*v66 + 344))(v66, v130, buf, v133, v68);
          if (v134)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v134);
          }

          (*(*v66 + 376))(v66, v108, &v102, 1);
          (*(*v66 + 400))(v66);
        }

        else
        {
          if (GEOGetGeoResourceLibEaselLog::onceToken != -1)
          {
            dispatch_once(&GEOGetGeoResourceLibEaselLog::onceToken, &__block_literal_global_29_53818);
          }

          v85 = GEOGetGeoResourceLibEaselLog::log;
          if (os_log_type_enabled(GEOGetGeoResourceLibEaselLog::log, OS_LOG_TYPE_ERROR))
          {
            *v133 = 0;
            _os_log_impl(&dword_1B2754000, v85, OS_LOG_TYPE_ERROR, "Failed to create the shadow color for an image.", v133, 2u);
          }
        }

        *v135 = &unk_1F29E15F0;
        v136 = &unk_1F29E1130;
        if (v137)
        {
          CFRelease(v137);
        }

        *buf = &unk_1F29E15F0;
        *&buf[8] = &unk_1F29E1130;
        if (*&buf[16])
        {
          CFRelease(*&buf[16]);
        }

        goto LABEL_182;
      }

      if (GEOGetGeoResourceLibEaselLog::onceToken != -1)
      {
        dispatch_once(&GEOGetGeoResourceLibEaselLog::onceToken, &__block_literal_global_29_53818);
      }

      v77 = GEOGetGeoResourceLibEaselLog::log;
      if (!os_log_type_enabled(GEOGetGeoResourceLibEaselLog::log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_182;
      }

      *buf = 136315650;
      *&buf[4] = "!GRL_SUFFIX_LINE_NUMBER(didTriggerAssert)";
      *&buf[12] = 2080;
      *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoResourceLib/GeoResourceLib/Renderer/EaselUtilities.cpp";
      *&buf[22] = 1024;
      v139 = 597;
      v75 = v77;
      v76 = "A non-nullptr image is required for drawShadowToContext().: Assertion with expression - %s : Failed in file - %s line - %i";
    }

    else
    {
      if (GEOGetGeoResourceLibEaselLog::onceToken != -1)
      {
        dispatch_once(&GEOGetGeoResourceLibEaselLog::onceToken, &__block_literal_global_29_53818);
      }

      v74 = GEOGetGeoResourceLibEaselLog::log;
      if (!os_log_type_enabled(GEOGetGeoResourceLibEaselLog::log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_182;
      }

      *buf = 136315650;
      *&buf[4] = "!GRL_SUFFIX_LINE_NUMBER(didTriggerAssert)";
      *&buf[12] = 2080;
      *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoResourceLib/GeoResourceLib/Renderer/EaselUtilities.cpp";
      *&buf[22] = 1024;
      v139 = 594;
      v75 = v74;
      v76 = "A non-nullptr context is required for drawShadowToContext().: Assertion with expression - %s : Failed in file - %s line - %i";
    }

    _os_log_impl(&dword_1B2754000, v75, OS_LOG_TYPE_ERROR, v76, buf, 0x1Cu);
LABEL_182:
    if (*(&v102 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*(&v102 + 1));
    }

    if (!v67)
    {
      goto LABEL_187;
    }

    v78 = v67;
    goto LABEL_186;
  }

LABEL_246:
  (*(**v5 + 240))(1.0);
  v25 = 1;
LABEL_247:
  if (*(&v103 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v103 + 1));
  }

LABEL_249:
  if (v112)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v112);
  }

  return v25;
}

uint64_t std::__function::__func<grl::codec::IconDataPack::imageProviderForID(unsigned int)::$_0,std::allocator<grl::codec::IconDataPack::imageProviderForID(unsigned int)::$_0>,std::shared_ptr<esl::QuartzImage> ()(void)>::operator()@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

CGImage *esl::QuartzImage::height(esl::QuartzImage *this)
{
  result = *(this + 2);
  if (result)
  {
    return CGImageGetHeight(result);
  }

  return result;
}

CGImage *esl::QuartzImage::width(esl::QuartzImage *this)
{
  result = *(this + 2);
  if (result)
  {
    return CGImageGetWidth(result);
  }

  return result;
}

void esl::QuartzImage::createGrayscaleVersion(esl::QuartzImage *this@<X0>, void *a2@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  if (((*(*this + 40))(this) & 1) == 0 || !(*(*this + 24))(this) || !(*(*this + 32))(this))
  {
    *a2 = 0;
    a2[1] = 0;
    return;
  }

  if ((*(*this + 144))(this))
  {
    LODWORD(v25) = (*(*this + 24))(this);
    LODWORD(v22[0]) = (*(*this + 32))(this);
    std::allocate_shared[abi:ne200100]<esl::QuartzContext,std::allocator<esl::QuartzContext>,esl::ContextType,unsigned int,unsigned int,0>();
  }

  v4 = *(this + 2);
  v25 = &unk_1F29E1200;
  if (v4)
  {
    CFRetain(v4);
  }

  image = v4;
  v23 = &unk_1F29E1230;
  space = CGColorSpaceCreateDeviceGray();
  ColorSpace = CGImageGetColorSpace(v4);
  v6 = ColorSpace;
  v22[0] = &unk_1F29E1230;
  if (ColorSpace)
  {
    CFRetain(ColorSpace);
  }

  v22[1] = v6;
  if (CGColorSpaceGetModel(v6) == kCGColorSpaceModelIndexed)
  {
    Width = CGImageGetWidth(image);
    Height = CGImageGetHeight(image);
    AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
    context[0] = &unk_1F29E1260;
    context[1] = CGBitmapContextCreate(0, Width, Height, 8uLL, AlignedBytesPerRow, space, 0);
    v28.origin.x = 0.0;
    v28.origin.y = 0.0;
    v28.size.width = Width;
    v28.size.height = Height;
    CGContextDrawImage(context[1], v28, image);
    v10 = CGBitmapContextCreateImage(context[1]);
    v11 = image;
    image = v10;
    if (v11)
    {
      CFRelease(v11);
    }

    geo::_retain_ptr<CGContext *,geo::_retain_cf<CGContext *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(context);
    goto LABEL_17;
  }

  v12 = CGImageGetWidth(image);
  v13 = CGImageGetHeight(image);
  BitsPerComponent = CGImageGetBitsPerComponent(image);
  BitsPerPixel = CGImageGetBitsPerPixel(image);
  BytesPerRow = CGImageGetBytesPerRow(image);
  BitmapInfo = CGImageGetBitmapInfo(image);
  DataProvider = CGImageGetDataProvider(image);
  v19 = CGImageCreate(v12, v13, BitsPerComponent, BitsPerPixel, BytesPerRow, space, BitmapInfo, DataProvider, 0, 0, kCGRenderingIntentDefault);
  v20 = image;
  image = v19;
  if (v20)
  {
    CFRelease(v20);
LABEL_17:
    v19 = image;
  }

  if (v19)
  {
    std::allocate_shared[abi:ne200100]<esl::QuartzImage,std::allocator<esl::QuartzImage>,CGImage *,0>();
  }

  *a2 = 0;
  a2[1] = 0;
  geo::_retain_ptr<CGColorSpace *,geo::_retain_cf<CGColorSpace *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(v22);
  geo::_retain_ptr<CGColorSpace *,geo::_retain_cf<CGColorSpace *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(&v23);
  geo::_retain_ptr<CGImage *,geo::_retain_cf<CGImage *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(&v25);
}

void sub_1B2B4BB8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a19);
  }

  geo::_retain_ptr<CGColor *,geo::_retain_cf<CGColor *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(va);
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a22);
  }

  _Unwind_Resume(a1);
}

uint64_t esl::QuartzImage::hasAlphaChannel(CGImageRef *this)
{
  result = (*(*this + 5))(this);
  if (result)
  {
    return CGImageGetAlphaInfo(this[2]) != kCGImageAlphaNone;
  }

  return result;
}

void *std::__shared_ptr_emplace<esl::QuartzContext>::__shared_ptr_emplace[abi:ne200100]<esl::ContextType,unsigned int,unsigned int,std::allocator<esl::QuartzContext>,0>(void *a1, unsigned __int8 *a2, unsigned int *a3, unsigned int *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F29E1160;
  esl::QuartzContext::QuartzContext((a1 + 3), *a2, *a3, *a4);
  return a1;
}

esl::QuartzColor *esl::QuartzColor::QuartzColor(uint64_t this, float a2, float a3, float a4, float a5, uint64_t a6)
{
  v10 = this;
  v24 = *MEMORY[0x1E69E9840];
  *this = &unk_1F29E15F0;
  *(this + 8) = &unk_1F29E1130;
  *(this + 16) = 0;
  if (a2 < 0.0 || a3 < 0.0 || a4 < 0.0 || a5 < 0.0)
  {
    v11 = GEOGetEaselContextLog(this, a6);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "r >= 0.0f && g >= 0.0f && b >= 0.0f && a >= 0.0f";
      *&buf[12] = 2080;
      *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoResourceLib/Submodules/Easel/context/color.cpp";
      *&buf[22] = 1024;
      LODWORD(v19) = 149;
      _os_log_impl(&dword_1B2754000, v11, OS_LOG_TYPE_ERROR, "Colors must be between 0 and 1.: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }

    v20 = 0;
    v21 = 1;
    v22 = 0x10000000ELL;
    v23 = getpid();
    v17 = 648;
    this = sysctl(&v21, 4u, buf, &v17, 0, 0);
    if (!this && (v20 & 0x800) != 0)
    {
      __debugbreak();
    }
  }

  if (a2 > 1.0 || a3 > 1.0 || a4 > 1.0 || a5 > 1.0)
  {
    v15 = GEOGetEaselContextLog(this, a6);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "r <= 1.0f && g <= 1.0f && b <= 1.0f && a <= 1.0f";
      *&buf[12] = 2080;
      *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoResourceLib/Submodules/Easel/context/color.cpp";
      *&buf[22] = 1024;
      LODWORD(v19) = 150;
      _os_log_impl(&dword_1B2754000, v15, OS_LOG_TYPE_ERROR, "Colors must be between 0 and 1.: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }

    v20 = 0;
    v21 = 1;
    v22 = 0x10000000ELL;
    v23 = getpid();
    v17 = 648;
    if (!sysctl(&v21, 4u, buf, &v17, 0, 0) && (v20 & 0x800) != 0)
    {
      __debugbreak();
    }
  }

  *buf = a2;
  *&buf[8] = a3;
  *&buf[16] = a4;
  v19 = a5;
  esl::QuartzColor::createColor(v10, 2, buf);
  return v10;
}

void esl::QuartzContext::fillRect(void *a1, float *a2)
{
  if ((*(*a1 + 24))(a1))
  {
    v4 = a1[1];
    v5 = a2[1];
    v6 = *a2;
    v7 = v5;
    v8 = a2[3] - v5;
    if ((a2[2] - *a2) >= 0.0)
    {
      v9 = a2[2] - *a2;
    }

    else
    {
      v9 = 0.0;
    }

    v10 = v9;
    if (v8 >= 0.0)
    {
      v11 = v8;
    }

    else
    {
      v11 = 0.0;
    }

    v12 = v11;

    CGContextFillRect(v4, *&v6);
  }
}

uint64_t esl::QuartzContext::drawImage(CGContextRef *a1, float *a2, uint64_t *a3)
{
  if (!(*(*a1 + 3))(a1))
  {
    return 0;
  }

  v6 = *a3;
  v7 = a3[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v6 || (v8 = *(v6 + 16)) == 0)
  {
    v17 = 0;
    if (!v7)
    {
      return v17;
    }

LABEL_16:
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
    return v17;
  }

  v9 = a2[1];
  v11 = v9;
  v12 = a2[3] - v9;
  if ((a2[2] - *a2) >= 0.0)
  {
    v13 = a2[2] - *a2;
  }

  else
  {
    v13 = 0.0;
  }

  v14 = v13;
  if (v12 >= 0.0)
  {
    v15 = v12;
  }

  else
  {
    v15 = 0.0;
  }

  v16 = v15;
  v10 = *a2;
  CGContextDrawImage(a1[1], *(&v11 - 1), v8);
  v17 = 1;
  if (v7)
  {
    goto LABEL_16;
  }

  return v17;
}

void sub_1B2B4C204(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void esl::QuartzContext::image(CGContextRef *this@<X0>, void *a2@<X8>)
{
  if ((*(*this + 3))(this))
  {
    CGBitmapContextCreateImage(this[1]);
    std::allocate_shared[abi:ne200100]<esl::QuartzImage,std::allocator<esl::QuartzImage>,CGImage *&,0>();
  }

  *a2 = 0;
  a2[1] = 0;
}

void sub_1B2B4C29C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void esl::QuartzImage::~QuartzImage(esl::QuartzImage *this)
{
  *this = &unk_1F29E1060;
  v2 = *(this + 2);
  if (v2)
  {
    CGImageRelease(v2);
    *(this + 2) = 0;
  }

  v3 = *(this + 3);
  if (v3)
  {
    free(v3);
    *(this + 3) = 0;
    *(this + 4) = 0;
  }
}

{
  esl::QuartzImage::~QuartzImage(this);

  JUMPOUT(0x1B8C62190);
}

void esl::QuartzContext::~QuartzContext(esl::QuartzContext *this)
{
  *this = &unk_1F29E1290;
  v2 = *(this + 1);
  if (v2)
  {
    CGContextRelease(v2);
    *(this + 1) = 0;
  }
}

{
  esl::QuartzContext::~QuartzContext(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t esl::QuartzContext::clipToMask(CGContextRef *a1, float *a2, uint64_t *a3)
{
  if (!(*(*a1 + 3))(a1))
  {
    return 0;
  }

  v6 = *a3;
  v7 = a3[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v6 || (v8 = *(v6 + 16)) == 0)
  {
    v17 = 0;
    if (!v7)
    {
      return v17;
    }

LABEL_16:
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
    return v17;
  }

  v9 = a2[1];
  v11 = v9;
  v12 = a2[3] - v9;
  if ((a2[2] - *a2) >= 0.0)
  {
    v13 = a2[2] - *a2;
  }

  else
  {
    v13 = 0.0;
  }

  v14 = v13;
  if (v12 >= 0.0)
  {
    v15 = v12;
  }

  else
  {
    v15 = 0.0;
  }

  v16 = v15;
  v10 = *a2;
  CGContextClipToMask(a1[1], *(&v11 - 1), v8);
  v17 = 1;
  if (v7)
  {
    goto LABEL_16;
  }

  return v17;
}

void sub_1B2B4C4A4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void esl::QuartzContext::setAlpha(CGContextRef *this, float a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = (*(*this + 3))(this);
  if (v4)
  {
    if (a2 < 0.0 || a2 > 1.0)
    {
      v7 = GEOGetEaselContextLog(v4, v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v11 = "0.0f <= alpha && 1.0f >= alpha";
        v12 = 2080;
        v13 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoResourceLib/Submodules/Easel/context/context.cpp";
        v14 = 1024;
        v15 = 2386;
        _os_log_impl(&dword_1B2754000, v7, OS_LOG_TYPE_ERROR, "Alpha values are expected to be 0.0 <= alpha <= 1.0: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
      }

      v16 = 0;
      *v17 = 0xE00000001;
      v18 = 1;
      v19 = getpid();
      v9 = 648;
      if (!sysctl(v17, 4u, buf, &v9, 0, 0) && (v16 & 0x800) != 0)
      {
        __debugbreak();
      }
    }

    if (a2 <= 1.0)
    {
      v8 = a2;
    }

    else
    {
      v8 = 1.0;
    }

    if (v8 < 0.0)
    {
      v8 = 0.0;
    }

    CGContextSetAlpha(this[1], v8);
  }
}

void grl::IconRenderer::~IconRenderer(grl::IconRenderer *this)
{
  if (*(this + 52))
  {
    v2 = this + 400;
    v3 = *(this + 51);
    v4 = *(*(this + 50) + 8);
    v5 = *v3;
    *(v5 + 8) = v4;
    *v4 = v5;
    *(this + 52) = 0;
    if (v3 != this + 400)
    {
      do
      {
        v6 = *(v3 + 1);
        v7 = *(v3 + 3);
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v7);
        }

        operator delete(v3);
        v3 = v6;
      }

      while (v6 != v2);
    }
  }

  std::__tree<std::__value_type<grl::IconLayerMapKey,std::shared_ptr<esl::QuartzImage>>,std::__map_value_compare<grl::IconLayerMapKey,std::__value_type<grl::IconLayerMapKey,std::shared_ptr<esl::QuartzImage>>,grl::IconLayerMapKey,false>,geo::allocator_adapter<std::__value_type<grl::IconLayerMapKey,std::shared_ptr<esl::QuartzImage>>,grl::zone_mallocator>>::destroy(*(this + 46));
  if (*(this + 396) == 1)
  {
    *(this + 396) = 0;
  }

  if (*(this + 328) == 1)
  {
    if (*(this + 359) < 0)
    {
      operator delete(*(this + 42));
    }

    *(this + 328) = 0;
  }

  v8 = *(this + 39);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  if (*(this + 284) == 1)
  {
    *(this + 284) = 0;
  }

  if (*(this + 272) == 1)
  {
    *(this + 272) = 0;
  }

  if (*(this + 260) == 1)
  {
    *(this + 260) = 0;
  }

  if (*(this + 248) == 1)
  {
    *(this + 248) = 0;
  }

  if (*(this + 236) == 1)
  {
    *(this + 236) = 0;
  }

  std::__tree<std::__value_type<grl::IconLayerMapKey,std::unique_ptr<grl::LayerMetrics>>,std::__map_value_compare<grl::IconLayerMapKey,std::__value_type<grl::IconLayerMapKey,std::unique_ptr<grl::LayerMetrics>>,grl::IconLayerMapKey,false>,geo::allocator_adapter<std::__value_type<grl::IconLayerMapKey,std::unique_ptr<grl::LayerMetrics>>,grl::zone_mallocator>>::destroy(*(this + 25));
  if (*(this + 228) == 1)
  {
    *(this + 228) = 0;
  }

  if (*(this + 72) == 1)
  {
    *(this + 72) = 0;
  }

  std::__tree<std::__value_type<grl::IconLayerMapKey,std::unique_ptr<grl::LayerRenderer>>,std::__map_value_compare<grl::IconLayerMapKey,std::__value_type<grl::IconLayerMapKey,std::unique_ptr<grl::LayerRenderer>>,grl::IconLayerMapKey,false>,geo::allocator_adapter<std::__value_type<grl::IconLayerMapKey,std::unique_ptr<grl::LayerRenderer>>,grl::zone_mallocator>>::destroy(*(this + 5));
  if (*(this + 68) == 1)
  {
    *(this + 68) = 0;
  }
}

void std::__tree<std::__value_type<grl::IconLayerMapKey,std::shared_ptr<esl::QuartzImage>>,std::__map_value_compare<grl::IconLayerMapKey,std::__value_type<grl::IconLayerMapKey,std::shared_ptr<esl::QuartzImage>>,grl::IconLayerMapKey,false>,geo::allocator_adapter<std::__value_type<grl::IconLayerMapKey,std::shared_ptr<esl::QuartzImage>>,grl::zone_mallocator>>::destroy(void *result)
{
  if (result)
  {
    std::__tree<std::__value_type<grl::IconLayerMapKey,std::shared_ptr<esl::QuartzImage>>,std::__map_value_compare<grl::IconLayerMapKey,std::__value_type<grl::IconLayerMapKey,std::shared_ptr<esl::QuartzImage>>,grl::IconLayerMapKey,false>,geo::allocator_adapter<std::__value_type<grl::IconLayerMapKey,std::shared_ptr<esl::QuartzImage>>,grl::zone_mallocator>>::destroy(*result);
    std::__tree<std::__value_type<grl::IconLayerMapKey,std::shared_ptr<esl::QuartzImage>>,std::__map_value_compare<grl::IconLayerMapKey,std::__value_type<grl::IconLayerMapKey,std::shared_ptr<esl::QuartzImage>>,grl::IconLayerMapKey,false>,geo::allocator_adapter<std::__value_type<grl::IconLayerMapKey,std::shared_ptr<esl::QuartzImage>>,grl::zone_mallocator>>::destroy(result[1]);
    v2 = result[6];
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v2);
    }

    if (*(result + 36) == 1)
    {
      *(result + 36) = 0;
    }

    v3 = grl::zone_mallocator::instance(v2);
    geo::read_write_lock::read_lock((v3 + 32));
    atomic_fetch_add((v3 + 24), 0xFFFFFFFF);
    malloc_zone_free(*v3, result);

    geo::read_write_lock::unlock((v3 + 32));
  }
}

void grl::PathLayerMetrics::~PathLayerMetrics(grl::PathLayerMetrics *this)
{
  *this = &unk_1F2A5F288;
  if (*(this + 92) == 1)
  {
    *(this + 92) = 0;
  }

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A5F288;
  if (*(this + 92) == 1)
  {
    *(this + 92) = 0;
  }
}

void std::__tree<std::__value_type<grl::IconLayerMapKey,std::unique_ptr<grl::LayerRenderer>>,std::__map_value_compare<grl::IconLayerMapKey,std::__value_type<grl::IconLayerMapKey,std::unique_ptr<grl::LayerRenderer>>,grl::IconLayerMapKey,false>,geo::allocator_adapter<std::__value_type<grl::IconLayerMapKey,std::unique_ptr<grl::LayerRenderer>>,grl::zone_mallocator>>::destroy(void *result)
{
  if (result)
  {
    std::__tree<std::__value_type<grl::IconLayerMapKey,std::unique_ptr<grl::LayerRenderer>>,std::__map_value_compare<grl::IconLayerMapKey,std::__value_type<grl::IconLayerMapKey,std::unique_ptr<grl::LayerRenderer>>,grl::IconLayerMapKey,false>,geo::allocator_adapter<std::__value_type<grl::IconLayerMapKey,std::unique_ptr<grl::LayerRenderer>>,grl::zone_mallocator>>::destroy(*result);
    std::__tree<std::__value_type<grl::IconLayerMapKey,std::unique_ptr<grl::LayerRenderer>>,std::__map_value_compare<grl::IconLayerMapKey,std::__value_type<grl::IconLayerMapKey,std::unique_ptr<grl::LayerRenderer>>,grl::IconLayerMapKey,false>,geo::allocator_adapter<std::__value_type<grl::IconLayerMapKey,std::unique_ptr<grl::LayerRenderer>>,grl::zone_mallocator>>::destroy(result[1]);
    v2 = result[5];
    result[5] = 0;
    if (v2)
    {
      v2 = (*(*v2 + 8))(v2);
    }

    if (*(result + 36) == 1)
    {
      *(result + 36) = 0;
    }

    v3 = grl::zone_mallocator::instance(v2);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::TextureRect::TextureVBO>,geo::allocator_adapter<ggl::VertexDataTyped<ggl::TextureRect::TextureVBO>,ggl::zone_mallocator>>>(v3, result);
  }
}

void grl::ImageLayerRenderer::~ImageLayerRenderer(grl::ImageLayerRenderer *this)
{
  *this = &unk_1F2A5F198;
  std::__function::__value_func<std::shared_ptr<esl::QuartzImage> ()(void)>::~__value_func[abi:nn200100](this + 280);
  if (*(this + 168) == 1)
  {
    (**(this + 22))(this + 176);
    *(this + 168) = 0;
  }

  std::vector<void const*,geo::allocator_adapter<void const*,grl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 16));
}

{
  grl::ImageLayerRenderer::~ImageLayerRenderer(this);

  JUMPOUT(0x1B8C62190);
}

void grl::ShapeLayerRenderer::~ShapeLayerRenderer(grl::ShapeLayerRenderer *this)
{
  *this = &unk_1F2A5F160;
  if (*(this + 152) == 1)
  {
    (**(this + 20))(this + 160);
    *(this + 152) = 0;
  }

  std::vector<void const*,geo::allocator_adapter<void const*,grl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 16));
}

{
  grl::ShapeLayerRenderer::~ShapeLayerRenderer(this);

  JUMPOUT(0x1B8C62190);
}

grl::IconImage *std::__shared_ptr_pointer<grl::IconImage  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    grl::IconImage::~IconImage(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void grl::IconImage::~IconImage(grl::IconImage *this)
{
  std::mutex::~mutex((this + 216));
  if (*(this + 195) == 1)
  {
    *(this + 195) = 0;
  }

  if (*(this + 193) == 1)
  {
    *(this + 193) = 0;
  }

  if (*(this + 188) == 1)
  {
    *(this + 188) = 0;
  }

  if (*(this + 183) == 1)
  {
    *(this + 183) = 0;
  }

  if (*(this + 178) == 1)
  {
    *(this + 178) = 0;
  }

  if (*(this + 173) == 1)
  {
    *(this + 173) = 0;
  }

  if (*(this + 168) == 1)
  {
    *(this + 168) = 0;
  }

  if (*(this + 163) == 1)
  {
    *(this + 163) = 0;
  }

  if (*(this + 158) == 1)
  {
    *(this + 158) = 0;
  }

  if (*(this + 153) == 1)
  {
    *(this + 153) = 0;
  }

  if (*(this + 148) == 1)
  {
    *(this + 148) = 0;
  }

  if (*(this + 143) == 1)
  {
    *(this + 143) = 0;
  }

  if (*(this + 138) == 1)
  {
    *(this + 138) = 0;
  }

  if (*(this + 136) == 1)
  {
    *(this + 136) = 0;
  }

  std::__tree<std::__value_type<grl::IconLayerMapKey,std::unique_ptr<grl::LayerMetrics>>,std::__map_value_compare<grl::IconLayerMapKey,std::__value_type<grl::IconLayerMapKey,std::unique_ptr<grl::LayerMetrics>>,grl::IconLayerMapKey,false>,geo::allocator_adapter<std::__value_type<grl::IconLayerMapKey,std::unique_ptr<grl::LayerMetrics>>,grl::zone_mallocator>>::destroy(*(this + 13));
  if (*(this + 132) == 1)
  {
    *(this + 132) = 0;
  }

  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *this;
  *this = 0;
  if (v3)
  {
    grl::IconRenderer::~IconRenderer(v3);
    MEMORY[0x1B8C62190]();
  }
}

uint64_t std::__function::__func<md::LabelManager::clearPreviouslySelectedLabelMarker(void)::$_0,std::allocator<md::LabelManager::clearPreviouslySelectedLabelMarker(void)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A11A98;
  a2[1] = v2;
  return result;
}

__int128 *std::__stable_partition_impl<std::_ClassicAlgPolicy,gdc::LogicExecutionGraphBuilder::build(std::function<BOOL ()(gdc::LogicExecutionNode const&)>)::$_0 &,std::__wrap_iter<gdc::LogicExecutionNode*>,long,std::pair<gdc::LogicExecutionNode*,long>>(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6)
{
  v8 = a1;
  if (a4 == 3)
  {
    v10 = a1 + 80;
    if (*(a1 + 104) == 1)
    {
      v11 = *(a3 + 24);
      if (!v11)
      {
        goto LABEL_78;
      }

      if (!(*(*v11 + 48))(v11, v8 + 80))
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::__wrap_iter<gdc::LogicExecutionNode *> &,std::__wrap_iter<gdc::LogicExecutionNode *> &>(v8 + 80, a2);
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::__wrap_iter<gdc::LogicExecutionNode *> &,std::__wrap_iter<gdc::LogicExecutionNode *> &>(v8, (v8 + 80));
        return v10;
      }
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::__wrap_iter<gdc::LogicExecutionNode *> &,std::__wrap_iter<gdc::LogicExecutionNode *> &>(v8, (v8 + 80));
    a1 = v8 + 80;
LABEL_8:
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::__wrap_iter<gdc::LogicExecutionNode *> &,std::__wrap_iter<gdc::LogicExecutionNode *> &>(a1, a2);
    return a2;
  }

  if (a4 == 2)
  {
    goto LABEL_8;
  }

  if (a6 >= a4)
  {
    v23 = *a1;
    *(a5 + 9) = *(a1 + 9);
    *a5 = v23;
    *(a5 + 40) = 0uLL;
    *(a5 + 4) = 0;
    a5[2] = *(a1 + 32);
    *(a5 + 6) = *(a1 + 48);
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a5 + 56) = 0uLL;
    *(a5 + 9) = 0;
    *(a5 + 56) = *(a1 + 56);
    *(a5 + 9) = *(a1 + 72);
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    v24 = a5 + 5;
    v25 = a1 + 80;
    v26 = 1;
    if ((a1 + 80) == a2)
    {
      v32 = a1;
    }

    else
    {
      do
      {
        if (*(v25 + 24) != 1)
        {
          goto LABEL_22;
        }

        v27 = *(a3 + 24);
        if (!v27)
        {
          goto LABEL_78;
        }

        if (!(*(*v27 + 48))(v27, v25))
        {
          v31 = *v25;
          *(v24 + 9) = *(v25 + 9);
          *v24 = v31;
          *(v24 + 5) = 0;
          *(v24 + 6) = 0;
          *(v24 + 4) = 0;
          v24[2] = *(v25 + 32);
          *(v24 + 6) = *(v25 + 48);
          *(v25 + 32) = 0;
          *(v25 + 40) = 0;
          *(v25 + 48) = 0;
          *(v24 + 7) = 0;
          *(v24 + 8) = 0;
          *(v24 + 9) = 0;
          *(v24 + 56) = *(v25 + 56);
          *(v24 + 9) = *(v25 + 72);
          *(v25 + 56) = 0;
          *(v25 + 64) = 0;
          *(v25 + 72) = 0;
          ++v26;
          v24 += 5;
        }

        else
        {
LABEL_22:
          v28 = *v25;
          *(v8 + 9) = *(v25 + 9);
          *v8 = v28;
          v29 = *(v8 + 32);
          if (v29)
          {
            *(v8 + 40) = v29;
            operator delete(v29);
            *(v8 + 32) = 0;
            *(v8 + 40) = 0;
            *(v8 + 48) = 0;
          }

          *(v8 + 32) = *(v25 + 32);
          *(v8 + 48) = *(v25 + 48);
          *(v25 + 32) = 0;
          *(v25 + 40) = 0;
          *(v25 + 48) = 0;
          v30 = *(v8 + 56);
          if (v30)
          {
            *(v8 + 64) = v30;
            operator delete(v30);
            *(v8 + 56) = 0;
            *(v8 + 64) = 0;
            *(v8 + 72) = 0;
          }

          *(v8 + 56) = *(v25 + 56);
          *(v8 + 72) = *(v25 + 72);
          *(v25 + 56) = 0;
          *(v25 + 64) = 0;
          *(v25 + 72) = 0;
          v8 += 80;
        }

        v25 += 80;
      }

      while (v25 != a2);
      v32 = v25 - 80;
    }

    v37 = *v25;
    *(v8 + 9) = *(v25 + 9);
    *v8 = v37;
    v38 = *(v8 + 32);
    if (v38)
    {
      *(v8 + 40) = v38;
      operator delete(v38);
      *(v8 + 32) = 0;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
    }

    *(v8 + 32) = *(v32 + 112);
    *(v8 + 48) = *(v32 + 128);
    *(v32 + 112) = 0;
    *(v32 + 120) = 0;
    *(v32 + 128) = 0;
    v39 = *(v8 + 56);
    if (v39)
    {
      *(v8 + 64) = v39;
      operator delete(v39);
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      *(v8 + 72) = 0;
    }

    *(v8 + 56) = *(v32 + 136);
    *(v8 + 72) = *(v32 + 152);
    *(v32 + 136) = 0;
    *(v32 + 144) = 0;
    *(v32 + 152) = 0;
    v10 = v8 + 80;
    if (v24 > a5)
    {
      v40 = (v8 + 152);
      v41 = a5;
      do
      {
        v42 = *v41;
        v43 = *(v40 - 5);
        *(v40 - 63) = *(v41 + 9);
        *(v40 - 9) = v42;
        if (v43)
        {
          *(v40 - 4) = v43;
          operator delete(v43);
          *(v40 - 5) = 0;
          *(v40 - 4) = 0;
          *(v40 - 3) = 0;
        }

        *(v40 - 5) = v41[2];
        *(v40 - 3) = *(v41 + 6);
        *(v41 + 4) = 0;
        *(v41 + 5) = 0;
        *(v41 + 6) = 0;
        v44 = *(v40 - 2);
        if (v44)
        {
          *(v40 - 1) = v44;
          operator delete(v44);
          *(v40 - 2) = 0;
          *(v40 - 1) = 0;
          *v40 = 0;
        }

        *(v40 - 1) = *(v41 + 56);
        *v40 = *(v41 + 9);
        v40 += 10;
        *(v41 + 7) = 0;
        *(v41 + 8) = 0;
        *(v41 + 9) = 0;
        v41 += 5;
      }

      while (v41 < v24);
    }

    if (a5 && v26)
    {
      v45 = a5 + 4;
      do
      {
        v46 = *(v45 - 1);
        if (v46)
        {
          *v45 = v46;
          operator delete(v46);
        }

        v47 = *(v45 - 4);
        if (v47)
        {
          *(v45 - 3) = v47;
          operator delete(v47);
        }

        v45 += 5;
        --v26;
      }

      while (v26);
    }

    return v10;
  }

  v15 = a4 / 2;
  v16 = (a1 + 80 * (a4 / 2));
  if (*(v16 - 56) != 1)
  {
    v22 = (v16 - 5);
    v18 = a4 / 2;
LABEL_31:
    v8 = std::__stable_partition_impl<std::_ClassicAlgPolicy,gdc::LogicExecutionGraphBuilder::build(std::function<BOOL ()(gdc::LogicExecutionNode const&)>)::$_0 &,std::__wrap_iter<gdc::LogicExecutionNode*>,long,std::pair<gdc::LogicExecutionNode*,long>>(v8, v22, a3, v18, a5, a6);
LABEL_32:
    v33 = (a2 + 5);
    v34 = a4 - v15;
    v35 = v16;
    while (1)
    {
      if (*(v35 + 24) == 1)
      {
        v36 = *(a3 + 24);
        if (!v36)
        {
          goto LABEL_78;
        }

        if (!(*(*v36 + 48))(v36, v35))
        {
          break;
        }
      }

      v35 += 80;
      if (v35 == a2)
      {
        goto LABEL_61;
      }

      --v34;
    }

    v33 = std::__stable_partition_impl<std::_ClassicAlgPolicy,gdc::LogicExecutionGraphBuilder::build(std::function<BOOL ()(gdc::LogicExecutionNode const&)>)::$_0 &,std::__wrap_iter<gdc::LogicExecutionNode*>,long,std::pair<gdc::LogicExecutionNode*,long>>(v35, a2, a3, v34, a5, a6);
LABEL_61:
    v10 = v33;
    if (v8 != v16)
    {
      if (v16 == v33)
      {
        return v8;
      }

      else
      {
        v10 = v8 + 80;
        v48 = v16;
        while (1)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::__wrap_iter<gdc::LogicExecutionNode *> &,std::__wrap_iter<gdc::LogicExecutionNode *> &>(v8, v16);
          v8 += 80;
          v16 += 5;
          if (v16 == v33)
          {
            break;
          }

          if (v8 == v48)
          {
            v48 = v16;
          }

          v10 += 80;
        }

        if (v8 != v48)
        {
          v49 = v48;
          do
          {
            while (1)
            {
              std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::__wrap_iter<gdc::LogicExecutionNode *> &,std::__wrap_iter<gdc::LogicExecutionNode *> &>(v8, v48);
              v8 += 80;
              v48 += 5;
              if (v48 == v33)
              {
                break;
              }

              if (v8 == v49)
              {
                v49 = v48;
              }
            }

            v48 = v49;
          }

          while (v8 != v49);
        }
      }
    }

    return v10;
  }

  v17 = (a1 + 80 * v15 - 136);
  v18 = a4 / 2;
  v19 = 80 - 80 * v15;
  v55 = a4 / 2;
  while (1)
  {
    v20 = *(a3 + 24);
    if (!v20)
    {
      break;
    }

    if ((*(*v20 + 48))(v20, v17 + 56))
    {
      goto LABEL_17;
    }

    if (!v19)
    {
      v15 = v55;
      goto LABEL_32;
    }

    --v18;
    v21 = *v17;
    v17 -= 80;
    v19 += 80;
    if (v21 != 1)
    {
LABEL_17:
      v22 = (v17 + 56);
      v15 = v55;
      goto LABEL_31;
    }
  }

LABEL_78:
  v50 = std::__throw_bad_function_call[abi:nn200100]();
  return md::PointIconLabelPart::layoutForDisplay(v50, v51, v52, v53, v54);
}

uint64_t md::PointIconLabelPart::layoutForDisplay(float32x2_t *a1, uint64_t a2, uint64_t a3, float32x2_t *a4, float32x2_t *a5)
{
  v10 = a1[105];
  if (v10)
  {
    (*(**&v10 + 120))(v10, a2, a3, a4, a5);
  }

  md::IconLabelPart::layoutForDisplay(a1, a2, a3, a4, a5);
  return 37;
}

uint64_t md::CaptionedIconLabelPart::layoutForDisplay(md::CaptionedIconLabelPart *this, md::LabelManager *a2, uint64_t a3, float32x2_t *a4, __n128 a5, __n128 a6)
{
  v10 = *(a2 + 450);
  v66 = 0;
  v11 = *(*(this + 2) + 1264);
  if (v11)
  {
    v12 = *(v11 + 24);
    v13 = *(v11 + 32);
    if (0x8E38E38E38E38E39 * ((v13 - v12) >> 4) <= *(this + 564))
    {
      if (v12 == v13 || (*(v11 + 89) & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v12 += 18 * *(this + 564);
    }

    if (v12)
    {
      md::CaptionedIconLabelPart::evaluateAnimation(this, v12, a2, a4, &v66);
    }
  }

LABEL_6:
  if (*(this + 565) == 1)
  {
    md::CaptionedIconLabelPart::generateDisplayModelMatrix(this, a2, a5, a6);
  }

  v14 = *(this + 925);
  if ((v14 & 1) == 0)
  {
    if (*(this + 926) & 1) == 0 || (*(this + 732))
    {
      return 14;
    }

    v31 = *(*(this + 72) + 8 * v14);
    v67.i64[0] = 0;
    (*(*v31 + 120))(v31, a2, a3, a4, &v67);
    v32 = v31[3];
    v67 = 0uLL;
    v33.i32[0] = md::CaptionedIconLabelPart::textOriginOffsetForPosition(this, 1u, *(this + 847), *(this + 855), *(this + 848), v67.f32, (v32 + 312), v31).u32[0];
    if (v10)
    {
      v35 = *(a2 + 896);
      v36 = vmul_n_f32(v35, v33.f32[0]);
      v37 = vrev64_s32(vmul_n_f32(v35, v34));
      v33.i32[0] = vsub_f32(v36, v37).u32[0];
      v33.i32[1] = vadd_f32(v36, v37).i32[1];
    }

    else
    {
      v33.f32[1] = v34;
    }

    *v65.f32 = vadd_f32(v33, v66);
    result = (*(*v31 + 120))(v31, a2, a3, a4, &v65);
    goto LABEL_29;
  }

  if (*(this + 926) & 1) == 0 || (*(this + 732))
  {
    v31 = **(this + 72);
    result = (*(*v31 + 120))(v31, a2, a3, a4, &v66);
LABEL_29:
    if (result == 37)
    {
      v38 = v31[3];
      *(this + 98) = v38[98];
      *(this + 99) = v38[99];
      *(this + 100) = v38[100];
      *(this + 101) = v38[101];
LABEL_31:
      *(this + 130) = a4->i32[0];
      *(this + 131) = a4->i32[1];
      *(this + 53) = *(this + 111);
      return 37;
    }

    return result;
  }

  v15 = *(this + 72);
  v16 = *v15;
  v17 = v15[v14];
  result = (*(**v15 + 120))(*v15, a2, a3, a4, &v66);
  if (result == 37)
  {
    *v67.f32 = vadd_f32(*(this + 708), v66);
    result = (*(*v17 + 120))(v17, a2, a3, a4, &v67);
    if (result == 37)
    {
      v19 = 0;
      v20 = *(v16 + 24);
      v21 = (v20 + 376);
      v22 = v20 + 384;
      v23 = 1;
      v24 = xmmword_1B33B0730;
      while (*(v22 + 4 * v19) >= v21->f32[v19])
      {
        v25 = v23;
        v23 = 0;
        v19 = 1;
        if ((v25 & 1) == 0)
        {
          v26 = 0;
          v67 = *v21;
          v27 = &v67;
          v28 = 1;
          while (v67.f32[v26 + 2] >= v27->f32[0])
          {
            v29 = v28;
            v28 = 0;
            v27 = &v67.i32[1];
            v26 = 1;
            if ((v29 & 1) == 0)
            {
              *v30.f32 = *a4;
              *&v30.u32[2] = *a4;
              v24 = vsubq_f32(v67, v30);
              goto LABEL_34;
            }
          }

          v24 = v67;
          break;
        }
      }

LABEL_34:
      v39 = 0;
      v40 = &v65;
      v65 = v24;
      v41 = v17[3];
      v42 = (v41 + 312);
      v43 = 1;
      do
      {
        if (v65.f32[v39 + 2] < v40->f32[0])
        {
          return 16;
        }

        v44 = v43;
        v43 = 0;
        v40 = &v65.i32[1];
        v39 = 1;
      }

      while ((v44 & 1) != 0);
      v45 = 0;
      v46 = v41 + 320;
      v47 = 1;
      while (*(v46 + 4 * v45) >= v42[v45])
      {
        v48 = v47;
        v47 = 0;
        v45 = 1;
        if ((v48 & 1) == 0)
        {
          LODWORD(v49) = md::CaptionedIconLabelPart::textOriginOffsetForPosition(this, 1u, *(this + 847), *(this + 855), *(this + 848), v65.f32, v42, v17).u32[0];
          if (v10)
          {
            v51 = *(a2 + 224);
            v52 = *(a2 + 225);
            v53 = v52 * v50;
            v50 = (v51 * v50) + (v52 * v49);
            v49 = -(v53 - (v51 * v49));
          }

          v54 = 0;
          v55 = 1;
          v56 = v49;
          while (vabds_f32(v56, *(this + v54 + 177)) < 0.1)
          {
            v57 = v55;
            v55 = 0;
            v56 = v50;
            v54 = 1;
            if ((v57 & 1) == 0)
            {
              goto LABEL_50;
            }
          }

          *(this + 177) = v49;
          *(this + 178) = v50;
          v67.f32[0] = v49 + v66.f32[0];
          v67.f32[1] = v50 + v66.f32[1];
          (*(*v17 + 120))(v17, a2, a3, a4, &v67);
LABEL_50:
          v58 = 0;
          v59 = v17[3];
          v60 = v59 + 392;
          v67 = *(*(v16 + 24) + 392);
          v61 = &v67;
          v62 = v59 + 400;
          v63 = 1;
          do
          {
            v64 = v63;
            v61->f32[0] = fminf(*(v60 + 4 * v58), v61->f32[0]);
            v67.f32[v58 + 2] = fmaxf(v67.f32[v58 + 2], *(v62 + 4 * v58));
            v61 = &v67.i32[1];
            v58 = 1;
            v63 = 0;
          }

          while ((v64 & 1) != 0);
          *(this + 392) = v67;
          goto LABEL_31;
        }
      }

      return 14;
    }
  }

  return result;
}