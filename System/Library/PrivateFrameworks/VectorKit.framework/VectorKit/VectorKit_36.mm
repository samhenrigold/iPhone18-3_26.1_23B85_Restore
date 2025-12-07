void sub_1B2A28858(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, char *a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, int a54)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a32)
  {
    operator delete(a32);
  }

  if (a38)
  {
    a39 = a38;
    operator delete(a38);
  }

  a32 = &a35;
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&a32);

  _Unwind_Resume(a1);
}

uint64_t md::Logic<md::BVHDebugLogic,md::BVHDebugContext,md::LogicDependencies<gdc::TypeList<md::SceneContext,md::CameraContext>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xEB7D991403622616)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7[0] = md::LogicDependencies<gdc::TypeList<md::SceneContext,md::CameraContext>,gdc::TypeList<>>::buildRequiredTuple<md::SceneContext,md::CameraContext>(*(a2 + 8));
      v7[1] = v6;
      return (*(*v5 + 128))(v5, a2, v7, v3);
    }
  }

  return result;
}

void sub_1B2A28C9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  *(v25 - 56) = &a23;
  std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::vector<gm::LineSegment<float,3>>>>>::__destroy_vector::operator()[abi:nn200100]((v25 - 56));
  *(v25 - 56) = &a20;
  std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>>>>::__destroy_vector::operator()[abi:nn200100]((v25 - 56));
  std::__hash_table<std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>>>,std::__unordered_map_hasher<gdc::Tiled const*,std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>>>,std::hash<gdc::Tiled const*>,std::equal_to<gdc::Tiled const*>,true>,std::__unordered_map_equal<gdc::Tiled const*,std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>>>,std::equal_to<gdc::Tiled const*>,std::hash<gdc::Tiled const*>,true>,std::allocator<std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>>>>>::__deallocate_node(a17);
  if (__p)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>>>,std::__unordered_map_hasher<gdc::Tiled const*,std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>>>,std::hash<gdc::Tiled const*>,std::equal_to<gdc::Tiled const*>,true>,std::__unordered_map_equal<gdc::Tiled const*,std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>>>,std::equal_to<gdc::Tiled const*>,std::hash<gdc::Tiled const*>,true>,std::allocator<std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>>>>>::__deallocate_node(a12);
  if (a10)
  {
    operator delete(a10);
  }

  MEMORY[0x1B8C62190](v23, v24);
  _Unwind_Resume(a1);
}

double md::Logic<md::EntityDebugHighlightLogic,md::EntityDebugHighlightContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::RegistryContext,md::GeometryContext,md::MaterialContext>,gdc::TypeList<>>>::allocateContext@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 1065353216;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  return result;
}

void *md::LogicDependencies<gdc::TypeList<md::CameraContext,md::RegistryContext,md::GeometryContext,md::MaterialContext>,gdc::TypeList<>>::resolveDependencies(void *a1, void *a2)
{
  v4 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x1AF456233693CD46uLL);
  if (v4 && (v5 = v4[5], *(v5 + 8) == 0x1AF456233693CD46))
  {
    v6 = *(v5 + 32);
  }

  else
  {
    v6 = 0;
  }

  v7 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0xFBD83FDA8879FF7ELL);
  if (v7 && (v8 = v7[5], *(v8 + 8) == 0xFBD83FDA8879FF7ELL))
  {
    v9 = *(v8 + 32);
  }

  else
  {
    v9 = 0;
  }

  v10 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x3070CB6B3C7F21D3uLL);
  if (v10 && (v11 = v10[5], *(v11 + 8) == 0x3070CB6B3C7F21D3))
  {
    v12 = *(v11 + 32);
  }

  else
  {
    v12 = 0;
  }

  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0xD2404CDD1F9A6950);
  v14 = *(result[5] + 32);
  *a1 = v6;
  a1[1] = v9;
  a1[2] = v12;
  a1[3] = v14;
  return result;
}

uint64_t md::Logic<md::EntityDebugHighlightLogic,md::EntityDebugHighlightContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::RegistryContext,md::GeometryContext,md::MaterialContext>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[5] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xE75FAB3171C16149)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      md::LogicDependencies<gdc::TypeList<md::CameraContext,md::RegistryContext,md::GeometryContext,md::MaterialContext>,gdc::TypeList<>>::resolveDependencies(v6, *(a2 + 8));
      return (*(*v5 + 144))(v5, a2, v6, v3);
    }
  }

  return result;
}

void md::EntityDebugHighlightLogic::runBeforeLayout(unint64_t a1, uint64_t a2, gdc::Camera ***a3, md::DebugDrawContext *this)
{
  md::DebugDrawContext::clearDebugDrawContext(this);
  v8 = +[VKDebugSettings sharedSettings];
  *(a1 + 281) = [v8 daVinciEntityDebugHighlighting];

  if (*(a1 + 281))
  {
    if (*(a1 + 144) == 1)
    {
      v9 = *a3;
      v10 = a3[2];
      v14 = vcvtq_f64_f32(*(a1 + 136));
      if (*(v9 + 5592))
      {
        v11 = *(v9 + 5592);
      }

      else
      {
        v11 = v9;
      }

      v12 = gdc::Camera::cameraFrame(v11);
      gdc::ViewDataAccess::worldRayFromScreenPoint(&v24, *(*(a2 + 88) + 16), v14, v12);
      md::EntityDebugHighlightLogic::findEntityForRay(&v15, *(*(a1 + 120) + 384), *(*(a1 + 120) + 392), &v24, v9, v10);
      std::__optional_storage_base<md::SelectedEntityInfo,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<md::SelectedEntityInfo,false>>(a1 + 152, &v15);
      if (*(a1 + 144) == 1)
      {
        *(a1 + 144) = 0;
      }
    }

    else if (*(a1 + 272) == 1)
    {
      md::EntityDebugHighlightLogic::updateSelectedEntity(a1);
    }

    if (*(a1 + 272) == 1 && (*(a1 + 280) & 1) == 0)
    {
      v15 = *(a1 + 168);
      v17 = *(a1 + 192);
      v19 = *(a1 + 216);
      v13 = *(a1 + 240);
      v20 = *(a1 + 224);
      v16 = *(a1 + 184);
      v18 = *(a1 + 208);
      v21 = v13;
      v22 = *(a1 + 256);
      v23 = 2;
      v24 = -16776961;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      md::DebugDrawContext::addWorldDebugShape(this, &v15, &v24);
      if (v23 != -1)
      {
        (off_1F29EB508[v23])(&v24, &v15);
      }
    }
  }

  else
  {
    if (*(a1 + 272) == 1)
    {
      *(a1 + 272) = 0;
    }

    if (*(a1 + 144) == 1)
    {
      *(a1 + 144) = 0;
    }
  }
}

void sub_1B2A290E0(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24)
{
  if (a24 != -1)
  {
    (off_1F29EB508[a24])(v24 - 96, &a11, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void md::DebugDrawContext::clearDebugDrawContext(md::DebugDrawContext *this)
{
  std::__hash_table<std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>>>,std::__unordered_map_hasher<gdc::Tiled const*,std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>>>,std::hash<gdc::Tiled const*>,std::equal_to<gdc::Tiled const*>,true>,std::__unordered_map_equal<gdc::Tiled const*,std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>>>,std::equal_to<gdc::Tiled const*>,std::hash<gdc::Tiled const*>,true>,std::allocator<std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>>>>>::clear(this + 40);
  std::__hash_table<std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>>>,std::__unordered_map_hasher<gdc::Tiled const*,std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>>>,std::hash<gdc::Tiled const*>,std::equal_to<gdc::Tiled const*>,true>,std::__unordered_map_equal<gdc::Tiled const*,std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>>>,std::equal_to<gdc::Tiled const*>,std::hash<gdc::Tiled const*>,true>,std::allocator<std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>>>>>::clear(this);
  v3 = *(this + 10);
  v2 = *(this + 11);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 40;
      v8 = (v2 - 24);
      std::vector<std::variant<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>>::__destroy_vector::operator()[abi:nn200100](&v8);
      v2 = v4;
    }

    while (v4 != v3);
  }

  *(this + 11) = v3;
  v6 = *(this + 13);
  v5 = *(this + 14);
  if (v5 != v6)
  {
    do
    {
      v7 = v5 - 40;
      v8 = (v5 - 24);
      std::vector<std::vector<gdc::Registry *>>::__destroy_vector::operator()[abi:nn200100](&v8);
      v5 = v7;
    }

    while (v7 != v6);
  }

  *(this + 14) = v6;
}

void std::__hash_table<std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>>>,std::__unordered_map_hasher<gdc::Tiled const*,std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>>>,std::hash<gdc::Tiled const*>,std::equal_to<gdc::Tiled const*>,true>,std::__unordered_map_equal<gdc::Tiled const*,std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>>>,std::equal_to<gdc::Tiled const*>,std::hash<gdc::Tiled const*>,true>,std::allocator<std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>>>,std::__unordered_map_hasher<gdc::Tiled const*,std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>>>,std::hash<gdc::Tiled const*>,std::equal_to<gdc::Tiled const*>,true>,std::__unordered_map_equal<gdc::Tiled const*,std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>>>,std::equal_to<gdc::Tiled const*>,std::hash<gdc::Tiled const*>,true>,std::allocator<std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>>>>>::__deallocate_node(*(a1 + 16));
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

void std::__hash_table<std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>>>,std::__unordered_map_hasher<gdc::Tiled const*,std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>>>,std::hash<gdc::Tiled const*>,std::equal_to<gdc::Tiled const*>,true>,std::__unordered_map_equal<gdc::Tiled const*,std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>>>,std::equal_to<gdc::Tiled const*>,std::hash<gdc::Tiled const*>,true>,std::allocator<std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>>>,std::__unordered_map_hasher<gdc::Tiled const*,std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>>>,std::hash<gdc::Tiled const*>,std::equal_to<gdc::Tiled const*>,true>,std::__unordered_map_equal<gdc::Tiled const*,std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>>>,std::equal_to<gdc::Tiled const*>,std::hash<gdc::Tiled const*>,true>,std::allocator<std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>>>>>::__deallocate_node(*(a1 + 16));
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

uint64_t md::Logic<md::EntityDebugHighlightLogic,md::EntityDebugHighlightContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::RegistryContext,md::GeometryContext,md::MaterialContext>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[5] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xE75FAB3171C16149)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      md::LogicDependencies<gdc::TypeList<md::CameraContext,md::RegistryContext,md::GeometryContext,md::MaterialContext>,gdc::TypeList<>>::resolveDependencies(v6, *(a2 + 8));
      return (*(*v5 + 128))(v5, a2, v6, v3);
    }
  }

  return result;
}

void *geo::_retain_ptr<VKAnchorWrapper * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,md::_equal_objc_ptr>::_retain_ptr(void *a1, uint64_t a2)
{
  *a1 = off_1F2A05BB8;
  a1[1] = 0;
  v3 = *(a2 + 8);
  v4 = a1[1];
  a1[1] = v3;

  return a1;
}

void sub_1B2A29534(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31)
{
  if (a31 == 1 && a30 < 0)
  {
    operator delete(__p);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a18);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  MEMORY[0x1B8C62190](v31, v32, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

double md::Logic<md::LightingLogic,md::LightingLogicContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::StyleLogicContext,md::SceneContext,md::ElevationContext,md::SettingsContext>,gdc::TypeList<>>>::allocateContext@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 128) = 0;
  *(a1 + 152) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  result = 2.04636356e-13;
  *(a1 + 224) = 0x3D4CCCCD3F800000;
  *(a1 + 232) = 1065353216;
  *(a1 + 456) = 0;
  *(a1 + 256) = 0;
  *(a1 + 259) = 0;
  return result;
}

void *md::LogicDependencies<gdc::TypeList<md::CameraContext,md::StyleLogicContext,md::SceneContext,md::ElevationContext,md::SettingsContext>,gdc::TypeList<>>::buildRequiredTuple<md::CameraContext,md::StyleLogicContext,md::SceneContext,md::ElevationContext,md::SettingsContext>(void *a1, void *a2)
{
  v4 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x1AF456233693CD46uLL);
  if (v4 && (v5 = v4[5], *(v5 + 8) == 0x1AF456233693CD46))
  {
    v6 = *(v5 + 32);
  }

  else
  {
    v6 = 0;
  }

  v7 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0xE42D19AFCA302E68);
  if (v7 && (v8 = v7[5], *(v8 + 8) == 0xE42D19AFCA302E68))
  {
    v9 = *(v8 + 32);
  }

  else
  {
    v9 = 0;
  }

  v10 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x99BED48DEFBBD82BLL);
  if (v10 && (v11 = v10[5], *(v11 + 8) == 0x99BED48DEFBBD82BLL))
  {
    v12 = *(v11 + 32);
  }

  else
  {
    v12 = 0;
  }

  v13 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x8BD499FBD96FBB9ELL);
  if (v13 && (v14 = v13[5], *(v14 + 8) == 0x8BD499FBD96FBB9ELL))
  {
    v15 = *(v14 + 32);
  }

  else
  {
    v15 = 0;
  }

  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0xC97B9E962ADF4AD4);
  if (result && (v17 = result[5], *(v17 + 8) == 0xC97B9E962ADF4AD4))
  {
    v18 = *(v17 + 32);
  }

  else
  {
    v18 = 0;
  }

  *a1 = v6;
  a1[1] = v9;
  a1[2] = v12;
  a1[3] = v15;
  a1[4] = v18;
  return result;
}

uint64_t md::Logic<md::LightingLogic,md::LightingLogicContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::StyleLogicContext,md::SceneContext,md::ElevationContext,md::SettingsContext>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[6] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x41E8D6E445F4145)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      md::LogicDependencies<gdc::TypeList<md::CameraContext,md::StyleLogicContext,md::SceneContext,md::ElevationContext,md::SettingsContext>,gdc::TypeList<>>::buildRequiredTuple<md::CameraContext,md::StyleLogicContext,md::SceneContext,md::ElevationContext,md::SettingsContext>(v6, *(a2 + 8));
      return (*(*v5 + 144))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::LightingLogic,md::LightingLogicContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::StyleLogicContext,md::SceneContext,md::ElevationContext,md::SettingsContext>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[6] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x41E8D6E445F4145)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      md::LogicDependencies<gdc::TypeList<md::CameraContext,md::StyleLogicContext,md::SceneContext,md::ElevationContext,md::SettingsContext>,gdc::TypeList<>>::buildRequiredTuple<md::CameraContext,md::StyleLogicContext,md::SceneContext,md::ElevationContext,md::SettingsContext>(v6, *(a2 + 8));
      return (*(*v5 + 128))(v5, a2, v6, v3);
    }
  }

  return result;
}

void *gdc::Context::context<md::AnchorContext>(void *a1)
{
  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0x63B6FE00C0848868uLL);
  if (result)
  {
    v2 = result[5];
    if (*(v2 + 8) == 0x63B6FE00C0848868)
    {
      return *(v2 + 32);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void md::LightingLogic::runBeforeLayoutAtVariableRate(uint64_t a1, md::LayoutContext *a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = *a3;
  v8 = *(a3 + 8);
  v9 = *(a3 + 16);
  v10 = *(a3 + 24);
  v11 = *(a3 + 32);
  v12 = v8[3];
  v21 = v8[2];
  v22 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = v8[1];
  v19 = *v8;
  v20 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(v8 + 82) == 1)
  {
    v23 = 0;
    operator new();
  }

  v17 = *gdc::Camera::cameraFrame(v7);
  md::LayoutContext::frameState(a2);
  v18 = vmulq_f64(v17, vdupq_n_s64(0x404CA5DC1A63C1F8uLL));
  v15 = *(a2 + 4);
  v16 = *(a2 + 5);
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  md::LightingLogic::writeLogicContext(a1, v14, v7, v10, v9, v11, &v21, v18.f64, a4, v15);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v20);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v22);
  }
}

void sub_1B2A29B40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, std::__shared_weak_count *a19, ...)
{
  va_start(va, a19);
  std::__function::__value_func<void ()(md::StyleManagerEvent)>::~__value_func[abi:nn200100](va);
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a17);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a19);
  }

  _Unwind_Resume(a1);
}

void gss::StylesheetManager<gss::ScenePropertyID>::styleQueryForFeatureAttributes(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4)
{
  v90 = *MEMORY[0x1E69E9840];
  gss::FeatureAttributeSet::FeatureAttributeSet(&v86, a3);
  v88[0] = 0;
  v88[1] = 0;
  v89 = 256;
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::copy(v88, a4);
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::shrink_to_fit(v88);
  v8 = pthread_rwlock_rdlock((a2 + 15));
  v84 = a1;
  if (v8)
  {
    geo::read_write_lock::logFailure(v8, "read lock", v9);
  }

  v10 = std::__unordered_map_hasher<gss::StyleKey,std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<gss::StyleKey>,std::equal_to<gss::StyleKey>,true>::operator()[abi:nn200100](&v86);
  v11 = a2[5];
  if (!*&v11)
  {
    goto LABEL_21;
  }

  v12 = v10;
  v13 = vcnt_s8(v11);
  v13.i16[0] = vaddlv_u8(v13);
  v14 = v13.u32[0];
  if (v13.u32[0] > 1uLL)
  {
    v15 = v10;
    if (v10 >= *&v11)
    {
      v15 = v10 % *&v11;
    }
  }

  else
  {
    v15 = (*&v11 - 1) & v10;
  }

  v16 = *(a2[4] + 8 * v15);
  if (!v16)
  {
    goto LABEL_21;
  }

  v17 = *v16;
  if (!*v16)
  {
    goto LABEL_21;
  }

  v4 = *&v11 - 1;
  v18 = v86;
  v19 = v87;
  while (1)
  {
    v20 = v17[1];
    if (v20 == v12)
    {
      break;
    }

    if (v14 > 1)
    {
      if (v20 >= *&v11)
      {
        v20 %= *&v11;
      }
    }

    else
    {
      v20 &= v4;
    }

    if (v20 != v15)
    {
      goto LABEL_21;
    }

LABEL_20:
    v17 = *v17;
    if (!v17)
    {
      goto LABEL_21;
    }
  }

  if (!gss::FeatureAttributeSet::operator==(v17[2], v17[3], v18, v19) || (geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator==<geo::allocator_adapter<unsigned char,gss::zone_mallocator>>(v17 + 6, v88) & 1) == 0)
  {
    goto LABEL_20;
  }

  *v84 = 0;
  v84[1] = 0;
  v75 = v17[10];
  if (v75)
  {
    v76 = std::__shared_weak_count::lock(v75);
    v84[1] = v76;
    if (v76)
    {
      v77 = v17[9];
      *v84 = v77;
      if (v77)
      {
        geo::read_write_lock::unlock((a2 + 15));
        goto LABEL_120;
      }

      std::__shared_weak_count::__release_shared[abi:nn200100](v76);
    }
  }

LABEL_21:
  geo::read_write_lock::unlock((a2 + 15));
  v21 = a2[1];
  if (!v21 || (v22 = *a2, (v23 = std::__shared_weak_count::lock(v21)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:nn200100]();
  }

  v24 = v23;
  v25 = gss::zone_mallocator::instance(v23);
  v26 = pthread_rwlock_rdlock((v25 + 32));
  if (v26)
  {
    geo::read_write_lock::logFailure(v26, "read lock", v27);
  }

  v28 = malloc_type_zone_malloc(*v25, 0x168uLL, 0x1081040E106C04EuLL);
  atomic_fetch_add((v25 + 24), 1u);
  geo::read_write_lock::unlock((v25 + 32));
  *(v28 + 1) = 0;
  *(v28 + 2) = 0;
  *v28 = &unk_1F2A30BB0;
  atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  *(v28 + 4) = &unk_1F2A30C40;
  *(v28 + 5) = v22;
  *(v28 + 6) = v24;
  atomic_fetch_add_explicit(&v24->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  *(v28 + 7) = 0;
  geo::read_write_lock::read_write_lock((v28 + 64));
  if (!v22)
  {
    v33 = 0;
    goto LABEL_35;
  }

  v29 = *(v22 + 520);
  v30 = *(v22 + 528);
  if (v30)
  {
    atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v29)
  {
    v33 = 0;
    if (!v30)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v31 = *(v22 + 520);
  v32 = *(v22 + 528);
  if (v32)
  {
    atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
    v33 = *(v31 + 264) - 1;
    std::__shared_weak_count::__release_shared[abi:nn200100](v32);
    if (!v30)
    {
      goto LABEL_35;
    }

LABEL_34:
    std::__shared_weak_count::__release_shared[abi:nn200100](v30);
    goto LABEL_35;
  }

  v33 = *(v31 + 264) - 1;
  if (v30)
  {
    goto LABEL_34;
  }

LABEL_35:
  *(v28 + 66) = v33;
  std::__shared_weak_count::__release_shared[abi:nn200100](v24);
  *(v28 + 4) = &unk_1F2A30BE8;
  gss::FeatureAttributeSet::FeatureAttributeSet(v28 + 34, &v86);
  v34 = v84;
  *(v28 + 38) = 0;
  *(v28 + 39) = 0;
  *(v28 + 160) = 256;
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::copy(v28 + 38, v88);
  *(v28 + 328) = 0u;
  *(v28 + 344) = 0u;
  std::__shared_weak_count::__release_shared[abi:nn200100](v24);
  *v84 = v28 + 32;
  v84[1] = v28;
  v85 = (a2 + 15);
  v35 = pthread_rwlock_wrlock((a2 + 15));
  if (v35)
  {
    geo::read_write_lock::logFailure(v35, "write lock", v36);
  }

  v37 = std::__unordered_map_hasher<gss::StyleKey,std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<gss::StyleKey>,std::equal_to<gss::StyleKey>,true>::operator()[abi:nn200100](&v86);
  v38 = v37;
  v39 = a2[5];
  if (!v39)
  {
    goto LABEL_59;
  }

  v40 = vcnt_s8(v39);
  v40.i16[0] = vaddlv_u8(v40);
  v41 = v40.u32[0];
  if (v40.u32[0] > 1uLL)
  {
    v4 = v37;
    if (v37 >= v39)
    {
      v4 = v37 % v39;
    }
  }

  else
  {
    v4 = (v39 - 1) & v37;
  }

  v42 = *(a2[4] + 8 * v4);
  if (!v42 || (v43 = *v42) == 0)
  {
LABEL_59:
    v47 = gss::zone_mallocator::instance(v37);
    v48 = pthread_rwlock_rdlock((v47 + 32));
    if (v48)
    {
      geo::read_write_lock::logFailure(v48, "read lock", v49);
    }

    v50 = malloc_type_zone_malloc(*v47, 0x58uLL, 0x103004003330742uLL);
    atomic_fetch_add((v47 + 24), 1u);
    geo::read_write_lock::unlock((v47 + 32));
    *v50 = 0;
    *(v50 + 1) = v38;
    gss::FeatureAttributeSet::FeatureAttributeSet(v50 + 2, &v86);
    *(v50 + 6) = 0;
    *(v50 + 7) = 0;
    *(v50 + 32) = 256;
    geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::copy(v50 + 6, v88);
    geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::shrink_to_fit((v50 + 48));
    v52 = v34[1];
    *(v50 + 9) = *v34;
    *(v50 + 10) = v52;
    if (v52)
    {
      atomic_fetch_add_explicit((v52 + 16), 1uLL, memory_order_relaxed);
    }

    v53 = (a2[9] + 1);
    v54 = *(a2 + 20);
    if (v39 && (v54 * v39) >= v53)
    {
LABEL_109:
      v72 = a2[4];
      v73 = *(v72 + 8 * v4);
      if (v73)
      {
        *v50 = *v73;
      }

      else
      {
        *v50 = a2[7];
        a2[7] = v50;
        *(v72 + 8 * v4) = a2 + 7;
        if (!*v50)
        {
LABEL_118:
          ++a2[9];
          goto LABEL_119;
        }

        v74 = *(*v50 + 8);
        if ((v39 & (v39 - 1)) != 0)
        {
          if (v74 >= v39)
          {
            v74 %= v39;
          }
        }

        else
        {
          v74 &= v39 - 1;
        }

        v73 = (a2[4] + 8 * v74);
      }

      *v73 = v50;
      goto LABEL_118;
    }

    v55 = v39 < 3 || (v39 & (v39 - 1)) != 0;
    v56 = v55 | (2 * v39);
    v57 = vcvtps_u32_f32(v53 / v54);
    if (v56 <= v57)
    {
      v58 = v57;
    }

    else
    {
      v58 = v56;
    }

    if (v58 == 1)
    {
      v58 = 2;
    }

    else if ((v58 & (v58 - 1)) != 0)
    {
      prime = std::__next_prime(v58);
      v58 = prime;
    }

    v39 = a2[5];
    if (v58 > v39)
    {
      goto LABEL_76;
    }

    if (v58 < v39)
    {
      prime = vcvtps_u32_f32(a2[9] / *(a2 + 20));
      if (v39 < 3 || (v67 = vcnt_s8(v39), v67.i16[0] = vaddlv_u8(v67), v67.u32[0] > 1uLL))
      {
        prime = std::__next_prime(prime);
      }

      else
      {
        v68 = 1 << -__clz(prime - 1);
        if (prime >= 2)
        {
          prime = v68;
        }
      }

      if (v58 <= prime)
      {
        v58 = prime;
      }

      if (v58 >= v39)
      {
        v39 = a2[5];
      }

      else
      {
        if (v58)
        {
LABEL_76:
          v59 = gss::zone_mallocator::instance(prime);
          v60 = pthread_rwlock_rdlock((v59 + 32));
          if (v60)
          {
            geo::read_write_lock::logFailure(v60, "read lock", v61);
          }

          v62 = malloc_type_zone_malloc(*v59, 8 * v58, 0x2004093837F09uLL);
          atomic_fetch_add((v59 + 24), 1u);
          geo::read_write_lock::unlock((v59 + 32));
          std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::ScenePropertyID>>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::ScenePropertyID>>>,void *> *> *,gss::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::ScenePropertyID>>>,void *> *> **,0>((a2 + 4), v62);
          v63 = 0;
          a2[5] = v58;
          do
          {
            *(a2[4] + 8 * v63++) = 0;
          }

          while (v58 != v63);
          v64 = a2[7];
          if (v64)
          {
            v65 = *(v64 + 8);
            v66 = vcnt_s8(v58);
            v66.i16[0] = vaddlv_u8(v66);
            if (v66.u32[0] > 1uLL)
            {
              if (v65 >= v58)
              {
                v65 %= v58;
              }
            }

            else
            {
              v65 &= v58 - 1;
            }

            *(a2[4] + 8 * v65) = a2 + 7;
            v69 = *v64;
            if (*v64)
            {
              do
              {
                v70 = v69[1];
                if (v66.u32[0] > 1uLL)
                {
                  if (v70 >= v58)
                  {
                    v70 %= v58;
                  }
                }

                else
                {
                  v70 &= v58 - 1;
                }

                if (v70 != v65)
                {
                  v71 = a2[4];
                  if (!*(v71 + 8 * v70))
                  {
                    *(v71 + 8 * v70) = v64;
                    goto LABEL_100;
                  }

                  *v64 = *v69;
                  *v69 = **(v71 + 8 * v70);
                  **(v71 + 8 * v70) = v69;
                  v69 = v64;
                }

                v70 = v65;
LABEL_100:
                v64 = v69;
                v69 = *v69;
                v65 = v70;
              }

              while (v69);
            }
          }

          v39 = v58;
          goto LABEL_104;
        }

        std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::ScenePropertyID>>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::ScenePropertyID>>>,void *> *> *,gss::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::ScenePropertyID>>>,void *> *> **,0>((a2 + 4), 0);
        v39 = 0;
        a2[5] = 0;
      }
    }

LABEL_104:
    if ((v39 & (v39 - 1)) != 0)
    {
      if (v38 >= v39)
      {
        v4 = v38 % v39;
      }

      else
      {
        v4 = v38;
      }
    }

    else
    {
      v4 = (v39 - 1) & v38;
    }

    goto LABEL_109;
  }

  v44 = v86;
  v45 = v87;
  while (1)
  {
    v46 = v43[1];
    if (v46 == v38)
    {
      break;
    }

    if (v41 > 1)
    {
      if (v46 >= v39)
      {
        v46 %= v39;
      }
    }

    else
    {
      v46 &= v39 - 1;
    }

    if (v46 != v4)
    {
LABEL_56:
      v34 = v84;
      goto LABEL_59;
    }

LABEL_55:
    v43 = *v43;
    if (!v43)
    {
      goto LABEL_56;
    }
  }

  v37 = gss::FeatureAttributeSet::operator==(v43[2], v43[3], v44, v45);
  if (!v37)
  {
    goto LABEL_55;
  }

  v37 = geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator==<geo::allocator_adapter<unsigned char,gss::zone_mallocator>>(v43 + 6, v88);
  if ((v37 & 1) == 0)
  {
    goto LABEL_55;
  }

  v78 = v43[10];
  if (v78)
  {
    v79 = std::__shared_weak_count::lock(v78);
    v80 = v79;
    v81 = v28 + 32;
    if (v79)
    {
      v82 = v43[9];
      if (v82)
      {
        *v84 = v82;
        v84[1] = v79;
        v80 = v28;
        goto LABEL_140;
      }
    }
  }

  else
  {
    v80 = 0;
    v81 = v28 + 32;
  }

  atomic_fetch_add_explicit(v28 + 2, 1uLL, memory_order_relaxed);
  v83 = v43[10];
  v43[9] = v81;
  v43[10] = v28;
  if (v83)
  {
    std::__shared_weak_count::__release_weak(v83);
  }

  if (v80)
  {
LABEL_140:
    std::__shared_weak_count::__release_shared[abi:nn200100](v80);
  }

LABEL_119:
  geo::write_lock_guard::~write_lock_guard(&v85);
LABEL_120:
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(v88);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v86);
}

void sub_1B2A2A464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va2, a7);
  va_start(va1, a7);
  va_start(va, a7);
  v10 = va_arg(va1, pthread_rwlock_t *);
  va_copy(va2, va1);
  v12 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  geo::read_write_lock::unlock((v8 + 32));
  std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::ScenePropertyID>>>,void *>,gss::zone_mallocator>>::operator()[abi:nn200100](1, v7);
  geo::write_lock_guard::~write_lock_guard(va);
  if (*(a7 + 8))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(a7 + 8));
  }

  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(va2);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va1);
  _Unwind_Resume(a1);
}

void _ZNSt3__110__function6__funcIZN2md13LightingLogic29runBeforeLayoutAtVariableRateERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJNS2_13CameraContextENS2_17StyleLogicContextENS2_12SceneContextENS2_16ElevationContextENS2_15SettingsContextEEEENS9_IJEEEEE20ResolvedDependenciesERNS2_20LightingLogicContextEE3__0NS_9allocatorISN_EEFvNS2_17StyleManagerEventEEEclEOSQ_(void *a1, unsigned __int8 *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if ((*a2 | 4) == 4)
  {
    v3 = a1[1];
    v4 = a1[2];
    v5 = v3[34];
    v3[33] = 0;
    v3[34] = 0;
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }

    v6 = *v4;
    if (*v4)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      gss::StylesheetManager<gss::ScenePropertyID>::styleQueryForFeatureAttributes(v13, v6, &v14);
      v7 = v3[34];
      *(v3 + 33) = v13[0];
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v7);
      }

      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v14);
    }

    v8 = a1[3];
    v9 = v3[36];
    v3[35] = 0;
    v3[36] = 0;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v9);
    }

    if (*v8)
    {
      LODWORD(v12) = 65611;
      WORD2(v12) = 9;
      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::vector[abi:nn200100](v13, &v12, 1uLL);
      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::vector[abi:nn200100](&v14, v13);
      gss::FeatureAttributeSet::sort(v14, v15);
      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v13);
      gss::StylesheetManager<gss::PropertyID>::styleQueryForFeatureAttributes(v13, *v8, &v14);
      v10 = v13[0];
      v13[0] = 0uLL;
      v11 = v3[36];
      *(v3 + 35) = v10;
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v11);
        if (*(&v13[0] + 1))
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*(&v13[0] + 1));
        }
      }

      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v14);
    }
  }
}

void sub_1B2A2A744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void gss::StylesheetManager<gss::ScenePropertyID>::styleQueryForFeatureAttributes(void *a1, uint64_t *a2, uint64_t **a3)
{
  v3[0] = 0;
  v3[1] = 0;
  v4 = 256;
  gss::StylesheetManager<gss::ScenePropertyID>::styleQueryForFeatureAttributes(a1, a2, a3, v3);
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(v3);
}

void sub_1B2A2A7B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(va);
  _Unwind_Resume(a1);
}

void sub_1B2A2AAE0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 56);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void md::AnchorManager::newAnchorAtCoordinate(void *a1, uint64_t a2, __int128 *a3, int a4)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

uint64_t md::Anchor::Anchor(uint64_t a1, uint64_t a2, __int128 *a3)
{
  *a1 = &unk_1F2A1E798;
  *(a1 + 8) = a2;
  *(a1 + 64) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  v5 = *a3;
  v6 = *(a3 + 2);
  unk_1F2A1E7F0(a1, &v5, a3);
  return a1;
}

void md::Anchor::setCoordinate(uint64_t result, __int128 *a2)
{
  if (*a2 != *(result + 40) || *(a2 + 1) != *(result + 48) || *(a2 + 2) != *(result + 56))
  {
    v3 = *a2;
    *(result + 56) = *(a2 + 2);
    *(result + 40) = v3;
    v13 = *(a2 + 1);
    v4 = *(a2 + 2);
    v5 = tan(*a2 * 0.00872664626 + 0.785398163);
    v6 = log(v5);
    v7.f64[0] = v13;
    v7.f64[1] = v6;
    __asm { FMOV            V1.2D, #0.5 }

    *(result + 16) = vmlaq_f64(_Q1, xmmword_1B33B0700, v7);
    *(result + 32) = v4;

    md::Anchor::worldPointDidChange(result);
  }
}

void md::Anchor::worldPointDidChange(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 8);
  [WeakRetained anchorWorldPointDidChange:this];
}

void std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::ScenePropertyID>>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::ScenePropertyID>>>,void *> *> *,gss::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::ScenePropertyID>>>,void *> *> **,0>(gss::zone_mallocator *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = gss::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::ScenePropertyID>>>,void *> *> *>(v3, v2);
  }
}

uint64_t gss::StylesheetQuery<gss::ScenePropertyID>::~StylesheetQuery(void *a1)
{
  *a1 = &unk_1F2A30BE8;
  v2 = a1[40];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[38];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage((a1 + 34));
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((a1 + 30));

  return gss::Queryable<gss::ScenePropertyID>::~Queryable(a1);
}

double md::MercatorTerrainAnchor::worldPoint(md::MercatorTerrainAnchor *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    return md::AnchorManager::mercatorTerrainPointForAnchor(v2, this);
  }

  else
  {
    return 0.0;
  }
}

uint64_t gss::Queryable<gss::ScenePropertyID>::~Queryable(uint64_t a1)
{
  *a1 = &unk_1F2A30C40;
  geo::read_write_lock::~read_write_lock((a1 + 32));
  std::unique_ptr<gss::RenderStyle<gss::PropertyID>>::reset[abi:nn200100]((a1 + 24), 0);
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

double md::AnchorManager::mercatorTerrainPointForAnchor(md::AnchorManager *this, md::MercatorTerrainAnchor *a2)
{
  v4 = (*(*a2 + 56))(a2);
  v5 = *(this + 2);
  if (v5)
  {
    v14 = a2;
    if (!std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>(v5, a2))
    {
      v7 = *(v5 + 40);
      if (v7)
      {
        v13[0] = COERCE_void_((*(*a2 + 56))(a2));
        v13[1] = v8;
        v13[2] = v9;
        v10 = COERCE_DOUBLE((**v7)(v7, v13));
        if (v11)
        {
          v12 = v10;
          v13[0] = &v14;
          *(std::__hash_table<std::__hash_value_type<md::Anchor *,float>,std::__unordered_map_hasher<md::Anchor *,std::__hash_value_type<md::Anchor *,float>,std::hash<md::Anchor *>,std::equal_to<md::Anchor *>,true>,std::__unordered_map_equal<md::Anchor *,std::__hash_value_type<md::Anchor *,float>,std::equal_to<md::Anchor *>,std::hash<md::Anchor *>,true>,std::allocator<std::__hash_value_type<md::Anchor *,float>>>::__emplace_unique_key_args<md::Anchor *,std::piecewise_construct_t const&,std::tuple<md::Anchor * const&>,std::tuple<>>(v5, a2, v13) + 6) = v12;
        }
      }
    }
  }

  return v4;
}

void std::__shared_ptr_emplace<gss::StylesheetQuery<gss::ScenePropertyID>,geo::allocator_adapter<gss::StylesheetQuery<gss::ScenePropertyID>,gss::zone_mallocator>>::__on_zero_shared_weak(gss::zone_mallocator *a1)
{
  v2 = gss::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__shared_ptr_emplace<gss::StylesheetQuery<gss::ScenePropertyID>,geo::allocator_adapter<gss::StylesheetQuery<gss::ScenePropertyID>,gss::zone_mallocator>>>(v2, a1);
}

uint64_t gss::StylesheetQuery<gss::PropertyID>::~StylesheetQuery(void *a1)
{
  *a1 = &unk_1F2A5B638;
  v2 = a1[40];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[38];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage((a1 + 34));
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((a1 + 30));

  return gss::Queryable<gss::PropertyID>::~Queryable(a1);
}

uint64_t md::ElevatedTerrainHeightProvider::heightAtPoint(uint64_t a1, float64x2_t *a2)
{
  result = *(a1 + 8);
  if (result)
  {
    Elevation = md::World::getElevation(result, a2);
    return Elevation & (v4 << 55 >> 63);
  }

  return result;
}

uint64_t gss::Queryable<gss::PropertyID>::~Queryable(uint64_t a1)
{
  *a1 = &unk_1F2A5B690;
  geo::read_write_lock::~read_write_lock((a1 + 32));
  std::unique_ptr<gss::RenderStyle<gss::PropertyID>>::reset[abi:nn200100]((a1 + 24), 0);
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__shared_ptr_emplace<gss::StylesheetQuery<gss::PropertyID>,geo::allocator_adapter<gss::StylesheetQuery<gss::PropertyID>,gss::zone_mallocator>>::__on_zero_shared_weak(gss::zone_mallocator *a1)
{
  v2 = gss::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__shared_ptr_emplace<gss::StylesheetQuery<gss::PropertyID>,geo::allocator_adapter<gss::StylesheetQuery<gss::PropertyID>,gss::zone_mallocator>>>(v2, a1);
}

void md::LightingLogic::writeLogicContext(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, md::SceneContext *a5, uint64_t a6, void *a7, double *a8, uint64_t a9, uint64_t a10)
{
  v707 = *MEMORY[0x1E69E9840];
  _ZF = *(a1 + 230) == 1 && *a7 == 0;
  if (_ZF)
  {
    return;
  }

  v19 = *(a3 + 3076);
  v20 = *(a3 + 3080);
  v631 = +[VKDebugSettings sharedSettings];
  v21 = [v631 lightingEnableAmbient];
  v22 = [v631 lightingEnableLight1];
  v23 = *(a6 + 56);
  v24 = *(a6 + 60);
  v25 = *(a6 + 64);
  v27 = *(a6 + 72);
  v600 = *(a6 + 68);
  v26 = v600;
  LOBYTE(v12) = *(a6 + 57);
  LOBYTE(v10) = *(a6 + 58);
  LOBYTE(v13) = *(a6 + 59);
  LOBYTE(v26) = *(a6 + 61);
  v614 = LODWORD(v26);
  LOBYTE(v14) = *(a6 + 62);
  LOBYTE(v11) = *(a6 + 63);
  v28 = *(a1 + 264);
  v29 = *(a1 + 272);
  if (v29)
  {
    atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  gss::QueryableLocker<gss::ScenePropertyID>::QueryableLocker(v677, v28, v29);
  v602 = v25;
  v610 = v14;
  v611 = v13;
  v612 = v22;
  v613 = v21;
  v30 = v20 + v19;
  v31 = v10;
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v29);
  }

  v32 = fmaxf(v30, 1.0);
  v33 = v31 * 0.0039216;
  v34 = *(a6 + 94);
  if (v678 == 1)
  {
    if (gss::RenderStyle<gss::ScenePropertyID>::hasValueForKey(*(v677[0] + 24), 15))
    {
      v35.n128_f32[0] = fminf(v32, 23.0);
      gss::RenderStyle<gss::ScenePropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v699, *(v677[0] + 24), v35, 15);
      v36 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&v699)), vdupq_n_s32(0x37800080u));
      v37 = *&v36.i32[1];
      v618 = v36.i32[0];
      v609 = vextq_s8(v36, v36, 8uLL).u64[0];
    }

    else
    {
      v609 = 0x3F8000003F59D042;
      v37 = 0.85083;
      *&v618 = 0.85083;
    }

    v39 = v631;
    hasValueForKey = gss::RenderStyle<gss::ScenePropertyID>::hasValueForKey(*(v677[0] + 24), 16);
    v41 = xmmword_1B33B1320;
    v606 = xmmword_1B33B1320;
    v615 = xmmword_1B33B1320;
    if (hasValueForKey)
    {
      v41.n128_f32[0] = fminf(v32, 23.0);
      gss::RenderStyle<gss::ScenePropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v699, *(v677[0] + 24), v41, 16);
      v615 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&v699)), vdupq_n_s32(0x37800080u));
    }

    if (gss::RenderStyle<gss::ScenePropertyID>::hasValueForKey(*(v677[0] + 24), 19))
    {
      v42.n128_f32[0] = fminf(v32, 23.0);
      gss::RenderStyle<gss::ScenePropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v699, *(v677[0] + 24), v42, 19);
      v606 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&v699)), vdupq_n_s32(0x37800080u));
    }

    if (v32 >= 0x17)
    {
      v43 = 23;
    }

    else
    {
      v43 = v32;
    }

    hasValueForKeyAtZ = gss::RenderStyle<gss::ScenePropertyID>::hasValueForKeyAtZ(*(v677[0] + 24), 88, v43);
    v625 = 0.0;
    v45 = 0.0;
    if (hasValueForKeyAtZ)
    {
      v45 = gss::RenderStyle<gss::ScenePropertyID>::sampledValueForKeyAtZ<float>(*(v677[0] + 24), 88, fminf(v32, 23.0));
    }

    v623 = v45;
    if (gss::RenderStyle<gss::ScenePropertyID>::hasValueForKeyAtZ(*(v677[0] + 24), 89, v43))
    {
      v625 = gss::RenderStyle<gss::ScenePropertyID>::sampledValueForKeyAtZ<float>(*(v677[0] + 24), 89, fminf(v32, 23.0));
    }

    v46 = gss::RenderStyle<gss::ScenePropertyID>::hasValueForKeyAtZ(*(v677[0] + 24), 90, v43);
    v47 = 0.0;
    if (v46)
    {
      v47 = gss::RenderStyle<gss::ScenePropertyID>::sampledValueForKeyAtZ<float>(*(v677[0] + 24), 90, fminf(v32, 23.0));
    }

    v628 = LODWORD(v47);
    if (gss::RenderStyle<gss::ScenePropertyID>::hasValueForKeyAtZ(*(v677[0] + 24), 91, v43))
    {
      v628 = __PAIR64__(COERCE_UNSIGNED_INT(gss::RenderStyle<gss::ScenePropertyID>::sampledValueForKeyAtZ<float>(*(v677[0] + 24), 91, fminf(v32, 23.0))), v628);
    }

    v38 = *&v618;
  }

  else
  {
    v609 = 0x3F8000003F59D042;
    v628 = 0;
    v625 = 0.0;
    v38 = 0.85083;
    v615 = xmmword_1B33B1320;
    v606 = xmmword_1B33B1320;
    v37 = 0.85083;
    v623 = 0.0;
    v39 = v631;
  }

  if (v23)
  {
    v48 = v12 * 0.0039216;
  }

  else
  {
    v48 = v38;
  }

  if (v23)
  {
    v49 = v33;
  }

  else
  {
    v49 = v37;
  }

  v603 = v49;
  if (v23)
  {
    v50 = -1;
  }

  else
  {
    v50 = 0;
  }

  if (v24)
  {
    v51 = -1;
  }

  else
  {
    v51 = 0;
  }

  v607 = v50;
  v608 = v51;
  v619 = *(a6 + 96);
  if (v34)
  {
    v52 = -1;
  }

  else
  {
    v52 = 0;
  }

  v53 = &unk_1EB82B000;
  {
    md::LightingLogic::writeLogicContext(md::FrameState const&,md::CameraContext const&,md::ElevationContext const&,md::SceneContext const&,md::SettingsContext const&,std::shared_ptr<gss::StylesheetManager<gss::ScenePropertyID>> const&,GEOLocationCoordinate2D const&,md::LightingLogicContext &,ggl::Device const&)::$_0::operator() const(void)::cached_result = MapsFeature_IsEnabled_Maps68();
    v39 = v631;
  }

  v54.i64[0] = __PAIR64__(LODWORD(v625), LODWORD(v623));
  v54.i64[1] = v628;
  v55 = vbslq_s8(vdupq_n_s32(v52), v619, v54);
  v56 = md::LightingLogic::writeLogicContext(md::FrameState const&,md::CameraContext const&,md::ElevationContext const&,md::SceneContext const&,md::SettingsContext const&,std::shared_ptr<gss::StylesheetManager<gss::ScenePropertyID>> const&,GEOLocationCoordinate2D const&,md::LightingLogicContext &,ggl::Device const&)::$_0::operator() const(void)::cached_result == 1 && (*v55.i32 > 0.00000011921 || *&v55.i32[1] > 0.00000011921);
  v626 = v56;
  *(a9 + 262) = v56;
  v604 = v48;
  v624 = v55;
  if (*(a1 + 230) != 1)
  {
    v629 = 0;
    goto LABEL_54;
  }

  v57 = 0.0;
  if (v678 != 1)
  {
    v58 = 2;
    v629 = 2;
    goto LABEL_62;
  }

  v58 = gss::RenderStyleHelper<gss::ScenePropertyID,unsigned int>::valueForKey(0, *(v677[0] + 24));
  v629 = gss::RenderStyleHelper<gss::ScenePropertyID,unsigned int>::valueForKey(6, *(v677[0] + 24));
  if (v58)
  {
LABEL_62:
    v71 = 0.0;
    goto LABEL_73;
  }

LABEL_54:
  v59 = objc_alloc(MEMORY[0x1E69A1DF0]);
  v60 = *a8;
  v61 = a8[1];
  if (*(a1 + 392) != 1)
  {
    v63 = *(gdc::Camera::cameraFrame(a3) + 8);
    v620 = +[VKDebugSettings sharedSettings];
    v64 = [MEMORY[0x1E695E000] standardUserDefaults];
    v598 = objc_alloc_init(MEMORY[0x1E695DF00]);
    if (!*(a1 + 240))
    {
      v65 = [MEMORY[0x1E695DEE8] currentCalendar];
      v66 = [v65 copy];
      *&v699 = &unk_1F2A0ECE0;
      *(&v699 + 1) = v66;
      v67 = v66;
      geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(a1 + 232, &v699);
      *&v699 = &unk_1F2A0ECE0;
    }

    if ([v620 lightingCameraLocalTime])
    {
      v68 = (v63 * 13750.9871);
      if (*(a1 + 256) != v68)
      {
        v69 = *(a1 + 240);
        v70 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:(v63 * 13750.9871)];
        [v69 setTimeZone:v70];

        *(a1 + 256) = v68;
      }
    }

    else
    {
      v72 = [*(a1 + 240) timeZone];
      v53 = 0x1E695D000uLL;
      v73 = [MEMORY[0x1E695DFE8] systemTimeZone];
      v74 = [v72 isEqual:v73];

      if ((v74 & 1) == 0)
      {
        v75 = *(a1 + 240);
        v76 = [MEMORY[0x1E695DFE8] systemTimeZone];
        [v75 setTimeZone:v76];
      }
    }

    if ([v64 BOOLForKey:@"__LightingStopTime"])
    {
      v77 = [*(a1 + 240) dateBySettingHour:0 minute:0 second:0 ofDate:v599 options:0];
      v78 = [v64 integerForKey:@"__LightingStopTimeHour"];
      v79 = [v64 integerForKey:@"__LightingStopTimeMinute"];
      v80 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeInterval:v77 sinceDate:v78 * 3600.0 + v79 * 60.0];
    }

    else
    {
      if (![v620 lightingAccelerateTime])
      {
        v62 = v599;
        goto LABEL_71;
      }

      v77 = [*(a1 + 240) dateBySettingHour:0 minute:0 second:0 ofDate:v599 options:0];
      [v599 timeIntervalSinceDate:v77];
      v80 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeInterval:v77 sinceDate:v81 * 3600.0];
    }

    v62 = v80;

LABEL_71:
    goto LABEL_72;
  }

  v62 = *(a1 + 384);
LABEL_72:
  v82 = [v59 initWithLocation:v62 date:0 body:{v60, v61}];

  [v82 azimuth];
  v84 = v83;
  [v82 altitude];
  v86 = v85;

  v58 = 0;
  v71 = v84 * 0.0174532925;
  v57 = v86 * 0.0174532925;
LABEL_73:
  __p.__r_.__value_.__s.__data_[0] = 0;
  v676 = 0;
  if (v678 != 1)
  {
    goto LABEL_109;
  }

  v87 = gss::RenderStyle<gss::ScenePropertyID>::hasValueForKey(*(v677[0] + 24), 72);
  if (!v87)
  {
    v95 = 0;
    v96 = 0;
    goto LABEL_93;
  }

  v88 = *(v677[0] + 24);
  v89 = *v88;
  if (*v88)
  {
    v90 = *v89;
    LODWORD(v89) = *v89 == 1.0;
    if (*(v88 + 10) == 1 && v90 != 0.0 && v90 != 1.0)
    {
      v97 = v90 < 1.0;
      goto LABEL_84;
    }
  }

  v91 = *(v88 + v89 + 11);
  if (v91 == 2)
  {
    v97 = 1;
LABEL_84:
    LOBYTE(v652.f64[0]) = 1;
    LOBYTE(v648.f64[0]) = 1;
    v98 = gss::RenderStyle<gss::ScenePropertyID>::styleValueForKey<std::string>(v88, 0, &v652);
    v99 = gss::RenderStyle<gss::ScenePropertyID>::styleValueForKey<std::string>(v88, 1u, &v648);
    if (v97)
    {
      v100 = v98;
    }

    else
    {
      v100 = v99;
    }

    if (v100[23] < 0)
    {
      std::string::__init_copy_ctor_external(&v674, *v100, *(v100 + 1));
      goto LABEL_92;
    }

    v93 = *v100;
    v94 = *(v100 + 2);
    goto LABEL_89;
  }

  v92 = gss::RenderStyle<gss::ScenePropertyID>::styleValueForKey<std::string>(*(v677[0] + 24), v91, 0);
  if (v92[23] < 0)
  {
    std::string::__init_copy_ctor_external(&v674, *v92, *(v92 + 1));
    goto LABEL_92;
  }

  v93 = *v92;
  v94 = *(v92 + 2);
LABEL_89:
  v674.__r_.__value_.__r.__words[2] = v94;
  *&v674.__r_.__value_.__l.__data_ = v93;
LABEL_92:
  *&v699 = v674.__r_.__value_.__l.__size_;
  v95 = v674.__r_.__value_.__r.__words[0];
  *(&v699 + 7) = *(&v674.__r_.__value_.__r.__words[1] + 7);
  LOBYTE(v53) = *(&v674.__r_.__value_.__s + 23);
  memset(&v674, 0, sizeof(v674));
  v96 = 1;
LABEL_93:
  if (v676 == v96)
  {
    if (v676)
    {
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p.__r_.__value_.__r.__words[0] = v95;
      __p.__r_.__value_.__l.__size_ = v699;
      *(&__p.__r_.__value_.__r.__words[1] + 7) = *(&v699 + 7);
      *(&__p.__r_.__value_.__s + 23) = v53;
      goto LABEL_106;
    }

LABEL_102:
    if (v96 && (v53 & 0x80) != 0)
    {
      operator delete(v95);
    }

    goto LABEL_106;
  }

  if (v676)
  {
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v676 = 0;
    goto LABEL_102;
  }

  __p.__r_.__value_.__r.__words[0] = v95;
  __p.__r_.__value_.__l.__size_ = v699;
  *(&__p.__r_.__value_.__r.__words[1] + 7) = *(&v699 + 7);
  *(&__p.__r_.__value_.__s + 23) = v53;
  *&v699 = 0;
  *(&v699 + 7) = 0;
  v676 = 1;
LABEL_106:
  v39 = v631;
  if (v87 && SHIBYTE(v674.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v674.__r_.__value_.__l.__data_);
  }

LABEL_109:
  v101 = *(a1 + 230);
  if (v101 == 1 && v678 == 1)
  {
    if (v602)
    {
      v102 = v27 * 0.0174532925;
      v103 = v600 * 0.0174532925;
      goto LABEL_128;
    }

    v413 = gdc::Camera::cameraFrame(a3);
    v414 = *(v677[0] + 24);
    v415 = fminf(v32, 23.0);
    v416 = *v414;
    if (*v414 && (v417 = *v416, LODWORD(v416) = *v416 == 1.0, *(v414 + 10) == 1) && v417 != 0.0 && v417 != 1.0)
    {
      v427 = v417 < 1.0;
    }

    else
    {
      v418 = *(v414 + v416 + 11);
      if (v418 != 2)
      {
        v419 = gss::RenderStyle<gss::ScenePropertyID>::styleSampledValueForKeyAtZ<unsigned int>(*(v677[0] + 24), v418, 0, v415);
LABEL_385:
        v420.n128_f64[0] = v419;
        if (v58 == 2)
        {
          v421 = 3.14159265 - *(v413 + 40);
        }

        else
        {
          v421 = 0.0;
          if (!v58)
          {
            v421 = v71;
          }
        }

        v422 = v420.n128_f64[0] * 0.0174532925;
        v420.n128_f32[0] = v415;
        v423 = gss::RenderStyle<gss::ScenePropertyID>::sampledValueForKeyAtZ<int>(*(v677[0] + 24), v420, 9);
        v424.n128_f32[0] = v415;
        v425 = gss::RenderStyle<gss::ScenePropertyID>::sampledValueForKeyAtZ<int>(*(v677[0] + 24), v424, 12) * 0.0174532925;
        v426 = 1.57079633;
        if (v629 == 2)
        {
          v426 = 1.57079633 - *(v413 + 32);
        }

        else
        {
          if (!v629)
          {
            v426 = v57;
          }

          if (v629 == 1)
          {
            v426 = 0.0;
          }
        }

        v102 = v421 + v422;
        v103 = fmax(v426 + v423 * 0.0174532925, v425);
        goto LABEL_128;
      }

      v427 = 1;
    }

    v622 = v427;
    LOBYTE(v699) = 1;
    LOBYTE(v652.f64[0]) = 1;
    v428 = gss::RenderStyle<gss::ScenePropertyID>::styleSampledValueForKeyAtZ<unsigned int>(v414, 0, &v699, v415);
    v419 = gss::RenderStyle<gss::ScenePropertyID>::styleSampledValueForKeyAtZ<unsigned int>(v414, 1u, &v652, v415);
    if (v622)
    {
      v419 = v428;
    }

    goto LABEL_385;
  }

  v104 = gdc::Camera::cameraFrame(a3);
  if (v58 == 2)
  {
    v102 = 3.14159265 - *(v104 + 40);
    v105 = v629;
  }

  else
  {
    v102 = 0.0;
    v105 = v629;
    if (!v58)
    {
      v102 = v71;
    }
  }

  v106 = 0.0;
  if (v101)
  {
    v107 = 0.0;
  }

  else
  {
    v107 = v57;
  }

  v108 = 1.57079633;
  if (v105 == 2)
  {
    v106 = 1.57079633 - *(v104 + 32);
  }

  else
  {
    if (!v105)
    {
      v108 = v57;
    }

    if (v105 != 1)
    {
      v106 = v108;
    }
  }

  v103 = fmax(v106, v107);
LABEL_128:
  v109 = __sincos_stret(v103);
  v110 = __sincos_stret(v102);
  *(a9 + 80) = v110.__sinval * v109.__cosval;
  v111 = a9 + 80;
  *(a9 + 112) = v102;
  *(a9 + 120) = v103;
  *(a9 + 88) = v110.__cosval * v109.__cosval;
  *(a9 + 96) = v109.__sinval;
  *(a9 + 104) = 0;
  v113 = *(a1 + 120);
  v112 = *(a1 + 128);
  if (v112)
  {
    atomic_fetch_add_explicit((v112 + 8), 1uLL, memory_order_relaxed);
  }

  v114 = *(a9 + 8);
  *a9 = v113;
  *(a9 + 8) = v112;
  if (v114)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v114);
  }

  v116 = *(a1 + 152);
  v115 = *(a1 + 160);
  if (v115)
  {
    atomic_fetch_add_explicit((v115 + 8), 1uLL, memory_order_relaxed);
  }

  v117 = *(a9 + 40);
  *(a9 + 32) = v116;
  *(a9 + 40) = v115;
  if (v117)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v117);
  }

  v119 = *(a1 + 168);
  v118 = *(a1 + 176);
  if (v118)
  {
    atomic_fetch_add_explicit((v118 + 8), 1uLL, memory_order_relaxed);
  }

  v120 = *(a9 + 56);
  *(a9 + 48) = v119;
  *(a9 + 56) = v118;
  if (v120)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v120);
  }

  v122 = *(a1 + 184);
  v121 = *(a1 + 192);
  if (v121)
  {
    atomic_fetch_add_explicit((v121 + 8), 1uLL, memory_order_relaxed);
  }

  v123 = *(a9 + 72);
  *(a9 + 64) = v122;
  *(a9 + 72) = v121;
  if (v123)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v123);
  }

  v125 = *(a1 + 136);
  v124 = *(a1 + 144);
  if (v124)
  {
    atomic_fetch_add_explicit((v124 + 8), 1uLL, memory_order_relaxed);
  }

  v126 = *(a9 + 24);
  *(a9 + 16) = v125;
  *(a9 + 24) = v124;
  if (v126)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v126);
  }

  if (*a7)
  {
    __asm
    {
      FMOV            V5.2S, #1.0
      FMOV            V6.4S, #1.0
    }

    *_Q6.i32 = v614 * 0.0039216;
    v132 = v103 + -0.1;
    *_D5.i32 = v611 * 0.0039216;
    *&_Q6.i32[1] = v610 * 0.0039216;
    *&_Q6.i32[2] = v11 * 0.0039216;
    v630 = vbsl_s8(vdup_n_s32(v607), _D5, v609);
    v616 = vbslq_s8(vdupq_n_s32(v608), _Q6, v615);
    v621 = fminf(fmaxf(v132, 0.0), 0.1) * 10.0;
    ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v652, *a9);
    v133 = *(a9 + 16);
    ggl::BufferMemory::BufferMemory(&v648);
    ggl::ResourceAccessor::accessConstantData(&v699, 0, v133, 1);
    ggl::BufferMemory::operator=(&v648, &v699);
    ggl::BufferMemory::~BufferMemory(&v699);
    v134 = *(a9 + 32);
    ggl::BufferMemory::BufferMemory(&v638);
    ggl::ResourceAccessor::accessConstantData(&v699, 0, v134, 1);
    ggl::BufferMemory::operator=(&v638, &v699);
    ggl::BufferMemory::~BufferMemory(&v699);
    ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v699, *(a9 + 48));
    ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v666, *(a9 + 64));
    for (i = 0; i != 4; ++i)
    {
      _D0 = *(v111 + 8 * i);
      __asm { FCVT            H0, D0 }

      *(v659.f64 + i) = _D0;
    }

    v137 = 0;
    v138 = *&v653[24];
    **&v653[24] = *&v659.f64[0];
    do
    {
      _D0 = *(v111 + 8 * v137);
      __asm { FCVT            H0, D0 }

      *(v659.f64 + v137++) = _D0;
    }

    while (v137 != 4);
    v140 = *&v641;
    **&v641 = *&v659.f64[0];
    if (v612)
    {
      v141 = vcvt_f16_f32(vmulq_n_f32(v616, v621));
      v142 = v651;
      *v651 = v141;
      v138[2] = v141;
      v143 = vcvt_f16_f32(vmulq_n_f32(v606, v621));
    }

    else
    {
      v143 = 0;
      v138[2] = 0;
      v142 = v651;
      *v651 = 0;
    }

    v138[1] = v143;
    v140[1] = v143;
    if (v613)
    {
      _S1 = v603;
      _S0 = v604;
      __asm
      {
        FCVT            H0, S0
        FCVT            H1, S1
      }

      _S3 = v630.i32[0];
      __asm { FCVT            H2, S3 }

      _S3 = v630.i32[1];
      v138[3].i16[0] = LOWORD(_S0);
      v138[3].i16[1] = LOWORD(_S1);
      v138[3].i16[2] = _H2;
      __asm { FCVT            H3, S3 }

      v138[3].i16[3] = _S3;
      v142[1].i16[0] = LOWORD(_S0);
      v142[1].i16[1] = LOWORD(_S1);
      v142[1].i16[2] = _H2;
      v142[1].i16[3] = _S3;
    }

    else
    {
      v138[3] = 0;
      v142[1] = 0;
    }

    if (v626)
    {
      v149 = vcvt_f16_f32(v624);
      **(&v701 + 1) = v149;
      v150 = v667;
      **&v667 = v149.i16[0];
      *(*&v150 + 2) = 0;
      *(*&v150 + 6) = 0;
    }

    ggl::BufferMemory::~BufferMemory(v666);
    ggl::BufferMemory::~BufferMemory(&v699);
    ggl::BufferMemory::~BufferMemory(&v638);
    ggl::BufferMemory::~BufferMemory(&v648);
    ggl::BufferMemory::~BufferMemory(&v652);
  }

  *&v700 = 0;
  v699 = 0x3FF0000000000000uLL;
  gm::quaternionFromAngleAxis<double>(v673, &v699, -1.57079633);
  v699 = xmmword_1B33B0740;
  *&v700 = 0;
  gm::quaternionFromAngleAxis<double>(v672, &v699, v102 + 3.14159265);
  *&v700 = 0;
  v699 = 0x3FF0000000000000uLL;
  gm::quaternionFromAngleAxis<double>(v671, &v699, v103);
  gm::Quaternion<double>::operator*(&v652, v671, v672);
  gm::Quaternion<double>::operator*(&v699, &v652, v673);
  v151 = 0;
  v152 = *&v699;
  v153 = *&v700;
  v154 = (*(&v699 + 1) + *(&v699 + 1)) * *(&v699 + 1);
  v155 = (v153 + v153) * v153;
  v156 = v152 + v152;
  v157 = (v152 + v152) * *(&v699 + 1);
  v158 = (v153 + v153) * *(&v700 + 1);
  v159 = *&v700 * (v152 + v152);
  v666[0] = 1.0 - (v154 + v155);
  v666[1] = v158 + v157;
  v160 = 1.0 - (v152 + v152) * v152;
  v668 = *(&v700 + 1) * (*(&v699 + 1) + *(&v699 + 1)) + v159;
  v669 = (*(&v699 + 1) + *(&v699 + 1)) * *&v700 - *(&v700 + 1) * v156;
  v666[3] = v157 - v158;
  v666[2] = v159 - *(&v700 + 1) * (*(&v699 + 1) + *(&v699 + 1));
  v666[4] = v160 - v155;
  v667 = *(&v700 + 1) * v156 + (*(&v699 + 1) + *(&v699 + 1)) * *&v700;
  v670 = v160 - v154;
  v161 = &v699;
  v162 = v666;
  do
  {
    v163 = 0;
    v164 = v161;
    do
    {
      *v164 = v162[v163];
      v164 += 2;
      v163 += 3;
    }

    while (v163 != 9);
    ++v151;
    v161 = (v161 + 8);
    ++v162;
  }

  while (v151 != 3);
  *(&v700 + 1) = 0;
  *(&v702 + 1) = 0;
  v705 = 0uLL;
  *(&v704 + 1) = 0;
  *(&v706 + 1) = 0x3FF0000000000000;
  *&v706 = 0;
  *(a9 + 160) = v110.__sinval * v109.__cosval;
  *(a9 + 168) = v110.__cosval * v109.__cosval;
  *(a9 + 176) = v109.__sinval;
  *(a9 + 184) = 0;
  std::__optional_storage_base<std::string,false>::__assign_from[abi:nn200100]<std::__optional_copy_assign_base<std::string,false> const&>((a9 + 128), &__p);
  if (gdc::ToCoordinateSystem(*(a3 + 3784)))
  {
    v165 = gdc::Camera::cameraFrame(a3);
    v166 = v165[1];
    v167 = tan(*v165 * 0.5 + 0.785398163);
    v168 = log(v167);
    v169 = exp(floor(v168 * 325.949323 + 1024.0) * 0.00306796158 + -3.14005867);
    v170 = atan(v169) * 2.0 + -1.57079633;
    v171 = fmod(floor(v166 * 325.949323 + 1024.0) * 0.00306796158 + 0.00153398079, 6.28318531);
    v172 = fmod(v171 + 6.28318531, 6.28318531) + -3.14159265;
    v173 = __sincos_stret(v170);
    v174 = 6378137.0 / sqrt(v173.__sinval * v173.__sinval * -0.00669437999 + 1.0);
    v175 = __sincos_stret(v172);
    gdc::GlobeTileUtils::mercatorToGeocentricRotation(&v635, v174 * v173.__cosval * v175.__cosval, v174 * v173.__cosval * v175.__sinval, v173.__sinval * 0.99330562 * v174);
    v176 = 0;
    v177 = *v635.i64;
    v178 = *&v636;
    v179 = (*&v635.i64[1] + *&v635.i64[1]) * *&v635.i64[1];
    v180 = (v178 + v178) * v178;
    v181 = v177 + v177;
    v182 = (v177 + v177) * *&v635.i64[1];
    v183 = (v178 + v178) * *(&v636 + 1);
    v184 = *&v636 * (v177 + v177);
    v659.f64[0] = 1.0 - (v179 + v180);
    v659.f64[1] = v183 + v182;
    v185 = 1.0 - (v177 + v177) * v177;
    v663 = *(&v636 + 1) * (*&v635.i64[1] + *&v635.i64[1]) + v184;
    v664 = (*&v635.i64[1] + *&v635.i64[1]) * *&v636 - *(&v636 + 1) * v181;
    v661.f64[0] = v182 - v183;
    v660 = v184 - *(&v636 + 1) * (*&v635.i64[1] + *&v635.i64[1]);
    v661.f64[1] = v185 - v180;
    v662 = *(&v636 + 1) * v181 + (*&v635.i64[1] + *&v635.i64[1]) * *&v636;
    v665 = v185 - v179;
    v186 = &v638;
    v187 = &v659;
    do
    {
      v188 = 0;
      f64 = v186->f64;
      do
      {
        *f64 = *&v187->f64[v188];
        f64 += 4;
        v188 += 3;
      }

      while (v188 != 9);
      ++v176;
      v186 = (v186 + 8);
      v187 = (v187 + 8);
    }

    while (v176 != 3);
    v190 = 0;
    v640.f64[0] = 0.0;
    v642 = 0;
    v643 = 0;
    v644 = 0;
    v646 = 0;
    v647 = 0x3FF0000000000000;
    v191 = &v648;
    v192 = &v638;
    v645 = 0;
    v193 = a2;
    do
    {
      v194 = 0;
      v195 = v192;
      do
      {
        v196 = *v195;
        v195 += 4;
        v191->f64[v194++] = v196;
      }

      while (v194 != 4);
      ++v190;
      v191 += 2;
      v192 = (v192 + 8);
    }

    while (v190 != 4);
    v197 = 0;
    v198 = &v699;
    do
    {
      v199 = 0;
      v200 = &v648;
      do
      {
        v201 = 0;
        v202 = 0.0;
        v203 = v198;
        do
        {
          v204 = *v203;
          v203 += 4;
          v202 = v202 + v200->f64[v201++] * v204;
        }

        while (v201 != 4);
        v652.f64[4 * v199++ + v197] = v202;
        v200 += 2;
      }

      while (v199 != 4);
      ++v197;
      v198 = (v198 + 8);
    }

    while (v197 != 4);
    v205 = 0;
    v703 = v655;
    v704 = v656;
    v705 = v657;
    v706 = v658;
    v699 = v652;
    v700 = *v653;
    v206 = &v652;
    v207 = &v659;
    v701 = *&v653[16];
    v702 = v654;
    do
    {
      v208 = 0;
      v209 = v206->f64;
      do
      {
        *v209 = *&v207->f64[v208];
        v209 += 4;
        v208 += 3;
      }

      while (v208 != 9);
      ++v205;
      v206 = (v206 + 8);
      v207 = (v207 + 8);
    }

    while (v205 != 3);
    *&v653[8] = 0;
    *(&v654 + 1) = 0;
    v657 = 0uLL;
    *(&v656 + 1) = 0;
    *(&v658 + 1) = 0x3FF0000000000000;
    *&v658 = 0;
    *(a9 + 192) = gm::operator*<double,4,4,1>(v652.f64, a9 + 160);
    *(a9 + 200) = v210;
    *(a9 + 208) = v211;
    *(a9 + 216) = v212;
  }

  else
  {
    v213 = *(a9 + 176);
    *(a9 + 192) = *(a9 + 160);
    *(a9 + 208) = v213;
    v193 = a2;
  }

  v214 = 0.0;
  if ((*(a1 + 229) & 1) == 0)
  {
    v215 = gdc::CameraView::position(a3);
    v216 = 0;
    v217 = 0.0;
    do
    {
      v217 = v217 + *(v215 + v216) * *(v215 + v216);
      v216 += 8;
    }

    while (v216 != 24);
    v214 = fmin(fmax(fabs(sqrt(v217) + -6378137.0) * 0.000000666666667 + -4.66666667, 0.0), 1.0);
  }

  *(a9 + 456) = v214;
  if (!*a7)
  {
    goto LABEL_639;
  }

  if (*(a1 + 200) != 1 || *(v193 + 632) != 1)
  {
    *(a9 + 224) = 0;
    [v39 daVinciGroundAmbientOcclusionRadius];
    v410 = v409;
    [v39 daVinciGroundAmbientOcclusionIntensity];
    v412 = v411;
    if (v678 != 1 || ([v39 daVinciLightingStylesOverrideEnabled] & 1) != 0)
    {
      goto LABEL_461;
    }

    goto LABEL_496;
  }

  v218 = gdc::Camera::cameraFrame(a3);
  v219 = v218[3];
  v220 = gdc::ToCoordinateSystem(*(a3 + 3784));
  if (!v220)
  {
    v221 = *v218;
    v222 = cos(v221 + v221) * -559.82 + 111132.92;
    v223 = v222 + cos(v221 * 4.0) * 1.175;
    v224 = v223 + cos(v221 * 6.0) * -0.0023;
    v225 = v221 * 0.5;
    v226 = tan(v221 * 0.5 + 0.78103484);
    v227 = log(v226);
    v228 = tan(v225 + 0.789761487);
    v219 = fabs((log(v228) - v227) * 0.159154943) * v219 / v224;
  }

  v696 = 1.79769313e308;
  v695 = -1.79769313e308;
  v694[0] = a3;
  v694[1] = &v699;
  v694[2] = &v696;
  v694[3] = &v695;
  v229 = md::SceneContext::layerDataInView(a5, 33);
  v230 = v229 + 1;
  v231 = *v229;
  if (*v229 != v229 + 1)
  {
    do
    {
      md::LightingLogic::_calculateShadowProjectionBounds(md::CameraContext const&,md::SceneContext const&,gm::Matrix<double,4,4> const&,gm::Box<double,3> &)const::$_0::operator()(v694, v231[4], v231[5]);
      v232 = v231[1];
      if (v232)
      {
        do
        {
          v233 = v232;
          v232 = *v232;
        }

        while (v232);
      }

      else
      {
        do
        {
          v233 = v231[2];
          _ZF = *v233 == v231;
          v231 = v233;
        }

        while (!_ZF);
      }

      v231 = v233;
    }

    while (v233 != v230);
  }

  v234 = md::SceneContext::layerDataInView(a5, 54);
  v235 = v234 + 1;
  v236 = *v234;
  if (*v234 != v234 + 1)
  {
    do
    {
      md::LightingLogic::_calculateShadowProjectionBounds(md::CameraContext const&,md::SceneContext const&,gm::Matrix<double,4,4> const&,gm::Box<double,3> &)const::$_0::operator()(v694, v236[4], v236[5]);
      v237 = v236[1];
      if (v237)
      {
        do
        {
          v238 = v237;
          v237 = *v237;
        }

        while (v237);
      }

      else
      {
        do
        {
          v238 = v236[2];
          _ZF = *v238 == v236;
          v236 = v238;
        }

        while (!_ZF);
      }

      v236 = v238;
    }

    while (v238 != v235);
  }

  v239 = gdc::CameraView::position(a3);
  v240 = v239;
  v241 = 0;
  v692 = *v239;
  v693 = *(v239 + 16);
  do
  {
    v652.f64[v241] = *(a3 + 3088 + v241 * 8) * v219;
    ++v241;
  }

  while (v241 != 3);
  v242 = 0;
  v648 = v652;
  v649 = *v653;
  do
  {
    v652.f64[v242] = v648.f64[v242] + *(v239 + v242 * 8);
    ++v242;
  }

  while (v242 != 3);
  v690 = v652;
  v691 = *v653;
  v688 = 0uLL;
  v689 = 0x3FF0000000000000;
  if (v220)
  {
    v243 = 0;
    v648 = 0uLL;
    v649 = 0.0;
    do
    {
      v652.f64[v243] = v690.f64[v243] - v648.f64[v243];
      ++v243;
    }

    while (v243 != 3);
    v244 = 0;
    v688 = v652;
    v689 = *v653;
    v245 = 0.0;
    do
    {
      v245 = v245 + v688.f64[v244] * v688.f64[v244];
      ++v244;
    }

    while (v244 != 3);
    v246 = 0;
    v247 = 1.0 / sqrt(v245);
    do
    {
      v688.f64[v246] = v688.f64[v246] * v247;
      ++v246;
    }

    while (v246 != 3);
  }

  v248 = 0;
  v685 = v688;
  v686 = v689;
  v249 = 0.0;
  do
  {
    v249 = v249 + v688.f64[v248] * v690.f64[v248];
    ++v248;
  }

  while (v248 != 3);
  v250 = 0;
  v687 = -v249;
  do
  {
    v648.f64[v250] = *(a3 + 1200 + v250 * 8) - v692.f64[v250];
    ++v250;
  }

  while (v250 != 3);
  v652 = *v239;
  *v653 = *(v239 + 16);
  *&v653[8] = v648;
  *&v653[24] = v649;
  v684 = 0.0;
  if (gm::Plane3<double>::intersect(&v685, &v652, &v684))
  {
    for (j = 0; j != 3; ++j)
    {
      v648.f64[j] = *(a3 + 1296 + j * 8) - v692.f64[j];
    }

    v252 = 0;
    v253 = v649;
    v254 = v648;
    v648 = *v240;
    v649 = v240[1].f64[0];
    v650 = v254;
    v651 = *&v253;
    do
    {
      v638.f64[v252] = *(a3 + 1248 + v252 * 8) - v692.f64[v252];
      ++v252;
    }

    while (v252 != 3);
    v255 = 0;
    v256 = v639;
    v257 = v638;
    v638 = *v240;
    v639 = v240[1].f64[0];
    v640 = v257;
    v641 = v256;
    do
    {
      v659.f64[v255] = *(a3 + 1344 + v255 * 8) - v692.f64[v255];
      ++v255;
    }

    while (v255 != 3);
    v258 = 0;
    v259 = v660;
    v260 = v659;
    v659 = *v240;
    v660 = v240[1].f64[0];
    v661 = v260;
    v662 = v259;
    v261 = v684;
    do
    {
      *(&v697 + v258) = *&v653[v258 + 8] * v261;
      v258 += 8;
    }

    while (v258 != 24);
    v262 = 0;
    v679 = v697;
    v680 = v698;
    do
    {
      *(&v697 + v262 * 8) = *(&v679 + v262 * 8) + v692.f64[v262];
      ++v262;
    }

    while (v262 != 3);
    v263 = 0;
    v264 = v697;
    v265 = v698;
    do
    {
      *(&v697 + v263 * 8) = v650.f64[v263] * v261;
      ++v263;
    }

    while (v263 != 3);
    v266 = 0;
    v679 = v697;
    v680 = v698;
    do
    {
      *(&v697 + v266 * 8) = *(&v679 + v266 * 8) + v692.f64[v266];
      ++v266;
    }

    while (v266 != 3);
    v267 = 0;
    v268 = v697;
    v269 = v698;
    do
    {
      *(&v697 + v267 * 8) = v640.f64[v267] * v261;
      ++v267;
    }

    while (v267 != 3);
    v270 = 0;
    v679 = v697;
    v680 = v698;
    do
    {
      *(&v697 + v270 * 8) = *(&v679 + v270 * 8) + v692.f64[v270];
      ++v270;
    }

    while (v270 != 3);
    v271 = 0;
    v272 = v697;
    v273 = v698;
    do
    {
      *(&v697 + v271 * 8) = v661.f64[v271] * v261;
      ++v271;
    }

    while (v271 != 3);
    v274 = 0;
    v679 = v697;
    v680 = v698;
    do
    {
      *(&v697 + v274 * 8) = *(&v679 + v274 * 8) + v692.f64[v274];
      ++v274;
    }

    while (v274 != 3);
    v275 = 0;
    v276 = v697;
    v277 = v698;
    v278 = 0.0;
    v279 = *(a3 + 976);
    do
    {
      v278 = v278 + *&v653[v275 + 8] * *&v653[v275 + 8];
      v275 += 8;
    }

    while (v275 != 24);
    v280 = 0;
    v281 = 0.0;
    v282 = sqrt(v278);
    do
    {
      v281 = v281 + *&v653[v280 + 8] * *&v653[v280 + 8];
      v280 += 8;
    }

    while (v280 != 24);
    v283 = 0;
    v284 = 1.0 / sqrt(v281);
    do
    {
      *(&v697 + v283) = *&v653[v283 + 8] * v284;
      v283 += 8;
    }

    while (v283 != 24);
    v285 = 0;
    v682 = v697;
    v683 = v698;
    v286 = (v219 + v219) * v282 / v279;
    do
    {
      *(&v697 + v285) = *(&v682 + v285) * v286;
      v285 += 8;
    }

    while (v285 != 24);
    v287 = 0;
    v679 = v697;
    v680 = v698;
    do
    {
      *(&v697 + v287 * 8) = *(&v679 + v287 * 8) + v692.f64[v287];
      ++v287;
    }

    while (v287 != 3);
    v288 = v697;
    v289 = v698;
    v290 = 0.0;
    do
    {
      v290 = v290 + v648.f64[v287] * v648.f64[v287];
      ++v287;
    }

    while (v287 != 6);
    v291 = 0;
    v292 = 1.0 / sqrt(v290);
    do
    {
      *(&v697 + v291 * 8) = v650.f64[v291] * v292;
      ++v291;
    }

    while (v291 != 3);
    v293 = 0;
    v682 = v697;
    v683 = v698;
    do
    {
      *(&v697 + v293) = *(&v682 + v293) * v286;
      v293 += 8;
    }

    while (v293 != 24);
    v294 = 0;
    v679 = v697;
    v680 = v698;
    do
    {
      *(&v697 + v294 * 8) = *(&v679 + v294 * 8) + v692.f64[v294];
      ++v294;
    }

    while (v294 != 3);
    v295 = v697;
    v296 = v698;
    v297 = 0.0;
    do
    {
      v297 = v297 + v638.f64[v294] * v638.f64[v294];
      ++v294;
    }

    while (v294 != 6);
    v298 = 0;
    v299 = 1.0 / sqrt(v297);
    do
    {
      *(&v697 + v298 * 8) = v640.f64[v298] * v299;
      ++v298;
    }

    while (v298 != 3);
    v300 = 0;
    v682 = v697;
    v683 = v698;
    do
    {
      *(&v697 + v300) = *(&v682 + v300) * v286;
      v300 += 8;
    }

    while (v300 != 24);
    v301 = 0;
    v679 = v697;
    v680 = v698;
    do
    {
      *(&v697 + v301 * 8) = *(&v679 + v301 * 8) + v692.f64[v301];
      ++v301;
    }

    while (v301 != 3);
    v302 = v697;
    v303 = v698;
    v304 = 0.0;
    do
    {
      v304 = v304 + v659.f64[v301] * v659.f64[v301];
      ++v301;
    }

    while (v301 != 6);
    v305 = 0;
    v306 = 1.0 / sqrt(v304);
    do
    {
      *(&v697 + v305 * 8) = v661.f64[v305] * v306;
      ++v305;
    }

    while (v305 != 3);
    v307 = 0;
    v682 = v697;
    v683 = v698;
    do
    {
      *(&v697 + v307) = *(&v682 + v307) * v286;
      v307 += 8;
    }

    while (v307 != 24);
    v308 = 0;
    v679 = v697;
    v680 = v698;
    do
    {
      *(&v697 + v308 * 8) = *(&v679 + v308 * 8) + v692.f64[v308];
      ++v308;
    }

    while (v308 != 3);
    v309 = 0;
    v310 = v697;
    v311 = v698;
    v635 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    v636 = xmmword_1B33B0520;
    v637 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    v679 = v264;
    v680 = v265;
    v681 = 0x3FF0000000000000;
    v312 = &v699;
    do
    {
      v313 = 0;
      v314 = 0.0;
      v315 = v312;
      do
      {
        v316 = *v315;
        v315 += 4;
        v314 = v314 + *(&v679 + v313) * v316;
        v313 += 8;
      }

      while (v313 != 32);
      *(&v697 + v309++) = v314;
      v312 = (v312 + 8);
    }

    while (v309 != 4);
    for (k = 0; k != 3; ++k)
    {
      v318 = &v635.i64[k];
      v319 = *(&v697 + k * 8);
      *v318 = fmin(v319, *&v635.i64[k]);
      v318[3] = fmax(*(&v636 + k * 8 + 8), v319);
    }

    v320 = 0;
    v679 = v268;
    v680 = v269;
    v681 = 0x3FF0000000000000;
    v321 = &v699;
    do
    {
      v322 = 0;
      v323 = 0.0;
      v324 = v321;
      do
      {
        v325 = *v324;
        v324 += 4;
        v323 = v323 + *(&v679 + v322) * v325;
        v322 += 8;
      }

      while (v322 != 32);
      *(&v697 + v320++) = v323;
      v321 = (v321 + 8);
    }

    while (v320 != 4);
    for (m = 0; m != 3; ++m)
    {
      v327 = &v635.i64[m];
      v328 = *(&v697 + m * 8);
      *v327 = fmin(v328, *&v635.i64[m]);
      v327[3] = fmax(*(&v636 + m * 8 + 8), v328);
    }

    v329 = 0;
    v679 = v272;
    v680 = v273;
    v681 = 0x3FF0000000000000;
    v330 = &v699;
    do
    {
      v331 = 0;
      v332 = 0.0;
      v333 = v330;
      do
      {
        v334 = *v333;
        v333 += 4;
        v332 = v332 + *(&v679 + v331) * v334;
        v331 += 8;
      }

      while (v331 != 32);
      *(&v697 + v329++) = v332;
      v330 = (v330 + 8);
    }

    while (v329 != 4);
    for (n = 0; n != 3; ++n)
    {
      v336 = &v635.i64[n];
      v337 = *(&v697 + n * 8);
      *v336 = fmin(v337, *&v635.i64[n]);
      v336[3] = fmax(*(&v636 + n * 8 + 8), v337);
    }

    v338 = 0;
    v679 = v276;
    v680 = v277;
    v681 = 0x3FF0000000000000;
    v339 = &v699;
    do
    {
      v340 = 0;
      v341 = 0.0;
      v342 = v339;
      do
      {
        v343 = *v342;
        v342 += 4;
        v341 = v341 + *(&v679 + v340) * v343;
        v340 += 8;
      }

      while (v340 != 32);
      *(&v697 + v338++) = v341;
      v339 = (v339 + 8);
    }

    while (v338 != 4);
    for (ii = 0; ii != 3; ++ii)
    {
      v345 = &v635.i64[ii];
      v346 = *(&v697 + ii * 8);
      *v345 = fmin(v346, *&v635.i64[ii]);
      v345[3] = fmax(*(&v636 + ii * 8 + 8), v346);
    }

    v347 = 0;
    v679 = v288;
    v680 = v289;
    v681 = 0x3FF0000000000000;
    v348 = &v699;
    do
    {
      v349 = 0;
      v350 = 0.0;
      v351 = v348;
      do
      {
        v352 = *v351;
        v351 += 4;
        v350 = v350 + *(&v679 + v349) * v352;
        v349 += 8;
      }

      while (v349 != 32);
      *(&v697 + v347++) = v350;
      v348 = (v348 + 8);
    }

    while (v347 != 4);
    for (jj = 0; jj != 3; ++jj)
    {
      v354 = &v635.i64[jj];
      v355 = *(&v697 + jj * 8);
      *v354 = fmin(v355, *&v635.i64[jj]);
      v354[3] = fmax(*(&v636 + jj * 8 + 8), v355);
    }

    v356 = 0;
    v679 = v295;
    v680 = v296;
    v681 = 0x3FF0000000000000;
    v357 = &v699;
    do
    {
      v358 = 0;
      v359 = 0.0;
      v360 = v357;
      do
      {
        v361 = *v360;
        v360 += 4;
        v359 = v359 + *(&v679 + v358) * v361;
        v358 += 8;
      }

      while (v358 != 32);
      *(&v697 + v356++) = v359;
      v357 = (v357 + 8);
    }

    while (v356 != 4);
    for (kk = 0; kk != 3; ++kk)
    {
      v363 = &v635.i64[kk];
      v364 = *(&v697 + kk * 8);
      *v363 = fmin(v364, *&v635.i64[kk]);
      v363[3] = fmax(*(&v636 + kk * 8 + 8), v364);
    }

    v365 = 0;
    v679 = v302;
    v680 = v303;
    v681 = 0x3FF0000000000000;
    v366 = &v699;
    do
    {
      v367 = 0;
      v368 = 0.0;
      v369 = v366;
      do
      {
        v370 = *v369;
        v369 += 4;
        v368 = v368 + *(&v679 + v367) * v370;
        v367 += 8;
      }

      while (v367 != 32);
      *(&v697 + v365++) = v368;
      v366 = (v366 + 8);
    }

    while (v365 != 4);
    for (mm = 0; mm != 3; ++mm)
    {
      v372 = &v635.i64[mm];
      v373 = *(&v697 + mm * 8);
      *v372 = fmin(v373, *&v635.i64[mm]);
      v372[3] = fmax(*(&v636 + mm * 8 + 8), v373);
    }

    v374 = 0;
    v679 = v310;
    v680 = v311;
    v681 = 0x3FF0000000000000;
    v375 = &v699;
    do
    {
      v376 = 0;
      v377 = 0.0;
      v378 = v375;
      do
      {
        v379 = *v378;
        v378 += 4;
        v377 = v377 + *(&v679 + v376) * v379;
        v376 += 8;
      }

      while (v376 != 32);
      *(&v697 + v374++) = v377;
      v375 = (v375 + 8);
    }

    while (v374 != 4);
    for (nn = 0; nn != 3; ++nn)
    {
      v381 = &v635.i64[nn];
      v382 = *(&v697 + nn * 8);
      *v381 = fmin(v382, *&v635.i64[nn]);
      v381[3] = fmax(*(&v636 + nn * 8 + 8), v382);
    }
  }

  else
  {
    for (i1 = 1176; i1 != 1368; i1 += 24)
    {
      v430 = *(a3 + i1 + 16);
      v648 = *(a3 + i1);
      v649 = v430;
      v650.f64[0] = 1.0;
      v431 = gm::operator*<double,4,4,1>(&v699, &v648);
      v432 = 0;
      v638.f64[0] = v431;
      v638.f64[1] = v433;
      v639 = v434;
      do
      {
        v435 = &v635.i64[v432];
        v436 = v638.f64[v432];
        *v435 = fmin(v436, *&v635.i64[v432]);
        v435[3] = fmax(*(&v636 + v432 * 8 + 8), v436);
        ++v432;
      }

      while (v432 != 3);
    }
  }

  v383 = *&v636;
  if (v696 < *&v636)
  {
    *&v636 = v696;
    v383 = v696;
  }

  v384 = *&v637.i64[1];
  if (v695 > *&v637.i64[1])
  {
    *&v637.i64[1] = v695;
    v384 = v695;
  }

  v385 = (a1 + 296);
  v386 = *(a1 + 376);
  *(a1 + 376) = 1;
  v387 = *(a4 + 20) * *(a4 + 16);
  v388 = floorf(fmaxf(*(a3 + 3080) + *(a3 + 3076), 1.0));
  if (*(a1 + 344) != v388)
  {
    goto LABEL_445;
  }

  if (vabds_f32(*(a1 + 348), v387) > 0.001)
  {
    goto LABEL_445;
  }

  if ((v386 & 1) == 0)
  {
    goto LABEL_445;
  }

  if (*v635.i64 < *v385)
  {
    goto LABEL_445;
  }

  if (*&v635.i64[1] < *(a1 + 304))
  {
    goto LABEL_445;
  }

  if (v383 < *(a1 + 312))
  {
    goto LABEL_445;
  }

  if (*(&v636 + 1) > *(a1 + 320))
  {
    goto LABEL_445;
  }

  if (*v637.i64 > *(a1 + 328))
  {
    goto LABEL_445;
  }

  if (v384 > *(a1 + 336))
  {
    goto LABEL_445;
  }

  for (i2 = 0; i2 != 3; ++i2)
  {
    v652.f64[i2] = *(&v636 + i2 * 8 + 8) - *&v635.i64[i2];
  }

  v390 = v652;
  v391 = *v653;
  v392 = 40;
  v393 = (a1 + 296);
  do
  {
    v394 = v393[3];
    v395 = *v393++;
    v652.f64[v392 - 40] = v394 - v395;
    ++v392;
  }

  while (v392 != 43);
  v396 = 0;
  v648 = vdivq_f64(vmaxnmq_f64(v390, 0), vmaxnmq_f64(v652, 0));
  v649 = fmax(v391, 0.0) / fmax(*v653, 0.0);
  do
  {
    v652.f64[v396] = fabs(v648.f64[v396]);
    ++v396;
  }

  while (v396 != 3);
  if (v652.f64[0] < 0.699999988 || v652.f64[1] < 0.699999988 || *v653 < 0.699999988)
  {
    goto LABEL_445;
  }

  v397 = 0;
  *v653 = 0;
  v652.f64[1] = 0.0;
  *&v652.f64[0] = &v652.f64[1];
  do
  {
    v398 = md::SceneContext::layerDataInView(a5, md::kMapDataTypesWithRegistries[v397]);
    if (*v398 != v398 + 1)
    {
      std::__tree<md::LayerDataIdentWithWorld>::__emplace_unique_impl<gdc::LayerDataWithWorld const&>(&v652, (*v398 + 32));
    }

    ++v397;
  }

  while (v397 != 2);
  v399 = (a1 + 352);
  v400 = *(a1 + 368);
  if (*v653 != v400)
  {
LABEL_408:
    if (v399 != &v652)
    {
      v437 = v652.f64[0];
      if (v400)
      {
        v438 = *(a1 + 352);
        v439 = *(a1 + 360);
        v627 = (a1 + 360);
        *(a1 + 352) = a1 + 360;
        *(v439 + 16) = 0;
        *(a1 + 360) = 0;
        *(a1 + 368) = 0;
        if (*(v438 + 8))
        {
          v440 = *(v438 + 8);
        }

        else
        {
          v440 = v438;
        }

        if (v440)
        {
          v441 = std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::_DetachedTreeCache::__detach_next(v440);
          if (*&v437 == &v652.f64[1])
          {
            v443 = v440;
          }

          else
          {
            v442 = v437;
            do
            {
              v443 = v441;
              v444 = *(*&v442 + 28);
              *(v440 + 32) = *(*&v442 + 32);
              *(v440 + 28) = v444;
              v445 = (a1 + 360);
              v446 = *v627;
              v447 = a1 + 360;
              if (*v627)
              {
                do
                {
                  while (1)
                  {
                    v447 = v446;
                    v448 = *(v446 + 32);
                    if (!(*(v440 + 32) == v448 ? *(v440 + 28) < *(v447 + 28) : *(v440 + 32) < v448))
                    {
                      break;
                    }

                    v446 = *v447;
                    v445 = v447;
                    if (!*v447)
                    {
                      goto LABEL_425;
                    }
                  }

                  v446 = *(v447 + 8);
                }

                while (v446);
                v445 = (v447 + 8);
              }

LABEL_425:
              std::__tree<unsigned short>::__insert_node_at((a1 + 352), v447, v445, v440);
              if (v441)
              {
                v441 = std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::_DetachedTreeCache::__detach_next(v441);
              }

              else
              {
                v441 = 0;
              }

              v450 = *(*&v442 + 8);
              if (*&v450 == 0.0)
              {
                do
                {
                  v437 = *(*&v442 + 16);
                  _ZF = **&v437 == *&v442;
                  v442 = v437;
                }

                while (!_ZF);
              }

              else
              {
                do
                {
                  v437 = *&v450;
                  v450 = *&v450->f64[0];
                }

                while (*&v450 != 0.0);
              }

              if (!v443)
              {
                break;
              }

              v440 = v443;
              v442 = v437;
            }

            while (*&v437 != &v652.f64[1]);
          }

          std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v443);
          if (v441)
          {
            for (i3 = v441[2]; i3; i3 = i3[2])
            {
              v441 = i3;
            }

            std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v441);
          }
        }

        else
        {
          std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(0);
        }
      }

      if (*&v437 != &v652.f64[1])
      {
        operator new();
      }
    }

    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*&v652.f64[1]);
LABEL_445:
    v452 = gm::Box<double,3>::center<double>(&v635);
    v453 = 0;
    v648.f64[0] = v452;
    v648.f64[1] = v454;
    v649 = v455;
    do
    {
      v652.f64[v453] = *(&v636 + v453 * 8 + 8) - *&v635.i64[v453];
      ++v453;
    }

    while (v453 != 3);
    v456 = 0;
    v638 = vmaxnmq_f64(v652, 0);
    v639 = fmax(*v653, 0.0);
    do
    {
      v652.f64[v456] = v638.f64[v456] * 0.5;
      ++v456;
    }

    while (v456 != 3);
    v457 = 0;
    v638 = vmulq_f64(v652, vdupq_n_s64(0x3FF19999A0000000uLL));
    v639 = *v653 * 1.10000002;
    do
    {
      v652.f64[v457] = v648.f64[v457] - v638.f64[v457];
      ++v457;
    }

    while (v457 != 3);
    v458 = 0;
    v459 = v652;
    v460 = *v653;
    do
    {
      v652.f64[v458] = v638.f64[v458] + v648.f64[v458];
      ++v458;
    }

    while (v458 != 3);
    v408 = 0;
    v461 = *v653;
    v462 = v652;
    *v385 = v459;
    *(a1 + 312) = v460;
    *(a1 + 320) = v462;
    *(a1 + 336) = v461;
    goto LABEL_454;
  }

  v401 = v652.f64[0];
  if (*&v652.f64[0] != &v652.f64[1])
  {
    v402 = v399->f64[0];
    while (*(*&v401 + 32) == *(*&v402 + 32) && *(*&v401 + 28) == *(*&v402 + 28))
    {
      v404 = *(*&v401 + 8);
      v405 = v401;
      if (*&v404 == 0.0)
      {
        do
        {
          v401 = *(*&v405 + 16);
          _ZF = **&v401 == *&v405;
          v405 = v401;
        }

        while (!_ZF);
      }

      else
      {
        do
        {
          v401 = *&v404;
          v404 = *v404;
        }

        while (*&v404 != 0.0);
      }

      v406 = *(*&v402 + 8);
      if (*&v406 == 0.0)
      {
        do
        {
          v407 = *(*&v402 + 16);
          _ZF = *v407 == *&v402;
          v402 = *&v407;
        }

        while (!_ZF);
      }

      else
      {
        do
        {
          v407 = v406;
          v406 = *v406;
        }

        while (*&v406 != 0.0);
      }

      v402 = *&v407;
      if (*&v401 == &v652.f64[1])
      {
        goto LABEL_375;
      }
    }

    goto LABEL_408;
  }

LABEL_375:
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*&v652.f64[1]);
  v408 = 1;
LABEL_454:
  v463 = 0;
  *(a1 + 344) = v388;
  *(a1 + 348) = v387;
  do
  {
    *(a9 + 280 + v463 * 8) = v385[v463];
    ++v463;
  }

  while (v463 != 3);
  for (i4 = 0; i4 != 24; i4 += 8)
  {
    *(a9 + 304 + i4) = *(a1 + 320 + i4);
  }

  *(a9 + 261) = v408;
  *(a9 + 264) = *(a10 + 64);
  *(a9 + 272) = *(a10 + 72);
  v465 = v704;
  *(a9 + 392) = v703;
  *(a9 + 408) = v465;
  v466 = v706;
  *(a9 + 424) = v705;
  *(a9 + 440) = v466;
  v467 = v700;
  *(a9 + 328) = v699;
  *(a9 + 344) = v467;
  v468 = v702;
  *(a9 + 360) = v701;
  *(a9 + 376) = v468;
  v39 = v631;
  [v631 daVinciShadowIntensity];
  v470 = v469;
  [v631 daVinciGroundAmbientOcclusionRadius];
  v410 = v471;
  [v631 daVinciGroundAmbientOcclusionIntensity];
  v412 = v472;
  if (v678 != 1 || ([v631 daVinciLightingStylesOverrideEnabled] & 1) != 0)
  {
    *(a9 + 224) = v470;
LABEL_461:
    *(a9 + 228) = v410;
    goto LABEL_462;
  }

  if (gss::RenderStyle<gss::ScenePropertyID>::hasValueForKey(*(v677[0] + 24), 80))
  {
    v470 = gss::RenderStyle<gss::ScenePropertyID>::sampledValueForKeyAtZ<float>(*(v677[0] + 24), 80, fminf(v32, 23.0));
  }

  *(a9 + 224) = v470;
LABEL_496:
  if (gss::RenderStyle<gss::ScenePropertyID>::hasValueForKey(*(v677[0] + 24), 81))
  {
    v410 = gss::RenderStyle<gss::ScenePropertyID>::sampledValueForKeyAtZ<float>(*(v677[0] + 24), 81, fminf(v32, 23.0));
  }

  *(a9 + 228) = v410;
  if (gss::RenderStyle<gss::ScenePropertyID>::hasValueForKey(*(v677[0] + 24), 82))
  {
    v412 = gss::RenderStyle<gss::ScenePropertyID>::sampledValueForKeyAtZ<float>(*(v677[0] + 24), 82, fminf(v32, 23.0));
  }

LABEL_462:
  *(a9 + 232) = v412;
  *(a9 + 256) = *(a1 + 200);
  *(a9 + 257) = *(a1 + 224) == 0 && *(a9 + 224) > 0.0;
  v473 = (*(a9 + 259) & 1) == 0 && ([v39 daVinciGroundAmbientOcclusionEnabled] & (*(a9 + 232) > 0.0)) == 1 && *(a9 + 228) > 0.0;
  *(a9 + 258) = v473;
  v474 = *(a1 + 280);
  v475 = *(a1 + 288);
  if (v475)
  {
    atomic_fetch_add_explicit(&v475->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v652, v474, v475);
  if (v475)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v475);
  }

  *(a9 + 240) = 1065353216;
  *(a9 + 248) = 0;
  *(a9 + 252) = *(a6 + 84);
  *(a9 + 236) = *(a6 + 80);
  v476 = +[VKDebugSettings sharedSettings];
  [v476 ssaoOverrideRadius];
  *(a9 + 240) = v477;

  v478 = *(a6 + 88);
  v479 = *(a6 + 76);
  if (v653[16] != 1 || (*(a6 + 76) & 1) != 0)
  {
    v495 = a3;
    goto LABEL_625;
  }

  v480 = v652.f64[0];
  v481 = *(*&v652.f64[0] + 24);
  if (v32 >= 0x17)
  {
    v482 = 23;
  }

  else
  {
    v482 = v32;
  }

  v483 = *v481;
  v633 = v479;
  if (!*v481)
  {
    v485 = 0;
    goto LABEL_482;
  }

  v484 = *v483;
  v485 = *v483 == 1.0;
  if (*(v481 + 10) != 1 || (v484 != 0.0 ? (v486 = v484 == 1.0) : (v486 = 1), v486))
  {
LABEL_482:
    v487 = *(v481 + v485 + 11);
    if (v487 != 2)
    {
      goto LABEL_501;
    }
  }

  v488 = *(v481 + 16);
  if (v488)
  {
    v489 = *(v488 + 72);
    if (v489)
    {
      v490 = *v489 + 120 * *(v489 + v482 + 16);
      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v490, 0x1C8u) != *(v490 + 12))
      {
        goto LABEL_504;
      }
    }

    if (*(v481 + 56))
    {
      v491 = *(v481 + 48);
      v492 = 8 * *(v481 + 56);
      v487 = 1;
      while (1)
      {
        v493 = *(*v491 + 72);
        if (v493)
        {
          v494 = *v493 + 120 * *(v493 + v482 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v494, 0x1C8u) != *(v494 + 12))
          {
            goto LABEL_504;
          }
        }

        v491 += 8;
        v492 -= 8;
        if (!v492)
        {
          goto LABEL_501;
        }
      }
    }
  }

  v487 = 1;
LABEL_501:
  v496 = *(v481 + 16 * v487 + 16);
  if (!v496)
  {
    goto LABEL_514;
  }

  v497 = *(v496 + 72);
  if (v497)
  {
    v498 = *v497 + 120 * *(v497 + v482 + 16);
    if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v498, 0x1C8u) != *(v498 + 12))
    {
LABEL_504:
      v499 = fminf(v32, 23.0);
      if (v483)
      {
        v500 = *v483;
        v501 = *v483 == 1.0;
        if (*(v481 + 10) == 1 && v500 != 0.0 && v500 != 1.0)
        {
          goto LABEL_651;
        }
      }

      else
      {
        v501 = 0;
      }

      v503 = *(v481 + v501 + 11);
      if (v503 != 2)
      {
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v481, 456, v503, 0, v499);
LABEL_513:
        *(a9 + 236) = v504;
        goto LABEL_514;
      }

      v500 = 0.0;
LABEL_651:
      LOBYTE(v648.f64[0]) = 1;
      LOBYTE(v638.f64[0]) = 1;
      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v481, 456, 0, &v648, v499);
      v593 = v592;
      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v481, 456, 1, &v638, v499);
      v504 = v593 + ((v594 - v593) * v500);
      goto LABEL_513;
    }
  }

  v516 = v481 + 16 * v487;
  if (*(v516 + 56))
  {
    v517 = *(v516 + 48);
    v518 = 8 * *(v516 + 56);
    do
    {
      v519 = *(*v517 + 72);
      if (v519)
      {
        v520 = *v519 + 120 * *(v519 + v482 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v520, 0x1C8u) != *(v520 + 12))
        {
          goto LABEL_504;
        }
      }

      v517 += 8;
      v518 -= 8;
    }

    while (v518);
  }

LABEL_514:
  if (!v483)
  {
    v506 = 0;
    goto LABEL_521;
  }

  v505 = *v483;
  v506 = *v483 == 1.0;
  if (*(v481 + 10) != 1 || (v505 != 0.0 ? (v507 = v505 == 1.0) : (v507 = 1), v507))
  {
LABEL_521:
    v508 = *(v481 + v506 + 11);
    if (v508 != 2)
    {
      goto LABEL_538;
    }
  }

  v509 = *(v481 + 16);
  if (v509)
  {
    v510 = *(v509 + 72);
    if (v510)
    {
      v511 = *v510 + 120 * *(v510 + v482 + 16);
      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v511, 0x1CAu) != *(v511 + 12))
      {
        goto LABEL_541;
      }
    }

    if (*(v481 + 56))
    {
      v512 = *(v481 + 48);
      v513 = 8 * *(v481 + 56);
      v508 = 1;
      while (1)
      {
        v514 = *(*v512 + 72);
        if (v514)
        {
          v515 = *v514 + 120 * *(v514 + v482 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v515, 0x1CAu) != *(v515 + 12))
          {
            goto LABEL_541;
          }
        }

        v512 += 8;
        v513 -= 8;
        if (!v513)
        {
          goto LABEL_538;
        }
      }
    }
  }

  v508 = 1;
LABEL_538:
  v521 = *(v481 + 16 * v508 + 16);
  if (!v521)
  {
    goto LABEL_551;
  }

  v522 = *(v521 + 72);
  if (v522)
  {
    v523 = *v522 + 120 * *(v522 + v482 + 16);
    if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v523, 0x1CAu) != *(v523 + 12))
    {
LABEL_541:
      v524 = fminf(v32, 23.0);
      if (v483)
      {
        v525 = *v483;
        v526 = *v483 == 1.0;
        if (*(v481 + 10) == 1 && v525 != 0.0 && v525 != 1.0)
        {
          goto LABEL_653;
        }
      }

      else
      {
        v526 = 0;
      }

      v528 = *(v481 + v526 + 11);
      if (v528 != 2)
      {
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v481, 458, v528, 0, v524);
LABEL_550:
        *(a9 + 240) = v529;
        goto LABEL_551;
      }

      v525 = 0.0;
LABEL_653:
      LOBYTE(v648.f64[0]) = 1;
      LOBYTE(v638.f64[0]) = 1;
      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v481, 458, 0, &v648, v524);
      v596 = v595;
      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v481, 458, 1, &v638, v524);
      v529 = v596 + ((v597 - v596) * v525);
      goto LABEL_550;
    }
  }

  v541 = v481 + 16 * v508;
  if (*(v541 + 56))
  {
    v542 = *(v541 + 48);
    v543 = 8 * *(v541 + 56);
    do
    {
      v544 = *(*v542 + 72);
      if (v544)
      {
        v545 = *v544 + 120 * *(v544 + v482 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v545, 0x1CAu) != *(v545 + 12))
        {
          goto LABEL_541;
        }
      }

      v542 += 8;
      v543 -= 8;
    }

    while (v543);
  }

LABEL_551:
  if (!v483)
  {
    v531 = 0;
    goto LABEL_558;
  }

  v530 = *v483;
  v531 = *v483 == 1.0;
  if (*(v481 + 10) != 1 || (v530 != 0.0 ? (v532 = v530 == 1.0) : (v532 = 1), v532))
  {
LABEL_558:
    v533 = *(v481 + v531 + 11);
    if (v533 != 2)
    {
      goto LABEL_575;
    }
  }

  v534 = *(v481 + 16);
  if (v534)
  {
    v535 = *(v534 + 72);
    if (v535)
    {
      v536 = *v535 + 120 * *(v535 + v482 + 16);
      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v536, 0x1CBu) != *(v536 + 12))
      {
LABEL_578:
        gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v648, v481, 459, 2u, fminf(v32, 23.0));
        _Q0 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&v648.f64[0])), vdupq_n_s32(0x37800080u));
        __asm { FCVT            H1, S0 }

        _S2 = _Q0.i32[1];
        __asm { FCVT            H2, S2 }

        _Q0.i32[0] = _Q0.i32[2];
        __asm { FCVT            H0, S0 }

        *(a9 + 244) = _H1;
        *(a9 + 246) = _S2;
        *(a9 + 248) = _Q0.i16[0];
        v480 = v652.f64[0];
        goto LABEL_579;
      }
    }

    if (*(v481 + 56))
    {
      v537 = *(v481 + 48);
      v538 = 8 * *(v481 + 56);
      v533 = 1;
      while (1)
      {
        v539 = *(*v537 + 72);
        if (v539)
        {
          v540 = *v539 + 120 * *(v539 + v482 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v540, 0x1CBu) != *(v540 + 12))
          {
            goto LABEL_578;
          }
        }

        v537 += 8;
        v538 -= 8;
        if (!v538)
        {
          goto LABEL_575;
        }
      }
    }
  }

  v533 = 1;
LABEL_575:
  v546 = *(v481 + 16 * v533 + 16);
  if (!v546)
  {
    goto LABEL_579;
  }

  v547 = *(v546 + 72);
  if (v547)
  {
    v548 = *v547 + 120 * *(v547 + v482 + 16);
    if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v548, 0x1CBu) != *(v548 + 12))
    {
      goto LABEL_578;
    }
  }

  v565 = v481 + 16 * v533;
  if (*(v565 + 56))
  {
    v566 = *(v565 + 48);
    v567 = 8 * *(v565 + 56);
    do
    {
      v568 = *(*v566 + 72);
      if (v568)
      {
        v569 = *v568 + 120 * *(v568 + v482 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v569, 0x1CBu) != *(v569 + 12))
        {
          goto LABEL_578;
        }
      }

      v566 += 8;
      v567 -= 8;
    }

    while (v567);
  }

LABEL_579:
  v552 = *(*&v480 + 24);
  v553 = *v552;
  if (!*v552)
  {
    v555 = 0;
    goto LABEL_586;
  }

  v554 = *v553;
  v555 = *v553 == 1.0;
  if (*(v552 + 10) != 1 || (v554 != 0.0 ? (v556 = v554 == 1.0) : (v556 = 1), v556))
  {
LABEL_586:
    v557 = *(v552 + v555 + 11);
    if (v557 != 2)
    {
      goto LABEL_603;
    }
  }

  v558 = *(v552 + 16);
  if (v558)
  {
    v559 = *(v558 + 72);
    if (v559)
    {
      v560 = *v559 + 120 * *(v559 + v482 + 16);
      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v560, 0x1C9u) != *(v560 + 12))
      {
        goto LABEL_606;
      }
    }

    if (*(v552 + 56))
    {
      v561 = *(v552 + 48);
      v562 = 8 * *(v552 + 56);
      v557 = 1;
      while (1)
      {
        v563 = *(*v561 + 72);
        if (v563)
        {
          v564 = *v563 + 120 * *(v563 + v482 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v564, 0x1C9u) != *(v564 + 12))
          {
            goto LABEL_606;
          }
        }

        v561 += 8;
        v562 -= 8;
        if (!v562)
        {
          goto LABEL_603;
        }
      }
    }
  }

  v557 = 1;
LABEL_603:
  v570 = *(v552 + 16 * v557 + 16);
  if (!v570)
  {
    goto LABEL_618;
  }

  v571 = *(v570 + 72);
  if (v571)
  {
    v572 = *v571 + 120 * *(v571 + v482 + 16);
    if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v572, 0x1C9u) != *(v572 + 12))
    {
      goto LABEL_606;
    }
  }

  v580 = v552 + 16 * v557;
  if (!*(v580 + 56))
  {
LABEL_618:
    v39 = v631;
    v495 = a3;
    v479 = v633;
    goto LABEL_625;
  }

  v581 = *(v580 + 48);
  v582 = 8 * *(v580 + 56);
  while (1)
  {
    v583 = *(*v581 + 72);
    if (v583)
    {
      v584 = *v583 + 120 * *(v583 + v482 + 16);
      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v584, 0x1C9u) != *(v584 + 12))
      {
        break;
      }
    }

    v581 += 8;
    v582 -= 8;
    if (!v582)
    {
      goto LABEL_618;
    }
  }

LABEL_606:
  v573 = fminf(v32, 23.0);
  if (v553)
  {
    v574 = *v553;
    v575 = *v553 == 1.0;
    v39 = v631;
    if (*(v552 + 10) == 1)
    {
      v576 = v574 == 0.0 || v574 == 1.0;
      v495 = a3;
      v479 = v633;
      if (!v576)
      {
        goto LABEL_612;
      }

      goto LABEL_623;
    }
  }

  else
  {
    v575 = 0;
    v39 = v631;
  }

  v495 = a3;
  v479 = v633;
LABEL_623:
  v585 = *(v552 + v575 + 11);
  if (v585 == 2)
  {
    v574 = 0.0;
LABEL_612:
    LOBYTE(v648.f64[0]) = 1;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v552, 457, 0, &v648, v573);
    v578 = v577;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v552, 457, 1, &v638, v573);
    v478 = v578 + ((v579 - v578) * v574);
    goto LABEL_625;
  }

  gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v552, 457, v585, 0, v573);
  v478 = v586;
LABEL_625:
  if (*(a1 + 200) == 1 && *(a1 + 497) == 1 && *(a1 + 228) == 1)
  {
    v587 = v653[16] | v479;
  }

  else
  {
    v587 = 0;
  }

  *(a9 + 259) = 0;
  v588 = *(a1 + 225) != (v587 & 1);
  *(a1 + 226) = v588;
  *(a9 + 260) = v588;
  *(a1 + 225) = v587 & 1;
  *(a1 + 227) = 0;
  if (v587)
  {
    v589 = *(gdc::Camera::cameraFrame(v495) + 32);
    v590 = fminf(v589 * 12.732, 1.0);
    v591 = *(a9 + 236) + (-((1.0 - v590) - (v478 * (1.0 - v590))) * *(a9 + 236));
    *(a9 + 236) = v591;
    if (v591 > 0.01)
    {
      *(a9 + 259) = 1;
      *(a1 + 227) = 1;
    }
  }

  if (v653[16] == 1)
  {
    (*(**&v652.f64[0] + 56))(*&v652.f64[0]);
  }

  if (*&v653[8])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*&v653[8]);
  }

  if (*&v652.f64[1])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*&v652.f64[1]);
  }

LABEL_639:
  if (v676 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  gss::QueryableLocker<gss::ScenePropertyID>::~QueryableLocker(v677);
}

void sub_1B2A2F050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38)
{
  gss::QueryableLocker<gss::ScenePropertyID>::~QueryableLocker(&STACK[0x3D8]);

  _Unwind_Resume(a1);
}

uint64_t *gss::QueryableLocker<gss::ScenePropertyID>::QueryableLocker(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
    a2 = *a1;
  }

  a1[2] = 0;
  a1[3] = 0;
  *(a1 + 32) = 0;
  if (a2)
  {
    v4 = (*(*a2 + 48))(a2, a1 + 2);
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 32) = v4;
  return a1;
}

void sub_1B2A2F2D8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(v1 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gss::Queryable<gss::ScenePropertyID>::lock(uint64_t a1, uint64_t a2)
{
  v28 = 0uLL;
  v3 = *(a1 + 16);
  if (!v3)
  {
    goto LABEL_25;
  }

  *(&v28 + 1) = std::__shared_weak_count::lock(v3);
  if (!*(&v28 + 1))
  {
    goto LABEL_25;
  }

  *&v28 = *(a1 + 8);
  if (!v28)
  {
    goto LABEL_25;
  }

  geo::read_write_lock::read_lock((a1 + 32));
  if (((*(*a1 + 32))(a1, &v28) & 1) != 0 || !*(a1 + 24))
  {
    geo::read_write_lock::unlock((a1 + 32));
    geo::write_lock_guard::write_lock_guard(&v27, (a1 + 32));
    gss::Queryable<gss::ScenePropertyID>::updateIfNeeded(a1, &v28);
    (*(*a1 + 16))(&v25, a1);
    (*(*a1 + 24))(&v23, a1);
    v8 = v28;
    v9 = *(v28 + 520);
    v10 = *(v28 + 528);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v9)
    {
      v11 = *(v8 + 520);
      v12 = *(v8 + 528);
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        v13 = atomic_load((v11 + 270));
        std::__shared_weak_count::__release_shared[abi:nn200100](v12);
      }

      else
      {
        v13 = atomic_load((v11 + 270));
      }
    }

    else
    {
      v13 = 0;
    }

    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v10);
    }

    v14 = v25;
    if (v25)
    {
      if (*(a1 + 24))
      {
LABEL_19:
        if (v24)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v24);
        }

        if (v26)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v26);
        }

        geo::write_lock_guard::~write_lock_guard(&v27);
        geo::read_write_lock::read_lock((a1 + 32));
        if (*(a1 + 24))
        {
          goto LABEL_6;
        }

        geo::read_write_lock::unlock((a1 + 32));
LABEL_25:
        v7 = 0;
        goto LABEL_26;
      }

      v16 = *(v28 + 16);
      v17 = *(v28 + 24);
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v18 = atomic_load((v14 + 122));
      if ((v18 & 1) == 0)
      {
        gss::CartoStyle<gss::ScenePropertyID>::populateStyles(v14, v16);
      }

      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v17);
      }
    }

    else if ((v13 & (v23 != 0)) != 1 || *(a1 + 24))
    {
      goto LABEL_19;
    }

    v19 = v23;
    if (v23)
    {
      v20 = *(v28 + 16);
      v21 = *(v28 + 24);
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v22 = atomic_load((v19 + 122));
      if ((v22 & 1) == 0)
      {
        gss::CartoStyle<gss::ScenePropertyID>::populateStyles(v19, v20);
      }

      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v21);
      }
    }

    operator new();
  }

LABEL_6:
  if (a2)
  {
    v5 = v28;
    v28 = 0uLL;
    v6 = *(a2 + 8);
    *a2 = v5;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }
  }

  v7 = 1;
LABEL_26:
  if (*(&v28 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v28 + 1));
  }

  return v7;
}

void sub_1B2A2F6D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, std::__shared_weak_count *a15, pthread_rwlock_t *a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v18);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a13);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a15);
  }

  geo::write_lock_guard::~write_lock_guard(&a16);
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a18);
  }

  _Unwind_Resume(a1);
}

BOOL gss::Queryable<gss::ScenePropertyID>::needsUpdate(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 232);
  v3 = *(*a2 + 520);
  v4 = *(*a2 + 528);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v3)
  {
    v5 = *(*a2 + 520);
    v6 = *(*a2 + 528);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v7 = *(v5 + 264);
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }

    else
    {
      v7 = *(v5 + 264);
    }
  }

  else
  {
    v7 = 0;
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  return v2 != v7;
}

uint64_t *gss::Queryable<gss::ScenePropertyID>::updateIfNeeded(uint64_t a1, uint64_t a2)
{
  result = (*(*a1 + 32))(a1);
  if (result)
  {
    v5 = *(*a2 + 520);
    v6 = *(*a2 + 528);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      *(a1 + 232) = *(v5 + 264);
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }

    else
    {
      *(a1 + 232) = *(v5 + 264);
    }

    (*(*a1 + 40))(a1);

    return std::unique_ptr<gss::RenderStyle<gss::PropertyID>>::reset[abi:nn200100]((a1 + 24), 0);
  }

  return result;
}

void gss::StylesheetQuery<gss::ScenePropertyID>::resolve(uint64_t **a1)
{
  v2 = a1[2];
  if (!v2)
  {
    v5 = 0;
    v3 = 0;
    goto LABEL_29;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3 || (v4 = a1[1]) == 0)
  {
    v5 = 0;
LABEL_29:
    v18 = a1[38];
    a1[37] = 0;
    a1[38] = 0;
    if (v18)
    {
      std::__shared_weak_count::__release_weak(v18);
    }

    goto LABEL_31;
  }

  v6 = v4[2];
  v5 = v4[3];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v6)
  {
    goto LABEL_29;
  }

  gss::StylesheetManager<gss::ScenePropertyID>::sourceStyleAttributes(v22, v4, a1 + 30, (a1 + 34));
  gss::StyleSheet<gss::ScenePropertyID>::styleMatchingAttributes(&v20, v6, v22);
  v7 = v20;
  v8 = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = a1[38];
  a1[37] = v7;
  a1[38] = v8;
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(v22);
  v10 = v4[65];
  v11 = v4[66];
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = pthread_rwlock_rdlock((v10 + 16));
  if (v12)
  {
    geo::read_write_lock::logFailure(v12, "read lock", v13);
  }

  v14 = geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator==<geo::allocator_adapter<unsigned char,gss::zone_mallocator>>((v10 + 240), v10 + 216);
  geo::read_write_lock::unlock((v10 + 16));
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  if ((v14 & 1) == 0)
  {
    gss::StylesheetManager<gss::ScenePropertyID>::targetStyleAttributes(v22, v4, a1 + 30, (a1 + 34));
    gss::StyleSheet<gss::ScenePropertyID>::styleMatchingAttributes(&v20, v6, v22);
    v15 = v20;
    v16 = v21;
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v17 = a1[40];
    a1[39] = v15;
    a1[40] = v16;
    if (v17)
    {
      std::__shared_weak_count::__release_weak(v17);
    }

    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v16);
    }

    geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(v22);
    goto LABEL_33;
  }

LABEL_31:
  v19 = a1[40];
  a1[39] = 0;
  a1[40] = 0;
  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

LABEL_33:
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

void sub_1B2A2FA88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(va);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  _Unwind_Resume(a1);
}

void gss::StylesheetManager<gss::ScenePropertyID>::sourceStyleAttributes(uint64_t *a1, uint64_t a2, uint64_t **a3, uint64_t a4)
{
  __p = 0;
  v17 = 0;
  v18 = 0;
  v7 = *a3;
  v8 = a3[1];
  v10 = v8 - v7;
  v11 = v10 + 20;
  if (v10 != -20)
  {
    if (!(v11 >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<gss::StyleAttribute,unsigned short>>>(v11);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  std::vector<std::pair<gss::StyleAttribute,unsigned short>>::__insert_with_size[abi:nn200100]<std::__wrap_iter<std::pair<gss::StyleAttribute,unsigned short> const*>,std::__wrap_iter<std::pair<gss::StyleAttribute,unsigned short> const*>>(&__p, 0, v7, v8, -20);
  v12 = *(a2 + 520);
  if (v12)
  {
    v13 = pthread_rwlock_rdlock((v12 + 16));
    if (v13)
    {
      geo::read_write_lock::logFailure(v13, "read lock", v14);
    }

    std::vector<std::pair<gss::StyleAttribute,unsigned short>>::insert[abi:nn200100]<geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::Iterator,0>(&__p, v17, (v12 + 216), 0, (v12 + 216), *(v12 + 228));
    geo::read_write_lock::unlock((v12 + 16));
    std::vector<std::pair<gss::StyleAttribute,unsigned short>>::insert[abi:nn200100]<geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::Iterator,0>(&__p, v17, a4, 0, a4, *(a4 + 12));
  }

  gss::ResolveMultiAttributeVectorToMap(a1, &__p);
  v15 = __p;
  if (__p)
  {

    operator delete(v15);
  }
}

void sub_1B2A2FC04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  geo::read_write_lock::unlock((v10 + 16));
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void gss::StyleSheet<gss::ScenePropertyID>::styleMatchingAttributes(void *a1, uint64_t a2, uint64_t *a3)
{
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::shrink_to_fit(a3);
  v5 = *a3;
  v73 = *a3;
  v6 = *(a3 + 2);
  *v74 = *(a3 + 2);
  v7 = *(a3 + 6);
  *&v74[4] = *(a3 + 6);
  *&v74[6] = *(a3 + 14);
  *(a3 + 8) = 256;
  *a3 = 0;
  a3[1] = 0;
  v8 = pthread_rwlock_rdlock((a2 + 2528));
  if (v8)
  {
    geo::read_write_lock::logFailure(v8, "read lock", v9);
  }

  v11 = 0;
  if (v7)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    do
    {
      if (!((v14 >= v7) | v12 & 1))
      {
        v13 = (v5 + 4 * v14);
        v10 = (v5 + v6 + 2 * v14);
        v12 = 1;
      }

      v15 = ((v11 << 6) - 0x61C8864680B583EBLL + (v11 >> 2) + *v13) ^ v11;
      v11 = (*v10 - 0x61C8864680B583EBLL + (v15 << 6) + (v15 >> 2)) ^ v15;
      v16 = v14 + 1;
      if (v12)
      {
        v12 = 0;
      }

      if (v16 < v7)
      {
        ++v14;
      }

      else
      {
        v14 = v7;
      }
    }

    while (v16 < v7);
  }

  v17 = (a2 + 2728);
  v18 = *(a2 + 2736);
  if (v18)
  {
    v19 = vcnt_s8(v18);
    v19.i16[0] = vaddlv_u8(v19);
    v7 = v19.u32[0];
    if (v19.u32[0] > 1uLL)
    {
      v20 = v11;
      if (v11 >= *&v18)
      {
        v20 = v11 % *&v18;
      }
    }

    else
    {
      v20 = (*&v18 - 1) & v11;
    }

    v21 = *(*v17 + 8 * v20);
    if (v21)
    {
      v22 = *v21;
      if (*v21)
      {
        do
        {
          v23 = v22[1];
          if (v23 == v11)
          {
            if (geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator==<geo::allocator_adapter<unsigned char,gss::zone_mallocator>>(&v73, (v22 + 2)))
            {
              v63 = v22[6];
              *a1 = v22[5];
              a1[1] = v63;
              if (v63)
              {
                atomic_fetch_add_explicit((v63 + 8), 1uLL, memory_order_relaxed);
              }

              geo::read_write_lock::unlock((a2 + 2528));
              goto LABEL_126;
            }
          }

          else
          {
            if (v7 > 1)
            {
              if (v23 >= *&v18)
              {
                v23 %= *&v18;
              }
            }

            else
            {
              v23 &= *&v18 - 1;
            }

            if (v23 != v20)
            {
              break;
            }
          }

          v22 = *v22;
        }

        while (v22);
      }
    }
  }

  geo::read_write_lock::unlock((a2 + 2528));
  v24 = atomic_load((a2 + 2786));
  if ((v24 & 1) == 0)
  {
    std::__assoc_sub_state::wait(*(a2 + 2816));
  }

  v25 = atomic_load((a2 + 2787));
  if ((v25 & 1) == 0)
  {
    *a1 = 0;
    a1[1] = 0;
    goto LABEL_126;
  }

  gss::StyleMatchingTreeNode<gss::CartoStyle<gss::ScenePropertyID>>::matchAttributes(&v72, **(a2 + 160), &v73, &v71, (*(a2 + 160) + 8), (a2 + 64), (*(a2 + 160) + 32));
  v71 = (a2 + 2528);
  v26 = pthread_rwlock_wrlock((a2 + 2528));
  if (v26)
  {
    geo::read_write_lock::logFailure(v26, "write lock", v27);
  }

  if (*&v74[4])
  {
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    do
    {
      if (!((v32 >= *&v74[4]) | v30 & 1))
      {
        v31 = (v73 + 4 * v32);
        v28 = (v73 + *v74 + 2 * v32);
        v30 = 1;
      }

      v33 = ((v29 << 6) - 0x61C8864680B583EBLL + (v29 >> 2) + *v31) ^ v29;
      v29 = (*v28 - 0x61C8864680B583EBLL + (v33 << 6) + (v33 >> 2)) ^ v33;
      v34 = v32 + 1;
      if (v30)
      {
        v30 = 0;
      }

      if (v34 < *&v74[4])
      {
        ++v32;
      }

      else
      {
        v32 = *&v74[4];
      }
    }

    while (v34 < *&v74[4]);
  }

  else
  {
    v29 = 0;
  }

  v35 = *(a2 + 2736);
  if (v35)
  {
    v36 = vcnt_s8(v35);
    v36.i16[0] = vaddlv_u8(v36);
    v37 = v36.u32[0];
    if (v36.u32[0] > 1uLL)
    {
      v7 = v29;
      if (v29 >= v35)
      {
        v7 = v29 % v35;
      }
    }

    else
    {
      v7 = (v35 - 1) & v29;
    }

    v38 = *(*v17 + 8 * v7);
    if (v38)
    {
      v39 = *v38;
      if (*v38)
      {
        do
        {
          v40 = v39[1];
          if (v40 == v29)
          {
            v26 = geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator==<geo::allocator_adapter<unsigned char,gss::zone_mallocator>>(&v73, (v39 + 2));
            if (v26)
            {
              goto LABEL_125;
            }
          }

          else
          {
            if (v37 > 1)
            {
              if (v40 >= v35)
              {
                v40 %= v35;
              }
            }

            else
            {
              v40 &= v35 - 1;
            }

            if (v40 != v7)
            {
              break;
            }
          }

          v39 = *v39;
        }

        while (v39);
      }
    }
  }

  v41 = gss::zone_mallocator::instance(v26);
  v42 = pthread_rwlock_rdlock((v41 + 32));
  if (v42)
  {
    geo::read_write_lock::logFailure(v42, "read lock", v43);
  }

  v44 = malloc_type_zone_malloc(*v41, 0x38uLL, 0x1030040238084B7uLL);
  atomic_fetch_add((v41 + 24), 1u);
  geo::read_write_lock::unlock((v41 + 32));
  *v44 = 0;
  *(v44 + 1) = v29;
  *(v44 + 2) = v73;
  *(v44 + 6) = *v74;
  *(v44 + 14) = *&v74[4];
  *(v44 + 30) = *&v74[6];
  v73 = 0;
  *v74 = 0;
  *&v74[8] = 256;
  v46 = *(&v72 + 1);
  *(v44 + 5) = v72;
  *(v44 + 6) = v46;
  if (v46)
  {
    atomic_fetch_add_explicit((v46 + 8), 1uLL, memory_order_relaxed);
  }

  v47 = (*(a2 + 2768) + 1);
  v48 = *(a2 + 2776);
  if (!v35 || (v48 * v35) < v47)
  {
    v49 = v35 < 3 || (v35 & (v35 - 1)) != 0;
    v50 = v49 | (2 * v35);
    v51 = vcvtps_u32_f32(v47 / v48);
    if (v50 <= v51)
    {
      v52 = v51;
    }

    else
    {
      v52 = v50;
    }

    if (v52 == 1)
    {
      v52 = 2;
    }

    else if ((v52 & (v52 - 1)) != 0)
    {
      prime = std::__next_prime(v52);
      v52 = prime;
    }

    v35 = *(a2 + 2736);
    if (v52 > v35)
    {
      goto LABEL_79;
    }

    if (v52 < v35)
    {
      prime = vcvtps_u32_f32(*(a2 + 2768) / *(a2 + 2776));
      if (v35 < 3 || (v61 = vcnt_s8(v35), v61.i16[0] = vaddlv_u8(v61), v61.u32[0] > 1uLL))
      {
        prime = std::__next_prime(prime);
      }

      else
      {
        v62 = 1 << -__clz(prime - 1);
        if (prime >= 2)
        {
          prime = v62;
        }
      }

      if (v52 <= prime)
      {
        v52 = prime;
      }

      if (v52 >= v35)
      {
        v35 = *(a2 + 2736);
      }

      else
      {
        if (v52)
        {
LABEL_79:
          v53 = gss::zone_mallocator::instance(prime);
          v54 = pthread_rwlock_rdlock((v53 + 32));
          if (v54)
          {
            geo::read_write_lock::logFailure(v54, "read lock", v55);
          }

          v56 = malloc_type_zone_malloc(*v53, 8 * v52, 0x2004093837F09uLL);
          atomic_fetch_add((v53 + 24), 1u);
          geo::read_write_lock::unlock((v53 + 32));
          std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::ScenePropertyID>>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::ScenePropertyID>>>,void *> *> *,gss::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::ScenePropertyID>>>,void *> *> **,0>((a2 + 2728), v56);
          v57 = 0;
          *(a2 + 2736) = v52;
          do
          {
            *(*v17 + 8 * v57++) = 0;
          }

          while (v52 != v57);
          v58 = *(a2 + 2752);
          if (v58)
          {
            v59 = v58[1];
            v60 = vcnt_s8(v52);
            v60.i16[0] = vaddlv_u8(v60);
            if (v60.u32[0] > 1uLL)
            {
              if (v59 >= v52)
              {
                v59 %= v52;
              }
            }

            else
            {
              v59 &= v52 - 1;
            }

            *(*v17 + 8 * v59) = a2 + 2752;
            v64 = *v58;
            if (*v58)
            {
              do
              {
                v65 = v64[1];
                if (v60.u32[0] > 1uLL)
                {
                  if (v65 >= v52)
                  {
                    v65 %= v52;
                  }
                }

                else
                {
                  v65 &= v52 - 1;
                }

                if (v65 != v59)
                {
                  v66 = *v17;
                  if (!*(*v17 + 8 * v65))
                  {
                    *(v66 + 8 * v65) = v58;
                    goto LABEL_106;
                  }

                  *v58 = *v64;
                  *v64 = **(v66 + 8 * v65);
                  **(v66 + 8 * v65) = v64;
                  v64 = v58;
                }

                v65 = v59;
LABEL_106:
                v58 = v64;
                v64 = *v64;
                v59 = v65;
              }

              while (v64);
            }
          }

          v35 = v52;
          goto LABEL_110;
        }

        std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::ScenePropertyID>>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::ScenePropertyID>>>,void *> *> *,gss::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::ScenePropertyID>>>,void *> *> **,0>((a2 + 2728), 0);
        v35 = 0;
        *(a2 + 2736) = 0;
      }
    }

LABEL_110:
    if ((v35 & (v35 - 1)) != 0)
    {
      if (v29 >= v35)
      {
        v7 = v29 % v35;
      }

      else
      {
        v7 = v29;
      }
    }

    else
    {
      v7 = (v35 - 1) & v29;
    }
  }

  v67 = *v17;
  v68 = *(*v17 + 8 * v7);
  if (v68)
  {
    *v44 = *v68;
  }

  else
  {
    *v44 = *(a2 + 2752);
    *(a2 + 2752) = v44;
    *(v67 + 8 * v7) = a2 + 2752;
    if (!*v44)
    {
      goto LABEL_124;
    }

    v69 = *(*v44 + 8);
    if ((v35 & (v35 - 1)) != 0)
    {
      if (v69 >= v35)
      {
        v69 %= v35;
      }
    }

    else
    {
      v69 &= v35 - 1;
    }

    v68 = (*v17 + 8 * v69);
  }

  *v68 = v44;
LABEL_124:
  ++*(a2 + 2768);
LABEL_125:
  geo::write_lock_guard::~write_lock_guard(&v71);
  *a1 = v72;
LABEL_126:
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(&v73);
}

void sub_1B2A303A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v9 = va_arg(va1, pthread_rwlock_t *);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, std::__shared_weak_count *);
  v13 = va_arg(va1, void);
  geo::read_write_lock::unlock((v5 + 32));
  std::__destroy_at[abi:nn200100]<std::pair<gss::StyleSheetResultCacheKey const,std::shared_ptr<gss::CartoStyle<gss::PropertyID>>>,0>(v4);
  v8 = gss::zone_mallocator::instance(v7);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::ScenePropertyID>>>,void *>>(v8, v3);
  geo::write_lock_guard::~write_lock_guard(va);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(va1);
  _Unwind_Resume(a1);
}

void gss::StyleMatchingTreeNode<gss::CartoStyle<gss::ScenePropertyID>>::matchAttributes(void *a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t *a5, void *a6, void *a7)
{
  v33 = *MEMORY[0x1E69E9840];
  v11 = *a5;
  v12 = *(a3 + 12);
  v13 = *a3 + *(a3 + 8);
  do
  {
    while (1)
    {
      while (1)
      {
        v14 = *a2;
        if (*a2 == 0x7FFFFFFF)
        {
          v18 = *a7 + 16 * *(a2 + 6);
          if (gss::MatchingGraphEndChain::matches(*v18, *(v18 + 8), a3))
          {
            v19 = (*a6 + 16 * *(a2 + 4));
            v20 = *v19;
            if (*v19)
            {
              *a4 = *(v20 + 112);
              v21 = v19[1];
              *a1 = v20;
              a1[1] = v21;
              if (v21)
              {
                atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
              }

              return;
            }

            v23 = GEOGetGeoCSSStyleSheetLog();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              *&buf[4] = "false";
              *&buf[12] = 2080;
              *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
              v31 = 1024;
              v32 = 382;
              _os_log_impl(&dword_1B2754000, v23, OS_LOG_TYPE_ERROR, "endchain with no style: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
            }
          }

LABEL_21:
          *a4 = 0;
          *a1 = 0;
          a1[1] = 0;
          return;
        }

        SubTreeWithValue = gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::getSubTreeWithValue(a2, 0xFFFFu, v11);
        v16 = geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(a3, v14);
        if (v16 != v12)
        {
          break;
        }

        a2 = SubTreeWithValue;
        if (!SubTreeWithValue)
        {
          goto LABEL_21;
        }
      }

      v17 = gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::getSubTreeWithValue(a2, *(v13 + 2 * v16), v11);
      if (SubTreeWithValue)
      {
        break;
      }

      a2 = v17;
      if (!v17)
      {
        goto LABEL_21;
      }
    }

    a2 = SubTreeWithValue;
  }

  while (!v17);
  v29 = 0;
  gss::StyleMatchingTreeNode<gss::CartoStyle<gss::ScenePropertyID>>::matchAttributes(buf, v17, a3, &v29 + 1, a5, a6, a7);
  gss::StyleMatchingTreeNode<gss::CartoStyle<gss::ScenePropertyID>>::matchAttributes(&v28, SubTreeWithValue, a3, &v29, a5, a6, a7);
  if (HIDWORD(v29) >= v29)
  {
    v24 = *buf;
    v22 = *(&v28 + 1);
    *a4 = HIDWORD(v29);
    *a1 = v24;
    if (v22)
    {
      goto LABEL_24;
    }
  }

  else
  {
    *a4 = v29;
    *a1 = v28;
    v22 = *&buf[8];
    if (!*&buf[8])
    {
      return;
    }

LABEL_24:
    std::__shared_weak_count::__release_shared[abi:nn200100](v22);
  }
}

void sub_1B2A306AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a18);
  }

  _Unwind_Resume(exception_object);
}

void std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::ScenePropertyID>>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::ScenePropertyID>>>,void *> *> *,gss::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::ScenePropertyID>>>,void *> *> **,0>(gss::zone_mallocator *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = gss::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::ScenePropertyID>>>,void *> *> *>(v3, v2);
  }
}

std::__shared_weak_count *gss::StylesheetQuery<gss::ScenePropertyID>::sourceCartoStyle@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  result = *(a1 + 304);
  if (result)
  {
    result = std::__shared_weak_count::lock(result);
    a2[1] = result;
    if (result)
    {
      *a2 = *(a1 + 296);
    }
  }

  return result;
}

std::__shared_weak_count *gss::StylesheetQuery<gss::ScenePropertyID>::targetCartoStyle@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  result = *(a1 + 320);
  if (result)
  {
    result = std::__shared_weak_count::lock(result);
    a2[1] = result;
    if (result)
    {
      *a2 = *(a1 + 312);
    }
  }

  return result;
}

void gss::CartoStyle<gss::ScenePropertyID>::populateStyles(unint64_t a1, uint64_t a2)
{
  v4 = 0x9DDFEA08EB382D69 * ((8 * (a1 & 0x1FFFFFFF) + 8) ^ HIDWORD(a1));
  v5 = 0x9DDFEA08EB382D69 * (HIDWORD(a1) ^ (v4 >> 47) ^ v4);
  v6 = a2 + (((9 * ((v5 >> 47) ^ v5)) & 0x1F) << 6);
  std::mutex::lock((v6 + 480));
  v8 = atomic_load((a1 + 123));
  if ((v8 & 1) == 0)
  {
    if (*(a1 + 72))
    {
LABEL_88:
      atomic_store(1u, (a1 + 123));
      goto LABEL_89;
    }

    v65 = v6;
    v9 = gss::zone_mallocator::instance(v7);
    v10 = pthread_rwlock_rdlock((v9 + 32));
    if (v10)
    {
      geo::read_write_lock::logFailure(v10, "read lock", v11);
    }

    v12 = malloc_type_zone_malloc(*v9, 0x48uLL, 0x108104076DFA842uLL);
    atomic_fetch_add((v9 + 24), 1u);
    geo::read_write_lock::unlock((v9 + 32));
    v12[1] = 0;
    v12[2] = 0;
    *v12 = &unk_1F2A30C98;
    v13 = 0uLL;
    *(v12 + 3) = 0u;
    *(v12 + 2) = 0u;
    v12[8] = 0;
    *&v14 = v12 + 4;
    *(&v14 + 1) = v12;
    v15 = *(a1 + 80);
    *(a1 + 72) = v14;
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v15);
      v13 = 0uLL;
    }

    v82 = v13;
    v83 = v13;
    v84 = 1065353216;
    v81 = 0;
    v66 = 0;
    v67 = 0;
    v68 = 256;
    v69 = 0;
    v70 = 0;
    v71 = 256;
    v72 = 0;
    v73 = 0;
    v74 = 256;
    v75 = 0;
    v76 = 0;
    v77 = 256;
    v78 = 0;
    v79 = 0;
    v80 = 256;
    gss::CartoStyle<gss::ScenePropertyID>::applyStyle(a1, &v66, a2, -1.0);
    gss::StylePropertySet<gss::ScenePropertyID>::shrink_to_fit(&v66);
    std::__hash_table<std::__hash_value_type<gss::StylePropertySet<gss::ScenePropertyID>,unsigned char>,std::__unordered_map_hasher<gss::StylePropertySet<gss::ScenePropertyID>,std::__hash_value_type<gss::StylePropertySet<gss::ScenePropertyID>,unsigned char>,std::hash<gss::StylePropertySet<gss::ScenePropertyID>>,std::equal_to<gss::StylePropertySet<gss::ScenePropertyID>>,true>,std::__unordered_map_equal<gss::StylePropertySet<gss::ScenePropertyID>,std::__hash_value_type<gss::StylePropertySet<gss::ScenePropertyID>,unsigned char>,std::equal_to<gss::StylePropertySet<gss::ScenePropertyID>>,std::hash<gss::StylePropertySet<gss::ScenePropertyID>>,true>,std::allocator<std::__hash_value_type<gss::StylePropertySet<gss::ScenePropertyID>,unsigned char>>>::__emplace_unique_key_args<gss::StylePropertySet<gss::ScenePropertyID>,gss::StylePropertySet<gss::ScenePropertyID>,unsigned char &>(&v82, &v66, &v66, &v81);
    v81 = 1;
    geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(&v78);
    geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(&v75);
    geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(&v72);
    geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(&v69);
    geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(&v66);
    v16 = 0;
    v17 = 256;
    v18 = 1;
    do
    {
      v66 = 0;
      v67 = 0;
      v68 = 256;
      v69 = 0;
      v70 = 0;
      v71 = 256;
      v72 = 0;
      v73 = 0;
      v74 = 256;
      v75 = 0;
      v76 = 0;
      v77 = 256;
      v78 = 0;
      v79 = 0;
      v80 = 256;
      gss::CartoStyle<gss::ScenePropertyID>::applyStyle(a1, &v66, a2, v16);
      gss::StylePropertySet<gss::ScenePropertyID>::shrink_to_fit(&v66);
      v19 = std::__hash_table<std::__hash_value_type<gss::StylePropertySet<gss::ScenePropertyID>,unsigned char>,std::__unordered_map_hasher<gss::StylePropertySet<gss::ScenePropertyID>,std::__hash_value_type<gss::StylePropertySet<gss::ScenePropertyID>,unsigned char>,std::hash<gss::StylePropertySet<gss::ScenePropertyID>>,std::equal_to<gss::StylePropertySet<gss::ScenePropertyID>>,true>,std::__unordered_map_equal<gss::StylePropertySet<gss::ScenePropertyID>,std::__hash_value_type<gss::StylePropertySet<gss::ScenePropertyID>,unsigned char>,std::equal_to<gss::StylePropertySet<gss::ScenePropertyID>>,std::hash<gss::StylePropertySet<gss::ScenePropertyID>>,true>,std::allocator<std::__hash_value_type<gss::StylePropertySet<gss::ScenePropertyID>,unsigned char>>>::__emplace_unique_key_args<gss::StylePropertySet<gss::ScenePropertyID>,gss::StylePropertySet<gss::ScenePropertyID>,unsigned char &>(&v82, &v66, &v66, &v81);
      if (v20)
      {
        v81 = ++v18;
      }

      *(*(a1 + 72) + v16 + 16) = *(v19 + 136);
      geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(&v78);
      geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(&v75);
      geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(&v72);
      geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(&v69);
      geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(&v66);
      ++v16;
    }

    while (v16 != 24);
    v22 = *(a1 + 72);
    if ((*(v22 + 12) & 1) == 0)
    {
      v17 = v18;
      v23 = *(v22 + 4);
      if (v23 <= v18)
      {
        if (v23 >= v18)
        {
          goto LABEL_25;
        }

        v24 = v18;
        if (*(v22 + 5) >= v18)
        {
          v28 = *v22;
        }

        else
        {
          v25 = gss::zone_mallocator::instance(v21);
          v26 = pthread_rwlock_rdlock((v25 + 32));
          if (v26)
          {
            geo::read_write_lock::logFailure(v26, "read lock", v27);
          }

          v28 = malloc_type_zone_malloc(*v25, 120 * v18, 0x1010040836E77A0uLL);
          atomic_fetch_add((v25 + 24), 1u);
          geo::read_write_lock::unlock((v25 + 32));
          v29 = *v22;
          v23 = *(v22 + 4);
          if (*v22)
          {
            if (*(v22 + 4))
            {
              v30 = *(v22 + 4);
              v31 = v28;
              do
              {
                *v31 = 0;
                *(v31 + 1) = 0;
                *(v31 + 8) = 256;
                *v31 = *v29;
                *(v31 + 2) = *(v29 + 2);
                *(v31 + 3) = *(v29 + 3);
                *(v31 + 8) = *(v29 + 8);
                *v29 = 0;
                *(v29 + 1) = 0;
                *(v29 + 8) = 256;
                *(v31 + 3) = 0;
                *(v31 + 4) = 0;
                *(v31 + 20) = 256;
                *(v31 + 3) = *(v29 + 3);
                *(v31 + 8) = *(v29 + 8);
                *(v31 + 9) = *(v29 + 9);
                *(v31 + 20) = *(v29 + 20);
                *(v29 + 3) = 0;
                *(v29 + 4) = 0;
                *(v29 + 20) = 256;
                *(v31 + 6) = 0;
                *(v31 + 7) = 0;
                *(v31 + 32) = 256;
                *(v31 + 6) = *(v29 + 6);
                *(v31 + 14) = *(v29 + 14);
                *(v31 + 15) = *(v29 + 15);
                *(v31 + 32) = *(v29 + 32);
                *(v29 + 6) = 0;
                *(v29 + 7) = 0;
                *(v29 + 32) = 256;
                *(v31 + 9) = 0;
                *(v31 + 10) = 0;
                *(v31 + 44) = 256;
                *(v31 + 9) = *(v29 + 9);
                *(v31 + 20) = *(v29 + 20);
                *(v31 + 21) = *(v29 + 21);
                *(v31 + 44) = *(v29 + 44);
                *(v29 + 9) = 0;
                *(v29 + 10) = 0;
                *(v29 + 44) = 256;
                *(v31 + 12) = 0;
                *(v31 + 13) = 0;
                *(v31 + 56) = 256;
                *(v31 + 12) = *(v29 + 12);
                *(v31 + 26) = *(v29 + 26);
                *(v31 + 27) = *(v29 + 27);
                *(v31 + 56) = *(v29 + 56);
                *(v29 + 12) = 0;
                *(v29 + 13) = 0;
                *(v29 + 56) = 256;
                v31 += 120;
                v29 += 120;
                --v30;
              }

              while (v30);
            }

            geo::intern_vector<gss::StylePropertySet<gss::ScenePropertyID>,unsigned short,geo::allocator_adapter<gss::StylePropertySet<gss::ScenePropertyID>,gss::zone_mallocator>>::deallocateStorage(v22);
            *(v22 + 4) = v23;
          }

          *(v22 + 5) = v24;
          *v22 = v28;
        }

        if (v23 != v17)
        {
          v64 = &v28[120 * v23];
          do
          {
            *(v64 + 2) = 0uLL;
            *(v64 + 3) = 0uLL;
            *(v64 + 4) = 0uLL;
            *(v64 + 5) = 0uLL;
            *(v64 + 6) = 0uLL;
            *(v64 + 13) = 0;
            *(v64 + 14) = 0;
            *v64 = 0uLL;
            *(v64 + 1) = 0uLL;
            v64[17] = 1;
            *(v64 + 3) = 0;
            *(v64 + 4) = 0;
            *(v64 + 20) = 256;
            *(v64 + 6) = 0;
            *(v64 + 7) = 0;
            *(v64 + 32) = 256;
            *(v64 + 9) = 0;
            *(v64 + 10) = 0;
            *(v64 + 44) = 256;
            *(v64 + 12) = 0;
            v64[112] = 0;
            v64[113] = 1;
            v64 += 120;
          }

          while (v64 != &v28[120 * v17]);
        }
      }

      else
      {
        geo::intern_vector<gss::StylePropertySet<gss::PropertyID>,unsigned short,geo::allocator_adapter<gss::StylePropertySet<gss::PropertyID>,gss::zone_mallocator>>::runDestructors(&(*v22)[120 * v18], &(*v22)[120 * *(v22 + 4)]);
        v24 = v18;
      }

      *(v22 + 4) = v24;
    }

LABEL_25:
    for (i = v83; i; i = *i)
    {
      v33 = **(a1 + 72) + 120 * *(i + 136);
      geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator=(v33, (i + 2));
      geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator=(v33 + 24, (i + 5));
      if ((v33 + 48) != i + 8)
      {
        geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage((v33 + 48));
        *(v33 + 48) = 0;
        *(v33 + 56) = 0;
        *(v33 + 64) = 0;
        *(v33 + 65) = 1;
        v34 = *(i + 80);
        if (v34 == 1)
        {
          *(v33 + 48) = i[8];
          *(v33 + 56) = *(i + 18);
          *(v33 + 60) = *(i + 38);
        }

        else
        {
          v35 = *(i + 38);
          if (*(i + 38))
          {
            geo::intern_linear_map<gss::ScenePropertyID,unsigned int,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::reallocate((v33 + 48), *(i + 38), 0);
            v35 = *(i + 38);
          }

          v36 = 0;
          v37 = 0;
          v38 = 0;
          while (v37 != v35 && geo::intern_linear_map<gss::ScenePropertyID,unsigned int,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::isSpaceAvailable((v33 + 48)))
          {
            if ((v38 & 1) == 0 && v37 < *(i + 38))
            {
              v39 = i[8];
              v36 = (v39 + v37);
              v17 = v39 + *(i + 18) + 4 * v37;
              v38 = 1;
            }

            v40 = *(v33 + 60);
            v41 = *(v33 + 48);
            *(v41 + v40) = *v36;
            *(v41 + *(v33 + 56) + 4 * v40) = *v17;
            *(v33 + 60) = v40 + 1;
            if (v37 + 1 < *(i + 38))
            {
              ++v37;
            }

            else
            {
              v37 = *(i + 38);
            }

            if (v38)
            {
              v38 = 0;
            }
          }

          LOBYTE(v34) = *(i + 80);
        }

        *(v33 + 64) = v34;
        *(v33 + 65) = *(i + 81);
      }

      if ((v33 + 72) != i + 11)
      {
        geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage((v33 + 72));
        *(v33 + 72) = 0;
        *(v33 + 80) = 0;
        *(v33 + 88) = 0;
        *(v33 + 89) = 1;
        v42 = *(i + 104);
        if (v42 == 1)
        {
          *(v33 + 72) = i[11];
          *(v33 + 80) = *(i + 24);
          *(v33 + 84) = *(i + 50);
        }

        else
        {
          v43 = *(i + 50);
          if (*(i + 50))
          {
            geo::intern_linear_map<gss::ScenePropertyID,unsigned long long,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::reallocate(v33 + 72, *(i + 50), 0);
            v43 = *(i + 50);
          }

          v44 = 0;
          v45 = 0;
          v46 = 0;
          while (v45 != v43 && geo::intern_linear_map<gss::ScenePropertyID,unsigned long long,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::isSpaceAvailable(v33 + 72))
          {
            if ((v46 & 1) == 0 && v45 < *(i + 50))
            {
              v47 = i[11];
              v44 = (v47 + v45);
              v17 = v47 + *(i + 24) + 8 * v45;
              v46 = 1;
            }

            v48 = *(v33 + 84);
            v49 = *(v33 + 72);
            *(v49 + v48) = *v44;
            *(v49 + *(v33 + 80) + 8 * v48) = *v17;
            *(v33 + 84) = v48 + 1;
            if (v45 + 1 < *(i + 50))
            {
              ++v45;
            }

            else
            {
              v45 = *(i + 50);
            }

            if (v46)
            {
              v46 = 0;
            }
          }

          LOBYTE(v42) = *(i + 104);
        }

        *(v33 + 88) = v42;
        *(v33 + 89) = *(i + 105);
      }

      if ((v33 + 96) != i + 14)
      {
        geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage((v33 + 96));
        *(v33 + 96) = 0;
        *(v33 + 104) = 0;
        *(v33 + 112) = 0;
        *(v33 + 113) = 1;
        v50 = *(i + 128);
        if (v50 == 1)
        {
          *(v33 + 96) = i[14];
          *(v33 + 104) = *(i + 30);
          *(v33 + 108) = *(i + 62);
        }

        else
        {
          v51 = *(i + 62);
          if (*(i + 62))
          {
            geo::intern_linear_map<gss::ScenePropertyID,gss::StylePropertySetInternObject,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::reallocate((v33 + 96), *(i + 62), 0);
            v51 = *(i + 62);
          }

          v52 = 0;
          v53 = 0;
          v54 = 0;
          while (v53 != v51 && geo::intern_linear_map<gss::ScenePropertyID,gss::StylePropertySetInternObject,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::isSpaceAvailable((v33 + 96)))
          {
            if ((v54 & 1) == 0 && v53 < *(i + 62))
            {
              v55 = i[14];
              v52 = (v55 + v53);
              v17 = v55 + *(i + 30) + 16 * v53;
              v54 = 1;
            }

            v56 = *(v33 + 108);
            v57 = *(v33 + 96);
            *(v57 + v56) = *v52;
            *(v57 + *(v33 + 104) + 16 * v56) = *v17;
            ++*(v33 + 108);
            if (v53 + 1 < *(i + 62))
            {
              ++v53;
            }

            else
            {
              v53 = *(i + 62);
            }

            if (v54)
            {
              v54 = 0;
            }
          }

          LOBYTE(v50) = *(i + 128);
        }

        *(v33 + 112) = v50;
        *(v33 + 113) = *(i + 129);
      }
    }

    std::mutex::lock((a2 + 168));
    v58 = *(a1 + 72);
    v6 = v65;
    if (*(v58 + 8))
    {
      v59 = *v58;
      v60 = 120 * *(v58 + 8);
      do
      {
        gss::StylePropertySet<gss::ScenePropertyID>::intern(v59, a2 + 232);
        v59 += 120;
        v60 -= 120;
      }

      while (v60);
    }

    std::mutex::unlock((a2 + 168));
    std::__hash_table<std::__hash_value_type<gss::StylePropertySet<gss::PropertyID>,unsigned char>,std::__unordered_map_hasher<gss::StylePropertySet<gss::PropertyID>,std::__hash_value_type<gss::StylePropertySet<gss::PropertyID>,unsigned char>,std::hash<gss::StylePropertySet<gss::PropertyID>>,std::equal_to<gss::StylePropertySet<gss::PropertyID>>,true>,std::__unordered_map_equal<gss::StylePropertySet<gss::PropertyID>,std::__hash_value_type<gss::StylePropertySet<gss::PropertyID>,unsigned char>,std::equal_to<gss::StylePropertySet<gss::PropertyID>>,std::hash<gss::StylePropertySet<gss::PropertyID>>,true>,std::allocator<std::__hash_value_type<gss::StylePropertySet<gss::PropertyID>,unsigned char>>>::~__hash_table(&v82);
    goto LABEL_88;
  }

LABEL_89:
  std::mutex::unlock((v6 + 480));
  if (*(a1 + 64))
  {
    v61 = *(a1 + 56);
    v62 = 16 * *(a1 + 64);
    do
    {
      v63 = *v61;
      v61 += 2;
      gss::CartoStyle<gss::ScenePropertyID>::populateStyles(v63, a2);
      v62 -= 16;
    }

    while (v62);
  }

  atomic_store(1u, (a1 + 122));
}

void sub_1B2A3109C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  geo::read_write_lock::unlock((v10 + 32));
  std::__hash_table<std::__hash_value_type<gss::StylePropertySet<gss::PropertyID>,unsigned char>,std::__unordered_map_hasher<gss::StylePropertySet<gss::PropertyID>,std::__hash_value_type<gss::StylePropertySet<gss::PropertyID>,unsigned char>,std::hash<gss::StylePropertySet<gss::PropertyID>>,std::equal_to<gss::StylePropertySet<gss::PropertyID>>,true>,std::__unordered_map_equal<gss::StylePropertySet<gss::PropertyID>,std::__hash_value_type<gss::StylePropertySet<gss::PropertyID>,unsigned char>,std::equal_to<gss::StylePropertySet<gss::PropertyID>>,std::hash<gss::StylePropertySet<gss::PropertyID>>,true>,std::allocator<std::__hash_value_type<gss::StylePropertySet<gss::PropertyID>,unsigned char>>>::~__hash_table(v11 - 128);
  std::mutex::unlock((a10 + 480));
  _Unwind_Resume(a1);
}

_BYTE *gss::CartoStyle<gss::ScenePropertyID>::applyStyle(uint64_t a1, _BYTE *a2, uint64_t a3, float a4)
{
  if (a3 && *(a1 + 32))
  {
    v8 = *(a1 + 24);
    v9 = 4 * *(a1 + 32);
    do
    {
      v10 = *v8++;
      gss::CartoStyle<gss::ScenePropertyID>::applyStyle(*(*(a3 + 64) + 16 * v10), a2, a3, a4);
      v9 -= 4;
    }

    while (v9);
  }

  result = gss::StylePropertySet<gss::ScenePropertyID>::unionWith(a2, *(a1 + 88));
  if (*(a1 + 48))
  {
    v12 = *(a1 + 40);
    v13 = 24 * *(a1 + 48);
    v14 = (v12 + 8);
    do
    {
      if (*(v14 - 2) + -0.001 <= a4 && *(v14 - 1) > a4)
      {
        result = gss::StylePropertySet<gss::ScenePropertyID>::unionWith(a2, *v14);
      }

      v14 += 3;
      v13 -= 24;
    }

    while (v13);
  }

  return result;
}

_BYTE *gss::StylePropertySet<gss::ScenePropertyID>::unionWith(_BYTE *result, uint64_t a2)
{
  v4 = result;
  if ((result[16] & 1) == 0)
  {
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = *(a2 + 12);
    v46 = v45;
    while (v43 != v45)
    {
      if (v44 & 1 | (v43 >= v46))
      {
        v47 = v44;
      }

      else
      {
        v42 = (*a2 + v43);
        v2 = &v42[*(a2 + 8)];
        v47 = 1;
      }

      result = geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v4, *v42);
      if (result == *(v4 + 6))
      {
        result = geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::isSpaceAvailable(v4);
        if (!result)
        {
          break;
        }

        v48 = (v47 & 1 | (v43 >= *(a2 + 12))) == 0;
        if (!(v47 & 1 | (v43 >= *(a2 + 12))))
        {
          v42 = (*a2 + v43);
          v2 = &v42[*(a2 + 8)];
        }

        v49 = &(*v4)[*(v4 + 6)];
        *v49 = *v42;
        v49[*(v4 + 2)] = *v2;
        if (v48)
        {
          v47 = 1;
        }

        ++*(v4 + 6);
        *(v4 + 17) = 0;
        v46 = *(a2 + 12);
      }

      if (v43 + 1 < v46)
      {
        ++v43;
      }

      else
      {
        v43 = v46;
      }

      if (v47)
      {
        v44 = 0;
      }

      else
      {
        v44 = v47;
      }
    }
  }

  v5 = *(a2 + 36);
  if (*(a2 + 36))
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = *(a2 + 36);
    do
    {
      if ((v8 >= v9) | v6 & 1)
      {
        v10 = v6;
      }

      else
      {
        v7 = (*(a2 + 24) + v8);
        v2 = &v7[*(a2 + 32)];
        v10 = 1;
      }

      v11 = *v2;
      result = geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[]((v4 + 3), *v7);
      *result = v11;
      v9 = *(a2 + 36);
      if (v8 + 1 < v9)
      {
        ++v8;
      }

      else
      {
        v8 = *(a2 + 36);
      }

      if (v10)
      {
        v6 = 0;
      }

      else
      {
        v6 = v10;
      }
    }

    while (v8 != v5);
  }

  v12 = *(a2 + 60);
  if (*(a2 + 60))
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = *(a2 + 60);
    do
    {
      v17 = *(a2 + 48);
      v18 = (v17 + v15);
      v19 = v17 + *(a2 + 56) + 4 * v15;
      if ((v15 >= v16) | v13 & 1)
      {
        v20 = v13;
      }

      else
      {
        v14 = v18;
        v2 = v19;
        v20 = 1;
      }

      v21 = *v2;
      result = geo::intern_linear_map<gss::ScenePropertyID,unsigned int,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](v4 + 6, *v14);
      *result = v21;
      v16 = *(a2 + 60);
      if (v15 + 1 < v16)
      {
        ++v15;
      }

      else
      {
        v15 = *(a2 + 60);
      }

      if (v20)
      {
        v13 = 0;
      }

      else
      {
        v13 = v20;
      }
    }

    while (v15 != v12);
  }

  v22 = *(a2 + 84);
  if (*(a2 + 84))
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = *(a2 + 84);
    do
    {
      v27 = *(a2 + 72);
      v28 = (v27 + v25);
      v29 = v27 + *(a2 + 80) + 8 * v25;
      if ((v25 >= v26) | v23 & 1)
      {
        v30 = v23;
      }

      else
      {
        v24 = v28;
        v2 = v29;
        v30 = 1;
      }

      v31 = *v2;
      result = geo::intern_linear_map<gss::ScenePropertyID,unsigned long long,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](v4 + 9, *v24);
      *result = v31;
      v26 = *(a2 + 84);
      if (v25 + 1 < v26)
      {
        ++v25;
      }

      else
      {
        v25 = *(a2 + 84);
      }

      if (v30)
      {
        v23 = 0;
      }

      else
      {
        v23 = v30;
      }
    }

    while (v25 != v22);
  }

  v32 = *(a2 + 108);
  if (*(a2 + 108))
  {
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = *(a2 + 108);
    do
    {
      v37 = (v33 >= v36) | v35;
      v38 = *(a2 + 96);
      v39 = (v38 + v33);
      v40 = v38 + *(a2 + 104) + 16 * v33;
      if (v37)
      {
        v41 = v35;
      }

      else
      {
        v41 = 1;
      }

      if ((v37 & 1) == 0)
      {
        v2 = v40;
        v34 = v39;
      }

      result = geo::intern_linear_map<gss::ScenePropertyID,gss::StylePropertySetInternObject,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](v4 + 12, *v34);
      *result = *v2;
      v36 = *(a2 + 108);
      if (v33 + 1 < v36)
      {
        ++v33;
      }

      else
      {
        v33 = *(a2 + 108);
      }

      if (v41)
      {
        v35 = 0;
      }

      else
      {
        v35 = v41;
      }
    }

    while (v33 != v32);
  }

  return result;
}

uint64_t gdc::Registry::storage<md::components::FlexClientStateChanged>(uint64_t a1)
{
  v3 = 0x6F78D65E6A19A54BLL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x6F78D65E6A19A54BuLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

void gss::StylePropertySet<gss::ScenePropertyID>::shrink_to_fit(uint64_t a1)
{
  geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::shrink_to_fit(a1);
  geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::shrink_to_fit((a1 + 24));
  if ((*(a1 + 64) & 1) == 0)
  {
    v2 = *(a1 + 60);
    v3 = *(a1 + 62);
    if (v2 != v3 || (*(a1 + 65) & 1) == 0)
    {
      geo::intern_linear_map<gss::ScenePropertyID,unsigned int,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::reallocate((a1 + 48), v2, v2 == v3 || (*(a1 + 65) & 1) == 0);
    }
  }

  if ((*(a1 + 88) & 1) == 0)
  {
    v4 = *(a1 + 84);
    v5 = *(a1 + 86);
    if (v4 != v5 || (*(a1 + 89) & 1) == 0)
    {
      geo::intern_linear_map<gss::ScenePropertyID,unsigned long long,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::reallocate(a1 + 72, v4, v4 == v5 || (*(a1 + 89) & 1) == 0);
    }
  }

  if ((*(a1 + 112) & 1) == 0)
  {
    v6 = *(a1 + 108);
    v7 = *(a1 + 110);
    v8 = *(a1 + 113);
    if (v6 != v7 || (*(a1 + 113) & 1) == 0)
    {

      geo::intern_linear_map<gss::ScenePropertyID,gss::StylePropertySetInternObject,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::reallocate((a1 + 96), v6, v6 == v7 || (v8 & 1) == 0);
    }
  }
}

void geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::shrink_to_fit(gss::zone_mallocator *result)
{
  if ((*(result + 16) & 1) == 0)
  {
    v1 = *(result + 6);
    v2 = *(result + 7);
    if (v1 != v2 || (*(result + 17) & 1) == 0)
    {
      geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::reallocate(result, v1, v1 == v2 || (*(result + 17) & 1) == 0);
    }
  }
}

uint64_t std::pair<unsigned short &,std::vector<md::MeshRenderable *> &>::operator=[abi:nn200100]<unsigned short const,std::vector<md::MeshRenderable *>,0>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  **a1 = *a2;
  if (v3 != (a2 + 8))
  {
    v4 = *(a2 + 8);
    v5 = *(a2 + 16);
    v6 = v5 - v4;
    v7 = v3[2];
    v8 = *v3;
    if (v7 - *v3 < (v5 - v4))
    {
      v9 = v6 >> 3;
      if (v8)
      {
        v3[1] = v8;
        operator delete(v8);
        v7 = 0;
        *v3 = 0;
        v3[1] = 0;
        v3[2] = 0;
      }

      if (!(v9 >> 61))
      {
        v10 = v7 >> 2;
        if (v7 >> 2 <= v9)
        {
          v10 = v6 >> 3;
        }

        if (v7 >= 0x7FFFFFFFFFFFFFF8)
        {
          v11 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        std::vector<gdc::Registry *>::__vallocate[abi:nn200100](v3, v11);
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v12 = v3[1];
    v13 = v12 - v8;
    if (v12 - v8 >= v6)
    {
      if (v5 != v4)
      {
        memmove(v8, v4, v5 - v4);
      }

      v15 = &v8[v6];
    }

    else
    {
      v14 = &v4[v13];
      if (v12 != v8)
      {
        memmove(*v3, *(a2 + 8), v13);
        v12 = v3[1];
      }

      if (v5 != v14)
      {
        memmove(v12, v14, v5 - v14);
      }

      v15 = &v12[v5 - v14];
    }

    v3[1] = v15;
  }

  return a1;
}

unsigned __int8 **std::__hash_table<std::__hash_value_type<gss::StylePropertySet<gss::ScenePropertyID>,unsigned char>,std::__unordered_map_hasher<gss::StylePropertySet<gss::ScenePropertyID>,std::__hash_value_type<gss::StylePropertySet<gss::ScenePropertyID>,unsigned char>,std::hash<gss::StylePropertySet<gss::ScenePropertyID>>,std::equal_to<gss::StylePropertySet<gss::ScenePropertyID>>,true>,std::__unordered_map_equal<gss::StylePropertySet<gss::ScenePropertyID>,std::__hash_value_type<gss::StylePropertySet<gss::ScenePropertyID>,unsigned char>,std::equal_to<gss::StylePropertySet<gss::ScenePropertyID>>,std::hash<gss::StylePropertySet<gss::ScenePropertyID>>,true>,std::allocator<std::__hash_value_type<gss::StylePropertySet<gss::ScenePropertyID>,unsigned char>>>::__emplace_unique_key_args<gss::StylePropertySet<gss::ScenePropertyID>,gss::StylePropertySet<gss::ScenePropertyID>,unsigned char &>(float *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a2 + 12);
  if (*(a2 + 12))
  {
    v8 = 0;
    LODWORD(v4) = 0;
    v9 = 0;
    v10 = 0;
    do
    {
      if (!((v10 >= v7) | v4 & 1))
      {
        v9 = (*a2 + v10);
        LODWORD(v4) = 1;
      }

      v8 ^= (v8 << 6) - 0x61C8864680B583EBLL + (v8 >> 2) + *v9;
      v5 = v10 + 1;
      if (v4)
      {
        v4 = 0;
      }

      else
      {
        v4 = v4;
      }

      if (v5 < v7)
      {
        ++v10;
      }

      else
      {
        v10 = *(a2 + 12);
      }
    }

    while (v5 < v7);
  }

  else
  {
    v8 = 0;
  }

  v11 = *(a2 + 36);
  if (*(a2 + 36))
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = *(a2 + 24);
    v4 = v15 + *(a2 + 32);
    do
    {
      if (!((v14 >= v11) | v12 & 1))
      {
        v13 = (v15 + v14);
        v5 = v4 + v14;
        v12 = 1;
      }

      v16 = ((v8 << 6) - 0x61C8864680B583EBLL + (v8 >> 2) + *v13) ^ v8;
      v8 = (*v5 - 0x61C8864680B583EBLL + (v16 << 6) + (v16 >> 2)) ^ v16;
      v17 = v14 + 1;
      if (v12)
      {
        v12 = 0;
      }

      if (v17 < v11)
      {
        ++v14;
      }

      else
      {
        v14 = *(a2 + 36);
      }
    }

    while (v17 < v11);
  }

  v18 = *(a2 + 60);
  if (*(a2 + 60))
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = *(a2 + 48);
    do
    {
      if (!((v21 >= v18) | v19 & 1))
      {
        v20 = (v22 + v21);
        v4 = v22 + *(a2 + 56) + 4 * v21;
        v19 = 1;
      }

      v23 = ((v8 << 6) - 0x61C8864680B583EBLL + (v8 >> 2) + *v20) ^ v8;
      v8 = (*v4 - 0x61C8864680B583EBLL + (v23 << 6) + (v23 >> 2)) ^ v23;
      v24 = v21 + 1;
      if (v19)
      {
        v19 = 0;
      }

      if (v24 < v18)
      {
        ++v21;
      }

      else
      {
        v21 = *(a2 + 60);
      }
    }

    while (v24 < v18);
  }

  v25 = *(a2 + 84);
  if (*(a2 + 84))
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = *(a2 + 72);
    do
    {
      if (!((v28 >= v25) | v26 & 1))
      {
        v27 = (v29 + v28);
        v4 = v29 + *(a2 + 80) + 8 * v28;
        v26 = 1;
      }

      v30 = ((v8 << 6) - 0x61C8864680B583EBLL + (v8 >> 2) + *v27) ^ v8;
      v8 = (*v4 - 0x61C8864680B583EBLL + (v30 << 6) + (v30 >> 2)) ^ v30;
      v31 = v28 + 1;
      if (v26)
      {
        v26 = 0;
      }

      if (v31 < v25)
      {
        ++v28;
      }

      else
      {
        v28 = *(a2 + 84);
      }
    }

    while (v31 < v25);
  }

  v114 = *(a2 + 60);
  v32 = *(a2 + 108);
  if (*(a2 + 108))
  {
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = *(a2 + 96);
    v37 = v36 + *(a2 + 104);
    while (1)
    {
      if ((v33 >= v32) | v35 & 1)
      {
        v38 = v35;
      }

      else
      {
        v38 = 1;
      }

      if (!((v33 >= v32) | v35 & 1))
      {
        v6 = (v37 + 16 * v33);
        v34 = (v36 + v33);
      }

      v8 ^= (v8 << 6) - 0x61C8864680B583EBLL + (v8 >> 2) + *v34;
      v39 = *v6;
      if (v39 == 2)
      {
        break;
      }

      if (v39 == 1)
      {
        v40 = *(v6 + 1);
        v41 = *(v40 + 23);
        if (v41 >= 0)
        {
          v42 = *(v6 + 1);
        }

        else
        {
          v42 = *v40;
        }

        if (v41 >= 0)
        {
          v43 = *(v40 + 23);
        }

        else
        {
          v43 = *(v40 + 8);
        }

        v44 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v42, v43);
        goto LABEL_61;
      }

LABEL_62:
      v45 = v33 + 1;
      if (v38)
      {
        v35 = 0;
      }

      else
      {
        v35 = v38;
      }

      if (v45 < v32)
      {
        ++v33;
      }

      else
      {
        v33 = v32;
      }

      if (v45 >= v32)
      {
        goto LABEL_69;
      }
    }

    v44 = std::hash<gss::DashPattern>::operator()(*(v6 + 1));
LABEL_61:
    v8 ^= (v8 << 6) - 0x61C8864680B583EBLL + (v8 >> 2) + v44;
    goto LABEL_62;
  }

LABEL_69:
  v46 = *(a1 + 2);
  if (!*&v46)
  {
    goto LABEL_173;
  }

  v47 = vcnt_s8(v46);
  v47.i16[0] = vaddlv_u8(v47);
  v48 = v47.u32[0];
  if (v47.u32[0] > 1uLL)
  {
    v49 = v8;
    v50 = a2;
    if (v8 >= *&v46)
    {
      v49 = v8 % *&v46;
    }
  }

  else
  {
    v49 = (*&v46 - 1) & v8;
    v50 = a2;
  }

  v51 = *(*a1 + 8 * v49);
  if (!v51 || (v52 = *v51) == 0)
  {
LABEL_173:
    operator new();
  }

  v116 = *(v50 + 48) + *(v50 + 56);
  v117 = *(v50 + 48);
  v111 = *(v50 + 72) + *(v50 + 80);
  v112 = *(v50 + 72);
  v109 = *(v50 + 96) + *(v50 + 104);
  v110 = *(v50 + 96);
  while (1)
  {
    v53 = v52[1];
    if (v53 != v8)
    {
      if (v48 > 1)
      {
        if (v53 >= *&v46)
        {
          v53 %= *&v46;
        }
      }

      else
      {
        v53 &= *&v46 - 1;
      }

      if (v53 != v49)
      {
        goto LABEL_173;
      }

      goto LABEL_172;
    }

    if (geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator==<geo::allocator_adapter<unsigned char,gss::zone_mallocator>>(v52 + 2, v50))
    {
      if (geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator==<geo::allocator_adapter<unsigned char,gss::zone_mallocator>>(v52 + 5, (v50 + 24)))
      {
        v56 = *(v52 + 38);
        if (v56 == v114)
        {
          if (v114)
          {
            v57 = 0;
            v58 = v52[8];
            while (v58[v57] == *(v117 + v57) && *&v58[4 * v57 + *(v52 + 18)] == *(v116 + 4 * v57))
            {
              if (v56 == ++v57)
              {
                goto LABEL_87;
              }
            }

            goto LABEL_172;
          }

LABEL_87:
          v59 = *(v52 + 50);
          if (v59 == v25)
          {
            if (v25)
            {
              v60 = 0;
              v61 = v52[11];
              while (v61[v60] == *(v112 + v60) && *&v61[8 * v60 + *(v52 + 24)] == *(v111 + 8 * v60))
              {
                if (v59 == ++v60)
                {
                  goto LABEL_93;
                }
              }

              goto LABEL_172;
            }

LABEL_93:
            if (*(v52 + 62) == v32)
            {
              break;
            }
          }
        }
      }
    }

LABEL_172:
    v52 = *v52;
    if (!v52)
    {
      goto LABEL_173;
    }
  }

  if (v32)
  {
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v66 = 0;
    v67 = 0;
    while (1)
    {
      if (v64 < v32 && (v62 & 1) == 0)
      {
        v68 = v52[14];
        v63 = &v68[v64];
        v54 = &v68[16 * v64 + *(v52 + 30)];
        v62 = 1;
      }

      v69 = v65 | (v67 >= v32);
      v70 = v65 & 1 | (v67 >= v32) ? v66 : (v110 + v67);
      v71 = v65 & 1 | (v67 >= v32) ? v65 : 1;
      if (*v63 != *v70)
      {
        goto LABEL_172;
      }

      if (v64 < v32 && (v62 & 1) == 0)
      {
        v72 = v52[14];
        v63 = &v72[v64];
        v54 = &v72[16 * v64 + *(v52 + 30)];
        v62 = 1;
      }

      v73 = *v54;
      if (v71 & 1 | (v67 >= v32))
      {
        v66 = v70;
      }

      else
      {
        v66 = (v110 + v67);
      }

      if (v71 & 1 | (v67 >= v32))
      {
        v74 = v71;
      }

      else
      {
        v74 = 1;
      }

      if (((v71 & 1 | (v67 >= v32)) & v69) == 0)
      {
        v55 = (v109 + 16 * v67);
      }

      if (v73 != *v55)
      {
        goto LABEL_172;
      }

      if (v64 < v32 && (v62 & 1) == 0)
      {
        v75 = v52[14];
        v63 = &v75[v64];
        v54 = &v75[16 * v64 + *(v52 + 30)];
        v73 = *v54;
        v62 = 1;
      }

      if (v73 == 2)
      {
        v98 = v66;
        v93 = (v110 + v67);
        if (v64 < v32 && (v62 & 1) == 0)
        {
          v88 = v52[14];
          v63 = &v88[v64];
          v54 = &v88[16 * v64 + *(v52 + 30)];
          v62 = 1;
        }

        v100 = v62;
        v102 = v54;
        v104 = v63;
        v89 = v74 | (v67 >= v32);
        if (!(v74 & 1 | (v67 >= v32)))
        {
          v55 = (v109 + 16 * v67);
        }

        v106 = v55;
        v108 = v64;
        v94 = v67;
        v96 = v74;
        v90 = gss::DashPattern::operator==(v54[1], *(v55 + 1));
        v67 = v94;
        v74 = v96;
        v62 = v100;
        v54 = v102;
        v63 = v104;
        v55 = v106;
        v64 = v108;
        v66 = v98;
        if (!v90)
        {
          goto LABEL_172;
        }

        if ((v89 & 1) == 0)
        {
          v74 = 1;
          v66 = v93;
        }
      }

      else if (v73 == 1)
      {
        if (v64 < v32 && (v62 & 1) == 0)
        {
          v76 = v52[14];
          v63 = &v76[v64];
          v54 = &v76[16 * v64 + *(v52 + 30)];
          v62 = 1;
        }

        v77 = v54[1];
        v78 = v74 | (v67 >= v32);
        if (!(v74 & 1 | (v67 >= v32)))
        {
          v55 = (v109 + 16 * v67);
        }

        v79 = *(v55 + 1);
        v80 = *(v77 + 23);
        if (v80 >= 0)
        {
          v81 = *(v77 + 23);
        }

        else
        {
          v81 = *(v77 + 1);
        }

        v82 = *(v79 + 23);
        v83 = v82;
        if ((v82 & 0x80u) != 0)
        {
          v82 = *(v79 + 8);
        }

        if (v81 != v82)
        {
          goto LABEL_172;
        }

        if (!(v74 & 1 | (v67 >= v32)))
        {
          v74 = 1;
        }

        v95 = v74;
        if ((v78 & 1) == 0)
        {
          v66 = (v110 + v67);
        }

        v97 = v66;
        v84 = v80 >= 0 ? v54[1] : *v77;
        v103 = v63;
        v105 = v55;
        v85 = v83 >= 0 ? *(v55 + 1) : *v79;
        v107 = v64;
        v86 = v67;
        v101 = v54;
        v99 = v62;
        v87 = memcmp(v84, v85, v81);
        v74 = v95;
        v66 = v97;
        v62 = v99;
        v54 = v101;
        v63 = v103;
        v55 = v105;
        v64 = v107;
        if (v87)
        {
          goto LABEL_172;
        }

        v67 = v86;
      }

      v91 = v64 + 1;
      if (v62)
      {
        v62 = 0;
      }

      if (v67 + 1 < v32)
      {
        ++v67;
      }

      else
      {
        v67 = v32;
      }

      if (v74)
      {
        v65 = 0;
      }

      else
      {
        v65 = v74;
      }

      if (v91 < v32)
      {
        ++v64;
      }

      else
      {
        v64 = v32;
      }

      if (v91 >= v32)
      {
        return v52;
      }
    }
  }

  return v52;
}

void sub_1B2A32508(_Unwind_Exception *a1)
{
  v7 = v1;
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(v6);
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(v5);
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(v4);
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(v3);
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(v7);
  operator delete(v2);
  _Unwind_Resume(a1);
}

uint64_t geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator==<geo::allocator_adapter<unsigned char,gss::zone_mallocator>>(unsigned __int8 **a1, unsigned __int8 **a2)
{
  v2 = *(a1 + 6);
  if (v2 == *(a2 + 6))
  {
    if (!*(a1 + 6))
    {
      return 1;
    }

    v3 = *a1;
    for (i = *a2; *v3 == *i && v3[*(a1 + 2)] == i[*(a2 + 2)]; ++i)
    {
      ++v3;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 256;
    v5 = *(a2 + 16);
    if (v5 == 1)
    {
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 12) = *(a2 + 12);
    }

    else
    {
      v6 = *(a2 + 12);
      if (*(a2 + 12))
      {
        geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::reallocate(a1, *(a2 + 12), 0);
        v6 = *(a2 + 12);
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (v8 != v6 && geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::isSpaceAvailable(a1))
      {
        if (v9 & 1 | (v8 >= *(a2 + 12)))
        {
          v10 = v9;
        }

        else
        {
          v7 = (*a2 + v8);
          v2 = &v7[*(a2 + 8)];
          v10 = 1;
        }

        v11 = (*a1 + *(a1 + 12));
        *v11 = *v7;
        v11[*(a1 + 8)] = *v2;
        ++*(a1 + 12);
        if (v8 + 1 < *(a2 + 12))
        {
          ++v8;
        }

        else
        {
          v8 = *(a2 + 12);
        }

        if (v10)
        {
          v9 = 0;
        }

        else
        {
          v9 = v10;
        }
      }

      LOBYTE(v5) = *(a2 + 16);
    }

    *(a1 + 16) = v5;
    *(a1 + 17) = *(a2 + 17);
  }

  return a1;
}

uint64_t ecs2::BasicRegistry<void>::add<md::ls::PassDeviceCapabilities>(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassDeviceCapabilities>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PassDeviceCapabilities>();
    *algn_1EB83CB38 = 0x6738F9098C50E08CLL;
    qword_1EB83CB40 = "md::ls::PassDeviceCapabilities]";
    qword_1EB83CB48 = 30;
  }

  v56 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassDeviceCapabilities>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::PassDeviceCapabilities>(a1);
  v7 = v6;
  v8 = a2 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v8 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((a2 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    *(*(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + (v13 & 0x3F)) = *a3;
    LODWORD(a2) = (a2 >> 16) << 16;
    goto LABEL_55;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = a2 | (WORD1(a2) << 16);
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = a2 | (WORD1(a2) << 16);
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = a2;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v54 = v27;
    v55 = a3;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    v53 = v27 >> 6;
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_61;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v27 = v32 - v44;
      v45 = *(v7 + 96);
      if (v27 > (v45 - v43) >> 4)
      {
        v46 = v45 - v42;
        v47 = v46 >> 3;
        if (v46 >> 3 <= v32)
        {
          v47 = v28 + 1;
        }

        if (v46 >= 0x7FFFFFFFFFFFFFF0)
        {
          v48 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v48 = v47;
        }

        if (!(v48 >> 60))
        {
          operator new();
        }

LABEL_61:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v27);
      *(v7 + 88) = v43 + 16 * v27;
      v28 = v53;
      LOBYTE(v27) = v54;
    }

    else if (v32 < v44)
    {
      *(v7 + 88) = v42 + 16 * v32;
    }

    v30 = *(v7 + 56);
    a3 = v55;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  *(*(v30 + 8 * v28) + (v27 & 0x3F)) = *a3;
  v49 = *(v7 + 152);
  v50 = *(v7 + 160);
  while (v49 != v50)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v49 + 24), a2);
    v49 += 32;
  }

LABEL_55:
  v51 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v51 + ((v56 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v56;

  return ecs2::BasicRegistry<void>::didWrite<md::ls::PassDeviceCapabilities>(a1);
}

void md::FrameGraphBuilder::assignPhysicalResource<ggl::Texture>(void *a1, char *a2, uint64_t a3)
{
  v6 = a1[23];
  v7 = *a2;
  v8 = *(v6 + 552);
  if (!v8)
  {
    geo::Pool<std::array<unsigned char,24ul>>::allocateSlab((v6 + 512));
    v8 = *(v6 + 552);
  }

  *(v6 + 552) = *v8;
  *(v8 + 8) = v7;
  *(v8 + 16) = a3;
  *v8 = &unk_1F2A36150;
  v9 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ (a2 >> 32));
  v10 = 0x9DDFEA08EB382D69 * ((a2 >> 32) ^ (v9 >> 47) ^ v9);
  v11 = 0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47));
  v12 = a1[12];
  if (!*&v12)
  {
    goto LABEL_20;
  }

  v13 = vcnt_s8(v12);
  v13.i16[0] = vaddlv_u8(v13);
  if (v13.u32[0] > 1uLL)
  {
    v14 = 0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47));
    if (v11 >= *&v12)
    {
      v14 = v11 % *&v12;
    }
  }

  else
  {
    v14 = v11 & (*&v12 - 1);
  }

  v15 = *(a1[11] + 8 * v14);
  if (!v15 || (v16 = *v15) == 0)
  {
LABEL_20:
    operator new();
  }

  while (1)
  {
    v17 = v16[1];
    if (v17 == v11)
    {
      break;
    }

    if (v13.u32[0] > 1uLL)
    {
      if (v17 >= *&v12)
      {
        v17 %= *&v12;
      }
    }

    else
    {
      v17 &= *&v12 - 1;
    }

    if (v17 != v14)
    {
      goto LABEL_20;
    }

LABEL_12:
    v16 = *v16;
    if (!v16)
    {
      goto LABEL_20;
    }
  }

  if (v16[2] != a2)
  {
    goto LABEL_12;
  }

  v16[3] = v8;
}

void *md::LayoutContext::get<md::FlyoverCompleteTileDataContext>(void *a1)
{
  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0xD3D7935EF848FCE7);
  if (result)
  {
    v2 = result[5];
    if (*(v2 + 8) == 0xD3D7935EF848FCE7)
    {
      return *(v2 + 32);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t gss::BaseRenderStyle<gss::ScenePropertyID>::BaseRenderStyle(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  *a1 = a2;
  *(a1 + 10) = 1;
  *(a1 + 64) = 0;
  *(a1 + 69) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 45) = 0u;
  v7 = *a3;
  v8 = a3[1];
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    v9 = *(a1 + 24);
    *(a1 + 16) = v7;
    *(a1 + 24) = v8;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v9);
    }
  }

  else
  {
    *(a1 + 16) = v7;
    *(a1 + 24) = 0;
  }

  v11 = *a4;
  v10 = a4[1];
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = *(a1 + 40);
  *(a1 + 32) = v11;
  *(a1 + 40) = v10;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  v13 = *a3 == 0;
  v14 = *a3 != 0;
  *(a1 + 8) = v14;
  v15 = *a4 != 0;
  *(a1 + 9) = v15;
  *(a1 + 10) = v14 && v15;
  *(a1 + 11) = v13;
  *(a1 + 12) = v15;
  return a1;
}

uint64_t ecs2::BasicRegistry<void>::add<md::ls::PassMapEngineCapabilities>(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassMapEngineCapabilities>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PassMapEngineCapabilities>();
    unk_1EB83C720 = 0xC5E1935BF25B6EDALL;
    qword_1EB83C728 = "md::ls::PassMapEngineCapabilities]";
    qword_1EB83C730 = 33;
  }

  v56 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassMapEngineCapabilities>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::PassMapEngineCapabilities>(a1);
  v7 = v6;
  v8 = a2 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v8 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((a2 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    *(*(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + (v13 & 0x3F)) = *a3;
    LODWORD(a2) = (a2 >> 16) << 16;
    goto LABEL_55;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = a2 | (WORD1(a2) << 16);
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = a2 | (WORD1(a2) << 16);
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = a2;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v54 = v27;
    v55 = a3;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    v53 = v27 >> 6;
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_61;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v27 = v32 - v44;
      v45 = *(v7 + 96);
      if (v27 > (v45 - v43) >> 4)
      {
        v46 = v45 - v42;
        v47 = v46 >> 3;
        if (v46 >> 3 <= v32)
        {
          v47 = v28 + 1;
        }

        if (v46 >= 0x7FFFFFFFFFFFFFF0)
        {
          v48 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v48 = v47;
        }

        if (!(v48 >> 60))
        {
          operator new();
        }

LABEL_61:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v27);
      *(v7 + 88) = v43 + 16 * v27;
      v28 = v53;
      LOBYTE(v27) = v54;
    }

    else if (v32 < v44)
    {
      *(v7 + 88) = v42 + 16 * v32;
    }

    v30 = *(v7 + 56);
    a3 = v55;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  *(*(v30 + 8 * v28) + (v27 & 0x3F)) = *a3;
  v49 = *(v7 + 152);
  v50 = *(v7 + 160);
  while (v49 != v50)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v49 + 24), a2);
    v49 += 32;
  }

LABEL_55:
  v51 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v51 + ((v56 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v56;

  return ecs2::BasicRegistry<void>::didWrite<md::ls::PassMapEngineCapabilities>(a1);
}

void gss::StylesheetQuery<gss::ScenePropertyID>::getAttributeMapForStyle(uint64_t a1, uint64_t a2, int a3)
{
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(a2);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 256;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 8);
      if (!v9)
      {
LABEL_10:
        std::__shared_weak_count::__release_shared[abi:nn200100](v8);
        return;
      }

      if (a3)
      {
        gss::StylesheetManager<gss::ScenePropertyID>::targetStyleAttributes(&v10, v9, (a1 + 240), a1 + 272);
        if (&v10 != a2)
        {
          goto LABEL_8;
        }
      }

      else
      {
        gss::StylesheetManager<gss::ScenePropertyID>::sourceStyleAttributes(&v10, v9, (a1 + 240), a1 + 272);
        if (&v10 != a2)
        {
LABEL_8:
          geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(a2);
          *a2 = v10;
          *(a2 + 8) = v11[0];
          *(a2 + 12) = WORD2(v11[0]);
          *(a2 + 14) = *(v11 + 6);
          LOWORD(v11[1]) = 256;
          v10 = 0;
          v11[0] = 0;
        }
      }

      geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(&v10);
      goto LABEL_10;
    }
  }
}

void sub_1B2A3375C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(va);
  std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  _Unwind_Resume(a1);
}

uint64_t ToggleFeatureFlagTasks::operator()(uint64_t ****a1)
{
  v2 = ***a1;
    ;
  }

  v5 = i[3];
  v4 = i[4];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    v2 = ***a1;
  }

  v6 = *(v5 + 56);
  isEnabled = md::FeatureFlagProvider::isEnabled(v6, 1u);
  v8 = md::FeatureFlagProvider::isEnabled(v6, 2u);
  if (*v2 != 0xD369A4D92C8FFE6CLL)
  {
    v9 = v2 + 5;
    do
    {
      v10 = *v9;
      v9 += 5;
    }

    while (v10 != 0xD369A4D92C8FFE6CLL);
    v2 = v9 - 5;
  }

  v12 = v2[3];
  v11 = v2[4];
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  v13 = (*(*v12 + 24))(v12);
  v15 = v13 == 5 || v13 == 11;
  if ((isEnabled & v8 & 1) != 0 || isEnabled && (v13 != 11 ? (v17 = v13 == 5) : (v17 = 1), !v17))
  {
    v16 = 1;
  }

  else
  {
    v16 = v8 & v15;
  }

  v20[0] = ~gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::PrepareShadowPassCommandBuffers>();
  v20[1] = ~gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::PrepareShadowPass>();
  v20[2] = ~gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::PrepareShadowSlice>();
  v18 = 0;
  v20[3] = ~gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::UpdateShadowConstants>();
  do
  {
    result = ecs2::UtilityTaskContext::toggleTask((*a1)[2], v20[v18++], v16);
  }

  while (v18 != 4);
  return result;
}

uint64_t md::FrameGraphRenderPassBuilder::build(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 296);
  if (!v4)
  {
    geo::Pool<md::FrameGraphRenderPass>::allocateSlab((a2 + 256));
    v4 = *(a2 + 296);
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = (a1 + 104);
  *(a2 + 296) = *v4;
  v68 = *(a1 + 8);
  v69 = *(a1 + 16);
  v72 = a1;
  v70 = *(a1 + 24);
  v71 = *(a1 + 200);
  do
  {
    v10 = *(v9 + v8);
    if (v10)
    {
      v11 = (v7 - v5) >> 3;
      v12 = v11 + 1;
      if ((v11 + 1) >> 61)
      {
        goto LABEL_97;
      }

      if (-v5 >> 2 > v12)
      {
        v12 = -v5 >> 2;
      }

      if (-v5 >= 0x7FFFFFFFFFFFFFF8)
      {
        v13 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v12;
      }

      if (v13)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v13);
      }

      v14 = (8 * v11);
      v15 = (8 * v11 - (v6 - v5));
      *v14 = v10;
      v7 = (v14 + 1);
      memcpy(v15, v5, v6 - v5);
      if (v5)
      {
        operator delete(v5);
      }

      v5 = v15;
      v6 = v7;
    }

    v8 += 8;
  }

  while (v8 != 32);
  v16 = *(a1 + 168);
  if (v16)
  {
    v17 = (v7 - v5) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
LABEL_97:
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    if (-v5 >> 2 > v18)
    {
      v18 = -v5 >> 2;
    }

    if (-v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      v19 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v19 = v18;
    }

    if (v19)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v19);
    }

    v20 = v6 - v5;
    v21 = (8 * v17 - (v6 - v5));
    *(8 * v17) = v16;
    v6 = 8 * v17 + 8;
    memcpy(v21, v5, v20);
    if (v5)
    {
      operator delete(v5);
    }

    v5 = v21;
    v7 = 8 * v17 + 8;
  }

  v22 = 0;
  v23 = a1 + 136;
  do
  {
    v24 = *(v23 + v22);
    if (v24)
    {
      v25 = (v7 - v5) >> 3;
      v26 = v25 + 1;
      if ((v25 + 1) >> 61)
      {
        goto LABEL_97;
      }

      if (-v5 >> 2 > v26)
      {
        v26 = -v5 >> 2;
      }

      if (-v5 >= 0x7FFFFFFFFFFFFFF8)
      {
        v27 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v27 = v26;
      }

      if (v27)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v27);
      }

      v28 = (8 * v25);
      v29 = (8 * v25 - (v6 - v5));
      *v28 = v24;
      v7 = (v28 + 1);
      memcpy(v29, v5, v6 - v5);
      if (v5)
      {
        operator delete(v5);
      }

      v5 = v29;
      v6 = v7;
    }

    v22 += 8;
  }

  while (v22 != 32);
  v74 = 0;
  v75 = 0;
  v73 = &v74;
  if (v5 != v6)
  {
    v30 = 0;
    v31 = v5;
    while (1)
    {
      v32 = &v74;
      if (v73 == &v74)
      {
        goto LABEL_57;
      }

      v33 = v30;
      v34 = &v74;
      if (v30)
      {
        do
        {
          v32 = v33;
          v33 = v33[1];
        }

        while (v33);
      }

      else
      {
        do
        {
          v32 = v34[2];
          v35 = *v32 == v34;
          v34 = v32;
        }

        while (v35);
      }

      v36 = v32[4];
      v37 = *v31;
      v38 = *v36;
      v39 = **v31;
      v40 = v38 >= v39;
      if (v38 == v39)
      {
        v40 = *(v36 + 3) + *(v36 + 5) >= *(v37 + 24) + *(v37 + 20);
      }

      if (v40)
      {
        v41 = std::__tree<md::FrameGraphLogicalResource *,md::FrameGraphLogicalResourceLessThan,std::allocator<md::FrameGraphLogicalResource *>>::__find_equal<md::FrameGraphLogicalResource *>(&v73, &v76, v37);
      }

      else
      {
LABEL_57:
        if (!v30)
        {
          v76 = &v74;
LABEL_60:
          operator new();
        }

        v76 = v32;
        v41 = v32 + 1;
      }

      if (!*v41)
      {
        goto LABEL_60;
      }

      if (++v31 == v6)
      {
        break;
      }

      v30 = v74;
    }
  }

  *v4 = v68;
  *(v4 + 8) = v69;
  *(v4 + 16) = -1;
  if (*(v72 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((v4 + 24), *(v72 + 32), *(v72 + 40));
  }

  else
  {
    v42 = *(v72 + 32);
    *(v4 + 40) = *(v72 + 48);
    *(v4 + 24) = v42;
  }

  *(v4 + 56) = *(v72 + 80);
  v43 = (v72 + 88);
  v44 = *(v72 + 88);
  *(v4 + 64) = v44;
  v45 = (v4 + 64);
  *(v4 + 48) = 0;
  v46 = *(v72 + 96);
  *(v4 + 72) = v46;
  if (v46)
  {
    *(v44 + 16) = v45;
    *(v72 + 80) = v43;
    *v43 = 0;
    *(v72 + 96) = 0;
  }

  else
  {
    *(v4 + 56) = v45;
  }

  v48 = v73;
  v47 = v74;
  *(v4 + 88) = v74;
  v49 = (v4 + 88);
  *(v4 + 80) = v48;
  v50 = v75;
  *(v4 + 96) = v75;
  if (v50)
  {
    v47[2] = v49;
    v73 = &v74;
    v74 = 0;
    v75 = 0;
  }

  else
  {
    *(v4 + 80) = v49;
  }

  *(v4 + 104) = *(v72 + 56);
  v51 = (v72 + 64);
  v52 = *(v72 + 64);
  *(v4 + 112) = v52;
  v53 = v4 + 112;
  v54 = *(v72 + 72);
  *(v4 + 120) = v54;
  if (v54)
  {
    *(v52 + 16) = v53;
    *(v72 + 56) = v51;
    *v51 = 0;
    *(v72 + 72) = 0;
  }

  else
  {
    *(v4 + 104) = v53;
  }

  *(v4 + 128) = 0;
  v55 = *(v4 + 56);
  if (v55 != v45)
  {
    do
    {
      v56 = v55[4];
      v76 = v4;
      std::__tree<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>>::__emplace_unique_key_args<md::FrameGraphPass *,md::FrameGraphPass * const&>((v56 + 40), v4, &v76);
      v57 = v55[1];
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
          v58 = v55[2];
          v35 = *v58 == v55;
          v55 = v58;
        }

        while (!v35);
      }

      v55 = v58;
    }

    while (v58 != v45);
  }

  v59 = *(v4 + 80);
  if (v59 != v49)
  {
    do
    {
      v60 = v59[4];
      v76 = v4;
      std::__tree<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>>::__emplace_unique_key_args<md::FrameGraphPass *,md::FrameGraphPass * const&>((v60 + 64), v4, &v76);
      v61 = v59[1];
      if (v61)
      {
        do
        {
          v62 = v61;
          v61 = *v61;
        }

        while (v61);
      }

      else
      {
        do
        {
          v62 = v59[2];
          v35 = *v62 == v59;
          v59 = v62;
        }

        while (!v35);
      }

      v59 = v62;
    }

    while (v62 != v49);
  }

  if (v70)
  {
    *(v4 + 128) = v70;
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v74);
  if (v5)
  {
    operator delete(v5);
  }

  v63 = *v9;
  *(v4 + 152) = v9[1];
  *(v4 + 136) = v63;
  v64 = v9[2];
  v65 = v9[3];
  v66 = v9[4];
  *(v4 + 216) = v9[5];
  *(v4 + 200) = v66;
  *(v4 + 184) = v65;
  *(v4 + 168) = v64;
  *(v4 + 232) = v71;
  return v4;
}

void gss::StylesheetManager<gss::ScenePropertyID>::targetStyleAttributes(uint64_t *a1, uint64_t a2, uint64_t **a3, uint64_t a4)
{
  __p = 0;
  v17 = 0;
  v18 = 0;
  v7 = *a3;
  v8 = a3[1];
  v10 = v8 - v7;
  v11 = v10 + 20;
  if (v10 != -20)
  {
    if (!(v11 >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<gss::StyleAttribute,unsigned short>>>(v11);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  std::vector<std::pair<gss::StyleAttribute,unsigned short>>::__insert_with_size[abi:nn200100]<std::__wrap_iter<std::pair<gss::StyleAttribute,unsigned short> const*>,std::__wrap_iter<std::pair<gss::StyleAttribute,unsigned short> const*>>(&__p, 0, v7, v8, -20);
  v12 = *(a2 + 520);
  if (v12)
  {
    v13 = pthread_rwlock_rdlock((v12 + 16));
    if (v13)
    {
      geo::read_write_lock::logFailure(v13, "read lock", v14);
    }

    std::vector<std::pair<gss::StyleAttribute,unsigned short>>::insert[abi:nn200100]<geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::Iterator,0>(&__p, v17, (v12 + 240), 0, (v12 + 240), *(v12 + 252));
    geo::read_write_lock::unlock((v12 + 16));
    std::vector<std::pair<gss::StyleAttribute,unsigned short>>::insert[abi:nn200100]<geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::Iterator,0>(&__p, v17, a4, 0, a4, *(a4 + 12));
  }

  gss::ResolveMultiAttributeVectorToMap(a1, &__p);
  v15 = __p;
  if (__p)
  {

    operator delete(v15);
  }
}

void sub_1B2A34030(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  geo::read_write_lock::unlock((v10 + 16));
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *gss::PropertySetValueHelper<gss::ScenePropertyID,std::string>::value(uint64_t a1)
{
  v2 = geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((a1 + 96), 0x48u);
  if (v2 != *(a1 + 108))
  {
    return *(*(a1 + 96) + *(a1 + 104) + 16 * v2 + 8);
  }

  gss::PropertySetDefaultStringValue(v2);
  return &gss::PropertySetDefaultStringValue(void)::defaultStringValue;
}

char *ecs2::Runtime::_entities<md::ita::BuildPrimaryFrameGraph,md::ls::FrameGraphBuilder &,md::ls::PassCount &,md::ls::FrameGraphRenderTarget const&,md::ls::PassDeviceCapabilities const&,md::ls::PassSSAODescriptor const*,md::ls::PassShadowDescriptor const*,md::ls::PassRouteLineDescriptor const*>(uint64_t a1, uint64_t **a2)
{
  v71 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  v3 = ecs2::BasicRegistry<void>::storage<md::ls::FrameGraphBuilder>(v2);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::PassCount>(v2);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::FrameGraphRenderTarget>(v2);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::PassDeviceCapabilities>(v2);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::PassSSAODescriptor>(v2);
  v8 = ecs2::BasicRegistry<void>::storage<md::ls::PassShadowDescriptor>(v2);
  v9 = ecs2::BasicRegistry<void>::storage<md::ls::PassRouteLineDescriptor>(v2);
  *&v66 = v3;
  *(&v66 + 1) = v4;
  v10 = &v66;
  v11 = 8;
  v12 = v3;
  *&v67 = v5;
  *(&v67 + 1) = v6;
  do
  {
    if (*(*(&v66 + v11) + 40) - *(*(&v66 + v11) + 32) < *(v12 + 40) - *(v12 + 32))
    {
      v12 = *(&v66 + v11);
      v10 = (&v66 + v11);
    }

    v11 += 8;
  }

  while (v11 != 32);
  v13 = *v10;
  v15 = *(v13 + 32);
  v14 = *(v13 + 40);
  *&v66 = v15;
  *(&v66 + 1) = v14;
  *&v67 = v3;
  *(&v67 + 1) = v4;
  *&v68 = v5;
  *(&v68 + 1) = v6;
  *&v69 = v7;
  *(&v69 + 1) = v8;
  *&v70 = v9;
  v57 = v14;
  while (v15 != v14 && !ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v66, *v15, v15[1]))
  {
    v15 += 2;
    *&v66 = v15;
    v14 = v57;
  }

  v58[0] = v66;
  v58[1] = v67;
  v59 = v68;
  v60 = v69;
  v61 = v70;
  v16 = v66;
  if (v66 == v57)
  {
    _ZTWN4ecs27Runtime11_localStateE();
    result = _ZTWN4ecs27Runtime11_stackIndexE();
    v19 = 0;
  }

  else
  {
    _ZTWN4ecs27Runtime11_localStateE();
    v17 = _ZTWN4ecs27Runtime11_stackIndexE();
    v19 = 0;
    v53 = v17;
    v54 = v18;
    do
    {
      v20 = v16[1];
      v21 = v20 >> 6;
      v22 = v20 & 0x3F;
      v23 = *v16;
      v24 = *(v60 + 8);
      v56 = v21 < (*(v60 + 16) - v24) >> 3 && (v25 = *(v24 + 8 * v21)) != 0 && *(v25 + 4 * v22) == v23 && *(v60 + 32) + 4 * *(v25 + 4 * v22 + 2) != 0;
      v26 = *(*(&v60 + 1) + 8);
      v28 = v21 < (*(*(&v60 + 1) + 16) - v26) >> 3 && (v27 = *(v26 + 8 * v21)) != 0 && *(v27 + 4 * v22) == v23 && *(*(&v60 + 1) + 32) + 4 * *(v27 + 4 * v22 + 2) != 0;
      v29 = *(v61 + 8);
      v31 = v21 < (*(v61 + 16) - v29) >> 3 && (v30 = *(v29 + 8 * v21)) != 0 && *(v30 + 4 * v22) == v23 && *(v61 + 32) + 4 * *(v30 + 4 * v22 + 2) != 0;
      v32 = a2;
      v33 = *(*(*(v59 + 8) + 8 * v21) + 4 * v22 + 2);
      v34 = *(*(v59 + 56) + ((v33 >> 3) & 0x1FF8));
      v35 = *(*(*(*(&v59 + 1) + 8) + 8 * v21) + 4 * v22 + 2);
      v36 = *(*(*(&v59 + 1) + 56) + ((v35 >> 3) & 0x1FF8));
      *(v18 + 104 * *v17 + 24) = *v16;
      v37 = a2[1];
      if (!v37)
      {
        v38 = **a2;
        v39 = *v38;
        v40 = *(v38 + 8);
        if (v39 == v40)
        {
          goto LABEL_28;
        }

        while (*v39 != 0xD369A4D92C8FFE6CLL)
        {
          v37 = 0;
          v39 += 5;
          if (v39 == v40)
          {
            goto LABEL_29;
          }
        }

        if (v39 == v40)
        {
LABEL_28:
          v37 = 0;
        }

        else
        {
          v37 = v39[3];
          v44 = v39[4];
          if (v44)
          {
            atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
            std::__shared_weak_count::__release_shared[abi:nn200100](v44);
            v32 = a2;
          }
        }

LABEL_29:
        v32[1] = v37;
      }

      if ((*(*v37 + 8))(v37) && *(v36 + (v35 & 0x3F)) == 1)
      {
        v64 = v56;
        v63 = v28;
        v62 = v31;
        v65 = *(v34 + 8 * (v33 & 0x3F));
        operator new();
      }

      ++v19;
      v41 = *(&v58[0] + 1);
      v42 = (*&v58[0] + 4);
      while (1)
      {
        v16 = v42;
        *&v58[0] = v42;
        if (v42 == v41)
        {
          break;
        }

        v43 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(v58, *v42, v42[1]);
        v42 = v16 + 2;
        if (v43)
        {
          v41 = v16;
          break;
        }
      }

      v17 = v53;
      v18 = v54;
    }

    while (v41 != v57);
    ecs2::BasicRegistry<void>::didWrite<md::ls::FrameGraphBuilder>(*(a1 + 8));
    ecs2::BasicRegistry<void>::didWrite<md::ls::PassCount>(*(a1 + 8));
    result = v53;
    v46 = v54;
  }

  *(v46 + 104 * *result + 24) = -65536;
  v47 = v46 + 104 * *result;
  v48 = *(v47 + 92);
  *(v47 + 92) = v48 + 1;
  *(v47 + 4 * v48 + 28) = v19;
  v49 = v46 + 104 * *result;
  v51 = *(v49 + 92);
  v50 = (v49 + 92);
  if (v51 >= 0x10)
  {
    *v50 = 0;
  }

  return result;
}

void sub_1B2A345D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  std::__function::__value_func<void ()(md::FrameGraphRenderPassBuilder &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t gss::RenderStyle<gss::ScenePropertyID>::hasValueForKey(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *a1;
  if (*a1 && (v5 = *v4, LODWORD(v4) = *v4 == 1.0, *(a1 + 10) == 1) && (v5 != 0.0 ? (v6 = v5 == 1.0) : (v6 = 1), !v6) || (v7 = *(a1 + v4 + 11), v7 == 2))
  {
    if (gss::RenderStyle<gss::ScenePropertyID>::hasValueForKeyAtEnd(a1, a2, 0))
    {
      return 1;
    }

    v7 = 1;
  }

  return gss::RenderStyle<gss::ScenePropertyID>::hasValueForKeyAtEnd(a1, v2, v7);
}

uint64_t gss::RenderStyle<gss::ScenePropertyID>::hasValueForKeyAtEnd(uint64_t a1, unsigned __int8 a2, unsigned int a3)
{
  v3 = *(a1 + 16 * a3 + 16);
  if (!v3)
  {
    return 0;
  }

  v7 = *(v3 + 72);
  if (!v7 || (v14 = *v7, geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(*v7, a2) == *(v14 + 6)))
  {
    v8 = a1 + 16 * a3;
    if (!*(v8 + 56))
    {
      return 0;
    }

    v9 = *(v8 + 48);
    v10 = 8 * *(v8 + 56);
    while (1)
    {
      v11 = *(*v9 + 72);
      if (v11)
      {
        v13 = *v11;
        if (geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(*v11, a2) != *(v13 + 6))
        {
          break;
        }
      }

      v9 += 8;
      v10 -= 8;
      if (!v10)
      {
        return 0;
      }
    }
  }

  return 1;
}

uint64_t ecs2::BasicRegistry<void>::add<md::ls::PreviousResourceStamp>(uint64_t a1, unint64_t a2, void *a3)
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PreviousResourceStamp>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PreviousResourceStamp>();
    *algn_1EB83CC88 = 0xE0E0BD7780EC271BLL;
    qword_1EB83CC90 = "md::ls::PreviousResourceStamp]";
    qword_1EB83CC98 = 29;
  }

  v56 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PreviousResourceStamp>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::PreviousResourceStamp>(a1);
  v7 = v6;
  v8 = a2 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v8 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((a2 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    *(*(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 8 * (v13 & 0x3F)) = *a3;
    LODWORD(a2) = (a2 >> 16) << 16;
    goto LABEL_55;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = a2 | (WORD1(a2) << 16);
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = a2 | (WORD1(a2) << 16);
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = a2;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v54 = v27;
    v55 = a3;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    v53 = v27 >> 6;
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_61;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v27 = v32 - v44;
      v45 = *(v7 + 96);
      if (v27 > (v45 - v43) >> 4)
      {
        v46 = v45 - v42;
        v47 = v46 >> 3;
        if (v46 >> 3 <= v32)
        {
          v47 = v28 + 1;
        }

        if (v46 >= 0x7FFFFFFFFFFFFFF0)
        {
          v48 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v48 = v47;
        }

        if (!(v48 >> 60))
        {
          operator new();
        }

LABEL_61:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v27);
      *(v7 + 88) = v43 + 16 * v27;
      v28 = v53;
      LOBYTE(v27) = v54;
    }

    else if (v32 < v44)
    {
      *(v7 + 88) = v42 + 16 * v32;
    }

    v30 = *(v7 + 56);
    a3 = v55;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  *(*(v30 + 8 * v28) + 8 * (v27 & 0x3F)) = *a3;
  v49 = *(v7 + 152);
  v50 = *(v7 + 160);
  while (v49 != v50)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v49 + 24), a2);
    v49 += 32;
  }

LABEL_55:
  v51 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v51 + ((v56 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v56;

  return ecs2::BasicRegistry<void>::didWrite<md::ls::PreviousResourceStamp>(a1);
}

void gss::RenderStyle<gss::ScenePropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(int16x4_t *a1, uint64_t a2, __n128 a3, uint64_t a4)
{
  v4 = a3.n128_f32[0];
  v8 = *a2;
  if (*a2)
  {
    v9 = *v8;
    LODWORD(v8) = *v8 == 1.0;
    if (*(a2 + 10) == 1 && v9 != 0.0 && v9 != 1.0)
    {
      goto LABEL_13;
    }
  }

  v11 = *(a2 + v8 + 11);
  if (v11 == 2)
  {
    v9 = 0.0;
LABEL_13:
    v15 = 1;
    gss::RenderStyle<gss::ScenePropertyID>::styleSampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v13, a2, a4, 0, &v15, a3.n128_f32[0]);
    gss::RenderStyle<gss::ScenePropertyID>::styleSampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v12, a2, a4, 1u, &v14, v4);
    gss::lerpIfReal(a1, v13, v12, v9);
    return;
  }

  gss::RenderStyle<gss::ScenePropertyID>::styleSampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(a1, a2, a4, v11, 0, a3.n128_f32[0]);
}

void gss::RenderStyle<gss::ScenePropertyID>::styleSampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(int16x4_t *result, uint64_t a2, uint64_t a3, unsigned int a4, _BYTE *a5, float a6)
{
  v7 = a5;
  v8 = result;
  LODWORD(v9) = a6;
  if (a6 >= 0x17)
  {
    v10 = 23;
  }

  else
  {
    v10 = a6;
  }

  if (v9 >= 0x16)
  {
    v9 = 22;
  }

  else
  {
    v9 = v9;
  }

  v11 = a2 + 16 * a4;
  v14 = *(v11 + 16);
  v12 = v11 + 16;
  v13 = v14;
  if (v14)
  {
    v15 = a3;
    v17 = v9 + 1;
    v18 = a2 + 16 * a4;
    if (*(v18 + 56))
    {
      v19 = v10;
      v20 = 0;
      v21 = *(v18 + 48);
      v22 = &v21[*(v18 + 56)];
      while (2)
      {
        LOBYTE(v23) = 0;
        while (1)
        {
          v24 = *v21;
          if (v23)
          {
            v23 = 1;
          }

          else
          {
            v25 = *(v24 + 72);
            if (v25)
            {
              v37 = v17;
              v32 = *v25 + 120 * *(v25 + v19 + 16);
              if (geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v32, v15) == *(v32 + 12))
              {
                v23 = 0;
              }

              else
              {
                v38 = *gss::CartoStyle<gss::ScenePropertyID>::valueForExistingKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(v25, v15, v19);
                v23 = 1;
              }

              v17 = v37;
            }

            else
            {
              v23 = 0;
            }
          }

          if (v20)
          {
            break;
          }

          v26 = *(v24 + 72);
          if (v26)
          {
            v33 = *v26 + 120 * *(v26 + v17 + 16);
            v34 = v17;
            v35 = geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v33, v15);
            v17 = v34;
            if (v35 != *(v33 + 12))
            {
              v36 = gss::CartoStyle<gss::ScenePropertyID>::valueForExistingKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(v26, v15, v34);
              v17 = v34;
              v6 = *v36;
              if (v23)
              {
                goto LABEL_33;
              }

              goto LABEL_26;
            }
          }

          v20 = 0;
          if (++v21 == v22)
          {
            v42 = 1;
            v41 = 1;
            v8 = result;
            v7 = a5;
            v10 = v19;
            if (v23)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }

        if (v23)
        {
LABEL_33:
          v42 = 1;
          v41 = 1;
          v8 = result;
          v7 = a5;
          v10 = v19;
          goto LABEL_20;
        }

LABEL_26:
        ++v21;
        v20 = 1;
        if (v21 != v22)
        {
          continue;
        }

        break;
      }

      v42 = 1;
      v41 = 1;
      v10 = v19;
      v29 = *gss::CartoStyle<gss::ScenePropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(*(v13 + 72), v15, v19, &v42);
      v8 = result;
      v7 = a5;
    }

    else
    {
      v42 = 1;
      v41 = 1;
LABEL_18:
      v27 = v17;
      v28 = gss::CartoStyle<gss::ScenePropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(*(v13 + 72), v15, v10, &v42);
      LOBYTE(v17) = v27;
      v38 = *v28;
LABEL_19:
      v6 = *gss::CartoStyle<gss::ScenePropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(*(*v12 + 72), v15, v17, &v41);
LABEL_20:
      v29 = v38;
    }

    if (v7)
    {
      *v7 = (v42 | v41) & 1;
    }

    v30 = vdupq_n_s32(0x37800080u);
    v31 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v29)), v30);
    *v8 = vmovn_s32(vcvtq_u32_f32(vmulq_f32(vmlaq_n_f32(v31, vmlaq_f32(vnegq_f32(v31), v30, vcvtq_f32_u32(vmovl_u16(v6))), a6 - v10), vdupq_n_s32(0x477FFF00u))));
  }

  else
  {
    if (a5)
    {
      *a5 = 0;
    }

    gss::defaultValueForKey<gss::ScenePropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>();
    *v8 = gss::defaultValueForKey<gss::ScenePropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(gss::ScenePropertyID)::_defaultValue;
  }
}

void md::FrameGraphUtils::prepareGraphBuilderForRenderTarget(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a3[9])
  {
    v11 = *(a3[11] + 80);
    v10 = *(a3[11] + 84);
    v13 = *(a3[11] + 72);
    v12 = *(a3[11] + 76);
    v14 = *(a3[11] + 68);
    if (v14)
    {
      v15 = v14 | 0x100000000;
    }

    else
    {
      v15 = 0;
    }

    v29[0] = 0;
    v30 = v11;
    v31 = 0;
    v32 = v10;
    v33 = 0;
    v34 = v15;
    v35 = 0;
    v36 = 0;
    v37 = v12;
    LODWORD(v38) = 1;
    HIDWORD(v38) = v13;
    v39 = 0;
    md::FrameGraphBuilder::createResource(a2, v29, a4, a5, 0);
  }

  v16 = a3[35];
  if (v16)
  {
    v18 = v16[20];
    v17 = v16[21];
    v20 = v16[18];
    v19 = v16[19];
    v21 = v16[17];
    if (v21)
    {
      v22 = v21 | 0x100000000;
    }

    else
    {
      v22 = 0;
    }

    v29[0] = 0;
    v30 = v18;
    v31 = 0;
    v32 = v17;
    v33 = 0;
    v34 = v22;
    v35 = 0;
    v36 = 0;
    v37 = v19;
    LODWORD(v38) = 1;
    HIDWORD(v38) = v20;
    v39 = 1;
    md::FrameGraphBuilder::createResource(a2, v29, a6, a7, 0);
  }

  v23 = a3[23];
  if (v23)
  {
    v25 = v23[20];
    v24 = v23[21];
    v26 = v23[17];
    v27 = v23[19];
    if (v26)
    {
      v28 = v26 | 0x100000000;
    }

    else
    {
      v28 = 0;
    }

    v29[0] = 0;
    v30 = v25;
    v31 = 0;
    v32 = v24;
    v33 = 0;
    v34 = v28;
    v35 = 0;
    v36 = 0;
    v37 = v27;
    v38 = 0x100000001;
    v39 = 2;
    md::FrameGraphBuilder::createResource(a2, v29, a9, a10, 0);
  }
}

void *gss::CartoStyle<gss::ScenePropertyID>::valueForExistingKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(void *a1, unsigned __int8 a2, unsigned int a3)
{
  if (a3 >= 0x17)
  {
    v3 = 23;
  }

  else
  {
    v3 = a3;
  }

  v4 = *a1 + 120 * *(a1 + v3 + 16);
  v5 = geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((v4 + 72), a2);
  if (v5 == *(v4 + 84))
  {
    return &gss::PropertySetValueHelper<gss::ScenePropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>::value(gss::ScenePropertyID,gss::StylePropertySet<gss::ScenePropertyID> const&)::_defaultValue;
  }

  else
  {
    return (*(v4 + 72) + *(v4 + 80) + 8 * v5);
  }
}

uint64_t std::__function::__value_func<md::FrameGraphLogicalResource * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

void md::FrameGraphBuilder::createResource(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v8 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v5 = a5;
  operator new();
}

unsigned __int8 *gss::RenderStyle<gss::ScenePropertyID>::styleValueForKey<unsigned int>(uint64_t a1, uint64_t a2, unsigned int a3, _BYTE *a4)
{
  v6 = *(a1 + 16 * a3 + 16);
  if (v6)
  {
    v7 = a1 + 16 * a3;
    if (*(v7 + 56))
    {
      v8 = *(v7 + 48);
      v9 = 8 * *(v7 + 56);
      while (1)
      {
        v10 = *(*v8 + 72);
        if (v10)
        {
          v13 = *v10;
          if (geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(*v10, a2) != *(v13 + 6))
          {
            break;
          }
        }

        v8 += 8;
        v9 -= 8;
        if (!v9)
        {
          goto LABEL_6;
        }
      }

      v14 = geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v13 + 6, a2);
      if (v14 == *(v13 + 30))
      {
        return &gss::PropertySetValueHelper<gss::ScenePropertyID,unsigned int>::value(gss::ScenePropertyID,gss::StylePropertySet<gss::ScenePropertyID> const&)::_defaultValue;
      }

      else
      {
        return &v13[6][4 * v14 + *(v13 + 14)];
      }
    }

    else
    {
LABEL_6:
      v11 = *(v6 + 72);

      return gss::CartoStyle<gss::ScenePropertyID>::valueForKey<unsigned int>(v11, a2, a4);
    }
  }

  else
  {
    if (a4)
    {
      *a4 = 0;
    }

    return gss::defaultValueForKey<gss::ScenePropertyID,unsigned int>(a2);
  }
}

uint64_t gss::RenderStyleHelper<gss::ScenePropertyID,unsigned int>::valueForKey(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2 && (v5 = *v4, LODWORD(v4) = *v4 == 1.0, *(a2 + 10) == 1) && (v5 != 0.0 ? (v6 = v5 == 1.0) : (v6 = 1), !v6))
  {
    v12 = v5 < 1.0;
  }

  else
  {
    v7 = *(a2 + v4 + 11);
    if (v7 != 2)
    {
      return *gss::RenderStyle<gss::ScenePropertyID>::styleValueForKey<unsigned int>(a2, a1, v7, 0);
    }

    v12 = 1;
  }

  v14 = 1;
  v13 = 1;
  v9 = gss::RenderStyle<gss::ScenePropertyID>::styleValueForKey<unsigned int>(a2, a1, 0, &v14);
  v10 = gss::RenderStyle<gss::ScenePropertyID>::styleValueForKey<unsigned int>(a2, a1, 1u, &v13);
  if (v12)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  return *v11;
}

void *gss::RenderStyle<gss::ScenePropertyID>::styleValueForKey<std::string>(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  v4 = *(a1 + 16 * a2 + 16);
  if (v4)
  {
    v5 = a1 + 16 * a2;
    if (*(v5 + 56))
    {
      v6 = *(v5 + 48);
      v7 = 8 * *(v5 + 56);
      while (1)
      {
        v8 = *(*v6 + 72);
        if (v8)
        {
          v11 = *v8;
          if (geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(*v8, 0x48u) != *(v11 + 6))
          {
            break;
          }
        }

        v6 += 8;
        v7 -= 8;
        if (!v7)
        {
          goto LABEL_6;
        }
      }

      return gss::PropertySetValueHelper<gss::ScenePropertyID,std::string>::value(v11);
    }

    else
    {
LABEL_6:
      v9 = *(v4 + 72);

      return gss::CartoStyle<gss::ScenePropertyID>::valueForKey<std::string>(v9, a3);
    }
  }

  else
  {
    if (a3)
    {
      *a3 = 0;
    }

    return &gss::defaultValueForKey<gss::ScenePropertyID,std::string>(gss::ScenePropertyID)::_defaultValue;
  }
}

__n128 std::__function::__func<md::StandardPassList::_buildPrimaryFrameGraphWithFrameBufferFetch(BOOL const&,BOOL const&,BOOL const&,md::FrameGraphRenderTarget const*,md::FrameGraphBuilder *)::$_0,std::allocator<md::StandardPassList::_buildPrimaryFrameGraphWithFrameBufferFetch(BOOL const&,BOOL const&,BOOL const&,md::FrameGraphRenderTarget const*,md::FrameGraphBuilder *)::$_0>,void ()(md::FrameGraphRenderPassBuilder &)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  std::string::basic_string[abi:nn200100]<0>(&__str, "Primary");
  std::string::operator=((a2 + 32), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (**(a1 + 8) == 1)
  {
    md::FrameGraphPassBuilder::addAttachmentInput(a2, v4[13]);
  }

  if (**(a1 + 24) == 1)
  {
    md::FrameGraphPassBuilder::addAttachmentInput(a2, v4[16]);
  }

  if (**(a1 + 32) == 1)
  {
    md::FrameGraphPassBuilder::addAttachmentInput(a2, v4[21]);
  }

  v5 = **(a1 + 40);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v8 = *(v5 + 48);
  *(a2 + 136) = *(v5 + 32);
  *(a2 + 184) = v7;
  *(a2 + 168) = v6;
  *(a2 + 152) = v8;
  result = *v5;
  *(a2 + 120) = *(v5 + 16);
  *(a2 + 104) = result;
  return result;
}

void *gss::CartoStyle<gss::ScenePropertyID>::hasValueForKeyAtZ(void *result, unsigned __int8 a2, unsigned int a3)
{
  if (result)
  {
    v3 = *result + 120 * *(result + a3 + 16);
    return (geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v3, a2) != *(v3 + 12));
  }

  return result;
}

void ecs2::Runtime::_entities<md::ita::PrepareBuildFrameGraph,md::ita::FrameHandle const&>(uint64_t a1, uint64_t **a2)
{
  v3 = ecs2::BasicRegistry<void>::storage<md::ita::FrameHandle>(a1);
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  v6 = _ZTWN4ecs27Runtime11_localStateE();
  v7 = _ZTWN4ecs27Runtime11_stackIndexE();
  if (v4 == v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    do
    {
      *(v6 + 104 * *v7 + 24) = *v4;
      v9 = a2[1];
      if (!v9)
      {
        v10 = **a2;
        v11 = *v10;
        v12 = *(v10 + 8);
        while (1)
        {
          if (v11 == v12)
          {
            goto LABEL_27;
          }

          if (*v11 == 0x22D45F5AAD4BF408)
          {
            break;
          }

          v11 += 5;
        }

        if (v11 == v12)
        {
LABEL_27:
          v9 = 0;
          goto LABEL_11;
        }

        v9 = v11[3];
        v13 = v11[4];
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:nn200100](v13);
        }

LABEL_11:
        a2[1] = v9;
      }

      v31 = (**v9)(v9);
      md::LayoutContext::frameState(v31);
      if ((*(v14 + 117) & 1) == 0)
      {
        +[VKDebugSettings sharedSettings];
        objc_claimAutoreleasedReturnValue();
        v15 = a2[2];
        if (!v15)
        {
          v16 = **a2;
          v17 = *v16;
          v18 = *(v16 + 8);
          if (v17 == v18)
          {
            goto LABEL_17;
          }

          while (*v17 != 0xD369A4D92C8FFE6CLL)
          {
            v17 += 5;
            if (v17 == v18)
            {
              goto LABEL_17;
            }
          }

          if (v17 == v18)
          {
LABEL_17:
            v15 = 0;
          }

          else
          {
            v15 = v17[3];
            v19 = v17[4];
            if (v19)
            {
              atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
              std::__shared_weak_count::__release_shared[abi:nn200100](v19);
            }
          }

          a2[2] = v15;
        }

        v20 = (*(*v15 + 16))(v15);
        v21 = [*(v20 + 104) finalRenderTarget];
        v22 = v21;
        v23 = *(v20 + 32);
        if (v21)
        {
          v24 = ggl::RenderTarget::height(v21);
          *(v23 + 40) = ggl::RenderTarget::width(v22);
          *(v23 + 44) = v24;
          v25 = *(v22 + 72);
          *(v23 + 48) = *(v22 + 56);
          *(v23 + 64) = v25;
        }

        operator new();
      }

      ++v8;
      ++v4;
    }

    while (v4 != v5);
  }

  *(v6 + 104 * *v7 + 24) = -65536;
  v26 = v6 + 104 * *v7;
  v27 = *(v26 + 92);
  *(v26 + 92) = v27 + 1;
  *(v26 + 4 * v27 + 28) = v8;
  v28 = v6 + 104 * *v7;
  v30 = *(v28 + 92);
  v29 = (v28 + 92);
  if (v30 >= 0x10)
  {
    *v29 = 0;
  }
}

uint64_t gss::RenderStyle<gss::ScenePropertyID>::styleSampledValueForKeyAtZ<unsigned int>(uint64_t a1, unsigned int a2, _BYTE *a3, float a4)
{
  v4 = a3;
  v5 = a4;
  if (a4 >= 0x17)
  {
    v6 = 23;
  }

  else
  {
    v6 = a4;
  }

  if (v5 >= 0x16)
  {
    LOBYTE(v5) = 22;
  }

  v7 = *(a1 + 16 * a2 + 16);
  if (v7)
  {
    v9 = v5 + 1;
    v10 = a1 + 16 * a2;
    if (*(v10 + 56))
    {
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = *(v10 + 48);
      v21 = &v14[*(v10 + 56)];
LABEL_9:
      LOBYTE(v15) = 0;
      while (1)
      {
        v16 = *v14;
        if (v15)
        {
          goto LABEL_13;
        }

        v17 = *(v16 + 72);
        if (gss::CartoStyle<gss::ScenePropertyID>::hasValueForKeyAtZ(v17, 3u, v6))
        {
          break;
        }

        v15 = 0;
LABEL_14:
        if (v11)
        {
          if (v15)
          {
            goto LABEL_20;
          }

LABEL_17:
          ++v14;
          v11 = 1;
          if (v14 != v21)
          {
            goto LABEL_9;
          }

          v24 = 1;
          v23 = 1;
          v13 = *gss::CartoStyle<gss::ScenePropertyID>::valueForKeyAtZ<unsigned int>(*(v7 + 72), 3, v6, &v24);
LABEL_22:
          v4 = a3;
          goto LABEL_23;
        }

        v18 = *(v16 + 72);
        if (gss::CartoStyle<gss::ScenePropertyID>::hasValueForKeyAtZ(v18, 3u, v9))
        {
          v12 = *gss::CartoStyle<gss::ScenePropertyID>::valueForExistingKeyAtZ<unsigned int>(v18, 3u, v9);
          if ((v15 & 1) == 0)
          {
            goto LABEL_17;
          }

LABEL_20:
          v24 = 1;
          v23 = 1;
          goto LABEL_22;
        }

        v11 = 0;
        if (++v14 == v21)
        {
          v24 = 1;
          v23 = 1;
          v20 = *(v7 + 72);
          if (!v15)
          {
            v13 = *gss::CartoStyle<gss::ScenePropertyID>::valueForKeyAtZ<unsigned int>(v20, 3, v6, &v24);
          }

          v4 = a3;
          goto LABEL_36;
        }
      }

      v13 = *gss::CartoStyle<gss::ScenePropertyID>::valueForExistingKeyAtZ<unsigned int>(v17, 3u, v6);
LABEL_13:
      v15 = 1;
      goto LABEL_14;
    }

    v24 = 1;
    v23 = 1;
    v20 = *(v7 + 72);
    v13 = *gss::CartoStyle<gss::ScenePropertyID>::valueForKeyAtZ<unsigned int>(v20, 3, v6, &v24);
LABEL_36:
    v12 = *gss::CartoStyle<gss::ScenePropertyID>::valueForKeyAtZ<unsigned int>(v20, 3, v9, &v23);
LABEL_23:
    if (v4)
    {
      *v4 = (v24 | v23) & 1;
    }

    if ((a4 - v6) >= 1.0)
    {
      return v12;
    }

    else
    {
      return v13;
    }
  }

  else
  {
    if (a3)
    {
      *a3 = 0;
    }

    return *gss::defaultValueForKey<gss::ScenePropertyID,unsigned int>(3u);
  }
}