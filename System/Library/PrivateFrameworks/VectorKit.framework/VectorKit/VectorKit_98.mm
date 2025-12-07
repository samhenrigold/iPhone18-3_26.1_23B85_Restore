void sub_1B2EBC388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, std::__shared_weak_count *a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, std::__shared_weak_count *a22, char a23, uint64_t a24, ...)
{
  va_start(va, a24);
  if (a23 == 1)
  {
    (*(*a19 + 56))(a19, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a22);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a20);
  }

  ggl::BufferMemory::~BufferMemory(va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<ggl::SinglePassRouteLine::BasePipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3F230;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::VertexDataTyped<ggl::TransitLineRibbon::DefaultVbo>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::TransitLineRibbon::DefaultVbo>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::TransitLineRibbon::BaseMesh::~BaseMesh(ggl::TransitLineRibbon::BaseMesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void ggl::TransitLineRibbon::BaseMesh::~BaseMesh(ggl::TransitLineRibbon::BaseMesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::MeshTyped<ggl::TransitLineRibbon::DefaultVbo>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::TransitLineRibbon::DefaultVbo>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::TransitLineRibbon::BasePipelineSetup::~BasePipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void *ggl::TransitLineRibbon::BasePipelineSetup::BasePipelineSetup(void *a1, uint64_t a2, std::__shared_weak_count *a3)
{
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
    ggl::PipelineSetup::PipelineSetup(a1, a2, a3);
    std::__shared_weak_count::__release_shared[abi:nn200100](a3);
  }

  else
  {
    ggl::PipelineSetup::PipelineSetup(a1, a2, 0);
  }

  *a1 = &unk_1F2A0DA00;
  return a1;
}

void ggl::TransitLineRibbon::PatternedBasePipelineSetup::~PatternedBasePipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void *ggl::TransitLineRibbon::PatternedBasePipelineSetup::PatternedBasePipelineSetup(void *a1, uint64_t a2, std::__shared_weak_count *a3)
{
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
    ggl::PipelineSetup::PipelineSetup(a1, a2, a3);
    std::__shared_weak_count::__release_shared[abi:nn200100](a3);
  }

  else
  {
    ggl::PipelineSetup::PipelineSetup(a1, a2, 0);
  }

  *a1 = &unk_1F2A0DA58;
  return a1;
}

void md::HikingLogic::debugConsoleString(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t md::HikingLogic::_doesLocationIntersectWithParkRegion(float64x2_t *a1, uint64_t a2, uint64_t a3, md::SceneContext *this)
{
  v34 = xmmword_1B33B0720;
  v6 = md::SceneContext::layerDataInView(this, 70);
  v7 = v6 + 1;
  v8 = *v6;
  if (*v6 != v6 + 1)
  {
    v31 = *a1;
    do
    {
      v9 = v8[4];
      if (v9)
      {
        v10 = *(v9 + 728);
        v11 = *(v9 + 736);
        if (v10 != v11)
        {
          v12 = 0;
          v13 = 1;
          v14 = 1 << *(v9 + 169);
          v15.i64[0] = *(v9 + 176);
          v15.i64[1] = v14 + ~*(v9 + 172);
          v33 = vcvt_f32_f64(vmulq_n_f64(vmlsq_lane_f64(v31, vcvtq_f64_s64(v15), 1.0 / v14, 0), v14));
          v16 = &v34;
          v17 = &v33;
          while (v17->f32[0] >= *v16 && v17->f32[0] < *(&v34 + v12 + 2))
          {
            v18 = v13;
            v13 = 0;
            v17 = (&v33 + 4);
            v16 = &v34 + 1;
            v12 = 1;
            if ((v18 & 1) == 0)
            {
              while (1)
              {
                if ((v10[1] & a2) != 0 && (v10[2] & a3) != 0)
                {
                  v20 = v10[3];
                  v19 = v10[4];
LABEL_12:
                  if (v20 != v19)
                  {
                    break;
                  }
                }

                v10 += 6;
                if (v10 == v11)
                {
                  goto LABEL_20;
                }
              }

              v21 = 0;
              v22 = &v33;
              v23 = 1;
              do
              {
                if (v22->f32[0] < *(v20 + v21) || v22->f32[0] >= *(v20 + v21 + 2))
                {
                  goto LABEL_18;
                }

                v24 = v23;
                v23 = 0;
                v22 = (&v33 + 4);
                v21 = 1;
              }

              while ((v24 & 1) != 0);
              if (!geo::containsPoint<float>(v20[2], v20[3], &v33))
              {
LABEL_18:
                v20 += 8;
                goto LABEL_12;
              }

              v29 = v20[5];
              v30 = v20[6];
              while (v29 != v30)
              {
                if (geo::containsPoint<float>(*v29, v29[1], &v33))
                {
                  return 0;
                }

                v29 += 3;
              }

              return *v10;
            }
          }
        }
      }

LABEL_20:
      v25 = v8[1];
      if (v25)
      {
        do
        {
          v26 = v25;
          v25 = *v25;
        }

        while (v25);
      }

      else
      {
        do
        {
          v26 = v8[2];
          v27 = *v26 == v8;
          v8 = v26;
        }

        while (!v27);
      }

      v8 = v26;
    }

    while (v26 != v7);
  }

  return 0;
}

id std::__function::__value_func<void ()(unsigned long long)>::operator()[abi:nn200100](uint64_t a1)
{
  if (a1)
  {
    v2 = *(*a1 + 48);

    return v2();
  }

  else
  {
    std::__throw_bad_function_call[abi:nn200100]();
    return GEOGetVectorKitHikingLogicLog();
  }
}

id GEOGetVectorKitHikingLogicLog(void)
{
  if (GEOGetVectorKitHikingLogicLog(void)::onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitHikingLogicLog(void)::onceToken, &__block_literal_global_10_14335);
  }

  v1 = GEOGetVectorKitHikingLogicLog(void)::log;

  return v1;
}

void std::__function::__value_func<void ()(geo::Mercator2<double>,BOOL)>::operator()[abi:nn200100](uint64_t a1)
{
  if (a1)
  {
    v2 = *(*a1 + 48);

    v2();
  }

  else
  {
    v3 = std::__throw_bad_function_call[abi:nn200100]();
    md::HikingLogic::_animateContourFade(v3, v4, v5, v6);
  }
}

void md::HikingLogic::_animateContourFade(uint64_t a1, uint64_t a2, int a3, float a4)
{
  v24[3] = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 356);
  v9 = *(a1 + 368);
  if (v9)
  {
    [v9 pause];
    v10 = *(a1 + 368);
    if (v10)
    {
      *(a1 + 368) = 0;
    }

    *(a2 + 8) = 0;
  }

  if (*(a1 + 384))
  {
    v11 = a3 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11 || (v12 = vabds_f32(a4, v8), v12 <= 0.001))
  {
    *(a1 + 356) = a4;
  }

  else
  {
    v13 = [[VKTimedAnimation alloc] initWithDuration:(v12 * 0.45)];
    if (v8 >= a4)
    {
      v14 = &__block_literal_global_4;
    }

    else
    {
      v14 = &__block_literal_global_14330;
    }

    v15 = MEMORY[0x1B8C62DA0](v14);
    [(VKTimedAnimation *)v13 setTimingFunction:VKAnimationCurveLinear];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = ___ZN2md11HikingLogic19_animateContourFadeERNS_13HikingContextEfb_block_invoke_3;
    v19[3] = &unk_1E7B35668;
    v21 = a1;
    v22 = v8;
    v23 = a4;
    v16 = v15;
    v20 = v16;
    [(VKTimedAnimation *)v13 setStepHandler:v19];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = ___ZN2md11HikingLogic19_animateContourFadeERNS_13HikingContextEfb_block_invoke_4;
    v17[3] = &__block_descriptor_52_e8_v12__0B8l;
    v18 = a4;
    v17[4] = a1;
    v17[5] = a2;
    [(VKAnimation *)v13 setCompletionHandler:v17];
    if (md::AnimationRunner::runAnimation(*(a1 + 384), &v13->super))
    {
      geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v24, v13);
      geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(a1 + 360, v24);
      v24[0] = &unk_1F2A4BA00;

      *(a2 + 8) = 1;
    }
  }
}

float ___ZN2md11HikingLogic19_animateContourFadeERNS_13HikingContextEfb_block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 52);
  v3 = *(a1 + 40);
  result = v1 + ((*(*(a1 + 32) + 16))() * (v2 - v1));
  *(v3 + 356) = result;
  return result;
}

float ___ZN2md11HikingLogic19_animateContourFadeERNS_13HikingContextEfb_block_invoke_4(uint64_t a1)
{
  result = *(a1 + 48);
  v2 = *(a1 + 40);
  *(*(a1 + 32) + 356) = result;
  *(v2 + 8) = 0;
  return result;
}

void ___ZL29GEOGetVectorKitHikingLogicLogv_block_invoke()
{
  v0 = os_log_create("com.apple.VectorKit", "HikingLogic");
  v1 = GEOGetVectorKitHikingLogicLog(void)::log;
  GEOGetVectorKitHikingLogicLog(void)::log = v0;
}

uint64_t md::Logic<md::HikingLogic,md::HikingContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::SceneContext,md::StyleLogicContext,md::SettingsContext,md::NavigationContext>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v7[6] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x92F3DC114CADB853 && (v4 = *(a3 + 32)) != 0)
  {
    v6 = result;
    md::LogicDependencies<gdc::TypeList<md::CameraContext,md::SceneContext,md::StyleLogicContext,md::SettingsContext,md::NavigationContext>,gdc::TypeList<>>::buildRequiredTuple<md::CameraContext,md::SceneContext,md::StyleLogicContext,md::SettingsContext,md::NavigationContext>(v7, *(a2 + 8));
    return (*(*v6 + 160))(v6, a2, v7, v4);
  }

  else
  {
    a4[23] = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::HikingContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void *gdc::ManagedObjectHolder<md::HikingContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A0DCA0;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0x1000C4096AF022DLL);
  }

  return a1;
}

void md::HikingLogic::~HikingLogic(md::HikingLogic *this)
{
  *this = &unk_1F2A0DAD0;
  *(this + 45) = &unk_1F2A4BA00;

  std::__function::__value_func<void ()(geo::Mercator2<double>,BOOL)>::~__value_func[abi:nn200100](this + 288);
  std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:nn200100](this + 232);
  v2 = *(this + 19);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A0DAD0;
  *(this + 45) = &unk_1F2A4BA00;

  std::__function::__value_func<void ()(geo::Mercator2<double>,BOOL)>::~__value_func[abi:nn200100](this + 288);
  std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:nn200100](this + 232);
  v2 = *(this + 19);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

void md::Logic<md::HikingLogic,md::HikingContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::SceneContext,md::StyleLogicContext,md::SettingsContext,md::NavigationContext>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2, v3);
}

void md::HikingLogic::setSelectedTrail(md::HikingLogic *this, uint64_t a2, char *a3, char *a4)
{
  v24[1] = *MEMORY[0x1E69E9840];
  if (*(this + 328) != 1 || *(this + 40) != a2)
  {
    *(this + 40) = a2;
    *(this + 328) = 1;
    v8 = *(this + 15);
    v9 = *(v8 + 32);
    v10 = *(v8 + 40);
    if (v9 != v10)
    {
      v11 = v9;
      while (*v11 != 68)
      {
        v11 += 16;
        if (v11 == v10)
        {
          goto LABEL_11;
        }
      }

      if (v11 != v10)
      {
        v12 = *(v11 + 8);
        if (v12)
        {
          v24[0] = a2;
          std::unordered_set<unsigned long long>::unordered_set(v23, v24, 1);
          md::SelectedPolygonLayerDataSource::setSelectedPolygons(v12, v23);
          std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v23);
          v13 = *(this + 15);
          v9 = *(v13 + 32);
          v10 = *(v13 + 40);
        }
      }
    }

LABEL_11:
    if (v9 != v10)
    {
      v14 = v9;
      while (*v14 != 48)
      {
        v14 += 16;
        if (v14 == v10)
        {
          goto LABEL_20;
        }
      }

      if (v14 != v10)
      {
        v15 = *(v14 + 8);
        if (v15)
        {
          if ((*(this + 328) & 1) == 0)
          {
            v22 = std::__throw_bad_optional_access[abi:nn200100]();
            std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v23);
            _Unwind_Resume(v22);
          }

          v24[0] = *(this + 40);
          std::unordered_set<unsigned long long>::unordered_set(v23, v24, 1);
          md::SelectedDaVinciRoadsLayerDataSource::setSelectedRoads(v15, v23);
          std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v23);
          v16 = *(this + 15);
          v9 = *(v16 + 32);
          v10 = *(v16 + 40);
        }
      }
    }

LABEL_20:
    if (v9 == v10)
    {
      goto LABEL_30;
    }

    v17 = v9;
    while (*v17 != 73)
    {
      v17 += 16;
      if (v17 == v10)
      {
        goto LABEL_30;
      }
    }

    if (v17 != v10)
    {
      v18 = *(v17 + 8);
      if (v18)
      {
        md::SelectedLabelLayerDataSource::setSelectedRoadFeature(v18, a2, a3, a4);
        v19 = *(this + 15);
        v9 = *(v19 + 32);
        v10 = *(v19 + 40);
      }
    }

LABEL_30:
    while (v9 != v10)
    {
      if (*v9 == 80)
      {
        if (v9 != v10)
        {
          v21 = *(v9 + 8);
          if (v21)
          {
            md::SelectedLabelLayerDataSource::setSelectedRoadFeature(v21, a2, a3, a4);
          }
        }

        break;
      }

      v9 += 16;
    }

    v20 = **(this + 17);
    if (v20)
    {
      v23[0] = 8;
      md::MapEngine::setNeedsTick(v20, v23);
    }
  }
}

void md::Logic<md::FlyoverTileDataLogic,md::FlyoverTileDataResolverContext,md::LogicDependencies<gdc::TypeList<md::LayerDataLogicContext,md::ElevationContext,md::CameraContext>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2, v3);
}

void md::FlyoverTileDataLogic::runBeforeLayoutAtVariableRate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + 8);
  v7 = *(a3 + 16);
  if (*(v7 + 5592))
  {
    v7 = *(v7 + 5592);
  }

  *(a4 + 8) = v7;
  v8 = *(a1 + 120);
  v9 = *(v8 + 32);
  v10 = *(v8 + 40);
  if (v9 != v10)
  {
    v11 = v9;
    while (*v11 != 45)
    {
      v11 += 16;
      if (v11 == v10)
      {
        goto LABEL_18;
      }
    }

    if (v11 != v10)
    {
      v12 = *(v11 + 8);
      if (v12)
      {
        v13 = *(v12 + 832);
        if (v13)
        {
          atomic_store(*(a1 + 216), v13);
        }

        if (*(a1 + 360) == 1)
        {
          v14 = *(a1 + 216);
        }

        else
        {
          v14 = 1;
        }

        atomic_store(v14 & 1, (v12 + 824));
        v15 = *(a1 + 120);
        v9 = *(v15 + 32);
        v10 = *(v15 + 40);
      }
    }
  }

LABEL_18:
  while (v9 != v10)
  {
    if (*v9 == 53)
    {
      if (v9 != v10)
      {
        v48 = *(v9 + 8);
        if (v48)
        {
          v49 = *(v48 + 800);
          if (v49)
          {
            atomic_store(*(a1 + 216), v49);
          }

          if (*(a1 + 360) == 1)
          {
            v50 = *(a1 + 216);
          }

          else
          {
            v50 = 1;
          }

          atomic_store(v50 & 1, (v48 + 794));
        }
      }

      break;
    }

    v9 += 16;
  }

  *(a1 + 360) = *(v6 + 5);
  if (*(a1 + 432))
  {
    std::__hash_table<std::__hash_value_type<geo::QuadTile,std::unordered_set<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::unordered_set<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::unordered_set<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::unordered_set<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>>>>::__deallocate_node(*(a1 + 424));
    *(a1 + 424) = 0;
    v16 = *(a1 + 416);
    if (v16)
    {
      for (i = 0; i != v16; ++i)
      {
        *(*(a1 + 408) + 8 * i) = 0;
      }
    }

    *(a1 + 432) = 0;
  }

  if (*(a1 + 400) == 1)
  {
    v18 = *(a4 + 8);
    v19 = *v18;
    v64[0] = *v18;
    v65 = *(v18 + 8);
    v66 = *(v18 + 24);
    v67 = *(v18 + 40);
    v68 = *(v18 + 56);
    v69 = *(v18 + 72);
    v20 = *(v18 + 112);
    v21 = *(v18 + 128);
    v22 = *(v18 + 80);
    v71 = *(v18 + 96);
    v72 = v20;
    v70 = v22;
    v23 = *(v18 + 248);
    v24 = *(v18 + 264);
    v25 = *(v18 + 296);
    v83 = *(v18 + 280);
    v84 = v25;
    v82 = v24;
    v26 = *(v18 + 312);
    v27 = *(v18 + 344);
    v28 = *(v18 + 360);
    v86 = *(v18 + 328);
    v87 = v27;
    v85 = v26;
    v29 = *(v18 + 136);
    v30 = *(v18 + 152);
    v76 = *(v18 + 168);
    v75 = v30;
    v74 = v29;
    v31 = *(v18 + 184);
    v32 = *(v18 + 200);
    v33 = *(v18 + 216);
    v80 = *(v18 + 232);
    v79 = v33;
    v78 = v32;
    v77 = v31;
    v81 = v23;
    v73 = v21;
    v88 = v28;
    v34 = *(v18 + 384);
    v89[0] = *(v18 + 368);
    v89[1] = v34;
    v35 = *(v18 + 400);
    v36 = *(v18 + 416);
    v37 = *(v18 + 432);
    v90 = *(v18 + 448);
    v89[3] = v36;
    v89[4] = v37;
    v89[2] = v35;
    v91 = *(v18 + 456);
    v38 = *(v18 + 480);
    v92 = *(v18 + 464);
    v93 = v38;
    v39 = *(a1 + 392);
    if (!v39)
    {
      v57 = std::__throw_bad_function_call[abi:nn200100]();
      std::__hash_table<std::__hash_value_type<geo::QuadTile,std::unordered_set<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::unordered_set<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::unordered_set<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::unordered_set<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>>>>::__deallocate_node(v57);
      return;
    }

    (*(*v39 + 48))(&v58);
    v40 = gdc::Camera::widestFieldOfView(v64);
    v41 = *gdc::Camera::near(v64);
    v42 = gdc::Camera::far(v64);
    gdc::Camera::Camera(v63, &v58, v89, v40, v41, *v42, *&v93);
    gdc::Camera::setCameraType(v63, v19);
    gdc::CameraView::geocentricCameraView(&v58, v63);
    v43 = a4 + 32;
    v44 = &v58;
  }

  else
  {
    v44 = *(a4 + 8);
    v43 = a4 + 32;
  }

  gdc::CameraView::operator=(v43, v44);
  v45 = *(a1 + 120);
  if (v45)
  {
    v46 = *(v45 + 32);
    v47 = *(v45 + 40);
    while (v46 != v47)
    {
      if (*v46 == 75)
      {
        if (v46 != v47)
        {
          v51 = *(v46 + 8);
          if (v51)
          {
            os_unfair_lock_lock((v51 + 632));
            v52 = *(v51 + 672);
            os_unfair_lock_unlock((v51 + 632));
            if (v52)
            {
              os_unfair_lock_lock((v51 + 632));
              v53 = *(v51 + 136);
              if (v53)
              {
                v54 = v51 + 688;
                do
                {
                  while (1)
                  {
                    gdc::Tiled::tileFromLayerDataKey(&v58, *(v53 + 32));
                    if (!v59)
                    {
                      break;
                    }

                    do
                    {
                      v55 = geo::LRUPolicy<geo::QuadTile,geo::small_vector<md::FlyoverRegionManager::RegionArea,2ul>,geo::QuadTileHash>::get(v51 + 688, (v51 + 648), &v58);
                      if (!v59)
                      {
                        break;
                      }

                      --v59;
                      v60 = vshr_n_s32(v60, 1uLL);
                      v61 = 0;
                      v62 = 1;
                    }

                    while (v59 && v54 == v55);
                    if (v54 == v55)
                    {
                      break;
                    }

                    v53 = std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>>>::erase((v51 + 120), v53);
                    if (!v53)
                    {
                      goto LABEL_54;
                    }
                  }

                  v53 = *v53;
                }

                while (v53);
              }

LABEL_54:
              os_unfair_lock_unlock((v51 + 632));
            }
          }
        }

        return;
      }

      v46 += 16;
    }
  }
}

void std::__hash_table<std::__hash_value_type<geo::QuadTile,std::unordered_set<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::unordered_set<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::unordered_set<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::unordered_set<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>>>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((v1 + 6));
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void *md::FlyoverTileDataLogic::allocateContext@<X0>(md::FlyoverTileDataLogic *this@<X0>, uint64_t a2@<X8>)
{
  v15 = *(*(this + 15) + 352);
  *&v16 = this + 128;
  *(&v16 + 1) = this + 408;
  bzero(v17, 0x558uLL);
  gdc::Camera::Camera(v17);
  memset(v51, 0, sizeof(v51));
  v52 = 0x3FF0000000000000;
  v55 = 0xBFF0000000000000;
  v56 = 0x3FF0000000000000;
  v58 = 2;
  *a2 = v15;
  *(a2 + 16) = v16;
  *(a2 + 32) = v17[0];
  v3 = v19;
  *(a2 + 40) = v18;
  *(a2 + 56) = v3;
  v4 = v21;
  *(a2 + 72) = v20;
  *(a2 + 88) = v4;
  *(a2 + 104) = v22;
  v5 = v24;
  *(a2 + 112) = v23;
  *(a2 + 128) = v5;
  *(a2 + 144) = v25;
  v6 = v41;
  *(a2 + 160) = v26;
  *(a2 + 248) = v32;
  *(a2 + 232) = v31;
  *(a2 + 216) = v30;
  v7 = v36;
  *(a2 + 296) = v35;
  *(a2 + 312) = v7;
  v8 = v34;
  *(a2 + 264) = v33;
  *(a2 + 280) = v8;
  *(a2 + 392) = v6;
  v9 = v40;
  *(a2 + 360) = v39;
  *(a2 + 376) = v9;
  v10 = v38;
  *(a2 + 328) = v37;
  *(a2 + 344) = v10;
  *(a2 + 168) = v27;
  *(a2 + 184) = v28;
  *(a2 + 200) = v29;
  v11 = v43;
  *(a2 + 400) = v42;
  *(a2 + 416) = v11;
  v12 = v45;
  *(a2 + 432) = v44;
  *(a2 + 448) = v12;
  *(a2 + 464) = v46;
  *(a2 + 480) = v47;
  *(a2 + 488) = v48;
  v13 = v50;
  *(a2 + 496) = v49;
  *(a2 + 512) = v13;
  geo::View<double>::View(a2 + 528, v51, &v53, &v54, v57, 2, -1.0);
  *(a2 + 992) = v59;
  *(a2 + 1008) = v60;
  return memcpy((a2 + 1016), v61, 0x180uLL);
}

uint64_t md::Logic<md::FlyoverTileDataLogic,md::FlyoverTileDataResolverContext,md::LogicDependencies<gdc::TypeList<md::LayerDataLogicContext,md::ElevationContext,md::CameraContext>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v7[4] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x479E84E48468DB70 && (v4 = *(a3 + 32)) != 0)
  {
    v6 = result;
    md::LogicDependencies<gdc::TypeList<md::LayerDataLogicContext,md::ElevationContext,md::CameraContext>,gdc::TypeList<>>::buildRequiredTuple<md::LayerDataLogicContext,md::ElevationContext,md::CameraContext>(v7, *(a2 + 8));
    return (*(*v6 + 160))(v6, a2, v7, v4);
  }

  else
  {
    a4[23] = 0;
    *a4 = 0;
  }

  return result;
}

void *md::LogicDependencies<gdc::TypeList<md::LayerDataLogicContext,md::ElevationContext,md::CameraContext>,gdc::TypeList<>>::buildRequiredTuple<md::LayerDataLogicContext,md::ElevationContext,md::CameraContext>(void *a1, void *a2)
{
  v4 = gdc::Context::context<md::LayerDataLogicContext>(a2);
  v5 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x8BD499FBD96FBB9ELL);
  if (v5 && (v6 = v5[5], *(v6 + 8) == 0x8BD499FBD96FBB9ELL))
  {
    v7 = *(v6 + 32);
  }

  else
  {
    v7 = 0;
  }

  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x1AF456233693CD46uLL);
  if (result && (v9 = result[5], *(v9 + 8) == 0x1AF456233693CD46))
  {
    v10 = *(v9 + 32);
  }

  else
  {
    v10 = 0;
  }

  *a1 = v4;
  a1[1] = v7;
  a1[2] = v10;
  return result;
}

uint64_t md::Logic<md::FlyoverTileDataLogic,md::FlyoverTileDataResolverContext,md::LogicDependencies<gdc::TypeList<md::LayerDataLogicContext,md::ElevationContext,md::CameraContext>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[4] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x479E84E48468DB70)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      md::LogicDependencies<gdc::TypeList<md::LayerDataLogicContext,md::ElevationContext,md::CameraContext>,gdc::TypeList<>>::buildRequiredTuple<md::LayerDataLogicContext,md::ElevationContext,md::CameraContext>(v6, *(a2 + 8));
      return (*(*v5 + 152))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::FlyoverTileDataLogic,md::FlyoverTileDataResolverContext,md::LogicDependencies<gdc::TypeList<md::LayerDataLogicContext,md::ElevationContext,md::CameraContext>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[4] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x479E84E48468DB70)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      md::LogicDependencies<gdc::TypeList<md::LayerDataLogicContext,md::ElevationContext,md::CameraContext>,gdc::TypeList<>>::buildRequiredTuple<md::LayerDataLogicContext,md::ElevationContext,md::CameraContext>(v6, *(a2 + 8));
      return (*(*v5 + 144))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::FlyoverTileDataLogic,md::FlyoverTileDataResolverContext,md::LogicDependencies<gdc::TypeList<md::LayerDataLogicContext,md::ElevationContext,md::CameraContext>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[4] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x479E84E48468DB70)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      md::LogicDependencies<gdc::TypeList<md::LayerDataLogicContext,md::ElevationContext,md::CameraContext>,gdc::TypeList<>>::buildRequiredTuple<md::LayerDataLogicContext,md::ElevationContext,md::CameraContext>(v6, *(a2 + 8));
      return (*(*v5 + 136))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::FlyoverTileDataLogic,md::FlyoverTileDataResolverContext,md::LogicDependencies<gdc::TypeList<md::LayerDataLogicContext,md::ElevationContext,md::CameraContext>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[4] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x479E84E48468DB70)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      md::LogicDependencies<gdc::TypeList<md::LayerDataLogicContext,md::ElevationContext,md::CameraContext>,gdc::TypeList<>>::buildRequiredTuple<md::LayerDataLogicContext,md::ElevationContext,md::CameraContext>(v6, *(a2 + 8));
      return (*(*v5 + 128))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::FlyoverTileDataResolverContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::FlyoverTileDataResolverContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A0DF30;
  v1 = a1[4];
  if (v1)
  {
    MEMORY[0x1B8C62190](v1, 0x1060C4012607D2CLL);
  }

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::FlyoverTileDataResolverContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A0DF30;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0x1060C4012607D2CLL);
  }

  return a1;
}

double md::FlyoverTileDataLogic::createDebugNode@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void md::FlyoverTileDataLogic::~FlyoverTileDataLogic(md::FlyoverTileDataLogic *this)
{
  md::FlyoverTileDataLogic::~FlyoverTileDataLogic(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A0DCE8;
  std::__hash_table<std::__hash_value_type<geo::QuadTile,std::unordered_set<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::unordered_set<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::unordered_set<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::unordered_set<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>>>>::~__hash_table(this + 408);
  if (*(this + 400) == 1)
  {
    std::__function::__value_func<gdc::CameraFrame<geo::Radians,double> ()(void)>::~__value_func[abi:nn200100](this + 368);
  }

  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(this + 280);
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(this + 200);
  std::__list_imp<std::pair<unsigned long long,unsigned char>>::clear(this + 22);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 136);
  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

uint64_t std::__hash_table<std::__hash_value_type<geo::QuadTile,std::unordered_set<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::unordered_set<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::unordered_set<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::unordered_set<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<geo::QuadTile,std::unordered_set<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::unordered_set<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::unordered_set<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::unordered_set<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void md::FlyoverSelectionContext::~FlyoverSelectionContext(md::FlyoverSelectionContext *this)
{
  *this = &unk_1F2A0DCC8;
  std::deque<std::pair<geo::Coordinate3D<geo::Radians,double>,geo::Coordinate3D<geo::Radians,double>>>::~deque[abi:nn200100](this + 88);
  *this = &unk_1F2A61128;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 16);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A0DCC8;
  std::deque<std::pair<geo::Coordinate3D<geo::Radians,double>,geo::Coordinate3D<geo::Radians,double>>>::~deque[abi:nn200100](this + 88);
  *this = &unk_1F2A61128;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 16);
}

void md::FlyoverSelectionContext::adjustTile(uint64_t a1, const geo::QuadTile *a2, uint64_t *a3, uint64_t a4)
{
  md::FlyoverMetaData::adjustedTile(v16, a2, a3, 1);
  if (v21)
  {
    v6 = v16[1];
    v7 = v17;
    v8 = v16[0];
    v9 = v18;
    v10 = v19;
    v11 = v20;
    if (v20 == 2)
    {
      v12 = (*(*a4 + 24))(a4, 4);
      if ((v13 & 1) != 0 && v6 > HIDWORD(v12))
      {
        v9 = 0;
        if (v6 >= (v6 - BYTE4(v12)))
        {
          v14 = (v6 - BYTE4(v12));
        }

        else
        {
          v14 = v6;
        }

        LOBYTE(v6) = v6 - v14;
        v7 = vshl_s32(v7, vneg_s32(vdup_n_s32(v14)));
        v10 = 1;
      }
    }

    *(a1 + 1) = v6;
    *(a1 + 4) = v7;
    *a1 = v8;
    *(a1 + 16) = v9;
    *(a1 + 24) = v10;
    v15 = 1;
    *(a1 + 32) = v11;
  }

  else
  {
    v15 = 0;
    *a1 = 0;
  }

  *(a1 + 40) = v15;
}

void md::FlyoverSelectionContext::getTileBound(uint64_t a1, uint64_t a2, geo::QuadTile *this, uint64_t a4)
{
  v45 = *MEMORY[0x1E69E9840];
  memset(v29, 0, sizeof(v29));
  *v30 = xmmword_1B33B05D0;
  *&v30[16] = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  *&v30[32] = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  *&v30[48] = 0xFFEFFFFFFFFFFFFFLL;
  v8 = *(a2 + 152);
  v9 = std::__hash_table<std::__hash_value_type<md::FlyoverOctile,std::__list_iterator<std::pair<md::FlyoverOctile,geo::OrientedBox<double,3u,double,double>>,void *>>,std::__unordered_map_hasher<md::FlyoverOctile,std::__hash_value_type<md::FlyoverOctile,std::__list_iterator<std::pair<md::FlyoverOctile,geo::OrientedBox<double,3u,double,double>>,void *>>,md::FlyoverOctileHash,std::equal_to<md::FlyoverOctile>,true>,std::__unordered_map_equal<md::FlyoverOctile,std::__hash_value_type<md::FlyoverOctile,std::__list_iterator<std::pair<md::FlyoverOctile,geo::OrientedBox<double,3u,double,double>>,void *>>,std::equal_to<md::FlyoverOctile>,md::FlyoverOctileHash,true>,std::allocator<std::__hash_value_type<md::FlyoverOctile,std::__list_iterator<std::pair<md::FlyoverOctile,geo::OrientedBox<double,3u,double,double>>,void *>>>>::find<md::FlyoverOctile>(v8 + 1, this);
  if (v9)
  {
    v10 = v8[7];
    v11 = *(v9 + 8);
    if (v10 != v11)
    {
      v12 = v11[1];
      if (v12 != v10)
      {
        v13 = *v11;
        *(v13 + 8) = v12;
        *v12 = v13;
        v14 = *v10;
        *(v14 + 8) = v11;
        *v11 = v14;
        *v10 = v11;
        v11[1] = v10;
        v10 = v8[7];
      }
    }
  }

  else
  {
    v10 = v8 + 6;
  }

  v15 = *(a2 + 152);
  if (v15 + 6 == v10)
  {
    if (*(a4 + 16) == 1)
    {
      v26 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      v27 = xmmword_1B33B0520;
      v28 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
      memset(v24, 0, sizeof(v24));
      v25 = 0x3FF0000000000000;
      v17 = *a4;
      v18 = *(a4 + 8);
      md::FlyoverCommon::computeGeocentricBoundsFromOctile(this, v24, &v26, v17, v18);
      v34 = v24[0];
      v36 = *(&v24[1] + 8);
      v38[0] = v25;
      *&v38[1] = v26;
      v35 = *&v24[1];
      v37 = *(&v24[2] + 1);
      v39 = v27;
      v40 = v28;
      geo::OrientedBox<double,3u,double,double>::operator=(v29, &v34);
      v42 = *&v29[1];
      v41 = v29[0];
      v43 = *(&v29[1] + 8);
      v44 = *(&v29[2] + 1);
      v31 = *&v30[8];
      v32 = *&v30[24];
      v33 = *&v30[40];
      v19 = std::__hash_table<std::__hash_value_type<md::FlyoverOctile,std::__list_iterator<std::pair<md::FlyoverOctile,geo::OrientedBox<double,3u,double,double>>,void *>>,std::__unordered_map_hasher<md::FlyoverOctile,std::__hash_value_type<md::FlyoverOctile,std::__list_iterator<std::pair<md::FlyoverOctile,geo::OrientedBox<double,3u,double,double>>,void *>>,md::FlyoverOctileHash,std::equal_to<md::FlyoverOctile>,true>,std::__unordered_map_equal<md::FlyoverOctile,std::__hash_value_type<md::FlyoverOctile,std::__list_iterator<std::pair<md::FlyoverOctile,geo::OrientedBox<double,3u,double,double>>,void *>>,std::equal_to<md::FlyoverOctile>,md::FlyoverOctileHash,true>,std::allocator<std::__hash_value_type<md::FlyoverOctile,std::__list_iterator<std::pair<md::FlyoverOctile,geo::OrientedBox<double,3u,double,double>>,void *>>>>::find<md::FlyoverOctile>(v15 + 1, this);
      if (v19)
      {
        v20 = v19;
        v21 = *(v19 + 8);
        v23 = *v21;
        v22 = v21[1];
        *(v23 + 8) = v22;
        *v22 = v23;
        --v15[8];
        operator delete(v21);
        std::__hash_table<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>>>::erase(v15 + 1, v20);
      }

      operator new();
    }

    *a1 = 0;
    *(a1 + 104) = 0;
  }

  else
  {
    geo::OrientedBox<double,3u,double,double>::operator=(v29, (v10 + 8));
    v16 = *(&v29[2] + 1);
    *(a1 + 16) = *&v29[1];
    *a1 = v29[0];
    *(a1 + 24) = *(&v29[1] + 8);
    *(a1 + 40) = v16;
    *(a1 + 48) = *v30;
    *(a1 + 56) = *&v30[8];
    *(a1 + 72) = *&v30[24];
    *(a1 + 88) = *&v30[40];
    *(a1 + 104) = 1;
  }
}

unsigned __int8 *std::__hash_table<std::__hash_value_type<md::FlyoverOctile,std::__list_iterator<std::pair<md::FlyoverOctile,geo::OrientedBox<double,3u,double,double>>,void *>>,std::__unordered_map_hasher<md::FlyoverOctile,std::__hash_value_type<md::FlyoverOctile,std::__list_iterator<std::pair<md::FlyoverOctile,geo::OrientedBox<double,3u,double,double>>,void *>>,md::FlyoverOctileHash,std::equal_to<md::FlyoverOctile>,true>,std::__unordered_map_equal<md::FlyoverOctile,std::__hash_value_type<md::FlyoverOctile,std::__list_iterator<std::pair<md::FlyoverOctile,geo::OrientedBox<double,3u,double,double>>,void *>>,std::equal_to<md::FlyoverOctile>,md::FlyoverOctileHash,true>,std::allocator<std::__hash_value_type<md::FlyoverOctile,std::__list_iterator<std::pair<md::FlyoverOctile,geo::OrientedBox<double,3u,double,double>>,void *>>>>::find<md::FlyoverOctile>(void *a1, geo::QuadTile *this)
{
  v4 = md::FlyoverOctileHash::operator()(this);
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

  for (i = *v10; i; i = *i)
  {
    v12 = *(i + 1);
    if (v12 == v6)
    {
      if (md::FlyoverOctile::operator==(i + 16, this))
      {
        return i;
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
        return 0;
      }
    }
  }

  return i;
}

unint64_t md::FlyoverOctileHash::operator()(geo::QuadTile *this)
{
  if (*(this + 24) == 1)
  {
    geo::QuadTile::computeHash(this);
    *(this + 24) = 0;
  }

  return ((2 * *(this + 36)) & ((*(this + 36) << 31) >> 63) & 0x1FFFFFFFELL | (*(this + 11) << 33)) ^ *(this + 2);
}

BOOL md::FlyoverOctile::operator==(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1[32] != a2[32])
  {
    return 0;
  }

  if (a1[24] == 1)
  {
    v9 = a2;
    v10 = a1;
    geo::QuadTile::computeHash(a1);
    a2 = v9;
    a1 = v10;
    v10[24] = 0;
  }

  v2 = *(a1 + 2);
  if (a2[24])
  {
    v7 = (a2[1] + ((*a2 - 0x61C8864680B583EBLL) << 6) + ((*a2 - 0x61C8864680B583EBLL) >> 2) - 0x61C8864680B583EBLL) ^ (*a2 - 0x61C8864680B583EBLL);
    v8 = (*(a2 + 1) + (v7 << 6) + (v7 >> 2) - 0x61C8864680B583EBLL) ^ v7;
    v3 = (*(a2 + 2) + (v8 << 6) + (v8 >> 2) - 0x61C8864680B583EBLL) ^ v8;
    *(a2 + 2) = v3;
    a2[24] = 0;
  }

  else
  {
    v3 = *(a2 + 2);
  }

  if (v2 != v3 || *a1 != *a2 || a1[1] != a2[1] || *(a1 + 1) != *(a2 + 1) || *(a1 + 2) != *(a2 + 2) || *(a1 + 11) != *(a2 + 11))
  {
    return 0;
  }

  v4 = a1[40];
  v5 = v4 == a2[40];
  if (v4 == a2[40] && a1[40])
  {
    return *(a1 + 9) == *(a2 + 9);
  }

  return v5;
}

void std::__hash_table<md::FlyoverOctile,md::FlyoverOctileHash,std::equal_to<md::FlyoverOctile>,std::allocator<md::FlyoverOctile>>::__emplace_unique_key_args<md::FlyoverOctile,md::FlyoverOctile const&>(float *a1, geo::QuadTile *this, uint64_t a3)
{
  v5 = md::FlyoverOctileHash::operator()(this);
  v6 = v5;
  v7 = *(a1 + 2);
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *&v7)
    {
      v10 = v5 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v13 = *(v12 + 1);
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  if (!md::FlyoverOctile::operator==(v12 + 16, this))
  {
    goto LABEL_17;
  }
}

uint64_t md::FlyoverSelectionContext::selectBestFitOctiles(uint64_t a1, geo::QuadTile *a2, float *a3, uint64_t a4)
{
  if (!*(a2 + 32))
  {
    return 0;
  }

  if (*(a2 + 1) >= 0x15u || !a4 || *(a2 + 32) != 1)
  {
    goto LABEL_32;
  }

  if (*(a1 + 82) == 1)
  {
    v8 = a1 + 168;
  }

  else
  {
    v8 = *(a1 + 144);
  }

  md::FlyoverMetaData::elevationBoundsForHeightTile(v62, ***(a1 + 136), a2, *(a2 + 11));
  md::FlyoverSelectionContext::getTileBound(&v58, a1, a2, v62);
  if ((v61[48] & 1) == 0)
  {
    goto LABEL_47;
  }

  for (i = 0; i != 24; i += 8)
  {
    *(&v63 + i) = *&v61[i + 24] - *&v61[i];
  }

  v10 = *(&v63 + 1);
  v63 = 0uLL;
  v64 = 0xBFF0000000000000;
  v57[0] = gm::Quaternion<double>::operator*(v8 + 520, &v63);
  v57[1] = v11;
  v57[2] = v12;
  v13 = +[VKDebugSettings sharedSettings];
  [v13 flyoverOctileLODMaxRefineDistance];
  v14 = fmax(v10, 0.0) * 0.5;
  v16 = v15 * 1000.0;

  for (j = 0; j != 3; ++j)
  {
    *(&v63 + j * 8) = *&(&v58)[j] - *(v8 + j * 8 + 496);
  }

  v18 = 0;
  v55 = v63;
  v56 = v64;
  v19 = 0.0;
  do
  {
    v19 = v19 + *(&v55 + v18) * *(&v55 + v18);
    v18 += 8;
  }

  while (v18 != 24);
  v20 = sqrt(v19);
  if (v20 <= v14 || v20 > v16)
  {
    goto LABEL_47;
  }

  v22 = *(v8 + 968);
  v23 = gdc::Camera::viewSize(v8);
  v24 = 0;
  v25 = *v23;
  v26 = v23[1];
  v27 = 0.0;
  do
  {
    v27 = v27 + *(&v55 + v24 * 8) * *&v57[v24];
    ++v24;
  }

  while (v24 != 3);
  v28 = 0;
  v29 = fmax(v27, 0.01);
  v54 = *(v8 + 1192);
  v53 = *(v8 + 1176);
  v51 = *(v8 + 1224);
  v52 = *(v8 + 1240);
  v30 = v25 * 3.14159265;
  v31 = *(v8 + 1320);
  v50 = *(v8 + 1336);
  v49 = v31;
  do
  {
    *(&v63 + v28) = *(&v53 + v28) - *(&v51 + v28);
    v28 += 8;
  }

  while (v28 != 24);
  v32 = 0;
  v33 = v22 * v14 / v29 * (v22 * v14 / v29);
  v47 = v63;
  v48 = v64;
  v34 = 0.0;
  do
  {
    v34 = v34 + *(&v47 + v32) * *(&v47 + v32);
    v32 += 8;
  }

  while (v32 != 24);
  for (k = 0; k != 24; k += 8)
  {
    *(&v63 + k) = *(&v49 + k) - *(&v51 + k);
  }

  v36 = 0;
  v37 = 0.0;
  do
  {
    v37 = v37 + *(&v63 + v36) * *(&v63 + v36);
    v36 += 8;
  }

  while (v36 != 24);
  v38 = +[VKDebugSettings sharedSettings];
  [v38 flyoverOctileLODConstant];
  v40 = fmax(1.0 - v20 / v16, 0.0) * v39;

  if ((a4 * a4) * 0.0785398163 * sqrt(v37 * v34) / (v33 * (v30 * v26)) >= v40 * v40)
  {
LABEL_47:
    if (*(a2 + 32))
    {
LABEL_32:
      std::__hash_table<md::FlyoverOctile,md::FlyoverOctileHash,std::equal_to<md::FlyoverOctile>,std::allocator<md::FlyoverOctile>>::__emplace_unique_key_args<md::FlyoverOctile,md::FlyoverOctile const&>(a3, a2, a2);
      return 1;
    }

    return 0;
  }

  v58 = 0;
  v59 = 0;
  v60 = 0;
  md::FlyoverCommon::selectChildren(*(a1 + 136), a2, &v58, (a1 + 88));
  v43 = v58;
  v44 = v59;
  if (v58 != v59)
  {
    v45 = 0;
    v46 = v58;
    do
    {
      v45 |= md::FlyoverSelectionContext::selectBestFitOctiles(a1, v46, a3, a4);
      v46 += 48;
    }

    while (v46 != v44);
    if (v45)
    {
      goto LABEL_41;
    }
  }

  if (*(a2 + 32))
  {
    std::__hash_table<md::FlyoverOctile,md::FlyoverOctileHash,std::equal_to<md::FlyoverOctile>,std::allocator<md::FlyoverOctile>>::__emplace_unique_key_args<md::FlyoverOctile,md::FlyoverOctile const&>(a3, a2, a2);
LABEL_41:
    v41 = 1;
    goto LABEL_43;
  }

  v41 = 0;
LABEL_43:
  if (v43)
  {
    operator delete(v43);
  }

  return v41;
}

void sub_1B2EBFAC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p)
{
  if (v32)
  {
    operator delete(v32);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<geo::QuadTile,std::unordered_set<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<geo::QuadTile,std::unordered_set<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v2 + 48);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__function::__func<md::FlyoverTileDataResolverContext::resolver(void)::$_0,std::allocator<md::FlyoverTileDataResolverContext::resolver(void)::$_0>,std::unique_ptr<md::TileDependencySelectionContext> ()(unsigned short,md::MapDataType,md::TileDependencyResolvingType,gdc::TileSelection const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A0DDA0;
  a2[1] = v2;
  return result;
}

void std::__function::__func<md::FlyoverTileDataLogic::FlyoverTileDataLogic(md::World *,NSObject  {objcproto17OS_dispatch_queue}*)::$_1,std::allocator<md::FlyoverTileDataLogic::FlyoverTileDataLogic(md::World *,NSObject  {objcproto17OS_dispatch_queue}*)::$_1>,void ()(BOOL)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"VKShouldFlushTileCachesNotification" object:0];

  v3 = *(v1 + 120);
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  while (v4 != v5)
  {
    if (*v4 == 75)
    {
      if (v4 != v5)
      {
        v6 = *(v4 + 8);
        if (v6)
        {
          *(v6 + 713) = *(v1 + 296);
        }
      }

      return;
    }

    v4 += 16;
  }
}

uint64_t std::__function::__func<md::FlyoverTileDataLogic::FlyoverTileDataLogic(md::World *,NSObject  {objcproto17OS_dispatch_queue}*)::$_1,std::allocator<md::FlyoverTileDataLogic::FlyoverTileDataLogic(md::World *,NSObject  {objcproto17OS_dispatch_queue}*)::$_1>,void ()(BOOL)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A0DEE8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<md::FlyoverTileDataLogic::FlyoverTileDataLogic(md::World *,NSObject  {objcproto17OS_dispatch_queue}*)::$_0,std::allocator<md::FlyoverTileDataLogic::FlyoverTileDataLogic(md::World *,NSObject  {objcproto17OS_dispatch_queue}*)::$_0>,void ()(BOOL)>::operator()()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:@"VKShouldFlushTileCachesNotification" object:0];
}

double md::Logic<md::FlyoverTileDataLogic,md::FlyoverTileDataResolverContext,md::LogicDependencies<gdc::TypeList<md::LayerDataLogicContext,md::ElevationContext,md::CameraContext>,gdc::TypeList<>>>::allocateContext@<D0>(uint64_t a1@<X8>)
{
  bzero(a1, 0x578uLL);
  gdc::Camera::Camera((a1 + 32));
  result = 0.0;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 576) = 0x3FF0000000000000;
  *(a1 + 968) = 0xBFF0000000000000;
  *(a1 + 976) = 0x3FF0000000000000;
  *(a1 + 988) = 2;
  return result;
}

uint64_t std::__function::__value_func<gdc::CameraFrame<geo::Radians,double> ()(void)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

_BYTE *md::FlyoverTileDataLogic::getNeighborCameraPositionProvider(_BYTE *this, uint64_t a2)
{
  *this = 0;
  this[32] = 0;
  if (*(a2 + 400) == 1)
  {
    v2 = this;
    this = std::__function::__value_func<gdc::CameraFrame<geo::Radians,double> ()(void)>::__value_func[abi:nn200100](this, a2 + 368);
    v2[32] = 1;
  }

  return this;
}

void sub_1B2EC0128(_Unwind_Exception *exception_object)
{
  if (*(v1 + 32) == 1)
  {
    std::__function::__value_func<gdc::CameraFrame<geo::Radians,double> ()(void)>::~__value_func[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void ggl::Debug::InstancedBasePipelineSetup::~InstancedBasePipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls11RenderStateEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderState>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderState>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RenderState>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderState>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderState>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RenderState,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A52C20;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RenderState,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RenderState,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A52C40;
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

void ecs2::storage<ecs2::Entity,md::ls::RenderState,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RenderState,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RenderState,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A52C20;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RenderState,64ul>::~storage(a1);
}

char *md::TransitShieldIconLabelPart::clone(md::TransitShieldIconLabelPart *this)
{
  v2 = mdm::zone_mallocator::instance(this);
  v3 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v2, 0x398uLL);
  md::ShieldIconLabelPart::ShieldIconLabelPart(v3, this);
  *v3 = &unk_1F2A0E0F0;
  v4 = *(this + 860);
  *(v3 + 217) = *(this + 217);
  *(v3 + 860) = v4;
  *(v3 + 109) = 0;
  *(v3 + 220) = 0;
  *(v3 + 111) = *(this + 111);
  v5 = *(this + 112);
  *(v3 + 112) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(v3 + 113) = *(this + 113);
  *(v3 + 228) = *(this + 228);
  v3[916] = 0;
  v3[917] = *(this + 917);
  return v3;
}

void sub_1B2EC0734(mdm::zone_mallocator *a1)
{
  v3 = mdm::zone_mallocator::instance(a1);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v3, v1);
  _Unwind_Resume(a1);
}

void md::TransitShieldIconLabelPart::populateDebugNode(md::TransitShieldIconLabelPart *this, gdc::DebugTreeNode *a2)
{
  md::ShieldIconLabelPart::populateDebugNode(this, a2);
  std::string::basic_string[abi:nn200100]<0>(&v12, "TransitShieldIconLabelPart");
  gdc::DebugTreeNode::createChildNode(a2, &v12);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  std::string::basic_string[abi:nn200100]<0>(&v12, "Shield Size Modifier");
  if ((*(this + 848) + 1) > 0xAu)
  {
    v4 = "";
  }

  else
  {
    v4 = off_1E7B3DF38[(*(this + 848) + 1)];
  }

  std::string::basic_string[abi:nn200100]<0>(&v8, v4);
  gdc::DebugTreeValue::DebugTreeValue(v9, &v8);
  gdc::DebugTreeNode::addProperty(a2, &v12, v9);
  if (v11 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  if (v13 < 0)
  {
    operator delete(v12);
  }

  std::string::basic_string[abi:nn200100]<0>(&v12, "Offset");
  gdc::DebugTreeValue::DebugTreeValue(v5, *(this + 220));
  gdc::DebugTreeNode::addProperty(a2, &v12, v5);
  if (v7 < 0)
  {
    operator delete(v6);
  }

  if (v13 < 0)
  {
    operator delete(v12);
  }
}

void sub_1B2EC0894(_Unwind_Exception *exception_object)
{
  if (*(v1 - 17) < 0)
  {
    operator delete(*(v1 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::TransitShieldIconLabelPart::debugString@<X0>(md::TransitShieldIconLabelPart *this@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(this + 848);
  v5 = "dflt";
  if (v4 == 1)
  {
    v5 = "sm";
  }

  if (v4 == 2)
  {
    v6 = "lg";
  }

  else
  {
    v6 = v5;
  }

  std::ostringstream::basic_ostringstream[abi:nn200100](&v16);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v16, "  Transit Shield(", 17);
  v7 = (*(**(this + 80) + 32))(*(this + 80));
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = "";
  }

  v9 = strlen(v8);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v16, v8, v9);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v16, ")", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v16, ":of=", 4);
  v10 = v16;
  *(&v16 + *(v16 - 24) + 8) = *(&v16 + *(v16 - 24) + 8) & 0xFFFFFEFB | 4;
  *(&v18[0].__locale_ + *(v10 - 24)) = 2;
  std::ostream::operator<<();
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v16, ",size=", 6);
  v11 = strlen(v6);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v16, v6, v11);
  if ((v23 & 0x10) != 0)
  {
    v13 = v22;
    if (v22 < v19)
    {
      v22 = v19;
      v13 = v19;
    }

    locale = v18[4].__locale_;
  }

  else
  {
    if ((v23 & 8) == 0)
    {
      v12 = 0;
      a2[23] = 0;
      goto LABEL_22;
    }

    locale = v18[1].__locale_;
    v13 = v18[3].__locale_;
  }

  v12 = v13 - locale;
  if ((v13 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v12 >= 0x17)
  {
    operator new();
  }

  a2[23] = v12;
  if (v12)
  {
    memmove(a2, locale, v12);
  }

LABEL_22:
  a2[v12] = 0;
  v16 = *MEMORY[0x1E69E54E8];
  *(&v16 + *(v16 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v17 = MEMORY[0x1E69E5548] + 16;
  if (v21 < 0)
  {
    operator delete(__p);
  }

  v17 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v18);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v24);
}

void sub_1B2EC0BFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  a10 = *MEMORY[0x1E69E54E8];
  *(&a10 + *(a10 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  a11 = MEMORY[0x1E69E5548] + 16;
  if (a24 < 0)
  {
    operator delete(__p);
  }

  a11 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a12);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&a27);
  _Unwind_Resume(a1);
}

uint64_t md::TransitShieldIconLabelPart::needsCrossfade(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v4 = (*(**(*(a1 + 16) + 8) + 608))(*(*(a1 + 16) + 8), *(a1 + 917));
    if (v4)
    {
      v5 = v4;
      v6 = *(v4 + 296);
      if (!v6)
      {
        v7 = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(v4, 0);
        v6 = *v7;
        *(v5 + 296) = *v7;
      }

      v8 = *(v6 + 89);
      if (v8 != *(a1 + 916) || v8 == 2 && *(a1 + 912) != *(v6 + 72))
      {
        return 1;
      }

      if (*(v6 + 91) != *(a1 + 848) || *(a1 + 852) != *(v6 + 56) || *(a1 + 856) != *(v6 + 60))
      {
        return 1;
      }
    }
  }

  v9 = atomic_load((*(a1 + 888) + 104));
  if ((v9 & 1) != 0 && (*(a1 + 916) == 2 || (md::LabelExternalTransitLink::lineColor(&v11, *(a1 + 888), *(a1 + 917)), v11 == *(a1 + 912))))
  {
    return 0;
  }

  else
  {
    return 1;
  }
}

float md::TransitShieldIconLabelPart::setPerpendicularOffsetVector(uint64_t a1, int a2, uint64_t a3)
{
  v3 = 872;
  if (!a2)
  {
    v3 = 860;
  }

  v4 = a1 + v3;
  *v4 = *a3;
  result = *(a3 + 4);
  *(v4 + 4) = result;
  return result;
}

uint64_t md::TransitShieldIconLabelPart::layoutForDisplay(float32x2_t *a1, uint64_t a2, uint64_t a3, float32x2_t *a4, float32x2_t *a5)
{
  v6 = vmla_n_f32(*a5, a1[109], a1[110].f32[0]);
  md::IconLabelPart::layoutForDisplay(a1, a2, a3, a4, &v6);
  return 37;
}

float md::TransitShieldIconLabelPart::updateForDisplay(md::TransitShieldIconLabelPart *this)
{
  md::IconLabelPart::updateForDisplay(this);
  result = *(this + 217);
  *(this + 220) = result;
  return result;
}

uint64_t md::TransitShieldIconLabelPart::layoutForStaging(uint64_t a1, uint64_t a2, float32x2_t *a3, float32x2_t *a4)
{
  v8 = *(a1 + 917);
  md::LabelExternalTransitLink::linkData(&v12, *(a1 + 888));
  if (v12)
  {
    v9 = *(*v12 + 16 * v8);
  }

  else
  {
    v9 = 0.0;
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }

  v10 = *(a2 + 176) * v9;
  *(a1 + 868) = v10;
  v12 = vmla_n_f32(*a3, *(a1 + 860), v10);
  return md::IconLabelPart::layoutForStaging(a1, a2, &v12, a4);
}

void md::TransitShieldIconLabelPart::~TransitShieldIconLabelPart(md::TransitShieldIconLabelPart *this)
{
  *this = &unk_1F2A0E0F0;
  v2 = *(this + 112);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  *this = &unk_1F2A59200;
  v3 = *(this + 105);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::IconLabelPart::~IconLabelPart(this);
  v5 = mdm::zone_mallocator::instance(v4);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v5, this);
}

{
  *this = &unk_1F2A0E0F0;
  v2 = *(this + 112);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  *this = &unk_1F2A59200;
  v3 = *(this + 105);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::IconLabelPart::~IconLabelPart(this);
}

uint64_t md::MuninAvailabilityLayerDataSource::resourceKeyForType@<X0>(uint64_t a1@<X0>, char a2@<W1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
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

void sub_1B2EC1198(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<md::MuninAvailabilityData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A16A48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::MuninAvailabilityLayerDataSource::~MuninAvailabilityLayerDataSource(md::MuninAvailabilityLayerDataSource *this)
{
  md::SingleGEOResourceLayerDataSource::~SingleGEOResourceLayerDataSource(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::LandmarkDepth::BuildingPipelineSetup::~BuildingPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ___ZNK2md23TiledGEOResourceFetcher13getTileLoaderEv_block_invoke()
{
  v2 = objc_alloc_init(MEMORY[0x1E69A2618]);
  [v2 setServerProxyClass:objc_opt_class()];
  [v2 setDiskCacheLocation:0];
  v0 = [objc_alloc(MEMORY[0x1E69A2610]) initWithConfiguration:v2];
  v1 = md::TiledGEOResourceFetcher::getTileLoader(void)const::loader;
  md::TiledGEOResourceFetcher::getTileLoader(void)const::loader = v0;

  [md::TiledGEOResourceFetcher::getTileLoader(void)const::loader registerTileLoader:objc_opt_class()];
}

void md::TiledGEOResourceFetcher::createDebugNode(uint64_t a1@<X0>, void *a2@<X8>, __int128 *a3@<X1>)
{
  gdc::ResourceFetcher::createDebugNode(a1, a2, a3);
  std::string::basic_string[abi:nn200100]<0>(&v43, "Preload Only");
  if (*(a1 + 16))
  {
    v5 = "true";
  }

  else
  {
    v5 = "false";
  }

  gdc::DebugTreeValue::DebugTreeValue(v40, v5);
  gdc::DebugTreeNode::addProperty(a2, &v43, v40);
  if (v42 < 0)
  {
    operator delete(v41);
  }

  if (v44 < 0)
  {
    operator delete(v43);
  }

  std::string::basic_string[abi:nn200100]<0>(&v43, "Require Wifi");
  if ((*(a1 + 16) & 2) != 0)
  {
    v6 = "true";
  }

  else
  {
    v6 = "false";
  }

  gdc::DebugTreeValue::DebugTreeValue(v37, v6);
  gdc::DebugTreeNode::addProperty(a2, &v43, v37);
  if (v39 < 0)
  {
    operator delete(v38);
  }

  if (v44 < 0)
  {
    operator delete(v43);
  }

  std::string::basic_string[abi:nn200100]<0>(&v43, "Prefer Stale");
  if ((*(a1 + 16) & 4) != 0)
  {
    v7 = "true";
  }

  else
  {
    v7 = "false";
  }

  gdc::DebugTreeValue::DebugTreeValue(v34, v7);
  gdc::DebugTreeNode::addProperty(a2, &v43, v34);
  if (v36 < 0)
  {
    operator delete(__p);
  }

  if (v44 < 0)
  {
    operator delete(v43);
  }

  std::string::basic_string[abi:nn200100]<0>(&v43, "Content Scale");
  gdc::DebugTreeValue::DebugTreeValue(v31, *(a1 + 8));
  gdc::DebugTreeNode::addProperty(a2, &v43, v31);
  if (v33 < 0)
  {
    operator delete(v32);
  }

  if (v44 < 0)
  {
    operator delete(v43);
  }

  std::string::basic_string[abi:nn200100]<0>(&v43, "Tile Loader Client Identifier");
  v8 = *(a1 + 624);
  if (v8)
  {
    v9 = [v8 UTF8String];
  }

  else
  {
    v9 = "null";
  }

  gdc::DebugTreeValue::DebugTreeValue(v28, v9);
  gdc::DebugTreeNode::addProperty(a2, &v43, v28);
  if (v30 < 0)
  {
    operator delete(v29);
  }

  if (v8)
  {
  }

  if (v44 < 0)
  {
    operator delete(v43);
  }

  std::string::basic_string[abi:nn200100]<0>(&v43, "Preliminary Tile Loader Client Identifier");
  v10 = *(a1 + 648);
  if (v10)
  {
    v11 = [v10 UTF8String];
  }

  else
  {
    v11 = "null";
  }

  gdc::DebugTreeValue::DebugTreeValue(v25, v11);
  gdc::DebugTreeNode::addProperty(a2, &v43, v25);
  if (v27 < 0)
  {
    operator delete(v26);
  }

  if (v10)
  {
  }

  if (v44 < 0)
  {
    operator delete(v43);
  }

  std::string::basic_string[abi:nn200100]<0>(&v43, "Tile Style");
  v12 = @"RASTER_STANDARD";
  switch(*(a1 + 712))
  {
    case 0:
      break;
    case 1:
      v12 = @"VECTOR_STANDARD";
      break;
    case 2:
      v12 = @"VECTOR_TRAFFIC_SEGMENTS_FOR_RASTER";
      break;
    case 3:
      v12 = @"VECTOR_TRAFFIC_INCIDENTS_FOR_RASTER";
      break;
    case 4:
      v12 = @"VECTOR_TRAFFIC_SEGMENTS_AND_INCIDENTS_FOR_RASTER";
      break;
    case 5:
      v12 = @"RASTER_STANDARD_BACKGROUND";
      break;
    case 6:
      v12 = @"RASTER_HYBRID";
      break;
    case 7:
      v12 = @"RASTER_SATELLITE";
      break;
    case 8:
      v12 = @"RASTER_TERRAIN";
      break;
    case 0xB:
      v12 = @"VECTOR_BUILDINGS";
      break;
    case 0xC:
      v12 = @"VECTOR_TRAFFIC";
      break;
    case 0xD:
      v12 = @"VECTOR_POI";
      break;
    case 0xE:
      v12 = @"SPUTNIK_METADATA";
      break;
    case 0xF:
      v12 = @"SPUTNIK_C3M";
      break;
    case 0x10:
      v12 = @"SPUTNIK_DSM";
      break;
    case 0x11:
      v12 = @"SPUTNIK_DSM_GLOBAL";
      break;
    case 0x12:
      v12 = @"VECTOR_REALISTIC";
      break;
    case 0x13:
      v12 = @"VECTOR_LEGACY_REALISTIC";
      break;
    case 0x14:
      v12 = @"VECTOR_ROADS";
      break;
    case 0x15:
      v12 = @"RASTER_VEGETATION";
      break;
    case 0x16:
      v12 = @"VECTOR_TRAFFIC_SKELETON";
      break;
    case 0x17:
      v12 = @"RASTER_COASTLINE_MASK";
      break;
    case 0x18:
      v12 = @"RASTER_HILLSHADE";
      break;
    case 0x19:
      v12 = @"VECTOR_TRAFFIC_WITH_GREEN";
      break;
    case 0x1A:
      v12 = @"VECTOR_TRAFFIC_STATIC";
      break;
    case 0x1B:
      v12 = @"RASTER_COASTLINE_DROP_MASK";
      break;
    case 0x1C:
      v12 = @"VECTOR_TRAFFIC_SKELETON_WITH_HISTORICAL";
      break;
    case 0x1D:
      v12 = @"VECTOR_SPEED_PROFILES";
      break;
    case 0x1E:
      v12 = @"VECTOR_VENUES";
      break;
    case 0x1F:
      v12 = @"RASTER_DOWN_SAMPLED";
      break;
    case 0x20:
      v12 = @"RASTER_COLOR_BALANCED";
      break;
    case 0x21:
      v12 = @"RASTER_SATELLITE_NIGHT";
      break;
    case 0x22:
      v12 = @"SPUTNIK_VECTOR_BORDER";
      break;
    case 0x23:
      v12 = @"RASTER_SATELLITE_DIGITIZE";
      break;
    case 0x24:
      v12 = @"RASTER_HILLSHADE_PARKS";
      break;
    case 0x25:
      v12 = @"VECTOR_TRANSIT";
      break;
    case 0x26:
      v12 = @"RASTER_STANDARD_BASE";
      break;
    case 0x27:
      v12 = @"RASTER_STANDARD_LABELS";
      break;
    case 0x28:
      v12 = @"RASTER_HYBRID_ROADS";
      break;
    case 0x29:
      v12 = @"RASTER_HYBRID_LABELS";
      break;
    case 0x2A:
      v12 = @"FLYOVER_C3M_MESH";
      break;
    case 0x2B:
      v12 = @"FLYOVER_C3M_JPEG_TEXTURE";
      break;
    case 0x2C:
      v12 = @"FLYOVER_C3M_ASTC_TEXTURE";
      break;
    case 0x2D:
      v12 = @"RASTER_SATELLITE_ASTC";
      break;
    case 0x2E:
      v12 = @"RASTER_HYBRID_ROADS_AND_LABELS";
      break;
    case 0x2F:
      v12 = @"VECTOR_TRANSIT_SELECTION";
      break;
    case 0x30:
      v12 = @"VECTOR_COVERAGE";
      break;
    case 0x34:
      v12 = @"FLYOVER_METADATA";
      break;
    case 0x35:
      v12 = @"VECTOR_ROAD_NETWORK";
      break;
    case 0x36:
      v12 = @"VECTOR_LAND_COVER";
      break;
    case 0x37:
      v12 = @"VECTOR_DEBUG";
      break;
    case 0x38:
      v12 = @"VECTOR_STREET_POI";
      break;
    case 0x39:
      v12 = @"MUNIN_METADATA";
      break;
    case 0x3A:
      v12 = @"VECTOR_SPR_MERCATOR";
      break;
    case 0x3B:
      v12 = @"VECTOR_SPR_MODELS";
      break;
    case 0x3C:
      v12 = @"VECTOR_SPR_MATERIALS";
      break;
    case 0x3D:
      v12 = @"VECTOR_SPR_METADATA";
      break;
    case 0x3E:
      v12 = @"VECTOR_TRACKS";
      break;
    case 0x3F:
      v12 = @"VECTOR_RESERVED_2";
      break;
    case 0x40:
      v12 = @"VECTOR_STREET_LANDMARKS";
      break;
    case 0x41:
      v12 = @"COARSE_LOCATION_POLYGONS";
      break;
    case 0x42:
      v12 = @"VECTOR_SPR_ROADS";
      break;
    case 0x43:
      v12 = @"VECTOR_SPR_STANDARD";
      break;
    case 0x44:
      v12 = @"VECTOR_POI_V2";
      break;
    case 0x45:
      v12 = @"VECTOR_POLYGON_SELECTION";
      break;
    case 0x46:
      v12 = @"VL_METADATA";
      break;
    case 0x47:
      v12 = @"VL_DATA";
      break;
    case 0x48:
      v12 = @"PROACTIVE_APP_CLIP";
      break;
    case 0x49:
      v12 = @"VECTOR_BUILDINGS_V2";
      break;
    case 0x4A:
      v12 = @"POI_BUSYNESS";
      break;
    case 0x4B:
      v12 = @"POI_DP_BUSYNESS";
      break;
    case 0x4C:
      v12 = @"SMART_INTERFACE_SELECTION";
      break;
    case 0x4D:
      v12 = @"VECTOR_ASSETS";
      break;
    case 0x4E:
      v12 = @"SPR_ASSET_METADATA";
      break;
    case 0x4F:
      v12 = @"VECTOR_SPR_POLAR";
      break;
    case 0x50:
      v12 = @"SMART_DATA_MODE";
      break;
    case 0x51:
      v12 = @"CELLULAR_PERFORMANCE_SCORE";
      break;
    case 0x52:
      v12 = @"VECTOR_SPR_MODELS_OCCLUSION";
      break;
    case 0x53:
      v12 = @"VECTOR_TOPOGRAPHIC";
      break;
    case 0x54:
      v12 = @"VECTOR_POI_V2_UPDATE";
      break;
    case 0x55:
      v12 = @"VECTOR_LIVE_DATA_UPDATES";
      break;
    case 0x56:
      v12 = @"VECTOR_TRAFFIC_V2";
      break;
    case 0x57:
      v12 = @"VECTOR_ROAD_SELECTION";
      break;
    case 0x58:
      v12 = @"VECTOR_REGION_METADATA";
      break;
    case 0x59:
      v12 = @"RAY_TRACING";
      break;
    case 0x5A:
      v12 = @"VECTOR_CONTOURS";
      break;
    case 0x5B:
      v12 = @"RASTER_SATELLITE_POLAR";
      break;
    case 0x5C:
      v12 = @"VMAP4_ELEVATION";
      break;
    case 0x5D:
      v12 = @"VMAP4_ELEVATION_POLAR";
      break;
    case 0x5E:
      v12 = @"CELLULAR_COVERAGE_PLMN";
      break;
    case 0x5F:
      v12 = @"RASTER_SATELLITE_POLAR_NIGHT";
      break;
    case 0x60:
      v12 = @"BLUEPOI_MODEL";
      break;
    case 0x61:
      v12 = @"BLUEPOI_AOI";
      break;
    case 0x62:
      v12 = @"UNUSED_98";
      break;
    case 0x63:
      v12 = @"UNUSED_99";
      break;
    case 0x64:
      v12 = @"UNUSED_100";
      break;
    case 0x65:
      v12 = @"UNUSED_101";
      break;
    case 0x66:
      v12 = @"UNUSED_102";
      break;
    case 0x67:
      v12 = @"UNUSED_103";
      break;
    case 0x68:
      v12 = @"UNUSED_104";
      break;
    case 0x69:
      v12 = @"UNUSED_105";
      break;
    case 0x6A:
      v12 = @"UNUSED_106";
      break;
    case 0x6B:
      v12 = @"UNUSED_107";
      break;
    case 0x6C:
      v12 = @"UNUSED_108";
      break;
    case 0x6D:
      v12 = @"UNUSED_109";
      break;
    case 0x6E:
      v12 = @"UNUSED_110";
      break;
    case 0x6F:
      v12 = @"UNUSED_111";
      break;
    case 0x70:
      v12 = @"UNUSED_112";
      break;
    case 0x71:
      v12 = @"UNUSED_113";
      break;
    case 0x72:
      v12 = @"UNUSED_114";
      break;
    case 0x73:
      v12 = @"UNUSED_115";
      break;
    case 0x74:
      v12 = @"UNUSED_116";
      break;
    case 0x75:
      v12 = @"UNUSED_117";
      break;
    case 0x76:
      v12 = @"UNUSED_118";
      break;
    case 0x77:
      v12 = @"UNUSED_119";
      break;
    default:
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *(a1 + 712)];
      break;
  }

  gdc::DebugTreeValue::DebugTreeValue(v22, [(__CFString *)v12 UTF8String]);
  gdc::DebugTreeNode::addProperty(a2, &v43, v22);
  if (v24 < 0)
  {
    operator delete(v23);
  }

  if (v44 < 0)
  {
    operator delete(v43);
  }

  std::string::basic_string[abi:nn200100]<0>(&v43, "Tile Set");
  v13 = *(a1 + 768);
  if (v13)
  {
    v10 = [*(a1 + 768) description];
    v14 = [v10 UTF8String];
  }

  else
  {
    v14 = "null";
  }

  gdc::DebugTreeValue::DebugTreeValue(v19, v14);
  gdc::DebugTreeNode::addProperty(a2, &v43, v19);
  if (v21 < 0)
  {
    operator delete(v20);
  }

  if (v13)
  {
  }

  if (v44 < 0)
  {
    operator delete(v43);
  }

  if (*(a1 + 488) == 1)
  {
    std::string::basic_string[abi:nn200100]<0>(&v43, "Active GEOKeys");
    std::mutex::lock((a1 + 496));
    v15 = *(a1 + 584);
    std::mutex::unlock((a1 + 496));
    gdc::DebugTreeValue::DebugTreeValue(v16, v15);
    gdc::DebugTreeNode::addProperty(a2, &v43, v16);
    if (v18 < 0)
    {
      operator delete(v17);
    }

    if (v44 < 0)
    {
      operator delete(v43);
    }
  }
}

void sub_1B2EC1EE0(_Unwind_Exception *a1)
{
  if (*(v2 - 49) < 0)
  {
    operator delete(*(v2 - 72));
  }

  *(v2 - 72) = v1 + 72;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100]((v2 - 72));
  *(v2 - 72) = v1 + 48;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100]((v2 - 72));
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

float *md::TiledGEOResourceFetcher::setContentScale(float *this, float a2)
{
  if (this[2] != a2)
  {
    this[2] = a2;
    return (*(*this + 96))();
  }

  return this;
}

void *md::TiledGEOResourceFetcher::tileSetInfo(md::TiledGEOResourceFetcher *this)
{
  result = *(this + 96);
  if (result)
  {
    v3 = objc_msgSend_style(result);
    v4 = [*(this + 96) version];
    return (v4 & 0xFFFFFF00 | (v3 << 32) | v4);
  }

  return result;
}

void md::TiledGEOResourceFetcher::expireResource(md::TiledGEOResourceFetcher *this, const gdc::ResourceKey *a2)
{
  v3 = (*(*this + 152))(this, *(this + 96), a2);
  v5 = v4;
  v6 = md::TiledGEOResourceFetcher::getTileLoader(this);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___ZN2md23TiledGEOResourceFetcher14expireResourceERKN3gdc11ResourceKeyE_block_invoke;
  v7[3] = &__block_descriptor_48_e733_B24__0r___GEOTileKey_b7b1_____GEOStandardTileKey_b40b6b26b26b14b4b4___GEOGloriaQuadIDTileKey_b6b64b14b4______b10b10b12____b10b22_I____GEORegionalResourceKey_b32b8b6b8b8b1b57___GEOSputnikMetadataKey_b32b24b14b8b42___GEOFlyoverKey_b6b26b26b8b24b14b8b8___GEOTransitLineSelectionKey_b6b25b25b64___GEOPolygonSelectionKey_b6b25b25b64___GEORoadSelectionKey_b6b25b25b64___GEOContourLinesKey_b6b26b26b4b8b50___GEOTileOverlayKey_b6b26b26b8b32b16b6___GEOIdentifiedResourceKey_QCCb1b39___GEOMuninMeshKey_b64b32b16b5b3___GEOVisualLocalizationTrackKey_SCb16b6b26b26b22___GEOVisualLocalizationMetadataKey_b6b9b25b6b26b26b22___GEOVisualLocalizationDataKey_QCb5b21b21b1___GEOS2TileKey_b6b26b26b3b14b4b4b37___GEOLiveTileKey_b6b26b26b14b4b4b4b36___8d16l;
  v7[4] = v3;
  v7[5] = v5;
  [v6 expireTilesWithPredicate:v7];
}

void md::TiledGEOResourceFetcher::cancelAllResources(md::TiledGEOResourceFetcher *this)
{
  v7 = *MEMORY[0x1E69E9840];
  if (GEOGetVectorKitResourceLoadingLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitResourceLoadingLog_onceToken, &__block_literal_global_29);
  }

  v2 = GEOGetVectorKitResourceLoadingLog_log;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = (*(**(this + 56) + 16))(*(this + 56));
    v5 = 136315138;
    v6 = v3;
    _os_log_impl(&dword_1B2754000, v2, OS_LOG_TYPE_DEBUG, "%s TiledGEOResourceFetcher canceling all resources", &v5, 0xCu);
  }

  v4 = md::TiledGEOResourceFetcher::getTileLoader(this);
  [v4 cancelAllForClientSynchronous:*(this + 78)];
  [v4 cancelAllForClientSynchronous:*(this + 81)];
}

void md::TiledGEOResourceFetcher::cancelResource(md::TiledGEOResourceFetcher *this, const gdc::ResourceKey *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (GEOGetVectorKitResourceLoadingLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitResourceLoadingLog_onceToken, &__block_literal_global_29);
  }

  v4 = GEOGetVectorKitResourceLoadingLog_log;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = (*(**(this + 56) + 16))(*(this + 56));
    gdc::ResourceKey::keysInt32Str(&__p, a2);
    v6 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    *buf = 136315394;
    v13 = v5;
    v14 = 2080;
    v15 = v6;
    _os_log_impl(&dword_1B2754000, v4, OS_LOG_TYPE_DEBUG, "%s TiledGEOResourceFetcher canceling resource: %s", buf, 0x16u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v7 = md::TiledGEOResourceFetcher::getTileLoader(this);
  __p.__r_.__value_.__r.__words[0] = (*(*this + 152))(this, *(this + 96), a2);
  __p.__r_.__value_.__l.__size_ = v8;
  if (*a2)
  {
    v9 = *(this + 81);
  }

  else
  {
    v9 = *(this + 78);
  }

  v10 = v9;
  [v7 cancelKey:&__p forClient:v10];
}

void md::TiledGEOResourceFetcher::cancelResources(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = md::TiledGEOResourceFetcher::getTileLoader(a1);
  for (i = *(a2 + 16); i; i = *i)
  {
    v13 = 0;
    v14 = 0;
    v13 = (*(*a1 + 152))(a1, *(a1 + 768), i + 2);
    v14 = v6;
    if (GEOGetVectorKitResourceLoadingLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitResourceLoadingLog_onceToken, &__block_literal_global_29);
    }

    v7 = GEOGetVectorKitResourceLoadingLog_log;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = (*(**(a1 + 448) + 16))(*(a1 + 448));
      gdc::ResourceKey::keysInt32Str(&__p, i + 16);
      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315394;
      v16 = v8;
      v17 = 2080;
      v18 = p_p;
      _os_log_impl(&dword_1B2754000, v7, OS_LOG_TYPE_DEBUG, "%s TiledGEOResourceFetcher canceling resource: %s", buf, 0x16u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    if (i[16])
    {
      v10 = *(a1 + 648);
    }

    else
    {
      v10 = *(a1 + 624);
    }

    v11 = v10;
    [v4 cancelKey:&v13 forClient:v11];
  }
}

void md::TiledGEOResourceFetcher::~TiledGEOResourceFetcher(md::TiledGEOResourceFetcher *this)
{
  *this = &unk_1F2A0E6B0;
  v2 = md::TiledGEOResourceFetcher::getTileLoader(this);
  [v2 cancelAllForClient:*(this + 78)];
  [v2 cancelAllForClient:*(this + 81)];
  [v2 closeForClient:*(this + 78)];
  [v2 closeForClient:*(this + 81)];

  v3 = *(this + 91);
  if (v3)
  {
    *(this + 92) = v3;
    operator delete(v3);
  }

  *(this + 86) = &unk_1F2A55A90;
  *(this + 83) = &unk_1F2A2FB88;

  *(this + 80) = &unk_1F2A3D108;
  *(this + 77) = &unk_1F2A3D108;

  v4 = *(this + 76);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  *this = off_1F2A2FAE8;
  std::__hash_table<std::__hash_value_type<std::pair<_GEOTileKey,void *>,gdc::ResourceKey>,std::__unordered_map_hasher<std::pair<_GEOTileKey,void *>,std::__hash_value_type<std::pair<_GEOTileKey,void *>,gdc::ResourceKey>,md::UniqueKeyHasher,std::equal_to<std::pair<_GEOTileKey,void *>>,true>,std::__unordered_map_equal<std::pair<_GEOTileKey,void *>,std::__hash_value_type<std::pair<_GEOTileKey,void *>,gdc::ResourceKey>,std::equal_to<std::pair<_GEOTileKey,void *>>,md::UniqueKeyHasher,true>,std::allocator<std::__hash_value_type<std::pair<_GEOTileKey,void *>,gdc::ResourceKey>>>::~__hash_table(this + 560);
  std::mutex::~mutex((this + 496));
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](this + 456);

  gdc::ResourceFetcher::~ResourceFetcher(this);
}

void sub_1B2EC280C(_Unwind_Exception *a1)
{
  v4 = *(v1 + 728);
  if (v4)
  {
    *(v1 + 736) = v4;
    operator delete(v4);
  }

  *(v1 + 688) = &unk_1F2A55A90;
  *(v1 + 664) = &unk_1F2A2FB88;

  *(v1 + 640) = &unk_1F2A3D108;
  *(v1 + 616) = &unk_1F2A3D108;

  v5 = *(v1 + 608);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  *v1 = off_1F2A2FAE8;
  std::__hash_table<std::__hash_value_type<std::pair<_GEOTileKey,void *>,gdc::ResourceKey>,std::__unordered_map_hasher<std::pair<_GEOTileKey,void *>,std::__hash_value_type<std::pair<_GEOTileKey,void *>,gdc::ResourceKey>,md::UniqueKeyHasher,std::equal_to<std::pair<_GEOTileKey,void *>>,true>,std::__unordered_map_equal<std::pair<_GEOTileKey,void *>,std::__hash_value_type<std::pair<_GEOTileKey,void *>,gdc::ResourceKey>,std::equal_to<std::pair<_GEOTileKey,void *>>,md::UniqueKeyHasher,true>,std::allocator<std::__hash_value_type<std::pair<_GEOTileKey,void *>,gdc::ResourceKey>>>::~__hash_table(v1 + 560);
  std::mutex::~mutex((v1 + 496));
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v1 + 456);
  gdc::ResourceFetcher::~ResourceFetcher(v1);
  _Unwind_Resume(a1);
}

void md::Logic<md::VenueLogic,md::VenueLogicContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::ElevationContext,md::SceneContext>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2, v3);
}

void std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,std::shared_ptr<md::Venue const>>>(void *a1, unint64_t a2, uint64_t a3)
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
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,std::vector<unsigned long long>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<unsigned long long>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<unsigned long long>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::vector<unsigned long long>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(float *a1, unint64_t a2, void **a3)
{
  v3 = *(a1 + 2);
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

void sub_1B2EC3010(_Unwind_Exception *a1)
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

void std::vector<unsigned long long>::__insert_with_size[abi:nn200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return;
  }

  v6 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 3)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 3);
    if (v12 >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v13 = v9 - v11;
    if (v13 >> 2 > v12)
    {
      v12 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    v15 = (__dst - v11) >> 3;
    if (v14)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v14);
    }

    v31 = 8 * v15;
    v32 = 8 * a5;
    v33 = (8 * v15);
    do
    {
      v34 = *v6;
      v6 += 8;
      *v33++ = v34;
      v32 -= 8;
    }

    while (v32);
    memcpy((v31 + 8 * a5), __dst, a1[1] - __dst);
    v35 = *a1;
    v36 = v31 + 8 * a5 + a1[1] - __dst;
    a1[1] = __dst;
    v37 = (__dst - v35);
    v38 = (v31 - (__dst - v35));
    memcpy(v38, v35, v37);
    v39 = *a1;
    *a1 = v38;
    a1[1] = v36;
    a1[2] = 0;
    if (v39)
    {

      operator delete(v39);
    }

    return;
  }

  v16 = (v10 - __dst) >> 3;
  if (v16 >= a5)
  {
    v20 = &__dst[8 * a5];
    v21 = &v10[-8 * a5];
    v22 = a1[1];
    while (v21 < v10)
    {
      v23 = *v21;
      v21 += 8;
      *v22++ = v23;
    }

    a1[1] = v22;
    if (v10 != v20)
    {
      memmove(&__dst[8 * a5], __dst, v10 - v20);
    }

    v28 = 8 * a5;
    v29 = __dst;
    v30 = v6;
    goto LABEL_35;
  }

  v17 = &__src[v10 - __dst];
  v18 = a1[1];
  while (v17 != a4)
  {
    v19 = *v17;
    v17 += 8;
    *v18 = v19;
    v18 += 8;
  }

  a1[1] = v18;
  if (v16 >= 1)
  {
    v24 = &__dst[8 * a5];
    v25 = &v18[-8 * a5];
    v26 = v18;
    while (v25 < v10)
    {
      v27 = *v25;
      v25 += 8;
      *v26 = v27;
      v26 += 8;
    }

    a1[1] = v26;
    if (v18 != v24)
    {
      memmove(&__dst[8 * a5], __dst, v18 - v24);
    }

    if (v10 != __dst)
    {
      v29 = __dst;
      v30 = v6;
      v28 = v10 - __dst;
LABEL_35:

      memmove(v29, v30, v28);
    }
  }
}

const void **std::vector<std::shared_ptr<md::Venue const>>::emplace_back<std::shared_ptr<md::Venue const>>(const void **result, uint64_t a2)
{
  v2 = result;
  v4 = result[1];
  v3 = result[2];
  if (v4 >= v3)
  {
    v6 = (v4 - *result) >> 4;
    if ((v6 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v7 = v3 - *result;
    v8 = v7 >> 3;
    if (v7 >> 3 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    v15[4] = v2;
    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<md::Venue const>>>(v9);
    }

    v10 = (16 * v6);
    *v10 = *a2;
    v5 = 16 * v6 + 16;
    *a2 = 0;
    *(a2 + 8) = 0;
    v11 = v2[1] - *v2;
    v12 = v10 - v11;
    memcpy(v10 - v11, *v2, v11);
    v13 = *v2;
    *v2 = v12;
    v2[1] = v5;
    v14 = v2[2];
    v2[2] = 0;
    v15[2] = v13;
    v15[3] = v14;
    v15[0] = v13;
    v15[1] = v13;
    result = std::__split_buffer<std::shared_ptr<md::MuninRoadLabel>>::~__split_buffer(v15);
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  v2[1] = v5;
  return result;
}

void md::VenueLogic::_runExtrusionAnimation(md::VenueLogic *this)
{
  v2 = *(this + 123);
  if (*(this + 688))
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.0;
  }

  [*(this + 84) stop];
  v4 = [[VKTimedAnimation alloc] initWithDuration:(vabds_f32(v3, v2) * 0.3)];
  geo::_retain_ptr<LabelNavRouteContextObserverProxy * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::reset(this + 664, v4);

  v5 = *(this + 84);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = ___ZN2md10VenueLogic22_runExtrusionAnimationEv_block_invoke;
  v9[3] = &__block_descriptor_48_e8_v12__0f8l;
  v9[4] = this;
  v10 = v2;
  v11 = v3;
  [v5 setStepHandler:v9];
  v6 = *(this + 84);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___ZN2md10VenueLogic22_runExtrusionAnimationEv_block_invoke_2;
  v7[3] = &__block_descriptor_44_e8_v12__0B8l;
  v7[4] = this;
  v8 = v3;
  [v6 setCompletionHandler:v7];
  if (*(this + 102))
  {
    std::function<void ()(VKAnimation *)>::operator()(this + 792, *(this + 84));
  }
}

double std::__function::__value_func<void ()(md::Venue const*,md::VenueBuilding const*)>::operator()[abi:nn200100](uint64_t a1)
{
  if (a1)
  {
    v2 = *(*a1 + 48);

    v2();
  }

  else
  {
    v4 = std::__throw_bad_function_call[abi:nn200100]();
    return std::__function::__value_func<void ()(md::Venue const*)>::operator()[abi:nn200100](v4);
  }

  return result;
}

double std::__function::__value_func<void ()(md::Venue const*)>::operator()[abi:nn200100](uint64_t a1)
{
  if (a1)
  {
    v2 = *(*a1 + 48);

    v2();
  }

  else
  {
    v4 = std::__throw_bad_function_call[abi:nn200100]();
    return geo::ConvexHull2<double>::distanceSquaredTo(v4, v5, v6, v7);
  }

  return result;
}

double geo::ConvexHull2<double>::distanceSquaredTo(float64x2_t *a1, float64x2_t *a2, float64x2_t *a3, double result)
{
  v4 = a2 - a1;
  if (v4)
  {
    if (v4 == 1)
    {
      v5 = vsubq_f64(*a3, *a1);
      return vaddvq_f64(vmulq_f64(v5, v5));
    }

    if (a2 == a1)
    {
      return 0.0;
    }

    v6 = a2 - a1;
    v7 = *a3;
    v8 = 1;
    v9 = 1.79769313e308;
    v10 = a1;
    v11 = 1;
    while (1)
    {
      if (v4 == v8)
      {
        v12 = 0;
      }

      else
      {
        v12 = v8;
      }

      v13 = *v10;
      v14 = a1[v12];
      v15 = vsubq_f64(v14, *v10);
      v16 = vextq_s8(v15, v15, 8uLL);
      v17 = vsubq_f64(v7, *v10);
      v18 = vmulq_f64(v17, v16);
      if ((vmovn_s64(vcgtq_f64(v18, vdupq_laneq_s64(v18, 1))).u8[0] & 1) == 0)
      {
        goto LABEL_16;
      }

      v19 = vextq_s8(v17, v15, 8uLL);
      v17.f64[1] = v15.f64[1];
      v20 = vmlaq_f64(vmulq_f64(v16, v19), v17, v15);
      v21 = vdivq_f64(v20, vdupq_laneq_s64(v20, 1)).f64[0];
      if (v21 < 0.0)
      {
        goto LABEL_14;
      }

      if (v21 <= 1.0)
      {
        break;
      }

LABEL_15:
      v11 = 0;
      v22 = vsubq_f64(v14, v7);
      v9 = fmin(v9, vaddvq_f64(vmulq_f64(v22, v22)));
LABEL_16:
      ++v8;
      ++v10;
      if (!--v6)
      {
        result = 0.0;
        if ((v11 & 1) == 0)
        {
          return v9;
        }

        return result;
      }
    }

    v13 = vmlaq_n_f64(v13, v15, v21);
LABEL_14:
    v14 = v13;
    goto LABEL_15;
  }

  return result;
}

float64x2_t md::calculateSkewMatrix(uint64_t a1, float64x2_t *a2, double a3)
{
  v5 = 1.0 - fmin(fmax(a3 * 0.0333333333, 0.0), 1.0);
  v6 = tan(0.296705973);
  v7 = v6;
  *&v6 = v5;
  (*(VKAnimationCurveEaseIn + 2))(v6);
  v9 = *a2;
  *a1 = xmmword_1B33B0680;
  *(a1 + 16) = 0u;
  *(a1 + 32) = xmmword_1B33B0740;
  *(a1 + 48) = 0u;
  result = vmulq_n_f64(v9, v7 * v8 / sqrt(vaddvq_f64(vmulq_f64(v9, v9))));
  *(a1 + 64) = result;
  *(a1 + 80) = xmmword_1B33B0680;
  *(a1 + 96) = 0u;
  *(a1 + 112) = xmmword_1B33B0740;
  return result;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,md::VenueBuildingLevelState>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,md::VenueBuildingLevelState>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,md::VenueBuildingLevelState>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,md::VenueBuildingLevelState>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::__deallocate_node(*(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,md::VenueBuildingLevelState>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,md::VenueBuildingLevelState>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,md::VenueBuildingLevelState>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,md::VenueBuildingLevelState>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(void *a1, unint64_t a2, void **a3)
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

void std::vector<md::VenueLevelScale>::reserve(void *a1, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3) < a2)
  {
    if (a2 < 0x492492492492493)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::VenueLevelScale>>(a2);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }
}

double std::sort[abi:nn200100]<std::__wrap_iter<md::VenueLevelScale *>,md::VenueLogic::updateVenueLevelScales(void)::$_0>(unint64_t a1, unint64_t a2, __n128 a3)
{
  v3 = 126 - 2 * __clz(0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 3));
  if (a2 == a1)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  *&result = std::__introsort<std::_ClassicAlgPolicy,md::VenueLogic::updateVenueLevelScales(void)::$_0 &,md::VenueLevelScale *,false>(a1, a2, v4, 1, a3).n128_u64[0];
  return result;
}

void std::vector<md::VenueLevelScale>::push_back[abi:nn200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v9 = 0x6DB6DB6DB6DB6DB7 * ((v3 - *a1) >> 3);
    v10 = v9 + 1;
    if ((v9 + 1) > 0x492492492492492)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v11 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x249249249249249)
    {
      v12 = 0x492492492492492;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::VenueLevelScale>>(v12);
    }

    v13 = 56 * v9;
    v14 = *a2;
    v15 = a2[1];
    v16 = a2[2];
    *(v13 + 48) = *(a2 + 6);
    *(v13 + 16) = v15;
    *(v13 + 32) = v16;
    *v13 = v14;
    v8 = 56 * v9 + 56;
    v17 = *(a1 + 8) - *a1;
    v18 = v13 - v17;
    memcpy((v13 - v17), *a1, v17);
    v19 = *a1;
    *a1 = v18;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    v5 = *a2;
    v6 = a2[1];
    v7 = a2[2];
    *(v3 + 48) = *(a2 + 6);
    *(v3 + 16) = v6;
    *(v3 + 32) = v7;
    *v3 = v5;
    v8 = v3 + 56;
  }

  *(a1 + 8) = v8;
}

uint64_t *std::vector<md::VenueLevelScale>::vector[abi:nn200100](uint64_t *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<md::VenueLevelScale>::__vallocate[abi:nn200100](a1, 0x6DB6DB6DB6DB6DB7 * ((v2 - *a2) >> 3));
  }

  return a1;
}

void std::vector<md::VenueLevelScale>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<md::VenueLevelScale>>(a2);
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<md::VenueLevelScale>>(unint64_t a1)
{
  if (a1 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

__n128 std::__introsort<std::_ClassicAlgPolicy,md::VenueLogic::updateVenueLevelScales(void)::$_0 &,md::VenueLevelScale *,false>(unint64_t a1, unint64_t a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = (a2 - 56);
  v10 = (a2 - 112);
  v11 = (a2 - 168);
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    v14 = 0x6DB6DB6DB6DB6DB7 * ((a2 - v12) >> 3);
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return result;
      }

      if (v14 == 2)
      {
        if (*(a2 - 24) <= *(v12 + 32))
        {
          return result;
        }

LABEL_110:
        v370 = *(v12 + 48);
        v315 = *(v12 + 16);
        v345 = *(v12 + 32);
        v282 = *v12;
        v156 = *v9;
        v157 = *(a2 - 40);
        v158 = *(a2 - 24);
        *(v12 + 48) = *(a2 - 8);
        *(v12 + 16) = v157;
        *(v12 + 32) = v158;
        *v12 = v156;
        result = v282;
        v159 = v315;
        *(a2 - 8) = v370;
        *(a2 - 24) = v345;
LABEL_111:
        *v9 = result;
        *(a2 - 40) = v159;
        return result;
      }

      goto LABEL_9;
    }

    if (v14 == 3)
    {
      break;
    }

    if (v14 == 4)
    {
      v160 = *(v12 + 88);
      v161 = *(v12 + 144);
      if (v160 <= *(v12 + 32))
      {
        if (v161 > v160)
        {
          v222 = *(v12 + 104);
          result = *(v12 + 88);
          v223 = *(v12 + 56);
          v224 = *(v12 + 128);
          *(v12 + 56) = *(v12 + 112);
          v225 = *(v12 + 72);
          *(v12 + 72) = v224;
          *(v12 + 88) = *(v12 + 144);
          *(v12 + 104) = *(v12 + 160);
          *(v12 + 112) = v223;
          *(v12 + 128) = v225;
          *(v12 + 144) = result;
          *(v12 + 160) = v222;
          if (*(v12 + 88) > *(v12 + 32))
          {
            v373 = *(v12 + 48);
            v321 = *(v12 + 16);
            v348 = *(v12 + 32);
            v287 = *v12;
            v226 = *(v12 + 72);
            *v12 = *(v12 + 56);
            *(v12 + 16) = v226;
            *(v12 + 32) = *(v12 + 88);
            *(v12 + 48) = *(v12 + 104);
            result = v287;
            *(v12 + 104) = v373;
            *(v12 + 88) = v348;
            *(v12 + 72) = v321;
            *(v12 + 56) = v287;
          }
        }
      }

      else if (v161 <= v160)
      {
        v375 = *(v12 + 48);
        v324 = *(v12 + 16);
        v350 = *(v12 + 32);
        v290 = *v12;
        v237 = *(v12 + 72);
        *v12 = *(v12 + 56);
        *(v12 + 16) = v237;
        *(v12 + 32) = *(v12 + 88);
        *(v12 + 48) = *(v12 + 104);
        result = v290;
        *(v12 + 104) = v375;
        *(v12 + 88) = v350;
        *(v12 + 72) = v324;
        *(v12 + 56) = v290;
        if (v161 > *(v12 + 88))
        {
          v238 = *(v12 + 104);
          result = *(v12 + 88);
          v239 = *(v12 + 56);
          v240 = *(v12 + 128);
          *(v12 + 56) = *(v12 + 112);
          v241 = *(v12 + 72);
          *(v12 + 72) = v240;
          *(v12 + 88) = *(v12 + 144);
          *(v12 + 104) = *(v12 + 160);
          *(v12 + 112) = v239;
          *(v12 + 128) = v241;
          *(v12 + 144) = result;
          *(v12 + 160) = v238;
        }
      }

      else
      {
        v371 = *(v12 + 48);
        v316 = *(v12 + 16);
        v346 = *(v12 + 32);
        v283 = *v12;
        v162 = *(v12 + 128);
        *v12 = *(v12 + 112);
        *(v12 + 16) = v162;
        *(v12 + 32) = *(v12 + 144);
        *(v12 + 48) = *(v12 + 160);
        result = v283;
        *(v12 + 160) = v371;
        *(v12 + 128) = v316;
        *(v12 + 144) = v346;
        *(v12 + 112) = v283;
      }

      if (*(a2 - 24) <= *(v12 + 144))
      {
        return result;
      }

      result = *(v12 + 112);
      v325 = *(v12 + 128);
      v242 = *(v12 + 144);
      v243 = *(v12 + 160);
      v244 = *(a2 - 8);
      v246 = *(a2 - 40);
      v245 = *(a2 - 24);
      *(v12 + 112) = *v9;
      *(v12 + 128) = v246;
      *(v12 + 144) = v245;
      *(v12 + 160) = v244;
      *(a2 - 40) = v325;
      *(a2 - 24) = v242;
      *(a2 - 8) = v243;
      *v9 = result;
      if (*(v12 + 144) <= *(v12 + 88))
      {
        return result;
      }

      v247 = *(v12 + 104);
      result = *(v12 + 88);
      v248 = *(v12 + 56);
      v249 = *(v12 + 128);
      *(v12 + 56) = *(v12 + 112);
      v250 = *(v12 + 72);
      *(v12 + 72) = v249;
      *(v12 + 88) = *(v12 + 144);
      *(v12 + 104) = *(v12 + 160);
      *(v12 + 112) = v248;
      *(v12 + 128) = v250;
      *(v12 + 144) = result;
      *(v12 + 160) = v247;
LABEL_192:
      if (*(v12 + 88) > *(v12 + 32))
      {
        v376 = *(v12 + 48);
        v326 = *(v12 + 16);
        v351 = *(v12 + 32);
        v291 = *v12;
        v251 = *(v12 + 72);
        *v12 = *(v12 + 56);
        *(v12 + 16) = v251;
        *(v12 + 32) = *(v12 + 88);
        *(v12 + 48) = *(v12 + 104);
        result = v291;
        *(v12 + 104) = v376;
        *(v12 + 88) = v351;
        *(v12 + 72) = v326;
        *(v12 + 56) = v291;
      }

      return result;
    }

    if (v14 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::VenueLogic::updateVenueLevelScales(void)::$_0 &,md::VenueLevelScale *,0>(v12, (v12 + 56), (v12 + 112), (v12 + 168), (a2 - 56), result).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 1343)
    {
      v163 = (v12 + 56);
      v165 = v12 == a2 || v163 == a2;
      if (a4)
      {
        if (!v165)
        {
          v166 = 0;
          v167 = v12;
          do
          {
            v168 = v163;
            v169 = *(v167 + 44);
            if (v169 > *(v167 + 16))
            {
              v284 = *v168;
              v317 = v168[1];
              *v257 = *(v167 + 90);
              *&v257[14] = *(v167 + 13);
              v170 = v166;
              while (1)
              {
                v171 = v12 + v170;
                v172 = *(v12 + v170 + 16);
                *(v171 + 56) = *(v12 + v170);
                *(v171 + 72) = v172;
                *(v171 + 88) = *(v12 + v170 + 32);
                *(v171 + 104) = *(v12 + v170 + 48);
                if (!v170)
                {
                  break;
                }

                v170 -= 56;
                if (v169 <= *(v171 - 24))
                {
                  v173 = v12 + v170 + 56;
                  goto LABEL_130;
                }
              }

              v173 = v12;
LABEL_130:
              *v173 = v284;
              *(v173 + 16) = v317;
              *(v173 + 32) = v169;
              result.n128_u64[0] = *v257;
              *(v173 + 34) = *v257;
              *(v173 + 48) = *&v257[14];
            }

            v163 = v168 + 56;
            v166 += 56;
            v167 = v168;
          }

          while ((v168 + 56) != a2);
        }
      }

      else if (!v165)
      {
        do
        {
          v227 = v163;
          v228 = *(a1 + 88);
          if (v228 > *(a1 + 32))
          {
            v288 = *v163;
            v322 = *(v163 + 1);
            *v260 = *(a1 + 90);
            *&v260[14] = *(a1 + 104);
            do
            {
              v229 = *(v163 - 40);
              *v163 = *(v163 - 56);
              *(v163 + 1) = v229;
              *(v163 + 2) = *(v163 - 24);
              *(v163 + 6) = *(v163 - 1);
              v230 = *(v163 - 40);
              v163 -= 56;
            }

            while (v228 > v230);
            *v163 = v288;
            *(v163 + 1) = v322;
            *(v163 + 16) = v228;
            result = *v260;
            *(v163 + 6) = *&v260[14];
            *(v163 + 34) = *v260;
          }

          v163 = (v227 + 56);
          a1 = v227;
        }

        while (v227 + 56 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v174 = (v14 - 2) >> 1;
        v175 = v174;
        do
        {
          v176 = v175;
          if (v174 >= v175)
          {
            v177 = (2 * v175) | 1;
            v178 = v12 + 56 * v177;
            if (2 * v175 + 2 < v14)
            {
              v179 = *(v178 + 32);
              v180 = *(v178 + 88);
              v181 = v179 <= v180;
              v182 = v179 <= v180 ? 0 : 56;
              v178 += v182;
              if (!v181)
              {
                v177 = 2 * v175 + 2;
              }
            }

            v183 = v12 + 56 * v175;
            v184 = *(v183 + 32);
            if (*(v178 + 32) <= v184)
            {
              v285 = *v183;
              v318 = *(v183 + 16);
              *&v258[14] = *(v183 + 48);
              *v258 = *(v183 + 34);
              do
              {
                v185 = v183;
                v183 = v178;
                v186 = *v178;
                v187 = *(v178 + 16);
                v188 = *(v178 + 32);
                *(v185 + 48) = *(v178 + 48);
                *(v185 + 16) = v187;
                *(v185 + 32) = v188;
                *v185 = v186;
                if (v174 < v177)
                {
                  break;
                }

                v189 = (2 * v177) | 1;
                v178 = v12 + 56 * v189;
                v190 = 2 * v177 + 2;
                if (v190 < v14)
                {
                  v191 = *(v178 + 32);
                  v192 = *(v178 + 88);
                  v193 = v191 <= v192;
                  v194 = v191 <= v192 ? 0 : 56;
                  v178 += v194;
                  if (!v193)
                  {
                    v189 = v190;
                  }
                }

                v177 = v189;
              }

              while (*(v178 + 32) <= v184);
              *v183 = v285;
              *(v183 + 16) = v318;
              *(v183 + 32) = v184;
              *(v183 + 34) = *v258;
              *(v183 + 48) = *&v258[14];
            }
          }

          v175 = v176 - 1;
        }

        while (v176);
        v195 = 0x6DB6DB6DB6DB6DB7 * (v13 >> 3);
        do
        {
          v196 = 0;
          v372 = *(v12 + 48);
          v319 = *(v12 + 16);
          v347 = *(v12 + 32);
          v286 = *v12;
          v197 = v12;
          do
          {
            v198 = v197 + 56 * v196;
            v199 = v198 + 56;
            v200 = (2 * v196) | 1;
            v196 = 2 * v196 + 2;
            if (v196 >= v195)
            {
              v196 = v200;
            }

            else
            {
              v201 = *(v198 + 88);
              v202 = *(v198 + 144);
              v203 = v198 + 112;
              if (v201 <= v202)
              {
                v196 = v200;
              }

              else
              {
                v199 = v203;
              }
            }

            v204 = *v199;
            v205 = *(v199 + 16);
            v206 = *(v199 + 32);
            *(v197 + 48) = *(v199 + 48);
            *(v197 + 16) = v205;
            *(v197 + 32) = v206;
            *v197 = v204;
            v197 = v199;
          }

          while (v196 <= ((v195 - 2) >> 1));
          a2 -= 56;
          if (v199 == a2)
          {
            result = v286;
            *(v199 + 48) = v372;
            *(v199 + 16) = v319;
            *(v199 + 32) = v347;
            *v199 = v286;
          }

          else
          {
            v207 = *a2;
            v208 = *(a2 + 16);
            v209 = *(a2 + 32);
            *(v199 + 48) = *(a2 + 48);
            *(v199 + 16) = v208;
            *(v199 + 32) = v209;
            *v199 = v207;
            result = v286;
            *(a2 + 48) = v372;
            *(a2 + 16) = v319;
            *(a2 + 32) = v347;
            *a2 = v286;
            v210 = v199 - v12 + 56;
            if (v210 >= 57)
            {
              v211 = (0x6DB6DB6DB6DB6DB7 * (v210 >> 3) - 2) >> 1;
              v212 = v12 + 56 * v211;
              v213 = *(v199 + 32);
              if (*(v212 + 32) > v213)
              {
                v259 = *v199;
                v263 = *(v199 + 16);
                *v254 = *(v199 + 34);
                *&v254[14] = *(v199 + 48);
                do
                {
                  v214 = v199;
                  v199 = v212;
                  result = *v212;
                  v215 = *(v212 + 16);
                  v216 = *(v212 + 32);
                  *(v214 + 48) = *(v212 + 48);
                  *(v214 + 16) = v215;
                  *(v214 + 32) = v216;
                  *v214 = result;
                  if (!v211)
                  {
                    break;
                  }

                  v211 = (v211 - 1) >> 1;
                  v212 = v12 + 56 * v211;
                }

                while (*(v212 + 32) > v213);
                *v199 = v259;
                *(v199 + 16) = v263;
                *(v199 + 32) = v213;
                result.n128_u64[0] = *v254;
                *(v199 + 34) = *v254;
                *(v199 + 48) = *&v254[14];
              }
            }
          }

          v181 = v195-- <= 2;
        }

        while (!v181);
      }

      return result;
    }

    v15 = v14 >> 1;
    v16 = v12 + 56 * (v14 >> 1);
    v17 = *(a2 - 24);
    if (v13 >= 0x1C01)
    {
      v18 = *(v16 + 32);
      if (v18 <= *(v12 + 32))
      {
        if (v17 > v18)
        {
          v354 = *(v16 + 48);
          v294 = *(v16 + 16);
          v329 = *(v16 + 32);
          v266 = *v16;
          v26 = *v9;
          v27 = *(a2 - 40);
          v28 = *(a2 - 24);
          *(v16 + 48) = *(a2 - 8);
          *(v16 + 16) = v27;
          *(v16 + 32) = v28;
          *v16 = v26;
          *(a2 - 8) = v354;
          *(a2 - 40) = v294;
          *(a2 - 24) = v329;
          *v9 = v266;
          if (*(v16 + 32) > *(v12 + 32))
          {
            v355 = *(v12 + 48);
            v295 = *(v12 + 16);
            v330 = *(v12 + 32);
            v267 = *v12;
            v29 = *v16;
            v30 = *(v16 + 16);
            v31 = *(v16 + 32);
            *(v12 + 48) = *(v16 + 48);
            *(v12 + 16) = v30;
            *(v12 + 32) = v31;
            *v12 = v29;
            *(v16 + 48) = v355;
            *(v16 + 16) = v295;
            *(v16 + 32) = v330;
            *v16 = v267;
          }
        }
      }

      else
      {
        if (v17 > v18)
        {
          v352 = *(v12 + 48);
          v292 = *(v12 + 16);
          v327 = *(v12 + 32);
          v264 = *v12;
          v19 = *v9;
          v20 = *(a2 - 40);
          v21 = *(a2 - 24);
          *(v12 + 48) = *(a2 - 8);
          *(v12 + 16) = v20;
          *(v12 + 32) = v21;
          *v12 = v19;
          goto LABEL_26;
        }

        v358 = *(v12 + 48);
        v298 = *(v12 + 16);
        v333 = *(v12 + 32);
        v270 = *v12;
        v38 = *v16;
        v39 = *(v16 + 16);
        v40 = *(v16 + 32);
        *(v12 + 48) = *(v16 + 48);
        *(v12 + 16) = v39;
        *(v12 + 32) = v40;
        *v12 = v38;
        *(v16 + 48) = v358;
        *(v16 + 16) = v298;
        *(v16 + 32) = v333;
        *v16 = v270;
        if (*(a2 - 24) > *(v16 + 32))
        {
          v352 = *(v16 + 48);
          v292 = *(v16 + 16);
          v327 = *(v16 + 32);
          v264 = *v16;
          v41 = *v9;
          v42 = *(a2 - 40);
          v43 = *(a2 - 24);
          *(v16 + 48) = *(a2 - 8);
          *(v16 + 16) = v42;
          *(v16 + 32) = v43;
          *v16 = v41;
LABEL_26:
          *(a2 - 8) = v352;
          *(a2 - 40) = v292;
          *(a2 - 24) = v327;
          *v9 = v264;
        }
      }

      v44 = v12 + 56 * v15;
      v45 = v44 - 56;
      v46 = *(v44 - 24);
      v47 = *(a2 - 80);
      if (v46 <= *(v12 + 88))
      {
        if (v47 > v46)
        {
          v359 = *(v45 + 48);
          v299 = *(v45 + 16);
          v334 = *(v45 + 32);
          v271 = *v45;
          v55 = *v10;
          v56 = *(a2 - 96);
          v57 = *(a2 - 80);
          *(v45 + 48) = *(a2 - 64);
          *(v45 + 16) = v56;
          *(v45 + 32) = v57;
          *v45 = v55;
          *(a2 - 64) = v359;
          *(a2 - 96) = v299;
          *(a2 - 80) = v334;
          *v10 = v271;
          if (*(v45 + 32) > *(v12 + 88))
          {
            v58 = *(v12 + 56);
            v300 = *(v12 + 72);
            v59 = *(v12 + 88);
            v60 = *(v12 + 104);
            v61 = *(v45 + 48);
            v63 = *(v45 + 16);
            v62 = *(v45 + 32);
            *(v12 + 56) = *v45;
            *(v12 + 72) = v63;
            *(v12 + 88) = v62;
            *(v12 + 104) = v61;
            *(v45 + 16) = v300;
            *(v45 + 32) = v59;
            *(v45 + 48) = v60;
            *v45 = v58;
          }
        }
      }

      else
      {
        if (v47 > v46)
        {
          v48 = *(v12 + 56);
          v49 = *(v12 + 72);
          v50 = *(v12 + 88);
          v51 = *(v12 + 104);
          v52 = *(a2 - 64);
          v54 = *(a2 - 96);
          v53 = *(a2 - 80);
          *(v12 + 56) = *v10;
          *(v12 + 72) = v54;
          *(v12 + 88) = v53;
          *(v12 + 104) = v52;
          *(a2 - 80) = v50;
          *(a2 - 64) = v51;
          goto LABEL_38;
        }

        v70 = *(v12 + 56);
        v302 = *(v12 + 72);
        v71 = *(v12 + 88);
        v72 = *(v12 + 104);
        v73 = *(v45 + 48);
        v75 = *(v45 + 16);
        v74 = *(v45 + 32);
        *(v12 + 56) = *v45;
        *(v12 + 72) = v75;
        *(v12 + 88) = v74;
        *(v12 + 104) = v73;
        *(v45 + 16) = v302;
        *(v45 + 32) = v71;
        *(v45 + 48) = v72;
        *v45 = v70;
        if (*(a2 - 80) > *(v45 + 32))
        {
          v361 = *(v45 + 48);
          v303 = *(v45 + 16);
          v336 = *(v45 + 32);
          v273 = *v45;
          v76 = *v10;
          v77 = *(a2 - 96);
          v78 = *(a2 - 80);
          *(v45 + 48) = *(a2 - 64);
          *(v45 + 16) = v77;
          *(v45 + 32) = v78;
          *v45 = v76;
          v48 = v273;
          v49 = v303;
          *(a2 - 64) = v361;
          *(a2 - 80) = v336;
LABEL_38:
          *v10 = v48;
          *(a2 - 96) = v49;
        }
      }

      v79 = v12 + 56 * v15;
      v80 = *(v79 + 88);
      v81 = *(a2 - 136);
      if (v80 <= *(v12 + 144))
      {
        if (v81 > v80)
        {
          v362 = *(v79 + 104);
          v304 = *(v79 + 72);
          v337 = *(v79 + 88);
          v274 = *(v79 + 56);
          v89 = *v11;
          v90 = *(a2 - 152);
          v91 = *(a2 - 136);
          *(v79 + 104) = *(a2 - 120);
          *(v79 + 88) = v91;
          *(v79 + 72) = v90;
          *(v79 + 56) = v89;
          *(a2 - 120) = v362;
          *(a2 - 152) = v304;
          *(a2 - 136) = v337;
          *v11 = v274;
          if (*(v79 + 88) > *(v12 + 144))
          {
            v92 = *(v12 + 112);
            v305 = *(v12 + 128);
            v93 = *(v12 + 144);
            v94 = *(v12 + 160);
            v95 = *(v79 + 104);
            v96 = *(v79 + 88);
            v97 = *(v79 + 72);
            *(v12 + 112) = *(v79 + 56);
            *(v12 + 128) = v97;
            *(v12 + 144) = v96;
            *(v12 + 160) = v95;
            *(v79 + 72) = v305;
            *(v79 + 88) = v93;
            *(v79 + 104) = v94;
            *(v79 + 56) = v92;
          }
        }
      }

      else
      {
        if (v81 > v80)
        {
          v82 = *(v12 + 112);
          v83 = *(v12 + 128);
          v84 = *(v12 + 144);
          v85 = *(v12 + 160);
          v86 = *(a2 - 120);
          v88 = *(a2 - 152);
          v87 = *(a2 - 136);
          *(v12 + 112) = *v11;
          *(v12 + 128) = v88;
          *(v12 + 144) = v87;
          *(v12 + 160) = v86;
          *(a2 - 136) = v84;
          *(a2 - 120) = v85;
          goto LABEL_47;
        }

        v98 = *(v12 + 112);
        v306 = *(v12 + 128);
        v99 = *(v12 + 144);
        v100 = *(v12 + 160);
        v101 = *(v79 + 104);
        v102 = *(v79 + 88);
        v103 = *(v79 + 72);
        *(v12 + 112) = *(v79 + 56);
        *(v12 + 128) = v103;
        *(v12 + 144) = v102;
        *(v12 + 160) = v101;
        *(v79 + 72) = v306;
        *(v79 + 88) = v99;
        *(v79 + 104) = v100;
        *(v79 + 56) = v98;
        if (*(a2 - 136) > *(v79 + 88))
        {
          v363 = *(v79 + 104);
          v307 = *(v79 + 72);
          v338 = *(v79 + 88);
          v275 = *(v79 + 56);
          v104 = *v11;
          v105 = *(a2 - 152);
          v106 = *(a2 - 136);
          *(v79 + 104) = *(a2 - 120);
          *(v79 + 88) = v106;
          *(v79 + 72) = v105;
          *(v79 + 56) = v104;
          v82 = v275;
          v83 = v307;
          *(a2 - 120) = v363;
          *(a2 - 136) = v338;
LABEL_47:
          *v11 = v82;
          *(a2 - 152) = v83;
        }
      }

      v107 = *(v16 + 32);
      v108 = *(v79 + 88);
      if (v107 <= *(v45 + 32))
      {
        if (v108 > v107)
        {
          v365 = *(v16 + 48);
          v309 = *(v16 + 16);
          v340 = *(v16 + 32);
          v277 = *v16;
          v110 = *(v79 + 72);
          *v16 = *(v79 + 56);
          *(v16 + 16) = v110;
          *(v16 + 32) = *(v79 + 88);
          *(v16 + 48) = *(v79 + 104);
          *(v79 + 72) = v309;
          *(v79 + 88) = v340;
          *(v79 + 104) = v365;
          *(v79 + 56) = v277;
          if (*(v16 + 32) > *(v45 + 32))
          {
            v366 = *(v45 + 48);
            v310 = *(v45 + 16);
            v341 = *(v45 + 32);
            v278 = *v45;
            v111 = *(v16 + 16);
            *v45 = *v16;
            *(v45 + 16) = v111;
            *(v45 + 32) = *(v16 + 32);
            *(v45 + 48) = *(v16 + 48);
            *(v16 + 16) = v310;
            *(v16 + 32) = v341;
            *(v16 + 48) = v366;
            *v16 = v278;
          }
        }
      }

      else
      {
        if (v108 > v107)
        {
          v364 = *(v45 + 48);
          v308 = *(v45 + 16);
          v339 = *(v45 + 32);
          v276 = *v45;
          v109 = *(v79 + 72);
          *v45 = *(v79 + 56);
          *(v45 + 16) = v109;
          *(v45 + 32) = *(v79 + 88);
          *(v45 + 48) = *(v79 + 104);
          goto LABEL_56;
        }

        v367 = *(v45 + 48);
        v311 = *(v45 + 16);
        v342 = *(v45 + 32);
        v279 = *v45;
        v112 = *(v16 + 16);
        *v45 = *v16;
        *(v45 + 16) = v112;
        *(v45 + 32) = *(v16 + 32);
        *(v45 + 48) = *(v16 + 48);
        *(v16 + 16) = v311;
        *(v16 + 32) = v342;
        *(v16 + 48) = v367;
        *v16 = v279;
        if (*(v79 + 88) > *(v16 + 32))
        {
          v364 = *(v16 + 48);
          v308 = *(v16 + 16);
          v339 = *(v16 + 32);
          v276 = *v16;
          v113 = *(v79 + 72);
          *v16 = *(v79 + 56);
          *(v16 + 16) = v113;
          *(v16 + 32) = *(v79 + 88);
          *(v16 + 48) = *(v79 + 104);
LABEL_56:
          *(v79 + 72) = v308;
          *(v79 + 88) = v339;
          *(v79 + 104) = v364;
          *(v79 + 56) = v276;
        }
      }

      v368 = *(v12 + 48);
      v312 = *(v12 + 16);
      v343 = *(v12 + 32);
      v280 = *v12;
      v114 = *v16;
      v115 = *(v16 + 16);
      v116 = *(v16 + 32);
      *(v12 + 48) = *(v16 + 48);
      *(v12 + 16) = v115;
      *(v12 + 32) = v116;
      *v12 = v114;
      *(v16 + 48) = v368;
      *(v16 + 16) = v312;
      *(v16 + 32) = v343;
      *v16 = v280;
      goto LABEL_58;
    }

    v22 = *(v12 + 32);
    if (v22 <= *(v16 + 32))
    {
      if (v17 > v22)
      {
        v356 = *(v12 + 48);
        v296 = *(v12 + 16);
        v331 = *(v12 + 32);
        v268 = *v12;
        v32 = *v9;
        v33 = *(a2 - 40);
        v34 = *(a2 - 24);
        *(v12 + 48) = *(a2 - 8);
        *(v12 + 16) = v33;
        *(v12 + 32) = v34;
        *v12 = v32;
        *(a2 - 8) = v356;
        *(a2 - 40) = v296;
        *(a2 - 24) = v331;
        *v9 = v268;
        if (*(v12 + 32) > *(v16 + 32))
        {
          v357 = *(v16 + 48);
          v297 = *(v16 + 16);
          v332 = *(v16 + 32);
          v269 = *v16;
          v35 = *v12;
          v36 = *(v12 + 16);
          v37 = *(v12 + 32);
          *(v16 + 48) = *(v12 + 48);
          *(v16 + 16) = v36;
          *(v16 + 32) = v37;
          *v16 = v35;
          *(v12 + 48) = v357;
          *(v12 + 16) = v297;
          *(v12 + 32) = v332;
          *v12 = v269;
        }
      }

      goto LABEL_58;
    }

    if (v17 > v22)
    {
      v353 = *(v16 + 48);
      v293 = *(v16 + 16);
      v328 = *(v16 + 32);
      v265 = *v16;
      v23 = *v9;
      v24 = *(a2 - 40);
      v25 = *(a2 - 24);
      *(v16 + 48) = *(a2 - 8);
      *(v16 + 16) = v24;
      *(v16 + 32) = v25;
      *v16 = v23;
LABEL_35:
      *(a2 - 8) = v353;
      *(a2 - 40) = v293;
      *(a2 - 24) = v328;
      *v9 = v265;
      goto LABEL_58;
    }

    v360 = *(v16 + 48);
    v301 = *(v16 + 16);
    v335 = *(v16 + 32);
    v272 = *v16;
    v64 = *v12;
    v65 = *(v12 + 16);
    v66 = *(v12 + 32);
    *(v16 + 48) = *(v12 + 48);
    *(v16 + 16) = v65;
    *(v16 + 32) = v66;
    *v16 = v64;
    *(v12 + 48) = v360;
    *(v12 + 16) = v301;
    *(v12 + 32) = v335;
    *v12 = v272;
    if (*(a2 - 24) > *(v12 + 32))
    {
      v353 = *(v12 + 48);
      v293 = *(v12 + 16);
      v328 = *(v12 + 32);
      v265 = *v12;
      v67 = *v9;
      v68 = *(a2 - 40);
      v69 = *(a2 - 24);
      *(v12 + 48) = *(a2 - 8);
      *(v12 + 16) = v68;
      *(v12 + 32) = v69;
      *v12 = v67;
      goto LABEL_35;
    }

LABEL_58:
    --a3;
    if (a4)
    {
      LOWORD(v117) = *(v12 + 32);
LABEL_61:
      v255 = *v12;
      v261 = *(v12 + 16);
      *v252 = *(v12 + 34);
      *&v252[14] = *(v12 + 48);
      v118 = v12;
      do
      {
        v119 = v118;
        v118 += 56;
      }

      while (*(v119 + 88) > v117);
      v120 = a2;
      if (v119 == v12)
      {
        v122 = a2;
        while (v118 < v122)
        {
          v121 = v122 - 56;
          v181 = *(v122 - 24) <= v117;
          v122 -= 56;
          if (!v181)
          {
            goto LABEL_71;
          }
        }

        v121 = v122;
      }

      else
      {
        do
        {
          v121 = v120 - 56;
          v181 = *(v120 - 24) <= v117;
          v120 -= 56;
        }

        while (v181);
      }

LABEL_71:
      v12 = v118;
      if (v118 < v121)
      {
        v123 = v121;
        do
        {
          v124 = *v12;
          v313 = *(v12 + 16);
          v125 = *(v12 + 32);
          v126 = *(v12 + 48);
          v127 = *(v123 + 48);
          v129 = *(v123 + 16);
          v128 = *(v123 + 32);
          *v12 = *v123;
          *(v12 + 16) = v129;
          *(v12 + 32) = v128;
          *(v12 + 48) = v127;
          *(v123 + 16) = v313;
          *(v123 + 32) = v125;
          *(v123 + 48) = v126;
          *v123 = v124;
          do
          {
            v130 = *(v12 + 88);
            v12 += 56;
          }

          while (v130 > v117);
          do
          {
            v131 = *(v123 - 24);
            v123 -= 56;
          }

          while (v131 <= v117);
        }

        while (v12 < v123);
      }

      v132 = (v12 - 56);
      if (v12 - 56 != a1)
      {
        v133 = *v132;
        v134 = *(v12 - 40);
        v135 = *(v12 - 24);
        *(a1 + 48) = *(v12 - 8);
        *(a1 + 16) = v134;
        *(a1 + 32) = v135;
        *a1 = v133;
      }

      *v132 = v255;
      *(v12 - 40) = v261;
      *(v12 - 24) = v117;
      result = *v252;
      *(v12 - 8) = *&v252[14];
      *(v12 - 22) = *v252;
      if (v118 < v121)
      {
        goto LABEL_82;
      }

      v136 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::VenueLogic::updateVenueLevelScales(void)::$_0 &,md::VenueLevelScale *>(a1, (v12 - 56), *v252);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::VenueLogic::updateVenueLevelScales(void)::$_0 &,md::VenueLevelScale *>(v12, a2, v137))
      {
        a2 = v12 - 56;
        if (!v136)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v136)
      {
LABEL_82:
        result = std::__introsort<std::_ClassicAlgPolicy,md::VenueLogic::updateVenueLevelScales(void)::$_0 &,md::VenueLevelScale *,false>(a1, v12 - 56, a3, a4 & 1, result);
        a4 = 0;
      }
    }

    else
    {
      v117 = *(v12 + 32);
      if (*(v12 - 24) > v117)
      {
        goto LABEL_61;
      }

      v256 = *v12;
      v262 = *(v12 + 16);
      *v253 = *(v12 + 34);
      *&v253[14] = *(v12 + 48);
      if (v117 <= *(a2 - 24))
      {
        v140 = v12 + 56;
        do
        {
          v12 = v140;
          if (v140 >= a2)
          {
            break;
          }

          v141 = *(v140 + 32);
          v140 += 56;
        }

        while (v117 <= v141);
      }

      else
      {
        v138 = v12;
        do
        {
          v12 = v138 + 56;
          v139 = *(v138 + 88);
          v138 += 56;
        }

        while (v117 <= v139);
      }

      v142 = a2;
      if (v12 < a2)
      {
        v143 = a2;
        do
        {
          v142 = v143 - 56;
          v144 = *(v143 - 24);
          v143 -= 56;
        }

        while (v117 > v144);
      }

      while (v12 < v142)
      {
        v369 = *(v12 + 48);
        v314 = *(v12 + 16);
        v344 = *(v12 + 32);
        v281 = *v12;
        v145 = *v142;
        v146 = *(v142 + 16);
        v147 = *(v142 + 32);
        *(v12 + 48) = *(v142 + 48);
        *(v12 + 16) = v146;
        *(v12 + 32) = v147;
        *v12 = v145;
        *(v142 + 48) = v369;
        *(v142 + 16) = v314;
        *(v142 + 32) = v344;
        *v142 = v281;
        do
        {
          v148 = *(v12 + 88);
          v12 += 56;
        }

        while (v117 <= v148);
        do
        {
          v149 = *(v142 - 24);
          v142 -= 56;
        }

        while (v117 > v149);
      }

      v150 = (v12 - 56);
      if (v12 - 56 != a1)
      {
        v151 = *v150;
        v152 = *(v12 - 40);
        v153 = *(v12 - 24);
        *(a1 + 48) = *(v12 - 8);
        *(a1 + 16) = v152;
        *(a1 + 32) = v153;
        *a1 = v151;
      }

      a4 = 0;
      *v150 = v256;
      *(v12 - 40) = v262;
      *(v12 - 24) = v117;
      result = *v253;
      *(v12 - 8) = *&v253[14];
      *(v12 - 22) = *v253;
    }
  }

  v154 = *(v12 + 88);
  v155 = *(a2 - 24);
  if (v154 <= *(v12 + 32))
  {
    if (v155 <= v154)
    {
      return result;
    }

    result = *(v12 + 56);
    v320 = *(v12 + 72);
    v217 = *(v12 + 88);
    v218 = *(v12 + 104);
    v219 = *(a2 - 8);
    v221 = *(a2 - 40);
    v220 = *(a2 - 24);
    *(v12 + 56) = *v9;
    *(v12 + 72) = v221;
    *(v12 + 88) = v220;
    *(v12 + 104) = v219;
    *(a2 - 40) = v320;
    *(a2 - 24) = v217;
    *(a2 - 8) = v218;
    *v9 = result;
    goto LABEL_192;
  }

  if (v155 > v154)
  {
    goto LABEL_110;
  }

  v374 = *(v12 + 48);
  v323 = *(v12 + 16);
  v349 = *(v12 + 32);
  v289 = *v12;
  v231 = *(v12 + 72);
  *v12 = *(v12 + 56);
  *(v12 + 16) = v231;
  *(v12 + 32) = *(v12 + 88);
  *(v12 + 48) = *(v12 + 104);
  result = v289;
  *(v12 + 104) = v374;
  *(v12 + 88) = v349;
  *(v12 + 72) = v323;
  *(v12 + 56) = v289;
  if (*(a2 - 24) > *(v12 + 88))
  {
    result = *(v12 + 56);
    v159 = *(v12 + 72);
    v232 = *(v12 + 88);
    v233 = *(v12 + 104);
    v234 = *(a2 - 8);
    v236 = *(a2 - 40);
    v235 = *(a2 - 24);
    *(v12 + 56) = *v9;
    *(v12 + 72) = v236;
    *(v12 + 88) = v235;
    *(v12 + 104) = v234;
    *(a2 - 24) = v232;
    *(a2 - 8) = v233;
    goto LABEL_111;
  }

  return result;
}

__n128 std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::VenueLogic::updateVenueLevelScales(void)::$_0 &,md::VenueLevelScale *,0>(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5, __n128 result)
{
  v6 = *(a2 + 16);
  v7 = *(a3 + 16);
  if (v6 <= *(a1 + 16))
  {
    if (v7 > v6)
    {
      v14 = *(a2 + 6);
      v15 = a2[1];
      result = a2[2];
      v16 = *a2;
      v18 = a3[1];
      v17 = a3[2];
      v19 = *a3;
      *(a2 + 6) = *(a3 + 6);
      a2[1] = v18;
      a2[2] = v17;
      *a2 = v19;
      *a3 = v16;
      a3[1] = v15;
      a3[2] = result;
      *(a3 + 6) = v14;
      if (*(a2 + 16) > *(a1 + 16))
      {
        v20 = *(a1 + 6);
        v21 = a1[1];
        result = a1[2];
        v22 = *a1;
        v24 = a2[1];
        v23 = a2[2];
        v25 = *a2;
        *(a1 + 6) = *(a2 + 6);
        a1[1] = v24;
        a1[2] = v23;
        *a1 = v25;
        *a2 = v22;
        a2[1] = v21;
        a2[2] = result;
        *(a2 + 6) = v20;
      }
    }
  }

  else
  {
    if (v7 > v6)
    {
      v8 = *(a1 + 6);
      v9 = a1[1];
      result = a1[2];
      v10 = *a1;
      v12 = a3[1];
      v11 = a3[2];
      v13 = *a3;
      *(a1 + 6) = *(a3 + 6);
      a1[1] = v12;
      a1[2] = v11;
      *a1 = v13;
LABEL_9:
      *a3 = v10;
      a3[1] = v9;
      a3[2] = result;
      *(a3 + 6) = v8;
      goto LABEL_10;
    }

    v26 = *(a1 + 6);
    v27 = a1[1];
    result = a1[2];
    v28 = *a1;
    v30 = a2[1];
    v29 = a2[2];
    v31 = *a2;
    *(a1 + 6) = *(a2 + 6);
    a1[1] = v30;
    a1[2] = v29;
    *a1 = v31;
    *a2 = v28;
    a2[1] = v27;
    a2[2] = result;
    *(a2 + 6) = v26;
    if (*(a3 + 16) > *(a2 + 16))
    {
      v8 = *(a2 + 6);
      v9 = a2[1];
      result = a2[2];
      v10 = *a2;
      v33 = a3[1];
      v32 = a3[2];
      v34 = *a3;
      *(a2 + 6) = *(a3 + 6);
      a2[1] = v33;
      a2[2] = v32;
      *a2 = v34;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*(a4 + 16) > *(a3 + 16))
  {
    v35 = *(a3 + 6);
    v36 = a3[1];
    result = a3[2];
    v37 = *a3;
    v39 = a4[1];
    v38 = a4[2];
    v40 = *a4;
    *(a3 + 6) = *(a4 + 6);
    a3[1] = v39;
    a3[2] = v38;
    *a3 = v40;
    *a4 = v37;
    a4[1] = v36;
    a4[2] = result;
    *(a4 + 6) = v35;
    if (*(a3 + 16) > *(a2 + 16))
    {
      v41 = *(a2 + 6);
      v42 = a2[1];
      result = a2[2];
      v43 = *a2;
      v45 = a3[1];
      v44 = a3[2];
      v46 = *a3;
      *(a2 + 6) = *(a3 + 6);
      a2[1] = v45;
      a2[2] = v44;
      *a2 = v46;
      *a3 = v43;
      a3[1] = v42;
      a3[2] = result;
      *(a3 + 6) = v41;
      if (*(a2 + 16) > *(a1 + 16))
      {
        v47 = *(a1 + 6);
        v48 = a1[1];
        result = a1[2];
        v49 = *a1;
        v51 = a2[1];
        v50 = a2[2];
        v52 = *a2;
        *(a1 + 6) = *(a2 + 6);
        a1[1] = v51;
        a1[2] = v50;
        *a1 = v52;
        *a2 = v49;
        a2[1] = v48;
        a2[2] = result;
        *(a2 + 6) = v47;
      }
    }
  }

  if (*(a5 + 16) > *(a4 + 16))
  {
    v53 = *(a4 + 6);
    v54 = a4[1];
    result = a4[2];
    v55 = *a4;
    v57 = a5[1];
    v56 = a5[2];
    v58 = *a5;
    *(a4 + 6) = *(a5 + 6);
    a4[1] = v57;
    a4[2] = v56;
    *a4 = v58;
    *a5 = v55;
    a5[1] = v54;
    a5[2] = result;
    *(a5 + 6) = v53;
    if (*(a4 + 16) > *(a3 + 16))
    {
      v59 = *(a3 + 6);
      v60 = a3[1];
      result = a3[2];
      v61 = *a3;
      v63 = a4[1];
      v62 = a4[2];
      v64 = *a4;
      *(a3 + 6) = *(a4 + 6);
      a3[1] = v63;
      a3[2] = v62;
      *a3 = v64;
      *a4 = v61;
      a4[1] = v60;
      a4[2] = result;
      *(a4 + 6) = v59;
      if (*(a3 + 16) > *(a2 + 16))
      {
        v65 = *(a2 + 6);
        v66 = a2[1];
        result = a2[2];
        v67 = *a2;
        v69 = a3[1];
        v68 = a3[2];
        v70 = *a3;
        *(a2 + 6) = *(a3 + 6);
        a2[1] = v69;
        a2[2] = v68;
        *a2 = v70;
        *a3 = v67;
        a3[1] = v66;
        a3[2] = result;
        *(a3 + 6) = v65;
        if (*(a2 + 16) > *(a1 + 16))
        {
          v71 = *(a1 + 6);
          v72 = a1[1];
          result = a1[2];
          v73 = *a1;
          v75 = a2[1];
          v74 = a2[2];
          v76 = *a2;
          *(a1 + 6) = *(a2 + 6);
          a1[1] = v75;
          a1[2] = v74;
          *a1 = v76;
          *a2 = v73;
          a2[1] = v72;
          a2[2] = result;
          *(a2 + 6) = v71;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::VenueLogic::updateVenueLevelScales(void)::$_0 &,md::VenueLevelScale *>(uint64_t a1, __int128 *a2, __n128 a3)
{
  v3 = 0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v12 = (a2 - 56);
      v13 = *(a1 + 88);
      v14 = *(a2 - 12);
      if (v13 > *(a1 + 32))
      {
        if (v14 <= v13)
        {
          v66 = *(a1 + 48);
          v68 = *(a1 + 16);
          v67 = *(a1 + 32);
          v69 = *a1;
          v70 = *(a1 + 72);
          *a1 = *(a1 + 56);
          *(a1 + 16) = v70;
          *(a1 + 32) = *(a1 + 88);
          *(a1 + 48) = *(a1 + 104);
          *(a1 + 56) = v69;
          *(a1 + 72) = v68;
          *(a1 + 88) = v67;
          *(a1 + 104) = v66;
          if (*(a2 - 12) <= *(a1 + 88))
          {
            return 1;
          }

          v15 = *(a1 + 104);
          v16 = *(a1 + 88);
          v17 = *(a1 + 72);
          v18 = *(a1 + 56);
          v72 = *(a2 - 40);
          v71 = *(a2 - 24);
          v73 = *(a2 - 1);
          *(a1 + 56) = *v12;
          *(a1 + 104) = v73;
          *(a1 + 88) = v71;
          *(a1 + 72) = v72;
        }

        else
        {
          v15 = *(a1 + 48);
          v17 = *(a1 + 16);
          v16 = *(a1 + 32);
          v18 = *a1;
          v20 = *(a2 - 40);
          v19 = *(a2 - 24);
          v21 = *v12;
          *(a1 + 48) = *(a2 - 1);
          *(a1 + 16) = v20;
          *(a1 + 32) = v19;
          *a1 = v21;
        }

        *v12 = v18;
        *(a2 - 40) = v17;
        *(a2 - 24) = v16;
        v11 = 1;
        *(a2 - 1) = v15;
        return v11;
      }

      if (v14 <= v13)
      {
        return 1;
      }

      v39 = *(a1 + 104);
      v40 = *(a1 + 88);
      v41 = *(a1 + 72);
      v42 = *(a1 + 56);
      v44 = *(a2 - 40);
      v43 = *(a2 - 24);
      v45 = *(a2 - 1);
      *(a1 + 56) = *v12;
      *(a1 + 104) = v45;
      *(a1 + 88) = v43;
      *(a1 + 72) = v44;
      *v12 = v42;
      *(a2 - 40) = v41;
      *(a2 - 24) = v40;
      *(a2 - 1) = v39;
LABEL_50:
      if (*(a1 + 88) > *(a1 + 32))
      {
        v111 = *(a1 + 48);
        v113 = *(a1 + 16);
        v112 = *(a1 + 32);
        v114 = *a1;
        v115 = *(a1 + 72);
        *a1 = *(a1 + 56);
        *(a1 + 16) = v115;
        *(a1 + 32) = *(a1 + 88);
        *(a1 + 48) = *(a1 + 104);
        *(a1 + 56) = v114;
        *(a1 + 72) = v113;
        *(a1 + 88) = v112;
        v11 = 1;
        *(a1 + 104) = v111;
        return v11;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 == 5)
      {
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::VenueLogic::updateVenueLevelScales(void)::$_0 &,md::VenueLevelScale *,0>(a1, (a1 + 56), (a1 + 112), (a1 + 168), (a2 - 56), a3);
        return 1;
      }

      goto LABEL_13;
    }

    v31 = *(a1 + 88);
    v32 = *(a1 + 32);
    v33 = *(a1 + 144);
    if (v31 <= v32)
    {
      if (v33 > v31)
      {
        v56 = *(a1 + 104);
        v57 = *(a1 + 88);
        v58 = *(a1 + 56);
        v59 = *(a1 + 128);
        *(a1 + 56) = *(a1 + 112);
        v60 = *(a1 + 72);
        *(a1 + 72) = v59;
        *(a1 + 88) = *(a1 + 144);
        *(a1 + 104) = *(a1 + 160);
        *(a1 + 112) = v58;
        *(a1 + 128) = v60;
        *(a1 + 144) = v57;
        *(a1 + 160) = v56;
        if (*(a1 + 88) > v32)
        {
          v61 = *(a1 + 48);
          v63 = *(a1 + 16);
          v62 = *(a1 + 32);
          v64 = *a1;
          v65 = *(a1 + 72);
          *a1 = *(a1 + 56);
          *(a1 + 16) = v65;
          *(a1 + 32) = *(a1 + 88);
          *(a1 + 48) = *(a1 + 104);
          *(a1 + 56) = v64;
          *(a1 + 72) = v63;
          *(a1 + 88) = v62;
          *(a1 + 104) = v61;
        }
      }

      goto LABEL_47;
    }

    if (v33 <= v31)
    {
      v90 = *(a1 + 48);
      v92 = *(a1 + 16);
      v91 = *(a1 + 32);
      v93 = *a1;
      v94 = *(a1 + 72);
      *a1 = *(a1 + 56);
      *(a1 + 16) = v94;
      *(a1 + 32) = *(a1 + 88);
      *(a1 + 48) = *(a1 + 104);
      *(a1 + 56) = v93;
      *(a1 + 72) = v92;
      *(a1 + 88) = v91;
      *(a1 + 104) = v90;
      if (v33 <= *(a1 + 88))
      {
        goto LABEL_47;
      }

      v34 = *(a1 + 104);
      v35 = *(a1 + 88);
      v95 = *(a1 + 56);
      v96 = *(a1 + 128);
      *(a1 + 56) = *(a1 + 112);
      v97 = *(a1 + 72);
      *(a1 + 72) = v96;
      *(a1 + 88) = *(a1 + 144);
      *(a1 + 104) = *(a1 + 160);
      *(a1 + 112) = v95;
      *(a1 + 128) = v97;
    }

    else
    {
      v34 = *(a1 + 48);
      v36 = *(a1 + 16);
      v35 = *(a1 + 32);
      v37 = *a1;
      v38 = *(a1 + 128);
      *a1 = *(a1 + 112);
      *(a1 + 16) = v38;
      *(a1 + 32) = *(a1 + 144);
      *(a1 + 48) = *(a1 + 160);
      *(a1 + 112) = v37;
      *(a1 + 128) = v36;
    }

    *(a1 + 144) = v35;
    *(a1 + 160) = v34;
LABEL_47:
    if (*(a2 - 12) <= *(a1 + 144))
    {
      return 1;
    }

    v98 = a2 - 56;
    v99 = *(a1 + 160);
    v101 = *(a1 + 128);
    v100 = *(a1 + 144);
    v102 = *(a1 + 112);
    v104 = *(a2 - 40);
    v103 = *(a2 - 24);
    v105 = *(a2 - 56);
    *(a1 + 160) = *(a2 - 1);
    *(a1 + 128) = v104;
    *(a1 + 144) = v103;
    *(a1 + 112) = v105;
    *v98 = v102;
    *(v98 + 16) = v101;
    *(v98 + 32) = v100;
    *(v98 + 48) = v99;
    if (*(a1 + 144) <= *(a1 + 88))
    {
      return 1;
    }

    v106 = *(a1 + 104);
    v107 = *(a1 + 88);
    v108 = *(a1 + 56);
    v109 = *(a1 + 128);
    *(a1 + 56) = *(a1 + 112);
    v110 = *(a1 + 72);
    *(a1 + 72) = v109;
    *(a1 + 88) = *(a1 + 144);
    *(a1 + 104) = *(a1 + 160);
    *(a1 + 112) = v108;
    *(a1 + 128) = v110;
    *(a1 + 144) = v107;
    *(a1 + 160) = v106;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    if (*(a2 - 12) > *(a1 + 32))
    {
      v4 = *(a1 + 48);
      v6 = *(a1 + 16);
      v5 = *(a1 + 32);
      v7 = *a1;
      v8 = *(a2 - 40);
      v9 = *(a2 - 24);
      v10 = *(a2 - 56);
      *(a1 + 48) = *(a2 - 1);
      *(a1 + 16) = v8;
      *(a1 + 32) = v9;
      *a1 = v10;
      *(a2 - 56) = v7;
      *(a2 - 40) = v6;
      *(a2 - 24) = v5;
      v11 = 1;
      *(a2 - 1) = v4;
      return v11;
    }

    return 1;
  }

LABEL_13:
  v22 = (a1 + 112);
  v23 = *(a1 + 88);
  v24 = *(a1 + 32);
  v25 = *(a1 + 144);
  if (v23 <= v24)
  {
    if (v25 > v23)
    {
      v46 = *(a1 + 104);
      v47 = *(a1 + 88);
      v48 = *(a1 + 56);
      v49 = *(a1 + 128);
      *(a1 + 56) = *v22;
      v50 = *(a1 + 72);
      *(a1 + 72) = v49;
      *(a1 + 88) = *(a1 + 144);
      *(a1 + 104) = *(a1 + 160);
      *v22 = v48;
      *(a1 + 128) = v50;
      *(a1 + 144) = v47;
      *(a1 + 160) = v46;
      if (*(a1 + 88) > v24)
      {
        v51 = *(a1 + 48);
        v53 = *(a1 + 16);
        v52 = *(a1 + 32);
        v54 = *a1;
        v55 = *(a1 + 72);
        *a1 = *(a1 + 56);
        *(a1 + 16) = v55;
        *(a1 + 32) = *(a1 + 88);
        *(a1 + 48) = *(a1 + 104);
        *(a1 + 56) = v54;
        *(a1 + 72) = v53;
        *(a1 + 88) = v52;
        *(a1 + 104) = v51;
      }
    }
  }

  else
  {
    if (v25 <= v23)
    {
      v74 = *(a1 + 48);
      v76 = *(a1 + 16);
      v75 = *(a1 + 32);
      v77 = *a1;
      v78 = *(a1 + 72);
      *a1 = *(a1 + 56);
      *(a1 + 16) = v78;
      *(a1 + 32) = *(a1 + 88);
      *(a1 + 48) = *(a1 + 104);
      *(a1 + 56) = v77;
      *(a1 + 72) = v76;
      *(a1 + 88) = v75;
      *(a1 + 104) = v74;
      if (v25 <= *(a1 + 88))
      {
        goto LABEL_33;
      }

      v26 = *(a1 + 104);
      v27 = *(a1 + 88);
      v79 = *(a1 + 56);
      v80 = *(a1 + 128);
      *(a1 + 56) = *v22;
      v81 = *(a1 + 72);
      *(a1 + 72) = v80;
      *(a1 + 88) = *(a1 + 144);
      *(a1 + 104) = *(a1 + 160);
      *v22 = v79;
      *(a1 + 128) = v81;
    }

    else
    {
      v26 = *(a1 + 48);
      v28 = *(a1 + 16);
      v27 = *(a1 + 32);
      v29 = *a1;
      v30 = *(a1 + 128);
      *a1 = *v22;
      *(a1 + 16) = v30;
      *(a1 + 32) = *(a1 + 144);
      *(a1 + 48) = *(a1 + 160);
      *v22 = v29;
      *(a1 + 128) = v28;
    }

    *(a1 + 144) = v27;
    *(a1 + 160) = v26;
  }

LABEL_33:
  v82 = (a1 + 168);
  if ((a1 + 168) == a2)
  {
    return 1;
  }

  v83 = 0;
  v84 = 0;
  while (1)
  {
    v85 = *(v82 + 16);
    if (v85 > *(v22 + 16))
    {
      v118 = *v82;
      v119 = v82[1];
      *v117 = *(v82 + 34);
      *&v117[14] = *(v82 + 6);
      v86 = v83;
      while (1)
      {
        v87 = a1 + v86;
        v88 = *(a1 + v86 + 128);
        *(v87 + 168) = *(a1 + v86 + 112);
        *(v87 + 184) = v88;
        *(v87 + 200) = *(a1 + v86 + 144);
        *(v87 + 216) = *(a1 + v86 + 160);
        if (v86 == -112)
        {
          break;
        }

        v86 -= 56;
        if (v85 <= *(v87 + 88))
        {
          v89 = a1 + v86 + 168;
          goto LABEL_41;
        }
      }

      v89 = a1;
LABEL_41:
      *v89 = v118;
      *(v89 + 16) = v119;
      *(v89 + 32) = v85;
      *(v89 + 34) = *v117;
      *(v89 + 48) = *&v117[14];
      if (++v84 == 8)
      {
        return (v82 + 56) == a2;
      }
    }

    v22 = v82;
    v83 += 56;
    v82 = (v82 + 56);
    if (v82 == a2)
    {
      return 1;
    }
  }
}

double md::VenueLogicContext::venuesInProximityToWorldPoint(char **a1, uint64_t a2, float64x2_t *a3, __n128 a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = a3;
    v6 = a2;
    v8 = 0;
    do
    {
      v9 = v4[3];
      a4.n128_f64[0] = geo::ConvexHull2<double>::distanceSquaredTo(*(v9 + 64), *(v9 + 72), v5, a4.n128_f64[0]);
      v10 = sqrt(a4.n128_f64[0]);
      if (v10 < 0.00000381469727)
      {
        v11 = geo::containsPoint<double>(*(v9 + 40), *(v9 + 48), v5->f64);
        v12 = v9 == *(v6 + 272);
        v13 = a1[2];
        if (v8 >= v13)
        {
          v14 = *a1;
          v15 = v8 - *a1;
          v16 = 0xAAAAAAAAAAAAAAABLL * (v15 >> 3) + 1;
          if (v16 > 0xAAAAAAAAAAAAAAALL)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v17 = v6;
          v18 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v14) >> 3);
          if (2 * v18 > v16)
          {
            v16 = 2 * v18;
          }

          if (v18 >= 0x555555555555555)
          {
            v19 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v19 = v16;
          }

          if (v19)
          {
            if (v19 <= 0xAAAAAAAAAAAAAAALL)
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v20 = 8 * (v15 >> 3);
          *v20 = v9;
          *(v20 + 8) = v11;
          *(v20 + 9) = v12;
          *(v20 + 16) = v10;
          v8 = (v20 + 24);
          v21 = (v20 - v15);
          memcpy((v20 - v15), v14, v15);
          *a1 = v21;
          a1[1] = v8;
          a1[2] = 0;
          if (v14)
          {
            operator delete(v14);
          }

          v6 = v17;
          v5 = a3;
        }

        else
        {
          v8->n128_u64[0] = v9;
          v8->n128_u8[8] = v11;
          v8->n128_u8[9] = v12;
          v8[1].n128_f64[0] = v10;
          v8 = (v8 + 24);
        }

        a1[1] = v8;
      }

      v4 = *v4;
    }

    while (v4);
    v22 = *a1;
  }

  else
  {
    v8 = 0;
    v22 = 0;
  }

  v23 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v8 - v22) >> 3));
  if (v8 == v22)
  {
    v24 = 0;
  }

  else
  {
    v24 = v23;
  }

  *&result = std::__introsort<std::_ClassicAlgPolicy,md::VenueLogicContext::venuesInProximityToWorldPoint(geo::Mercator2<double> const&,double)::$_0 &,md::VenueProximityResult *,false>(v22, v8, v24, 1, a4).n128_u64[0];
  return result;
}

void sub_1B2EC5D00(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t geo::containsPoint<double>(uint64_t a1, uint64_t a2, double *a3)
{
  v3 = a2 - a1;
  if (a2 == a1)
  {
    v31 = 0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = v3 >> 4;
    v8 = *a3;
    v7 = a3[1];
    if ((v3 >> 4) <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v3 >> 4;
    }

    v10 = 1;
    do
    {
      v11 = 0;
      v12 = (a1 + 16 * v5++);
      v13 = 1;
      do
      {
        v14 = v12[v11];
        v15 = a3[v11];
        v16 = vabdd_f64(v14, v15);
        v17 = v16 <= fabs(v15 + v14) * 2.22044605e-14 || v16 <= 2.22507386e-308;
        if ((v13 & 1) == 0)
        {
          break;
        }

        v13 = 0;
        v11 = 1;
      }

      while (v17);
      v18 = v5 == v6 ? 0 : v5;
      if (v17)
      {
        break;
      }

      v19 = (a1 + 16 * v18);
      v20 = v12[1];
      v21 = v19[1];
      if (v20 == v21 && v20 == v7)
      {
        v23 = *v19;
        if (*v12 <= v8 && v23 >= v8)
        {
          break;
        }

        if (v23 <= v8 && *v12 >= v8)
        {
          break;
        }
      }

      v26 = v20 > v7 || v21 <= v7;
      if (!v26 || (v21 <= v7 ? (v27 = v20 <= v7) : (v27 = 1), !v27))
      {
        v28 = *v12;
        if (*v12 != *v19)
        {
          v28 = (*v19 - v28) * (v7 - v20) / (v21 - v20) + v28;
        }

        v29 = vabdd_f64(v8, v28);
        if (v29 <= fabs(v8 + v28) * 2.22044605e-14 || v29 < 2.22507386e-308)
        {
          break;
        }

        if (v28 < v8)
        {
          ++v4;
        }
      }

      v10 = v5 < v6;
    }

    while (v5 != v9);
    v31 = v10 | v4;
  }

  return v31 & 1;
}

__n128 std::__introsort<std::_ClassicAlgPolicy,md::VenueLogicContext::venuesInProximityToWorldPoint(geo::Mercator2<double> const&,double)::$_0 &,md::VenueProximityResult *,false>(char *a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = (a2 - 24);
  v115 = &a2[-1].n128_u8[1];
  k = a1;
  while (1)
  {
    a1 = k;
    v11 = a2 - k;
    v12 = 0xAAAAAAAAAAAAAAABLL * ((a2 - k) >> 3);
    if (v12 > 2)
    {
      switch(v12)
      {
        case 3:

          std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::VenueLogicContext::venuesInProximityToWorldPoint(geo::Mercator2<double> const&,double)::$_0 &,md::VenueProximityResult *,0>(k, k + 3, &a2[-2].n128_f64[1]);
          return result;
        case 4:
          v44 = (k + 3);
          std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::VenueLogicContext::venuesInProximityToWorldPoint(geo::Mercator2<double> const&,double)::$_0 &,md::VenueProximityResult *,0>(k, k + 3, k + 6);
          if (v9 == (k + 3))
          {
            return result;
          }

          v45 = a2[-1].n128_u8[0];
          if (v45 == *(k + 56) && (v45 = *v115, v45 == *(k + 57)))
          {
            result.n128_u64[0] = a2[-1].n128_u64[1];
            if (result.n128_f64[0] >= *(k + 8))
            {
              return result;
            }
          }

          else if ((v45 & 1) == 0)
          {
            return result;
          }

          result = *v44;
          v110 = *(k + 8);
          v111 = a2[-1].n128_u64[1];
          *v44 = *v9;
          *(k + 8) = v111;
          a2[-1].n128_u64[1] = v110;
          *v9 = result;
          v112 = *(k + 56);
          if (v112 == *(k + 32) && (v112 = *(k + 57), v112 == *(k + 33)))
          {
            result.n128_u64[0] = *(k + 8);
            if (result.n128_f64[0] >= *(k + 5))
            {
              return result;
            }
          }

          else if ((v112 & 1) == 0)
          {
            return result;
          }

          v113 = *(k + 5);
          result = *(k + 24);
          *(k + 24) = *v44;
          *(k + 5) = *(k + 8);
          *v44 = result;
          *(k + 8) = v113;
          v114 = *(k + 32);
          if (v114 == *(k + 8) && (v114 = *(k + 33), v114 == *(k + 9)))
          {
            result.n128_u64[0] = *(k + 5);
            if (result.n128_f64[0] >= *(k + 2))
            {
              return result;
            }
          }

          else if ((v114 & 1) == 0)
          {
            return result;
          }

          v139 = *(k + 2);
          v130 = *k;
          *k = *(k + 24);
          *(k + 2) = *(k + 5);
          result = v130;
          *(k + 24) = v130;
          *(k + 5) = v139;
          return result;
        case 5:

          result.n128_u64[0] = std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::VenueLogicContext::venuesInProximityToWorldPoint(geo::Mercator2<double> const&,double)::$_0 &,md::VenueProximityResult *,0>(k, k + 24, (k + 3), k + 72, &a2[-2].n128_i64[1]).n128_u64[0];
          return result;
      }
    }

    else
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        if (v9 == k)
        {
          return result;
        }

        v43 = a2[-1].n128_u8[0];
        if (v43 == *(k + 8) && (v43 = *v115, v43 == *(k + 9)))
        {
          result.n128_u64[0] = a2[-1].n128_u64[1];
          if (result.n128_f64[0] >= *(k + 2))
          {
            return result;
          }
        }

        else if ((v43 & 1) == 0)
        {
          return result;
        }

        v138 = *(k + 2);
        v129 = *k;
        v109 = *v9;
        *(k + 2) = a2[-1].n128_u64[1];
        *k = v109;
        result = v129;
        a2[-1].n128_u64[1] = v138;
        *v9 = v129;
        return result;
      }
    }

    if (v11 <= 575)
    {
      break;
    }

    if (!a3)
    {
      if (k == a2)
      {
        return result;
      }

      v59 = (v12 - 2) >> 1;
      v60 = v59;
      while (1)
      {
        v61 = v60;
        if (v59 < v60)
        {
          goto LABEL_212;
        }

        v62 = (2 * v60) | 1;
        v63 = k + 24 * v62;
        if (2 * v61 + 2 >= v12)
        {
          goto LABEL_186;
        }

        v64 = v63[8];
        if (v64 == v63[32])
        {
          v64 = v63[9];
          if (v64 == v63[33])
          {
            break;
          }
        }

        if (v64)
        {
          goto LABEL_185;
        }

LABEL_186:
        v65 = k + 24 * v61;
        if (v63 == v65)
        {
          v67 = v65[8];
        }

        else
        {
          v66 = v63[8];
          v67 = v65[8];
          if (v66 == v67)
          {
            v68 = v63[9];
            if (v68 == v65[9])
            {
              v67 = v63[8];
              if (*(v63 + 2) < *(v65 + 2))
              {
                goto LABEL_212;
              }
            }

            else
            {
              v67 = v63[8];
              if (v68)
              {
                goto LABEL_212;
              }
            }
          }

          else if (v66)
          {
            goto LABEL_212;
          }
        }

        v69 = *v65;
        v70 = v65[9];
        v132 = *(v65 + 7);
        v126 = *(v65 + 10);
        v71 = *(v65 + 2);
        v72 = *(v63 + 2);
        *v65 = *v63;
        *(v65 + 2) = v72;
        while (1)
        {
          if (v59 < v62)
          {
            goto LABEL_211;
          }

          v73 = v63;
          v74 = 2 * v62;
          v62 = (2 * v62) | 1;
          v63 = k + 24 * v62;
          v75 = v74 + 2;
          if (v75 < v12)
          {
            v76 = v63[8];
            if (v76 == v63[32])
            {
              v76 = v63[9];
              if (v76 == v63[33])
              {
                if (*(v63 + 2) >= *(v63 + 5))
                {
                  goto LABEL_204;
                }

LABEL_203:
                v63 += 24;
                v62 = v75;
                goto LABEL_204;
              }
            }

            if (v76)
            {
              goto LABEL_203;
            }
          }

LABEL_204:
          v77 = v63[8];
          if (v77 != v67)
          {
            break;
          }

          v77 = v63[9];
          if (v77 != v70)
          {
            break;
          }

          if (*(v63 + 2) < v71)
          {
            goto LABEL_210;
          }

LABEL_209:
          v78 = *v63;
          *(v73 + 2) = *(v63 + 2);
          *v73 = v78;
        }

        if ((v77 & 1) == 0)
        {
          goto LABEL_209;
        }

LABEL_210:
        v63 = v73;
LABEL_211:
        *v63 = v69;
        v63[8] = v67;
        v63[9] = v70;
        *(v63 + 10) = v126;
        *(v63 + 7) = v132;
        *(v63 + 2) = v71;
LABEL_212:
        v60 = v61 - 1;
        if (!v61)
        {
          v79 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 3);
          while (1)
          {
            v80 = 0;
            v137 = *(k + 2);
            v127 = *k;
            v81 = k;
            do
            {
              v82 = v81;
              v83 = v81 + 24 * v80;
              v81 = (v83 + 24);
              v84 = 2 * v80;
              v80 = (2 * v80) | 1;
              v85 = v84 + 2;
              if (v85 >= v79)
              {
                goto LABEL_222;
              }

              v86 = v83[32];
              if (v86 != v83[56] || (v86 = v83[33], v86 != v83[57]))
              {
                if ((v86 & 1) == 0)
                {
                  goto LABEL_222;
                }

LABEL_221:
                v81 = (v83 + 48);
                v80 = v85;
                goto LABEL_222;
              }

              if (*(v83 + 5) < *(v83 + 8))
              {
                goto LABEL_221;
              }

LABEL_222:
              v87 = *v81;
              v82[1].n128_u64[0] = *(v81 + 2);
              *v82 = v87;
            }

            while (v80 <= ((v79 - 2) >> 1));
            a2 = (a2 - 24);
            if (v81 == a2)
            {
              result = v127;
              *(v81 + 2) = v137;
              *v81 = v127;
              goto LABEL_244;
            }

            v88 = *a2;
            *(v81 + 2) = a2[1].n128_u64[0];
            *v81 = v88;
            result = v127;
            a2[1].n128_u64[0] = v137;
            *a2 = v127;
            v89 = v81 - k + 24;
            if (v89 >= 25)
            {
              v90 = -2 - 0x5555555555555555 * (v89 >> 3);
              v91 = v90 >> 1;
              v92 = (k + 24 * (v90 >> 1));
              if (v92 != v81)
              {
                v93 = *(v81 + 8);
                if (*(v92 + 8) == v93)
                {
                  v94 = *(v92 + 9);
                  v95 = *(v81 + 9);
                  if (v94 == v95)
                  {
                    result.n128_u64[0] = *(v92 + 2);
                    v95 = *(v92 + 9);
                    if (result.n128_f64[0] >= *(v81 + 2))
                    {
                      goto LABEL_244;
                    }
                  }

                  else if ((v94 & 1) == 0)
                  {
                    goto LABEL_244;
                  }
                }

                else
                {
                  if (!*(v92 + 8))
                  {
                    goto LABEL_244;
                  }

                  v95 = *(v81 + 9);
                }

                v96 = *v81;
                v118 = *(v81 + 10);
                v121 = *(v81 + 7);
                result.n128_u64[0] = *(v81 + 2);
                v97 = *v92;
                *(v81 + 2) = *(v92 + 2);
                *v81 = v97;
                if (v90 < 2)
                {
                  goto LABEL_243;
                }

                while (1)
                {
                  v98 = v92;
                  v99 = v91 - 1;
                  v91 = (v91 - 1) >> 1;
                  v92 = (k + 24 * v91);
                  v100 = *(v92 + 8);
                  if (v100 == v93 && (v100 = *(v92 + 9), v100 == v95))
                  {
                    if (*(v92 + 2) >= result.n128_f64[0])
                    {
                      goto LABEL_242;
                    }
                  }

                  else if ((v100 & 1) == 0)
                  {
LABEL_242:
                    v92 = v98;
LABEL_243:
                    *v92 = v96;
                    *(v92 + 8) = v93;
                    *(v92 + 9) = v95;
                    *(v92 + 10) = v118;
                    *(v92 + 7) = v121;
                    *(v92 + 2) = result.n128_u64[0];
                    break;
                  }

                  v101 = *v92;
                  *(v98 + 2) = *(v92 + 2);
                  *v98 = v101;
                  if (v99 <= 1)
                  {
                    goto LABEL_243;
                  }
                }
              }
            }

LABEL_244:
            if (v79-- <= 2)
            {
              return result;
            }
          }
        }
      }

      if (*(v63 + 2) >= *(v63 + 5))
      {
        goto LABEL_186;
      }

LABEL_185:
      v63 += 24;
      v62 = 2 * v61 + 2;
      goto LABEL_186;
    }

    v13 = v12 >> 1;
    v14 = k + 3 * (v12 >> 1);
    if (v11 < 0xC01)
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::VenueLogicContext::venuesInProximityToWorldPoint(geo::Mercator2<double> const&,double)::$_0 &,md::VenueProximityResult *,0>(&a1[24 * v13], a1, &a2[-2].n128_f64[1]);
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::VenueLogicContext::venuesInProximityToWorldPoint(geo::Mercator2<double> const&,double)::$_0 &,md::VenueProximityResult *,0>(a1, &a1[24 * v13], &a2[-2].n128_f64[1]);
      v15 = 3 * v13;
      v16 = &a1[24 * v13 - 24];
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::VenueLogicContext::venuesInProximityToWorldPoint(geo::Mercator2<double> const&,double)::$_0 &,md::VenueProximityResult *,0>(a1 + 3, v16, a2[-3].n128_f64);
      v17 = &a1[8 * v15 + 24];
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::VenueLogicContext::venuesInProximityToWorldPoint(geo::Mercator2<double> const&,double)::$_0 &,md::VenueProximityResult *,0>(a1 + 6, v17, &a2[-5].n128_f64[1]);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::VenueLogicContext::venuesInProximityToWorldPoint(geo::Mercator2<double> const&,double)::$_0 &,md::VenueProximityResult *,0>(v16, v14, v17);
      v134 = *(a1 + 2);
      v122 = *a1;
      v18 = *(v14 + 2);
      *a1 = *v14;
      *(a1 + 2) = v18;
      result.n128_u64[1] = *(&v122 + 1);
      *(v14 + 2) = v134;
      *v14 = v122;
    }

    --a3;
    if (a4)
    {
      v19 = a1[8];
LABEL_23:
      v21 = *a1;
      v22 = a1[9];
      v116 = *(a1 + 10);
      v119 = *(a1 + 7);
      result.n128_u64[0] = *(a1 + 2);
      for (i = a1 + 24; ; i += 24)
      {
        v24 = i[8];
        if (v24 != v19)
        {
          break;
        }

        v24 = i[9];
        if (v24 != v22)
        {
          break;
        }

        if (*(i + 2) >= result.n128_f64[0])
        {
          goto LABEL_30;
        }

LABEL_29:
        ;
      }

      if (v24)
      {
        goto LABEL_29;
      }

LABEL_30:
      v25 = i - 24;
      j = (a2 - 24);
      if (i - 24 != a1)
      {
        while (1)
        {
          v27 = j->n128_u8[8];
          if (v27 == v19 && (v27 = j->n128_u8[9], v27 == v22))
          {
            if (j[1].n128_f64[0] < result.n128_f64[0])
            {
              goto LABEL_50;
            }
          }

          else if (v27)
          {
            goto LABEL_50;
          }

          j = (j - 24);
        }
      }

      j = a2;
      if (i < a2)
      {
        for (j = (a2 - 24); ; j = (j - 24))
        {
          v28 = j->n128_u8[8];
          if (v28 == v19 && (v28 = j->n128_u8[9], v28 == v22))
          {
            if (j[1].n128_f64[0] < result.n128_f64[0] || i >= j)
            {
              break;
            }
          }

          else if ((v28 & 1) != 0 || i >= j)
          {
            break;
          }
        }
      }

LABEL_50:
      if (i < j)
      {
        v30 = i;
        v31 = j;
        do
        {
          v135 = *(v30 + 2);
          v123 = *v30;
          v32 = *v31;
          *(v30 + 2) = v31[1].n128_u64[0];
          *v30 = v32;
          v31[1].n128_u64[0] = v135;
          *v31 = v123;
          do
          {
            while (1)
            {
              v30 += 24;
              v33 = v30[8];
              if (v33 != v19)
              {
                break;
              }

              v33 = v30[9];
              if (v33 != v22)
              {
                break;
              }

              if (*(v30 + 2) >= result.n128_f64[0])
              {
                goto LABEL_58;
              }
            }
          }

          while ((v33 & 1) != 0);
LABEL_58:
          v25 = v30 - 24;
          do
          {
            while (1)
            {
              v31 = (v31 - 24);
              v34 = v31->n128_u8[8];
              if (v34 != v19)
              {
                break;
              }

              v34 = v31->n128_u8[9];
              if (v34 != v22)
              {
                break;
              }

              if (v31[1].n128_f64[0] < result.n128_f64[0])
              {
                goto LABEL_64;
              }
            }
          }

          while ((v34 & 1) == 0);
LABEL_64:
          ;
        }

        while (v30 < v31);
      }

      if (v25 != a1)
      {
        v35 = *v25;
        *(a1 + 2) = *(v25 + 2);
        *a1 = v35;
      }

      *v25 = v21;
      v25[8] = v19;
      v25[9] = v22;
      *(v25 + 10) = v116;
      *(v25 + 7) = v119;
      *(v25 + 2) = result.n128_u64[0];
      if (i < j)
      {
LABEL_70:
        result.n128_u64[0] = std::__introsort<std::_ClassicAlgPolicy,md::VenueLogicContext::venuesInProximityToWorldPoint(geo::Mercator2<double> const&,double)::$_0 &,md::VenueProximityResult *,false>(a1, v25, a3, a4 & 1, result).n128_u64[0];
        a4 = 0;
        k = (v25 + 24);
      }

      else
      {
        v36 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::VenueLogicContext::venuesInProximityToWorldPoint(geo::Mercator2<double> const&,double)::$_0 &,md::VenueProximityResult *>(a1, v25);
        k = (v25 + 24);
        if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::VenueLogicContext::venuesInProximityToWorldPoint(geo::Mercator2<double> const&,double)::$_0 &,md::VenueProximityResult *>((v25 + 24), a2))
        {
          a2 = v25;
          if (v36)
          {
            return result;
          }

          goto LABEL_1;
        }

        if (!v36)
        {
          goto LABEL_70;
        }
      }
    }

    else
    {
      v19 = *(a1 - 16);
      if (v19 == a1[8])
      {
        v20 = *(a1 - 15);
        if (v20 == a1[9])
        {
          if (*(a1 - 1) < *(a1 + 2))
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (v20)
          {
            goto LABEL_23;
          }

          v20 = a1[9];
        }
      }

      else
      {
        if (v19)
        {
          v19 = a1[8];
          goto LABEL_23;
        }

        v20 = a1[9];
        v19 = a1[8];
      }

      v37 = *a1;
      v117 = *(a1 + 10);
      v120 = *(a1 + 7);
      result.n128_u64[0] = *(a1 + 2);
      v38 = a2[-1].n128_u8[0];
      if (v19 == v38)
      {
        if (v20 == *v115)
        {
          if (result.n128_f64[0] < a2[-1].n128_f64[1])
          {
            goto LABEL_78;
          }
        }

        else if (v20)
        {
LABEL_78:
          for (k = (a1 + 24); ; k = (k + 24))
          {
            if (v19 == *(k + 8))
            {
              if (v20 == *(k + 9))
              {
                if (result.n128_f64[0] < *(k + 2))
                {
                  goto LABEL_98;
                }
              }

              else if (v20)
              {
                goto LABEL_98;
              }
            }

            else if (v19)
            {
              goto LABEL_98;
            }
          }
        }
      }

      else if (v19)
      {
        goto LABEL_78;
      }

      for (k = (a1 + 24); k < a2; k = (k + 24))
      {
        if (v19 == *(k + 8))
        {
          if (v20 == *(k + 9))
          {
            if (result.n128_f64[0] < *(k + 2))
            {
              break;
            }
          }

          else if (v20)
          {
            break;
          }
        }

        else if (v19)
        {
          break;
        }
      }

LABEL_98:
      v39 = a2;
      if (k >= a2)
      {
        goto LABEL_124;
      }

      v40 = &a2[-1].n128_u8[1];
      while (v19 != v38)
      {
        if ((v19 & 1) == 0)
        {
          goto LABEL_108;
        }

LABEL_107:
        LOBYTE(v38) = *(v40 - 25);
        v40 -= 24;
      }

      if (v20 == *v40)
      {
        if (result.n128_f64[0] >= *(v40 + 7))
        {
          goto LABEL_108;
        }

        goto LABEL_107;
      }

      if (v20)
      {
        goto LABEL_107;
      }

LABEL_108:
      v39 = (v40 - 9);
LABEL_124:
      while (k < v39)
      {
        v136 = *(k + 2);
        v124 = *k;
        v41 = *v39;
        *(k + 2) = v39[1].n128_u64[0];
        *k = v41;
        v39[1].n128_u64[0] = v136;
        *v39 = v124;
        do
        {
          while (1)
          {
            while (1)
            {
              k = (k + 24);
              if (v19 == *(k + 8))
              {
                break;
              }

              if (v19)
              {
                goto LABEL_121;
              }
            }

            if (v20 != *(k + 9))
            {
              break;
            }

            if (result.n128_f64[0] < *(k + 2))
            {
              goto LABEL_121;
            }
          }
        }

        while ((v20 & 1) == 0);
        do
        {
          while (1)
          {
LABEL_121:
            while (1)
            {
              v39 = (v39 - 24);
              if (v19 == v39->n128_u8[8])
              {
                break;
              }

              if ((v19 & 1) == 0)
              {
                goto LABEL_124;
              }
            }

            if (v20 == v39->n128_u8[9])
            {
              break;
            }

            if ((v20 & 1) == 0)
            {
              goto LABEL_124;
            }
          }
        }

        while (result.n128_f64[0] < v39[1].n128_f64[0]);
      }

      if (k - 24 != a1)
      {
        v42 = *(k - 24);
        *(a1 + 2) = *(k - 1);
        *a1 = v42;
      }

      a4 = 0;
      *(k - 3) = v37;
      *(k - 16) = v19;
      *(k - 15) = v20;
      *(k - 14) = v117;
      *(k - 5) = v120;
      *(k - 1) = result.n128_u64[0];
    }
  }

  v46 = (k + 24);
  v48 = k == a2 || v46 == a2;
  if ((a4 & 1) == 0)
  {
    if (v48)
    {
      return result;
    }

    while (1)
    {
      v103 = a1;
      a1 = v46;
      v104 = *(v103 + 32);
      if (v104 == *(v103 + 8) && (v104 = *(v103 + 33), v104 == *(v103 + 9)))
      {
        result.n128_u64[0] = *(v103 + 5);
        if (result.n128_f64[0] >= *(v103 + 2))
        {
          goto LABEL_262;
        }
      }

      else if ((v104 & 1) == 0)
      {
        goto LABEL_262;
      }

      v105 = v46->n128_u64[0];
      v106 = v46->n128_u8[8];
      v107 = v46->n128_u8[9];
      v128 = *(a1 + 10);
      v133 = *(a1 + 7);
      result.n128_u64[0] = *(a1 + 2);
      do
      {
        while (1)
        {
          while (1)
          {
            v108 = v103;
            *(v103 + 24) = *v103;
            *(v103 + 5) = *(v103 + 2);
            v103 = (v103 - 24);
            if (v106 == *(v108 - 16))
            {
              break;
            }

            if ((v106 & 1) == 0)
            {
              goto LABEL_261;
            }
          }

          if (v107 != *(v108 - 15))
          {
            break;
          }

          if (result.n128_f64[0] >= *(v108 - 1))
          {
            goto LABEL_261;
          }
        }
      }

      while ((v107 & 1) != 0);
LABEL_261:
      *v108 = v105;
      *(v108 + 8) = v106;
      *(v108 + 9) = v107;
      *(v108 + 10) = v128;
      *(v108 + 7) = v133;
      *(v108 + 2) = result.n128_u64[0];
LABEL_262:
      v46 = (a1 + 24);
      if (a1 + 24 == a2)
      {
        return result;
      }
    }
  }

  if (v48)
  {
    return result;
  }

  v49 = 0;
  v50 = k;
  while (2)
  {
    v51 = v50;
    v50 = v46;
    v52 = *(v51 + 32);
    if (v52 == *(v51 + 8) && (v52 = *(v51 + 33), v52 == *(v51 + 9)))
    {
      result.n128_u64[0] = *(v51 + 5);
      if (result.n128_f64[0] >= *(v51 + 2))
      {
        goto LABEL_174;
      }
    }

    else if ((v52 & 1) == 0)
    {
      goto LABEL_174;
    }

    v53 = v50[8];
    v54 = v50[9];
    v125 = *(v50 + 10);
    v131 = *(v50 + 7);
    result.n128_u64[0] = *(v50 + 2);
    v55 = *(v51 + 3);
    *(v50 + 2) = *(v51 + 2);
    *v50 = *v51;
    v56 = k;
    if (v51 == k)
    {
      goto LABEL_173;
    }

    v57 = v49;
    while (2)
    {
      v58 = k + v57;
      if (v53 != *(k + v57 - 16))
      {
        if ((v53 & 1) == 0)
        {
LABEL_171:
          v56 = v51;
          goto LABEL_173;
        }

        goto LABEL_169;
      }

      if (v54 == *(v58 - 15))
      {
        if (result.n128_f64[0] >= *(k + v57 - 8))
        {
          goto LABEL_171;
        }

        goto LABEL_169;
      }

      if (v54)
      {
LABEL_169:
        v51 = (v51 - 24);
        *v58 = *(v58 - 24);
        *(v58 + 2) = *(v58 - 1);
        v57 -= 24;
        if (!v57)
        {
          v56 = k;
          goto LABEL_173;
        }

        continue;
      }

      break;
    }

    v56 = (k + v57);
LABEL_173:
    *v56 = v55;
    *(v56 + 8) = v53;
    *(v56 + 9) = v54;
    *(v56 + 10) = v125;
    *(v56 + 7) = v131;
    *(v56 + 2) = result.n128_u64[0];
LABEL_174:
    v46 = (v50 + 24);
    v49 += 24;
    if (v50 + 24 != a2)
    {
      continue;
    }

    return result;
  }
}

double *std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::VenueLogicContext::venuesInProximityToWorldPoint(geo::Mercator2<double> const&,double)::$_0 &,md::VenueProximityResult *,0>(double *result, double *a2, double *a3)
{
  if (a2 == result)
  {
LABEL_13:
    if (a3 == a2)
    {
      return result;
    }

    v7 = *(a3 + 8);
    if (v7 == *(a2 + 8) && (v7 = *(a3 + 9), v7 == *(a2 + 9)))
    {
      if (a3[2] >= a2[2])
      {
        return result;
      }
    }

    else if ((v7 & 1) == 0)
    {
      return result;
    }

    v8 = *(a2 + 2);
    v9 = *a2;
    v10 = *(a3 + 2);
    *a2 = *a3;
    *(a2 + 2) = v10;
    *a3 = v9;
    *(a3 + 2) = v8;
    if (a2 == result)
    {
      return result;
    }

    v11 = *(a2 + 8);
    if (v11 == *(result + 8) && (v11 = *(a2 + 9), v11 == *(result + 9)))
    {
      if (a2[2] >= result[2])
      {
        return result;
      }
    }

    else if ((v11 & 1) == 0)
    {
      return result;
    }

LABEL_25:
    v12 = *(result + 2);
    v13 = *result;
    v14 = *(a2 + 2);
    *result = *a2;
    *(result + 2) = v14;
    *a2 = v13;
    *(a2 + 2) = v12;
    return result;
  }

  v3 = *(a2 + 8);
  if (v3 == *(result + 8))
  {
    v4 = *(a2 + 9);
    if (v4 == *(result + 9))
    {
      if (a2[2] >= result[2])
      {
        goto LABEL_13;
      }
    }

    else if ((v4 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if ((v3 & 1) == 0)
  {
    goto LABEL_13;
  }

  if (a3 == a2)
  {
    goto LABEL_25;
  }

  v5 = *(a3 + 8);
  if (v5 == v3)
  {
    v6 = *(a3 + 9);
    if (v6 == *(a2 + 9))
    {
      if (a3[2] >= a2[2])
      {
        goto LABEL_29;
      }

LABEL_27:
      v15 = *(result + 2);
      v16 = *result;
      v17 = *(a3 + 2);
      *result = *a3;
      *(result + 2) = v17;
LABEL_35:
      *a3 = v16;
      *(a3 + 2) = v15;
      return result;
    }

    if (v6)
    {
      goto LABEL_27;
    }
  }

  else if (v5)
  {
    goto LABEL_27;
  }

LABEL_29:
  v18 = *(result + 2);
  v19 = *result;
  v20 = *(a2 + 2);
  *result = *a2;
  *(result + 2) = v20;
  *a2 = v19;
  *(a2 + 2) = v18;
  v21 = *(a3 + 8);
  if (v21 != *(a2 + 8) || (v21 = *(a3 + 9), v21 != *(a2 + 9)))
  {
    if ((v21 & 1) == 0)
    {
      return result;
    }

    goto LABEL_34;
  }

  if (a3[2] < a2[2])
  {
LABEL_34:
    v15 = *(a2 + 2);
    v16 = *a2;
    v22 = *(a3 + 2);
    *a2 = *a3;
    *(a2 + 2) = v22;
    goto LABEL_35;
  }

  return result;
}

__n128 std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::VenueLogicContext::venuesInProximityToWorldPoint(geo::Mercator2<double> const&,double)::$_0 &,md::VenueProximityResult *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::VenueLogicContext::venuesInProximityToWorldPoint(geo::Mercator2<double> const&,double)::$_0 &,md::VenueProximityResult *,0>(a1, a2, a3);
  if (a4 != a3)
  {
    v11 = *(a4 + 8);
    if (v11 == *(a3 + 8) && (v11 = *(a4 + 9), v11 == *(a3 + 9)))
    {
      result.n128_u64[0] = *(a4 + 16);
      if (result.n128_f64[0] >= *(a3 + 16))
      {
        goto LABEL_20;
      }
    }

    else if ((v11 & 1) == 0)
    {
      goto LABEL_20;
    }

    v12 = *(a3 + 16);
    result = *a3;
    v13 = *(a4 + 16);
    *a3 = *a4;
    *(a3 + 16) = v13;
    *a4 = result;
    *(a4 + 16) = v12;
    if (a3 == a2)
    {
      goto LABEL_20;
    }

    v14 = *(a3 + 8);
    if (v14 == *(a2 + 8) && (v14 = *(a3 + 9), v14 == *(a2 + 9)))
    {
      result.n128_u64[0] = *(a3 + 16);
      if (result.n128_f64[0] >= *(a2 + 16))
      {
        goto LABEL_20;
      }
    }

    else if ((v14 & 1) == 0)
    {
      goto LABEL_20;
    }

    v15 = *(a2 + 16);
    result = *a2;
    v16 = *(a3 + 16);
    *a2 = *a3;
    *(a2 + 16) = v16;
    *a3 = result;
    *(a3 + 16) = v15;
    if (a2 == a1)
    {
      goto LABEL_20;
    }

    v17 = *(a2 + 8);
    if (v17 == *(a1 + 8) && (v17 = *(a2 + 9), v17 == *(a1 + 9)))
    {
      result.n128_u64[0] = *(a2 + 16);
      if (result.n128_f64[0] >= *(a1 + 16))
      {
        goto LABEL_20;
      }
    }

    else if ((v17 & 1) == 0)
    {
      goto LABEL_20;
    }

    v18 = *(a1 + 16);
    result = *a1;
    v19 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v19;
    *a2 = result;
    *(a2 + 16) = v18;
  }

LABEL_20:
  if (a5 == a4)
  {
    return result;
  }

  v20 = *(a5 + 8);
  if (v20 == *(a4 + 8) && (v20 = *(a5 + 9), v20 == *(a4 + 9)))
  {
    result.n128_u64[0] = *(a5 + 16);
    if (result.n128_f64[0] >= *(a4 + 16))
    {
      return result;
    }
  }

  else if ((v20 & 1) == 0)
  {
    return result;
  }

  v21 = *(a4 + 16);
  result = *a4;
  v22 = *(a5 + 16);
  *a4 = *a5;
  *(a4 + 16) = v22;
  *a5 = result;
  *(a5 + 16) = v21;
  if (a4 == a3)
  {
    return result;
  }

  v23 = *(a4 + 8);
  if (v23 == *(a3 + 8) && (v23 = *(a4 + 9), v23 == *(a3 + 9)))
  {
    result.n128_u64[0] = *(a4 + 16);
    if (result.n128_f64[0] >= *(a3 + 16))
    {
      return result;
    }
  }

  else if ((v23 & 1) == 0)
  {
    return result;
  }

  v24 = *(a3 + 16);
  result = *a3;
  v25 = *(a4 + 16);
  *a3 = *a4;
  *(a3 + 16) = v25;
  *a4 = result;
  *(a4 + 16) = v24;
  if (a3 == a2)
  {
    return result;
  }

  v26 = *(a3 + 8);
  if (v26 == *(a2 + 8) && (v26 = *(a3 + 9), v26 == *(a2 + 9)))
  {
    result.n128_u64[0] = *(a3 + 16);
    if (result.n128_f64[0] >= *(a2 + 16))
    {
      return result;
    }
  }

  else if ((v26 & 1) == 0)
  {
    return result;
  }

  v27 = *(a2 + 16);
  result = *a2;
  v28 = *(a3 + 16);
  *a2 = *a3;
  *(a2 + 16) = v28;
  *a3 = result;
  *(a3 + 16) = v27;
  if (a2 == a1)
  {
    return result;
  }

  v29 = *(a2 + 8);
  if (v29 != *(a1 + 8) || (v29 = *(a2 + 9), v29 != *(a1 + 9)))
  {
    if ((v29 & 1) == 0)
    {
      return result;
    }

    goto LABEL_44;
  }

  result.n128_u64[0] = *(a2 + 16);
  if (result.n128_f64[0] < *(a1 + 16))
  {
LABEL_44:
    v30 = *(a1 + 16);
    result = *a1;
    v31 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v31;
    *a2 = result;
    *(a2 + 16) = v30;
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::VenueLogicContext::venuesInProximityToWorldPoint(geo::Mercator2<double> const&,double)::$_0 &,md::VenueProximityResult *>(__int128 *a1, __int128 *a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::VenueLogicContext::venuesInProximityToWorldPoint(geo::Mercator2<double> const&,double)::$_0 &,md::VenueProximityResult *,0>(a1, a1 + 3, a2 - 3);
      return 1;
    }

    if (v4 != 4)
    {
      if (v4 == 5)
      {
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::VenueLogicContext::venuesInProximityToWorldPoint(geo::Mercator2<double> const&,double)::$_0 &,md::VenueProximityResult *,0>(a1, a1 + 24, (a1 + 3), a1 + 72, a2 - 24);
        return 1;
      }

      goto LABEL_14;
    }

    v17 = a1 + 3;
    v18 = (a2 - 24);
    std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::VenueLogicContext::venuesInProximityToWorldPoint(geo::Mercator2<double> const&,double)::$_0 &,md::VenueProximityResult *,0>(a1, a1 + 3, a1 + 6);
    if (v18 == v17)
    {
      return 1;
    }

    v19 = *(a2 - 16);
    if (v19 == *(a1 + 56) && (v19 = *(a2 - 15), v19 == *(a1 + 57)))
    {
      if (*(a2 - 1) >= *(a1 + 8))
      {
        return 1;
      }
    }

    else if ((v19 & 1) == 0)
    {
      return 1;
    }

    v23 = *(a1 + 8);
    v24 = *v17;
    v25 = *(a2 - 1);
    *v17 = *v18;
    *(a1 + 8) = v25;
    *v18 = v24;
    *(a2 - 1) = v23;
    v26 = *(a1 + 56);
    if (v26 == *(a1 + 32) && (v26 = *(a1 + 57), v26 == *(a1 + 33)))
    {
      if (*(a1 + 8) >= *(a1 + 5))
      {
        return 1;
      }
    }

    else if ((v26 & 1) == 0)
    {
      return 1;
    }

    v27 = *(a1 + 5);
    v28 = *(a1 + 24);
    *(a1 + 24) = *v17;
    *(a1 + 5) = *(a1 + 8);
    *v17 = v28;
    *(a1 + 8) = v27;
    v29 = *(a1 + 32);
    if (v29 == *(a1 + 8) && (v29 = *(a1 + 33), v29 == *(a1 + 9)))
    {
      if (*(a1 + 5) >= *(a1 + 2))
      {
        return 1;
      }
    }

    else if ((v29 & 1) == 0)
    {
      return 1;
    }

    v31 = *(a1 + 2);
    v32 = *a1;
    *a1 = *(a1 + 24);
    *(a1 + 2) = *(a1 + 5);
    *(a1 + 24) = v32;
    *(a1 + 5) = v31;
    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = (a2 - 24);
    if ((a2 - 24) == a1)
    {
      return 1;
    }

    v6 = *(a2 - 16);
    if (v6 == *(a1 + 8) && (v6 = *(a2 - 15), v6 == *(a1 + 9)))
    {
      if (*(a2 - 1) >= *(a1 + 2))
      {
        return 1;
      }
    }

    else if ((v6 & 1) == 0)
    {
      return 1;
    }

    v20 = *(a1 + 2);
    v21 = *a1;
    v22 = *(a2 - 1);
    *a1 = *v5;
    *(a1 + 2) = v22;
    *v5 = v21;
    *(a2 - 1) = v20;
    return 1;
  }

LABEL_14:
  v7 = (a1 + 3);
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::VenueLogicContext::venuesInProximityToWorldPoint(geo::Mercator2<double> const&,double)::$_0 &,md::VenueProximityResult *,0>(a1, a1 + 3, a1 + 6);
  v8 = a1 + 72;
  if ((a1 + 72) == a2)
  {
    return 1;
  }

  v9 = 0;
  v10 = 0;
  while (2)
  {
    v11 = *(v8 + 8);
    if (v11 == *(v7 + 8))
    {
      v12 = *(v8 + 9);
      if (v12 == *(v7 + 9))
      {
        if (*(v8 + 16) >= *(v7 + 16))
        {
          goto LABEL_35;
        }
      }

      else if ((v12 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
      if (!*(v8 + 8))
      {
        goto LABEL_35;
      }

      v12 = *(v8 + 9);
    }

    v13 = *v8;
    v33 = *(v8 + 10);
    v34 = *(v8 + 14);
    v14 = *(v8 + 16);
    *(v8 + 16) = *(v7 + 16);
    *v8 = *v7;
    v15 = v9;
    while (1)
    {
      v16 = a1 + v15;
      if (v11 != *(a1 + v15 + 32))
      {
        if ((v11 & 1) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_31;
      }

      if (v12 == *(v16 + 33))
      {
        if (v14 >= *(a1 + v15 + 40))
        {
          goto LABEL_34;
        }

        goto LABEL_31;
      }

      if ((v12 & 1) == 0)
      {
        break;
      }

LABEL_31:
      v7 -= 24;
      *(v16 + 48) = *(v16 + 24);
      *(v16 + 64) = *(v16 + 40);
      v15 -= 24;
      if (v15 == -48)
      {
        v7 = a1;
        goto LABEL_34;
      }
    }

    v7 = a1 + v15 + 48;
LABEL_34:
    *v7 = v13;
    *(v7 + 8) = v11;
    *(v7 + 9) = v12;
    *(v7 + 10) = v33;
    *(v7 + 14) = v34;
    *(v7 + 16) = v14;
    if (++v10 != 8)
    {
LABEL_35:
      v7 = v8;
      v9 += 24;
      v8 += 24;
      if (v8 == a2)
      {
        return 1;
      }

      continue;
    }

    return v8 + 24 == a2;
  }
}

float ___ZN2md10VenueLogic22_runExtrusionAnimationEv_block_invoke(uint64_t a1, float a2)
{
  result = *(a1 + 40) + ((*(a1 + 44) - *(a1 + 40)) * a2);
  *(*(a1 + 32) + 492) = result;
  return result;
}

float ___ZN2md10VenueLogic22_runExtrusionAnimationEv_block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    result = *(a1 + 40);
    *(*(a1 + 32) + 492) = result;
  }

  return result;
}

void std::function<void ()(VKAnimation *)>::operator()(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 24);
  if (!v3)
  {
    v4 = std::__throw_bad_function_call[abi:nn200100]();

    _Unwind_Resume(v4);
  }

  (*(*v3 + 48))(v3, &v5);
}

uint64_t md::Logic<md::VenueLogic,md::VenueLogicContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::ElevationContext,md::SceneContext>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v7[4] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x4927EB92E562CC46 && (v4 = *(a3 + 32)) != 0)
  {
    v6 = result;
    md::LogicDependencies<gdc::TypeList<md::CameraContext,md::ElevationContext,md::SceneContext>,gdc::TypeList<>>::buildRequiredTuple<md::CameraContext,md::ElevationContext,md::SceneContext>(v7, *(a2 + 8));
    return (*(*v6 + 160))(v6, a2, v7, v4);
  }

  else
  {
    a4[23] = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::VenueLogicContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::VenueLogicContext>::~ManagedObjectHolder(void *a1)
{
  gdc::ManagedObjectHolder<md::VenueLogicContext>::~ManagedObjectHolder(a1);

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::VenueLogicContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A0E968;
  v2 = a1[4];
  if (v2)
  {
    std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::~__hash_table((v2 + 304));
    v3 = *(v2 + 120);
    if (v3)
    {
      *(v2 + 128) = v3;
      operator delete(v3);
    }

    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v2 + 80);
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v2 + 40);
    v4 = std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>>>::~__hash_table(v2);
    MEMORY[0x1B8C62190](v4, 0x10F0C40EC263EC2);
  }

  return a1;
}

uint64_t md::VenueLogic::didBecomeInactive(md::VenueLogic *this)
{
  *(this + 568) = 0u;
  result = *(this + 90);
  if (result)
  {
    v2 = 0;
    v3 = 0;
    return (*(*result + 48))(result, &v3, &v2);
  }

  return result;
}

void md::VenueLogic::~VenueLogic(md::VenueLogic *this)
{
  md::VenueLogic::~VenueLogic(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A0E7F8;
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:nn200100](this + 888);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:nn200100](this + 856);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](this + 824);
  std::__function::__value_func<void ()(VKAnimation *)>::~__value_func[abi:nn200100](this + 792);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](this + 760);
  std::__function::__value_func<void ()(md::Venue const*)>::~__value_func[abi:nn200100](this + 728);
  std::__function::__value_func<void ()(md::Venue const*,md::VenueBuilding const*)>::~__value_func[abi:nn200100](this + 696);
  *(this + 83) = &unk_1F2A3EF58;

  *(this + 80) = &unk_1F2A3EF58;
  std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::__deallocate_node(*(this + 77));
  v2 = *(this + 75);
  *(this + 75) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::~__hash_table(this + 64);
  v3 = *(this + 41);
  if (v3)
  {
    *(this + 42) = v3;
    operator delete(v3);
  }

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 288);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 248);
  std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>>>::~__hash_table(this + 26);
  if (*(this + 23))
  {
    std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](this + 23);
    operator delete(*(this + 23));
  }

  std::mutex::~mutex((this + 120));
  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

double md::VenueLogicContext::getVenueLevelElevation(md::VenueLogicContext *this, uint64_t a2, unsigned __int16 a3, int a4)
{
  md::VenueLogicContext::buildingElevation(this, a2, a4);
  if (v9)
  {
    v10 = (this + 16);
    while (1)
    {
      v10 = *v10;
      if (!v10)
      {
        break;
      }

      v11 = v10[3];
      v12 = *(v11 + 16);
      v13 = *(v11 + 24);
      if (v12 != v13)
      {
        while (v12[3] != a2)
        {
          v12 += 15;
          if (v12 == v13)
          {
            v12 = v13;
            break;
          }
        }
      }

      if (v12 != v13)
      {
        if (v12)
        {
          v14 = *v12;
          v15 = v12[1];
          while (v14 != v15)
          {
            if (*(v14 + 8) == a3)
            {
              if (*(v14 + 168) == 1)
              {
                v16 = 1.0;
                if (a4)
                {
                  v16 = *(this + 73);
                }

                return v16 * *(v14 + 176);
              }

              return result;
            }

            v14 += 184;
          }
        }

        return result;
      }
    }
  }

  return result;
}

uint64_t md::VenueLogicContext::buildingElevation(md::VenueLogicContext *this, uint64_t a2, int a3)
{
  v3 = (this + 16);
  while (1)
  {
    v3 = *v3;
    if (!v3)
    {
      break;
    }

    v4 = v3[3];
    v5 = *(v4 + 16);
    v6 = *(v4 + 24);
    if (v5 != v6)
    {
      while (*(v5 + 24) != a2)
      {
        v5 += 120;
        if (v5 == v6)
        {
          v5 = v6;
          break;
        }
      }
    }

    if (v5 != v6)
    {
      if (v5 && *(v5 + 104) == 1)
      {
        v7 = 1.0;
        if (a3)
        {
          v7 = *(this + 73);
        }

        *&result = v7 * *(v5 + 112);
        return result;
      }

      break;
    }
  }

  if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
  }

  v9 = GEOGetVectorKitVKDefaultLog_log;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *v10 = 0;
    _os_log_impl(&dword_1B2754000, v9, OS_LOG_TYPE_ERROR, "Building couldn't be found to determine elevation. Verify the code and the data, file a bug for data team if necessary.", v10, 2u);
  }

  *&result = 0.0;
  return result;
}

uint64_t md::VenueLogicContext::displayedFloorOrdinalForVenueBuildingId(md::VenueLogicContext *this, uint64_t a2)
{
  v2 = (this + 16);
  while (1)
  {
    v2 = *v2;
    if (!v2)
    {
      return v2;
    }

    v3 = v2[3];
    v5 = *(v3 + 16);
    v4 = *(v3 + 24);
    if (v5 != v4)
    {
      while (*(v5 + 24) != a2)
      {
        v5 += 120;
        if (v5 == v4)
        {
          v5 = v4;
          break;
        }
      }
    }

    if (v5 != v4)
    {
      if (v5)
      {
        v6 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(this + 5, *(v5 + 24));
        v2 = v6 + 3;
        if (!v6)
        {
          v2 = (v5 + 56);
        }

        LOWORD(v2) = *v2;
      }

      else
      {
        LOWORD(v2) = 0;
      }

      return v2;
    }
  }
}

uint64_t ___ZN2md10VenueLogic23setBaseMapDimmingFactorEfbd_block_invoke(uint64_t a1, float a2)
{
  v2 = *(a1 + 32);
  *(v2 + 488) = *(a1 + 40) + ((*(a1 + 44) - *(a1 + 40)) * a2);
  result = *(v2 + 848);
  if (result)
  {
    return (*(*result + 48))();
  }

  return result;
}

uint64_t ___ZN2md10VenueLogic23setBaseMapDimmingFactorEfbd_block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = *(result + 32);
    *(v2 + 488) = *(result + 40);
    result = *(v2 + 848);
    if (result)
    {
      return (*(*result + 48))();
    }
  }

  return result;
}

void md::Logic<md::LightingLogic,md::LightingLogicContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::StyleLogicContext,md::SceneContext,md::ElevationContext,md::SettingsContext>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2, v3);
}

__n128 std::__function::__func<md::LightingLogic::_calculateShadowProjectionBounds(md::CameraContext const&,md::SceneContext const&,gm::Matrix<double,4,4> const&,gm::Box<double,3> &)::$_0::operator() const(gdc::LayerDataWithWorld const&)::{lambda(gm::Matrix<float,3,1> const&)#1},std::allocator<md::LightingLogic::_calculateShadowProjectionBounds(md::CameraContext const&,md::SceneContext const&,gm::Matrix<double,4,4> const&,gm::Box<double,3> &)::$_0::operator() const(gdc::LayerDataWithWorld const&)::{lambda(gm::Matrix<float,3,1> const&)#1}>,void ()(gm::Matrix<float,3,1>&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A0EA48;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void *gss::CartoStyle<gss::ScenePropertyID>::valueForKeyAtZ<int>(void *a1, uint64_t a2, unsigned int a3, _BYTE *a4)
{
  v5 = a2;
  if (a3 >= 0x17)
  {
    v7 = 23;
  }

  else
  {
    v7 = a3;
  }

  if (gss::CartoStyle<gss::ScenePropertyID>::hasValueForKeyAtZ(a1, a2, v7))
  {
    v8 = *a1 + 120 * *(a1 + v7 + 16);
    v9 = geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((v8 + 48), v5);
    if (v9 == *(v8 + 60))
    {
      return &gss::PropertySetValueHelper<gss::ScenePropertyID,int>::value(gss::ScenePropertyID,gss::StylePropertySet<gss::ScenePropertyID> const&)::_defaultValue;
    }

    else
    {
      return (*(v8 + 48) + *(v8 + 56) + 4 * v9);
    }
  }

  else
  {
    if (a4)
    {
      *a4 = 0;
    }

    return gss::defaultValueForKey<gss::ScenePropertyID,int>(v5);
  }
}

void *gss::CartoStyle<gss::ScenePropertyID>::valueForKey<std::string>(unsigned __int8 ***a1, _BYTE *a2)
{
  if (!a1 || (v4 = *a1, geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(*a1, 0x48u) == *(v4 + 6)))
  {
    if (a2)
    {
      *a2 = 0;
    }

    return &gss::defaultValueForKey<gss::ScenePropertyID,std::string>(gss::ScenePropertyID)::_defaultValue;
  }

  else
  {

    return gss::PropertySetValueHelper<gss::ScenePropertyID,std::string>::value(v4);
  }
}

void geo::_retain_ptr<NSCalendar * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A0ECE0;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<NSCalendar * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A0ECE0;

  return a1;
}

__n128 _ZNKSt3__110__function6__funcIZN2md13LightingLogic29runBeforeLayoutAtVariableRateERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJNS2_13CameraContextENS2_17StyleLogicContextENS2_12SceneContextENS2_16ElevationContextENS2_15SettingsContextEEEENS9_IJEEEEE20ResolvedDependenciesERNS2_20LightingLogicContextEE3__0NS_9allocatorISN_EEFvNS2_17StyleManagerEventEEE7__cloneEPNS0_6__baseISR_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A0ED48;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void *md::Logic<md::LightingLogic,md::LightingLogicContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::StyleLogicContext,md::SceneContext,md::ElevationContext,md::SettingsContext>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8[6] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x41E8D6E445F4145 && (v4 = *(a3 + 32)) != 0)
  {
    md::LogicDependencies<gdc::TypeList<md::CameraContext,md::StyleLogicContext,md::SceneContext,md::ElevationContext,md::SettingsContext>,gdc::TypeList<>>::buildRequiredTuple<md::CameraContext,md::StyleLogicContext,md::SceneContext,md::ElevationContext,md::SettingsContext>(v8, *(a2 + 8));
    return (*(*a1 + 160))(a1, a2, v8, v4);
  }

  else
  {

    return std::string::basic_string[abi:nn200100]<0>(a4, "");
  }
}

uint64_t gdc::ObjectHolder<md::LightingLogicContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::LightingLogicContext>::~ManagedObjectHolder(void *a1)
{
  gdc::ManagedObjectHolder<md::LightingLogicContext>::~ManagedObjectHolder(a1);

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::LightingLogicContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A0ED90;
  v2 = a1[4];
  if (v2)
  {
    if (*(v2 + 152) == 1 && *(v2 + 151) < 0)
    {
      operator delete(*(v2 + 128));
    }

    v3 = *(v2 + 72);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    v4 = *(v2 + 56);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }

    v5 = *(v2 + 40);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }

    v6 = *(v2 + 24);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }

    v7 = *(v2 + 8);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v7);
    }

    MEMORY[0x1B8C62190](v2, 0x1032C40C7F08773);
  }

  return a1;
}

void md::LightingLogic::createDebugNode(_BYTE *a1@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:nn200100]<0>(&v16, "LightingLogic");
  gdc::DebugTreeNode::DebugTreeNode(a2, &v16);
  if (v17 < 0)
  {
    operator delete(v16);
  }

  std::string::basic_string[abi:nn200100]<0>(&v16, "Shadow Cache");
  if (a1[416])
  {
    v4 = "On";
  }

  else
  {
    v4 = "Off";
  }

  gdc::DebugTreeValue::DebugTreeValue(v13, v4);
  gdc::DebugTreeNode::addProperty(a2, &v16, v13);
  if (v15 < 0)
  {
    operator delete(__p);
  }

  if (v17 < 0)
  {
    operator delete(v16);
  }

  std::string::basic_string[abi:nn200100]<0>(&v16, "SSAO Enabled");
  if (a1[225])
  {
    v5 = "On";
  }

  else
  {
    v5 = "Off";
  }

  gdc::DebugTreeValue::DebugTreeValue(v10, v5);
  gdc::DebugTreeNode::addProperty(a2, &v16, v10);
  if (v12 < 0)
  {
    operator delete(v11);
  }

  if (v17 < 0)
  {
    operator delete(v16);
  }

  std::string::basic_string[abi:nn200100]<0>(&v16, "SSAO Activated");
  if (a1[227])
  {
    v6 = "On";
  }

  else
  {
    v6 = "Off";
  }

  gdc::DebugTreeValue::DebugTreeValue(v7, v6);
  gdc::DebugTreeNode::addProperty(a2, &v16, v7);
  if (v9 < 0)
  {
    operator delete(v8);
  }

  if (v17 < 0)
  {
    operator delete(v16);
  }
}

void sub_1B2EC8420(_Unwind_Exception *a1)
{
  *(v2 - 72) = v1 + 72;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100]((v2 - 72));
  *(v2 - 72) = v1 + 48;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100]((v2 - 72));
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void md::LightingLogic::didBecomeInactive(md::LightingLogic *this)
{
  *(this + 376) = 0;
  v2 = this + 360;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 45));
  *(this + 45) = 0;
  *(this + 46) = 0;
  *(this + 44) = v2;
}

void md::LightingLogic::~LightingLogic(id *this, uint64_t a2)
{
  md::LightingLogic::~LightingLogic(this, a2);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A0E990;
  GEOConfigRemoveBlockListener();
  GEOConfigRemoveBlockListener();
  md::Monitorable<md::Transformable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>>::~Monitorable((this + 60), v3);
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable((this + 50));
  if (*(this + 392) == 1)
  {
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(this[45]);
  v4 = this[36];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = this[34];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  this[29] = &unk_1F2A0ECE0;

  v6 = this[24];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v7 = this[22];
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  v8 = this[20];
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  v9 = this[18];
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  v10 = this[16];
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(this[13]);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(this[10]);
}

void sub_1B2EC8618(_Unwind_Exception *a1, uint64_t a2)
{
  md::Monitorable<md::Transformable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>>::~Monitorable(v2 + 480, a2);
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(v2 + 400);
  if (*(v2 + 392) == 1)
  {
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v2 + 360));
  v4 = *(v2 + 288);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = *(v2 + 272);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  *(v2 + 232) = &unk_1F2A0ECE0;

  v6 = *(v2 + 192);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v7 = *(v2 + 176);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  v8 = *(v2 + 160);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  v9 = *(v2 + 144);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  v10 = *(v2 + 128);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  *v2 = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v2 + 104));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v2 + 80));
  _Unwind_Resume(a1);
}

uint64_t md::Monitorable<md::Transformable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>>::~Monitorable(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 56))
  {
    GEOConfigRemoveBlockListener();
    v3 = *(a1 + 56);
    *(a1 + 56) = 0;
  }

  atomic_store(0, *(a1 + 64));
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:nn200100](a1 + 80);
  v4 = *(a1 + 72);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  std::__function::__value_func<BOOL ()(BOOL const&)>::~__value_func[abi:nn200100](a1 + 24);
  return a1;
}

void sub_1B2EC8770(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:nn200100](v1 + 80);
  v3 = *(v1 + 72);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  std::__function::__value_func<BOOL ()(BOOL const&)>::~__value_func[abi:nn200100](v1 + 24);
  _Unwind_Resume(a1);
}

void md::LightingLogicContext::defaultLightingConstantData(md::LightingLogicContext *this)
{
  {
    operator new();
  }

  v2 = 0;
  if (atomic_load_explicit(&v2, memory_order_acquire) != -1)
  {
    v4 = &v1;
    v3 = &v4;
    std::__call_once(&v2, &v3, std::__call_once_proxy[abi:nn200100]<std::tuple<md::LightingLogicContext::defaultLightingConstantData(void)::$_0 &&>>);
  }
}

void sub_1B2EC88C8(_Unwind_Exception *a1)
{
  (*(*v1 + 8))(v1);
  _Unwind_Resume(a1);
}

void std::__call_once_proxy[abi:nn200100]<std::tuple<md::LightingLogicContext::defaultLightingConstantData(void)::$_0 &&>>()
{
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v1, md::LightingLogicContext::defaultLightingConstantData(void)::_defaultLightingConstantData);
  v0 = v2;
  *v2 = 0;
  *(v0 + 2) = COERCE_UNSIGNED_INT(1.0);
  *(v0 + 6) = 0;
  *(v0 + 22) = 0;
  *(v0 + 14) = 0;
  *(v0 + 15) = 0;
  ggl::BufferMemory::~BufferMemory(v1);
}

uint64_t std::__shared_ptr_pointer<ggl::ConstantDataTyped<ggl::Lighting::LightConfiguration> *,std::shared_ptr<ggl::ConstantDataTyped<ggl::Lighting::LightConfiguration>>::__shared_ptr_default_delete<ggl::ConstantDataTyped<ggl::Lighting::LightConfiguration>,ggl::ConstantDataTyped<ggl::Lighting::LightConfiguration>>,std::allocator<ggl::ConstantDataTyped<ggl::Lighting::LightConfiguration>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ggl::ConstantDataTyped<ggl::Lighting::LightConfiguration> *,std::shared_ptr<ggl::ConstantDataTyped<ggl::Lighting::LightConfiguration>>::__shared_ptr_default_delete<ggl::ConstantDataTyped<ggl::Lighting::LightConfiguration>,ggl::ConstantDataTyped<ggl::Lighting::LightConfiguration>>,std::allocator<ggl::ConstantDataTyped<ggl::Lighting::LightConfiguration>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::Lighting::LightConfiguration>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t ___ZN2md13LightingLogicC2EPU28objcproto17OS_dispatch_queue8NSObject_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = GEOConfigGetBOOL();
  *(v1 + 224) = result;
  return result;
}

void ___ZN2md13LightingLogicC2EPU28objcproto17OS_dispatch_queue8NSObject_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  Integer = GEOConfigGetInteger();

  md::LightingLogic::setFixedDateWithHour(v1, Integer);
}

int16x4_t ___ZN2md11MonitorableINS_13TransformableINS_11ConfigValueI16GEOConfigKeyBOOLbEEEEE16setCallbackQueueEPU28objcproto17OS_dispatch_queue8NSObjectNSt3__18functionIFvbEEE_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    v2 = *(result + 32);
    if (*v1)
    {
      v3 = *(v2 + 17);
      md::Transformable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::update(*(result + 32));
      v5 = *(v2 + 104);
      if (v5)
      {

        return std::function<void ()(BOOL)>::operator()(v5, v3);
      }
    }
  }

  return v4;
}

void ggl::ConstantDataTyped<ggl::Lighting::StylizedShadingSettings>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::Lighting::StylizedShadingSettings>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0EBD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::Lighting::LightSpecularConfiguration>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::Lighting::LightSpecularConfiguration>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0EB78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::Lighting::LightConfigurationVertex>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::Lighting::LightConfigurationVertex>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0EB20;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::Lighting::LightConfiguration>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0EAE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::MeshRenderable::~MeshRenderable(md::MeshRenderable *this)
{
  md::MeshRenderable::~MeshRenderable(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A3CEF8;
  if (*(this + 176) == 1)
  {
    v2 = *(this + 20);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v2);
    }
  }

  v3 = *(this + 5);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

uint64_t md::MeshRenderable::MeshRenderable(uint64_t a1, void *a2, char a3, uint64_t *a4)
{
  *a1 = &unk_1F2A3CEF8;
  *(a1 + 16) = 0;
  *(a1 + 8) = a3;
  *(a1 + 24) = 0;
  *(a1 + 32) = *a2;
  v4 = a2[1];
  *(a1 + 40) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 76) = xmmword_1B33AFF10;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 92) = 0x80000000800000;
  *(a1 + 100) = 0;
  *(a1 + 124) = 0;
  *(a1 + 128) = 0;
  *(a1 + 140) = 0;
  *(a1 + 144) = 1;
  *(a1 + 146) = 1;
  *(a1 + 152) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 188) = 0;
  *(a1 + 192) = 0;
  *(a1 + 196) = 0;
  *(a1 + 200) = 0;
  *(a1 + 147) = 0;
  *(a1 + 204) = atomic_fetch_add(&md::MeshRenderable::generateId(void)::sId, 1u);
  *(a1 + 208) = 0;
  if (a4)
  {
    v5 = 0;
    v6 = *a4;
    *(a1 + 208) = *a4;
    *(a1 + 16) = *(v6 + 16);
    *(a1 + 72) = *(a4 + 32);
    do
    {
      *(a1 + 76 + v5) = *(a4 + v5 + 36);
      v5 += 4;
    }

    while (v5 != 12);
    for (i = 0; i != 12; i += 4)
    {
      *(a1 + 88 + i) = *(a4 + i + 48);
    }

    v8 = *(a4 + 15);
    memset(&v13[1], 0, 44);
    v13[0] = 1065353216;
    v13[4] = 1065353216;
    v13[8] = 1065353216;
    if (fabsf(v8 + -1.0) >= 0.0001)
    {
      goto LABEL_13;
    }

    v9 = 0;
    do
    {
      if (v9 == 11)
      {
        goto LABEL_14;
      }

      v10 = v9 + 1;
      v11 = vabds_f32(*(a4 + v9 + 16), *&v13[v9 + 1]);
      ++v9;
    }

    while (v11 < 0.0001);
    if ((v10 - 1) <= 0xA)
    {
LABEL_13:
      operator new();
    }

LABEL_14:
    v12 = *(a4 + 1);
    *(a1 + 64) = *(a4 + 24);
    *(a1 + 48) = v12;
  }

  return a1;
}

uint64_t md::MeshRenderable::MeshRenderable(uint64_t a1, char a2, uint64_t *a3, void *a4)
{
  v6 = a4[1];
  v11[0] = *a4;
  v11[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    md::MeshRenderable::MeshRenderable(a1, v11, a2, a3);
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  else
  {
    md::MeshRenderable::MeshRenderable(a1, v11, a2, a3);
  }

  v8 = *a4;
  v7 = a4[1];
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 40);
  *(a1 + 32) = v8;
  *(a1 + 40) = v7;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  *(a1 + 148) = 1;
  return a1;
}

md::MeshRenderable *md::MeshRenderable::MeshRenderable(md::MeshRenderable *this, char a2, uint64_t a3, void *a4)
{
  *this = &unk_1F2A3CEF8;
  *(this + 2) = 0;
  *(this + 8) = a2;
  *(this + 3) = 0;
  v5 = a4[1];
  *(this + 4) = *a4;
  *(this + 5) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 48) = 0;
  *(this + 64) = 0;
  *(this + 72) = 1;
  *(this + 76) = xmmword_1B33AFF10;
  *(this + 92) = 0x80000000800000;
  *(this + 100) = 0;
  *(this + 124) = 0;
  *(this + 128) = 0;
  *(this + 140) = 0;
  *(this + 72) = 1;
  *(this + 146) = 1;
  *(this + 152) = 0;
  *(this + 176) = 0;
  *(this + 184) = 0;
  *(this + 188) = 0;
  *(this + 96) = 0;
  *(this + 196) = 0;
  *(this + 200) = 0;
  *(this + 147) = 0;
  *(this + 51) = atomic_fetch_add(&md::MeshRenderable::generateId(void)::sId, 1u);
  *(this + 26) = a3;
  *(this + 1) = *(a3 + 16);
  md::MeshRenderable::recalculateBounds(this);
  return this;
}

void md::MuninStorefrontLabelFeature::addElement(md::PointLabelFeature *a1, void *a2, int a3)
{
  v39 = *MEMORY[0x1E69E9840];
  if (*(a1 + 57))
  {
    v5 = *(a1 + 54);
    v6 = a1 + 440;
    if (v5 != a1 + 440)
    {
      do
      {
        md::PointPosition::addElement((v5 + 40), a2);
        v7 = *(v5 + 1);
        if (v7)
        {
          do
          {
            v8 = v7;
            v7 = *v7;
          }

          while (v7);
        }

        else
        {
          do
          {
            v8 = *(v5 + 2);
            v9 = *v8 == v5;
            v5 = v8;
          }

          while (!v9);
        }

        v5 = v8;
      }

      while (v8 != v6);
    }
  }

  else if (*(a1 + 90) != *(a1 + 89))
  {
    v10 = 0;
    v29 = (a1 + 440);
    do
    {
      v11 = md::PointPosition::PointPosition(&v31, a1, a2);
      v38[25] = v10;
      v12 = *(a1 + 116);
      *(a1 + 116) = v12 + 1;
      v13 = *(a1 + 55);
      for (i = v29; ; v13 = *i)
      {
        v15 = i;
        if (!v13)
        {
          break;
        }

        while (1)
        {
          i = v13;
          v16 = *(v13 + 8);
          if (v12 < v16)
          {
            break;
          }

          if (v16 >= v12)
          {
            goto LABEL_27;
          }

          v13 = i[1];
          if (!v13)
          {
            v15 = i + 1;
            goto LABEL_19;
          }
        }
      }

LABEL_19:
      v17 = mdm::zone_mallocator::instance(v11);
      v18 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__tree_node<std::__value_type<md::LabelIdentifier,md::PointPosition>,void *>>(v17);
      v19 = v18;
      v18[8] = v12;
      *(v18 + 6) = 0;
      *(v18 + 7) = 0;
      *(v18 + 5) = 0;
      *(v18 + 64) = v33;
      v20 = v31;
      v21 = v32;
      v22 = v32 - v31;
      if (v32 != v31)
      {
        if ((v22 >> 3) >> 61)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v23 = mdm::zone_mallocator::instance(v18);
        v24 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>>(v23, v22 >> 3);
        *(v19 + 5) = v24;
        *(v19 + 6) = v24;
        *(v19 + 7) = v24 + v22;
        do
        {
          *v24 = 0;
          v25 = *v20;
          *v24 = *v20;
          if (v25)
          {
            ++*v25;
          }

          ++v20;
          ++v24;
        }

        while (v20 != v21);
        *(v19 + 6) = v24;
      }

      *(v19 + 11) = v35;
      *(v19 + 18) = v34;
      *(v19 + 6) = v36;
      v19[28] = v37[0];
      *(v19 + 115) = *(v37 + 3);
      *(v19 + 30) = *v38;
      *(v19 + 133) = *&v38[13];
      std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::__insert_node_at(a1 + 54, i, v15, v19);
LABEL_27:
      v30 = &v31;
      std::vector<geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>,geo::allocator_adapter<geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v30);
      ++v10;
    }

    while ((*(a1 + 90) - *(a1 + 89)) >> 4 > v10);
  }

  if (*a2)
  {
    v26 = (*a2 + 8);
  }

  else
  {
    v26 = 0;
  }

  md::PointLabelFeatureElement::updateText(v26, a1, a3);
  if (*a2)
  {
    v27 = (*a2 + 8);
  }

  else
  {
    v27 = 0;
  }

  md::PointLabelFeatureElement::updateLabelPlacements(v27, a1);
}

void sub_1B2EC9624(mdm::zone_mallocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11, char a12)
{
  v14 = mdm::zone_mallocator::instance(a1);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<std::__value_type<md::LabelIdentifier,md::PointPosition>,void *>>(v14, v12);
  a11 = &a12;
  std::vector<geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>,geo::allocator_adapter<geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a11);
  _Unwind_Resume(a1);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>::_fast_shared_ptr_control>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__tree_node<std::__value_type<md::LabelIdentifier,md::PointPosition>,void *>>(uint64_t a1)
{
  v2 = pthread_rwlock_rdlock((a1 + 32));
  if (v2)
  {
    geo::read_write_lock::logFailure(v2, "read lock", v3);
  }

  v4 = malloc_type_zone_malloc(*a1, 0x98uLL, 0x1020040D7756BA3uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v4;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<std::__value_type<md::LabelIdentifier,md::PointPosition>,void *>>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>>(uint64_t a1, uint64_t a2)
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

uint64_t md::MuninStorefrontLabelFeature::debugString@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:nn200100](&v25);
  md::StorefrontLabelFeature::debugString(a1, a2, a3, a4, __p);
  if ((v24 & 0x80u) == 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if ((v24 & 0x80u) == 0)
  {
    v11 = v24;
  }

  else
  {
    v11 = __p[1];
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v25, v10, v11);
  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  v12 = *(a1 + 440);
  if (v12)
  {
    v13 = *a3;
    v14 = a1 + 440;
    do
    {
      v15 = *(v12 + 32);
      v16 = v15 >= v13;
      v17 = v15 < v13;
      if (v16)
      {
        v14 = v12;
      }

      v12 = *(v12 + 8 * v17);
    }

    while (v12);
    if (v14 != a1 + 440 && v13 >= *(v14 + 32))
    {
      *(&v27[0].__locale_ + *(v25 - 24)) = 1;
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v25, " CollectionPoint Distance=", 26);
      v18 = std::ostream::operator<<();
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v18, "\n", 1);
    }
  }

  if ((v32 & 0x10) != 0)
  {
    v20 = v31;
    if (v31 < v28)
    {
      v31 = v28;
      v20 = v28;
    }

    locale = v27[4].__locale_;
  }

  else
  {
    if ((v32 & 8) == 0)
    {
      v19 = 0;
      a5[23] = 0;
      goto LABEL_31;
    }

    locale = v27[1].__locale_;
    v20 = v27[3].__locale_;
  }

  v19 = v20 - locale;
  if ((v20 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v19 >= 0x17)
  {
    operator new();
  }

  a5[23] = v19;
  if (v19)
  {
    memmove(a5, locale, v19);
  }

LABEL_31:
  a5[v19] = 0;
  v25 = *MEMORY[0x1E69E54E8];
  *(&v25 + *(v25 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v26 = MEMORY[0x1E69E5548] + 16;
  if (v30 < 0)
  {
    operator delete(v29);
  }

  v26 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v27);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v33);
}

void sub_1B2EC9BE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32)
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

void md::MuninStorefrontLabelFeature::~MuninStorefrontLabelFeature(md::MuninStorefrontLabelFeature *this)
{
  *this = &unk_1F2A38D00;
  v2 = (this + 712);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v2);
  md::PointLabelFeature::~PointLabelFeature(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A38D00;
  v2 = (this + 712);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v2);

  md::PointLabelFeature::~PointLabelFeature(this);
}

void std::__shared_ptr_emplace<md::MuninStorefront>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0F0D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__hash_table<std::__hash_value_type<StyleQueryOverride,std::vector<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>,std::__unordered_map_hasher<StyleQueryOverride,std::__hash_value_type<StyleQueryOverride,std::vector<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>,anonymous namespace::StyleQueryOverrideHash,std::equal_to<StyleQueryOverride>,true>,std::__unordered_map_equal<StyleQueryOverride,std::__hash_value_type<StyleQueryOverride,std::vector<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>,std::equal_to<StyleQueryOverride>,anonymous namespace::StyleQueryOverrideHash,true>,std::allocator<std::__hash_value_type<StyleQueryOverride,std::vector<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>>>::__deallocate_node(char *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      v3 = (v1 + 24);
      std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&v3);
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void std::vector<ggl::Batcher>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v6 = *(v4 - 3);
        if (v6)
        {
          *(v4 - 2) = v6;
          operator delete(v6);
        }

        v8 = (v4 - 56);
        std::vector<gm::MultiRange<unsigned long>,geo::allocator_adapter<gm::MultiRange<unsigned long>,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v8);
        v7 = *(v4 - 10);
        if (v7)
        {
          *(v4 - 9) = v7;
          operator delete(v7);
        }

        v4 -= 80;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void **std::__hash_table<std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>,std::__unordered_map_hasher<std::pair<void const*,unsigned long>,std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>,std::hash<std::pair<void const*,unsigned long>>,std::equal_to<std::pair<void const*,unsigned long>>,true>,std::__unordered_map_equal<std::pair<void const*,unsigned long>,std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>,std::equal_to<std::pair<void const*,unsigned long>>,std::hash<std::pair<void const*,unsigned long>>,true>,std::allocator<std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>>>::~__hash_table(void **a1)
{
  std::__hash_table<std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>,std::__unordered_map_hasher<std::pair<void const*,unsigned long>,std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>,std::hash<std::pair<void const*,unsigned long>>,std::equal_to<std::pair<void const*,unsigned long>>,true>,std::__unordered_map_equal<std::pair<void const*,unsigned long>,std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>,std::equal_to<std::pair<void const*,unsigned long>>,std::hash<std::pair<void const*,unsigned long>>,true>,std::allocator<std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>>>::__deallocate_node(a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t *std::unique_ptr<md::MeshSetStorage>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    ggl::BufferMemory::~BufferMemory((v2 + 128));
    ggl::BufferMemory::~BufferMemory((v2 + 80));
    v3 = *(v2 + 72);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    v4 = *(v2 + 56);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }

    std::__tree<gdc::LayerDataWithWorld>::destroy(*(v2 + 24));

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>,std::__unordered_map_hasher<std::pair<void const*,unsigned long>,std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>,std::hash<std::pair<void const*,unsigned long>>,std::equal_to<std::pair<void const*,unsigned long>>,true>,std::__unordered_map_equal<std::pair<void const*,unsigned long>,std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>,std::equal_to<std::pair<void const*,unsigned long>>,std::hash<std::pair<void const*,unsigned long>>,true>,std::allocator<std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>>>::__deallocate_node(void *__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = *v1;
      v3 = v1[4];
      if (v3)
      {
        v1[5] = v3;
        operator delete(v3);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void sub_1B2ECA7D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t gss::QueryOverrides::QueryOverrides(uint64_t a1, __int16 a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 256;
  *geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](a1, 0x10002u) = a2;
  return a1;
}

uint64_t *std::unordered_map<StyleQueryOverride,std::vector<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,anonymous namespace::StyleQueryOverrideHash,std::equal_to<StyleQueryOverride>,std::allocator<std::pair<StyleQueryOverride const,std::vector<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>>>::operator[](void *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = (v3 + ((v2 - 0x61C8864680B583EBLL) << 6) + ((v2 - 0x61C8864680B583EBLL) >> 2) - 0x61C8864680B583EBLL) ^ (v2 - 0x61C8864680B583EBLL);
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_22;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = (v3 + ((v2 - 0x61C8864680B583EBLL) << 6) + ((v2 - 0x61C8864680B583EBLL) >> 2) - 0x61C8864680B583EBLL) ^ (v2 - 0x61C8864680B583EBLL);
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
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
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
      goto LABEL_22;
    }

LABEL_21:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  if (*(v9 + 16) != v2 || *(v9 + 17) != v3)
  {
    goto LABEL_21;
  }

  return (v9 + 3);
}