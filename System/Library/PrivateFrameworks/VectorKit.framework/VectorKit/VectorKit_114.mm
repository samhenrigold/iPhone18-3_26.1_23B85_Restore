void md::BuildingRenderLayer::layout3DBuildings(uint64_t a1, uint64_t **a2, uint64_t a3, md::LayoutContext *a4, int a5, int a6)
{
  v82 = *MEMORY[0x1E69E9840];
  v9 = *(a4 + 1);
  v10 = gdc::Context::context<md::PolygonContext>(v9);
  if (v10 && *(v10 + 16) == 1)
  {
    v66 = v10[1];
  }

  else
  {
    v66 = 0;
  }

  if (a5 != 1 || v66)
  {
    if (a6 != 1 || (md::LayoutContext::zoomAtCentrePoint(v9), (1.0 - fminf(fmaxf((v11 * 2.0) + -31.0, 0.0), 1.0)) >= 0.00000011921))
    {
      if (gdc::Context::get<md::SkyLogicContext>(v9) && md::LayoutContext::get<md::LightingLogicContext>(v9) && md::LayoutContext::get<md::SharedResourcesContext>(v9))
      {
        md::LayoutContext::get<md::CameraContext>(v9);
        v12 = md::LayoutContext::get<md::SettingsContext>(v9);
        v13 = *v12;
        v14 = v12[1];
        if (*v12 == v14)
        {
          v16 = 0;
          v15 = a1;
        }

        else
        {
          v15 = a1;
          while (*v13 != 20)
          {
            v13 += 16;
            if (v13 == v14)
            {
              goto LABEL_20;
            }
          }

          if (v13 != v14)
          {
            v16 = *(v13 + 8) == 5;
            goto LABEL_21;
          }

LABEL_20:
          v16 = 0;
        }

LABEL_21:
        v17 = gdc::Context::get<md::StyleLogicContext>(v9)[2];
        v74 = 0uLL;
        *&v75 = 0;
        gss::StylesheetManager<gss::ScenePropertyID>::styleQueryForFeatureAttributes(&v80, v17, &v74);
        std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v74);
        v18 = v80;
        v19 = v81;
        if (v81)
        {
          atomic_fetch_add_explicit(&v81->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        gss::QueryableLocker<gss::ScenePropertyID>::QueryableLocker(&v69, v18, v19);
        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v19);
        }

        v20 = **(v15 + 376);
        ggl::BufferMemory::BufferMemory(&v71);
        ggl::ResourceAccessor::accessConstantData(&v74, 0, v20, 1);
        ggl::BufferMemory::operator=(&v71, &v74);
        ggl::BufferMemory::~BufferMemory(&v74);
        if (v70 == 1)
        {
          gss::RenderStyleHelper<gss::ScenePropertyID,float>::valueForKey(57, *(v69 + 24));
          v22 = v21;
          gss::RenderStyleHelper<gss::ScenePropertyID,float>::valueForKey(64, *(v69 + 24));
          v24 = (v23 * 2.0) + -1.0;
          gss::RenderStyleHelper<gss::ScenePropertyID,float>::valueForKey(58, *(v69 + 24));
          v26 = v25;
          gss::RenderStyleHelper<gss::ScenePropertyID,float>::valueForKey(65, *(v69 + 24));
          v28 = v27;
          gss::RenderStyleHelper<gss::ScenePropertyID,float>::valueForKey(60, *(v69 + 24));
          v30 = (v29 * 2.0) + -1.0;
          if (v16)
          {
            v68 = (v28 * 2.0) + -1.0;
            v31 = (v26 * 2.0) + -1.0;
            md::LayoutContext::frameState(a4);
            v67 = *(v32 + 64);
            v33 = tan(*(v32 + 56) * 0.5 + 0.785398163);
            v34 = log(v33);
            *&v35.f64[0] = v67;
            v35.f64[1] = v34;
            __asm { FMOV            V2.2D, #0.5 }

            v74 = vmlaq_f64(_Q2, vdupq_n_s64(0x3FC45F306DC9C883uLL), v35);
            *&v75 = *(&v67 + 1);
            v41 = md::LayoutContext::get<md::CameraContext>(*(a4 + 1));
            gm::Matrix<double,4,4>::multiplyHomogeneous<int,void>((v41 + 808), &v74);
            v43 = v42;
            gss::RenderStyleHelper<gss::ScenePropertyID,float>::valueForKey(59, *(v69 + 24));
            v45 = v44;
            gss::RenderStyleHelper<gss::ScenePropertyID,float>::valueForKey(61, *(v69 + 24));
            v24 = fminf(fmaxf(v43 + (v45 * 2.0), v24), v31);
            v30 = fminf(fmaxf(v43 + (v46 * 2.0), v68), v30);
          }

          if (v24 >= v30)
          {
            v47 = -1.0;
          }

          else
          {
            v47 = v30;
          }

          v48 = -2.0;
          if (v24 < v30)
          {
            v48 = v24;
          }

          v49 = 1.0;
          if (v24 < v30)
          {
            v49 = v22;
          }

          *(*(v15 + 376) + 18) = v49 < 0.999;
          v50 = v72;
          v72[2] = v49;
          v51 = (1.0 - v49) / (v47 - v48);
          *v50 = v51;
          v52 = v49 - (v48 * v51);
        }

        else
        {
          *(*(v15 + 376) + 18) = 0;
          v50 = v72;
          v72[2] = 1.0;
          *v50 = 0.0;
          v52 = 1.0;
        }

        v50[1] = v52;
        ggl::BufferMemory::~BufferMemory(&v71);
        gss::QueryableLocker<gss::ScenePropertyID>::~QueryableLocker(&v69);
        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v19);
        }

        v53 = md::LayoutContext::get<md::VenueLogicContext>(*(a4 + 1));
        v54 = v53;
        if (*(v15 + 440))
        {
          v58 = v53;
          v59 = *(v15 + 432);
          if (v59)
          {
            do
            {
              v60 = *v59;
              operator delete(v59);
              v59 = v60;
            }

            while (v60);
          }

          *(v15 + 432) = 0;
          v61 = *(v15 + 424);
          if (v61)
          {
            for (i = 0; i != v61; ++i)
            {
              *(*(v15 + 416) + 8 * i) = 0;
            }
          }

          *(v15 + 440) = 0;
          v54 = v58;
        }

        if (*a2 != a2[1])
        {
          __asm { FMOV            V0.2S, #1.0 }

          v56 = *(**a2 + 392);
          v74 = 0u;
          v75 = 0u;
          v76 = 0;
          v77 = a4;
          v78 = a3;
          v57 = *(v56 + 169);
          v79 = v57;
          md::featureIdPredicate(v73, a5, a6, v57, v66, v54, v15 + 416);
        }
      }
    }
  }
}

void sub_1B302D3A8(_Unwind_Exception *a1)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(a1);
}

ggl::zone_mallocator *ggl::FragmentedPool<ggl::BuildingTopDepth::CompressedMeshPipelineSetup>::pop(ggl::zone_mallocator *a1)
{
  v1 = a1;
  v2 = *(a1 + 1);
  if (v2 == *a1)
  {
    v4 = *(a1 + 11);
    if (!v4)
    {
      goto LABEL_19;
    }

    a1 = (*(*v4 + 48))(v4);
    v3 = a1;
  }

  else
  {
    v3 = *(v2 - 8);
    *(a1 + 1) = v2 - 8;
  }

  v6 = *(v1 + 5);
  v5 = *(v1 + 6);
  if (v6 >= v5)
  {
    v8 = *(v1 + 4);
    v9 = (v6 - v8) >> 3;
    if ((v9 + 1) >> 61)
    {
      goto LABEL_20;
    }

    v10 = v5 - v8;
    v11 = v10 >> 2;
    if (v10 >> 2 <= (v9 + 1))
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    v24[4] = v1 + 56;
    if (v12)
    {
      v13 = ggl::zone_mallocator::instance(a1);
      v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::BuildingTopDepth::CompressedMeshPipelineSetup *>(v13, v12);
    }

    else
    {
      v14 = 0;
    }

    v16 = &v14[8 * v12];
    v15 = &v14[8 * v9];
    *v15 = v3;
    v7 = v15 + 1;
    v17 = *(v1 + 4);
    v18 = *(v1 + 5) - v17;
    v19 = v15 - v18;
    memcpy(v15 - v18, v17, v18);
    v20 = *(v1 + 4);
    *(v1 + 4) = v19;
    *(v1 + 5) = v7;
    v21 = *(v1 + 6);
    *(v1 + 6) = v16;
    v24[2] = v20;
    v24[3] = v21;
    v24[0] = v20;
    v24[1] = v20;
    std::__split_buffer<ggl::BuildingTopDepth::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::BuildingTopDepth::CompressedMeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v24);
  }

  else
  {
    *v6 = v3;
    v7 = v6 + 1;
  }

  *(v1 + 5) = v7;
  v24[0] = v3;
  v22 = *(v1 + 15);
  if (!v22)
  {
LABEL_19:
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_20:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  (*(*v22 + 48))(v22, v24);
  return v3;
}

ggl::zone_mallocator *ggl::FragmentedPool<ggl::BuildingFacadeDepth::BuildingPipelineSetup>::pop(ggl::zone_mallocator *a1)
{
  v1 = a1;
  v2 = *(a1 + 1);
  if (v2 == *a1)
  {
    v4 = *(a1 + 11);
    if (!v4)
    {
      goto LABEL_19;
    }

    a1 = (*(*v4 + 48))(v4);
    v3 = a1;
  }

  else
  {
    v3 = *(v2 - 8);
    *(a1 + 1) = v2 - 8;
  }

  v6 = *(v1 + 5);
  v5 = *(v1 + 6);
  if (v6 >= v5)
  {
    v8 = *(v1 + 4);
    v9 = (v6 - v8) >> 3;
    if ((v9 + 1) >> 61)
    {
      goto LABEL_20;
    }

    v10 = v5 - v8;
    v11 = v10 >> 2;
    if (v10 >> 2 <= (v9 + 1))
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    v24[4] = v1 + 56;
    if (v12)
    {
      v13 = ggl::zone_mallocator::instance(a1);
      v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::BuildingFacadeDepth::BuildingPipelineSetup *>(v13, v12);
    }

    else
    {
      v14 = 0;
    }

    v16 = &v14[8 * v12];
    v15 = &v14[8 * v9];
    *v15 = v3;
    v7 = v15 + 1;
    v17 = *(v1 + 4);
    v18 = *(v1 + 5) - v17;
    v19 = v15 - v18;
    memcpy(v15 - v18, v17, v18);
    v20 = *(v1 + 4);
    *(v1 + 4) = v19;
    *(v1 + 5) = v7;
    v21 = *(v1 + 6);
    *(v1 + 6) = v16;
    v24[2] = v20;
    v24[3] = v21;
    v24[0] = v20;
    v24[1] = v20;
    std::__split_buffer<ggl::BuildingFacadeDepth::BuildingPipelineSetup *,geo::allocator_adapter<ggl::BuildingFacadeDepth::BuildingPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v24);
  }

  else
  {
    *v6 = v3;
    v7 = v6 + 1;
  }

  *(v1 + 5) = v7;
  v24[0] = v3;
  v22 = *(v1 + 15);
  if (!v22)
  {
LABEL_19:
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_20:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  (*(*v22 + 48))(v22, v24);
  return v3;
}

ggl::zone_mallocator *ggl::FragmentedPool<ggl::BuildingPointyRoofDepth::BuildingPipelineSetup>::pop(ggl::zone_mallocator *a1)
{
  v1 = a1;
  v2 = *(a1 + 1);
  if (v2 == *a1)
  {
    v4 = *(a1 + 11);
    if (!v4)
    {
      goto LABEL_19;
    }

    a1 = (*(*v4 + 48))(v4);
    v3 = a1;
  }

  else
  {
    v3 = *(v2 - 8);
    *(a1 + 1) = v2 - 8;
  }

  v6 = *(v1 + 5);
  v5 = *(v1 + 6);
  if (v6 >= v5)
  {
    v8 = *(v1 + 4);
    v9 = (v6 - v8) >> 3;
    if ((v9 + 1) >> 61)
    {
      goto LABEL_20;
    }

    v10 = v5 - v8;
    v11 = v10 >> 2;
    if (v10 >> 2 <= (v9 + 1))
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    v24[4] = v1 + 56;
    if (v12)
    {
      v13 = ggl::zone_mallocator::instance(a1);
      v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::BuildingPointyRoofDepth::BuildingPipelineSetup *>(v13, v12);
    }

    else
    {
      v14 = 0;
    }

    v16 = &v14[8 * v12];
    v15 = &v14[8 * v9];
    *v15 = v3;
    v7 = v15 + 1;
    v17 = *(v1 + 4);
    v18 = *(v1 + 5) - v17;
    v19 = v15 - v18;
    memcpy(v15 - v18, v17, v18);
    v20 = *(v1 + 4);
    *(v1 + 4) = v19;
    *(v1 + 5) = v7;
    v21 = *(v1 + 6);
    *(v1 + 6) = v16;
    v24[2] = v20;
    v24[3] = v21;
    v24[0] = v20;
    v24[1] = v20;
    std::__split_buffer<ggl::BuildingPointyRoofDepth::BuildingPipelineSetup *,geo::allocator_adapter<ggl::BuildingPointyRoofDepth::BuildingPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v24);
  }

  else
  {
    *v6 = v3;
    v7 = v6 + 1;
  }

  *(v1 + 5) = v7;
  v24[0] = v3;
  v22 = *(v1 + 15);
  if (!v22)
  {
LABEL_19:
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_20:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  (*(*v22 + 48))(v22, v24);
  return v3;
}

ggl::zone_mallocator *ggl::FragmentedPool<ggl::DiffuseBuilding::BuildingPipelineSetup>::pop(ggl::zone_mallocator *a1)
{
  v1 = a1;
  v2 = *(a1 + 1);
  if (v2 == *a1)
  {
    v4 = *(a1 + 11);
    if (!v4)
    {
      goto LABEL_19;
    }

    a1 = (*(*v4 + 48))(v4);
    v3 = a1;
  }

  else
  {
    v3 = *(v2 - 8);
    *(a1 + 1) = v2 - 8;
  }

  v6 = *(v1 + 5);
  v5 = *(v1 + 6);
  if (v6 >= v5)
  {
    v8 = *(v1 + 4);
    v9 = (v6 - v8) >> 3;
    if ((v9 + 1) >> 61)
    {
      goto LABEL_20;
    }

    v10 = v5 - v8;
    v11 = v10 >> 2;
    if (v10 >> 2 <= (v9 + 1))
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    v24[4] = v1 + 56;
    if (v12)
    {
      v13 = ggl::zone_mallocator::instance(a1);
      v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DiffuseBuilding::BuildingPipelineSetup *>(v13, v12);
    }

    else
    {
      v14 = 0;
    }

    v16 = &v14[8 * v12];
    v15 = &v14[8 * v9];
    *v15 = v3;
    v7 = v15 + 1;
    v17 = *(v1 + 4);
    v18 = *(v1 + 5) - v17;
    v19 = v15 - v18;
    memcpy(v15 - v18, v17, v18);
    v20 = *(v1 + 4);
    *(v1 + 4) = v19;
    *(v1 + 5) = v7;
    v21 = *(v1 + 6);
    *(v1 + 6) = v16;
    v24[2] = v20;
    v24[3] = v21;
    v24[0] = v20;
    v24[1] = v20;
    std::__split_buffer<ggl::DiffuseBuilding::BuildingPipelineSetup *,geo::allocator_adapter<ggl::DiffuseBuilding::BuildingPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v24);
  }

  else
  {
    *v6 = v3;
    v7 = v6 + 1;
  }

  *(v1 + 5) = v7;
  v24[0] = v3;
  v22 = *(v1 + 15);
  if (!v22)
  {
LABEL_19:
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_20:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  (*(*v22 + 48))(v22, v24);
  return v3;
}

ggl::zone_mallocator *ggl::FragmentedPool<ggl::FoggedDiffuseBuilding::BuildingPipelineSetup>::pop(ggl::zone_mallocator *a1)
{
  v1 = a1;
  v2 = *(a1 + 1);
  if (v2 == *a1)
  {
    v4 = *(a1 + 11);
    if (!v4)
    {
      goto LABEL_19;
    }

    a1 = (*(*v4 + 48))(v4);
    v3 = a1;
  }

  else
  {
    v3 = *(v2 - 8);
    *(a1 + 1) = v2 - 8;
  }

  v6 = *(v1 + 5);
  v5 = *(v1 + 6);
  if (v6 >= v5)
  {
    v8 = *(v1 + 4);
    v9 = (v6 - v8) >> 3;
    if ((v9 + 1) >> 61)
    {
      goto LABEL_20;
    }

    v10 = v5 - v8;
    v11 = v10 >> 2;
    if (v10 >> 2 <= (v9 + 1))
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    v24[4] = v1 + 56;
    if (v12)
    {
      v13 = ggl::zone_mallocator::instance(a1);
      v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::FoggedDiffuseBuilding::BuildingPipelineSetup *>(v13, v12);
    }

    else
    {
      v14 = 0;
    }

    v16 = &v14[8 * v12];
    v15 = &v14[8 * v9];
    *v15 = v3;
    v7 = v15 + 1;
    v17 = *(v1 + 4);
    v18 = *(v1 + 5) - v17;
    v19 = v15 - v18;
    memcpy(v15 - v18, v17, v18);
    v20 = *(v1 + 4);
    *(v1 + 4) = v19;
    *(v1 + 5) = v7;
    v21 = *(v1 + 6);
    *(v1 + 6) = v16;
    v24[2] = v20;
    v24[3] = v21;
    v24[0] = v20;
    v24[1] = v20;
    std::__split_buffer<ggl::FoggedDiffuseBuilding::BuildingPipelineSetup *,geo::allocator_adapter<ggl::FoggedDiffuseBuilding::BuildingPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v24);
  }

  else
  {
    *v6 = v3;
    v7 = v6 + 1;
  }

  *(v1 + 5) = v7;
  v24[0] = v3;
  v22 = *(v1 + 15);
  if (!v22)
  {
LABEL_19:
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_20:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  (*(*v22 + 48))(v22, v24);
  return v3;
}

ggl::zone_mallocator *ggl::FragmentedPool<ggl::PrefilteredLine::PrefilteredLinePipelineSetup>::pop(ggl::zone_mallocator *a1)
{
  v1 = a1;
  v2 = *(a1 + 1);
  if (v2 == *a1)
  {
    v4 = *(a1 + 11);
    if (!v4)
    {
      goto LABEL_19;
    }

    a1 = (*(*v4 + 48))(v4);
    v3 = a1;
  }

  else
  {
    v3 = *(v2 - 8);
    *(a1 + 1) = v2 - 8;
  }

  v6 = *(v1 + 5);
  v5 = *(v1 + 6);
  if (v6 >= v5)
  {
    v8 = *(v1 + 4);
    v9 = (v6 - v8) >> 3;
    if ((v9 + 1) >> 61)
    {
      goto LABEL_20;
    }

    v10 = v5 - v8;
    v11 = v10 >> 2;
    if (v10 >> 2 <= (v9 + 1))
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    v24[4] = v1 + 56;
    if (v12)
    {
      v13 = ggl::zone_mallocator::instance(a1);
      v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PrefilteredLine::PrefilteredLinePipelineSetup *>(v13, v12);
    }

    else
    {
      v14 = 0;
    }

    v16 = &v14[8 * v12];
    v15 = &v14[8 * v9];
    *v15 = v3;
    v7 = v15 + 1;
    v17 = *(v1 + 4);
    v18 = *(v1 + 5) - v17;
    v19 = v15 - v18;
    memcpy(v15 - v18, v17, v18);
    v20 = *(v1 + 4);
    *(v1 + 4) = v19;
    *(v1 + 5) = v7;
    v21 = *(v1 + 6);
    *(v1 + 6) = v16;
    v24[2] = v20;
    v24[3] = v21;
    v24[0] = v20;
    v24[1] = v20;
    std::__split_buffer<ggl::PrefilteredLine::PrefilteredLinePipelineSetup *,geo::allocator_adapter<ggl::PrefilteredLine::PrefilteredLinePipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v24);
  }

  else
  {
    *v6 = v3;
    v7 = v6 + 1;
  }

  *(v1 + 5) = v7;
  v24[0] = v3;
  v22 = *(v1 + 15);
  if (!v22)
  {
LABEL_19:
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_20:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  (*(*v22 + 48))(v22, v24);
  return v3;
}

void md::AccessibilityHelper::adjustedColorAtZ<(gss::PropertyID)161,(gss::PropertyID)489>(uint64_t a1, char *a2, uint64_t a3, unsigned int a4, __n128 a5, double a6)
{
  if (a4 >= 0x17)
  {
    v9 = 23;
  }

  else
  {
    v9 = a4;
  }

  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v12, *(*a3 + 24), 161, v9, 2u, 0, a5, a6);
  v11 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v12)), vdupq_n_s32(0x37800080u));
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a3 + 24), 489, v9, 2u, 0);
  md::AccessibilityHelper::luminanceAdjustedColor(a1, *a2, &v11, v10);
}

void md::AccessibilityHelper::adjustedColorAtZ<(gss::PropertyID)3,(gss::PropertyID)490>(uint64_t a1, char *a2, uint64_t a3, unsigned int a4, __n128 a5, double a6)
{
  if (a4 >= 0x17)
  {
    v9 = 23;
  }

  else
  {
    v9 = a4;
  }

  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v12, *(*a3 + 24), 3, v9, 2u, 0, a5, a6);
  v11 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v12)), vdupq_n_s32(0x37800080u));
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a3 + 24), 490, v9, 2u, 0);
  md::AccessibilityHelper::luminanceAdjustedColor(a1, *a2, &v11, v10);
}

void md::OcclusionPipelineProxy::update(ggl::zone_mallocator *a1, uint64_t a2, uint64_t *a3)
{
  v5 = a1;
  v6 = *(a1 + 3);
  v7 = v6[1];
  if (v7 == *v6)
  {
    v9 = v6[11];
    if (!v9)
    {
      goto LABEL_21;
    }

    a1 = (*(*v9 + 48))(v9);
    v8 = a1;
  }

  else
  {
    v8 = *(v7 - 8);
    v6[1] = v7 - 8;
  }

  v11 = v6[5];
  v10 = v6[6];
  if (v11 >= v10)
  {
    v13 = v6[4];
    v14 = (v11 - v13) >> 3;
    if ((v14 + 1) >> 61)
    {
      goto LABEL_22;
    }

    v15 = v10 - v13;
    v16 = v15 >> 2;
    if (v15 >> 2 <= (v14 + 1))
    {
      v16 = v14 + 1;
    }

    if (v15 >= 0x7FFFFFFFFFFFFFF8)
    {
      v17 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v17 = v16;
    }

    v48 = v6 + 7;
    if (v17)
    {
      v18 = ggl::zone_mallocator::instance(a1);
      v19 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ARMesh::ARDepthMeshPipelineSetup *>(v18, v17);
    }

    else
    {
      v19 = 0;
    }

    v21 = &v19[8 * v17];
    v20 = &v19[8 * v14];
    *v20 = v8;
    v12 = v20 + 1;
    v22 = v6[4];
    v23 = v6[5] - v22;
    v24 = v20 - v23;
    memcpy(v20 - v23, v22, v23);
    v25 = v6[4];
    v6[4] = v24;
    v6[5] = v12;
    v26 = v6[6];
    v6[6] = v21;
    *&v46[16] = v25;
    v47 = v26;
    *v46 = v25;
    *&v46[8] = v25;
    std::__split_buffer<ggl::ARMesh::ARDepthMeshPipelineSetup *,geo::allocator_adapter<ggl::ARMesh::ARDepthMeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v46);
  }

  else
  {
    *v11 = v8;
    v12 = v11 + 1;
  }

  v6[5] = v12;
  *v46 = v8;
  v27 = v6[15];
  if (!v27)
  {
LABEL_21:
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_22:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  (*(*v27 + 48))(v27, v46);
  v28 = *a3;
  *v46 = v8;
  v29 = gdc::Registry::storage<arComponents::PipelineInstanceToUse>(a2);
  gdc::ComponentStorageWrapper<arComponents::PipelineInstanceToUse>::emplace(v29, v28, v46);
  v30 = *a3;
  *&v46[12] = 0;
  *&v46[4] = 0;
  v47 = 0;
  v48 = 0;
  v51 = 0;
  v50 = 0;
  *v46 = 1065353216;
  *&v46[20] = 1065353216;
  v49 = 1065353216;
  v52 = 1065353216;
  v31 = gdc::Registry::storage<arComponents::ViewConstantDataComponent>(a2);
  gdc::ComponentStorageWrapper<arComponents::ViewConstantDataComponent>::emplace(v31, v30, v46);
  v32 = *a3;
  *v46 = 0;
  *&v46[8] = 0;
  v33 = gdc::Registry::storage<arComponents::TransformConstantDataComponent>(a2);
  gdc::ComponentStorageWrapper<arComponents::TransformConstantDataComponent>::emplace(v33, v32, v46);
  if (*&v46[8])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*&v46[8]);
  }

  v34 = *a3;
  v35 = gdc::Registry::storage<arComponents::NeedsTransformConstantDataUpdate>(a2);
  gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v35, v34);
  v36 = *a3;
  *v46 = **(v8 + 17);
  v37 = gdc::Registry::storage<arComponents::CompWrap<ggl::ConstantDataTyped<ggl::Tile::View>>>(a2);
  gdc::ComponentStorageWrapper<arComponents::PipelineInstanceToUse>::emplace(v37, v36, v46);
  v38 = *a3;
  *v46 = *(*(v8 + 17) + 16);
  v39 = gdc::Registry::storage<arComponents::CompWrap<ggl::ConstantDataTyped<ggl::Tile::Transform>>>(a2);
  gdc::ComponentStorageWrapper<arComponents::PipelineInstanceToUse>::emplace(v39, v38, v46);
  v40 = *a3;
  *v46 = **(v8 + 13);
  v41 = gdc::Registry::storage<arComponents::CompWrap<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>>(a2);
  gdc::ComponentStorageWrapper<arComponents::PipelineInstanceToUse>::emplace(v41, v40, v46);
  v42 = *a3;
  *v46 = v5;
  HasTransformConstant = gdc::Registry::storage<md::pipelineECS::HasTransformConstantData>(a2);
  gdc::ComponentStorageWrapper<arComponents::PipelineInstanceToUse>::emplace(HasTransformConstant, v42, v46);
  v44 = *a3;
  *v46 = v5 + 8;
  HasTransformInstanceDeviceData = gdc::Registry::storage<md::pipelineECS::HasTransformInstanceDeviceDataFeature>(a2);
  gdc::ComponentStorageWrapper<arComponents::PipelineInstanceToUse>::emplace(HasTransformInstanceDeviceData, v44, v46);
}

void sub_1B302E3AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void ggl::Line::BasePipelineSetup::~BasePipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::RasterRenderLayer::reserveStencilRange(uint64_t a1, uint64_t a2)
{
  result = ggl::StencilManager::reserveStencilValues(*(a2 + 24), 1, (a1 + 392), 0);
  *(a1 + 400) = result;
  return result;
}

void md::RasterRenderLayer::layout(md::RasterRenderLayer *this, const md::LayoutContext *a2)
{
  v112 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 1);
  v101 = gdc::Context::get<md::GeometryContext>(v4);
  v5 = gdc::Context::get<md::StyleLogicContext>(v4);
  v106[0] = &unk_1F2A26F30;
  v106[1] = this;
  v106[2] = v5;
  v106[3] = v106;
  md::StyleLogicContext::parseEvents(v5, v106);
  std::__function::__value_func<void ()(md::StyleManagerEvent)>::~__value_func[abi:nn200100](v106);
  (*(*this + 32))(&v108, this, a2);
  v6 = LOWORD(v108->__vftable);
  v109 = v108;
  operator delete(v108);
  v7 = md::FrameGraph::renderQueueForPass(*(*(*(this + 5) + 24) + 8), v6);
  if (v7)
  {
    v8 = *(*(v7 + 16) + 8 * (v6 >> 8));
  }

  else
  {
    v8 = 0;
  }

  ggl::CommandBuffer::clearRenderItems(v8);
  *(v8 + 32) = 0;
  v9 = *(this + 47);
  ggl::FragmentedPool<ggl::RenderItem>::pushAll(*(v9 + 24));
  v10 = *v9;
  v11 = *(*v9 + 32);
  v12 = *(*v9 + 40);
  if (v11 != v12)
  {
    do
    {
      v108 = *v11;
      std::vector<ggl::Textured::Pos2DUVPipelineSetup *,geo::allocator_adapter<ggl::Textured::Pos2DUVPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](v10, &v108);
      ++v11;
    }

    while (v11 != v12);
    v11 = *(v10 + 4);
    v12 = *(v10 + 5);
  }

  if (v11 != v12)
  {
    *(v10 + 5) = v11;
  }

  v13 = *(v9 + 8);
  v14 = *(v13 + 4);
  v15 = *(v13 + 5);
  if (v14 != v15)
  {
    do
    {
      v108 = *v14;
      std::vector<ggl::Clut::Pos2DUVPipelineSetup *,geo::allocator_adapter<ggl::Clut::Pos2DUVPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](v13, &v108);
      ++v14;
    }

    while (v14 != v15);
    v14 = *(v13 + 4);
    v15 = *(v13 + 5);
  }

  if (v14 != v15)
  {
    *(v13 + 5) = v14;
  }

  v16 = *(v9 + 16);
  v17 = *(v16 + 4);
  v18 = *(v16 + 5);
  if (v17 != v18)
  {
    do
    {
      v108 = *v17;
      std::vector<ggl::TextureWithReverseAlpha::Pos2DUVPipelineSetup *,geo::allocator_adapter<ggl::TextureWithReverseAlpha::Pos2DUVPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](v16, &v108);
      ++v17;
    }

    while (v17 != v18);
    v17 = *(v16 + 4);
    v18 = *(v16 + 5);
  }

  if (v17 != v18)
  {
    *(v16 + 5) = v17;
  }

  if (*(this + 34) == *(this + 35))
  {
    return;
  }

  if (!*(*(this + 46) + 8) && *v5)
  {
    v32 = *(*v5 + 16);
    v33 = atomic_load((v32 + 2784));
    if ((v33 & 1) == 0)
    {
      std::__assoc_sub_state::wait(*(v32 + 2808));
    }

    if (*(v32 + 136) == 1 && md::RasterRenderLayer::shouldEnableCLUT(v5))
    {
      v34 = *a2;
      [v34 contentScale];
      md::LayoutContext::get<md::SharedResourcesContext>(*(a2 + 1));
      v35 = *(this + 46);
      v36 = *(v35 + 96);
      if (!v36)
      {
        LODWORD(v107.__r_.__value_.__l.__data_) = 5;
        WORD2(v107.__r_.__value_.__r.__words[0]) = 9;
        std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::vector[abi:nn200100](&__p, &v107, 1uLL);
        std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::vector[abi:nn200100](&v108, &__p);
        gss::FeatureAttributeSet::sort(v108, v109);
        std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&__p);
        if (*v5)
        {
          gss::StylesheetManager<gss::PropertyID>::styleQueryForFeatureAttributes(&__p, *v5, &v108);
          v37 = *&__p.__r_.__value_.__l.__data_;
        }

        else
        {
          v37 = 0uLL;
        }

        *&__p.__r_.__value_.__l.__data_ = 0uLL;
        v94 = *(v35 + 104);
        *(v35 + 96) = v37;
        if (v94)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v94);
          if (__p.__r_.__value_.__l.__size_)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](__p.__r_.__value_.__l.__size_);
          }
        }

        std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v108);
        v36 = *(v35 + 96);
      }

      v95 = *(v35 + 104);
      if (v95)
      {
        atomic_fetch_add_explicit(&v95->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v108, v36, v95);
      if (v95)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v95);
      }

      if (v111 == 1)
      {
        *(&__p.__r_.__value_.__s + 23) = 0;
        __p.__r_.__value_.__s.__data_[0] = 0;
        if (!md::RasterRenderLayer::shouldEnableCLUT(v5))
        {
          goto LABEL_122;
        }

        gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<std::string>(&v107, v108[1].__vftable, 0x88u, 1u, 1);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        __p = v107;
        size = HIBYTE(v107.__r_.__value_.__r.__words[2]);
        if ((v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v107.__r_.__value_.__l.__size_;
        }

        if (!size)
        {
LABEL_122:
          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<std::string>(&v107, v108[1].__vftable, 0x88u, 1u, 2);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          __p = v107;
        }

        v97 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v97 = __p.__r_.__value_.__l.__size_;
        }

        if (v97)
        {
          LODWORD(v103) = 0;
          LODWORD(v102) = 0;
          std::allocate_shared[abi:nn200100]<ggl::SamplerState,std::allocator<ggl::SamplerState>,ggl::Wrap,ggl::Wrap,0>(&v107, &v103, &v102);
        }

        if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v111)
        {
          (v108->__vftable[1].__on_zero_shared)(v108);
        }
      }

      if (v110)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v110);
      }

      if (v109)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v109);
      }
    }
  }

  v19 = *(this + 46);
  v100 = *(v19 + 8);
  v20 = 40;
  if (!v100)
  {
    v20 = 32;
  }

  v21 = *(v19 + v20);
  *(v8 + 32) = *(this + 49);
  v99 = v21;
  *(v21 + 55) = *(this + 400);
  v22 = *v5;
  v23 = 0.0;
  if (*v5)
  {
    v24 = *(v22 + 520);
    v25 = *(v22 + 528);
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v98 = v25;
    if (v24)
    {
      v26 = pthread_rwlock_rdlock((v24 + 16));
      if (v26)
      {
        geo::read_write_lock::logFailure(v26, "read lock", v27);
      }

      v28 = geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v24 + 216, 0x10001u);
      v29 = v28;
      v30 = *(v24 + 228);
      v31 = v28 != v30 && *(*(v24 + 216) + *(v24 + 224) + 2 * v28) == 1;
      v39 = pthread_rwlock_unlock((v24 + 16));
      if (v39)
      {
        geo::read_write_lock::logFailure(v39, "unlock", v40);
      }

      if (v29 != v30 && v31)
      {
        v38 = 1.0 - *(v24 + 272);
      }

      else
      {
        v38 = *(v24 + 272);
      }

      goto LABEL_46;
    }
  }

  else
  {
    v98 = 0;
  }

  v38 = 0.0;
LABEL_46:
  if (*(this + 48) == 3)
  {
    v41 = md::LayoutContext::get<md::CameraContext>(*(a2 + 1));
    v42 = fmaxf(*(v41 + 3080) + *(v41 + 3072), 1.0);
    v43 = 0.8;
    if (v42 > 9.0)
    {
      v43 = 0.5;
    }

    if (v42 <= 8.0)
    {
      v23 = 1.0;
    }

    else
    {
      v23 = v43;
    }
  }

  v45 = *(this + 34);
  for (i = *(this + 35); v45 != i; v45 += 8)
  {
    v46 = *v45;
    v47 = *(*(*v45 + 392) + 728);
    if (v47)
    {
      v48 = ggl::FragmentedPool<ggl::RenderItem>::pop(*(*(this + 47) + 24));
      *(v48 + 3) = v99;
      v49 = gdc::ToCoordinateSystem(*(v101 + 320));
      v50 = 2;
      if (v49)
      {
        v50 = 4;
      }

      *(v48 + 8) = v101[v50];
      v51 = *(this + 47);
      if (v100)
      {
        v52 = v51[1];
        v53 = v52[1];
        if (v53 == *v52)
        {
          v57 = v52[11];
          if (!v57)
          {
            goto LABEL_139;
          }

          v54 = (*(*v57 + 48))(v57);
          __p.__r_.__value_.__r.__words[0] = v54;
        }

        else
        {
          v54 = *(v53 - 8);
          __p.__r_.__value_.__r.__words[0] = v54;
          v52[1] = v53 - 8;
        }

        std::vector<ggl::Clut::Pos2DUVPipelineSetup *,geo::allocator_adapter<ggl::Clut::Pos2DUVPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v52 + 4), &__p);
        v108 = v54;
        v58 = v52[15];
        if (!v58)
        {
          goto LABEL_139;
        }

        (*(*v58 + 48))(v58, &v108);
        v59 = *(this + 46);
        v60 = *(v59 + 72);
        v108 = *(v59 + 64);
        v109 = v60;
        if (v60)
        {
          atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
          ggl::PipelineSetup::setState(v54, &v108);
          std::__shared_weak_count::__release_shared[abi:nn200100](v60);
        }

        else
        {
          ggl::PipelineSetup::setState(v54, &v108);
        }

        *(v54[21] + 8) = *(*(this + 46) + 8);
        *v54[21] = v47;
        v61 = v54[17];
        v61[1] = 0;
        v62 = v46[28];
        *v61 = v62;
        v63 = v54[29];
        v64 = v46[29];
        if (v64)
        {
          atomic_fetch_add_explicit((v64 + 8), 1uLL, memory_order_relaxed);
        }

        v65 = v63[1];
        *v63 = v62;
        v63[1] = v64;
        if (v65)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v65);
        }

        v66 = v54[17];
        *(v66 + 24) = 0;
        v67 = v46[30];
        *(v66 + 16) = v67;
        v68 = v54[29];
        v69 = v46[31];
        if (v69)
        {
          atomic_fetch_add_explicit((v69 + 8), 1uLL, memory_order_relaxed);
        }

        v70 = *(v68 + 24);
        *(v68 + 16) = v67;
        *(v68 + 24) = v69;
        if (v70)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v70);
        }

        v71 = *(v54[17] + 32);
        ggl::BufferMemory::BufferMemory(&__p);
        ggl::ResourceAccessor::accessConstantData(&v108, 0, v71, 1);
        ggl::BufferMemory::operator=(&__p, &v108);
        ggl::BufferMemory::~BufferMemory(&v108);
        *v105 = v38;
        ggl::BufferMemory::~BufferMemory(&__p);
      }

      else
      {
        if (v23 <= 0.0)
        {
          v72 = *v51;
          v74 = **v51;
          v73 = (*v51)[1];
          if (v73 == v74)
          {
            v79 = v72[11];
            if (!v79)
            {
              goto LABEL_139;
            }

            v54 = (*(*v79 + 48))(v79);
            __p.__r_.__value_.__r.__words[0] = v54;
          }

          else
          {
            v54 = *(v73 - 8);
            __p.__r_.__value_.__r.__words[0] = v54;
            v72[1] = v73 - 8;
          }

          std::vector<ggl::Textured::Pos2DUVPipelineSetup *,geo::allocator_adapter<ggl::Textured::Pos2DUVPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v72 + 4), &__p);
          v108 = v54;
          v80 = v72[15];
          if (!v80)
          {
LABEL_139:
            std::__throw_bad_function_call[abi:nn200100]();
          }

          (*(*v80 + 48))(v80, &v108);
          v81 = *(this + 46);
          v82 = *(v81 + 56);
          v108 = *(v81 + 48);
          v109 = v82;
          if (v82)
          {
            atomic_fetch_add_explicit(&v82->__shared_owners_, 1uLL, memory_order_relaxed);
            ggl::PipelineSetup::setState(v54, &v108);
            std::__shared_weak_count::__release_shared[abi:nn200100](v82);
          }

          else
          {
            ggl::PipelineSetup::setState(v54, &v108);
          }

          *v54[21] = v47;
        }

        else
        {
          v55 = v51[2];
          v56 = v55[1];
          if (v56 == *v55)
          {
            v75 = v55[11];
            if (!v75)
            {
              goto LABEL_139;
            }

            v54 = (*(*v75 + 48))(v75);
            __p.__r_.__value_.__r.__words[0] = v54;
          }

          else
          {
            v54 = *(v56 - 8);
            __p.__r_.__value_.__r.__words[0] = v54;
            v55[1] = v56 - 8;
          }

          std::vector<ggl::TextureWithReverseAlpha::Pos2DUVPipelineSetup *,geo::allocator_adapter<ggl::TextureWithReverseAlpha::Pos2DUVPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v55 + 4), &__p);
          v108 = v54;
          v76 = v55[15];
          if (!v76)
          {
            goto LABEL_139;
          }

          (*(*v76 + 48))(v76, &v108);
          v77 = *(this + 46);
          v78 = *(v77 + 88);
          v108 = *(v77 + 80);
          v109 = v78;
          if (v78)
          {
            atomic_fetch_add_explicit(&v78->__shared_owners_, 1uLL, memory_order_relaxed);
            ggl::PipelineSetup::setState(v54, &v108);
            std::__shared_weak_count::__release_shared[abi:nn200100](v78);
          }

          else
          {
            ggl::PipelineSetup::setState(v54, &v108);
          }

          *v54[21] = v47;
          v83 = *(v54[17] + 32);
          ggl::BufferMemory::BufferMemory(&__p);
          ggl::ResourceAccessor::accessConstantData(&v108, 0, v83, 1);
          ggl::BufferMemory::operator=(&__p, &v108);
          ggl::BufferMemory::~BufferMemory(&v108);
          *v105 = v23;
          ggl::BufferMemory::~BufferMemory(&__p);
        }

        v84 = v54[17];
        v84[1] = 0;
        v85 = v46[28];
        *v84 = v85;
        v86 = v54[29];
        v87 = v46[29];
        if (v87)
        {
          atomic_fetch_add_explicit((v87 + 8), 1uLL, memory_order_relaxed);
        }

        v88 = v86[1];
        *v86 = v85;
        v86[1] = v87;
        if (v88)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v88);
        }

        v89 = v54[17];
        *(v89 + 24) = 0;
        v90 = v46[30];
        *(v89 + 16) = v90;
        v91 = v54[29];
        v92 = v46[31];
        if (v92)
        {
          atomic_fetch_add_explicit((v92 + 8), 1uLL, memory_order_relaxed);
        }

        v93 = *(v91 + 24);
        *(v91 + 16) = v90;
        *(v91 + 24) = v92;
        if (v93)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v93);
        }
      }

      *(v48 + 4) = v54;
      ggl::RenderItem::assertValid(v48);
      v108 = v48;
      std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v8 + 72), &v108);
    }
  }

  if (v98)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v98);
  }
}

void sub_1B302F050(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, std::__shared_weak_count *a34)
{
  if (a34)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a34);
  }

  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (*(v36 - 128) == 1)
  {
    (*(**(v36 - 160) + 56))(*(v36 - 160));
  }

  v38 = *(v36 - 136);
  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v38);
  }

  if (*(v36 - 152))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(v36 - 152));
  }

  _Unwind_Resume(a1);
}

uint64_t md::RasterRenderLayer::shouldEnableCLUT(uint64_t *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v2 = *(v1 + 520);
  v3 = *(v1 + 528);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v2)
  {
    v4 = *(*a1 + 520);
    v5 = *(*a1 + 528);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      v6 = *(v4 + 272);
      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }

    else
    {
      v6 = *(v4 + 272);
    }

    v7 = pthread_rwlock_rdlock((v2 + 16));
    if (v7)
    {
      geo::read_write_lock::logFailure(v7, "read lock", v8);
    }

    v9 = geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v2 + 216, 0x10001u);
    v10 = v9 != *(v2 + 228) && *(*(v2 + 216) + *(v2 + 224) + 2 * v9) == 1;
    v11 = pthread_rwlock_unlock((v2 + 16));
    if (v11)
    {
      geo::read_write_lock::logFailure(v11, "unlock", v12);
    }

    v13 = pthread_rwlock_rdlock((v2 + 16));
    if (v13)
    {
      geo::read_write_lock::logFailure(v13, "read lock", v14);
    }

    v15 = v6;
    v16 = geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v2 + 240, 0x10001u);
    if (v16 == *(v2 + 252))
    {
      geo::read_write_lock::unlock((v2 + 16));
    }

    else
    {
      v17 = *(*(v2 + 240) + *(v2 + 248) + 2 * v16);
      geo::read_write_lock::unlock((v2 + 16));
      if (v15 > 0.0 && v17 == 1)
      {
        v2 = 1;
        if (!v3)
        {
          return v2;
        }

        goto LABEL_26;
      }
    }

    v2 = (v15 < 1.0) & v10;
  }

  if (v3)
  {
LABEL_26:
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  return v2;
}

void sub_1B302F314(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

ggl::zone_mallocator *std::vector<ggl::Textured::Pos2DUVPipelineSetup *,geo::allocator_adapter<ggl::Textured::Pos2DUVPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
{
  v3 = result;
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v4 - *result;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v19[4] = result + 24;
    if (v10)
    {
      v11 = ggl::zone_mallocator::instance(result);
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Textured::Pos2DUVPipelineSetup *>(v11, v10);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[8 * v7];
    v14 = &v12[8 * v10];
    *v13 = *a2;
    v6 = v13 + 8;
    v15 = *(v3 + 1) - *v3;
    v16 = &v13[-v15];
    memcpy(&v13[-v15], *v3, v15);
    v17 = *v3;
    *v3 = v16;
    *(v3 + 1) = v6;
    v18 = *(v3 + 2);
    *(v3 + 2) = v14;
    v19[2] = v17;
    v19[3] = v18;
    v19[0] = v17;
    v19[1] = v17;
    result = std::__split_buffer<ggl::Textured::Pos2DUVPipelineSetup *,geo::allocator_adapter<ggl::Textured::Pos2DUVPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Textured::Pos2DUVPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Textured::Pos2DUVPipelineSetup *>(uint64_t a1, void *a2)
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

ggl::zone_mallocator *std::vector<ggl::TextureWithReverseAlpha::Pos2DUVPipelineSetup *,geo::allocator_adapter<ggl::TextureWithReverseAlpha::Pos2DUVPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
{
  v3 = result;
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v4 - *result;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v19[4] = result + 24;
    if (v10)
    {
      v11 = ggl::zone_mallocator::instance(result);
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::TextureWithReverseAlpha::Pos2DUVPipelineSetup *>(v11, v10);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[8 * v7];
    v14 = &v12[8 * v10];
    *v13 = *a2;
    v6 = v13 + 8;
    v15 = *(v3 + 1) - *v3;
    v16 = &v13[-v15];
    memcpy(&v13[-v15], *v3, v15);
    v17 = *v3;
    *v3 = v16;
    *(v3 + 1) = v6;
    v18 = *(v3 + 2);
    *(v3 + 2) = v14;
    v19[2] = v17;
    v19[3] = v18;
    v19[0] = v17;
    v19[1] = v17;
    result = std::__split_buffer<ggl::TextureWithReverseAlpha::Pos2DUVPipelineSetup *,geo::allocator_adapter<ggl::TextureWithReverseAlpha::Pos2DUVPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::TextureWithReverseAlpha::Pos2DUVPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::TextureWithReverseAlpha::Pos2DUVPipelineSetup *>(uint64_t a1, void *a2)
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

ggl::zone_mallocator *std::vector<ggl::Clut::Pos2DUVPipelineSetup *,geo::allocator_adapter<ggl::Clut::Pos2DUVPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
{
  v3 = result;
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v4 - *result;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v19[4] = result + 24;
    if (v10)
    {
      v11 = ggl::zone_mallocator::instance(result);
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Clut::Pos2DUVPipelineSetup *>(v11, v10);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[8 * v7];
    v14 = &v12[8 * v10];
    *v13 = *a2;
    v6 = v13 + 8;
    v15 = *(v3 + 1) - *v3;
    v16 = &v13[-v15];
    memcpy(&v13[-v15], *v3, v15);
    v17 = *v3;
    *v3 = v16;
    *(v3 + 1) = v6;
    v18 = *(v3 + 2);
    *(v3 + 2) = v14;
    v19[2] = v17;
    v19[3] = v18;
    v19[0] = v17;
    v19[1] = v17;
    result = std::__split_buffer<ggl::Clut::Pos2DUVPipelineSetup *,geo::allocator_adapter<ggl::Clut::Pos2DUVPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Clut::Pos2DUVPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Clut::Pos2DUVPipelineSetup *>(uint64_t a1, void *a2)
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

void std::__function::__func<md::RasterRenderLayer::layout(md::LayoutContext const&)::$_0,std::allocator<md::RasterRenderLayer::layout(md::LayoutContext const&)::$_0>,void ()(md::StyleManagerEvent)>::operator()(uint64_t a1, unsigned __int8 *a2)
{
  if ((*a2 | 4) == 4)
  {
    v2 = *(a1 + 8);
    if ((md::RasterRenderLayer::shouldEnableCLUT(*(a1 + 16)) & 1) == 0)
    {
      v3 = *(v2 + 368);
      v4 = *(v3 + 16);
      *(v3 + 8) = 0;
      *(v3 + 16) = 0;
      if (v4)
      {

        std::__shared_weak_count::__release_shared[abi:nn200100](v4);
      }
    }
  }
}

__n128 std::__function::__func<md::RasterRenderLayer::layout(md::LayoutContext const&)::$_0,std::allocator<md::RasterRenderLayer::layout(md::LayoutContext const&)::$_0>,void ()(md::StyleManagerEvent)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A26F30;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void ggl::ConstantDataTyped<ggl::TextureWithReverseAlpha::ReverseAlpha>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::TextureWithReverseAlpha::ReverseAlpha>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A26DA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::Clut::Variation>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::Clut::Variation>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A26CB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::TextureWithReverseAlpha::Pos2DUVPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A26EB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::Clut::Pos2DUVPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A26E78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::Textured::Pos2DUVPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A26E40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::SceneQueryLogic::debugConsoleString@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v118 = *MEMORY[0x1E69E9840];
  std::ostringstream::basic_ostringstream[abi:nn200100](&v80);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "\n===== SceneQueryLogic =====\n", 29);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "HasBaseQuery:", 13);
  v5 = *(a1 + 320);
  if (v5)
  {
    v6 = "YES";
  }

  else
  {
    v6 = "NO";
  }

  if (v5)
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, v6, v7);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "\n", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "== RouteLineMasking ==\n", 23);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "Allowed:", 8);
  if (*(a1 + 121))
  {
    v8 = "YES";
  }

  else
  {
    v8 = "NO";
  }

  if (*(a1 + 121))
  {
    v9 = 3;
  }

  else
  {
    v9 = 2;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, v8, v9);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, " ", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "Active:", 7);
  if (*(a2 + 64))
  {
    v10 = "YES";
  }

  else
  {
    v10 = "NO";
  }

  if (*(a2 + 64))
  {
    v11 = 3;
  }

  else
  {
    v11 = 2;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, v10, v11);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, " ", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "HasQuery:", 9);
  v12 = *(a1 + 352);
  if (v12)
  {
    v13 = "YES";
  }

  else
  {
    v13 = "NO";
  }

  if (v12)
  {
    v14 = 3;
  }

  else
  {
    v14 = 2;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, v13, v14);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "\n", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "== SpatialFlexing ==\n", 21);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "Allowed:", 8);
  if (*(a1 + 120))
  {
    v15 = "YES";
  }

  else
  {
    v15 = "NO";
  }

  if (*(a1 + 120))
  {
    v16 = 3;
  }

  else
  {
    v16 = 2;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, v15, v16);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, " ", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "Active:", 7);
  if (*(a2 + 65))
  {
    v17 = "YES";
  }

  else
  {
    v17 = "NO";
  }

  if (*(a2 + 65))
  {
    v18 = 3;
  }

  else
  {
    v18 = 2;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, v17, v18);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, " ", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "HasQuery:", 9);
  v19 = *(a1 + 336);
  if (v19)
  {
    v20 = "YES";
  }

  else
  {
    v20 = "NO";
  }

  if (v19)
  {
    v21 = 3;
  }

  else
  {
    v21 = 2;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, v20, v21);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "\n", 1);
  if (*(a1 + 248) != *(a1 + 256))
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "FlexBuckets:\n", 13);
    v22 = *(a1 + 248);
    for (i = *(a1 + 256); v22 != i; v22 += 12)
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "  ", 2);
      v24 = gss::to_string(*v22);
      v25 = strlen(v24);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, v24, v25);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, ":", 1);
      LODWORD(v26) = *(v22 + 1);
      v27 = MEMORY[0x1B8C61C60](&v80, sqrt(v26));
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v27, " - ", 3);
      v28 = *(v22 + 2);
      if (v28 == -1)
      {
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "MAX", 3);
      }

      else
      {
        MEMORY[0x1B8C61C60](&v80, sqrt(v28));
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "\n", 1);
    }
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "Registries Processed:", 21);
  v29 = MEMORY[0x1B8C61C90](&v80, *(a1 + 544));
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v29, "\n", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "Entities Processed:", 19);
  v30 = MEMORY[0x1B8C61C90](&v80, *(a1 + 548));
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v30, "\n", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "Pending:", 8);
  v31 = MEMORY[0x1B8C61CB0](&v80, *(a1 + 472));
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v31, "\n", 1);
  if (*(a1 + 472))
  {
    v32 = *(a1 + 456);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "[", 1);
    v33 = &v80 + *(v80 - 24);
    if ((v33[32] & 5) != 0)
    {
      v115 = 0u;
      v116 = 0u;
      v113 = 0u;
      v114 = 0u;
      v111 = 0u;
      v112 = 0u;
      v109 = 0u;
      v110 = 0u;
      v117 = -1;
    }

    else
    {
      (*(**(v33 + 5) + 32))(&v109);
    }

    if (v32 != (a1 + 464))
    {
      while (1)
      {
        v34 = &v80 + *(v80 - 24);
        if ((v34[32] & 5) != 0)
        {
          v106 = 0u;
          v107 = 0u;
          v104 = 0u;
          v105 = 0u;
          v102 = 0u;
          v103 = 0u;
          v100 = 0u;
          v101 = 0u;
          v108 = -1;
        }

        else
        {
          (*(**(v34 + 5) + 32))(&v100);
        }

        MEMORY[0x1B8C61CD0](&v80, *(v32[4] + 40));
        v35 = &v80 + *(v80 - 24);
        if ((v35[32] & 5) != 0)
        {
          v97 = 0u;
          v98 = 0u;
          v95 = 0u;
          v96 = 0u;
          v93 = 0u;
          v94 = 0u;
          v91 = 0u;
          v92 = 0u;
          v99 = -1;
        }

        else
        {
          (*(**(v35 + 5) + 32))(&v91);
        }

        v36 = v32[1];
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
            v37 = v32[2];
            v38 = *v37 == v32;
            v32 = v37;
          }

          while (!v38);
        }

        if (v37 == (a1 + 464))
        {
          break;
        }

        if (v99 > v108)
        {
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, ",", 1);
          if (v99 - v117 >= 41)
          {
            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "\n", 1);
            BYTE7(v78) = 2;
            strcpy(__p, "  ");
            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, __p, 2);
            if (SBYTE7(v78) < 0)
            {
              operator delete(__p[0]);
            }

            v115 = v97;
            v116 = v98;
            v117 = v99;
            v111 = v93;
            v112 = v94;
            v113 = v95;
            v114 = v96;
            v109 = v91;
            v110 = v92;
          }
        }

        v32 = v37;
      }
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "]", 1);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "\n", 1);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "Modified:", 9);
  v39 = MEMORY[0x1B8C61CB0](&v80, *(a1 + 496));
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v39, "\n", 1);
  v40 = *(a1 + 152);
  if (v40[48] != v40[49])
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "Modified(Active):\n", 18);
    v41 = *(a1 + 480);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "[", 1);
    v42 = &v80 + *(v80 - 24);
    if ((v42[32] & 5) != 0)
    {
      v115 = 0u;
      v116 = 0u;
      v113 = 0u;
      v114 = 0u;
      v111 = 0u;
      v112 = 0u;
      v109 = 0u;
      v110 = 0u;
      v117 = -1;
    }

    else
    {
      (*(**(v42 + 5) + 32))(&v109);
    }

    if (v41 != (a1 + 488))
    {
      while (1)
      {
        v43 = &v80 + *(v80 - 24);
        if ((v43[32] & 5) != 0)
        {
          v106 = 0u;
          v107 = 0u;
          v104 = 0u;
          v105 = 0u;
          v102 = 0u;
          v103 = 0u;
          v100 = 0u;
          v101 = 0u;
          v108 = -1;
        }

        else
        {
          (*(**(v43 + 5) + 32))(&v100);
        }

        v44 = v41[5];
        v45 = v40[48];
        v46 = v40[49];
        if (v45 != v46)
        {
          while (*v45 != v44)
          {
            if (++v45 == v46)
            {
              goto LABEL_87;
            }
          }
        }

        if (v45 != v46)
        {
          MEMORY[0x1B8C61CD0](&v80, *(v44 + 40));
        }

LABEL_87:
        v47 = &v80 + *(v80 - 24);
        if ((v47[32] & 5) != 0)
        {
          v97 = 0u;
          v98 = 0u;
          v95 = 0u;
          v96 = 0u;
          v93 = 0u;
          v94 = 0u;
          v91 = 0u;
          v92 = 0u;
          v99 = -1;
        }

        else
        {
          (*(**(v47 + 5) + 32))(&v91);
        }

        v48 = v41[1];
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
            v49 = v41[2];
            v38 = *v49 == v41;
            v41 = v49;
          }

          while (!v38);
        }

        if (v49 == (a1 + 488))
        {
          break;
        }

        if (v99 > v108)
        {
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, ",", 1);
          if (v99 - v117 >= 41)
          {
            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "\n", 1);
            BYTE7(v78) = 2;
            strcpy(__p, "  ");
            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, __p, 2);
            if (SBYTE7(v78) < 0)
            {
              operator delete(__p[0]);
            }

            v115 = v97;
            v116 = v98;
            v117 = v99;
            v111 = v93;
            v112 = v94;
            v113 = v95;
            v114 = v96;
            v109 = v91;
            v110 = v92;
          }
        }

        v41 = v49;
      }
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "]", 1);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "\n", 1);
    v40 = *(a1 + 152);
  }

  if (v40[60] != v40[61])
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "Modified(Cached):\n", 18);
    v50 = *(a1 + 480);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "[", 1);
    v51 = &v80 + *(v80 - 24);
    if ((v51[32] & 5) != 0)
    {
      v115 = 0u;
      v116 = 0u;
      v113 = 0u;
      v114 = 0u;
      v111 = 0u;
      v112 = 0u;
      v109 = 0u;
      v110 = 0u;
      v117 = -1;
    }

    else
    {
      (*(**(v51 + 5) + 32))(&v109);
    }

    if (v50 != (a1 + 488))
    {
      while (1)
      {
        v52 = &v80 + *(v80 - 24);
        if ((v52[32] & 5) != 0)
        {
          v106 = 0u;
          v107 = 0u;
          v104 = 0u;
          v105 = 0u;
          v102 = 0u;
          v103 = 0u;
          v100 = 0u;
          v101 = 0u;
          v108 = -1;
        }

        else
        {
          (*(**(v52 + 5) + 32))(&v100);
        }

        v53 = v50[5];
        v54 = v40[60];
        v55 = v40[61];
        if (v54 != v55)
        {
          while (*v54 != v53)
          {
            if (++v54 == v55)
            {
              goto LABEL_117;
            }
          }
        }

        if (v54 != v55)
        {
          MEMORY[0x1B8C61CD0](&v80, *(v53 + 40));
        }

LABEL_117:
        v56 = &v80 + *(v80 - 24);
        if ((v56[32] & 5) != 0)
        {
          v97 = 0u;
          v98 = 0u;
          v95 = 0u;
          v96 = 0u;
          v93 = 0u;
          v94 = 0u;
          v91 = 0u;
          v92 = 0u;
          v99 = -1;
        }

        else
        {
          (*(**(v56 + 5) + 32))(&v91);
        }

        v57 = v50[1];
        if (v57)
        {
          do
          {
            v58 = v57;
            v57 = *v57;
          }

          while (v57);
        }

        else
        {
          do
          {
            v58 = v50[2];
            v38 = *v58 == v50;
            v50 = v58;
          }

          while (!v38);
        }

        if (v58 == (a1 + 488))
        {
          break;
        }

        if (v99 > v108)
        {
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, ",", 1);
          if (v99 - v117 >= 41)
          {
            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "\n", 1);
            BYTE7(v78) = 2;
            strcpy(__p, "  ");
            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, __p, 2);
            if (SBYTE7(v78) < 0)
            {
              operator delete(__p[0]);
            }

            v115 = v97;
            v116 = v98;
            v117 = v99;
            v111 = v93;
            v112 = v94;
            v113 = v95;
            v114 = v96;
            v109 = v91;
            v110 = v92;
          }
        }

        v50 = v58;
      }
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "]", 1);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "\n", 1);
  }

  if (*(a1 + 528))
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "CacheHits:\n", 11);
    *__p = 0u;
    v78 = 0u;
    v79 = 1065353216;
    v59 = *(a1 + 520);
    if (v59)
    {
      do
      {
        v60 = *(v59 + 5);
        *&v109 = v59 + 20;
        v61 = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(__p, v60, &v109);
        ++*(v61 + 5);
        v59 = *v59;
      }

      while (v59);
      v62 = v78;
    }

    else
    {
      v62 = 0;
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "[", 1);
    v63 = &v80 + *(v80 - 24);
    if ((v63[32] & 5) != 0)
    {
      v115 = 0u;
      v116 = 0u;
      v113 = 0u;
      v114 = 0u;
      v111 = 0u;
      v112 = 0u;
      v109 = 0u;
      v110 = 0u;
      v117 = -1;
    }

    else
    {
      (*(**(v63 + 5) + 32))(&v109);
    }

    if (v62)
    {
      while (1)
      {
        v64 = &v80 + *(v80 - 24);
        if ((v64[32] & 5) != 0)
        {
          v106 = 0u;
          v107 = 0u;
          v104 = 0u;
          v105 = 0u;
          v102 = 0u;
          v103 = 0u;
          v100 = 0u;
          v101 = 0u;
          v108 = -1;
        }

        else
        {
          (*(**(v64 + 5) + 32))(&v100);
        }

        v66 = *(v62 + 4);
        v65 = *(v62 + 5);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "(", 1);
        v67 = MEMORY[0x1B8C61C90](&v80, v66);
        v68 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v67, ",", 1);
        v69 = MEMORY[0x1B8C61C90](v68, v65);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v69, ")", 1);
        v70 = &v80 + *(v80 - 24);
        if ((v70[32] & 5) != 0)
        {
          v97 = 0u;
          v98 = 0u;
          v95 = 0u;
          v96 = 0u;
          v93 = 0u;
          v94 = 0u;
          v91 = 0u;
          v92 = 0u;
          v99 = -1;
        }

        else
        {
          (*(**(v70 + 5) + 32))(&v91);
        }

        v62 = *v62;
        if (!v62)
        {
          break;
        }

        if (v99 > v108)
        {
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, ",", 1);
          if (v99 - v117 >= 41)
          {
            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "\n", 1);
            v90 = 2;
            strcpy(v89, "  ");
            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, v89, 2);
            if (v90 < 0)
            {
              operator delete(v89[0]);
            }

            v115 = v97;
            v116 = v98;
            v117 = v99;
            v111 = v93;
            v112 = v94;
            v113 = v95;
            v114 = v96;
            v109 = v91;
            v110 = v92;
          }
        }
      }
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "]", 1);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "\n", 1);
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(__p);
  }

  if ((v87 & 0x10) != 0)
  {
    v73 = v86;
    if (v86 < v83)
    {
      v86 = v83;
      v73 = v83;
    }

    locale = v82[4].__locale_;
  }

  else
  {
    if ((v87 & 8) == 0)
    {
      v71 = 0;
      v72 = a3;
      *(a3 + 23) = 0;
      goto LABEL_168;
    }

    locale = v82[1].__locale_;
    v73 = v82[3].__locale_;
  }

  v72 = a3;
  v71 = v73 - locale;
  if ((v73 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v71 >= 0x17)
  {
    operator new();
  }

  *(a3 + 23) = v71;
  if (v71)
  {
    memmove(a3, locale, v71);
  }

LABEL_168:
  *(v72 + v71) = 0;
  v80 = *MEMORY[0x1E69E54E8];
  *(&v80 + *(v80 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v81 = MEMORY[0x1E69E5548] + 16;
  if (v85 < 0)
  {
    operator delete(v84);
  }

  v81 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v82);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v88);
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int a2, _DWORD **a3)
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

  return v7;
}

void std::__shared_ptr_emplace<md::RouteLineMaskDesc>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A27108;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__hash_table<std::__hash_value_type<unsigned short,unsigned int>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,unsigned int>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,unsigned int>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,unsigned int>>>::__erase_unique<unsigned short>(uint64_t *a1, unsigned __int16 a2)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = vcnt_s8(v2);
    v3.i16[0] = vaddlv_u8(v3);
    if (v3.u32[0] > 1uLL)
    {
      v4 = a2;
      if (v2 <= a2)
      {
        v4 = a2 % a1[1];
      }
    }

    else
    {
      v4 = (v2 - 1) & a2;
    }

    v5 = *a1;
    v6 = *(*a1 + 8 * v4);
    if (v6)
    {
      v7 = *v6;
      if (v7)
      {
        v8 = v2 - 1;
        do
        {
          v9 = *(v7 + 1);
          if (v9 == a2)
          {
            if (v7[8] == a2)
            {
              v10 = *(v7 + 1);
              if (v3.u32[0] > 1uLL)
              {
                if (v10 >= v2)
                {
                  v10 %= v2;
                }
              }

              else
              {
                v10 &= v8;
              }

              v11 = *(v5 + 8 * v10);
              do
              {
                v12 = v11;
                v11 = *v11;
              }

              while (v11 != v7);
              if (v12 == a1 + 2)
              {
                goto LABEL_36;
              }

              v13 = v12[1];
              if (v3.u32[0] > 1uLL)
              {
                if (v13 >= v2)
                {
                  v13 %= v2;
                }
              }

              else
              {
                v13 &= v8;
              }

              if (v13 != v10)
              {
LABEL_36:
                if (!*v7)
                {
                  goto LABEL_37;
                }

                v14 = *(*v7 + 8);
                if (v3.u32[0] > 1uLL)
                {
                  if (v14 >= v2)
                  {
                    v14 %= v2;
                  }
                }

                else
                {
                  v14 &= v8;
                }

                if (v14 != v10)
                {
LABEL_37:
                  *(v5 + 8 * v10) = 0;
                }
              }

              v15 = *v7;
              if (*v7)
              {
                v16 = *(v15 + 8);
                if (v3.u32[0] > 1uLL)
                {
                  if (v16 >= v2)
                  {
                    v16 %= v2;
                  }
                }

                else
                {
                  v16 &= v8;
                }

                if (v16 != v10)
                {
                  *(*a1 + 8 * v16) = v12;
                  v15 = *v7;
                }
              }

              *v12 = v15;
              *v7 = 0;
              --a1[3];
              operator delete(v7);
              return;
            }
          }

          else
          {
            if (v3.u32[0] > 1uLL)
            {
              if (v9 >= v2)
              {
                v9 %= v2;
              }
            }

            else
            {
              v9 &= v8;
            }

            if (v9 != v4)
            {
              return;
            }
          }

          v7 = *v7;
        }

        while (v7);
      }
    }
  }
}

void std::__hash_table<md::SceneQueryEvent,std::hash<md::SceneQueryEvent>,std::equal_to<md::SceneQueryEvent>,std::allocator<md::SceneQueryEvent>>::__emplace_unique_key_args<md::SceneQueryEvent,md::SceneQueryEvent&>(float *a1, unsigned __int8 a2, _BYTE *a3)
{
  v3 = *(a1 + 1);
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
      v5 = a2 % *(a1 + 1);
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

  if (*(v7 + 16) != a2)
  {
    goto LABEL_17;
  }
}

void md::SceneQueryLogic::clearNavigationFlexState(md::SceneQueryLogic *this)
{
  v1 = *(this + 60);
  v35 = this + 488;
  if (v1 != this + 488)
  {
    do
    {
      v2 = *(v1 + 5);
      v3 = gdc::Registry::storage<md::components::FlexSelectionInfo>(v2);
      v4 = v3;
      if (v3[29])
      {
        v5 = v3[28];
        if (v5)
        {
          v6 = v3[31];
          v7 = v3[7];
          v8 = (v3[8] - v7) >> 3;
          do
          {
            std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v5[6], v6, v7, v8);
            v5 = *v5;
          }

          while (v5);
        }
      }

      v4[8] = v4[7];
      v4[11] = v4[10];
      v9 = gdc::Registry::storage<md::components::ClientState>(v2);
      v10 = gdc::Registry::storage<md::components::SupportsFlexing>(v2);
      v11 = v10;
      v12 = (v10 + 32);
      v14 = v9[7];
      v13 = v9[8];
      if (*(v10 + 64) - *(v10 + 56) >= (v13 - v14))
      {
        v15 = v9 + 4;
      }

      else
      {
        v15 = (v10 + 32);
      }

      v36 = v15;
      if (v9 + 4 == v15 && v14 != v13)
      {
        v16 = v9[10];
        do
        {
          if (*(v11 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v12, *(v14 + 4)))
          {
            v17 = *v14;
            if (geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::erase(v16, 0x10059u))
            {
              v18 = gdc::Registry::storage<md::components::FlexClientStateChanged>(v2);
              gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v18, v17);
            }
          }

          v16 += 3;
          v14 += 8;
        }

        while (v14 != v13);
      }

      if (v12 == v36)
      {
        v22 = *(v11 + 56);
        v23 = *(v11 + 64);
        while (v22 != v23)
        {
          Index = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v9 + 4, *(v22 + 4));
          v25 = v9[8];
          if (v25 != Index)
          {
            v26 = *v22;
            v27 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v9 + 4, HIDWORD(*v22));
            v28 = (v25 == v27 ? v9[11] : v9[10] + 24 * ((v27 - v9[7]) >> 3));
            if (geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::erase(v28, 0x10059u))
            {
              v29 = gdc::Registry::storage<md::components::FlexClientStateChanged>(v2);
              gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v29, v26);
            }
          }

          v22 += 8;
        }
      }

      v19 = *(v1 + 1);
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = *(v1 + 2);
          v21 = *v20 == v1;
          v1 = v20;
        }

        while (!v21);
      }

      v1 = v20;
    }

    while (v20 != v35);
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 61));
  *(this + 61) = 0;
  *(this + 62) = 0;
  *(this + 60) = v35;
  if (*(this + 66))
  {
    v30 = *(this + 65);
    if (v30)
    {
      do
      {
        v31 = *v30;
        operator delete(v30);
        v30 = v31;
      }

      while (v31);
    }

    *(this + 65) = 0;
    v32 = *(this + 64);
    if (v32)
    {
      for (i = 0; i != v32; ++i)
      {
        *(*(this + 63) + 8 * i) = 0;
      }
    }

    *(this + 66) = 0;
  }
}

void md::SceneQueryLogic::prepareNavigationFlexSegmentsForRoute(md::SceneQueryLogic *this, GEOComposedRoute *a2)
{
  v78 = *MEMORY[0x1E69E9840];
  v60 = a2;
  if (*(this + 24))
  {
    std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::__deallocate_node(*(this + 23));
    *(this + 23) = 0;
    v3 = *(this + 22);
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*(this + 21) + 8 * i) = 0;
      }
    }

    *(this + 24) = 0;
  }

  v5 = v60;
  if (v60)
  {
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    obj = objc_msgSend_sections(v60);
    v6 = [obj countByEnumeratingWithState:&v72 objects:v77 count:16];
    if (v6)
    {
      v62 = *v73;
      v7 = MEMORY[0x1E69A1690];
      do
      {
        v8 = 0;
        v63 = v6;
        do
        {
          if (*v73 != v62)
          {
            objc_enumerationMutation(obj);
          }

          v64 = v8;
          v9 = *(*(&v72 + 1) + 8 * v8);
          v76 = v9;
          for (j = 1; j < [v9 pointCount]; ++j)
          {
            v11 = [v76 points];
            v12 = v76;
            if (v76)
            {
              objc_msgSend_bounds(v76);
              v13 = *(&v67 + 1);
              v14 = *&v67;
              v16 = *(&v68 + 1);
              v15 = *&v68;
              v17 = *(&v69 + 1);
              v18 = *&v69;
              v12 = v76;
            }

            else
            {
              v68 = 0u;
              v69 = 0u;
              v17 = 0.0;
              v18 = 0.0;
              v16 = 0.0;
              v15 = 0.0;
              v67 = 0u;
              v13 = 0.0;
              v14 = 0.0;
            }

            v19 = v11 + 12 * j;
            v20 = v13 + v18 * (1.0 - *(v19 - 8));
            v21 = v7[1];
            v22 = (v14 + v16 * *(v19 - 12)) / *v7;
            v23 = (v15 + v17 * *(v19 - 4)) * 0.0000000249532021;
            *&v70 = v22;
            *(&v70 + 1) = 1.0 - v20 / v21;
            v71 = v23;
            v24 = [v12 points];
            if (v76)
            {
              objc_msgSend_bounds(v76);
              v25 = *(&v67 + 1);
              v26 = *&v67;
              v28 = *(&v68 + 1);
              v27 = *&v68;
              v29 = *(&v69 + 1);
              v30 = *&v69;
            }

            else
            {
              v68 = 0u;
              v69 = 0u;
              v29 = 0.0;
              v30 = 0.0;
              v28 = 0.0;
              v27 = 0.0;
              v67 = 0u;
              v25 = 0.0;
              v26 = 0.0;
            }

            v31 = (v24 + 12 * j);
            v32 = v27 + v29 * v31[2];
            v33 = 1.0 - (v25 + v30 * (1.0 - v31[1])) / v7[1];
            v65 = (v26 + v28 * *v31) / *v7;
            *v66 = v33;
            *&v66[1] = v32 * 0.0000000249532021;
            if (vabdd_f64(v22, v65) >= 0.0000000249532021)
            {
LABEL_25:
              *&v67 = &v76;
              v37 = std::__hash_table<std::__hash_value_type<GEOComposedRouteSection *,std::vector<gm::LineSegment<double,3>>>,std::__unordered_map_hasher<std::vector,std::__unordered_map_hasher,md::SceneQueryLogic::pointer_hasher<GEOComposedRouteSection>,std::equal_to<std::vector>,true>,std::__unordered_map_equal<std::vector,std::__unordered_map_hasher,std::__unordered_map_hasher<std::vector,std::__unordered_map_hasher,md::SceneQueryLogic::pointer_hasher<GEOComposedRouteSection>,std::equal_to<std::vector>,true>,std::equal_to,true>,std::allocator<std::allocator><std::__unordered_map_hasher>>::__emplace_unique_key_args<std::vector,std::piecewise_construct_t const&,std::tuple<GEOComposedRouteSection * const&>,GEOComposedRouteSection * const<>>(this + 42, v76, &v67);
              v38 = v37;
              v39 = v37[4];
              v40 = v37[5];
              if (v39 >= v40)
              {
                v45 = v37[3];
                v46 = 0xAAAAAAAAAAAAAAABLL * ((v39 - v45) >> 4);
                v47 = v46 + 1;
                if (v46 + 1 > 0x555555555555555)
                {
                  std::__throw_bad_array_new_length[abi:nn200100]();
                }

                v48 = 0xAAAAAAAAAAAAAAABLL * ((v40 - v45) >> 4);
                if (2 * v48 > v47)
                {
                  v47 = 2 * v48;
                }

                if (v48 >= 0x2AAAAAAAAAAAAAALL)
                {
                  v49 = 0x555555555555555;
                }

                else
                {
                  v49 = v47;
                }

                if (v49)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<gm::Matrix<float,3,4>>>(v49);
                }

                for (k = 0; k != 3; ++k)
                {
                  *(&v67 + k * 8) = *&v66[k - 1] - *(&v70 + k * 8);
                }

                v51 = 48 * v46;
                v52 = v68;
                v53 = v67;
                *v51 = v70;
                *(v51 + 16) = v71;
                *(v51 + 24) = v53;
                *(v51 + 40) = v52;
                v54 = v38[3];
                v55 = v38[4];
                v56 = 48 * v46 + v54 - v55;
                if (v54 != v55)
                {
                  v57 = (v51 + v54 - v55);
                  do
                  {
                    v58 = *v54;
                    v59 = *(v54 + 2);
                    v57[1] = *(v54 + 1);
                    v57[2] = v59;
                    *v57 = v58;
                    v57 += 3;
                    v54 += 48;
                  }

                  while (v54 != v55);
                  v54 = v38[3];
                }

                v44 = v51 + 48;
                v38[3] = v56;
                v38[4] = v51 + 48;
                v38[5] = 0;
                if (v54)
                {
                  operator delete(v54);
                }
              }

              else
              {
                for (m = 0; m != 3; ++m)
                {
                  *(&v67 + m * 8) = *&v66[m - 1] - *(&v70 + m * 8);
                }

                v42 = v68;
                v43 = v67;
                *v39 = v70;
                *(v39 + 16) = v71;
                *(v39 + 24) = v43;
                *(v39 + 40) = v42;
                v44 = v39 + 48;
              }

              v38[4] = v44;
            }

            else
            {
              v34 = 0;
              while (v34 != 2)
              {
                v35 = v34 + 1;
                v36 = vabdd_f64(*(&v70 + v34 + 1), *&v66[v34]);
                ++v34;
                if (v36 >= 0.0000000249532021)
                {
                  if ((v35 - 1) > 1)
                  {
                    break;
                  }

                  goto LABEL_25;
                }
              }
            }

            v9 = v76;
          }

          v8 = v64 + 1;
        }

        while (v64 + 1 != v63);
        v6 = [obj countByEnumeratingWithState:&v72 objects:v77 count:16];
      }

      while (v6);
    }

    v5 = v60;
  }
}

uint64_t *std::__tree<gdc::Registry *,md::RegistryIdentifierLessThan,std::allocator<gdc::Registry *>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

uint64_t **std::__hash_table<std::__hash_value_type<unsigned short,unsigned int>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,unsigned int>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,unsigned int>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,unsigned int>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short &&>,std::tuple<>>(float *a1, unsigned __int16 a2, _WORD **a3)
{
  v3 = *(a1 + 1);
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
      v5 = a2 % *(a1 + 1);
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

  if (*(v7 + 8) != a2)
  {
    goto LABEL_17;
  }

  return v7;
}

void gdc::Registry::add<md::components::FlexClientStateChanged,std::__wrap_iter<gdc::Entity *>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v6 = *v4++;
      v7 = gdc::Registry::storage<md::components::FlexClientStateChanged>(a1);
      gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v7, v6);
    }

    while (v4 != a3);
  }
}

void md::SceneQueryLogic::categorizeEntitiesByFlexZone<>(std::vector<gdc::Registry *> const&)::{lambda(gdc::Entity,md::components::MeshInstance &,md::components::ClientState &)#1}::operator()(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = 0;
  v63[4] = *MEMORY[0x1E69E9840];
  v7 = *a1;
  ++*(*a1 + 548);
  do
  {
    *&v60[v6] = *(a3 + 36 + 4 * v6);
    ++v6;
  }

  while (v6 != 3);
  v8 = (a3 + 48);
  for (i = 3; i != 6; ++i)
  {
    v10 = *v8++;
    *&v60[i] = v10;
  }

  v11 = (*a1[1] + 312);
  v62[0] = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  v62[1] = xmmword_1B33B0520;
  v62[2] = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  v63[0] = &unk_1F2A61070;
  v63[1] = v62;
  v63[2] = v11;
  v63[3] = v63;
  gm::Box<double,3>::forEachCorner(v60, v63);
  std::__function::__value_func<void ()(gm::Matrix<double,3,1> &)>::~__value_func[abi:nn200100](v63);
  v12 = a1[2];
  v13 = *v12;
  v14 = *(v12 + 8);
  if (*v12 == v14)
  {
    v35 = 0;
    v16 = 3.4028e38;
  }

  else
  {
    v58 = a4;
    v15 = -1;
    v16 = 3.4028e38;
    do
    {
      v63[0] = *v13;
      v60[0] = v63;
      v17 = std::__hash_table<std::__hash_value_type<GEOComposedRouteSection *,std::vector<gm::LineSegment<double,3>>>,std::__unordered_map_hasher<std::vector,std::__unordered_map_hasher,md::SceneQueryLogic::pointer_hasher<GEOComposedRouteSection>,std::equal_to<std::vector>,true>,std::__unordered_map_equal<std::vector,std::__unordered_map_hasher,std::__unordered_map_hasher<std::vector,std::__unordered_map_hasher,md::SceneQueryLogic::pointer_hasher<GEOComposedRouteSection>,std::equal_to<std::vector>,true>,std::equal_to,true>,std::allocator<std::allocator><std::__unordered_map_hasher>>::__emplace_unique_key_args<std::vector,std::piecewise_construct_t const&,std::tuple<GEOComposedRouteSection * const&>,GEOComposedRouteSection * const<>>((v7 + 168), v63[0], v60);
      v19 = v17[3];
      v18 = v17[4];
      if (v19 != v18)
      {
        v20 = gm::Box<double,3>::center<double>(v62);
        v22 = v21;
        v24 = v23;
        v25 = *(v7 + 256);
        v26 = 0xAAAAAAAAAAAAAAABLL * ((v25 - *(v7 + 248)) >> 2);
        v27 = (v25 - 4);
        do
        {
          v28 = v15;
          v60[0] = *&v20;
          v60[1] = v22;
          v60[2] = v24;
          v29 = gm::LineSegment<double,3>::distanceSquaredTo(v19, v60);
          v30 = v29 * 1.60600699e15;
          v16 = fminf(v16, v30);
          v31 = v30;
          v32 = v27;
          v15 = v26;
          do
          {
            if (v15-- < 1)
            {
              v15 = v28;
              goto LABEL_19;
            }

            v34 = *(v32 - 1) <= v31 && *v32 >= v31;
            v32 -= 3;
          }

          while (!v34 || v15 >= v28);
          if (!v15)
          {

            v15 = 0;
            goto LABEL_23;
          }

LABEL_19:
          v19 += 48;
        }

        while (v19 != v18);
      }

      ++v13;
    }

    while (v13 != v14);
    if (v15 == -1)
    {
      v35 = 0;
    }

    else
    {
LABEL_23:
      v35 = *(*(v7 + 248) + 12 * v15);
    }

    a4 = v58;
  }

  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::emplace<gss::StyleAttribute,unsigned short>(v60, a4, 0x10059u, v35);
  if (v61 == 1)
  {
    v36 = a1[3];
    v38 = *(v36 + 8);
    v37 = *(v36 + 16);
    if (v38 >= v37)
    {
      v40 = (v38 - *v36) >> 3;
      if ((v40 + 1) >> 61)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v41 = v37 - *v36;
      v42 = v41 >> 2;
      if (v41 >> 2 <= (v40 + 1))
      {
        v42 = v40 + 1;
      }

      if (v41 >= 0x7FFFFFFFFFFFFFF8)
      {
        v43 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v43 = v42;
      }

      if (v43)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v43);
      }

      *(8 * v40) = a2;
      v39 = 8 * v40 + 8;
      v44 = *(v36 + 8) - *v36;
      v45 = (8 * v40 - v44);
      memcpy(v45, *v36, v44);
      v46 = *v36;
      *v36 = v45;
      *(v36 + 8) = v39;
      *(v36 + 16) = 0;
      if (v46)
      {
        operator delete(v46);
      }
    }

    else
    {
      *v38 = a2;
      v39 = (v38 + 1);
    }

    *(v36 + 8) = v39;
    v47 = a1[4];
    v49 = *(v47 + 8);
    v48 = *(v47 + 16);
    if (v49 >= v48)
    {
      v51 = *v47;
      v52 = v49 - *v47;
      v53 = v52 >> 2;
      v54 = (v52 >> 2) + 1;
      if (v54 >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v55 = v48 - v51;
      if (v55 >> 1 > v54)
      {
        v54 = v55 >> 1;
      }

      if (v55 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v56 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v56 = v54;
      }

      if (v56)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v56);
      }

      *(4 * v53) = v16;
      v50 = 4 * v53 + 4;
      memcpy(0, v51, v52);
      v57 = *v47;
      *v47 = 0;
      *(v47 + 8) = v50;
      *(v47 + 16) = 0;
      if (v57)
      {
        operator delete(v57);
      }
    }

    else
    {
      *v49 = v16;
      v50 = (v49 + 1);
    }

    *(v47 + 8) = v50;
  }
}

void *std::__hash_table<std::__hash_value_type<GEOComposedRouteSection *,std::vector<gm::LineSegment<double,3>>>,std::__unordered_map_hasher<std::vector,std::__unordered_map_hasher,md::SceneQueryLogic::pointer_hasher<GEOComposedRouteSection>,std::equal_to<std::vector>,true>,std::__unordered_map_equal<std::vector,std::__unordered_map_hasher,std::__unordered_map_hasher<std::vector,std::__unordered_map_hasher,md::SceneQueryLogic::pointer_hasher<GEOComposedRouteSection>,std::equal_to<std::vector>,true>,std::equal_to,true>,std::allocator<std::allocator><std::__unordered_map_hasher>>::__emplace_unique_key_args<std::vector,std::piecewise_construct_t const&,std::tuple<GEOComposedRouteSection * const&>,GEOComposedRouteSection * const<>>(float *a1, unint64_t a2, void **a3)
{
  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = *(a1 + 2);
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (v10[2] != a2)
  {
    goto LABEL_17;
  }

  return v10;
}

void sub_1B303348C(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    v1[4] = v4;
    operator delete(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::emplace<gss::StyleAttribute,unsigned short>(uint64_t result, uint64_t a2, unsigned int a3, __int16 a4)
{
  v5 = result;
  if (*(a2 + 16) == 1)
  {
    v6 = *(a2 + 12);
    *result = a2;
    *(result + 8) = v6;
    *(result + 16) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
  }

  else
  {
    v8 = a3;
    v9 = a4;
    result = geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(a2, a3);
    if (result == *(a2 + 12))
    {
      geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::insert<std::pair<gss::StyleAttribute const,unsigned short> *>(a2, &v8, &v10);
      result = *(a2 + 12) - 1;
      v7 = 1;
    }

    else
    {
      v7 = 0;
    }

    *v5 = a2;
    *(v5 + 8) = result;
    *(v5 + 16) = 0;
    *(v5 + 32) = 0;
    *(v5 + 40) = v7;
  }

  return result;
}

void md::SceneQueryLogic::categorizeEntitiesByFlexZone<md::components::DidResolvePendingMaterial>(std::vector<gdc::Registry *> const&)::{lambda(gdc::Entity,md::components::MeshInstance &,md::components::ClientState &)#1}::operator()(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = 0;
  v63[4] = *MEMORY[0x1E69E9840];
  v7 = *a1;
  ++*(*a1 + 548);
  do
  {
    *&v60[v6] = *(a3 + 36 + 4 * v6);
    ++v6;
  }

  while (v6 != 3);
  v8 = (a3 + 48);
  for (i = 3; i != 6; ++i)
  {
    v10 = *v8++;
    *&v60[i] = v10;
  }

  v11 = (*a1[1] + 312);
  v62[0] = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  v62[1] = xmmword_1B33B0520;
  v62[2] = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  v63[0] = &unk_1F2A61070;
  v63[1] = v62;
  v63[2] = v11;
  v63[3] = v63;
  gm::Box<double,3>::forEachCorner(v60, v63);
  std::__function::__value_func<void ()(gm::Matrix<double,3,1> &)>::~__value_func[abi:nn200100](v63);
  v12 = a1[2];
  v13 = *v12;
  v14 = *(v12 + 8);
  if (*v12 == v14)
  {
    v35 = 0;
    v16 = 3.4028e38;
  }

  else
  {
    v58 = a4;
    v15 = -1;
    v16 = 3.4028e38;
    do
    {
      v63[0] = *v13;
      v60[0] = v63;
      v17 = std::__hash_table<std::__hash_value_type<GEOComposedRouteSection *,std::vector<gm::LineSegment<double,3>>>,std::__unordered_map_hasher<std::vector,std::__unordered_map_hasher,md::SceneQueryLogic::pointer_hasher<GEOComposedRouteSection>,std::equal_to<std::vector>,true>,std::__unordered_map_equal<std::vector,std::__unordered_map_hasher,std::__unordered_map_hasher<std::vector,std::__unordered_map_hasher,md::SceneQueryLogic::pointer_hasher<GEOComposedRouteSection>,std::equal_to<std::vector>,true>,std::equal_to,true>,std::allocator<std::allocator><std::__unordered_map_hasher>>::__emplace_unique_key_args<std::vector,std::piecewise_construct_t const&,std::tuple<GEOComposedRouteSection * const&>,GEOComposedRouteSection * const<>>((v7 + 168), v63[0], v60);
      v19 = v17[3];
      v18 = v17[4];
      if (v19 != v18)
      {
        v20 = gm::Box<double,3>::center<double>(v62);
        v22 = v21;
        v24 = v23;
        v25 = *(v7 + 256);
        v26 = 0xAAAAAAAAAAAAAAABLL * ((v25 - *(v7 + 248)) >> 2);
        v27 = (v25 - 4);
        do
        {
          v28 = v15;
          v60[0] = *&v20;
          v60[1] = v22;
          v60[2] = v24;
          v29 = gm::LineSegment<double,3>::distanceSquaredTo(v19, v60);
          v30 = v29 * 1.60600699e15;
          v16 = fminf(v16, v30);
          v31 = v30;
          v32 = v27;
          v15 = v26;
          do
          {
            if (v15-- < 1)
            {
              v15 = v28;
              goto LABEL_19;
            }

            v34 = *(v32 - 1) <= v31 && *v32 >= v31;
            v32 -= 3;
          }

          while (!v34 || v15 >= v28);
          if (!v15)
          {

            v15 = 0;
            goto LABEL_23;
          }

LABEL_19:
          v19 += 48;
        }

        while (v19 != v18);
      }

      ++v13;
    }

    while (v13 != v14);
    if (v15 == -1)
    {
      v35 = 0;
    }

    else
    {
LABEL_23:
      v35 = *(*(v7 + 248) + 12 * v15);
    }

    a4 = v58;
  }

  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::emplace<gss::StyleAttribute,unsigned short>(v60, a4, 0x10059u, v35);
  if (v61 == 1)
  {
    v36 = a1[3];
    v38 = *(v36 + 8);
    v37 = *(v36 + 16);
    if (v38 >= v37)
    {
      v40 = (v38 - *v36) >> 3;
      if ((v40 + 1) >> 61)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v41 = v37 - *v36;
      v42 = v41 >> 2;
      if (v41 >> 2 <= (v40 + 1))
      {
        v42 = v40 + 1;
      }

      if (v41 >= 0x7FFFFFFFFFFFFFF8)
      {
        v43 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v43 = v42;
      }

      if (v43)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v43);
      }

      *(8 * v40) = a2;
      v39 = 8 * v40 + 8;
      v44 = *(v36 + 8) - *v36;
      v45 = (8 * v40 - v44);
      memcpy(v45, *v36, v44);
      v46 = *v36;
      *v36 = v45;
      *(v36 + 8) = v39;
      *(v36 + 16) = 0;
      if (v46)
      {
        operator delete(v46);
      }
    }

    else
    {
      *v38 = a2;
      v39 = (v38 + 1);
    }

    *(v36 + 8) = v39;
    v47 = a1[4];
    v49 = *(v47 + 8);
    v48 = *(v47 + 16);
    if (v49 >= v48)
    {
      v51 = *v47;
      v52 = v49 - *v47;
      v53 = v52 >> 2;
      v54 = (v52 >> 2) + 1;
      if (v54 >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v55 = v48 - v51;
      if (v55 >> 1 > v54)
      {
        v54 = v55 >> 1;
      }

      if (v55 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v56 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v56 = v54;
      }

      if (v56)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v56);
      }

      *(4 * v53) = v16;
      v50 = 4 * v53 + 4;
      memcpy(0, v51, v52);
      v57 = *v47;
      *v47 = 0;
      *(v47 + 8) = v50;
      *(v47 + 16) = 0;
      if (v57)
      {
        operator delete(v57);
      }
    }

    else
    {
      *v49 = v16;
      v50 = (v49 + 1);
    }

    *(v47 + 8) = v50;
  }
}

uint64_t std::__function::__func<md::SceneQueryLogic::resolveFlexQueries(md::StyleLogicContext const&,md::NavigationContext const&,BOOL,BOOL)::$_0,std::allocator<md::SceneQueryLogic::resolveFlexQueries(md::StyleLogicContext const&,md::NavigationContext const&,BOOL,BOOL)::$_0>,void ()(md::StyleManagerEvent)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A27140;
  a2[1] = v2;
  return result;
}

uint64_t md::Logic<md::SceneQueryLogic,md::SceneQueryContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::RegistryContext,md::NavigationContext,md::StyleLogicContext,md::SettingsContext>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v7[6] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xDFC317497CF9A4BFLL && (v4 = *(a3 + 32)) != 0)
  {
    v6 = result;
    md::LogicDependencies<gdc::TypeList<md::CameraContext,md::RegistryContext,md::NavigationContext,md::StyleLogicContext,md::SettingsContext>,gdc::TypeList<>>::buildRequiredTuple<md::CameraContext,md::RegistryContext,md::NavigationContext,md::StyleLogicContext,md::SettingsContext>(v7, *(a2 + 8));
    return (*(*v6 + 160))(v6, a2, v7, v4);
  }

  else
  {
    a4[23] = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::SceneQueryContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::SceneQueryContext>::~ManagedObjectHolder(void *a1)
{
  gdc::ManagedObjectHolder<md::SceneQueryContext>::~ManagedObjectHolder(a1);

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::SceneQueryContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A27248;
  v2 = a1[4];
  if (v2)
  {
    v3 = *(v2 + 80);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v2 + 24);
    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v2 + 8));
    MEMORY[0x1B8C62190](v2, 0x10A0C4056A13B85);
  }

  return a1;
}

void md::SceneQueryLogic::didBecomeInactive(md::SceneQueryLogic *this)
{
  v2 = *(this + 38);
  if (v2)
  {
    *(this + 38) = 0;
  }

  md::SceneQueryLogic::clearNavigationFlexState(this);
}

void md::SceneQueryLogic::~SceneQueryLogic(md::SceneQueryLogic *this, uint64_t a2)
{
  md::SceneQueryLogic::~SceneQueryLogic(this, a2);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A26F78;
  GEOConfigRemoveBlockListener();
  GEOConfigRemoveBlockListener();
  GEOConfigRemoveBlockListener();
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 504);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 61));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 58));
  std::__tree<std::__value_type<md::FrameGraphPass *,geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>>,std::__map_value_compare<md::FrameGraphPass *,std::__value_type<md::FrameGraphPass *,geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>>,md::FrameGraphPassLessThan,true>,std::allocator<std::__value_type<md::FrameGraphPass *,geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>>>>::destroy(*(this + 54));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 51));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 48));
  v3 = *(this + 45);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(this + 43);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = *(this + 41);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  *(this + 37) = &unk_1F2A4C308;

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 35));
  v6 = *(this + 31);
  if (v6)
  {
    *(this + 32) = v6;
    operator delete(v6);
  }

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 208);
  std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::~__hash_table(this + 21);
  v7 = *(this + 20);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

void sub_1B3033DB0(_Unwind_Exception *a1)
{
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v1 + 504);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v1 + 488));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v1 + 464));
  std::__tree<std::__value_type<md::FrameGraphPass *,geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>>,std::__map_value_compare<md::FrameGraphPass *,std::__value_type<md::FrameGraphPass *,geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>>,md::FrameGraphPassLessThan,true>,std::allocator<std::__value_type<md::FrameGraphPass *,geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>>>>::destroy(*(v1 + 432));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v1 + 408));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v1 + 384));
  v3 = *(v1 + 360);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(v1 + 344);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = *(v1 + 328);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  *(v1 + 296) = &unk_1F2A4C308;

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v1 + 280));
  v6 = *(v1 + 248);
  if (v6)
  {
    *(v1 + 256) = v6;
    operator delete(v6);
  }

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v1 + 208);
  std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::~__hash_table((v1 + 168));
  v7 = *(v1 + 160);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  *v1 = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v1 + 104));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v1 + 80));
  _Unwind_Resume(a1);
}

void ___ZN2md15SceneQueryLogicC2ERKNSt3__110shared_ptrINS_15RegistryManagerEEEPU28objcproto17OS_dispatch_queue8NSObject_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  *(v1 + 120) = GEOConfigGetBOOL();
  v2 = GEOGetVectorKitSceneQueryLogicLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(v1 + 120);
    v4[0] = 67109120;
    v4[1] = v3;
    _os_log_impl(&dword_1B2754000, v2, OS_LOG_TYPE_INFO, "SpatialFlexingAllowed updated to %d", v4, 8u);
  }
}

void ___ZN2md15SceneQueryLogicC2ERKNSt3__110shared_ptrINS_15RegistryManagerEEEPU28objcproto17OS_dispatch_queue8NSObject_block_invoke_8(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  *(v1 + 121) = GEOConfigGetBOOL();
  v2 = GEOGetVectorKitSceneQueryLogicLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(v1 + 121);
    v4[0] = 67109120;
    v4[1] = v3;
    _os_log_impl(&dword_1B2754000, v2, OS_LOG_TYPE_INFO, "RouteLineMaskingAllowed updated to %d", v4, 8u);
  }
}

void ___ZN2md15SceneQueryLogicC2ERKNSt3__110shared_ptrINS_15RegistryManagerEEEPU28objcproto17OS_dispatch_queue8NSObject_block_invoke_9(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  *(v1 + 124) = GEOConfigGetUInteger();
  v2 = GEOGetVectorKitSceneQueryLogicLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(v1 + 124);
    v4[0] = 67109120;
    v4[1] = v3;
    _os_log_impl(&dword_1B2754000, v2, OS_LOG_TYPE_INFO, "MaxEntitiesToFlexPerFrame updated to %d", v4, 8u);
  }
}

void md::Logic<md::SceneQueryLogic,md::SceneQueryContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::RegistryContext,md::NavigationContext,md::StyleLogicContext,md::SettingsContext>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2, v3);
}

void geo::_retain_ptr<NSUUID * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A27290;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<NSUUID * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A27290;

  return a1;
}

void sub_1B3034714(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id a18)
{
  v20 = *v18;
  if (*v18)
  {
    *(v18 + 8) = v20;
    operator delete(v20);
  }

  _Unwind_Resume(a1);
}

void sub_1B3034B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v32 - 208), 8);
  _Block_object_dispose((v32 - 128), 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13_23238(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__n128 __Block_byref_object_copy__31(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

__n128 __Block_byref_object_copy__34(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void forEachNodeInSortedPaths(void *a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 && v4)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = v3;
    v6 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v6)
    {
      v27 = *v31;
      v28 = 0;
      do
      {
        v7 = 0;
        do
        {
          if (*v31 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v30 + 1) + 8 * v7);
          if (v28 && ([v28 section], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "transportType"), objc_msgSend(v8, "section"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "transportType"), v11, v9, LODWORD(v13) = objc_msgSend(v28, "routeEnd") >> 32, *&v13 >= 0.0))
          {
            v22 = [v8 routeStart];
            v14 = 1;
            if (v22 <= [v28 routeEnd] && v10 == v12)
            {
              v23 = [v28 section];
              if ([v23 transportType] != 1)
              {
                v24 = [v8 section];
                v14 = [v24 transportType] == 2;
              }
            }
          }

          else
          {
            v14 = 1;
          }

          v15 = [v8 points];
          v16 = [v8 pointCount];
          if (v16)
          {
            v17 = 0;
            v18 = v16;
            do
            {
              v29 = *(*[v8 polylineCoordinates] + 8 * v17);
              if (v17)
              {
                v19 = 0;
              }

              else
              {
                v19 = v14;
              }

              [v8 laneHalfWidthAtIndex:v17];
              (v5)[2](v5, v15, &v29, v17, v8, v19, [v8 gradientTrafficAtIndex:v17], v20);
              ++v17;
              v15 += 12;
            }

            while (v18 != v17);
            if (v18 > 0)
            {
              v21 = v8;

              v28 = v21;
            }
          }

          ++v7;
        }

        while (v7 != v6);
        v25 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
        v6 = v25;
      }

      while (v25);
    }

    else
    {
      v28 = 0;
    }
  }
}

void sub_1B3035238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  geo::fast_shared_ptr<md::RouteLineSection,mdm::allocator>::~fast_shared_ptr(&a9);
  geo::fast_shared_ptr<md::RouteLineSection,mdm::allocator>::~fast_shared_ptr(&a10);

  _Unwind_Resume(a1);
}

id GEOGetVectorKitVKRouteLineLog(void)
{
  if (GEOGetVectorKitVKRouteLineLog(void)::onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVKRouteLineLog(void)::onceToken, &__block_literal_global_23246);
  }

  v1 = GEOGetVectorKitVKRouteLineLog(void)::log;

  return v1;
}

void ___ZL29GEOGetVectorKitVKRouteLineLogv_block_invoke()
{
  v0 = os_log_create("com.apple.VectorKit", "VKRouteLine");
  v1 = GEOGetVectorKitVKRouteLineLog(void)::log;
  GEOGetVectorKitVKRouteLineLog(void)::log = v0;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<Arrow>>(unint64_t a1)
{
  if (a1 < 0x5D1745D1745D175)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void sub_1B3037E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose(&a43, 8);
  geo::fast_shared_ptr<md::RouteLineSection,mdm::allocator>::~fast_shared_ptr((v64 + 48));
  _Block_object_dispose(&a50, 8);
  _Block_object_dispose(&a59, 8);

  _Block_object_dispose((v67 - 200), 8);
  v69 = *(v67 - 152);
  if (v69)
  {
    *(v67 - 144) = v69;
    operator delete(v69);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__23251(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__23252(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

__n128 __Block_byref_object_copy__15_23254(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a1[3] = result;
  return result;
}

uint64_t __Block_byref_object_copy__18(uint64_t result, uint64_t a2)
{
  *(result + 48) = 0;
  *(result + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__24_23261(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 56) = *(a2 + 56);
  *(result + 48) = v2;
  return result;
}

char *std::vector<geo::fast_shared_ptr<md::RouteLineSection,mdm::allocator>>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  result = *a1;
  v5 = *(a1 + 8);
  v7 = (a2[1] + result - v5);
  if (v5 != result)
  {
    v8 = result;
    v9 = (a2[1] + result - v5);
    do
    {
      *v9 = 0;
      *v9 = *v8;
      v9 += 8;
      *v8 = 0;
      v8 += 8;
    }

    while (v8 != v5);
    do
    {
      result = (geo::fast_shared_ptr<md::RouteLineSection,mdm::allocator>::~fast_shared_ptr(result) + 1);
    }

    while (result != v5);
    result = *a1;
  }

  a2[1] = v7;
  *a1 = v7;
  *(a1 + 8) = result;
  a2[1] = result;
  v10 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v10;
  v11 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v11;
  *a2 = a2[1];
  return result;
}

uint64_t std::__split_buffer<geo::fast_shared_ptr<md::RouteLineSection,mdm::allocator>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    geo::fast_shared_ptr<md::RouteLineSection,mdm::allocator>::~fast_shared_ptr((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1B3039954(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  std::mutex::unlock((v10 + 440));

  _Unwind_Resume(a1);
}

void sub_1B30399D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = VKRouteLine;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void md::ExternalIconLabelPart::populateDebugNode(md::ExternalIconLabelPart *this, gdc::DebugTreeNode *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  md::ImageLabelPart::populateDebugNode(this, a2);
  std::string::basic_string[abi:nn200100]<0>(&v16, "ExternalIconLabelPart");
  v4 = gdc::DebugTreeNode::createChildNode(a2, &v16);
  if (v17 < 0)
  {
    operator delete(v16);
  }

  std::string::basic_string[abi:nn200100]<0>(&v16, "Alpha");
  gdc::DebugTreeValue::DebugTreeValue(v13, *(this + 138));
  gdc::DebugTreeNode::addProperty(v4, &v16, v13);
  if (v15 < 0)
  {
    operator delete(__p);
  }

  if (v17 < 0)
  {
    operator delete(v16);
  }

  std::string::basic_string[abi:nn200100]<0>(&v16, "Is Round");
  gdc::DebugTreeValue::DebugTreeValue(v10, *(this + 672));
  gdc::DebugTreeNode::addProperty(v4, &v16, v10);
  if (v12 < 0)
  {
    operator delete(v11);
  }

  if (v17 < 0)
  {
    operator delete(v16);
  }

  if (*(this + 672) != 1)
  {
    std::string::basic_string[abi:nn200100]<0>(&v6, "Half Ext");
    gdc::DebugTreeValue::DebugTreeValue(&v16, *(this + 165));
    gdc::DebugTreeValue::DebugTreeValue(&v18, *(this + 166));
    memset(v5, 0, sizeof(v5));
    std::vector<gdc::DebugTreeValue>::__init_with_size[abi:nn200100]<gdc::DebugTreeValue const*,gdc::DebugTreeValue const*>(v5, &v16, &v19, 2uLL);
  }

  std::string::basic_string[abi:nn200100]<0>(&v16, "Radius");
  gdc::DebugTreeValue::DebugTreeValue(v7, *(this + 164));
  gdc::DebugTreeNode::addProperty(v4, &v16, v7);
  if (v9 < 0)
  {
    operator delete(v8);
  }

  if (v17 < 0)
  {
    operator delete(v16);
  }
}

void sub_1B3039D64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  v19 = 0;
  while (1)
  {
    if (*(v17 + v19 + 119) < 0)
    {
      operator delete(*(v17 + v19 + 96));
    }

    v19 -= 64;
    if (v19 == -128)
    {
      if (a17 < 0)
      {
        operator delete(__p);
      }

      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t md::ExternalIconLabelPart::debugString@<X0>(md::ExternalIconLabelPart *this@<X0>, _BYTE *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:nn200100](&v15);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v15, "ExternalIcon", 12);
  v4 = v15;
  *(&v15 + *(v15 - 24) + 8) = *(&v15 + *(v15 - 24) + 8) & 0xFFFFFEFB | 4;
  *(&v17[0].__locale_ + *(v4 - 24)) = 2;
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v15, "\n  alpha:", 9);
  std::ostream::operator<<();
  if (*(this + 672) == 1)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v15, "\n  radius:", 10);
    std::ostream::operator<<();
  }

  else
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v15, "\n  halfExt:(", 12);
    v5 = std::ostream::operator<<();
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v5, ", ", 2);
    v6 = std::ostream::operator<<();
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v6, ")", 1);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v15, "\n  ", 3);
  md::ImageLabelPart::debugString(__p, this);
  if ((v14 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v14 & 0x80u) == 0)
  {
    v8 = v14;
  }

  else
  {
    v8 = __p[1];
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v15, v7, v8);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v22 & 0x10) != 0)
  {
    v10 = v21;
    if (v21 < v18)
    {
      v21 = v18;
      v10 = v18;
    }

    locale = v17[4].__locale_;
  }

  else
  {
    if ((v22 & 8) == 0)
    {
      v9 = 0;
      a2[23] = 0;
      goto LABEL_25;
    }

    locale = v17[1].__locale_;
    v10 = v17[3].__locale_;
  }

  v9 = v10 - locale;
  if ((v10 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v9 >= 0x17)
  {
    operator new();
  }

  a2[23] = v9;
  if (v9)
  {
    memmove(a2, locale, v9);
  }

LABEL_25:
  a2[v9] = 0;
  v15 = *MEMORY[0x1E69E54E8];
  *(&v15 + *(v15 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v16 = MEMORY[0x1E69E5548] + 16;
  if (v20 < 0)
  {
    operator delete(v19);
  }

  v16 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v17);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v23);
}

void sub_1B303A10C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  a15 = *MEMORY[0x1E69E54E8];
  *(&a15 + *(a15 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  a16 = MEMORY[0x1E69E5548] + 16;
  if (a29 < 0)
  {
    operator delete(a24);
  }

  a16 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a17);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&a32);
  _Unwind_Resume(a1);
}

float md::ExternalIconLabelPart::calloutAnchorRect(md::ExternalIconLabelPart *this)
{
  if (*(this + 672) == 1)
  {
    return -*(this + 164);
  }

  else
  {
    return -*(this + 165);
  }
}

float md::ExternalIconLabelPart::pushToRenderModel(uint64_t a1, float a2)
{
  result = fmaxf(fminf(*(a1 + 600) * a2, 1.0), 0.0);
  *(a1 + 552) = result;
  return result;
}

uint64_t md::ExternalIconLabelPart::layoutForDisplay(_DWORD *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  a1[130] = *a4;
  a1[131] = a4[1];
  a1[86] = *a4;
  a1[87] = a4[1];
  md::CollisionObject::setupShapeData((a1 + 78));
  return 37;
}

uint64_t md::ExternalIconLabelPart::layoutForStaging(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (*(a1 + 628) == 1)
  {
    v3 = (a1 + 668);
    v4 = vld1_dup_f32(v3);
    *(a1 + 168) = vmaxnm_f32(*(a1 + 620), v4);
    *(a1 + 271) = *(a1 + 631);
    *(a1 + 628) = 0;
  }

  *(a1 + 280) = *a3;
  *(a1 + 284) = a3[1];
  *(a1 + 104) = *a3;
  *(a1 + 108) = a3[1];
  md::CollisionObject::setupShapeData(a1 + 72);
  return 37;
}

void md::ExternalIconLabelPart::~ExternalIconLabelPart(md::ExternalIconLabelPart *this)
{
  *this = &unk_1F2A272B0;
  v2 = *(this + 81);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  *this = &unk_1F2A5B190;
  md::CollisionObject::~CollisionObject(this + 39);
  md::CollisionObject::~CollisionObject(this + 9);
  v4 = mdm::zone_mallocator::instance(v3);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v4, this);
}

{
  *this = &unk_1F2A272B0;
  v2 = *(this + 81);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  *this = &unk_1F2A5B190;
  md::CollisionObject::~CollisionObject(this + 39);
  md::CollisionObject::~CollisionObject(this + 9);
}

uint64_t md::HillshadeRenderLayer::reserveStencilRange(uint64_t a1, uint64_t a2)
{
  result = ggl::StencilManager::reserveStencilValues(*(a2 + 24), (*(a1 + 49) - *(a1 + 48) + 1), *(a1 + 368));
  *(a1 + 376) = result - *(a1 + 48);
  return result;
}

void md::HillshadeRenderLayer::layout(md::HillshadeRenderLayer *this, const md::LayoutContext *a2)
{
  v187 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 1);
  v144 = gdc::Context::get<md::GeometryContext>(v3);
  v146 = md::LayoutContext::get<md::CameraContext>(v3);
  if (!v146)
  {
    return;
  }

  v4 = *(this + 44);
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  v5 = *(this + 48);
  ggl::FragmentedPool<ggl::RenderItem>::pushAll(*(v5 + 48));
  v6 = *(v5 + 56);
  v7 = *(v6 + 4);
  v8 = *(v6 + 5);
  if (v7 != v8)
  {
    do
    {
      *&v177 = *v7;
      std::vector<ggl::Hillshade::Pos2DUVPipelineSetup *,geo::allocator_adapter<ggl::Hillshade::Pos2DUVPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](v6, &v177);
      ++v7;
    }

    while (v7 != v8);
    v7 = *(v6 + 4);
    v8 = *(v6 + 5);
  }

  if (v7 != v8)
  {
    *(v6 + 5) = v7;
  }

  v9 = md::FrameGraph::renderQueueForPass(*(*(*(this + 5) + 24) + 8), *(this + 392));
  if (v9)
  {
    v9 = *(*(v9 + 16) + 8 * *(this + 393));
  }

  v10 = v9;
  ggl::CommandBuffer::clearRenderItems(v9);
  v154 = v10;
  *(v10 + 4) = *(this + 46);
  v150 = *(this + 94);
  v185[0] = &unk_1F2A2F290;
  v186 = v185;
  v11 = *(a2 + 1);
  v12 = gdc::Context::get<md::GeometryContext>(v11);
  v145 = md::LayoutContext::get<md::SceneContext>(v11);
  v149 = v12;
  if (v12)
  {
    if (md::SceneStateManager::isFinishedLoadingRequiredLayers(*v145))
    {
      v13 = *(this + 48);
      v14 = *(this + 49);
      *(this + 360) = v13 != v14;
      if (v13 == v14)
      {
        goto LABEL_59;
      }
    }

    else
    {
      *(this + 360) = 1;
    }

    v15 = *(this + 44);
    v17 = *(v15 + 112);
    v16 = *(v15 + 120);
    v18 = *(this + 34);
    v19 = *(this + 35);
    if (v18 == v19)
    {
      v157 = *(this + 44);
    }

    else
    {
      do
      {
        v20 = *v18;
        if (!v186 || std::function<BOOL ()(HillshadeRenderable const*)>::operator()(v186, *v18))
        {
          v21 = *(v20 + 392);
          FillRect = grl::IconMetricsRenderResult::getFillRect(v21);
          v23 = std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::find<gdc::LayerDataRequestKey>(*v145 + 1, FillRect);
          if (v23)
          {
            v24 = (*(v23 + 17) - *(v23 + 16)) >> 5;
            if (v21[168] == 255)
            {
              v17 += v24;
            }

            else
            {
              v16 += v24;
            }
          }
        }

        ++v18;
      }

      while (v18 != v19);
      v157 = *(this + 44);
    }

    v25 = gdc::ToCoordinateSystem(v149[320]);
    v26 = 128;
    if (v25)
    {
      v26 = 144;
    }

    v27 = *&v149[v26 + 8];
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v155 = v27;
    if (v17 > (v157[8] - v157[7]) >> 3)
    {
      __asm { FMOV            V0.4S, #1.0 }

      operator new();
    }

    if (v16 > (v157[11] - v157[10]) >> 3)
    {
      operator new();
    }

    v33 = md::LayoutContext::get<md::CameraContext>(*(a2 + 1));
    v34 = md::LayoutContext::cameraType(a2);
    v35 = *(v33 + 888);
    v181 = *(v33 + 872);
    v182 = v35;
    v36 = *(v33 + 920);
    v183 = *(v33 + 904);
    v184 = v36;
    v37 = *(v33 + 824);
    v177 = *(v33 + 808);
    v178 = v37;
    v38 = *(v33 + 856);
    v179 = *(v33 + 840);
    v180 = v38;
    v39 = *(this + 34);
    v143 = *(this + 35);
    if (v39 != v143)
    {
      v40 = v34;
      do
      {
        v147 = v39;
        v41 = *v39;
        if (!v186 || (std::function<BOOL ()(HillshadeRenderable const*)>::operator()(v186, *v39) & 1) != 0)
        {
          v42 = *(v41 + 392);
          v43 = grl::IconMetricsRenderResult::getFillRect(v42);
          v44 = std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::find<gdc::LayerDataRequestKey>(*v145 + 1, v43);
          if (v44)
          {
            v45 = *(v44 + 16);
            v152 = *(v44 + 17);
            if (v152 != v45)
            {
              v148 = v41;
              do
              {
                v46 = *(this + 44);
                if (*(*(v41 + 392) + 168) != 255)
                {
                  v47 = v46[15];
                  v48 = v157[10];
                  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v160, *(*(**(v48 + 8 * v47) + 136) + 32));
                  v49 = (*(**(v41 + 392) + 32))(*(v41 + 392));
                  v50 = 0;
                  v51 = v161 + 32;
                  do
                  {
                    *(v51 + v50) = *(v49 + v50);
                    v50 += 4;
                  }

                  while (v50 != 12);
                  v52 = (*(**(v41 + 392) + 32))(*(v41 + 392));
                  v53 = 0;
                  v54 = v161 + 48;
                  do
                  {
                    *(v54 + v53) = *(v52 + 12 + v53);
                    v53 += 4;
                  }

                  while (v53 != 12);
                  *(*(v48 + 8 * v47) + 32) = **(this + 44);
                  *(*(v48 + 8 * v47) + 40) = **(v48 + 8 * v47);
                  v55 = *(v48 + 8 * v47);
                  *(v55 + 56) = 0;
                  *(v55 + 48) = v150 + *(v42 + 169);
                  v170 = 0u;
                  v169 = 0u;
                  v172 = 0u;
                  v173 = 0u;
                  v175 = 0u;
                  *v176 = 0u;
                  v168 = 1.0;
                  v171 = 1.0;
                  v174 = 1.0;
                  *&v176[16] = 0x3FF0000000000000;
                  md::GeometryContext::transformConstantData(v162, v149, (v42 + 168), v40, -1, 0.0, 0.0);
                }

                v56 = v46[14];
                v57 = v157[7];
                *(*(v57 + 8 * v56) + 32) = *v46;
                *(*(v57 + 8 * v56) + 40) = **(v57 + 8 * v56);
                v58 = *(v57 + 8 * v56);
                *(v58 + 56) = 0;
                v59 = *(v42 + 169);
                *(v58 + 48) = v150 + v59;
                if (gdc::ToCoordinateSystem(v40))
                {
                  v60 = *(v42 + 176);
                  v61 = 1.0 / (1 << v59);
                  v62 = (1 << v59) + ~*(v42 + 172);
                  *&v164 = v61 * v60;
                  *(&v164 + 1) = v61 * v62;
                  *&v165 = v61 + v60 * v61;
                  *(&v165 + 1) = v61 + v62 * v61;
                  gdc::GlobeTileUtils::boundsFromMercatorRect(v162, &v164, 0.0, 0.0);
                  geo::OrientedBox<double,3u,double,double>::toMatrix(&v168, v162);
                  md::GeometryContext::transformConstantData(&v164, v149, (v42 + 168), v40, -1, 0.0, 0.0);
                }

                v63 = 1 << *(v45 + 1);
                v64 = 1.0 / v63;
                v65 = v64 * *(v45 + 8);
                v66 = v64 * (v63 + ~*(v45 + 4));
                v169 = 0u;
                v170 = 0u;
                v172 = 0u;
                v173 = 0u;
                v168 = v64;
                v171 = v64;
                v174 = v64;
                *&v175 = 0;
                *(&v175 + 1) = v65;
                *v176 = v66;
                *&v176[8] = xmmword_1B33B0740;
                ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(*(*v58 + 136), *(*v58 + 232), v46[1], v46[2]);
                v27 = v155;
                v67 = 0;
                v68 = &v177;
                v41 = v148;
                do
                {
                  v69 = 0;
                  v70 = &v168;
                  do
                  {
                    v71 = 0;
                    v72 = 0.0;
                    v73 = v68;
                    do
                    {
                      v74 = *v73;
                      v73 += 4;
                      v72 = v72 + v70[v71++] * v74;
                    }

                    while (v71 != 4);
                    *(&v162[2 * v69++] + v67) = v72;
                    v70 += 4;
                  }

                  while (v69 != 4);
                  ++v67;
                  v68 = (v68 + 8);
                }

                while (v67 != 4);
                v75 = 0;
                v76 = v162;
                do
                {
                  v78 = *v76;
                  v77 = v76[1];
                  v76 += 2;
                  *(&v164 + v75) = vcvt_hight_f32_f64(vcvt_f32_f64(v78), v77);
                  v75 += 16;
                }

                while (v75 != 64);
                ggl::DataAccess<ggl::Tile::View>::DataAccess(v162, **(**(v57 + 8 * v56) + 136), 1);
                v79 = v163;
                *v163 = v164;
                v79[1] = v165;
                v79[2] = v166;
                v79[3] = v167;
                ggl::BufferMemory::~BufferMemory(v162);
                ggl::CommandBuffer::pushRenderItem(v154, (*(v57 + 8 * v56) + 8));
                ++*(*(this + 44) + 112);
                v45 += 32;
              }

              while (v45 != v152);
            }
          }
        }

        v39 = v147 + 1;
      }

      while (v147 + 1 != v143);
    }

    if (v27)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v27);
    }
  }

LABEL_59:
  std::__function::__value_func<BOOL ()(HillshadeRenderable const*)>::~__value_func[abi:nn200100](v185);
  v80 = *(this + 34);
  v156 = *(this + 35);
  if (v80 != v156)
  {
    v81 = fmaxf(*(v146 + 3080) + *(v146 + 3076), 1.0);
    v82 = v81;
    if (v81 >= 0x17)
    {
      v82 = 23;
    }

    v153 = v82;
    v83 = fminf(v81, 23.0);
    v151 = vdupq_n_s32(0x37800080u);
    while (1)
    {
      while (1)
      {
        v84 = *v80;
        v85 = *(*v80 + 392);
        v86 = *(v85 + 744);
        v87 = *(v85 + 752);
        if (v87)
        {
          atomic_fetch_add_explicit(&v87->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:nn200100](v87);
        }

        if (v86)
        {
          break;
        }

        v80 += 8;
        if (v80 == v156)
        {
          return;
        }
      }

      v88 = gdc::ToCoordinateSystem(*(v146 + 3784));
      v89 = *(this + 360);
      if (v89 == 1)
      {
        v158 = (*(v85 + 169) + *(this + 376));
      }

      else
      {
        v158 = 0;
      }

      v91 = v84[28];
      v90 = v84[29];
      if (v90)
      {
        atomic_fetch_add_explicit(&v90->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v92 = v84[30];
      v93 = v84[31];
      if (v93)
      {
        atomic_fetch_add_explicit(&v93->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v94 = *(*(this + 48) + 56);
      v95 = v94[1];
      if (v95 == *v94)
      {
        v97 = v94[11];
        if (!v97)
        {
          goto LABEL_135;
        }

        *&v96 = COERCE_DOUBLE((*(*v97 + 48))(v97));
        v168 = *&v96;
      }

      else
      {
        v96 = *(v95 - 8);
        v168 = *&v96;
        v94[1] = v95 - 8;
      }

      std::vector<ggl::Hillshade::Pos2DUVPipelineSetup *,geo::allocator_adapter<ggl::Hillshade::Pos2DUVPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v94 + 4), &v168);
      *&v177 = v96;
      v98 = v94[15];
      if (!v98)
      {
LABEL_135:
        std::__throw_bad_function_call[abi:nn200100]();
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      (*(*v98 + 48))(v98, &v177);
      v99 = 16;
      if (v88)
      {
        v99 = 32;
      }

      v100 = (*(this + 48) + v99);
      *&v177 = *v100;
      v101 = v100[1];
      *(&v177 + 1) = v101;
      if (v101)
      {
        atomic_fetch_add_explicit(&v101->__shared_owners_, 1uLL, memory_order_relaxed);
        ggl::PipelineSetup::setState(v96, &v177);
        std::__shared_weak_count::__release_shared[abi:nn200100](v101);
      }

      else
      {
        ggl::PipelineSetup::setState(v96, &v177);
      }

      v102 = *(v85 + 744);
      v103 = *(v85 + 752);
      if (v103)
      {
        atomic_fetch_add_explicit(&v103->__shared_owners_, 1uLL, memory_order_relaxed);
        **(v96 + 168) = v102;
        std::__shared_weak_count::__release_shared[abi:nn200100](v103);
      }

      else
      {
        **(v96 + 168) = v102;
      }

      v104 = *(v96 + 136);
      *v104 = v91;
      v104[1] = 0;
      v105 = *(v96 + 232);
      if (v90)
      {
        atomic_fetch_add_explicit(&v90->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v106 = v105[1];
      *v105 = v91;
      v105[1] = v90;
      if (v106)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v106);
      }

      v107 = *(v96 + 136);
      *(v107 + 16) = v92;
      *(v107 + 24) = 0;
      v108 = *(v96 + 232);
      if (v93)
      {
        atomic_fetch_add_explicit(&v93->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v109 = *(v108 + 24);
      *(v108 + 16) = v92;
      *(v108 + 24) = v93;
      if (v109)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v109);
      }

      v110 = ggl::FragmentedPool<ggl::RenderItem>::pop(*(*(this + 48) + 48));
      v111 = v110;
      v112 = 8;
      if (!v89)
      {
        v112 = 0;
      }

      v110[3] = *(*(this + 48) + v112);
      v110[4] = *&v96;
      v113 = gdc::ToCoordinateSystem(*(v144 + 320));
      v114 = 2;
      if (v113)
      {
        v114 = 4;
      }

      v111[8] = *&v144[v114];
      *(v111 + 2) = "hillshade";
      *(v111 + 10) = v158;
      v115 = *(*(v96 + 136) + 32);
      ggl::BufferMemory::BufferMemory(&v168);
      ggl::ResourceAccessor::accessConstantData(&v177, 0, v115, 1);
      ggl::BufferMemory::operator=(&v168, &v177);
      ggl::BufferMemory::~BufferMemory(&v177);
      v116 = *(v85 + 728);
      v117 = *(v85 + 736);
      if (v117)
      {
        atomic_fetch_add_explicit(&v117->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v117->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v177, v116, v117);
      if (v117)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v117);
        std::__shared_weak_count::__release_shared[abi:nn200100](v117);
      }

      if ((v179 & 1) != 0 && gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(*(v177 + 24), 91, v153, 2u, 0))
      {
        break;
      }

      v137 = 1;
LABEL_117:
      if (v179 == 1)
      {
        (*(*v177 + 56))(v177);
      }

      if (*(&v178 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*(&v178 + 1));
      }

      if (*(&v177 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*(&v177 + 1));
      }

      ggl::BufferMemory::~BufferMemory(&v168);
      if (v93)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v93);
      }

      if (v90)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v90);
      }

      v80 += 8;
      if (v80 == v156)
      {
        v140 = 1;
      }

      else
      {
        v140 = v137;
      }

      if (v140)
      {
        return;
      }
    }

    v118 = *(v177 + 24);
    v119 = *v118;
    if (!*v118 || (v120 = *v119, LODWORD(v119) = *v119 == 1.0, *(v118 + 10) != 1) || v120 == 0.0 || v120 == 1.0)
    {
      v121 = *(v118 + v119 + 11);
      if (v121 != 2)
      {
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(*(v177 + 24), 194, v121, 0, v83);
        _S9 = v122.n128_f32[0];
LABEL_112:
        gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(v162, v118, 438, v153, 2u, 0, v122, v123);
        v125 = *&v162[0];
        gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(v162, *(v177 + 24), 92, v153, 2u, 0, v126, v127);
        v128 = *&v162[0];
        v129 = +[VKDebugSettings sharedSettings];
        v130 = [v129 enableDebugSettingForHillShade];

        if (v130)
        {
          v131 = +[VKDebugSettings sharedSettings];
          [v131 hillshadeOpacity];
          _S9 = v132;

          v133 = +[VKDebugSettings sharedSettings];
          [v133 hillshadeBlendMode];
          v135 = v134;

          v136 = vcvtms_u32_f32(v135);
        }

        else
        {
          v136 = 11;
        }

        v138 = *&v171;
        __asm { FCVT            H2, S9 }

        *(*&v171 + 32) = _H2;
        *v138 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v125)), v151);
        v138[1] = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v128)), v151);
        v138[2].i32[1] = v136;
        *&v162[0] = v111;
        std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v154 + 72), v162);
        v137 = 0;
        goto LABEL_117;
      }

      v120 = 0.0;
    }

    LOBYTE(v162[0]) = 1;
    LOBYTE(v164) = 1;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v118, 194, 0, v162, v83);
    v142 = v141;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v118, 194, 1, &v164, v83);
    v122.n128_f32[0] = v122.n128_f32[0] - v142;
    _S9 = v142 + (v122.n128_f32[0] * v120);
    goto LABEL_112;
  }
}

void sub_1B303B650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (LOBYTE(STACK[0x260]) == 1)
  {
    (*(*STACK[0x240] + 56))();
  }

  if (STACK[0x258])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](STACK[0x258]);
  }

  if (STACK[0x248])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](STACK[0x248]);
  }

  ggl::BufferMemory::~BufferMemory(&a65);
  if (v66)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v66);
  }

  if (v65)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v65);
  }

  _Unwind_Resume(a1);
}

ggl::zone_mallocator *std::vector<ggl::Hillshade::Pos2DUVPipelineSetup *,geo::allocator_adapter<ggl::Hillshade::Pos2DUVPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
{
  v3 = result;
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v4 - *result;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v19[4] = result + 24;
    if (v10)
    {
      v11 = ggl::zone_mallocator::instance(result);
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Hillshade::Pos2DUVPipelineSetup *>(v11, v10);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[8 * v7];
    v14 = &v12[8 * v10];
    *v13 = *a2;
    v6 = v13 + 8;
    v15 = *(v3 + 1) - *v3;
    v16 = &v13[-v15];
    memcpy(&v13[-v15], *v3, v15);
    v17 = *v3;
    *v3 = v16;
    *(v3 + 1) = v6;
    v18 = *(v3 + 2);
    *(v3 + 2) = v14;
    v19[2] = v17;
    v19[3] = v18;
    v19[0] = v17;
    v19[1] = v17;
    result = std::__split_buffer<ggl::Hillshade::Pos2DUVPipelineSetup *,geo::allocator_adapter<ggl::Hillshade::Pos2DUVPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Hillshade::Pos2DUVPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Hillshade::Pos2DUVPipelineSetup *>(uint64_t a1, void *a2)
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

void ggl::ConstantDataTyped<ggl::Hillshade::HillshadeStyle>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::Hillshade::HillshadeStyle>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A27810;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::Hillshade::Pos2DUVPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A27748;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::RasterTileResourceDecoder::decode(uint64_t a2@<X2>, void *a3@<X8>)
{
  if (*(a2 + 112))
  {
    v4 = *a2;
    if (!gdc::DataObject::empty(*a2))
    {
      if (gdc::DataObject::length(v4) == 4)
      {
        gdc::DataObject::bytes(v4);
        operator new();
      }

      v5 = v4[2];
      v6 = md::LabelExternalPointFeature::incident(v5);
      v7 = CGImageSourceCreateWithData(v6, 0);

      if (v7)
      {
        if (CGImageSourceGetCount(v7))
        {
          ImageAtIndex = CGImageSourceCreateImageAtIndex(v7, 0, 0);
          CFRelease(v7);
          if (ImageAtIndex)
          {
            CGImageGetWidth(ImageAtIndex);
            CGImageGetHeight(ImageAtIndex);
            operator new();
          }
        }

        else
        {
          CFRelease(v7);
        }
      }
    }
  }

  *a3 = 0;
  a3[1] = 0;
}

uint64_t _colorSpace(int a1)
{
  if (a1)
  {
    if (_colorSpace(BOOL)::onceTokenSRGB != -1)
    {
      dispatch_once(&_colorSpace(BOOL)::onceTokenSRGB, &__block_literal_global_23408);
    }

    v1 = &_colorSpace(BOOL)::colorspaceSRGB;
  }

  else
  {
    if (_colorSpace(BOOL)::onceTokenLinear != -1)
    {
      dispatch_once(&_colorSpace(BOOL)::onceTokenLinear, &__block_literal_global_5_23409);
    }

    v1 = &_colorSpace(BOOL)::colorspaceLinear;
  }

  return *v1;
}

CGColorSpaceRef ___ZL11_colorSpaceb_block_invoke_2()
{
  result = CGColorSpaceCreateDeviceRGB();
  _colorSpace(BOOL)::colorspaceLinear = result;
  return result;
}

CGColorSpaceRef ___ZL11_colorSpaceb_block_invoke()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1B0]);
  _colorSpace(BOOL)::colorspaceSRGB = result;
  return result;
}

CFDictionaryRef ___ZL19_imageSourceOptionsv_block_invoke()
{
  keys[3] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E696E0E8];
  keys[0] = *MEMORY[0x1E696E0A8];
  keys[1] = v0;
  keys[2] = *MEMORY[0x1E696E118];
  v1 = *MEMORY[0x1E695E4D0];
  values[0] = *MEMORY[0x1E695E4C0];
  values[1] = v1;
  values[2] = @"public.png";
  result = CFDictionaryCreate(0, keys, values, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  _imageSourceOptions(void)::options = result;
  return result;
}

void sub_1B303CA4C(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_1B303CDDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  _Unwind_Resume(exception_object);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__shared_ptr_emplace<ggl::TextureData2D,geo::allocator_adapter<ggl::TextureData2D,mdm::zone_mallocator>>>(uint64_t a1, void *a2)
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

void std::__shared_ptr_emplace<ggl::TextureData2D,geo::allocator_adapter<ggl::TextureData2D,mdm::zone_mallocator>>::__on_zero_shared_weak(mdm::zone_mallocator *a1)
{
  v2 = mdm::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__shared_ptr_emplace<ggl::TextureData2D,geo::allocator_adapter<ggl::TextureData2D,mdm::zone_mallocator>>>(v2, a1);
}

void std::__shared_ptr_emplace<ggl::TextureData2D,geo::allocator_adapter<ggl::TextureData2D,mdm::zone_mallocator>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A27948;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void sub_1B303D024(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_1B303D1CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(a1);
}

void sub_1B303D318(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

void md::ImageLabelPart::populateDebugNode(md::ImageLabelPart *this, gdc::DebugTreeNode *a2)
{
  std::string::basic_string[abi:nn200100]<0>(&v20, "ImageLabelPart");
  v4 = gdc::DebugTreeNode::createChildNode(a2, &v20);
  if (v21 < 0)
  {
    operator delete(v20);
  }

  std::string::basic_string[abi:nn200100]<0>(&v20, "Alpha");
  gdc::DebugTreeValue::DebugTreeValue(v17, *(this + 138));
  gdc::DebugTreeNode::addProperty(v4, &v20, v17);
  if (v19 < 0)
  {
    operator delete(v18);
  }

  if (v21 < 0)
  {
    operator delete(v20);
  }

  std::string::basic_string[abi:nn200100]<0>(&v20, "Brightness");
  gdc::DebugTreeValue::DebugTreeValue(v14, *(this + 149));
  gdc::DebugTreeNode::addProperty(v4, &v20, v14);
  if (v16 < 0)
  {
    operator delete(v15);
  }

  if (v21 < 0)
  {
    operator delete(v20);
  }

  std::string::basic_string[abi:nn200100]<0>(&v20, "Saturation");
  gdc::DebugTreeValue::DebugTreeValue(v11, *(this + 151));
  gdc::DebugTreeNode::addProperty(v4, &v20, v11);
  if (v13 < 0)
  {
    operator delete(__p);
  }

  if (v21 < 0)
  {
    operator delete(v20);
  }

  std::string::basic_string[abi:nn200100]<0>(&v20, "Padding");
  gdc::DebugTreeValue::DebugTreeValue(v8, *(this + 155));
  gdc::DebugTreeNode::addProperty(v4, &v20, v8);
  if (v10 < 0)
  {
    operator delete(v9);
  }

  if (v21 < 0)
  {
    operator delete(v20);
  }

  std::string::basic_string[abi:nn200100]<0>(&v20, "Layer");
  gdc::DebugTreeValue::DebugTreeValue(v5, *(this + 594));
  gdc::DebugTreeNode::addProperty(v4, &v20, v5);
  if (v7 < 0)
  {
    operator delete(v6);
  }

  if (v21 < 0)
  {
    operator delete(v20);
  }
}

uint64_t *md::ImageLabelPart::debugString@<X0>(uint64_t *__return_ptr a1@<X8>, md::ImageLabelPart *this@<X0>)
{
  std::ostringstream::basic_ostringstream[abi:nn200100](&v10);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v10, "Icon:", 5);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v10, " layer=", 7);
  MEMORY[0x1B8C61C80](&v10, *(this + 594));
  v4 = v10;
  *(&v10 + *(v10 - 24) + 8) = *(&v10 + *(v10 - 24) + 8) & 0xFFFFFEFB | 4;
  *(&v12[0].__locale_ + *(v4 - 24)) = 1;
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v10, " alpha=", 7);
  std::ostream::operator<<();
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v10, " bright=", 8);
  std::ostream::operator<<();
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v10, " sat=", 5);
  std::ostream::operator<<();
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v10, " scale=", 7);
  std::ostream::operator<<();
  v5 = v10;
  *(&v10 + *(v10 - 24) + 8) = *(&v10 + *(v10 - 24) + 8) & 0xFFFFFEFB | 4;
  *(&v12[0].__locale_ + *(v5 - 24)) = 0;
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v10, " pad=", 5);
  std::ostream::operator<<();
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v10, " opad=", 6);
  std::ostream::operator<<();
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v10, " ovlp=", 6);
  MEMORY[0x1B8C61C50](&v10, *(this + 271));
  if (*(this + 272))
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v10, " ovlpGroups=", 12);
    MEMORY[0x1B8C61C90](&v10, *(this + 272));
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v10, "\n", 1);
  if ((v17 & 0x10) != 0)
  {
    v7 = v16;
    if (v16 < v13)
    {
      v16 = v13;
      v7 = v13;
    }

    locale = v12[4].__locale_;
  }

  else
  {
    if ((v17 & 8) == 0)
    {
      v6 = 0;
      *(a1 + 23) = 0;
      goto LABEL_16;
    }

    locale = v12[1].__locale_;
    v7 = v12[3].__locale_;
  }

  v6 = v7 - locale;
  if ((v7 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v6 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v6;
  if (v6)
  {
    memmove(a1, locale, v6);
  }

LABEL_16:
  *(a1 + v6) = 0;
  v10 = *MEMORY[0x1E69E54E8];
  *(&v10 + *(v10 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v11 = MEMORY[0x1E69E5548] + 16;
  if (v15 < 0)
  {
    operator delete(__p);
  }

  v11 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v12);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v18);
}

void sub_1B303DA3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  *(v27 + *(*MEMORY[0x1E69E54E8] - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&a12);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&a27);
  _Unwind_Resume(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls16GeocentricBoundsEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GeocentricBounds>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GeocentricBounds>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::GeocentricBounds>(v3);
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

        v13 = 0;
        v14 = *(v8 + 4 * v9 + 2);
        v15 = ((v10[5] - v10[4]) >> 2) - 1;
        v16 = v10[7];
        v17 = *(v16 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 36 * (v15 & 0x3F);
        v18 = *(v16 + ((v14 >> 3) & 0x1FF8)) + 36 * (v14 & 0x3F);
        *v25 = *v18;
        *&v25[16] = *(v18 + 16);
        v26 = *(v18 + 32);
        do
        {
          *(v18 + v13) = *(v17 + v13);
          v13 += 4;
        }

        while (v13 != 12);
        v19 = 0;
        v20 = (v17 + 12);
        do
        {
          *(v18 + 12 + v19) = *(v20 + v19);
          v19 += 4;
        }

        while (v19 != 12);
        v21 = 0;
        v22 = v18 + 24;
        v23 = (v17 + 24);
        do
        {
          *(v22 + v21) = *(v23 + v21);
          v21 += 4;
        }

        while (v21 != 12);
        *v17 = *v25;
        *(v17 + 8) = *&v25[8];
        *v20 = *&v25[12];
        *(v17 + 20) = *&v25[20];
        *v23 = *&v25[24];
        *(v17 + 32) = v26;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  v24 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v24 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GeocentricBounds>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GeocentricBounds>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::GeocentricBounds,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A421C0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::GeocentricBounds,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::GeocentricBounds,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A421E0;
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

void ecs2::storage<ecs2::Entity,md::ls::GeocentricBounds,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::GeocentricBounds,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::GeocentricBounds,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A421C0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::GeocentricBounds,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls20MeshRenderableBoundsEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderableBounds>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderableBounds>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::MeshRenderableBounds>(v3);
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

        v13 = 0;
        v14 = *(v8 + 4 * v9 + 2);
        v15 = ((v10[5] - v10[4]) >> 2) - 1;
        v16 = v10[7];
        v17 = *(v16 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v15 & 0x3F);
        v18 = *(v16 + ((v14 >> 3) & 0x1FF8)) + 24 * (v14 & 0x3F);
        *v22 = *v18;
        *&v22[16] = *(v18 + 16);
        do
        {
          *(v18 + v13) = *(v17 + v13);
          v13 += 4;
        }

        while (v13 != 12);
        v19 = 0;
        v20 = v18 + 12;
        v21 = (v17 + 12);
        do
        {
          *(v20 + v19) = *(v21 + v19);
          v19 += 4;
        }

        while (v19 != 12);
        *v17 = *v22;
        *(v17 + 8) = *&v22[8];
        *v21 = *&v22[12];
        *(v17 + 20) = *&v22[20];
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderableBounds>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderableBounds>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::MeshRenderableBounds,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A42318;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::MeshRenderableBounds,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::MeshRenderableBounds,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A42338;
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

void ecs2::storage<ecs2::Entity,md::ls::MeshRenderableBounds,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::MeshRenderableBounds,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::MeshRenderableBounds,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A42318;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::MeshRenderableBounds,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls41MeshRenderableTransformConstantDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderableTransformConstantDataHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderableTransformConstantDataHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::MeshRenderableTransformConstantDataHandle>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderableTransformConstantDataHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderableTransformConstantDataHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderableTransformConstantDataHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderableTransformConstantDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MeshRenderableTransformConstantDataHandle>();
    unk_1EB83B990 = 0x1DBDEAE2D8DF6302;
    qword_1EB83B998 = "md::ls::MeshRenderableTransformConstantDataHandle]";
    qword_1EB83B9A0 = 49;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::MeshRenderableTransformConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41C60;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::MeshRenderableTransformConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::MeshRenderableTransformConstantDataHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A41C80;
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

void ecs2::storage<ecs2::Entity,md::ls::MeshRenderableTransformConstantDataHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::MeshRenderableTransformConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::MeshRenderableTransformConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41C60;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::MeshRenderableTransformConstantDataHandle,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls19IsDynamicRenderableEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsDynamicRenderable>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsDynamicRenderable>(void)::metadata;
  IsDynamic = ecs2::BasicRegistry<void>::storage<md::ls::IsDynamicRenderable>(v3);
  v6 = v2 >> 22;
  v7 = IsDynamic[1];
  if (v2 >> 22 < (IsDynamic[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = IsDynamic;
        v11 = IsDynamic[31];
        v12 = IsDynamic[32];
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsDynamicRenderable>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsDynamicRenderable>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::IsDynamicRenderable,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A42430;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::IsDynamicRenderable,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::IsDynamicRenderable,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A42450;
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

void ecs2::storage<ecs2::Entity,md::ls::IsDynamicRenderable,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::IsDynamicRenderable,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::IsDynamicRenderable,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A42430;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::IsDynamicRenderable,64ul>::~storage(a1);
}

uint64_t std::__function::__func<md::ita::UpdateDynamicRenderables::operator()(ecs2::Query<md::ls::IsDynamicRenderable const&,md::ls::MeshRenderableTransformConstantDataHandle const&,md::ls::MeshRenderableBounds &,md::ls::RenderableVisibilityOptions &,md::ls::GeocentricBounds *>)::$_0,std::allocator<md::ita::UpdateDynamicRenderables::operator()(ecs2::Query<md::ls::IsDynamicRenderable const&,md::ls::MeshRenderableTransformConstantDataHandle const&,md::ls::MeshRenderableBounds &,md::ls::RenderableVisibilityOptions &,md::ls::GeocentricBounds *>)::$_0>,void ()(md::ls::IsDynamicRenderable const&,md::ls::MeshRenderableTransformConstantDataHandle const&,md::ls::MeshRenderableBounds &,md::ls::RenderableVisibilityOptions &,md::ls::GeocentricBounds *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A27980;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<md::ita::PrepareMeshRenderableBounds::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::GeocentricBounds const&,md::ls::SliceAssignmentT<(md::SliceType)0> const&,md::ls::MeshRenderableTransformConstantDataHandle const&,md::ls::MeshRenderableBounds const&,md::BoundData &>,ecs2::Query<md::ls::MeshRenderableID const&,md::ls::SliceAssignmentT<(md::SliceType)0> const&,md::ls::SharedRenderableDataHandle const&,md::ls::MeshRenderableBounds const&,md::BoundData &>)::$_1,std::allocator<md::ita::PrepareMeshRenderableBounds::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::GeocentricBounds const&,md::ls::SliceAssignmentT<(md::SliceType)0> const&,md::ls::MeshRenderableTransformConstantDataHandle const&,md::ls::MeshRenderableBounds const&,md::BoundData &>,ecs2::Query<md::ls::MeshRenderableID const&,md::ls::SliceAssignmentT<(md::SliceType)0> const&,md::ls::SharedRenderableDataHandle const&,md::ls::MeshRenderableBounds const&,md::BoundData &>)::$_1>,void ()(md::ls::MeshRenderableID const&,md::ls::SliceAssignmentT<(md::SliceType)0> const&,md::ls::SharedRenderableDataHandle const&,md::ls::MeshRenderableBounds const&,md::BoundData &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A27A78;
  a2[1] = v2;
  return result;
}

BOOL ecs2::ViewIterator<void,std::tuple<md::ls::MeshRenderableID const&,md::ls::GeocentricBounds const&,md::ls::SliceAssignmentT<(md::SliceType)0> const&,md::ls::MeshRenderableTransformConstantDataHandle const&,md::ls::MeshRenderableBounds const&,md::BoundData &>,std::tuple<>>::containsAll<md::ls::MeshRenderableID const,md::ls::GeocentricBounds const,md::ls::SliceAssignmentT<(md::SliceType)0> const,md::ls::MeshRenderableTransformConstantDataHandle const,md::ls::MeshRenderableBounds const,md::BoundData>(void *a1, unsigned __int16 a2, unsigned __int16 a3)
{
  v3 = a3 >> 6;
  v4 = *(a1[2] + 8);
  if (v3 < (*(a1[2] + 16) - v4) >> 3 && (v5 = *(v4 + 8 * v3)) != 0 && *(v5 + 4 * (a3 & 0x3F)) == a2 && (v6 = *(a1[3] + 8), v3 < (*(a1[3] + 16) - v6) >> 3) && (v8 = *(v6 + 8 * v3)) != 0 && *(v8 + 4 * (a3 & 0x3F)) == a2 && (v9 = *(a1[4] + 8), v3 < (*(a1[4] + 16) - v9) >> 3) && (v10 = *(v9 + 8 * v3)) != 0 && *(v10 + 4 * (a3 & 0x3F)) == a2 && (v11 = *(a1[5] + 8), v3 < (*(a1[5] + 16) - v11) >> 3) && (v12 = *(v11 + 8 * v3)) != 0 && *(v12 + 4 * (a3 & 0x3F)) == a2 && (v13 = *(a1[6] + 8), v3 < (*(a1[6] + 16) - v13) >> 3) && (v14 = *(v13 + 8 * v3)) != 0 && *(v14 + 4 * (a3 & 0x3F)) == a2 && (v15 = *(a1[7] + 8), v3 < (*(a1[7] + 16) - v15) >> 3) && (v16 = *(v15 + 8 * v3)) != 0)
  {
    return *(v16 + 4 * (a3 & 0x3F)) == a2;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<md::ita::PrepareMeshRenderableBounds::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::GeocentricBounds const&,md::ls::SliceAssignmentT<(md::SliceType)0> const&,md::ls::MeshRenderableTransformConstantDataHandle const&,md::ls::MeshRenderableBounds const&,md::BoundData &>,ecs2::Query<md::ls::MeshRenderableID const&,md::ls::SliceAssignmentT<(md::SliceType)0> const&,md::ls::SharedRenderableDataHandle const&,md::ls::MeshRenderableBounds const&,md::BoundData &>)::$_0,std::allocator<md::ita::PrepareMeshRenderableBounds::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::GeocentricBounds const&,md::ls::SliceAssignmentT<(md::SliceType)0> const&,md::ls::MeshRenderableTransformConstantDataHandle const&,md::ls::MeshRenderableBounds const&,md::BoundData &>,ecs2::Query<md::ls::MeshRenderableID const&,md::ls::SliceAssignmentT<(md::SliceType)0> const&,md::ls::SharedRenderableDataHandle const&,md::ls::MeshRenderableBounds const&,md::BoundData &>)::$_0>,void ()(md::ls::MeshRenderableID const&,md::ls::GeocentricBounds const&,md::ls::SliceAssignmentT<(md::SliceType)0> const&,md::ls::MeshRenderableTransformConstantDataHandle const&,md::ls::MeshRenderableBounds const&,md::BoundData &)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, uint64_t a7)
{
  md::VKMRenderResourcesStore::getConstantDataPtr<ggl::Tile::Transform>(&v15, **(a1 + 8), *a5);
  md::GeometryLogic::scaleGeocentricBoundsWithNormal(&v11, a6, a3, a3 + 24, v15);
  *a7 = v11;
  *(a7 + 8) = v12;
  *(a7 + 12) = v13;
  *(a7 + 20) = v14;
  v10 = v16;
  if (v16)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }
}

uint64_t std::__function::__func<md::ita::PrepareMeshRenderableBounds::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::GeocentricBounds const&,md::ls::SliceAssignmentT<(md::SliceType)0> const&,md::ls::MeshRenderableTransformConstantDataHandle const&,md::ls::MeshRenderableBounds const&,md::BoundData &>,ecs2::Query<md::ls::MeshRenderableID const&,md::ls::SliceAssignmentT<(md::SliceType)0> const&,md::ls::SharedRenderableDataHandle const&,md::ls::MeshRenderableBounds const&,md::BoundData &>)::$_0,std::allocator<md::ita::PrepareMeshRenderableBounds::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::GeocentricBounds const&,md::ls::SliceAssignmentT<(md::SliceType)0> const&,md::ls::MeshRenderableTransformConstantDataHandle const&,md::ls::MeshRenderableBounds const&,md::BoundData &>,ecs2::Query<md::ls::MeshRenderableID const&,md::ls::SliceAssignmentT<(md::SliceType)0> const&,md::ls::SharedRenderableDataHandle const&,md::ls::MeshRenderableBounds const&,md::BoundData &>)::$_0>,void ()(md::ls::MeshRenderableID const&,md::ls::GeocentricBounds const&,md::ls::SliceAssignmentT<(md::SliceType)0> const&,md::ls::MeshRenderableTransformConstantDataHandle const&,md::ls::MeshRenderableBounds const&,md::BoundData &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A27A30;
  a2[1] = v2;
  return result;
}

void *std::__tree<md::FrameGraphLogicalResource *,md::FrameGraphLogicalResourceLessThan,std::allocator<md::FrameGraphLogicalResource *>>::__find_equal<md::FrameGraphLogicalResource *>(uint64_t a1, void *a2, unsigned __int8 *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    while (1)
    {
      while (1)
      {
        v7 = v4;
        v8 = v4[4];
        v9 = *v8;
        if (v6 == v9)
        {
          break;
        }

        if (v6 >= v9)
        {
          if (v9 >= v6)
          {
            goto LABEL_14;
          }

          goto LABEL_11;
        }

LABEL_8:
        v4 = *v7;
        result = v7;
        if (!*v7)
        {
          goto LABEL_14;
        }
      }

      if (*(a3 + 3) + *(a3 + 5) < *(v8 + 3) + *(v8 + 5))
      {
        goto LABEL_8;
      }

      if (*(v8 + 3) + *(v8 + 5) >= *(a3 + 3) + *(a3 + 5))
      {
        goto LABEL_14;
      }

LABEL_11:
      result = v7 + 1;
      v4 = v7[1];
      if (!v4)
      {
        goto LABEL_14;
      }
    }
  }

  v7 = result;
LABEL_14:
  *a2 = v7;
  return result;
}

void md::mun::MetadataResource::~MetadataResource(md::mun::MetadataResource *this)
{
  md::mun::MetadataResource::~MetadataResource(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A27AC0;
  v3 = (this + 216);
  std::vector<md::mun::StorefrontBundle>::__destroy_vector::operator()[abi:nn200100](&v3);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 176);
  v3 = (this + 152);
  std::vector<md::mun::CollectionPoint>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(this + 2);
  if (v2 != *(this + 4))
  {
    free(v2);
  }
}

void md::ARVIOLocationProvider::update(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, float32x2_t **a5)
{
  v71 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = objc_msgSend_camera(v8);
  md::MDARCamera::MDARCamera(&v69, v9);

  v10 = v70;
  [v10 transform];
  v53 = v11;
  v65 = vcvtq_f64_f32(*v12.i8);
  v66[0] = vcvtq_f64_f32(vzip1_s32(*&vextq_s8(v12, v12, 8uLL), *v13.i8));
  v66[1] = vcvtq_f64_f32(*&vextq_s8(v13, v13, 4uLL));
  v67 = vcvtq_f64_f32(v14);
  v68 = v15;
  gm::quaternionFromRotationMatrix<double>(v62.f64, v65.f64);
  v57 = vcvtq_f64_f32(*&v53);
  v58 = *(&v53 + 2);
  v59 = v62;
  v60 = v63;
  v61 = v64;

  gm::Quaternion<double>::operator*(&v65, a4, &v59);
  v16 = gm::Quaternion<double>::operator*(a4, &v57);
  v17 = *(&v66[0] + 1);
  v18 = v65;
  *(a1 + 48) = v16;
  *(a1 + 72) = v18;
  *(a1 + 88) = *&v66[0];
  *(a1 + 96) = v17;
  *(a1 + 56) = v19;
  *(a1 + 64) = v20;
  v21 = *a5;
  v22 = a5[1];
  if (*a5 == v22)
  {
    v37 = 0.0;
    v35 = 0.0;
    v36 = 0.0;
  }

  else
  {
    v23 = 0.0;
    v24 = 0.0;
    v25 = 0.0;
    do
    {
      if (v21)
      {
        v26 = v21[2].i32[0];
        if (v26 == 1)
        {
          v27 = v21;
        }

        else
        {
          v27 = 0;
        }

        if (v26)
        {
          if (v27)
          {
            v25 = *v27 * 10.0;
          }
        }

        else
        {
          v28 = vsub_f32(v21[1], *v21);
          v29 = 1.0 / sqrtf(vaddv_f32(vmul_f32(v28, v28)));
          v30 = v29 * v28.f32[0];
          v28.f32[0] = vmuls_lane_f32(v29, v28, 1);
          v31 = fabsf(v30) > 0.85;
          v32 = fabsf(v28.f32[0]) <= 0.85;
          v33 = v30 * 0.75;
          v34 = v28.f32[0] * 0.75;
          if (v32)
          {
            v23 = v33;
          }

          else
          {
            v23 = 0.0;
          }

          if (v32 && v31)
          {
            v24 = 0.0;
          }

          else
          {
            v24 = v34;
          }
        }
      }

      v21 += 3;
    }

    while (v21 != v22);
    v35 = v24;
    v36 = v23;
    v37 = v25;
  }

  v38 = *(a1 + 32) * 0.0174532925;
  v39 = *(a1 + 40);
  v40 = __sincos_stret(*(a1 + 24) * 0.0174532925);
  v41 = 6378137.0 / sqrt(v40.__sinval * v40.__sinval * -0.00669437999 + 1.0);
  v42 = (v41 + v39) * v40.__cosval;
  v43 = __sincos_stret(v38);
  v56[0] = v42 * v43.__cosval;
  v56[1] = v42 * v43.__sinval;
  v56[2] = (v39 + v41 * 0.99330562) * v40.__sinval;
  gdc::CameraFrame<geo::Radians,double>::createLocalEcefBasis(v65.f64, v56);
  for (i = 0; i != 3; ++i)
  {
    v62.f64[i] = v67.f64[i] * v35;
  }

  v45 = 0;
  v46 = a1 + 104;
  do
  {
    *(v46 + v45 * 8) = *(v46 + v45 * 8) + v62.f64[v45];
    ++v45;
  }

  while (v45 != 3);
  for (j = 0; j != 3; ++j)
  {
    v62.f64[j] = v65.f64[j] * v36;
  }

  for (k = 0; k != 3; ++k)
  {
    *(v46 + k * 8) = *(v46 + k * 8) + v62.f64[k];
  }

  for (m = 0; m != 3; ++m)
  {
    v62.f64[m] = *(v66 + m * 8 + 8) * v37;
  }

  for (n = 0; n != 3; ++n)
  {
    *(v46 + n * 8) = *(v46 + n * 8) + v62.f64[n];
  }

  for (ii = 0; ii != 3; ++ii)
  {
    v62.f64[ii] = *(a1 + 48 + ii * 8) + v56[ii];
  }

  v52 = 0;
  v54 = v62;
  v55 = v63;
  do
  {
    v62.f64[v52] = *(v46 + v52 * 8) + v54.f64[v52];
    ++v52;
  }

  while (v52 != 3);
  geo::Geocentric<double>::toCoordinate3D<geo::Degrees,double>(v62.f64, &v54);
  *(a1 + 128) = v54;
  *(a1 + 144) = v55;
  v69 = &unk_1F2A4EB10;
}

void sub_1B303F478(_Unwind_Exception *a1)
{
  *(v3 - 144) = &unk_1F2A4EB10;

  _Unwind_Resume(a1);
}

void md::Logic<md::LayerDataLogic,md::LayerDataLogicContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2, v3);
}

uint64_t md::Logic<md::LayerDataLogic,md::LayerDataLogicContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  if (*(a3 + 8) == 0x7851AF310F49C988 && *(a3 + 32))
  {
    *&v6[2] = v4;
    v7 = v5;
    return (*(*result + 160))(result, a2, v6);
  }

  else
  {
    a4[23] = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::LayerDataLogicContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::LayerDataLogicContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A27C18;
  v1 = a1[4];
  if (v1)
  {
    MEMORY[0x1B8C62190](v1, 0x20C4093837F09);
  }

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::LayerDataLogicContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A27C18;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0x20C4093837F09);
  }

  return a1;
}

void md::LayerDataLogic::~LayerDataLogic(md::LayerDataLogic *this)
{
  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));

  JUMPOUT(0x1B8C62190);
}

{
  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

uint64_t md::TransitNode::parentID(md::TransitNode *this)
{
  v1 = *(*(this + 1) + 256);
  if (v1)
  {
    return *v1;
  }

  else
  {
    return 0;
  }
}

uint64_t md::TransitNode::debugString@<X0>(md::TransitNode *this@<X0>, int a2@<W1>, void *a3@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:nn200100](&v21);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v21, "\n <node>", 8);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v21, " drawAsXfer:", 12);
  v6 = MEMORY[0x1B8C61C80](&v21, *(*(this + 1) + 320));
  v7 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v6, " nodeIconType:", 14);
  v8 = MEMORY[0x1B8C61C80](v7, *(this + 60));
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v8, ", nodeType:", 11);
  v9 = (*(*this + 56))(this);
  if (v9 > 2)
  {
    v10 = "";
  }

  else
  {
    v10 = off_1E7B38D98[v9];
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v10);
  if ((v20 & 0x80u) == 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  if ((v20 & 0x80u) == 0)
  {
    v12 = v20;
  }

  else
  {
    v12 = __p[1];
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v8, v11, v12);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v8, ", tileZ:", 8);
  MEMORY[0x1B8C61C80](v8, *(this + 62));
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v21, "\n   isActive:", 13);
  v13 = MEMORY[0x1B8C61C80](&v21, *(this + 64) == 1);
  v14 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v13, " isSelected:", 12);
  MEMORY[0x1B8C61C80](v14, *(this + 63));
  if (a2)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v21, "\n  TransitLineIDs:", 18);
    v15 = *(this + 4);
    for (i = *(this + 5); v15 != i; ++v15)
    {
      v17 = *v15;
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v21, "\n   ", 4);
      MEMORY[0x1B8C61CF0](&v21, *(*(v17 + 16) + 40));
    }
  }

  std::ostringstream::str[abi:nn200100](a3, &v21);
  v21 = *MEMORY[0x1E69E54E8];
  *(&v21 + *(v21 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v22 = MEMORY[0x1E69E5548] + 16;
  if (v24 < 0)
  {
    operator delete(v23[7].__locale_);
  }

  v22 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v23);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v25);
}

void sub_1B303FB78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  a15 = *MEMORY[0x1E69E54E8];
  *(&a15 + *(a15 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  a16 = MEMORY[0x1E69E5548] + 16;
  if (a29 < 0)
  {
    operator delete(__p);
  }

  a16 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a17);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&a32);
  _Unwind_Resume(a1);
}

BOOL md::TransitOrphanNode::initializeExternalIcon(uint64_t a1, float32x2_t *a2, unsigned __int8 *a3, uint64_t a4)
{
  v6 = *(a1 + 60);
  a2[32].i8[4] = *(a1 + 60);
  a2[8].i8[6] = v6 != 2;
  a2[30].i32[1] = *(a3 + 8);
  v7 = md::TransitNodeTextureAtlas::infoForIcon(a4, v6, a3[1], *a3, 0);
  v8 = v7;
  if (v7)
  {
    md::TransitNodeExternalIcon::setDotTextureRect(a2, v7, (v7 + 8), (v7 + 24));
    std::vector<md::TransitNodeExternalIcon::DotInfo>::resize(&a2[13], 1uLL);
    v9 = a2[13];
    if (*(*(a1 + 8) + 320) == 1)
    {
      v10 = &geo::white;
    }

    else
    {
      v11 = *(a1 + 32);
      if (v11 != *(a1 + 40))
      {
        v12 = vdupq_n_s32(0x437F0000u);
        v13 = *(*(*v11 + 64) + 32);
LABEL_8:
        v14 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(v13, v12)));
        *(*&v9 + 8) = vuzp1_s8(v14, v14).u32[0];
        md::TransitNodeExternalIcon::updateRadius(a2);
        return v8 != 0;
      }

      v10 = &kDefaultOrphanNodeColor;
    }

    geo::Color<float,4,(geo::ColorSpace)0>::Color<(geo::ColorSpace)2,int,void>(&v16, v10);
    v12 = vdupq_n_s32(0x437F0000u);
    v13 = v16;
    goto LABEL_8;
  }

  return v8 != 0;
}

void std::vector<md::TransitNodeExternalIcon::DotInfo>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 2);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 20 * a2;
  }

  else
  {
    v7 = a1[2];
    if (0xCCCCCCCCCCCCCCCDLL * ((v7 - v4) >> 2) < v6)
    {
      if (a2 <= 0xCCCCCCCCCCCCCCCLL)
      {
        v8 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - v3) >> 2);
        v9 = 2 * v8;
        if (2 * v8 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x666666666666666)
        {
          v10 = 0xCCCCCCCCCCCCCCCLL;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<md::TransitNodeExternalIcon::DotInfo>>(v10);
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v12 = 20 * ((20 * v6 - 20) / 0x14) + 20;
    bzero(a1[1], v12);
    v11 = v4 + v12;
  }

  a1[1] = v11;
}

void md::TransitOrphanNode::~TransitOrphanNode(md::TransitOrphanNode *this)
{
  *this = &unk_1F2A27C90;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0x1060C4067290D6BLL);
  }

  md::TransitNode::~TransitNode(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A27C90;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0x1060C4067290D6BLL);
  }

  md::TransitNode::~TransitNode(this);
}

void md::TransitNode::~TransitNode(md::TransitNode *this)
{
  *this = &unk_1F2A27C40;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

void md::TransitConnectedNode::didUpdateTransitLinks(uint64_t this, int a2)
{
  v2 = *(this + 124);
  if ((v2 + 1) > 1)
  {
    v3 = v2 + 1;
  }

  else
  {
    v3 = 1;
  }

  *(this + 124) = v3;
  if (a2)
  {
    v5 = *(this + 128);
    if ((v5 + 1) > 1)
    {
      v6 = v5 + 1;
    }

    else
    {
      v6 = 1;
    }

    *(this + 128) = v6;
    if (*(this + 60) || (md::TransitConnectedNode::createDots(this), *(this + 60)))
    {
      v7 = *(this + 96);
      v8 = v7[3];
      if (v8 == v7 + 4)
      {
        v9 = 0;
      }

      else
      {
        v9 = 0;
        do
        {
          if (v9 <= (*(v8[4] + 112) - *(v8[4] + 104)) >> 3)
          {
            v9 = (*(v8[4] + 112) - *(v8[4] + 104)) >> 3;
          }

          v10 = v8[1];
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
              v11 = v8[2];
              v12 = *v11 == v8;
              v8 = v11;
            }

            while (!v12);
          }

          v8 = v11;
        }

        while (v11 != v7 + 4);
      }

      v13 = v7[6];
      v14 = v7 + 7;
      if (v13 != v14)
      {
        do
        {
          if (v9 <= (*(v13[4] + 112) - *(v13[4] + 104)) >> 3)
          {
            v9 = (*(v13[4] + 112) - *(v13[4] + 104)) >> 3;
          }

          v15 = v13[1];
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
              v16 = v13[2];
              v12 = *v16 == v13;
              v13 = v16;
            }

            while (!v12);
          }

          v13 = v16;
        }

        while (v16 != v14);
      }
    }

    else
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 80) - *(this + 72)) >> 3);
    }

    if (v9 != 2 && v9 != 1)
    {
      if (!v9)
      {
        *(this + 61) = 0;
        return;
      }

      if (v9 > 4)
      {
        LOBYTE(v9) = 4;
      }

      else
      {
        LOBYTE(v9) = 3;
      }
    }

    *(this + 61) = v9;
  }
}

void md::TransitConnectedNode::createDots(md::TransitConnectedNode *this)
{
  *(this + 10) = *(this + 9);
  if (*(this + 4) != *(this + 5))
  {
    operator new();
  }

  v1 = *(this + 12);
  v2 = v1[3];
  v3 = v1 + 4;
  if (v2 != v1 + 4)
  {
    do
    {
      v4 = v2[4];
        ;
      }

      v6 = v2[1];
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
          v7 = v2[2];
          v8 = *v7 == v2;
          v2 = v7;
        }

        while (!v8);
      }

      v2 = v7;
    }

    while (v7 != v3);
    v1 = *(this + 12);
  }

  v9 = v1[6];
  v10 = v1 + 7;
  if (v9 != v1 + 7)
  {
    do
    {
      v11 = v9[4];
        ;
      }

      v13 = v9[1];
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
          v14 = v9[2];
          v8 = *v14 == v9;
          v9 = v14;
        }

        while (!v8);
      }

      v9 = v14;
    }

    while (v14 != v10);
  }

  v15 = *(this + 9);
  v16 = *(this + 10);
  if (v15 == v16)
  {
    v17 = *(this + 11);
    if (v15 >= v17)
    {
      v18 = 0xAAAAAAAAAAAAAAABLL * ((v17 - v15) >> 3);
      v19 = 2 * v18;
      if (2 * v18 <= 1)
      {
        v19 = 1;
      }

      if (v18 >= 0x555555555555555)
      {
        v20 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v20 = v19;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<md::TransitNodeDot>>(v20);
    }

    *v16 = 0;
    *(v16 + 8) = 0;
    *(v16 + 16) = 0;
    v16 += 24;
    *(this + 10) = v16;
    v15 = *(this + 9);
  }

  *(this + 14) = 0;
  while (v15 != v16)
  {
    if (*v15)
    {
      *(this + 28) = *v15;
      *(this + 29) = v15[1];
      break;
    }

    v15 += 6;
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(0);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(0);
}

void sub_1B30409A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17)
{
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(a14);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(a17);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<md::TransitNodeDot>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t *std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(uint64_t *result, unsigned int a2, _DWORD *a3)
{
  v3 = result[1];
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 28);
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= a2)
    {
      return result;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

uint64_t md::TransitConnectedNode::updateExternalIcon(md::TransitConnectedNode *this, md::TransitNodeExternalIcon *a2)
{
  if (*(this + 64) != 1)
  {
    return 0;
  }

  v4 = *(a2 + 260);
  if (v4 != *(this + 60))
  {
    return 1;
  }

  v5 = *(this + 31);
  if (*(a2 + 59) == v5)
  {
    return 0;
  }

  *(a2 + 59) = v5;
  if (v4 != 2)
  {
    if (v4 == 1)
    {
      if (*(this + 136) != 1)
      {
        return 0;
      }

      md::TransitConnectedNode::updateMaxLinkOffset(this);
      if (*(this + 30) <= 4.0)
      {
        return 0;
      }
    }

    else
    {
      if (v4)
      {
        return 0;
      }

      if (*(a2 + 60) == *(this + 32))
      {
        v7 = *(this + 9);
        v8 = *(this + 10);
        v9 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v7) >> 3);
        v10 = *(a2 + 13);
        if (v9 == 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 14) - v10) >> 2))
        {
          if (v8 != v7)
          {
            v11 = 0;
            v12 = *(this + 12);
            v13 = (v7 + 16);
            do
            {
              v14 = *v13;
              v15 = 0.0;
              if (*v13)
              {
                if (v12)
                {
                  if ((*(v14 + 55) & 1) == 0)
                  {
                    v16 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v12 + 168), v14);
                    if (v16)
                    {
                      v15 = v16[7];
                    }
                  }
                }
              }

              *(v13 - 2) = v15;
              v17 = *(this + 14) * v15;
              v10[1].f32[1] = v17;
              *v10 = vmul_n_f32(*(v13 - 2), v17);
              v10 = (v10 + 20);
              ++v11;
              v13 += 3;
            }

            while (v11 < v9);
          }

          md::TransitNodeExternalIcon::updateRadius(a2);
          return 0;
        }
      }
    }

    return 1;
  }

  md::TransitConnectedNode::updateMaxLinkOffset(this);
  v19 = *(this + 30);
  v20 = v19 < 2.0;
  v21 = *(this + 14) * v19;
  v22 = v21;
  v6 = v20;
  *(a2 + 63) = v22;
  v23 = v22 / -2;
  v24 = *(a2 + 62);
  v25 = -(v24 + v22 / 2);
  *(a2 + 32) = v25;
  *(a2 + 34) = v23;
  *(a2 + 36) = v23;
  *(a2 + 38) = v25;
  v26 = v23 + truncf(v21);
  *(a2 + 40) = v26;
  v27 = v26 + v24;
  *(a2 + 42) = v27;
  *(a2 + 44) = v27;
  *(a2 + 46) = v26;
  md::TransitNodeExternalIcon::updateRadius(a2);
  return v6;
}

uint64_t md::TransitConnectedNode::updateMaxLinkOffset(uint64_t this)
{
  v1 = *(this + 124);
  if (*(this + 132) != v1)
  {
    *(this + 132) = v1;
    v2 = *(this + 96);
    v3 = v2[3];
    v4 = 0.0;
    if (v3 != v2 + 4)
    {
      do
      {
        v5 = v3[1];
        v6 = v3;
        if (v5)
        {
          do
          {
            v7 = v5;
            v5 = *v5;
          }

          while (v5);
        }

        else
        {
          do
          {
            v7 = v6[2];
            v8 = *v7 == v6;
            v6 = v7;
          }

          while (!v8);
        }

        v4 = fmaxf(v4, *(v3[4] + 152));
        v3 = v7;
      }

      while (v7 != v2 + 4);
    }

    v9 = v2[6];
    v10 = v2 + 7;
    if (v9 != v10)
    {
      do
      {
        v11 = v9[1];
        v12 = v9;
        if (v11)
        {
          do
          {
            v13 = v11;
            v11 = *v11;
          }

          while (v11);
        }

        else
        {
          do
          {
            v13 = v12[2];
            v8 = *v13 == v12;
            v12 = v13;
          }

          while (!v8);
        }

        v4 = fmaxf(v4, *(v9[4] + 152));
        v9 = v13;
      }

      while (v13 != v10);
    }

    *(this + 120) = v4;
  }

  return this;
}

uint64_t md::TransitConnectedNode::initializeExternalIcon(md::TransitConnectedNode *this, float32x2_t *a2, unsigned __int8 *a3, uint64_t a4)
{
  if (*(*(this + 1) + 320))
  {
    if (*(this + 136) == 1)
    {
      md::TransitConnectedNode::updateMaxLinkOffset(this);
      if (*(this + 30) < 3.0)
      {
        v8 = 1;
      }

      else
      {
        v8 = 2;
      }
    }

    else
    {
      v8 = 1;
    }

    *(this + 60) = v8;
  }

  else
  {
    v8 = *(this + 60);
  }

  a2[32].i8[4] = v8;
  a2[8].i8[6] = v8 != 2;
  a2[30].i32[0] = *(this + 32);
  v9 = md::TransitNodeTextureAtlas::infoForIcon(a4, v8, a3[1], *a3, 0);
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  if (*(this + 60) == 2)
  {
    v11 = *(v9 + 32);
    v12 = *(v9 + 8) - v11;
    v13 = v12 / 2;
    v14 = *v9;
    v15 = *(v9 + 4);
    a2[24].i8[0] = *v9;
    a2[24].i8[1] = v15;
    v16 = v14 + v12 / 2;
    a2[24].i8[2] = v16;
    a2[24].i8[3] = v15;
    v17 = v15 + *(v9 + 12);
    a2[24].i8[4] = v16;
    a2[24].i8[5] = v17;
    v18 = v15 + *(v9 + 12);
    a2[24].i8[6] = v14;
    a2[24].i8[7] = v18;
    v19 = v11 + v12 / 2;
    v20 = &a2[25] + 1;
    v21 = 4;
    do
    {
      v22 = *(v20 - 8);
      *(v20 - 1) = *(v20 - 9) + v19;
      *v20 = v22;
      v20 += 2;
      --v21;
    }

    while (v21);
    v23 = *(v9 + 12);
    v24 = v23 / -2;
    v25 = v23 - v23 / 2;
    a2[16].f32[1] = v24;
    a2[17].f32[1] = v24;
    a2[18].f32[1] = v25;
    a2[19].f32[1] = v25;
    a2[20].f32[1] = v24;
    a2[21].f32[1] = v24;
    a2[22].f32[1] = v25;
    a2[23].f32[1] = v25;
    a2[31].i32[0] = v13;
    v26 = a2[30].f32[1];
    if (v26 != 1.0)
    {
      v27 = 0;
      a2[31].i32[0] = (v26 * v13);
      do
      {
        a2[v27 + 16].f32[1] = a2[v27 + 16].f32[1] * a2[30].f32[1];
        ++v27;
      }

      while (v27 != 8);
    }

    v28 = md::TransitNodeTextureAtlas::infoForIcon(a4, *(this + 60), a3[1], *a3, 1);
    if (v28 && *(v10 + 8) == *(v28 + 8))
    {
      a2[32].i8[6] = 1;
      a2[28].i32[1] = *(v28 + 16);
      a2[29].i32[0] = *(v28 + 20);
      v29 = *(v28 + 4) - a2[24].i8[1];
      a2[26].i8[0] = *v28 - a2[24].i8[0];
      a2[26].i8[1] = v29;
    }
  }

  else
  {
    md::TransitNodeExternalIcon::setDotTextureRect(a2, v9, (v9 + 8), (v9 + 24));
  }

  v30 = *(this + 60);
  if (!*(this + 60))
  {
    v34 = *(this + 10) - *(this + 9);
    if (v34)
    {
      v35 = 0xAAAAAAAAAAAAAAABLL * (v34 >> 3);
      a2[27].i32[1] = *(this + 28);
      a2[28].i32[0] = *(this + 29);
      std::vector<md::TransitNodeExternalIcon::DotInfo>::resize(&a2[13], v35);
      v36 = 0;
      if (v35 <= 1)
      {
        v37 = 1;
      }

      else
      {
        v37 = v35;
      }

      v38 = 16;
      v44 = vdupq_n_s32(0x437F0000u);
      do
      {
        v39 = *(*(this + 9) + v38);
        if (v39)
        {
          v40 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(*(md::TransitLine::resolveStyleIfNecessary(*v39, *(v39 + 52)) + 16), v44)));
          *(*&a2[13] + v36 + 8) = vuzp1_s8(v40, v40).u32[0];
          v41 = *(**(*(this + 9) + v38) + 88);
        }

        else
        {
          geo::Color<float,4,(geo::ColorSpace)0>::Color<(geo::ColorSpace)2,int,void>(&v45, &kDefaultOrphanNodeColor);
          v41 = 0;
          v42 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(v45, v44)));
          *(*&a2[13] + v36 + 8) = vuzp1_s8(v42, v42).u32[0];
        }

        *(*&a2[13] + v36 + 16) = v41;
        v36 += 20;
        v38 += 24;
        --v37;
      }

      while (v37);
      goto LABEL_34;
    }

    return 0;
  }

  if (v30 != 1)
  {
    if (v30 != 2)
    {
      return 1;
    }

    a2[26].i32[1] = *(this + 26);
    a2[27].i32[0] = *(this + 27);
LABEL_34:
    (*(*this + 40))(this, a2);
    return 1;
  }

  v31 = 1;
  std::vector<md::TransitNodeExternalIcon::DotInfo>::resize(&a2[13], 1uLL);
  v32 = a2[13];
  geo::Color<float,4,(geo::ColorSpace)0>::Color<(geo::ColorSpace)2,int,void>(&v45, &geo::white);
  v33 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(v45, vdupq_n_s32(0x437F0000u))));
  *(*&v32 + 8) = vuzp1_s8(v33, v33).u32[0];
  md::TransitNodeExternalIcon::updateRadius(a2);
  return v31;
}

uint64_t md::TransitConnectedNode::debugString@<X0>(md::TransitConnectedNode *this@<X0>, int a2@<W1>, void *a3@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:nn200100](&v51);
  md::TransitNode::debugString(this, a2, __p);
  if ((v50 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v50 & 0x80u) == 0)
  {
    v7 = v50;
  }

  else
  {
    v7 = __p[1];
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v51, v6, v7);
  if (v50 < 0)
  {
    operator delete(__p[0]);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v51, " dots:", 6);
  MEMORY[0x1B8C61C80](&v51, -1431655765 * ((*(this + 10) - *(this + 9)) >> 3));
  v8 = *(this + 12);
  if (v8 && a2)
  {
    v9 = [MEMORY[0x1E696AD60] stringWithFormat:@"\n <junction>"];
    v44 = a3;
    v45 = v8;
    v10 = *(v8 + 24);
    v46 = (v8 + 32);
    if (v10 == (v8 + 32))
    {
      v11 = 0;
    }

    else
    {
      v11 = 0;
      do
      {
        v12 = v10[4];
        v47 = v11;
        [v9 appendFormat:@"\n   IncomingLink[%i]", v11];
        v13 = *(v12 + 80);
        v14 = *(v12 + 88);
        if (v13 != v14)
        {
          v15 = 0;
          do
          {
            v16 = *(*v13 + 8);
            v17 = *(*(v16 + 16) + 40);
            v18 = md::TransitLine::debugSystemName(v16);
            v19 = *v13 + 8;
            v20 = *(*(*v19 + 16) + 16);
            if (!*v13)
            {
              v19 = 0;
            }

            ShouldDrawToEndPoint = geo::codec::transitLinkGetShouldDrawToEndPoint(**(v19 + 8), *(v19 + 36));
            if (*v13)
            {
              v22 = *v13 + 8;
            }

            else
            {
              v22 = 0;
            }

            [v9 appendFormat:@"\n    line[uid:%llu, %i, %s, %s] draw[TO:%i, from:%i]", v17, v15, v18, v20, ShouldDrawToEndPoint, geo::codec::transitLinkGetShouldDrawFromEndPoint(**(v22 + 8), *(v22 + 36))];
            v15 = (v15 + 1);
            v13 += 8;
          }

          while (v13 != v14);
        }

        v23 = v10[1];
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
            v24 = v10[2];
            v25 = *v24 == v10;
            v10 = v24;
          }

          while (!v25);
        }

        v11 = (v47 + 1);
        v10 = v24;
      }

      while (v24 != v46);
    }

    v26 = *(v45 + 48);
    if (v26 != (v45 + 56))
    {
      v27 = v11;
      do
      {
        v28 = v26[4];
        v48 = v27;
        [v9 appendFormat:@"\n   OutgoingLink[%i]", v27];
        v29 = *(v28 + 80);
        v30 = *(v28 + 88);
        if (v29 != v30)
        {
          v31 = 0;
          do
          {
            v32 = *(*v29 + 8);
            v33 = *(*(v32 + 16) + 40);
            v34 = md::TransitLine::debugSystemName(v32);
            v35 = *v29 + 8;
            v36 = *(*(*v35 + 16) + 16);
            if (!*v29)
            {
              v35 = 0;
            }

            v37 = geo::codec::transitLinkGetShouldDrawToEndPoint(**(v35 + 8), *(v35 + 36));
            if (*v29)
            {
              v38 = *v29 + 8;
            }

            else
            {
              v38 = 0;
            }

            [v9 appendFormat:@"\n    line[uid:%llu, %i, %s, %s] draw[to:%i, FROM:%i]", v33, v31, v34, v36, v37, geo::codec::transitLinkGetShouldDrawFromEndPoint(**(v38 + 8), *(v38 + 36))];
            v31 = (v31 + 1);
            v29 += 8;
          }

          while (v29 != v30);
        }

        v39 = v26[1];
        if (v39)
        {
          do
          {
            v40 = v39;
            v39 = *v39;
          }

          while (v39);
        }

        else
        {
          do
          {
            v40 = v26[2];
            v25 = *v40 == v26;
            v26 = v40;
          }

          while (!v25);
        }

        v27 = (v48 + 1);
        v26 = v40;
      }

      while (v40 != (v45 + 56));
    }

    v41 = [v9 UTF8String];
    v42 = strlen(v41);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v51, v41, v42);

    a3 = v44;
  }

  std::ostringstream::str[abi:nn200100](a3, &v51);
  v51 = *MEMORY[0x1E69E54E8];
  *(&v51 + *(v51 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v52 = MEMORY[0x1E69E5548] + 16;
  if (v54 < 0)
  {
    operator delete(v53[7].__locale_);
  }

  v52 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v53);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v55);
}

void sub_1B3041624(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  a26 = *MEMORY[0x1E69E54E8];
  *(&a26 + *(a26 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  a27 = MEMORY[0x1E69E5548] + 16;
  if (a40 < 0)
  {
    operator delete(__p);
  }

  a27 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a28);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&a43);
  _Unwind_Resume(a1);
}

void md::TransitConnectedNode::~TransitConnectedNode(md::TransitConnectedNode *this)
{
  *this = &unk_1F2A27CE0;
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  md::TransitNode::~TransitNode(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A27CE0;
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  md::TransitNode::~TransitNode(this);
}

uint64_t md::TransitNode::TransitNode(uint64_t a1, uint64_t a2, void *a3, float a4)
{
  *a1 = &unk_1F2A27C40;
  *(a1 + 8) = 0;
  v6 = a1 + 8;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (a2)
  {
    *v6 = a2;
    v9 = *(a2 + 8);
    if (v9)
    {
      v9 = std::__shared_weak_count::lock(v9);
      v10 = v9;
      if (v9)
      {
        v9 = *a2;
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = *(a1 + 24);
    *(a1 + 16) = v9;
    *(a1 + 24) = v10;
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v11);
      v9 = *(a1 + 16);
    }

    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    v12 = (a1 + 32);
    *(a1 + 48) = 0;
    *(a1 + 56) = a4;
    *(a1 + 60) = 5;
    *(a1 + 64) = 0;
    if (v9)
    {
      *(a1 + 62) = *(geo::codec::VectorTile::key(v9) + 1) & 0x3F;
      if (*(a2 + 276))
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<md::MuninRoadEdge const*>>(*(a2 + 276));
      }

      for (i = 0; i < *(*v6 + 276); ++i)
      {
        v14 = *(*(*(a1 + 16) + 1608) + 8 * (i + *(*v6 + 288)));
        if (v14 < 0x4EC4EC4EC4EC4EC5 * ((a3[1] - *a3) >> 3))
        {
          v15 = *a3 + 104 * v14;
          v17 = *(a1 + 40);
          v16 = *(a1 + 48);
          if (v17 >= v16)
          {
            v19 = (v17 - *v12) >> 3;
            if ((v19 + 1) >> 61)
            {
              std::__throw_bad_array_new_length[abi:nn200100]();
            }

            v20 = v16 - *v12;
            v21 = v20 >> 2;
            if (v20 >> 2 <= (v19 + 1))
            {
              v21 = v19 + 1;
            }

            if (v20 >= 0x7FFFFFFFFFFFFFF8)
            {
              v22 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v22 = v21;
            }

            if (v22)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<md::MuninRoadEdge const*>>(v22);
            }

            v23 = (8 * v19);
            *v23 = v15;
            v18 = 8 * v19 + 8;
            v24 = *(a1 + 32);
            v25 = *(a1 + 40) - v24;
            v26 = v23 - v25;
            memcpy(v23 - v25, v24, v25);
            v27 = *(a1 + 32);
            *(a1 + 32) = v26;
            *(a1 + 40) = v18;
            *(a1 + 48) = 0;
            if (v27)
            {
              operator delete(v27);
            }
          }

          else
          {
            *v17 = v15;
            v18 = (v17 + 1);
          }

          *(a1 + 40) = v18;
        }
      }
    }
  }

  else
  {
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = a4;
    *(a1 + 60) = 5;
    *(a1 + 64) = 0;
  }

  return a1;
}

void sub_1B3041A70(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v4;
    operator delete(v4);
  }

  v5 = *(v1 + 24);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  _Unwind_Resume(exception_object);
}

float32x2_t *md::TransitConnectedNode::TransitConnectedNode(float32x2_t *a1, uint64_t a2, void *a3, void *a4, float a5)
{
  v6 = a1;
  v7 = md::TransitNode::TransitNode(a1, a2, a3, a5);
  *v7 = &unk_1F2A27CE0;
  *(v7 + 72) = 0;
  *(v7 + 80) = 0;
  *(v7 + 88) = 0;
  *(v7 + 96) = a4;
  *(v7 + 120) = 0;
  *(v7 + 124) = 0x100000001;
  *(v7 + 132) = 0;
  *(v7 + 136) = 0;
  if (*(*(v7 + 8) + 320))
  {
    v8 = a4[3];
    v59 = v6;
    v60 = a4[6];
    v61 = a4 + 4;
    if (v8 == a4 + 4)
    {
      v10 = 0;
      v9 = 0;
    }

    else
    {
      v9 = 0;
      v10 = 0;
      v11 = a4 + 7;
      v12 = a4[3];
      do
      {
        v13 = v12[1];
        v14 = v13;
        v15 = v12;
        if (v13)
        {
          do
          {
            v16 = v14;
            v14 = *v14;
          }

          while (v14);
        }

        else
        {
          do
          {
            v16 = v15[2];
            v17 = *v16 == v15;
            v15 = v16;
          }

          while (!v17);
        }

        if (v16 != v61)
        {
          v18 = v12[4];
          do
          {
            v19 = v16[4];
            v20 = md::TransitJunction::normalForLinkPair(a4, v18, v19);
            if (v20 && ((*(v19 + 88) - *(v19 + 80)) >> 3) + ((*(v18 + 88) - *(v18 + 80)) >> 3) > v10)
            {
              v10 = ((*(v19 + 88) - *(v19 + 80)) >> 3) + ((*(v18 + 88) - *(v18 + 80)) >> 3);
              v9 = v20;
            }

            v21 = v16[1];
            if (v21)
            {
              do
              {
                v22 = v21;
                v21 = *v21;
              }

              while (v21);
            }

            else
            {
              do
              {
                v22 = v16[2];
                v17 = *v22 == v16;
                v16 = v22;
              }

              while (!v17);
            }

            v16 = v22;
          }

          while (v22 != v61);
        }

        v23 = v60;
        if (v60 != v11)
        {
          v24 = v12[4];
          do
          {
            v25 = v23[4];
            v26 = md::TransitJunction::normalForLinkPair(a4, v24, v25);
            if (v26 && ((*(v25 + 88) - *(v25 + 80)) >> 3) + ((*(v24 + 88) - *(v24 + 80)) >> 3) > v10)
            {
              v10 = ((*(v25 + 88) - *(v25 + 80)) >> 3) + ((*(v24 + 88) - *(v24 + 80)) >> 3);
              v9 = v26;
            }

            v27 = v23[1];
            if (v27)
            {
              do
              {
                v28 = v27;
                v27 = *v27;
              }

              while (v27);
            }

            else
            {
              do
              {
                v28 = v23[2];
                v17 = *v28 == v23;
                v23 = v28;
              }

              while (!v17);
            }

            v23 = v28;
          }

          while (v28 != v11);
        }

        if (v13)
        {
          do
          {
            v29 = v13;
            v13 = *v13;
          }

          while (v13);
        }

        else
        {
          do
          {
            v29 = v12[2];
            v17 = *v29 == v12;
            v12 = v29;
          }

          while (!v17);
        }

        v12 = v29;
      }

      while (v29 != v61);
    }

    v30 = a4 + 7;
    v31 = v60;
    if (v60 != a4 + 7)
    {
      do
      {
        v32 = v31[1];
        v33 = v32;
        v34 = v31;
        if (v32)
        {
          do
          {
            v35 = v33;
            v33 = *v33;
          }

          while (v33);
        }

        else
        {
          do
          {
            v35 = v34[2];
            v17 = *v35 == v34;
            v34 = v35;
          }

          while (!v17);
        }

        if (v35 != v30)
        {
          v36 = v31[4];
          do
          {
            v37 = v35[4];
            v38 = md::TransitJunction::normalForLinkPair(a4, v36, v37);
            if (v38 && ((*(v37 + 88) - *(v37 + 80)) >> 3) + ((*(v36 + 88) - *(v36 + 80)) >> 3) > v10)
            {
              v10 = ((*(v37 + 88) - *(v37 + 80)) >> 3) + ((*(v36 + 88) - *(v36 + 80)) >> 3);
              v9 = v38;
            }

            v39 = v35[1];
            if (v39)
            {
              do
              {
                v40 = v39;
                v39 = *v39;
              }

              while (v39);
            }

            else
            {
              do
              {
                v40 = v35[2];
                v17 = *v40 == v35;
                v35 = v40;
              }

              while (!v17);
            }

            v35 = v40;
          }

          while (v40 != v30);
        }

        if (v32)
        {
          do
          {
            v41 = v32;
            v32 = *v32;
          }

          while (v32);
        }

        else
        {
          do
          {
            v41 = v31[2];
            v17 = *v41 == v31;
            v31 = v41;
          }

          while (!v17);
        }

        v31 = v41;
      }

      while (v41 != v30);
    }

    if (v9)
    {
      v6 = v59;
      *(v59 + 136) = 1;
    }

    else
    {
      if (v8 == v61)
      {
        v9 = 0;
        v42 = v60;
      }

      else
      {
        v9 = 0;
        v42 = v60;
        do
        {
          v43 = v8[4];
          v44 = v43[8];
          if (*(v44 - 3) == 1)
          {
            v45 = (v43[11] - v43[10]) >> 3;
            v46 = (v44 - 48);
            if (v45 > v10)
            {
              v10 = v45;
              v9 = v46;
            }
          }

          v47 = v8[1];
          if (v47)
          {
            do
            {
              v48 = v47;
              v47 = *v47;
            }

            while (v47);
          }

          else
          {
            do
            {
              v48 = v8[2];
              v17 = *v48 == v8;
              v8 = v48;
            }

            while (!v17);
          }

          v8 = v48;
        }

        while (v48 != v61);
      }

      if (v42 != v30)
      {
        do
        {
          v49 = v42[4];
          v50 = v49[7];
          if (v50[11].i8[5] == 1)
          {
            v51 = (v49[11] - v49[10]) >> 3;
            v52 = v50 + 1;
            if (v51 > v10)
            {
              v10 = v51;
              v9 = v52;
            }
          }

          v53 = v42[1];
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
              v54 = v42[2];
              v17 = *v54 == v42;
              v42 = v54;
            }

            while (!v17);
          }

          v42 = v54;
        }

        while (v54 != v30);
      }

      v6 = v59;
      *(v59 + 136) = v9 != 0;
      if (!v9)
      {
        goto LABEL_91;
      }
    }

    v55 = *v9;
    v56 = vmul_f32(v55, v55);
    *v56.i32 = sqrtf(vaddv_f32(v56));
    if (*v56.i32 >= 0.01)
    {
      v6[13] = vdiv_f32(v55, vdup_lane_s32(v56, 0));
      md::TransitConnectedNode::updateMaxLinkOffset(v6);
      if (v6[15].f32[0] < 3.0)
      {
        v57 = 1;
      }

      else
      {
        v57 = 2;
      }

      goto LABEL_95;
    }

    v6[13] = 1065353216;
    v6[17].i8[0] = 0;
LABEL_91:
    v57 = 1;
LABEL_95:
    v6[7].i8[4] = v57;
    return v6;
  }

  v6[7].i8[4] = 0;
  md::TransitConnectedNode::createDots(v6);
  return v6;
}

void sub_1B3041F7C(_Unwind_Exception *a1)
{
  v4 = *v1;
  if (*v1)
  {
    *(v2 + 10) = v4;
    operator delete(v4);
  }

  md::TransitNode::~TransitNode(v2);
  _Unwind_Resume(a1);
}

void md::TransitParentNode::~TransitParentNode(md::TransitParentNode *this)
{
  *this = &unk_1F2A27CE0;
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  md::TransitNode::~TransitNode(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A27CE0;
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  md::TransitNode::~TransitNode(this);
}

void md::InitialMapEngineMode::willBecomeInactive(uint64_t a1, md::MapEngine *a2, uint64_t a3, uint64_t *a4)
{
  v6 = *(a2 + 5241);
  *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v6 + 16), 0x4AC7AB7561675F6uLL)[5] + 136) = 1;
  *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v6 + 16), 0x653D1F33EF15EF04uLL)[5] + 128) = 0;
  v7 = *a4;
  v8 = a4[1];
  while (v7 != v8)
  {
    if (*v7 == 37)
    {
      if (v7 != v8)
      {
        v9 = *(v7 + 8) != 0;
        goto LABEL_8;
      }

      break;
    }

    v7 += 16;
  }

  v9 = 0;
LABEL_8:

  md::MapEngine::toggleVLR(a2, v9);
}

void md::InitialMapEngineMode::~InitialMapEngineMode(md::InitialMapEngineMode *this)
{
  md::MapEngineMode::~MapEngineMode(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::PolygonLayerDataSource::resourceKeyForType@<X0>(uint64_t a1@<X0>, char a2@<W1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 592);
  if ((a5 & 0x100000000) != 0)
  {
    v7 = a5;
  }

  else
  {
    v7 = 2147483646;
  }

  v10 = vrev64_s32(*(a3 + 4));
  v8 = *a3;
  v11 = a3[1];
  v12 = v8;
  return gdc::ResourceKey::ResourceKey(a6, a2, v6, &v10, 4, a4, v7);
}

void md::PolygonLayerDataSource::createLayerData(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v58 = *MEMORY[0x1E69E9840];
  std::atomic_load[abi:nn200100]<md::RegistryManager>(&v30, (a1 + 792));
  v5 = a1;
  atomic_load((a1 + 808));
  if (v30)
  {
    gdc::Tiled::tileFromLayerDataKey(&v29, *(a2 + 16));
    memset(v28, 0, sizeof(v28));
    gdc::LayerDataSource::populateLoadMetadataListFromMap(*a3, a3[1], v28);
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v6 = *a3;
    v7 = a3[1];
    if (*a3 != v7)
    {
      while (*(a1 + 592) != *v6)
      {
        v6 += 24;
        if (v6 == v7)
        {
          goto LABEL_29;
        }
      }

      if (v6 != v7)
      {
        for (i = *(v6 + 3); i; v5 = a1)
        {
          v9 = *(i + 7);
          v10 = i[15];
          if (*(&v9 + 1))
          {
            atomic_fetch_add_explicit((*(&v9 + 1) + 8), 1uLL, memory_order_relaxed);
            v11 = v26;
            v12 = v27;
            if (v26 >= v27)
            {
              goto LABEL_15;
            }

            *v26 = v9;
            atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          else
          {
            v11 = v26;
            v12 = v27;
            if (v26 >= v27)
            {
LABEL_15:
              v14 = (v11 - v25) >> 4;
              v15 = v14 + 1;
              if ((v14 + 1) >> 60)
              {
                std::__throw_bad_array_new_length[abi:nn200100]();
              }

              v16 = v12 - v25;
              if (v16 >> 3 > v15)
              {
                v15 = v16 >> 3;
              }

              if (v16 >= 0x7FFFFFFFFFFFFFF0)
              {
                v17 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v17 = v15;
              }

              v54 = &v25;
              if (v17)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<md::MuninRoadLabel>>>(v17);
              }

              v18 = 16 * v14;
              *(16 * v14) = v9;
              if (v10)
              {
                atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v13 = (v18 + 16);
              v19 = (v18 - (v26 - v25));
              memcpy(v19, v25, v26 - v25);
              v20 = v25;
              v21 = v27;
              v25 = v19;
              v26 = v13;
              v27 = 0;
              __p[1] = v20;
              v52 = v20;
              v53 = v21;
              __p[0] = v20;
              std::__split_buffer<std::shared_ptr<md::MuninRoadLabel>>::~__split_buffer(__p);
              goto LABEL_26;
            }

            *v26 = v9;
          }

          v13 = v11 + 16;
LABEL_26:
          v26 = v13;
          if (v10)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v10);
          }

          i = *i;
        }
      }
    }

LABEL_29:
    if (*(v5 + 24))
    {
      memset(v49, 0, sizeof(v49));
      *__n = 0u;
      v47 = 0u;
      v48 = 1065353216;
      v44 = 0uLL;
      v45 = 0;
      v33[0] = 0;
      v33[1] = 0;
      v32 = v33;
      v34 = xmmword_1B33B1630;
      v39 = 0;
      v36 = 0;
      v37 = 0;
      v35 = 0;
      v38 = 0;
      v40 = 4;
      v42 = 0;
      v43 = 0;
      v41 = 0;
      if (*(v5 + 32) != 41)
      {
        v54 = v49;
        operator new();
      }

      v55 = 0uLL;
      v56 = 0uLL;
      v57 = 1065353216;
      _ZNSt3__115allocate_sharedB8nn200100IN2md14MeshSetStorageENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(&v50);
    }

    *a4 = 0u;
    __p[0] = &v25;
    std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](__p);
    if (v28[0])
    {
      operator delete(v28[0]);
    }
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = 0;
  }

  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v31);
  }
}

void sub_1B3043D20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, std::__shared_weak_count *a34, char *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *__p, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::__split_buffer<geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::~__split_buffer(&a65);
  if (__p)
  {
    a47 = __p;
    operator delete(__p);
  }

  geo::Pool<geo::Triangulator<float,unsigned short>::Node>::~Pool(&a35);
  a35 = &a49;
  std::vector<std::unique_ptr<md::CoastlineGroup>>::__destroy_vector::operator()[abi:nn200100](&a35);
  std::__hash_table<std::__hash_value_type<unsigned long long,geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>::~__hash_table(&a53);
  a35 = &a59;
  std::vector<geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](&a35);
  a35 = &a23;
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&a35);
  if (a26)
  {
    operator delete(a26);
  }

  if (a34)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a34);
  }

  _Unwind_Resume(a1);
}

void std::vector<std::unique_ptr<md::CoastlineGroup>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        std::allocator_traits<std::allocator<std::unique_ptr<md::CoastlineGroup>>>::destroy[abi:nn200100]<std::unique_ptr<md::CoastlineGroup>,void,0>(--v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      *(v2 + 3) = off_1F2A4E798;

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

void std::vector<geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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

uint64_t *std::allocator_traits<std::allocator<std::unique_ptr<md::CoastlineGroup>>>::destroy[abi:nn200100]<std::unique_ptr<md::CoastlineGroup>,void,0>(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 24);
    *(v1 + 24) = 0;
    if (v2)
    {
      v4 = v2;
      std::vector<std::unique_ptr<ggl::Glow::MeshMesh>,geo::allocator_adapter<std::unique_ptr<ggl::Glow::MeshMesh>,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v4);
      MEMORY[0x1B8C62190](v2, 0x20C40D2EA512BLL);
    }

    std::unique_ptr<ggl::MeshVendor<ggl::PolygonShadowedStroke::ShadowPathMesh>>::~unique_ptr[abi:nn200100]((v1 + 16));
    v3 = *(v1 + 8);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::__shared_ptr_emplace<md::PolygonTileData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A27EA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void *geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(void *a1, void *a2)
{
  v3 = a2;
  *a1 = off_1F2A4E798;
  a1[1] = v3;
  return a1;
}

uint64_t std::vector<geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::push_back[abi:nn200100](unint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v9;
    }

    v19 = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>(v10);
    }

    v16 = 0;
    v17 = 24 * v7;
    geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(24 * v7, a2);
    v18 = 24 * v7 + 24;
    v11 = a1[1];
    v12 = 24 * v7 + *a1 - v11;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>*>(*a1, v11, v12);
    v13 = *a1;
    *a1 = v12;
    v14 = a1[2];
    v15 = v18;
    *(a1 + 1) = v18;
    *&v18 = v13;
    *(&v18 + 1) = v14;
    v16 = v13;
    v17 = v13;
    result = std::__split_buffer<geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::~__split_buffer(&v16);
    v6 = v15;
  }

  else
  {
    result = geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v3, a2);
    v6 = result + 24;
    a1[1] = result + 24;
  }

  a1[1] = v6;
  return result;
}

void sub_1B30447A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t a2, void **a3)
{
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (*&v3 <= a2)
    {
      v5 = a2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & a2;
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
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != a2)
  {
    goto LABEL_17;
  }

  return v7;
}

char **std::unique_ptr<std::__hash_node<std::__hash_value_type<gss::FeatureAttributeSet,std::vector<std::pair<anonymous namespace::PolygonKey,geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<gss::FeatureAttributeSet,std::vector<std::pair<anonymous namespace::PolygonKey,geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>,void *>>>>::~unique_ptr[abi:nn200100](char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(uint64_t a1, uint64_t a2)
{
  *a1 = off_1F2A4E798;
  *(a1 + 8) = 0;
  objc_storeStrong((a1 + 8), *(a2 + 8));
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;

  return a1;
}