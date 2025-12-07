uint64_t *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::MeshRenderableLogic::injectDynamicRenderable(gdc::Entity,gdc::Registry *)::$_0 &,md::MeshRenderable **,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *(*a2 + 8);
  v8 = *(*result + 8);
  v9 = *a3;
  v10 = *(*a3 + 8);
  if (v7 >= v8)
  {
    if (v10 >= v7)
    {
      v5 = *a3;
    }

    else
    {
      *a2 = v9;
      *a3 = v5;
      v11 = *result;
      if (*(*a2 + 8) < *(*result + 8))
      {
        *result = *a2;
        *a2 = v11;
        v5 = *a3;
      }
    }
  }

  else
  {
    if (v10 < v7)
    {
      *result = v9;
LABEL_9:
      *a3 = v6;
      v5 = v6;
      goto LABEL_11;
    }

    *result = v5;
    *a2 = v6;
    v5 = *a3;
    if (*(*a3 + 8) < v8)
    {
      *a2 = v5;
      goto LABEL_9;
    }
  }

LABEL_11:
  if (*(*a4 + 8) < *(v5 + 8))
  {
    *a3 = *a4;
    *a4 = v5;
    v12 = *a2;
    if (*(*a3 + 8) < *(*a2 + 8))
    {
      *a2 = *a3;
      *a3 = v12;
      v13 = *result;
      if (*(*a2 + 8) < *(*result + 8))
      {
        *result = *a2;
        *a2 = v13;
      }
    }
  }

  v14 = *a4;
  if (*(*a5 + 8) < *(*a4 + 8))
  {
    *a4 = *a5;
    *a5 = v14;
    v15 = *a3;
    if (*(*a4 + 8) < *(*a3 + 8))
    {
      *a3 = *a4;
      *a4 = v15;
      v16 = *a2;
      if (*(*a3 + 8) < *(*a2 + 8))
      {
        *a2 = *a3;
        *a3 = v16;
        v17 = *result;
        if (*(*a2 + 8) < *(*result + 8))
        {
          *result = *a2;
          *a2 = v17;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::MeshRenderableLogic::injectDynamicRenderable(gdc::Entity,gdc::Registry *)::$_0 &,md::MeshRenderable **>(uint64_t *a1, uint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v5 = *a1;
      v6 = a1[1];
      v7 = *(v6 + 8);
      v8 = *(*a1 + 8);
      v9 = *(a2 - 1);
      v10 = *(v9 + 8);
      if (v7 >= v8)
      {
        if (v10 < v7)
        {
          a1[1] = v9;
          *(a2 - 1) = v6;
          v32 = *a1;
          v31 = a1[1];
          if (*(v31 + 8) < *(*a1 + 8))
          {
            *a1 = v31;
            a1[1] = v32;
          }
        }

        return 1;
      }

      if (v10 >= v7)
      {
        *a1 = v6;
        a1[1] = v5;
        v47 = *(a2 - 1);
        if (*(v47 + 8) >= v8)
        {
          return 1;
        }

        a1[1] = v47;
      }

      else
      {
        *a1 = v9;
      }

      *(a2 - 1) = v5;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::MeshRenderableLogic::injectDynamicRenderable(gdc::Entity,gdc::Registry *)::$_0 &,md::MeshRenderable **,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
      return 1;
    }

    v20 = a1 + 1;
    v21 = a1[1];
    v22 = a1 + 2;
    v23 = a1[2];
    v24 = *a1;
    v25 = *(v21 + 8);
    v26 = *(*a1 + 8);
    v27 = *(v23 + 8);
    if (v25 >= v26)
    {
      if (v27 >= v25)
      {
LABEL_41:
        v21 = v23;
        goto LABEL_42;
      }

      *v20 = v23;
      *v22 = v21;
      v28 = a1;
      v29 = a1 + 1;
      v30 = v21;
      if (v27 >= v26)
      {
LABEL_42:
        v42 = *(a2 - 1);
        if (*(v42 + 8) < *(v21 + 8))
        {
          *v22 = v42;
          *(a2 - 1) = v21;
          v43 = *v22;
          v44 = *v20;
          v45 = *(v43 + 8);
          if (v45 < *(v44 + 8))
          {
            a1[1] = v43;
            a1[2] = v44;
            v46 = *a1;
            if (v45 < *(*a1 + 8))
            {
              *a1 = v43;
              a1[1] = v46;
            }
          }
        }

        return 1;
      }
    }

    else
    {
      v28 = a1;
      v29 = a1 + 2;
      v30 = *a1;
      if (v27 >= v25)
      {
        *a1 = v21;
        a1[1] = v24;
        v28 = a1 + 1;
        v29 = a1 + 2;
        v30 = v24;
        if (v27 >= v26)
        {
          goto LABEL_41;
        }
      }
    }

    *v28 = v23;
    *v29 = v24;
    v21 = v30;
    goto LABEL_42;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 1);
    v4 = *a1;
    if (*(v3 + 8) < *(*a1 + 8))
    {
      *a1 = v3;
      *(a2 - 1) = v4;
    }

    return 1;
  }

LABEL_13:
  v12 = a1 + 2;
  v11 = a1[2];
  v13 = a1[1];
  v14 = *a1;
  v15 = *(v13 + 8);
  v16 = *(*a1 + 8);
  v17 = *(v11 + 8);
  if (v15 >= v16)
  {
    if (v17 >= v15)
    {
      goto LABEL_27;
    }

    a1[1] = v11;
    *v12 = v13;
    v18 = a1;
    v19 = a1 + 1;
LABEL_25:
    if (v17 >= v16)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v18 = a1;
  v19 = a1 + 2;
  if (v17 >= v15)
  {
    *a1 = v13;
    a1[1] = v14;
    v18 = a1 + 1;
    v19 = a1 + 2;
    goto LABEL_25;
  }

LABEL_26:
  *v18 = v11;
  *v19 = v14;
LABEL_27:
  v33 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v34 = 0;
  for (i = 24; ; i += 8)
  {
    v36 = *v33;
    v37 = *v12;
    v38 = *(*v33 + 8);
    if (v38 < *(v37 + 8))
    {
      v39 = i;
      while (1)
      {
        *(a1 + v39) = v37;
        v40 = v39 - 8;
        if (v39 == 8)
        {
          break;
        }

        v37 = *(a1 + v39 - 16);
        v39 -= 8;
        if (v38 >= *(v37 + 8))
        {
          v41 = (a1 + v40);
          goto LABEL_35;
        }
      }

      v41 = a1;
LABEL_35:
      *v41 = v36;
      if (++v34 == 8)
      {
        break;
      }
    }

    v12 = v33++;
    if (v33 == a2)
    {
      return 1;
    }
  }

  return v33 + 1 == a2;
}

void *std::function<BOOL ()(gdc::Registry * const&)>::operator()(uint64_t a1)
{
  if (a1)
  {
    v2 = *(*a1 + 48);

    return v2();
  }

  else
  {
    v4 = std::__throw_bad_function_call[abi:nn200100]();
    return std::__function::__func<md::MeshRenderableLogic::findRegistryToInject(md::CameraContext const&,gm::Box<double,3> const&)::$_0,std::allocator<md::MeshRenderableLogic::findRegistryToInject(md::CameraContext const&,gm::Box<double,3> const&)::$_0>,BOOL ()(gdc::Registry * const&)>::operator()(v4, v5);
  }
}

void *std::__function::__func<md::MeshRenderableLogic::findRegistryToInject(md::CameraContext const&,gm::Box<double,3> const&)::$_0,std::allocator<md::MeshRenderableLogic::findRegistryToInject(md::CameraContext const&,gm::Box<double,3> const&)::$_0>,BOOL ()(gdc::Registry * const&)>::operator()(uint64_t a1, void **a2)
{
  result = gdc::Context::context<md::MapDataType>(*a2);
  if (result)
  {
    return (*result == 62);
  }

  return result;
}

void std::__function::__func<md::MeshRenderableLogic::updateDynamicMeshes(md::CameraContext const&,md::MaterialContext const&)::$_0::operator() const(gdc::Entity,md::components::DynamicMeshInstance &,md::components::Material &)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#1},std::allocator<md::MeshRenderableLogic::updateDynamicMeshes(md::CameraContext const&,md::MaterialContext const&)::$_0::operator() const(gdc::Entity,md::components::DynamicMeshInstance &,md::components::Material &)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#1}>,void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  if (v3)
  {
    v4 = *a3;
    v5 = *(result + 8);
    v6 = 8 * v3;
    do
    {
      v7 = *v4++;
      md::MeshRenderableLogic::removeDynamicEntity(v5, v7);
      v6 -= 8;
    }

    while (v6);
  }
}

void md::MeshRenderableLogic::removeDynamicEntity(void *a1, unint64_t a2)
{
  v4 = std::__hash_table<std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::__unordered_map_hasher<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,true>,std::__unordered_map_equal<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::equal_to<gdc::Entity>,std::hash<gdc::Entity>,true>,std::allocator<std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>::find<gdc::Entity>(a1 + 42, a2);
  if (v4)
  {
    v5 = v4;
    md::MeshRenderableLogic::removeDynamicRenderableInjection(a1, a2);
    v6 = v5[3];
    if (v6 && a1[24])
    {
      (**v6)(v6);
      *v6 = a1[27];
      a1[27] = v6;
    }

    v7 = std::__hash_table<std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::__unordered_map_hasher<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,true>,std::__unordered_map_equal<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::equal_to<gdc::Entity>,std::hash<gdc::Entity>,true>,std::allocator<std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>::find<gdc::Entity>(a1 + 42, a2);
    if (v7)
    {
      v8 = a1[43];
      v9 = v7[1];
      v10 = vcnt_s8(v8);
      v10.i16[0] = vaddlv_u8(v10);
      if (v10.u32[0] > 1uLL)
      {
        if (v9 >= *&v8)
        {
          v9 %= *&v8;
        }
      }

      else
      {
        v9 &= *&v8 - 1;
      }

      v11 = a1[42];
      v12 = *(v11 + 8 * v9);
      do
      {
        v13 = v12;
        v12 = *v12;
      }

      while (v12 != v7);
      if (v13 == a1 + 44)
      {
        goto LABEL_24;
      }

      v14 = v13[1];
      if (v10.u32[0] > 1uLL)
      {
        if (v14 >= *&v8)
        {
          v14 %= *&v8;
        }
      }

      else
      {
        v14 &= *&v8 - 1;
      }

      if (v14 != v9)
      {
LABEL_24:
        if (!*v7)
        {
          goto LABEL_25;
        }

        v15 = *(*v7 + 8);
        if (v10.u32[0] > 1uLL)
        {
          if (v15 >= *&v8)
          {
            v15 %= *&v8;
          }
        }

        else
        {
          v15 &= *&v8 - 1;
        }

        if (v15 != v9)
        {
LABEL_25:
          *(v11 + 8 * v9) = 0;
        }
      }

      v16 = *v7;
      if (*v7)
      {
        v17 = *(v16 + 8);
        if (v10.u32[0] > 1uLL)
        {
          if (v17 >= *&v8)
          {
            v17 %= *&v8;
          }
        }

        else
        {
          v17 &= *&v8 - 1;
        }

        if (v17 != v9)
        {
          *(a1[42] + 8 * v17) = v13;
          v16 = *v7;
        }
      }

      *v13 = v16;
      *v7 = 0;
      --a1[45];

      operator delete(v7);
    }
  }
}

uint64_t std::__function::__func<md::MeshRenderableLogic::updateDynamicMeshes(md::CameraContext const&,md::MaterialContext const&)::$_0::operator() const(gdc::Entity,md::components::DynamicMeshInstance &,md::components::Material &)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#1},std::allocator<md::MeshRenderableLogic::updateDynamicMeshes(md::CameraContext const&,md::MaterialContext const&)::$_0::operator() const(gdc::Entity,md::components::DynamicMeshInstance &,md::components::Material &)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#1}>,void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A08330;
  a2[1] = v2;
  return result;
}

uint64_t std::default_delete<md::InstanceData>::operator()[abi:nn200100](uint64_t result)
{
  if (result)
  {
    v1 = *(result + 8);
    if (v1)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v1);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::__shared_ptr_pointer<md::InstanceData *,std::shared_ptr<md::InstanceData>::__shared_ptr_default_delete<md::InstanceData,md::InstanceData>,std::allocator<md::InstanceData>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::Registry::storage<md::components::GeneratedTexture>(uint64_t a1)
{
  v3 = 0x275245E41E832F30;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x275245E41E832F30uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<md::components::GeneratedTexture>::remove(void *a1, uint64_t a2)
{
  v16 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = (a1[10] + 2 * (v3 - a1[7]));
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = a1[11];
    v9 = *(v7 - 16);
    v8 = *(v7 - 8);
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v10 = v6[1];
    *v6 = v9;
    v6[1] = v8;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v10);
    }

    v11 = a1[11];
    v12 = *(v11 - 8);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v12);
    }

    a1[11] = v11 - 16;
    v13 = a1[28];
    if (v13)
    {
      v14 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v13[6], v14, &v16, 1);
        v13 = *v13;
      }

      while (v13);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<md::components::GeneratedTexture>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v3 = (a1 + 80);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v3);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<md::components::GeneratedTexture>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v4 = (a1 + 80);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v4);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);
  return a1;
}

uint64_t std::__function::__value_func<void ()(gdc::Entity,gdc::Registry *)>::~__value_func[abi:nn200100](uint64_t a1)
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

BOOL gdc::Registry::remove<md::components::VisibilityChanged,gdc::Entity *>(_BOOL8 result, uint64_t *a2, uint64_t *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      v6 = gdc::Registry::storage<md::components::VisibilityChanged>(v5);
      v7 = *v4++;
      result = gdc::ComponentStorageWrapper<md::components::VisibilityChanged>::remove(v6, v7);
    }

    while (v4 != a3);
  }

  return result;
}

BOOL gdc::Registry::remove<md::components::CustomRenderStateChanged,gdc::Entity *>(_BOOL8 result, uint64_t *a2, uint64_t *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      v6 = gdc::Registry::storage<md::components::CustomRenderStateChanged>(v5);
      v7 = *v4++;
      result = gdc::ComponentStorageWrapper<md::components::CustomRenderStateChanged>::remove(v6, v7);
    }

    while (v4 != a3);
  }

  return result;
}

void *std::function<void ()(gdc::Entity,gdc::Registry *)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a3;
  v8 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v8, &v7);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return md::MeshRenderableLogic::updateDynamicEntityCustomRenderState(v4, v5, v6);
}

void *md::MeshRenderableLogic::updateDynamicEntityCustomRenderState(uint64_t a1, unint64_t a2, void *a3)
{
  result = gdc::Context::context<md::RenderBatchManager>(a3);
  if (!result)
  {
    v7 = gdc::Registry::storage<md::components::CustomRenderState>(a3);
    v8 = gdc::ComponentStorageWrapper<md::components::CustomRenderState>::get(v7, a2);
    result = std::__hash_table<std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::__unordered_map_hasher<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,true>,std::__unordered_map_equal<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::equal_to<gdc::Entity>,std::hash<gdc::Entity>,true>,std::allocator<std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>::find<gdc::Entity>((a1 + 336), a2);
    if (result)
    {
      if (v8)
      {
        v9 = result[3] + 152;

        return std::optional<md::components::CustomRenderState>::operator=[abi:nn200100]<md::components::CustomRenderState&,void>(v9, v8);
      }
    }
  }

  return result;
}

void *md::MeshRenderableLogic::updateDynamicEntityVisibility(uint64_t a1, unint64_t a2, void *a3)
{
  result = gdc::Context::context<md::RenderBatchManager>(a3);
  if (!result)
  {
    v7 = gdc::Registry::storage<md::components::Visibility>(a3);
    v8 = gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>::get(v7, a2);
    result = std::__hash_table<std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::__unordered_map_hasher<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,true>,std::__unordered_map_equal<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::equal_to<gdc::Entity>,std::hash<gdc::Entity>,true>,std::allocator<std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>::find<gdc::Entity>((a1 + 336), a2);
    if (result)
    {
      if (v8)
      {
        *(result[3] + 144) = *v8;
      }
    }
  }

  return result;
}

uint64_t std::__function::__func<std::__bind<void (md::MeshRenderableLogic::*)(gdc::Entity,gdc::Registry *),md::MeshRenderableLogic*,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&>,std::allocator<std::__bind<void (md::MeshRenderableLogic::*)(gdc::Entity,gdc::Registry *),md::MeshRenderableLogic*,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&>>,void ()(gdc::Entity,gdc::Registry *)>::operator()(void *a1, void *a2, void *a3)
{
  v3 = a1[2];
  v4 = a1[1];
  v5 = (a1[3] + (v3 >> 1));
  if (v3)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, *a2, *a3);
}

__n128 std::__function::__func<std::__bind<void (md::MeshRenderableLogic::*)(gdc::Entity,gdc::Registry *),md::MeshRenderableLogic*,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&>,std::allocator<std::__bind<void (md::MeshRenderableLogic::*)(gdc::Entity,gdc::Registry *),md::MeshRenderableLogic*,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&>>,void ()(gdc::Entity,gdc::Registry *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A084F0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__value_func<BOOL ()(md::MeshRenderable *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__introsort<std::_RangeAlgPolicy,BOOL (*&)(md::MeshRenderable const*,md::MeshRenderable const*),md::MeshRenderable**,false>(uint64_t result, int8x16_t *a2, unsigned int (**a3)(uint64_t), uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = &a2[-1].i64[1];
  v10 = v8;
  v122 = a2;
  while (1)
  {
    v8 = v10;
    v11 = (a2 - v10) >> 3;
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      result = (*a3)(*v9, v10->i64[0]);
      if (result)
      {
        v76 = v10->i64[0];
        v10->i64[0] = *v9;
LABEL_103:
        *v9 = v76;
        return result;
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v79 = &v10->u64[1];
      v81 = v10 == a2 || v79 == a2;
      if (a5)
      {
        if (!v81)
        {
          v82 = 0;
          v83 = v10;
          do
          {
            v85 = v83->i64[0];
            v84 = v83->i64[1];
            v83 = v79;
            result = (*a3)(v84, v85);
            if (result)
            {
              v86 = v83->i64[0];
              v87 = v82;
              while (1)
              {
                *(&v10->i64[1] + v87) = *(v10->i64 + v87);
                if (!v87)
                {
                  break;
                }

                result = (*a3)(v86, *(&v10->i64[-1] + v87));
                v87 -= 8;
                if ((result & 1) == 0)
                {
                  v88 = (&v10->i64[1] + v87);
                  goto LABEL_125;
                }
              }

              v88 = v10;
LABEL_125:
              *v88 = v86;
            }

            v79 = &v83->u64[1];
            v82 += 8;
          }

          while (&v83->u64[1] != a2);
        }
      }

      else if (!v81)
      {
        do
        {
          v117 = v8->i64[0];
          v116 = v8->i64[1];
          v8 = v79;
          result = (*a3)(v116, v117);
          if (result)
          {
            v118 = v8->i64[0];
            v119 = v8;
            do
            {
              v120 = v119;
              v121 = *--v119;
              *v120 = v121;
              result = (*a3)(v118, *(v120 - 2));
            }

            while ((result & 1) != 0);
            *v119 = v118;
          }

          v79 = &v8->u64[1];
        }

        while (&v8->u64[1] != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v89 = (v11 - 2) >> 1;
        v124 = v89;
        do
        {
          v90 = v89;
          if (v124 >= v89)
          {
            v91 = (2 * v89) | 1;
            v92 = &v8->i64[v91];
            if (2 * v89 + 2 < v11 && (*a3)(*v92, v92[1]))
            {
              ++v92;
              v91 = 2 * v90 + 2;
            }

            v93 = &v8->i64[v90];
            result = (*a3)(*v92, *v93);
            if ((result & 1) == 0)
            {
              v94 = *v93;
              do
              {
                v95 = v92;
                *v93 = *v92;
                if (v124 < v91)
                {
                  break;
                }

                v96 = (2 * v91) | 1;
                v92 = &v8->i64[v96];
                v97 = 2 * v91 + 2;
                if (v97 < v11 && (*a3)(*v92, v92[1]))
                {
                  ++v92;
                  v96 = v97;
                }

                result = (*a3)(*v92, v94);
                v93 = v95;
                v91 = v96;
              }

              while (!result);
              *v95 = v94;
            }
          }

          v89 = v90 - 1;
        }

        while (v90);
        v98 = v122;
        do
        {
          v99 = v98;
          v100 = 0;
          v125 = v8->i64[0];
          v101 = v8;
          do
          {
            v102 = &v101[v100];
            v103 = v102 + 1;
            v104 = (2 * v100) | 1;
            v105 = 2 * v100 + 2;
            if (v105 >= v11)
            {
              v100 = (2 * v100) | 1;
            }

            else
            {
              v107 = v102[2];
              v106 = v102 + 2;
              result = (*a3)(*(v106 - 1), v107);
              if (result)
              {
                v103 = v106;
                v100 = v105;
              }

              else
              {
                v100 = v104;
              }
            }

            *v101 = *v103;
            v101 = v103;
          }

          while (v100 <= (v11 - 2) / 2);
          v98 = v99 - 1;
          if (v103 == v99 - 1)
          {
            *v103 = v125;
          }

          else
          {
            *v103 = *v98;
            *v98 = v125;
            v108 = (v103 - v8 + 8) >> 3;
            v109 = v108 < 2;
            v110 = v108 - 2;
            if (!v109)
            {
              v111 = v110 >> 1;
              v112 = &v8->i64[v110 >> 1];
              result = (*a3)(*v112, *v103);
              if (result)
              {
                v113 = *v103;
                do
                {
                  v114 = v112;
                  *v103 = *v112;
                  if (!v111)
                  {
                    break;
                  }

                  v111 = (v111 - 1) >> 1;
                  v112 = &v8->i64[v111];
                  result = (*a3)(*v112, v113);
                  v103 = v114;
                }

                while ((result & 1) != 0);
                *v114 = v113;
              }
            }
          }

          v109 = v11-- <= 2;
        }

        while (!v109);
      }

      return result;
    }

    v12 = v11 >> 1;
    v13 = *a3;
    if (v11 < 0x81)
    {
      v17 = (v13)(v10->i64[0], v10->i64[v12]);
      v18 = (*a3)(*v9, v10->i64[0]);
      if (v17)
      {
        v19 = v10->i64[v12];
        if (v18)
        {
          v10->i64[v12] = *v9;
          *v9 = v19;
        }

        else
        {
          v10->i64[v12] = v10->i64[0];
          v10->i64[0] = v19;
          if ((*a3)(*v9))
          {
            v31 = v10->i64[0];
            v10->i64[0] = *v9;
            *v9 = v31;
          }
        }
      }

      else if (v18)
      {
        v22 = v10->i64[0];
        v10->i64[0] = *v9;
        *v9 = v22;
        if ((*a3)(v10->i64[0], v10->i64[v12]))
        {
          v23 = v10->i64[v12];
          v10->i64[v12] = v10->i64[0];
          v10->i64[0] = v23;
        }
      }

      goto LABEL_55;
    }

    v14 = (v13)(v10->i64[v12], v10->i64[0]);
    v15 = (*a3)(*v9, v10->i64[v12]);
    if (v14)
    {
      v16 = v10->i64[0];
      if (v15)
      {
        v10->i64[0] = *v9;
        *v9 = v16;
      }

      else
      {
        v10->i64[0] = v10->i64[v12];
        v10->i64[v12] = v16;
        if ((*a3)(*v9))
        {
          v24 = v10->i64[v12];
          v10->i64[v12] = *v9;
          *v9 = v24;
        }
      }
    }

    else if (v15)
    {
      v20 = v10->i64[v12];
      v10->i64[v12] = *v9;
      *v9 = v20;
      if ((*a3)(v10->i64[v12], v10->i64[0]))
      {
        v21 = v10->i64[0];
        v10->i64[0] = v10->i64[v12];
        v10->i64[v12] = v21;
      }
    }

    v25 = v12 - 1;
    v26 = (*a3)(v8->i64[v12 - 1], v8->i64[1]);
    v27 = (*a3)(a2[-1].i64[0], v8->i64[v12 - 1]);
    if (v26)
    {
      v28 = v8->i64[1];
      if (v27)
      {
        v8->i64[1] = a2[-1].i64[0];
        a2[-1].i64[0] = v28;
      }

      else
      {
        v8->i64[1] = v8->i64[v25];
        v8->i64[v25] = v28;
        if ((*a3)(a2[-1].i64[0]))
        {
          v32 = v8->i64[v25];
          v8->i64[v25] = a2[-1].i64[0];
          a2[-1].i64[0] = v32;
        }
      }
    }

    else if (v27)
    {
      v29 = v8->i64[v25];
      v8->i64[v25] = a2[-1].i64[0];
      a2[-1].i64[0] = v29;
      if ((*a3)(v8->i64[v25], v8->i64[1]))
      {
        v30 = v8->i64[1];
        v8->i64[1] = v8->i64[v25];
        v8->i64[v25] = v30;
      }
    }

    v33 = a2;
    v34 = v12 + 1;
    v35 = (*a3)(v8->i64[v12 + 1], v8[1].i64[0]);
    v36 = (*a3)(v33[-2].i64[1], v8->i64[v12 + 1]);
    if (v35)
    {
      v37 = v8[1].i64[0];
      if (v36)
      {
        v8[1].i64[0] = v122[-2].i64[1];
        v122[-2].i64[1] = v37;
      }

      else
      {
        v8[1].i64[0] = v8->i64[v34];
        v8->i64[v34] = v37;
        if ((*a3)(v122[-2].i64[1]))
        {
          v40 = v8->i64[v34];
          v8->i64[v34] = v122[-2].i64[1];
          v122[-2].i64[1] = v40;
        }
      }
    }

    else if (v36)
    {
      v38 = v8->i64[v34];
      v8->i64[v34] = v122[-2].i64[1];
      v122[-2].i64[1] = v38;
      if ((*a3)(v8->i64[v34], v8[1].i64[0]))
      {
        v39 = v8[1].i64[0];
        v8[1].i64[0] = v8->i64[v34];
        v8->i64[v34] = v39;
      }
    }

    v41 = (*a3)(v8->i64[v12], v8->i64[v25]);
    v42 = (*a3)(v8->i64[v34], v8->i64[v12]);
    if ((v41 & 1) == 0)
    {
      v44 = v8->i64[v12];
      if (!v42)
      {
        goto LABEL_54;
      }

      v8->i64[v12] = v8->i64[v34];
      v8->i64[v34] = v44;
      v45 = (*a3)();
      v44 = v8->i64[v12];
      if (!v45)
      {
        goto LABEL_54;
      }

      v46 = v8->i64[v25];
      v8->i64[v25] = v44;
      v8->i64[v12] = v46;
      goto LABEL_53;
    }

    v43 = v8->i64[v25];
    if (v42)
    {
      v8->i64[v25] = v8->i64[v34];
      v8->i64[v34] = v43;
      v44 = v8->i64[v12];
    }

    else
    {
      v8->i64[v25] = v8->i64[v12];
      v8->i64[v12] = v43;
      v47 = (*a3)(v8->i64[v34]);
      v44 = v8->i64[v12];
      if (v47)
      {
        v46 = v8->i64[v34];
        v8->i64[v12] = v46;
        v8->i64[v34] = v44;
LABEL_53:
        v44 = v46;
      }
    }

LABEL_54:
    a2 = v122;
    v48 = v8->i64[0];
    v8->i64[0] = v44;
    v8->i64[v12] = v48;
LABEL_55:
    --a4;
    v49 = v8->i64[0];
    if (a5 & 1) != 0 || (v50 = (*a3)(v8[-1].i64[1], v8->i64[0]), v49 = v8->i64[0], (v50))
    {
      v51 = v8;
      do
      {
        v52 = v51;
        v53 = v51->i64[1];
        v51 = (v51 + 8);
      }

      while (((*a3)(v53, v49) & 1) != 0);
      v54 = a2;
      if (v52 == v8)
      {
        v54 = a2;
        do
        {
          if (v51 >= v54)
          {
            break;
          }

          v56 = v54[-1].i64[1];
          v54 = (v54 - 8);
        }

        while (((*a3)(v56, v49) & 1) == 0);
      }

      else
      {
        do
        {
          v55 = v54[-1].i64[1];
          v54 = (v54 - 8);
        }

        while (!(*a3)(v55, v49));
      }

      if (v51 < v54)
      {
        v57 = v51;
        v58 = v54;
        do
        {
          v59 = v57->i64[0];
          v57->i64[0] = v58->i64[0];
          v58->i64[0] = v59;
          do
          {
            v52 = v57;
            v60 = v57->i64[1];
            v57 = (v57 + 8);
          }

          while (((*a3)(v60, v49) & 1) != 0);
          do
          {
            v61 = v58[-1].i64[1];
            v58 = (v58 - 8);
          }

          while (!(*a3)(v61, v49));
        }

        while (v57 < v58);
      }

      if (v52 != v8)
      {
        v8->i64[0] = v52->i64[0];
      }

      v52->i64[0] = v49;
      a2 = v122;
      if (v51 < v54)
      {
        goto LABEL_76;
      }

      v62 = std::__insertion_sort_incomplete[abi:nn200100]<std::_RangeAlgPolicy,BOOL (*&)(md::MeshRenderable const*,md::MeshRenderable const*),md::MeshRenderable**>(v8, v52, a3);
      v10 = &v52->u64[1];
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_RangeAlgPolicy,BOOL (*&)(md::MeshRenderable const*,md::MeshRenderable const*),md::MeshRenderable**>(&v52->i64[1], v122, a3);
      if (result)
      {
        a2 = v52;
        if (!v62)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v62)
      {
LABEL_76:
        result = std::__introsort<std::_RangeAlgPolicy,BOOL (*&)(md::MeshRenderable const*,md::MeshRenderable const*),md::MeshRenderable**,false>(v8, v52, a3, a4, a5 & 1);
        a5 = 0;
        v10 = &v52->u64[1];
      }
    }

    else
    {
      result = (*a3)(v8->i64[0], *v9);
      if (result)
      {
        v10 = v8;
        do
        {
          v63 = v10->i64[1];
          v10 = (v10 + 8);
          result = (*a3)(v49, v63);
        }

        while ((result & 1) == 0);
      }

      else
      {
        v64 = &v8->u64[1];
        do
        {
          v10 = v64;
          if (v64 >= a2)
          {
            break;
          }

          v64 += 8;
          result = (*a3)(v49, v10->i64[0]);
        }

        while (!result);
      }

      v65 = a2;
      if (v10 < a2)
      {
        v65 = a2;
        do
        {
          v66 = v65[-1].i64[1];
          v65 = (v65 - 8);
          result = (*a3)(v49, v66);
        }

        while ((result & 1) != 0);
      }

      while (v10 < v65)
      {
        v67 = v10->i64[0];
        v10->i64[0] = v65->i64[0];
        v65->i64[0] = v67;
        do
        {
          v68 = v10->i64[1];
          v10 = (v10 + 8);
        }

        while (!(*a3)(v49, v68));
        do
        {
          v69 = v65[-1].i64[1];
          v65 = (v65 - 8);
          result = (*a3)(v49, v69);
        }

        while ((result & 1) != 0);
      }

      v70 = &v10[-1].i64[1];
      if (&v10[-1].u64[1] != v8)
      {
        v8->i64[0] = *v70;
      }

      a5 = 0;
      *v70 = v49;
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {

      return std::__sort4[abi:nn200100]<std::_RangeAlgPolicy,BOOL (*&)(md::MeshRenderable const*,md::MeshRenderable const*),md::MeshRenderable**,0>(v10, &v10->i64[1], v10[1].i64, v9, a3);
    }

    if (v11 == 5)
    {
      std::__sort4[abi:nn200100]<std::_RangeAlgPolicy,BOOL (*&)(md::MeshRenderable const*,md::MeshRenderable const*),md::MeshRenderable**,0>(v10, &v10->i64[1], v10[1].i64, &v10[1].i64[1], a3);
      result = (*a3)(*v9, v10[1].i64[1]);
      if (!result)
      {
        return result;
      }

      v71 = v10[1].i64[1];
      v10[1].i64[1] = *v9;
      *v9 = v71;
      result = (*a3)(v10[1].i64[1], v10[1].i64[0]);
      if (!result)
      {
        return result;
      }

      v72 = v10[1].i64[0];
      v10[1].i64[0] = v10[1].i64[1];
      v10[1].i64[1] = v72;
      result = (*a3)();
      if (!result)
      {
        return result;
      }

      v74 = v10->i64[1];
      v73 = v10[1].i64[0];
      v75 = v10->i64[0];
      v10->i64[1] = v73;
      v10[1].i64[0] = v74;
      result = (*a3)(v73, v75);
      goto LABEL_164;
    }

    goto LABEL_10;
  }

  v77 = (*a3)(v10->i64[1], v10->i64[0]);
  result = (*a3)(*v9, v10->i64[1]);
  if ((v77 & 1) == 0)
  {
    if (!result)
    {
      return result;
    }

    v115 = v10->i64[1];
    v10->i64[1] = *v9;
    *v9 = v115;
    result = (*a3)(v10->i64[1], v10->i64[0]);
LABEL_164:
    if (result)
    {
      *v10 = vextq_s8(*v10, *v10, 8uLL);
    }

    return result;
  }

  v78 = v10->i64[0];
  if (result)
  {
    v10->i64[0] = *v9;
    *v9 = v78;
  }

  else
  {
    v10->i64[0] = v10->i64[1];
    v10->i64[1] = v78;
    result = (*a3)(*v9);
    if (result)
    {
      v76 = v10->i64[1];
      v10->i64[1] = *v9;
      goto LABEL_103;
    }
  }

  return result;
}

uint64_t std::__sort4[abi:nn200100]<std::_RangeAlgPolicy,BOOL (*&)(md::MeshRenderable const*,md::MeshRenderable const*),md::MeshRenderable**,0>(void *a1, void *a2, void *a3, void *a4, unsigned int (**a5)(void))
{
  v10 = (*a5)(*a2, *a1);
  v11 = (*a5)(*a3, *a2);
  if (v10)
  {
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
      *a3 = v12;
    }

    else
    {
      *a1 = *a2;
      *a2 = v12;
      if ((*a5)(*a3))
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
      }
    }
  }

  else if (v11)
  {
    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    if ((*a5)(*a2, *a1))
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

  result = (*a5)(*a4, *a3);
  if (result)
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    result = (*a5)(*a3, *a2);
    if (result)
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      result = (*a5)(*a2, *a1);
      if (result)
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_RangeAlgPolicy,BOOL (*&)(md::MeshRenderable const*,md::MeshRenderable const*),md::MeshRenderable**>(void *a1, void *a2, unsigned int (**a3)(uint64_t))
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v14 = (*a3)(a1[1], *a1);
        v15 = (*a3)(*(a2 - 1), a1[1]);
        if (v14)
        {
          v16 = *a1;
          if (v15)
          {
            *a1 = *(a2 - 1);
            *(a2 - 1) = v16;
            return 1;
          }

          *a1 = a1[1];
          a1[1] = v16;
          if (!(*a3)(*(a2 - 1)))
          {
            return 1;
          }

          v7 = a1[1];
          a1[1] = *(a2 - 1);
          goto LABEL_6;
        }

        if (!v15)
        {
          return 1;
        }

        v21 = a1[1];
        a1[1] = *(a2 - 1);
        *(a2 - 1) = v21;
        v13 = (*a3)(a1[1], *a1);
        break;
      case 4:
        std::__sort4[abi:nn200100]<std::_RangeAlgPolicy,BOOL (*&)(md::MeshRenderable const*,md::MeshRenderable const*),md::MeshRenderable**,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        std::__sort4[abi:nn200100]<std::_RangeAlgPolicy,BOOL (*&)(md::MeshRenderable const*,md::MeshRenderable const*),md::MeshRenderable**,0>(a1, a1 + 1, a1 + 2, a1 + 3, a3);
        if (!(*a3)(*(a2 - 1), a1[3]))
        {
          return 1;
        }

        v8 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v8;
        if (!(*a3)(a1[3], a1[2]))
        {
          return 1;
        }

        v9 = a1[2];
        a1[2] = a1[3];
        a1[3] = v9;
        if (!(*a3)())
        {
          return 1;
        }

        v11 = a1[1];
        v10 = a1[2];
        v12 = *a1;
        a1[1] = v10;
        a1[2] = v11;
        v13 = (*a3)(v10, v12);
        break;
      default:
        goto LABEL_17;
    }

    if (v13)
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if ((*a3)(*(a2 - 1), *a1))
    {
      v7 = *a1;
      *a1 = *(a2 - 1);
LABEL_6:
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_17:
  v17 = (*a3)(a1[1], *a1);
  v18 = a1 + 2;
  v19 = (*a3)(a1[2], a1[1]);
  if (v17)
  {
    v20 = *a1;
    if (v19)
    {
      *a1 = a1[2];
      a1[2] = v20;
    }

    else
    {
      v23 = a1[2];
      *a1 = a1[1];
      a1[1] = v20;
      if ((*a3)(v23))
      {
        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
      }
    }
  }

  else if (v19)
  {
    v22 = a1[1];
    a1[1] = a1[2];
    a1[2] = v22;
    if ((*a3)())
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v24 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v25 = 0;
  v26 = 0;
  while (1)
  {
    if ((*a3)(*v24, *v18))
    {
      v27 = *v24;
      v28 = v25;
      while (1)
      {
        v29 = a1 + v28;
        *(a1 + v28 + 24) = *(a1 + v28 + 16);
        if (v28 == -16)
        {
          break;
        }

        v28 -= 8;
        if (((*a3)(v27, *(v29 + 1)) & 1) == 0)
        {
          v30 = (a1 + v28 + 24);
          goto LABEL_40;
        }
      }

      v30 = a1;
LABEL_40:
      *v30 = v27;
      if (++v26 == 8)
      {
        return v24 + 1 == a2;
      }
    }

    v18 = v24;
    v25 += 8;
    if (++v24 == a2)
    {
      return 1;
    }
  }
}

BOOL renderableSort(const md::MeshRenderable *a1, const md::MeshRenderable *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = v2 >= v3;
  if (v2 == v3)
  {
    v4 = *(a1 + 51) >= *(a2 + 51);
  }

  return !v4;
}

uint64_t std::__function::__func<md::MeshRenderableLogic::gatherRenderables(md::LayoutContext const&,md::MaterialContext const&)::$_0,std::allocator<md::MeshRenderableLogic::gatherRenderables(md::LayoutContext const&,md::MaterialContext const&)::$_0>,BOOL ()(md::MeshRenderable *)>::operator()(uint64_t a1, uint64_t a2)
{
  if (*(*a2 + 8) <= 3u)
  {
    v2 = *(*a2 + 144);
  }

  return v2 & 1;
}

void *std::__hash_table<std::__hash_value_type<md::RenderBatch *,gm::Range<unsigned long>>,std::__unordered_map_hasher<md::RenderBatch *,std::__hash_value_type<md::RenderBatch *,gm::Range<unsigned long>>,std::hash<md::RenderBatch *>,std::equal_to<md::RenderBatch *>,true>,std::__unordered_map_equal<md::RenderBatch *,std::__hash_value_type<md::RenderBatch *,gm::Range<unsigned long>>,std::equal_to<md::RenderBatch *>,std::hash<md::RenderBatch *>,true>,std::allocator<std::__hash_value_type<md::RenderBatch *,gm::Range<unsigned long>>>>::__emplace_unique_key_args<md::RenderBatch *,std::piecewise_construct_t const&,std::tuple<md::RenderBatch * const&>,std::tuple<>>(void *a1, unint64_t a2, void **a3)
{
  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = a1[1];
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

__n128 std::__function::__func<md::MeshRenderableLogic::processChangedBatches(md::LayoutContext const&,std::unordered_set<unsigned short> *)::$_0,std::allocator<md::MeshRenderableLogic::processChangedBatches(md::LayoutContext const&,std::unordered_set<unsigned short> *)::$_0>,void ()(ggl::ResourceAccessor *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A085C8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void md::MeshRenderableLogic::processMaterialEnteringCollector(md::MeshRenderableLogic *this, gdc::Registry *a2, gdc::EntityCollector *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = gdc::Context::context<md::RenderBatchManager>(a2);
  v6 = *(a3 + 4);
  v7 = *(a3 + 5);
  if (v6 != v7)
  {
    v8 = v5;
    do
    {
      v9 = *v6;
      v10 = gdc::Registry::get<md::components::MeshInstance,md::components::Material>(a2, *v6);
      if (v11)
      {
        if (v10)
        {
          buildMaterialKey(a2, v9, v10, v11, v14);
          if (v16 == 1)
          {
            md::RenderBatchManager::process(v8, v14, v9);
            if ((v16 & 1) != 0 && v15 != -1)
            {
              (*(&off_1F2A07AB8 + v15))(&v13, v14);
            }
          }
        }
      }

      else
      {
        v12 = gdc::Registry::storage<md::components::PendingMaterial>(a2);
        geo::sparse_set<gdc::Entity,unsigned short,256ul>::find((v12 + 32), HIDWORD(v9));
      }

      ++v6;
    }

    while (v6 != v7);
  }
}

void sub_1B2E709E0(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, __int16 a10, char a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  if (a42 == 1)
  {
    v45 = *(v43 + 224);
    if (v45 != -1)
    {
      (*(v42 + 8 * v45))(&a12, &a13, a3, a4, a5, a6, a7, a8);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t gdc::Registry::get<md::components::MeshInstance,md::components::Material>(uint64_t a1, uint64_t a2)
{
  v4 = gdc::Registry::storage<md::components::MeshInstance>(a1);
  v5 = gdc::ComponentStorageWrapper<md::components::MeshInstance>::get(v4, a2);
  v6 = gdc::Registry::storage<md::components::Material>(a1);
  gdc::ComponentStorageWrapper<md::components::Material>::get(v6, a2);
  return v5;
}

void buildMaterialKey(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v198[2] = *MEMORY[0x1E69E9840];
  v8 = gdc::Registry::storage<md::components::Decal>(a1);
  v9 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v8 + 4, HIDWORD(a2));
  v10 = v8[11];
  if (v8[8] == v9)
  {
    v11 = v8[11];
  }

  else
  {
    v11 = v8[10] + ((v9 - v8[7]) >> 1);
  }

  v12 = gdc::Registry::storage<md::components::Visibility>(a1);
  v13 = gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>::get(v12, a2);
  v14 = gdc::Registry::storage<md::components::Collapsible>(a1);
  v15 = gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>::get(v14, a2);
  v16 = gdc::Registry::storage<md::components::IntersectionWithTileEdges>(a1);
  v17 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v16 + 4, HIDWORD(a2));
  if (v16[8] == v17)
  {
    v18 = v16[11];
  }

  else
  {
    v18 = v16[10] + 2 * (v17 - v16[7]);
  }

  if (v18 == v16[11])
  {
    v19 = 0;
  }

  else
  {
    v19 = v18;
  }

  if (v13)
  {
    v20 = *v13;
  }

  else
  {
    v20 = 1;
  }

  v170 = v15 != 0;
  *a5 = 0;
  *(a5 + 232) = 0;
  if (!a4[1])
  {
    return;
  }

  v169 = v20 & 1;
  if (v11 != v10 && v11)
  {
    v21 = *a3;
    if (*(*a3 + 60) == 1 && v21[32] == 3)
    {
      a2 = 0;
    }

    v171 = *a4;
    v173 = a3[32];
    v22 = *(*v21 + 120);
    v23 = *(*v21 + 64);
    if (!v22)
    {
      goto LABEL_24;
    }

    v24 = *(*v21 + 120);
    do
    {
      v25 = v24;
      v24 = *v24;
    }

    while (v24);
    if (v25 == (*v21 + 120) || v25[4])
    {
LABEL_24:
      v26 = 0;
      v27 = 0;
    }

    else
    {
      v129 = std::map<unsigned long,std::shared_ptr<ggl::DeviceData>,std::less<unsigned long>,geo::allocator_adapter<std::pair<unsigned long const,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::at(v22, 0);
      v27 = *v129;
      v26 = v129[1];
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    v28 = *(*v21 + 120);
    if (!v28)
    {
      goto LABEL_36;
    }

    v29 = (*v21 + 120);
    v30 = *v29;
    do
    {
      if (v30[4])
      {
        v29 = v30;
      }

      v30 = v30[v30[4] == 0];
    }

    while (v30);
    if (v29 == (*v21 + 120) || v29[4] > 1uLL)
    {
LABEL_36:
      v33 = 0;
      v32 = 0;
    }

    else
    {
      v31 = std::map<unsigned long,std::shared_ptr<ggl::DeviceData>,std::less<unsigned long>,geo::allocator_adapter<std::pair<unsigned long const,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::at(v28, 1uLL);
      v32 = *v31;
      v33 = v31[1];
      if (v33)
      {
        atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    v40 = *(*v21 + 120);
    if (!v40)
    {
      goto LABEL_47;
    }

    v41 = (*v21 + 120);
    v42 = *v41;
    do
    {
      v43 = v42[4];
      v44 = v43 >= 2;
      v45 = v43 < 2;
      if (v44)
      {
        v41 = v42;
      }

      v42 = v42[v45];
    }

    while (v42);
    if (v41 == (*v21 + 120) || v41[4] > 2uLL)
    {
LABEL_47:
      v47 = 0;
      v48 = 0;
    }

    else
    {
      v46 = std::map<unsigned long,std::shared_ptr<ggl::DeviceData>,std::less<unsigned long>,geo::allocator_adapter<std::pair<unsigned long const,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::at(v40, 2uLL);
      v48 = *v46;
      v47 = v46[1];
      if (v47)
      {
        atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    v49 = v21[32];
    v167 = *v23;
    if (*(v23 + 1))
    {
      atomic_fetch_add_explicit((*(v23 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v33)
    {
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v47)
    {
      atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:nn200100](v47);
    }

    if (v33)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v33);
    }

    if (v26)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v26);
    }

    *&v50 = v27;
    *&v51 = v32;
    *&v52 = v48;
    v53 = *(a4 + 1);
    v54 = a4[2];
    if (v54)
    {
      atomic_fetch_add_explicit((v54 + 8), 1uLL, memory_order_relaxed);
    }

    *(&v50 + 1) = v26;
    *(&v51 + 1) = v33;
    *(&v52 + 1) = v47;
    if (!*(a5 + 232))
    {
      *a5 = v167;
      *(a5 + 16) = v50;
      *(a5 + 32) = v51;
      *(a5 + 48) = v52;
      *(a5 + 64) = a2;
      *(a5 + 72) = v169;
      *(a5 + 73) = v49;
      *(a5 + 74) = v173;
      *(a5 + 75) = 0;
      *(a5 + 77) = 0;
      *(a5 + 80) = v53;
      *(a5 + 96) = v171;
      *(a5 + 224) = 2;
      *(a5 + 232) = 1;
      return;
    }

    v55 = *(a5 + 224);
    if (v55 != -1)
    {
      v175 = v53;
      v162 = v51;
      v165 = v52;
      if (v55 == 2)
      {
        v56 = *(a5 + 8);
        *a5 = v167;
        if (v56)
        {
          v158 = v50;
          std::__shared_weak_count::__release_shared[abi:nn200100](v56);
          v50 = v158;
          v51 = v162;
          v52 = v165;
          v53 = v175;
        }

        v57 = *(a5 + 24);
        *(a5 + 16) = v50;
        if (v57)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v57);
          v51 = v162;
          v52 = v165;
          v53 = v175;
        }

        v58 = *(a5 + 40);
        *(a5 + 32) = v51;
        if (v58)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v58);
          v52 = v165;
          v53 = v175;
        }

        v59 = *(a5 + 56);
        *(a5 + 48) = v52;
        if (v59)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v59);
          v53 = v175;
        }

        *(a5 + 64) = a2;
        *(a5 + 72) = v169;
        *(a5 + 73) = v49;
        *(a5 + 74) = v173;
        *(a5 + 75) = 0;
        *(a5 + 77) = 0;
        v60 = *(a5 + 88);
        *(a5 + 80) = v53;
        if (v60)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v60);
        }

        *(a5 + 96) = v171;
        return;
      }

      v160 = v50;
      (*(&off_1F2A07AB8 + v55))(&v176, a5);
      v50 = v160;
      v51 = v162;
      v52 = v165;
      v53 = v175;
    }

    *a5 = v167;
    *(a5 + 16) = v50;
    *(a5 + 32) = v51;
    *(a5 + 48) = v52;
    *(a5 + 64) = a2;
    *(a5 + 72) = v169;
    *(a5 + 73) = v49;
    *(a5 + 74) = v173;
    *(a5 + 75) = 0;
    *(a5 + 77) = 0;
    *(a5 + 80) = v53;
    *(a5 + 96) = v171;
    *(a5 + 224) = 2;
    return;
  }

  v34 = gdc::Registry::storage<md::components::IntendedSceneLayer>(a1);
  v164 = gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>::get(v34, a2);
  v35 = gdc::Registry::storage<md::components::MarketMask>(a1);
  v161 = gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>::get(v35, a2);
  v36 = gdc::Registry::storage<md::components::GeneratedTexture>(a1);
  v157 = gdc::ComponentStorageWrapper<arComponents::RotationToApply>::get(v36, a2);
  v37 = gdc::Registry::storage<md::components::MaterialRaster>(a1);
  v38 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v37 + 4, HIDWORD(a2));
  if (v37[8] == v38)
  {
    v39 = v37[11];
  }

  else
  {
    v39 = v37[10] + ((v38 - v37[7]) >> 3);
  }

  if (v39 == v37[11])
  {
    v61 = 0;
  }

  else
  {
    v61 = v39;
  }

  v155 = v61;
  v62 = gdc::Registry::storage<md::components::AlbedoTint>(a1);
  v63 = gdc::ComponentStorageWrapper<arComponents::RotationToApply>::get(v62, a2);
  v64 = gdc::Registry::storage<md::components::PositionScaleFactor>(a1);
  v153 = gdc::ComponentStorageWrapper<md::components::CustomZIndex>::get(v64, a2);
  v65 = gdc::Registry::storage<md::components::HideWhenCollapsed>(a1);
  v66 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v65 + 4, HIDWORD(a2));
  v67 = v65[11];
  if (v65[8] == v66)
  {
    v68 = v65[11];
  }

  else
  {
    v68 = v65[10] + ((v66 - v65[7]) >> 3);
  }

  v69 = gdc::Registry::storage<md::overlayComponents::DrapedRasterOverlay>(a1);
  v70 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v69 + 4, HIDWORD(a2));
  if (v69[8] == v70)
  {
    v71 = v69[11];
  }

  else
  {
    v71 = v69[10] + 48 * ((v70 - v69[7]) >> 3);
  }

  if (v71 == v69[11])
  {
    v72 = 0;
  }

  else
  {
    v72 = v71;
  }

  v168 = v72;
  v73 = gdc::Registry::storage<md::components::CustomRenderState>(a1);
  v74 = gdc::ComponentStorageWrapper<md::components::CustomRenderState>::get(v73, a2);
  v75 = gdc::Registry::storage<md::components::SubtileZone>(a1);
  v76 = gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>::get(v75, a2);
  v77 = gdc::Registry::storage<md::components::SupportsSteepnessDarkening>(a1);
  v78 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v77 + 4, HIDWORD(a2));
  if (v77[8] == v78)
  {
    v79 = v77[11];
  }

  else
  {
    v79 = v77[10] + ((v78 - v77[7]) >> 3);
  }

  if (v164)
  {
    v166 = *v164;
  }

  else
  {
    v166 = 0;
  }

  v81 = v68 != v67 && v68 != 0;
  v152 = v81;
  v83 = v79 != v77[11] && v79 != 0;
  if (v76)
  {
    v151 = *v76;
  }

  else
  {
    v151 = 0;
  }

  if (v168)
  {
    operator new();
  }

  v150 = v83;
  if (v157)
  {
    v84 = *v157;
    v159 = v84;
    if (*(&v84 + 1))
    {
      atomic_fetch_add_explicit((*(&v84 + 1) + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v159 = 0u;
  }

  *&v176 = a2;
  v85 = *a3;
  if (v19)
  {
    if (*(*a3 + 60))
    {
      v86 = &v176;
      if (v85[32] == 3)
      {
        v86 = (v19 + 8);
      }

      a2 = *v86;
    }
  }

  else if (*(*a3 + 60) && v85[32] == 3)
  {
    a2 = 0;
  }

  v87 = &md::kMarketMaskDefault;
  if (v161)
  {
    v87 = v161;
  }

  if (v155)
  {
    v163 = *v155;
  }

  else
  {
    v163 = 0;
  }

  if (v63)
  {
    v88 = *v63;
    v197[0] = *(v63 + 1);
    *(v197 + 7) = *(v63 + 8);
  }

  else
  {
    v88 = 0;
  }

  if (v153)
  {
    v156 = *v153;
    v154 = 1;
    if (v19)
    {
      goto LABEL_135;
    }

LABEL_138:
    v149 = 0;
    v148 = 0;
    if (v74)
    {
      goto LABEL_136;
    }

    goto LABEL_139;
  }

  v156 = 0;
  v154 = 0;
  if (!v19)
  {
    goto LABEL_138;
  }

LABEL_135:
  v149 = *v19;
  v148 = 1;
  if (v74)
  {
LABEL_136:
    v147 = *(v74 + 16);
    goto LABEL_140;
  }

LABEL_139:
  v147 = 0;
LABEL_140:
  v89 = *v87;
  if (v63)
  {
    v198[0] = v197[0];
    *(v198 + 7) = *(v197 + 7);
  }

  else
  {
    v88 = 0;
  }

  v90 = a3[32];
  v146 = v89;
  v145 = *a4;
  v91 = *(*v85 + 120);
  v92 = *(*v85 + 64);
  v144 = v88;
  if (!v91)
  {
    goto LABEL_148;
  }

  v93 = *(*v85 + 120);
  do
  {
    v94 = v93;
    v93 = *v93;
  }

  while (v93);
  if (v94 == (*v85 + 120) || v94[4])
  {
LABEL_148:
    v95 = 0;
    v96 = 0;
  }

  else
  {
    v130 = a3[32];
    v131 = std::map<unsigned long,std::shared_ptr<ggl::DeviceData>,std::less<unsigned long>,geo::allocator_adapter<std::pair<unsigned long const,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::at(v91, 0);
    v96 = *v131;
    v95 = v131[1];
    if (v95)
    {
      atomic_fetch_add_explicit(&v95->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v90 = v130;
  }

  v97 = *(*v85 + 120);
  if (!v97)
  {
    goto LABEL_159;
  }

  v98 = (*v85 + 120);
  v99 = *v98;
  do
  {
    if (v99[4])
    {
      v98 = v99;
    }

    v99 = v99[v99[4] == 0];
  }

  while (v99);
  if (v98 == (*v85 + 120) || v98[4] > 1uLL)
  {
LABEL_159:
    v103 = 0;
    v102 = 0;
  }

  else
  {
    v100 = v90;
    v101 = std::map<unsigned long,std::shared_ptr<ggl::DeviceData>,std::less<unsigned long>,geo::allocator_adapter<std::pair<unsigned long const,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::at(v97, 1uLL);
    v102 = *v101;
    v103 = v101[1];
    if (v103)
    {
      atomic_fetch_add_explicit(&v103->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v90 = v100;
  }

  v104 = *(*v85 + 120);
  if (!v104)
  {
    goto LABEL_172;
  }

  v105 = (*v85 + 120);
  v106 = *v105;
  do
  {
    v107 = v106[4];
    v44 = v107 >= 2;
    v108 = v107 < 2;
    if (v44)
    {
      v105 = v106;
    }

    v106 = v106[v108];
  }

  while (v106);
  if (v105 == (*v85 + 120) || v105[4] > 2uLL)
  {
    v104 = 0;
LABEL_172:
    v111 = 0;
    goto LABEL_173;
  }

  v109 = v90;
  v110 = std::map<unsigned long,std::shared_ptr<ggl::DeviceData>,std::less<unsigned long>,geo::allocator_adapter<std::pair<unsigned long const,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::at(v104, 2uLL);
  v111 = *v110;
  v104 = v110[1];
  if (v104)
  {
    atomic_fetch_add_explicit(&v104->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v90 = v109;
LABEL_173:
  v112 = v85[32];
  v113 = v92[1];
  *&v176 = *v92;
  *(&v176 + 1) = v113;
  if (v113)
  {
    atomic_fetch_add_explicit((v113 + 8), 1uLL, memory_order_relaxed);
  }

  *&v177 = v96;
  *(&v177 + 1) = v95;
  if (v95)
  {
    atomic_fetch_add_explicit(&v95->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *&v178 = v102;
  *(&v178 + 1) = v103;
  if (v103)
  {
    atomic_fetch_add_explicit(&v103->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *&v179 = v111;
  *(&v179 + 1) = v104;
  if (v104)
  {
    atomic_fetch_add_explicit(&v104->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *v180 = a2;
  v180[8] = v169;
  v180[9] = v112;
  v180[10] = v90;
  v180[11] = v170;
  v180[12] = v152;
  v180[13] = v151;
  if (v104)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v104);
  }

  if (v103)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v103);
  }

  if (v95)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v95);
  }

  v114 = a4[2];
  *&v181 = a4[1];
  *(&v181 + 1) = v114;
  if (v114)
  {
    atomic_fetch_add_explicit((v114 + 8), 1uLL, memory_order_relaxed);
  }

  v182 = v145;
  v183 = v159;
  if (*(&v159 + 1))
  {
    atomic_fetch_add_explicit((*(&v159 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  LOBYTE(v184) = v166;
  HIBYTE(v184) = v146;
  v185 = v163;
  LOBYTE(v186) = 0;
  v187 = 0;
  if (v63)
  {
    LOBYTE(v186) = v144;
    *(&v186 + 1) = v198[0];
    *(&v186 + 1) = *(v198 + 7);
    v187 = 1;
  }

  v188 = v156;
  v189 = v154;
  LOBYTE(v190) = 0;
  v194 = 0;
  LOWORD(v195) = v149 | (v148 << 8);
  BYTE2(v195) = v147 & 1;
  HIBYTE(v195) = v150;
  if (*(&v159 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v159 + 1));
  }

  v196 = 1;
  if (*(a5 + 232))
  {
    v115 = *(a5 + 224);
    if (v115 != -1)
    {
      if (!v115)
      {
        v116 = v176;
        v176 = 0uLL;
        v117 = *(a5 + 8);
        *a5 = v116;
        if (v117)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v117);
        }

        v118 = v177;
        v177 = 0uLL;
        v119 = *(a5 + 24);
        *(a5 + 16) = v118;
        if (v119)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v119);
        }

        v120 = v178;
        v178 = 0uLL;
        v121 = *(a5 + 40);
        *(a5 + 32) = v120;
        if (v121)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v121);
        }

        v122 = v179;
        v179 = 0uLL;
        v123 = *(a5 + 56);
        *(a5 + 48) = v122;
        if (v123)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v123);
        }

        *(a5 + 64) = *v180;
        *(a5 + 70) = *&v180[6];
        v124 = v181;
        v181 = 0uLL;
        v125 = *(a5 + 88);
        *(a5 + 80) = v124;
        if (v125)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v125);
        }

        *(a5 + 96) = v182;
        v126 = v183;
        v183 = 0uLL;
        v127 = *(a5 + 112);
        *(a5 + 104) = v126;
        if (v127)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v127);
        }

        *(a5 + 120) = v184;
        *(a5 + 122) = v185;
        v128 = *(a5 + 140);
        if (v128 == v187)
        {
          if (*(a5 + 140))
          {
            *(a5 + 124) = v186;
          }
        }

        else
        {
          if (v128)
          {
            v132 = 0;
          }

          else
          {
            *(a5 + 124) = v186;
            v132 = 1;
          }

          *(a5 + 140) = v132;
        }

        *(a5 + 144) = v188;
        *(a5 + 148) = v189;
        if (*(a5 + 208) == v194)
        {
          if (*(a5 + 208))
          {
            v133 = v190;
            v190 = 0uLL;
            v134 = *(a5 + 160);
            *(a5 + 152) = v133;
            if (v134)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v134);
            }

            *(a5 + 168) = v191;
            v135 = v192;
            v192 = 0uLL;
            v136 = *(a5 + 184);
            *(a5 + 176) = v135;
            if (v136)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v136);
            }

            v137 = v193;
            v193 = 0uLL;
            v138 = *(a5 + 200);
            *(a5 + 192) = v137;
            if (v138)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v138);
            }
          }
        }

        else if (*(a5 + 208))
        {
          v139 = *(a5 + 200);
          if (v139)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v139);
          }

          v140 = *(a5 + 184);
          if (v140)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v140);
          }

          v141 = *(a5 + 160);
          if (v141)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v141);
          }

          *(a5 + 208) = 0;
        }

        else
        {
          *(a5 + 152) = v190;
          v190 = 0uLL;
          *(a5 + 168) = v191;
          v142 = v192;
          v143 = v193;
          v192 = 0uLL;
          *(a5 + 176) = v142;
          *(a5 + 192) = v143;
          v193 = 0uLL;
          *(a5 + 208) = 1;
        }

        *(a5 + 216) = v195;
        goto LABEL_247;
      }

      (*(&off_1F2A07AB8 + v115))(v198, a5);
    }

    std::__variant_detail::__union<(std::__variant_detail::_Trait)1,0ul,md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>::__union[abi:nn200100]<md::MaterialRenderBatchKey>(a5, &v176);
    *(a5 + 224) = 0;
  }

  else
  {
    std::__variant_detail::__union<(std::__variant_detail::_Trait)1,0ul,md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>::__union[abi:nn200100]<md::MaterialRenderBatchKey>(a5, &v176);
    *(a5 + 224) = 0;
    *(a5 + 232) = 1;
  }

LABEL_247:
  if (v196 == 1)
  {
    md::MaterialRenderBatchKey::~MaterialRenderBatchKey(&v176);
  }
}

void sub_1B2E71A8C(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  if (*(v38 + 232) == 1)
  {
    v40 = *(v38 + 224);
    if (v40 != -1)
    {
      (*(&off_1F2A07AB8 + v40))(va, v38, a3, a4, a5, a6, a7, a8);
    }

    *(v38 + 224) = -1;
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN2md22MaterialRenderBatchKeyENS8_26DynamicTypedRenderBatchKeyENS8_27MaterialDecalRenderBatchKeyEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSD_1EJS9_SA_SB_EEEEEEDcSF_DpT0_(uint64_t a1, void *a2)
{
  v3 = a2[11];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = a2[7];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = a2[5];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = a2[3];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v7 = a2[1];
  if (v7)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN2md22MaterialRenderBatchKeyENS8_26DynamicTypedRenderBatchKeyENS8_27MaterialDecalRenderBatchKeyEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSD_1EJS9_SA_SB_EEEEEEDcSF_DpT0_(uint64_t a1, void *a2)
{
  v3 = a2[7];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = a2[5];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = a2[3];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = a2[1];
  if (v6)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }
}

void md::MaterialRenderBatchKey::~MaterialRenderBatchKey(md::MaterialRenderBatchKey *this)
{
  if (*(this + 208) == 1)
  {
    v2 = *(this + 25);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v2);
    }

    v3 = *(this + 23);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    v4 = *(this + 20);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }
  }

  v5 = *(this + 14);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = *(this + 11);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v7 = *(this + 7);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  v8 = *(this + 5);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  v9 = *(this + 3);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  v10 = *(this + 1);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }
}

uint64_t std::__variant_detail::__union<(std::__variant_detail::_Trait)1,0ul,md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>::__union[abi:nn200100]<md::MaterialRenderBatchKey>(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(result + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(result + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(result + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v2 = *(a2 + 64);
  *(result + 70) = *(a2 + 70);
  *(result + 64) = v2;
  *(result + 80) = *(a2 + 80);
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(result + 96) = *(a2 + 96);
  *(result + 104) = *(a2 + 104);
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  v3 = *(a2 + 120);
  v4 = *(a2 + 122);
  *(result + 124) = 0;
  *(result + 122) = v4;
  *(result + 120) = v3;
  *(result + 140) = 0;
  if (*(a2 + 140) == 1)
  {
    *(result + 124) = *(a2 + 124);
    *(result + 140) = 1;
  }

  *(result + 144) = *(a2 + 144);
  *(result + 152) = 0;
  *(result + 208) = 0;
  if (*(a2 + 208) == 1)
  {
    *(result + 152) = *(a2 + 152);
    *(a2 + 152) = 0;
    *(a2 + 160) = 0;
    *(result + 168) = *(a2 + 168);
    *(result + 176) = *(a2 + 176);
    *(a2 + 176) = 0;
    *(a2 + 184) = 0;
    *(result + 192) = *(a2 + 192);
    *(a2 + 192) = 0;
    *(a2 + 200) = 0;
    *(result + 208) = 1;
  }

  *(result + 216) = *(a2 + 216);
  return result;
}

void *std::map<unsigned long,std::shared_ptr<ggl::DeviceData>,std::less<unsigned long>,geo::allocator_adapter<std::pair<unsigned long const,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::at(void *a1, unint64_t a2)
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
      v2 = a1[4];
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
      return a1 + 5;
    }

    a1 = a1[1];
    if (!a1)
    {
      goto LABEL_7;
    }
  }
}

void ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A07BD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::Registry::storage<md::components::MaterialRaster>(uint64_t a1)
{
  v3 = 0xBF279C46863538CCLL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xBF279C46863538CCLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<md::components::SupportsSteepnessDarkening>(uint64_t a1)
{
  v3 = 0x49D227B9B7922EE1;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x49D227B9B7922EE1uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<md::components::SupportsSteepnessDarkening>::remove(void *a1, uint64_t a2)
{
  v8 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = a1[8];
  if (v4 != v3)
  {
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    --a1[11];
    v5 = a1[28];
    if (v5)
    {
      v6 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v5[6], v6, &v8, 1);
        v5 = *v5;
      }

      while (v5);
    }
  }

  return v4 != v3;
}

void gdc::ComponentStorageWrapper<md::components::SupportsSteepnessDarkening>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<md::components::SupportsSteepnessDarkening>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

BOOL gdc::ComponentStorageWrapper<md::components::MaterialRaster>::remove(void *a1, uint64_t a2)
{
  v11 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10];
    v7 = (v3 - a1[7]) >> 3;
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    *(v6 + v7) = *--a1[11];
    v8 = a1[28];
    if (v8)
    {
      v9 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v8[6], v9, &v11, 1);
        v8 = *v8;
      }

      while (v8);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<md::components::MaterialRaster>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<md::components::MaterialRaster>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

uint64_t gdc::Registry::storage<md::components::IntersectionWithTileEdges>(uint64_t a1)
{
  v3 = 0x17A57C92AE39566DLL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x17A57C92AE39566DuLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<md::components::IntersectionWithTileEdges>::remove(void *a1, uint64_t a2)
{
  v11 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10];
    v7 = 2 * (v3 - a1[7]);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    *(v6 + v7) = *(a1[11] - 16);
    a1[11] -= 16;
    v8 = a1[28];
    if (v8)
    {
      v9 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v8[6], v9, &v11, 1);
        v8 = *v8;
      }

      while (v8);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<md::components::IntersectionWithTileEdges>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<md::components::IntersectionWithTileEdges>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

void md::MeshRenderableLogic::processMaterialUpdateCollector(md::MeshRenderableLogic *this, gdc::Registry *a2, gdc::EntityCollector *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = gdc::Context::context<md::RenderBatchManager>(a2);
  v6 = *(a3 + 4);
  v7 = *(a3 + 5);
  if (v6 != v7)
  {
    v8 = v5;
    do
    {
      v9 = *v6;
      v10 = gdc::Registry::get<md::components::MeshInstance,md::components::Material>(a2, *v6);
      if (v11)
      {
        v12 = v10 == 0;
      }

      else
      {
        v12 = 1;
      }

      if (!v12)
      {
        buildMaterialKey(a2, v9, v10, v11, v14);
        if (v16 == 1)
        {
          md::RenderBatchManager::process(v8, v14, v9);
          if ((v16 & 1) != 0 && v15 != -1)
          {
            (*(&off_1F2A07AB8 + v15))(&v13, v14);
          }
        }
      }

      ++v6;
    }

    while (v6 != v7);
  }
}

void sub_1B2E729B0(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, __int16 a10, char a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  if (a42 == 1)
  {
    v45 = *(v43 + 224);
    if (v45 != -1)
    {
      (*(v42 + 8 * v45))(&a12, &a13, a3, a4, a5, a6, a7, a8);
    }
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<md::MeshRenderableLogic::getWrappedCollectorVisitor(BOOL,std::function<void ()(gdc::Registry *,gdc::EntityCollector *)>)::$_0,std::allocator<md::MeshRenderableLogic::getWrappedCollectorVisitor(BOOL,std::function<void ()(gdc::Registry *,gdc::EntityCollector *)>)::$_0>,void ()(gdc::Registry *,gdc::EntityCollector *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A08478;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void md::MeshRenderableLogic::processVisibilityUpdateCollector(md::MeshRenderableLogic *this, gdc::Registry *a2, gdc::EntityCollector *a3)
{
  v3 = *(a3 + 4);
  for (i = *(a3 + 5); v3 != i; ++v3)
  {
    v6 = *v3;
    v7 = HIDWORD(*v3);
    v8 = gdc::Registry::storage<md::components::MeshInstance>(a2);
    Index = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v8 + 32), v7);
    if (*(v8 + 64) == Index)
    {
      v10 = gdc::Registry::storage<md::components::DynamicMeshInstance>(a2);
      Index = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v10 + 32), v7);
      if (*(v10 + 64) == Index)
      {
        continue;
      }
    }

    md::MeshRenderableLogic::updateStaticEntityVisibility(Index, v6, a2);
  }
}

void md::MeshRenderableLogic::updateStaticEntityVisibility(uint64_t a1, unint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v5 = gdc::Context::context<md::RenderBatchManager>(a3);
  if (v5)
  {
    v6 = v5;
    v7 = gdc::Registry::storage<md::components::MeshInstance>(a3);
    v8 = gdc::ComponentStorageWrapper<md::components::MeshInstance>::get(v7, a2);
    md::MeshRenderableLogic::keyForEntity(v11, a3, &v9);
    if (v13 == 1 && v8)
    {
      md::RenderBatchManager::process(v6, v11, a2);
      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    else if (!v13)
    {
      return;
    }

    if (v12 != -1)
    {
      (*(&off_1F2A07AB8 + v12))(&v10, v11);
    }
  }
}

void sub_1B2E72BD0(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43, int a44, char a45)
{
  if (a45 == 1 && a43 != -1)
  {
    (*(&off_1F2A07AB8 + a43))(&a14, &a15, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void md::MeshRenderableLogic::keyForEntity(_BYTE *a1, uint64_t a2, uint64_t *a3)
{
  v6 = gdc::Registry::get<md::components::MeshInstance,md::components::Material>(a2, *a3);
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    *a1 = 0;
    a1[232] = 0;
  }

  else
  {
    v9 = v7;
    v10 = *a3;

    buildMaterialKey(a2, v10, v6, v9, a1);
  }
}

uint64_t std::__function::__func<std::__bind<void (md::MeshRenderableLogic::*)(gdc::Registry *,gdc::EntityCollector *),md::MeshRenderableLogic*,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&>,std::allocator<std::__bind<void (md::MeshRenderableLogic::*)(gdc::Registry *,gdc::EntityCollector *),md::MeshRenderableLogic*,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&>>,void ()(gdc::Registry *,gdc::EntityCollector *)>::operator()(void *a1, void *a2, void *a3)
{
  v3 = a1[2];
  v4 = a1[1];
  v5 = (a1[3] + (v3 >> 1));
  if (v3)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, *a2, *a3);
}

__n128 std::__function::__func<std::__bind<void (md::MeshRenderableLogic::*)(gdc::Registry *,gdc::EntityCollector *),md::MeshRenderableLogic*,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&>,std::allocator<std::__bind<void (md::MeshRenderableLogic::*)(gdc::Registry *,gdc::EntityCollector *),md::MeshRenderableLogic*,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&>>,void ()(gdc::Registry *,gdc::EntityCollector *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A08580;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void md::MeshRenderableLogic::updateStaticEntityCustomRenderState(uint64_t a1, unint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v5 = gdc::Context::context<md::RenderBatchManager>(a3);
  if (v5)
  {
    v6 = v5;
    v7 = gdc::Registry::storage<md::components::MeshInstance>(a3);
    v8 = gdc::ComponentStorageWrapper<md::components::MeshInstance>::get(v7, a2);
    md::MeshRenderableLogic::keyForEntity(v11, a3, &v9);
    if (v13 == 1 && v8)
    {
      md::RenderBatchManager::process(v6, v11, a2);
      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    else if (!v13)
    {
      return;
    }

    if (v12 != -1)
    {
      (*(&off_1F2A07AB8 + v12))(&v10, v11);
    }
  }
}

void sub_1B2E72E8C(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43, int a44, char a45)
{
  if (a45 == 1 && a43 != -1)
  {
    (*(&off_1F2A07AB8 + a43))(&a14, &a15, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gdc::ObjectHolder<md::RenderBatchManager>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::RenderBatchManager>::~ManagedObjectHolder(void *a1)
{
  gdc::ManagedObjectHolder<md::RenderBatchManager>::~ManagedObjectHolder(a1);

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::RenderBatchManager>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A08450;
  v2 = a1[4];
  if (v2)
  {
    v3 = v2[1];
    v4 = v2[2];
    while (v3 != v4)
    {
      geo::Pool<md::RenderBatch>::destroy((v2 + 4), *v3++);
    }

    geo::Pool<md::MaterialDecalRenderable>::~Pool((v2 + 38));
    geo::Pool<md::MeshRenderable>::~Pool((v2 + 32));
    geo::Pool<md::MaterialRenderable>::~Pool((v2 + 26));
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((v2 + 21));
    std::__hash_table<std::__hash_value_type<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>,md::RenderBatch *>,std::__unordered_map_hasher<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>,std::__hash_value_type<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>,md::RenderBatch *>,std::hash<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>>,std::equal_to<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>>,true>,std::__unordered_map_equal<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>,std::__hash_value_type<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>,md::RenderBatch *>,std::equal_to<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>>,std::hash<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>>,true>,std::allocator<std::__hash_value_type<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>,md::RenderBatch *>>>::~__hash_table((v2 + 16));
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((v2 + 11));
    geo::Pool<md::RenderBatch>::~Pool(v2 + 4);
    v5 = v2[1];
    if (v5)
    {
      v2[2] = v5;
      operator delete(v5);
    }

    MEMORY[0x1B8C62190](v2, 0x10A0C40B00EE8D5);
  }

  return a1;
}

void sub_1B2E7306C(_Unwind_Exception *a1)
{
  geo::Pool<md::MaterialDecalRenderable>::~Pool((v1 + 38));
  geo::Pool<md::MeshRenderable>::~Pool((v1 + 32));
  geo::Pool<md::MaterialRenderable>::~Pool((v1 + 26));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((v1 + 21));
  std::__hash_table<std::__hash_value_type<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>,md::RenderBatch *>,std::__unordered_map_hasher<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>,std::__hash_value_type<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>,md::RenderBatch *>,std::hash<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>>,std::equal_to<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>>,true>,std::__unordered_map_equal<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>,std::__hash_value_type<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>,md::RenderBatch *>,std::equal_to<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>>,std::hash<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>>,true>,std::allocator<std::__hash_value_type<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>,md::RenderBatch *>>>::~__hash_table((v1 + 16));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((v1 + 11));
  geo::Pool<md::RenderBatch>::~Pool(v1 + 4);
  v3 = v1[1];
  if (v3)
  {
    v1[2] = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

BOOL std::__function::__func<md::MeshRenderableLogic::processEntering(void)::$_0,std::allocator<md::MeshRenderableLogic::processEntering(void)::$_0>,BOOL ()(gdc::Registry * const&)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (gdc::Context::context<md::components::NonTiled>(*a2))
  {
    return 0;
  }

  v4 = gdc::Registry::storage<md::components::TexturedMeshInstance>(v2);
  return *(v4 + 88) == *(v4 + 80);
}

void *gdc::Context::context<md::components::NonTiled>(void *a1)
{
  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0xCBD572B797B24F09);
  if (result)
  {
    v2 = result[5];
    if (*(v2 + 8) == 0xCBD572B797B24F09)
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

BOOL gdc::ComponentStorageWrapper<md::components::TexturedMeshInstance>::remove(void *a1, uint64_t a2)
{
  v20 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10] + 152 * ((v3 - a1[7]) >> 3);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = 0;
    v8 = a1[11];
    v9 = *(v8 - 152);
    v10 = *(v8 - 136);
    *(v6 + 32) = *(v8 - 120);
    *v6 = v9;
    *(v6 + 16) = v10;
    do
    {
      *(v6 + 36 + v7) = *(v8 - 116 + v7);
      v7 += 4;
    }

    while (v7 != 12);
    for (i = 0; i != 12; i += 4)
    {
      *(v6 + 48 + i) = *(v8 - 104 + i);
    }

    for (j = 0; j != 48; j += 4)
    {
      *(v6 + 60 + j) = *(v8 - 92 + j);
    }

    v14 = *(v8 - 40);
    v13 = *(v8 - 32);
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    v15 = *(v6 + 120);
    *(v6 + 112) = v14;
    *(v6 + 120) = v13;
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v15);
    }

    if (v6 != v8 - 152)
    {
      std::vector<std::shared_ptr<ggl::Texture2D>>::__assign_with_size[abi:nn200100]<std::shared_ptr<ggl::Texture2D>*,std::shared_ptr<ggl::Texture2D>*>((v6 + 128), *(v8 - 24), *(v8 - 16), (*(v8 - 16) - *(v8 - 24)) >> 4);
    }

    v16 = a1[11] - 152;
    std::__destroy_at[abi:nn200100]<md::components::TexturedMeshInstance,0>(v16);
    a1[11] = v16;
    v17 = a1[28];
    if (v17)
    {
      v18 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v17[6], v18, &v20, 1);
        v17 = *v17;
      }

      while (v17);
    }
  }

  return v5 != v4;
}

void std::__destroy_at[abi:nn200100]<md::components::TexturedMeshInstance,0>(uint64_t a1)
{
  v3 = (a1 + 128);
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(a1 + 120);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }
}

void gdc::ComponentStorageWrapper<md::components::TexturedMeshInstance>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v3 = (a1 + 80);
  std::vector<md::components::TexturedMeshInstance>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v3);

  JUMPOUT(0x1B8C62190);
}

void std::vector<md::components::TexturedMeshInstance>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 152;
        std::__destroy_at[abi:nn200100]<md::components::TexturedMeshInstance,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t gdc::ComponentStorageWrapper<md::components::TexturedMeshInstance>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v4 = (a1 + 80);
  std::vector<md::components::TexturedMeshInstance>::__destroy_vector::operator()[abi:nn200100](&v4);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);
  return a1;
}

uint64_t *std::vector<std::shared_ptr<ggl::Texture2D>>::__init_with_size[abi:nn200100]<std::shared_ptr<ggl::Texture2D>*,std::shared_ptr<ggl::Texture2D>*>(uint64_t *result, void *a2, void *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<ggl::Texture2D>>::__vallocate[abi:nn200100](result, a4);
  }

  return result;
}

uint64_t gdc::Registry::view<md::components::DynamicMeshInstance,md::components::Material>(uint64_t a1)
{
  v2 = gdc::Registry::storage<md::components::DynamicMeshInstance>(a1);
  gdc::Registry::storage<md::components::Material>(a1);
  return v2;
}

void gdc::RegistryView<md::components::DynamicMeshInstance,md::components::Material>::each<md::MeshRenderableLogic::cleanExitingEntities(void)::$_0>(void *a1, void *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *a1 + 32;
  if (!*a1)
  {
    v6 = 0;
  }

  v7 = v4 + 32;
  if (!v4)
  {
    v7 = 0;
  }

  if (*(v7 + 32) - *(v7 + 24) >= *(v6 + 32) - *(v6 + 24))
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  if (v6 == v8)
  {
    v9 = v5[7];
    v10 = v5[8];
    if (v9 != v10)
    {
      do
      {
        v11 = a1[1];
        if (v11[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v11 + 4, *(v9 + 4)))
        {
          v12 = *v9;
          gdc::RegistryView<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::RasterTile>,std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>,std::vector<gdc::Registry *>>::getComponent<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::RasterTile>,std::vector<gdc::Registry *>>(v11, *v9);
          md::MeshRenderableLogic::removeDynamicEntity(a2, v12);
        }

        v9 += 8;
      }

      while (v9 != v10);
      v4 = a1[1];
    }
  }

  v13 = v4 + 32;
  if (!v4)
  {
    v13 = 0;
  }

  if (v13 == v8)
  {
    v14 = *(v4 + 56);
    v15 = *(v4 + 64);
    while (v14 != v15)
    {
      v16 = *a1;
      if (v16[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((*a1 + 32), *(v14 + 4)))
      {
        v17 = *v14;
        gdc::RegistryView<md::components::DynamicMeshInstance,md::components::Material>::getComponent<md::components::Material,md::components::DynamicMeshInstance>(v16, *v14);
        md::MeshRenderableLogic::removeDynamicEntity(a2, v17);
      }

      v14 += 8;
    }
  }
}

void md::MeshRenderableLogic::clearInjectedRenderables(md::MeshRenderableLogic *this, unsigned __int16 a2)
{
  v22 = a2;
  v4 = std::__hash_table<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,geo::mallocator>>::find<unsigned short>(this + 47, a2);
  if (v4)
  {
    v5 = v4[3];
    v6 = v4[4];
    while (v5 != v6)
    {
      v7 = std::__hash_table<std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::__unordered_map_hasher<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,true>,std::__unordered_map_equal<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::equal_to<gdc::Entity>,std::hash<gdc::Entity>,true>,std::allocator<std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>::find<gdc::Entity>(this + 42, *v5);
      if (v7)
      {
        v8 = v7;
        std::__hash_table<unsigned short,std::hash<unsigned short>,std::equal_to<unsigned short>,std::allocator<unsigned short>>::__emplace_unique_key_args<unsigned short,unsigned short const&>(*(this + 53), a2, &v22);
        if (*(v8 + 34) == 1)
        {
          *(v8 + 34) = 0;
        }

        if (*(v8 + 38) == 1)
        {
          RegistryByIdentifier = md::RegistryManager::getRegistryByIdentifier(*(this + 17), *(v8 + 18));
          if (RegistryByIdentifier)
          {
            v10 = gdc::Registry::storage<md::components::RenderableInjected>(RegistryByIdentifier);
            gdc::ComponentStorageWrapper<md::components::RenderableInjected>::remove(v10, v8[5]);
          }
        }
      }

      ++v5;
    }

    v11 = std::__hash_table<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,geo::mallocator>>::find<unsigned short>(this + 47, a2);
    if (v11)
    {
      v12 = *(this + 384);
      v13 = v11[1];
      v14 = vcnt_s8(v12);
      v14.i16[0] = vaddlv_u8(v14);
      if (v14.u32[0] > 1uLL)
      {
        if (v13 >= *&v12)
        {
          v13 %= *&v12;
        }
      }

      else
      {
        v13 &= *&v12 - 1;
      }

      v15 = *(this + 47);
      v16 = *(v15 + 8 * v13);
      do
      {
        v17 = v16;
        v16 = *v16;
      }

      while (v16 != v11);
      if (v17 == (this + 392))
      {
        goto LABEL_30;
      }

      v18 = v17[1];
      if (v14.u32[0] > 1uLL)
      {
        if (v18 >= *&v12)
        {
          v18 = (v18 % *&v12);
        }
      }

      else
      {
        v18 = (v18 & (*&v12 - 1));
      }

      if (v18 != v13)
      {
LABEL_30:
        if (!*v11)
        {
          goto LABEL_31;
        }

        v19 = (*v11)[1];
        if (v14.u32[0] > 1uLL)
        {
          if (v19 >= *&v12)
          {
            v19 %= *&v12;
          }
        }

        else
        {
          v19 &= *&v12 - 1;
        }

        if (v19 != v13)
        {
LABEL_31:
          *(v15 + 8 * v13) = 0;
        }
      }

      v20 = *v11;
      if (*v11)
      {
        v21 = v20[1];
        if (v14.u32[0] > 1uLL)
        {
          if (v21 >= *&v12)
          {
            v21 = (v21 % *&v12);
          }
        }

        else
        {
          v21 = (v21 & (*&v12 - 1));
        }

        if (v21 != v13)
        {
          *(*(this + 47) + 8 * v21) = v17;
          v20 = *v11;
        }
      }

      *v17 = v20;
      *v11 = 0;
      --*(this + 50);

      std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,void *>>>::operator()[abi:nn200100](1, v11);
    }
  }
}

void std::__hash_table<std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>>>::__erase_unique<unsigned short>(void *a1, unsigned __int16 a2)
{
  v3 = std::__hash_table<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,geo::mallocator>>::find<unsigned short>(a1, a2);
  if (v3)
  {
    v4 = a1[1];
    v5 = v3[1];
    v6 = vcnt_s8(v4);
    v6.i16[0] = vaddlv_u8(v6);
    if (v6.u32[0] > 1uLL)
    {
      if (v5 >= *&v4)
      {
        v5 %= *&v4;
      }
    }

    else
    {
      v5 &= *&v4 - 1;
    }

    v7 = *(*a1 + 8 * v5);
    do
    {
      v8 = v7;
      v7 = *v7;
    }

    while (v7 != v3);
    if (v8 == a1 + 2)
    {
      goto LABEL_20;
    }

    v9 = v8[1];
    if (v6.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 = (v9 % *&v4);
      }
    }

    else
    {
      v9 = (v9 & (*&v4 - 1));
    }

    if (v9 != v5)
    {
LABEL_20:
      if (!*v3)
      {
        goto LABEL_21;
      }

      v10 = (*v3)[1];
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= *&v4)
        {
          v10 %= *&v4;
        }
      }

      else
      {
        v10 &= *&v4 - 1;
      }

      if (v10 != v5)
      {
LABEL_21:
        *(*a1 + 8 * v5) = 0;
      }
    }

    v11 = *v3;
    if (*v3)
    {
      v12 = v11[1];
      if (v6.u32[0] > 1uLL)
      {
        if (v12 >= *&v4)
        {
          v12 = (v12 % *&v4);
        }
      }

      else
      {
        v12 = (v12 & (*&v4 - 1));
      }

      if (v12 != v5)
      {
        *(*a1 + 8 * v12) = v8;
        v11 = *v3;
      }
    }

    *v8 = v11;
    *v3 = 0;
    --a1[3];

    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,void *>>>::operator()[abi:nn200100](1, v3);
  }
}

uint64_t md::Logic<md::MeshRenderableLogic,md::MeshRenderableContext,md::LogicDependencies<gdc::TypeList<md::MaterialContext,md::AssetContext,md::StyleLogicContext,md::RegistryContext,md::SceneQueryContext,md::CameraContext,md::DrapingContext,md::IdentifiedResourceContext,md::PuckContext>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v7[10] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xF014CCE28176CA44 && (v4 = *(a3 + 32)) != 0)
  {
    v6 = result;
    md::LogicDependencies<gdc::TypeList<md::MaterialContext,md::AssetContext,md::StyleLogicContext,md::RegistryContext,md::SceneQueryContext,md::CameraContext,md::DrapingContext,md::IdentifiedResourceContext,md::PuckContext>,gdc::TypeList<>>::buildRequiredTuple<md::MaterialContext,md::AssetContext,md::StyleLogicContext,md::RegistryContext,md::SceneQueryContext,md::CameraContext,md::DrapingContext,md::IdentifiedResourceContext,md::PuckContext>(v7, *(a2 + 8));
    return (*(*v6 + 160))(v6, a2, v7, v4);
  }

  else
  {
    a4[23] = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::MeshRenderableContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::MeshRenderableContext>::~ManagedObjectHolder(void *a1)
{
  gdc::ManagedObjectHolder<md::MeshRenderableContext>::~ManagedObjectHolder(a1);

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::MeshRenderableContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A086B8;
  v2 = a1[4];
  if (v2)
  {
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((v2 + 5));
    v3 = std::__hash_table<std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>>>::~__hash_table(v2);
    MEMORY[0x1B8C62190](v3, 0x10A0C404183AB0DLL);
  }

  return a1;
}

void md::MeshRenderableLogic::~MeshRenderableLogic(md::MeshRenderableLogic *this)
{
  md::MeshRenderableLogic::~MeshRenderableLogic(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A079E0;
  md::RegistryManager::removeCollectorSubscription(*(this + 17), this, 2u);
  md::RegistryManager::removeCollectorSubscription(*(this + 17), this, 0);
  md::RegistryManager::removeCollectorSubscription(*(this + 17), this, 1u);
  md::RegistryManager::removeCollectorSubscription(*(this + 17), this, 3u);
  md::RegistryManager::removeCollectorSubscription(*(this + 17), this, 4u);
  md::Monitorable<md::ConfigValue<GEOConfigKeyUInteger,unsigned int>>::~Monitorable(this + 432, v2);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 336);
  std::__hash_table<std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>>>::~__hash_table(this + 37);
  v3 = *(this + 36);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  geo::Pool<md::TexturedRenderable>::~Pool(this + 224);
  geo::Pool<md::MaterialRenderable>::~Pool(this + 176);
  v4 = *(this + 21);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = *(this + 18);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

void sub_1B2E73E3C(_Unwind_Exception *a1, uint64_t a2)
{
  md::Monitorable<md::ConfigValue<GEOConfigKeyUInteger,unsigned int>>::~Monitorable(v2 + 432, a2);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v2 + 336);
  std::__hash_table<std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>>>::~__hash_table((v2 + 296));
  v4 = *(v2 + 288);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  geo::Pool<md::TexturedRenderable>::~Pool(v2 + 224);
  geo::Pool<md::MaterialRenderable>::~Pool(v2 + 176);
  v5 = *(v2 + 168);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = *(v2 + 144);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  *v2 = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v2 + 104));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v2 + 80));
  _Unwind_Resume(a1);
}

uint64_t geo::Pool<md::TexturedRenderable>::~Pool(uint64_t a1)
{
  geo::Pool<md::TexturedRenderable>::disposeElements(a1);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 8));
  return a1;
}

uint64_t geo::Pool<md::MaterialRenderable>::~Pool(uint64_t a1)
{
  v24 = 0;
  v25 = 0;
  v23 = &v24;
  v3 = (a1 + 40);
  v2 = *(a1 + 40);
  if (v2)
  {
    do
    {
      std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::__emplace_unique_key_args<geo::Pool<gdc::FallbackNode>::Element *,geo::Pool<gdc::FallbackNode>::Element * const&>(&v23, v2, v3);
      v2 = **v3;
      *v3 = v2;
    }

    while (v2);
    v4 = v25;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 24);
  v6 = *a1;
  v7 = (a1 + 8);
  v8 = v4 == *(a1 + 16) * v5 || v6 == v7;
  if (!v8)
  {
    v9 = *(a1 + 24);
    do
    {
      if (v9)
      {
        v10 = 0;
        v11 = v6[4];
        do
        {
          v12 = (v11 + 400 * v10);
          v13 = v24;
          if (!v24)
          {
            goto LABEL_21;
          }

          v14 = &v24;
          do
          {
            v15 = v13;
            v16 = v14;
            v17 = v13[4];
            if (v17 >= v12)
            {
              v14 = v13;
            }

            v13 = v13[v17 < v12];
          }

          while (v13);
          if (v14 == &v24)
          {
            goto LABEL_21;
          }

          if (v17 < v12)
          {
            v15 = v16;
          }

          if (v12 < v15[4])
          {
LABEL_21:
            (**v12)(v12);
            v5 = *(a1 + 24);
          }

          ++v10;
          v9 = v5;
        }

        while (v10 < v5);
      }

      v18 = v6[1];
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
          v19 = v6[2];
          v8 = *v19 == v6;
          v6 = v19;
        }

        while (!v8);
      }

      v6 = v19;
    }

    while (v19 != v7);
    v6 = *a1;
  }

  if (v6 != v7)
  {
    do
    {
      free(v6[4]);
      v20 = v6[1];
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
          v21 = v6[2];
          v8 = *v21 == v6;
          v6 = v21;
        }

        while (!v8);
      }

      v6 = v21;
    }

    while (v21 != v7);
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 8));
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = v7;
  *(a1 + 40) = 0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v24);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 8));
  return a1;
}

void sub_1B2E740F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(a11);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v11 + 8));
  _Unwind_Resume(a1);
}

void sub_1B2E74218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  std::__function::__value_func<BOOL ()(gdc::Registry const*,gdc::Entity)>::~__value_func[abi:nn200100](va1);
  gdc::RegistrySignalCollector<md::components::Material>::~RegistrySignalCollector(v4);
  std::__function::__value_func<BOOL ()(gdc::Registry const*,gdc::Entity)>::~__value_func[abi:nn200100](va);
  MEMORY[0x1B8C62190](v4, v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<BOOL ()(gdc::Registry const*,gdc::Entity)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<BOOL ()(gdc::Registry const*,gdc::Entity)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t std::function<BOOL ()(gdc::Registry const*,gdc::Entity)>::operator=(uint64_t a1, uint64_t a2)
{
  v8[3] = *MEMORY[0x1E69E9840];
  std::__function::__value_func<BOOL ()(gdc::Registry const*,gdc::Entity)>::__value_func[abi:nn200100](v6, a2);
  if (v6 != a1)
  {
    v3 = v7;
    v4 = *(a1 + 24);
    if (v7 == v6)
    {
      if (v4 == a1)
      {
        (*(*v7 + 24))();
        (*(*v7 + 32))(v7);
        v7 = 0;
        (*(**(a1 + 24) + 24))(*(a1 + 24), v6);
        (*(**(a1 + 24) + 32))(*(a1 + 24));
        *(a1 + 24) = 0;
        v7 = v6;
        (*(v8[0] + 24))(v8, a1);
        (*(v8[0] + 32))(v8);
      }

      else
      {
        (*(*v7 + 24))();
        (*(*v7 + 32))(v7);
        v7 = *(a1 + 24);
      }

      *(a1 + 24) = a1;
    }

    else if (v4 == a1)
    {
      (*(*v4 + 24))(*(a1 + 24), v6);
      (*(**(a1 + 24) + 32))(*(a1 + 24));
      *(a1 + 24) = v7;
      v7 = v6;
    }

    else
    {
      v7 = *(a1 + 24);
      *(a1 + 24) = v3;
    }
  }

  std::__function::__value_func<BOOL ()(gdc::Registry const*,gdc::Entity)>::~__value_func[abi:nn200100](v6);
  return a1;
}

void gdc::RegistrySignalCollector<md::components::Material>::~RegistrySignalCollector(gdc::EntityCollector *a1)
{
  *a1 = &unk_1F2A07F58;
  gdc::RegistrySignalCollector<md::components::Material>::unobserve(a1);

  gdc::EntityCollector::~EntityCollector(a1);
}

{
  gdc::RegistrySignalCollector<md::components::Material>::~RegistrySignalCollector(a1);

  JUMPOUT(0x1B8C62190);
}

void *gdc::RegistrySignalCollector<md::components::Material>::unobserve(void *result)
{
  v1 = result;
  if (result[7])
  {
    gdc::RegistrySignalCollector<md::components::Material>::disconnect<md::components::Material>(result, 0);
    gdc::RegistrySignalCollector<md::components::Material>::disconnect<md::components::Material>(v1, 1u);
    result = gdc::RegistrySignalCollector<md::components::Material>::disconnect<md::components::Material>(v1, 2u);
  }

  v1[5] = v1[4];
  v1[7] = 0;
  return result;
}

void gdc::EntityCollector::~EntityCollector(gdc::EntityCollector *this)
{
  *this = &unk_1F2A07E20;
  *(this + 5) = *(this + 4);
  *(this + 7) = 0;
  std::__function::__value_func<BOOL ()(gdc::Registry const*,gdc::Entity)>::~__value_func[abi:nn200100](this + 64);
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  v3 = (this + 8);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v3);
}

{
  gdc::EntityCollector::~EntityCollector(this);

  JUMPOUT(0x1B8C62190);
}

void *gdc::EntityCollector::unobserve(void *this)
{
  this[5] = this[4];
  this[7] = 0;
  return this;
}

void *gdc::EntityCollector::observe(void *result, uint64_t a2)
{
  v3 = result;
  if (result[7] != a2)
  {
    result = (*(*result + 24))(result);
  }

  v3[7] = a2;
  return result;
}

uint64_t gdc::RegistrySignalCollector<md::components::Material>::disconnect<md::components::Material>(uint64_t a1, unsigned int a2)
{
  v2 = a2;
  v4 = a1 + 8 * a2;
  result = gdc::FamilyInfo<gdc::RegistrySignalCollector<md::components::Material>,unsigned long long>::getId<md::components::Material>();
  v6 = *(v4 + 8 * result + 96);
  if (v6 != -1)
  {
    v7 = (gdc::Registry::storage<md::components::Material>(*(a1 + 56)) + qword_1B3420E60[v2]);

    return std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::__erase_unique<unsigned long>(v7, v6);
  }

  return result;
}

uint64_t gdc::FamilyInfo<gdc::RegistrySignalCollector<md::components::Material>,unsigned long long>::getId<md::components::Material>()
{
  v0 = &unk_1EB82B000;
  {
    v0 = &unk_1EB82B000;
    if (v2)
    {
      gdc::FamilyInfo<gdc::RegistrySignalCollector<md::components::Material>,unsigned long long>::getId<md::components::Material>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<gdc::RegistrySignalCollector<md::components::Material>,unsigned long long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB82B000;
    }
  }

  return v0[260];
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::__erase_unique<unsigned long>(uint64_t *result, unint64_t a2)
{
  v4 = result[1];
  if (v4)
  {
    v5 = vcnt_s8(v4);
    v5.i16[0] = vaddlv_u8(v5);
    if (v5.u32[0] > 1uLL)
    {
      v6 = a2;
      if (*&v4 <= a2)
      {
        v6 = a2 % *&v4;
      }
    }

    else
    {
      v6 = (*&v4 - 1) & a2;
    }

    v22 = v2;
    v23 = v3;
    v7 = *result;
    v8 = *(*result + 8 * v6);
    if (v8)
    {
      v9 = *v8;
      if (v9)
      {
        v10 = *&v4 - 1;
        do
        {
          v11 = v9[1];
          if (v11 == a2)
          {
            if (v9[2] == a2)
            {
              v12 = v9[1];
              if (v5.u32[0] > 1uLL)
              {
                if (v12 >= *&v4)
                {
                  v12 %= *&v4;
                }
              }

              else
              {
                v12 &= v10;
              }

              v13 = *(v7 + 8 * v12);
              do
              {
                v14 = v13;
                v13 = *v13;
              }

              while (v13 != v9);
              if (v14 == result + 2)
              {
                goto LABEL_36;
              }

              v15 = v14[1];
              if (v5.u32[0] > 1uLL)
              {
                if (v15 >= *&v4)
                {
                  v15 %= *&v4;
                }
              }

              else
              {
                v15 &= v10;
              }

              if (v15 != v12)
              {
LABEL_36:
                if (!*v9)
                {
                  goto LABEL_37;
                }

                v16 = *(*v9 + 8);
                if (v5.u32[0] > 1uLL)
                {
                  if (v16 >= *&v4)
                  {
                    v16 %= *&v4;
                  }
                }

                else
                {
                  v16 &= v10;
                }

                if (v16 != v12)
                {
LABEL_37:
                  *(v7 + 8 * v12) = 0;
                }
              }

              v17 = *v9;
              if (*v9)
              {
                v18 = *(v17 + 8);
                if (v5.u32[0] > 1uLL)
                {
                  if (v18 >= *&v4)
                  {
                    v18 %= *&v4;
                  }
                }

                else
                {
                  v18 &= v10;
                }

                if (v18 != v12)
                {
                  *(*result + 8 * v18) = v14;
                  v17 = *v9;
                }
              }

              *v14 = v17;
              *v9 = 0;
              --result[3];
              v19[0] = v9;
              v19[1] = result;
              v20 = 1;
              memset(v21, 0, sizeof(v21));
              return std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,void *>>>>::~unique_ptr[abi:nn200100](v19);
            }
          }

          else
          {
            if (v5.u32[0] > 1uLL)
            {
              if (v11 >= *&v4)
              {
                v11 %= *&v4;
              }
            }

            else
            {
              v11 &= v10;
            }

            if (v11 != v6)
            {
              return result;
            }
          }

          v9 = *v9;
        }

        while (v9);
      }
    }
  }

  return result;
}

uint64_t gdc::EnteringCollector<md::components::Material>::observe(uint64_t *a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1[7] != a2)
  {
    (*(*a1 + 24))(a1);
  }

  a1[7] = a2;
  v4 = gdc::Registry::storage<md::components::Material>(a2);
  v9 = &unk_1F2A081C8;
  v10 = a1;
  v11 = &v9;
  v5 = gdc::Signal<gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>>::connect((v4 + 152), &v9);
  std::__function::__value_func<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::~__value_func[abi:nn200100](&v9);
  if (v5 != -1)
  {
    a1[gdc::FamilyInfo<gdc::RegistrySignalCollector<md::components::Material>,unsigned long long>::getId<md::components::Material>() + 12] = v5;
  }

  v6 = gdc::Registry::storage<md::components::Material>(a1[7]);
  v9 = &unk_1F2A08210;
  v10 = a1;
  v11 = &v9;
  v7 = gdc::Signal<gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>>::connect((v6 + 200), &v9);
  result = std::__function::__value_func<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::~__value_func[abi:nn200100](&v9);
  if (v7 != -1)
  {
    result = gdc::FamilyInfo<gdc::RegistrySignalCollector<md::components::Material>,unsigned long long>::getId<md::components::Material>();
    a1[result + 14] = v7;
  }

  return result;
}

void sub_1B2E74C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void *std::__function::__func<gdc::EnteringCollector<md::components::Material>::observe(gdc::Registry *)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#2},std::allocator<gdc::EnteringCollector<md::components::Material>::observe(gdc::Registry *)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#2}>,void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(void *result, uint64_t a2, uint64_t *a3)
{
  v3 = a3[1];
  if (v3)
  {
    v4 = *a3;
    v5 = result[1];
    v6 = 8 * v3;
    do
    {
      result = geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((v5 + 8), *(v4 + 4));
      v4 += 8;
      v6 -= 8;
    }

    while (v6);
  }

  return result;
}

void *geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase(void *a1, unsigned int a2)
{
  result = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1, a2);
  if (a1[4] != result)
  {

    return geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase(a1, result);
  }

  return result;
}

uint64_t std::__function::__func<gdc::EnteringCollector<md::components::Material>::observe(gdc::Registry *)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#2},std::allocator<gdc::EnteringCollector<md::components::Material>::observe(gdc::Registry *)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#2}>,void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A08210;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<gdc::EnteringCollector<md::components::Material>::observe(gdc::Registry *)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#1},std::allocator<gdc::EnteringCollector<md::components::Material>::observe(gdc::Registry *)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#1}>,void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  if (v3)
  {
    v4 = *a2;
    v5 = *a3;
    v6 = 8 * v3;
    v7 = *(result + 8);
    do
    {
      v8 = *v5;
      v9 = HIDWORD(*v5);
      v10 = gdc::Registry::storage<md::components::Material>(v4);
      result = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v10 + 32), v9);
      if (*(v10 + 64) != result)
      {
        result = gdc::EntityCollector::add(v7, v8);
      }

      ++v5;
      v6 -= 8;
    }

    while (v6);
  }

  return result;
}

void *gdc::EntityCollector::add(void *a1, uint64_t a2)
{
  v5 = a2;
  v3 = a1[11];
  if (!v3)
  {
    return geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(a1 + 1, &v5);
  }

  v6 = a1[7];
  v7 = a2;
  result = (*(*v3 + 48))(v3, &v6, &v7);
  if (result)
  {
    return geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(a1 + 1, &v5);
  }

  return result;
}

uint64_t std::__function::__func<gdc::EnteringCollector<md::components::Material>::observe(gdc::Registry *)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#1},std::allocator<gdc::EnteringCollector<md::components::Material>::observe(gdc::Registry *)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#1}>,void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A081C8;
  a2[1] = v2;
  return result;
}

void gdc::EnteringCollector<md::components::Material>::~EnteringCollector(gdc::EntityCollector *a1)
{
  gdc::RegistrySignalCollector<md::components::Material>::~RegistrySignalCollector(a1);

  JUMPOUT(0x1B8C62190);
}

BOOL std::__function::__func<md::MeshRenderableLogic::MeshRenderableLogic(std::shared_ptr<md::RegistryManager> const&,std::shared_ptr<md::RunLoopController> const&,geo::TaskQueue *,NSObject  {objcproto17OS_dispatch_queue}*,BOOL)::$_0,std::allocator<md::MeshRenderableLogic::MeshRenderableLogic(std::shared_ptr<md::RegistryManager> const&,std::shared_ptr<md::RunLoopController> const&,geo::TaskQueue *,NSObject  {objcproto17OS_dispatch_queue}*,BOOL)::$_0>,BOOL ()(gdc::Registry const*,gdc::Entity)>::operator()(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = *a2;
  v4 = HIDWORD(*a3);
  v5 = gdc::Registry::storage<md::components::MeshInstance>(*a2);
  if (*(v5 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v5 + 32), v4))
  {
    return 1;
  }

  v7 = gdc::Registry::storage<md::components::DynamicMeshInstance>(v3);
  return *(v7 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v7 + 32), v4);
}

void sub_1B2E751E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  std::__function::__value_func<BOOL ()(gdc::Registry const*,gdc::Entity)>::~__value_func[abi:nn200100](va1);
  gdc::RegistrySignalCollector<md::components::MeshInstance>::~RegistrySignalCollector(v4);
  std::__function::__value_func<BOOL ()(gdc::Registry const*,gdc::Entity)>::~__value_func[abi:nn200100](va);
  MEMORY[0x1B8C62190](v4, v3);
  _Unwind_Resume(a1);
}

void gdc::RegistrySignalCollector<md::components::MeshInstance>::~RegistrySignalCollector(gdc::EntityCollector *a1)
{
  *a1 = &unk_1F2A08090;
  gdc::RegistrySignalCollector<md::components::MeshInstance>::unobserve(a1);

  gdc::EntityCollector::~EntityCollector(a1);
}

{
  gdc::RegistrySignalCollector<md::components::MeshInstance>::~RegistrySignalCollector(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t *gdc::RegistrySignalCollector<md::components::MeshInstance>::unobserve(uint64_t *result)
{
  v1 = result;
  if (result[7])
  {
    gdc::RegistrySignalCollector<md::components::MeshInstance>::disconnect<md::components::MeshInstance>(result, 0);
    gdc::RegistrySignalCollector<md::components::MeshInstance>::disconnect<md::components::MeshInstance>(v1, 1u);
    result = gdc::RegistrySignalCollector<md::components::MeshInstance>::disconnect<md::components::MeshInstance>(v1, 2u);
  }

  v1[5] = v1[4];
  v1[7] = 0;
  return result;
}

uint64_t *gdc::RegistrySignalCollector<md::components::MeshInstance>::disconnect<md::components::MeshInstance>(uint64_t a1, unsigned int a2)
{
  v2 = a2;
  v4 = a1 + 8 * a2;
  result = gdc::FamilyInfo<gdc::RegistrySignalCollector<md::components::MeshInstance>,unsigned long long>::getId<md::components::MeshInstance>();
  v6 = *(v4 + 8 * result + 96);
  if (v6 != -1)
  {
    v7 = (gdc::Registry::storage<md::components::MeshInstance>(*(a1 + 56)) + qword_1B3420E78[v2]);

    return std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::__erase_unique<unsigned long>(v7, v6);
  }

  return result;
}

uint64_t gdc::FamilyInfo<gdc::RegistrySignalCollector<md::components::MeshInstance>,unsigned long long>::getId<md::components::MeshInstance>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<gdc::RegistrySignalCollector<md::components::MeshInstance>,unsigned long long>::getId<md::components::MeshInstance>(void)::localId = atomic_fetch_add(gdc::FamilyInfo<gdc::RegistrySignalCollector<md::components::MeshInstance>,unsigned long long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[199];
}

uint64_t gdc::EnteringCollector<md::components::MeshInstance>::observe(uint64_t *a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1[7] != a2)
  {
    (*(*a1 + 24))(a1);
  }

  a1[7] = a2;
  v4 = gdc::Registry::storage<md::components::MeshInstance>(a2);
  v9 = &unk_1F2A080C0;
  v10 = a1;
  v11 = &v9;
  v5 = gdc::Signal<gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>>::connect((v4 + 152), &v9);
  std::__function::__value_func<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::~__value_func[abi:nn200100](&v9);
  if (v5 != -1)
  {
    a1[gdc::FamilyInfo<gdc::RegistrySignalCollector<md::components::MeshInstance>,unsigned long long>::getId<md::components::MeshInstance>() + 12] = v5;
  }

  v6 = gdc::Registry::storage<md::components::MeshInstance>(a1[7]);
  v9 = &unk_1F2A08108;
  v10 = a1;
  v11 = &v9;
  v7 = gdc::Signal<gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>>::connect((v6 + 200), &v9);
  result = std::__function::__value_func<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::~__value_func[abi:nn200100](&v9);
  if (v7 != -1)
  {
    result = gdc::FamilyInfo<gdc::RegistrySignalCollector<md::components::MeshInstance>,unsigned long long>::getId<md::components::MeshInstance>();
    a1[result + 14] = v7;
  }

  return result;
}

void sub_1B2E75554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void *std::__function::__func<gdc::EnteringCollector<md::components::MeshInstance>::observe(gdc::Registry *)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#2},std::allocator<gdc::EnteringCollector<md::components::MeshInstance>::observe(gdc::Registry *)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#2}>,void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(void *result, uint64_t a2, uint64_t *a3)
{
  v3 = a3[1];
  if (v3)
  {
    v4 = *a3;
    v5 = result[1];
    v6 = 8 * v3;
    do
    {
      result = geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((v5 + 8), *(v4 + 4));
      v4 += 8;
      v6 -= 8;
    }

    while (v6);
  }

  return result;
}

uint64_t std::__function::__func<gdc::EnteringCollector<md::components::MeshInstance>::observe(gdc::Registry *)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#2},std::allocator<gdc::EnteringCollector<md::components::MeshInstance>::observe(gdc::Registry *)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#2}>,void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A08108;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<gdc::EnteringCollector<md::components::MeshInstance>::observe(gdc::Registry *)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#1},std::allocator<gdc::EnteringCollector<md::components::MeshInstance>::observe(gdc::Registry *)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#1}>,void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  if (v3)
  {
    v4 = *a2;
    v5 = *a3;
    v6 = 8 * v3;
    v7 = *(result + 8);
    do
    {
      v8 = *v5;
      v9 = HIDWORD(*v5);
      v10 = gdc::Registry::storage<md::components::MeshInstance>(v4);
      result = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v10 + 32), v9);
      if (*(v10 + 64) != result)
      {
        result = gdc::EntityCollector::add(v7, v8);
      }

      ++v5;
      v6 -= 8;
    }

    while (v6);
  }

  return result;
}

uint64_t std::__function::__func<gdc::EnteringCollector<md::components::MeshInstance>::observe(gdc::Registry *)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#1},std::allocator<gdc::EnteringCollector<md::components::MeshInstance>::observe(gdc::Registry *)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#1}>,void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A080C0;
  a2[1] = v2;
  return result;
}

void gdc::EnteringCollector<md::components::MeshInstance>::~EnteringCollector(gdc::EntityCollector *a1)
{
  gdc::RegistrySignalCollector<md::components::MeshInstance>::~RegistrySignalCollector(a1);

  JUMPOUT(0x1B8C62190);
}

void sub_1B2E75948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  std::__function::__value_func<BOOL ()(gdc::Registry const*,gdc::Entity)>::~__value_func[abi:nn200100](va1);
  gdc::RegistrySignalCollector<md::components::Material>::~RegistrySignalCollector(v4);
  std::__function::__value_func<BOOL ()(gdc::Registry const*,gdc::Entity)>::~__value_func[abi:nn200100](va);
  MEMORY[0x1B8C62190](v4, v3);
  _Unwind_Resume(a1);
}

uint64_t gdc::UpdateCollector<md::components::Material>::observe(uint64_t *a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1[7] != a2)
  {
    (*(*a1 + 24))(a1);
  }

  a1[7] = a2;
  v4 = gdc::Registry::storage<md::components::Material>(a2);
  v9 = &unk_1F2A07F88;
  v10 = a1;
  v11 = &v9;
  v5 = gdc::Signal<gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>>::connect((v4 + 104), &v9);
  std::__function::__value_func<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::~__value_func[abi:nn200100](&v9);
  if (v5 != -1)
  {
    a1[gdc::FamilyInfo<gdc::RegistrySignalCollector<md::components::Material>,unsigned long long>::getId<md::components::Material>() + 13] = v5;
  }

  v6 = gdc::Registry::storage<md::components::Material>(a1[7]);
  v9 = &unk_1F2A07FD0;
  v10 = a1;
  v11 = &v9;
  v7 = gdc::Signal<gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>>::connect((v6 + 200), &v9);
  result = std::__function::__value_func<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::~__value_func[abi:nn200100](&v9);
  if (v7 != -1)
  {
    result = gdc::FamilyInfo<gdc::RegistrySignalCollector<md::components::Material>,unsigned long long>::getId<md::components::Material>();
    a1[result + 14] = v7;
  }

  return result;
}

void sub_1B2E75AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void *std::__function::__func<gdc::UpdateCollector<md::components::Material>::observe(gdc::Registry *)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#2},std::allocator<gdc::UpdateCollector<md::components::Material>::observe(gdc::Registry *)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#2}>,void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(void *result, uint64_t a2, uint64_t *a3)
{
  v3 = a3[1];
  if (v3)
  {
    v4 = *a3;
    v5 = result[1];
    v6 = 8 * v3;
    do
    {
      result = geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((v5 + 8), *(v4 + 4));
      v4 += 8;
      v6 -= 8;
    }

    while (v6);
  }

  return result;
}

uint64_t std::__function::__func<gdc::UpdateCollector<md::components::Material>::observe(gdc::Registry *)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#2},std::allocator<gdc::UpdateCollector<md::components::Material>::observe(gdc::Registry *)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#2}>,void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A07FD0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<gdc::UpdateCollector<md::components::Material>::observe(gdc::Registry *)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#1},std::allocator<gdc::UpdateCollector<md::components::Material>::observe(gdc::Registry *)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#1}>,void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  if (v3)
  {
    v4 = *a2;
    v5 = *a3;
    v6 = 8 * v3;
    v7 = *(result + 8);
    do
    {
      v8 = *v5;
      v9 = HIDWORD(*v5);
      v10 = gdc::Registry::storage<md::components::Material>(v4);
      result = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v10 + 32), v9);
      if (*(v10 + 64) != result)
      {
        result = gdc::EntityCollector::add(v7, v8);
      }

      ++v5;
      v6 -= 8;
    }

    while (v6);
  }

  return result;
}

uint64_t std::__function::__func<gdc::UpdateCollector<md::components::Material>::observe(gdc::Registry *)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#1},std::allocator<gdc::UpdateCollector<md::components::Material>::observe(gdc::Registry *)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#1}>,void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A07F88;
  a2[1] = v2;
  return result;
}

void gdc::UpdateCollector<md::components::Material>::~UpdateCollector(gdc::EntityCollector *a1)
{
  gdc::RegistrySignalCollector<md::components::Material>::~RegistrySignalCollector(a1);

  JUMPOUT(0x1B8C62190);
}

void sub_1B2E75EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  std::__function::__value_func<BOOL ()(gdc::Registry const*,gdc::Entity)>::~__value_func[abi:nn200100](va1);
  gdc::RegistrySignalCollector<md::components::Visibility>::~RegistrySignalCollector(v4);
  std::__function::__value_func<BOOL ()(gdc::Registry const*,gdc::Entity)>::~__value_func[abi:nn200100](va);
  MEMORY[0x1B8C62190](v4, v3);
  _Unwind_Resume(a1);
}

void gdc::RegistrySignalCollector<md::components::Visibility>::~RegistrySignalCollector(gdc::EntityCollector *a1)
{
  *a1 = &unk_1F2A07DF0;
  gdc::RegistrySignalCollector<md::components::Visibility>::unobserve(a1);

  gdc::EntityCollector::~EntityCollector(a1);
}

{
  gdc::RegistrySignalCollector<md::components::Visibility>::~RegistrySignalCollector(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t *gdc::RegistrySignalCollector<md::components::Visibility>::unobserve(uint64_t *result)
{
  v1 = result;
  if (result[7])
  {
    gdc::RegistrySignalCollector<md::components::Visibility>::disconnect<md::components::Visibility>(result, 0);
    gdc::RegistrySignalCollector<md::components::Visibility>::disconnect<md::components::Visibility>(v1, 1u);
    result = gdc::RegistrySignalCollector<md::components::Visibility>::disconnect<md::components::Visibility>(v1, 2u);
  }

  v1[5] = v1[4];
  v1[7] = 0;
  return result;
}

uint64_t *gdc::RegistrySignalCollector<md::components::Visibility>::disconnect<md::components::Visibility>(uint64_t a1, unsigned int a2)
{
  v2 = a2;
  v4 = a1 + 8 * a2;
  result = gdc::FamilyInfo<gdc::RegistrySignalCollector<md::components::Visibility>,unsigned long long>::getId<md::components::Visibility>();
  v6 = *(v4 + 8 * result + 96);
  if (v6 != -1)
  {
    v7 = (gdc::Registry::storage<md::components::Visibility>(*(a1 + 56)) + qword_1B3420E90[v2]);

    return std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::__erase_unique<unsigned long>(v7, v6);
  }

  return result;
}

uint64_t gdc::FamilyInfo<gdc::RegistrySignalCollector<md::components::Visibility>,unsigned long long>::getId<md::components::Visibility>()
{
  v0 = &unk_1EB82A000;
  {
    v0 = &unk_1EB82A000;
    if (v2)
    {
      gdc::FamilyInfo<gdc::RegistrySignalCollector<md::components::Visibility>,unsigned long long>::getId<md::components::Visibility>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<gdc::RegistrySignalCollector<md::components::Visibility>,unsigned long long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB82A000;
    }
  }

  return v0[459];
}

uint64_t gdc::UpdateCollector<md::components::Visibility>::observe(uint64_t *a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1[7] != a2)
  {
    (*(*a1 + 24))(a1);
  }

  a1[7] = a2;
  v4 = gdc::Registry::storage<md::components::Visibility>(a2);
  v9 = &unk_1F2A07E50;
  v10 = a1;
  v11 = &v9;
  v5 = gdc::Signal<gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>>::connect((v4 + 104), &v9);
  std::__function::__value_func<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::~__value_func[abi:nn200100](&v9);
  if (v5 != -1)
  {
    a1[gdc::FamilyInfo<gdc::RegistrySignalCollector<md::components::Visibility>,unsigned long long>::getId<md::components::Visibility>() + 13] = v5;
  }

  v6 = gdc::Registry::storage<md::components::Visibility>(a1[7]);
  v9 = &unk_1F2A07E98;
  v10 = a1;
  v11 = &v9;
  v7 = gdc::Signal<gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>>::connect((v6 + 200), &v9);
  result = std::__function::__value_func<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::~__value_func[abi:nn200100](&v9);
  if (v7 != -1)
  {
    result = gdc::FamilyInfo<gdc::RegistrySignalCollector<md::components::Visibility>,unsigned long long>::getId<md::components::Visibility>();
    a1[result + 14] = v7;
  }

  return result;
}

void sub_1B2E76228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void *std::__function::__func<gdc::UpdateCollector<md::components::Visibility>::observe(gdc::Registry *)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#2},std::allocator<gdc::UpdateCollector<md::components::Visibility>::observe(gdc::Registry *)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#2}>,void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(void *result, uint64_t a2, uint64_t *a3)
{
  v3 = a3[1];
  if (v3)
  {
    v4 = *a3;
    v5 = result[1];
    v6 = 8 * v3;
    do
    {
      result = geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((v5 + 8), *(v4 + 4));
      v4 += 8;
      v6 -= 8;
    }

    while (v6);
  }

  return result;
}

uint64_t std::__function::__func<gdc::UpdateCollector<md::components::Visibility>::observe(gdc::Registry *)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#2},std::allocator<gdc::UpdateCollector<md::components::Visibility>::observe(gdc::Registry *)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#2}>,void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A07E98;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<gdc::UpdateCollector<md::components::Visibility>::observe(gdc::Registry *)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#1},std::allocator<gdc::UpdateCollector<md::components::Visibility>::observe(gdc::Registry *)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#1}>,void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  if (v3)
  {
    v4 = *a2;
    v5 = *a3;
    v6 = 8 * v3;
    v7 = *(result + 8);
    do
    {
      v8 = *v5;
      v9 = HIDWORD(*v5);
      v10 = gdc::Registry::storage<md::components::Visibility>(v4);
      result = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v10 + 32), v9);
      if (*(v10 + 64) != result)
      {
        result = gdc::EntityCollector::add(v7, v8);
      }

      ++v5;
      v6 -= 8;
    }

    while (v6);
  }

  return result;
}

uint64_t std::__function::__func<gdc::UpdateCollector<md::components::Visibility>::observe(gdc::Registry *)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#1},std::allocator<gdc::UpdateCollector<md::components::Visibility>::observe(gdc::Registry *)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#1}>,void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A07E50;
  a2[1] = v2;
  return result;
}

void gdc::UpdateCollector<md::components::Visibility>::~UpdateCollector(gdc::EntityCollector *a1)
{
  gdc::RegistrySignalCollector<md::components::Visibility>::~RegistrySignalCollector(a1);

  JUMPOUT(0x1B8C62190);
}

void md::Logic<md::MeshRenderableLogic,md::MeshRenderableContext,md::LogicDependencies<gdc::TypeList<md::MaterialContext,md::AssetContext,md::StyleLogicContext,md::RegistryContext,md::SceneQueryContext,md::CameraContext,md::DrapingContext,md::IdentifiedResourceContext,md::PuckContext>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2, v3);
}

void md::MuninRoadLabeler::getLabelMarkers(void *a1, uint64_t a2)
{
  if (a1[13] != a1[14])
  {
    operator new();
  }
}

void sub_1B2E76858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, char a12)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B2E76964(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<md::MuninRoadLabelMarker *,std::shared_ptr<md::LabelMarker>::__shared_ptr_default_delete<md::LabelMarker,md::MuninRoadLabelMarker>,std::allocator<md::MuninRoadLabelMarker>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<md::MuninRoadLabelMarker *,std::shared_ptr<md::LabelMarker>::__shared_ptr_default_delete<md::LabelMarker,md::MuninRoadLabelMarker>,std::allocator<md::MuninRoadLabelMarker>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::MuninRoadLabeler::updateOcclusionQueries(md::MuninRoadLabeler *this)
{
  v1 = *(this + 10);
  for (i = *(this + 11); v1 != i; v1 += 2)
  {
    v4 = *v1;
    if (*(*v1 + 354) == 1 && (*(v4 + 355) & 1) == 0)
    {
      v5 = *(*(this + 1) + 360);
      v6 = *(v4 + 328);
      if (!v6)
      {
        LOBYTE(v34) = 2;
        LOBYTE(v32) = 19;
        std::allocate_shared[abi:nn200100]<md::OcclusionQuery,std::allocator<md::OcclusionQuery>,md::LabelType,md::LabelFeatureType,0>(&v36, &v34, &v32);
      }

      v7 = atomic_load((v6 + 286));
      if (v7)
      {
        *(v4 + 352) = 0;
        *(v4 + 355) = 1;
        v34 = *(v4 + 360);
        v35 = *(v4 + 376);
        v8 = *(v4 + 256);
        if (v8 != 0.0 && *(v4 + 252) == 1)
        {
          v9 = 0;
          v10 = -v8;
          do
          {
            *(&v36 + v9) = *(v4 + 240 + v9) * v10;
            v9 += 4;
          }

          while (v9 != 12);
          v11 = 0;
          v32 = v36;
          v33 = v37;
          do
          {
            *(&v36 + v11) = *(&v32 + v11);
            ++v11;
          }

          while (v11 != 3);
          for (j = 0; j != 24; j += 8)
          {
            *(&v34 + j) = *(&v34 + j) + *(&v36 + j);
          }
        }

        for (k = 0; k != 24; k += 8)
        {
          *(&v36 + k) = *(&v34 + k) + *(v4 + 216 + k);
        }

        v14 = (*(**(v4 + 64) + 256))(*(v4 + 64));
        v15.i64[0] = *(v4 + 432);
        v16 = gm::Box<float,2>::operator-(v14, v15);
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v23 = **(v4 + 328);
        *v23 = 5;
        *(v23 + 237) = 2;
        geo::small_vector_base<gm::Matrix<double,3,1>>::resize((v23 + 80));
        v24 = 0;
        v25 = *(v23 + 80);
        do
        {
          *(v25 + v24) = *(&v36 + v24);
          v24 += 8;
        }

        while (v24 != 24);
        v26 = (v4 + 240);
        *(v23 + 200) = v16;
        *(v23 + 204) = v18;
        *(v23 + 208) = v20;
        *(v23 + 212) = v22;
        *(v23 + 239) = 8;
        v27 = (v23 + 216);
        v28 = *(v23 + 228);
        if (v28 == *(v4 + 252))
        {
          if (*(v23 + 228))
          {
            for (m = 0; m != 12; m += 4)
            {
              *(v27 + m) = *(v26 + m);
            }
          }
        }

        else
        {
          if (v28)
          {
            v30 = 0;
          }

          else
          {
            v31 = *v26;
            *(v23 + 224) = *(v4 + 248);
            *v27 = v31;
            v30 = 1;
          }

          *(v23 + 228) = v30;
        }

        *(v23 + 240) = 4;
        geo::small_vector_base<md::OcclusionProbe>::resize(v23 + 8, 8uLL);
        md::OcclusionManager::addQuery(v5, (v4 + 328));
      }
    }
  }
}

uint64_t md::MuninRoadLabeler::resetOcclusionQueries(uint64_t this)
{
  v1 = *(this + 80);
  for (i = *(this + 88); v1 != i; v1 += 2)
  {
    v3 = *v1;
    v3[352] = 1;
    if (v3[493] != 2)
    {
      v3[356] = 0;
    }
  }

  return this;
}

void md::MuninRoadLabeler::clearScene(uint64_t a1, int a2)
{
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  if (a2 != 1)
  {
    std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100]((a1 + 192));
    std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100]((a1 + 216));
    std::unique_ptr<md::MuninRoadGraph>::reset[abi:nn200100]((a1 + 136), 0);
    std::unique_ptr<md::MuninRoadGraphZData>::reset[abi:nn200100]((a1 + 144), 0);
    std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear((a1 + 240));
    md::MuninRoadLabeler::resetCurrentJunctions(a1);
    md::MuninRoadLabelPool::clear(*(a1 + 32));
    std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100]((a1 + 80));

    std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100]((a1 + 104));
  }
}

uint64_t **std::unique_ptr<md::MuninRoadGraph>::reset[abi:nn200100](uint64_t **result, uint64_t *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v2 + 184);
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v2 + 144);
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v2 + 104);
    v8 = (v2 + 80);
    std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&v8);
    v3 = *(v2 + 56);
    if (v3)
    {
      *(v2 + 64) = v3;
      operator delete(v3);
    }

    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v2 + 16);
    v4 = *(v2 + 8);
    *(v2 + 8) = 0;
    if (v4)
    {
      v5 = geo::Pool<md::ComposedRoadEdge>::~Pool(v4);
      MEMORY[0x1B8C62190](v5, 0x1020C407A7143E5);
    }

    v6 = *v2;
    *v2 = 0;
    if (v6)
    {
      v7 = geo::Pool<md::CoalescedJunction>::~Pool(v6);
      MEMORY[0x1B8C62190](v7, 0x1020C407A7143E5);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t *std::unique_ptr<md::MuninRoadGraphZData>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v2 + 432);
    std::__hash_table<std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZSamplingInfo>,std::__unordered_map_hasher<md::ComposedRoadEdge const*,std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZSamplingInfo>,std::hash<md::ComposedRoadEdge const*>,std::equal_to<md::ComposedRoadEdge const*>,true>,std::__unordered_map_equal<md::ComposedRoadEdge const*,std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZSamplingInfo>,std::equal_to<md::ComposedRoadEdge const*>,std::hash<md::ComposedRoadEdge const*>,true>,std::allocator<std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZSamplingInfo>>>::~__hash_table((v2 + 392));
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v2 + 352);
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v2 + 312);
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v2 + 272);
    v3 = *(v2 + 248);
    if (v3)
    {
      *(v2 + 256) = v3;
      operator delete(v3);
    }

    v4 = *(v2 + 224);
    if (v4)
    {
      *(v2 + 232) = v4;
      operator delete(v4);
    }

    v5 = *(v2 + 200);
    if (v5)
    {
      *(v2 + 208) = v5;
      operator delete(v5);
    }

    v6 = *(v2 + 176);
    if (v6)
    {
      *(v2 + 184) = v6;
      operator delete(v6);
    }

    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v2 + 120);
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v2 + 80);
    std::__hash_table<std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZInfo>,std::__unordered_map_hasher<md::ComposedRoadEdge const*,std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZInfo>,std::hash<md::ComposedRoadEdge const*>,std::equal_to<md::ComposedRoadEdge const*>,true>,std::__unordered_map_equal<md::ComposedRoadEdge const*,std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZInfo>,std::equal_to<md::ComposedRoadEdge const*>,std::hash<md::ComposedRoadEdge const*>,true>,std::allocator<std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZInfo>>>::~__hash_table(v2 + 40);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void md::MuninRoadLabeler::resetCurrentJunctions(md::MuninRoadLabeler *this)
{
  v2 = *(this + 21);
  v3 = this + 176;
  if (v2 != this + 176)
  {
    do
    {
      md::MuninJunctionFeature::clearLabels(*(*(v2 + 4) + 56), *(*(v2 + 4) + 64));
      v4 = *(v2 + 1);
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = *(v2 + 2);
          v6 = *v5 == v2;
          v2 = v5;
        }

        while (!v6);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  std::__tree<gdc::LayerDataWithWorld>::destroy(*(this + 22));
  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 21) = v3;
}

void **std::__hash_table<std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZSamplingInfo>,std::__unordered_map_hasher<md::ComposedRoadEdge const*,std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZSamplingInfo>,std::hash<md::ComposedRoadEdge const*>,std::equal_to<md::ComposedRoadEdge const*>,true>,std::__unordered_map_equal<md::ComposedRoadEdge const*,std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZSamplingInfo>,std::equal_to<md::ComposedRoadEdge const*>,std::hash<md::ComposedRoadEdge const*>,true>,std::allocator<std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZSamplingInfo>>>::~__hash_table(void **a1)
{
  std::__hash_table<std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZSamplingInfo>,std::__unordered_map_hasher<md::ComposedRoadEdge const*,std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZSamplingInfo>,std::hash<md::ComposedRoadEdge const*>,std::equal_to<md::ComposedRoadEdge const*>,true>,std::__unordered_map_equal<md::ComposedRoadEdge const*,std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZSamplingInfo>,std::equal_to<md::ComposedRoadEdge const*>,std::hash<md::ComposedRoadEdge const*>,true>,std::allocator<std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZSamplingInfo>>>::__deallocate_node(a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZInfo>,std::__unordered_map_hasher<md::ComposedRoadEdge const*,std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZInfo>,std::hash<md::ComposedRoadEdge const*>,std::equal_to<md::ComposedRoadEdge const*>,true>,std::__unordered_map_equal<md::ComposedRoadEdge const*,std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZInfo>,std::equal_to<md::ComposedRoadEdge const*>,std::hash<md::ComposedRoadEdge const*>,true>,std::allocator<std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZInfo>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[13];
      if (v4)
      {
        v2[14] = v4;
        operator delete(v4);
      }

      v5 = v2[10];
      if (v5)
      {
        v2[11] = v5;
        operator delete(v5);
      }

      v6 = v2[7];
      if (v6)
      {
        v2[8] = v6;
        operator delete(v6);
      }

      v7 = v2[4];
      if (v7)
      {
        v2[5] = v7;
        operator delete(v7);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v8 = *a1;
  *a1 = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZSamplingInfo>,std::__unordered_map_hasher<md::ComposedRoadEdge const*,std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZSamplingInfo>,std::hash<md::ComposedRoadEdge const*>,std::equal_to<md::ComposedRoadEdge const*>,true>,std::__unordered_map_equal<md::ComposedRoadEdge const*,std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZSamplingInfo>,std::equal_to<md::ComposedRoadEdge const*>,std::hash<md::ComposedRoadEdge const*>,true>,std::allocator<std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZSamplingInfo>>>::__deallocate_node(void *__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = *v1;
      v3 = v1[13];
      if (v3)
      {
        v1[14] = v3;
        operator delete(v3);
      }

      v4 = v1[10];
      if (v4)
      {
        v1[11] = v4;
        operator delete(v4);
      }

      v5 = v1[7];
      if (v5)
      {
        v1[8] = v5;
        operator delete(v5);
      }

      v6 = v1[4];
      if (v6)
      {
        v1[5] = v6;
        operator delete(v6);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t geo::Pool<md::ComposedRoadEdge>::~Pool(uint64_t a1)
{
  v24 = 0;
  v25 = 0;
  v23 = &v24;
  v3 = (a1 + 40);
  v2 = *(a1 + 40);
  if (v2)
  {
    do
    {
      std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::__emplace_unique_key_args<geo::Pool<gdc::FallbackNode>::Element *,geo::Pool<gdc::FallbackNode>::Element * const&>(&v23, v2, v3);
      v2 = **v3;
      *v3 = v2;
    }

    while (v2);
    v4 = v25;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 24);
  v6 = *a1;
  v7 = (a1 + 8);
  v8 = v4 == *(a1 + 16) * v5 || v6 == v7;
  if (!v8)
  {
    do
    {
      if (v5)
      {
        v9 = 0;
        v10 = v6[4];
        do
        {
          v11 = v10 + 152 * v9;
          v12 = v24;
          if (!v24)
          {
            goto LABEL_20;
          }

          v13 = &v24;
          do
          {
            v14 = v12;
            v15 = v13;
            v16 = v12[4];
            if (v16 >= v11)
            {
              v13 = v12;
            }

            v12 = v12[v16 < v11];
          }

          while (v12);
          if (v13 == &v24)
          {
            goto LABEL_20;
          }

          if (v16 < v11)
          {
            v14 = v15;
          }

          if (v11 < v14[4])
          {
LABEL_20:
            std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v11 + 48);
            v17 = *(v11 + 24);
            if (v17)
            {
              *(v11 + 32) = v17;
              operator delete(v17);
            }

            if (*v11)
            {
              operator delete(*v11);
            }
          }

          ++v9;
          v5 = *(a1 + 24);
        }

        while (v9 < v5);
      }

      v18 = v6[1];
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
          v19 = v6[2];
          v8 = *v19 == v6;
          v6 = v19;
        }

        while (!v8);
      }

      v6 = v19;
    }

    while (v19 != v7);
    v6 = *a1;
  }

  if (v6 != v7)
  {
    do
    {
      free(v6[4]);
      v20 = v6[1];
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
          v21 = v6[2];
          v8 = *v21 == v6;
          v6 = v21;
        }

        while (!v8);
      }

      v6 = v21;
    }

    while (v21 != v7);
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 8));
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = v7;
  *(a1 + 40) = 0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v24);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 8));
  return a1;
}

void sub_1B2E77344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(a11);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v11 + 8));
  _Unwind_Resume(a1);
}

uint64_t geo::Pool<md::CoalescedJunction>::~Pool(uint64_t a1)
{
  v24 = 0;
  v25 = 0;
  v23 = &v24;
  v3 = (a1 + 40);
  v2 = *(a1 + 40);
  if (v2)
  {
    do
    {
      std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::__emplace_unique_key_args<geo::Pool<gdc::FallbackNode>::Element *,geo::Pool<gdc::FallbackNode>::Element * const&>(&v23, v2, v3);
      v2 = **v3;
      *v3 = v2;
    }

    while (v2);
    v4 = v25;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 24);
  v6 = *a1;
  v7 = (a1 + 8);
  v8 = v4 == *(a1 + 16) * v5 || v6 == v7;
  if (!v8)
  {
    v9 = *(a1 + 24);
    do
    {
      if (v9)
      {
        v10 = 0;
        v11 = v6[4];
        do
        {
          v12 = (v11 + 96 * v10);
          v13 = v24;
          if (!v24)
          {
            goto LABEL_21;
          }

          v14 = &v24;
          do
          {
            v15 = v13;
            v16 = v14;
            v17 = v13[4];
            if (v17 >= v12)
            {
              v14 = v13;
            }

            v13 = v13[v17 < v12];
          }

          while (v13);
          if (v14 == &v24)
          {
            goto LABEL_21;
          }

          if (v17 < v12)
          {
            v15 = v16;
          }

          if (v12 < v15[4])
          {
LABEL_21:
            (**v12)(v12);
            v5 = *(a1 + 24);
          }

          ++v10;
          v9 = v5;
        }

        while (v10 < v5);
      }

      v18 = v6[1];
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
          v19 = v6[2];
          v8 = *v19 == v6;
          v6 = v19;
        }

        while (!v8);
      }

      v6 = v19;
    }

    while (v19 != v7);
    v6 = *a1;
  }

  if (v6 != v7)
  {
    do
    {
      free(v6[4]);
      v20 = v6[1];
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
          v21 = v6[2];
          v8 = *v21 == v6;
          v6 = v21;
        }

        while (!v8);
      }

      v6 = v21;
    }

    while (v21 != v7);
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 8));
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = v7;
  *(a1 + 40) = 0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v24);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 8));
  return a1;
}

void sub_1B2E77544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(a11);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v11 + 8));
  _Unwind_Resume(a1);
}

uint64_t md::MuninRoadLabeler::endFrameLayout(uint64_t this, BOOL *a2, BOOL *a3)
{
  *a2 |= *(this + 72);
  *a3 |= *(this + 73);
  return this;
}

void md::MuninRoadLabeler::render(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 72))
  {
    v5 = 0;
  }

  else
  {
    v5 = *(a1 + 73) ^ 1;
  }

  v6 = *(a1 + 104);
  for (i = *(a1 + 112); v6 != i; v6 += 2)
  {
    if (*(*v6 + 538))
    {
      v8 = *(a1 + 8);
      v9 = (*(**(*v6 + 64) + 264))(*(*v6 + 64), a2);
      v10 = 0;
      v20 = v9;
      v21 = v11;
      v22[0] = v12;
      v22[1] = v13;
      v14 = &v20;
      v15 = 1;
      do
      {
        if (*(v8 + 1528 + 4 * v10) <= *v14 || *(v8 + 1520 + 4 * v10) >= *&v22[v10])
        {
          goto LABEL_23;
        }

        v16 = v15;
        v15 = 0;
        v14 = &v21;
        v10 = 1;
      }

      while ((v16 & 1) != 0);
      if ((*(*v6 + 536) & 1) == 0)
      {
        (*(**(*v6 + 64) + 128))(*(*v6 + 64), a3, *(*v6 + 268));
      }

      if (v5)
      {
        v17 = *v6;
        if (*(*v6 + 302) == 1)
        {
          v18 = *(v17 + 64);
          if (v18 && ((*(*v18 + 616))(v18) & 1) != 0)
          {
LABEL_19:
            v5 = 0;
            *(a1 + 73) = 1;
            continue;
          }

          v19 = *(v17 + 538);
          if (v19 == 1)
          {
            if (*(v17 + 264) < 1.0)
            {
              goto LABEL_19;
            }
          }

          else if (v19 == 2 && *(v17 + 264) > 0.0)
          {
            goto LABEL_19;
          }
        }

        v5 = 1;
      }

      else
      {
        v5 = 0;
      }
    }

LABEL_23:
    ;
  }
}

void md::MuninRoadLabeler::layoutForDisplay(md::MuninRoadLabeler *this, const md::LayoutContext *a2)
{
  v4 = gdc::Context::context<md::MuninSceneContext>(*(a2 + 1));
  v5 = v4[5];
  for (i = v4[6]; v5 != i; v5 += 272)
  {
    v7 = *v5;
    switch(v7)
    {
      case 6:
        *(this + 289) = 1;
        break;
      case 5:
        *(this + 288) = 0;
        break;
      case 2:
        *(this + 288) = 1;
        v8 = *(this + 13);
        v9 = *(this + 14);
        while (v8 != v9)
        {
          v10 = *v8;
          v8 += 2;
          *(v10 + 537) = 1;
        }

        break;
    }
  }

  if (md::MuninRoadLabeler::needsDebugDraw(this))
  {
    md::LayoutContext::get<md::CameraContext>(*(a2 + 1));
    operator new();
  }

  v11 = *(this + 13);
  v12 = *(this + 14);
  if (v11 != v12)
  {
    while (1)
    {
      v13 = *v11;
      v14 = *(this + 1);
      v15.n128_u64[1] = 0x3F80000000000000;
      v35 = xmmword_1B33B0710;
      v36 = 0.0;
      v37 = 0;
      LOBYTE(v38) = 0;
      BYTE12(v38) = 0;
      v15.n128_u64[0] = 1.0;
      md::LabelLayoutContext::evaluateWorldPoint(v14 + 432, v13 + 184, &v38, *(v13 + 296), 0, &v35, v15);
      v16 = v37;
      *(v13 + 536) = v37;
      if (v16 == 1)
      {
        break;
      }

      v21 = 1.0;
      if (*(v13 + 540) == 2)
      {
        v22 = *(v13 + 544);
        v21 = fmaxf(md::LabelStylePropertyRamp::valueAtZ(v22, fminf(fmaxf(*&v35, 0.0), 23.0)), 0.01);
        v22[28] = v21;
      }

      v23 = 0;
      *(v13 + 164) = v21;
      do
      {
        *(&v38 + v23) = *(v13 + v23 + 512) + *(v13 + v23 + 216);
        v23 += 8;
      }

      while (v23 != 24);
      v24 = v39;
      *(v13 + 128) = v38;
      *(v13 + 144) = v24;
      md::LabelLayoutContext::projectPointToPixel(v14 + 432, v13 + 128, (v13 + 152));
      v25 = *&v35;
      *(v13 + 160) = v35;
      v26 = v25;
      if (v25 >= 0x17)
      {
        LOBYTE(v26) = 23;
      }

      *(v13 + 172) = v26;
      v27 = v36;
      *(v13 + 168) = v27;
      v28 = *(v13 + 64);
      *&v38 = 0;
      v29 = (*(*v28 + 120))(v28, v14, 0, v13 + 152, &v38);
      if (*(v13 + 303) == 1)
      {
        if (*(v13 + 537) != 1)
        {
          v31 = 1;
          v30 = 37;
LABEL_30:
          if ((v29 & 0xFE) == 0x12)
          {
            v32 = 3;
          }

          else
          {
            v32 = 2;
          }

          if (v31)
          {
            v30 = 37;
            v33 = 4;
          }

          else
          {
            v33 = 3;
          }

          if (v29 == 37)
          {
            v19 = v30;
          }

          else
          {
            v19 = v29;
          }

          if (v29 == 37)
          {
            v34 = v33;
          }

          else
          {
            v34 = v32;
          }

          v18 = v34;
          v17 = v13;
          v20 = v14;
LABEL_43:
          md::MuninRoadLabel::updateStateMachineForDisplay(v17, v18, v19, v20);
          goto LABEL_44;
        }

        v30 = 29;
      }

      else
      {
        v30 = 30;
      }

      if (*(v13 + 538))
      {
        v31 = 0;
        goto LABEL_30;
      }

      *(v13 + 539) = v30;
LABEL_44:
      v11 += 2;
      if (v11 == v12)
      {
        return;
      }
    }

    v17 = v13;
    v18 = 2;
    v19 = 3;
    v20 = 0;
    goto LABEL_43;
  }
}

void md::MuninRoadLabeler::synchStagingWithDisplay(md::MuninRoadLabeler *this)
{
  v2 = *(this + 13);
  v4 = *(this + 14);
  v3 = (this + 104);
  memset(v42, 0, sizeof(v42));
  if (v2 != v4)
  {
    while (1)
    {
      v5 = *v2;
      if (*(*v2 + 493) != 2)
      {
        *(v5 + 303) = 0;
        if (!*(v5 + 538))
        {
          break;
        }
      }

      v2 += 2;
      if (v2 == v4)
      {
        v2 = v4;
        goto LABEL_6;
      }
    }

    std::vector<std::shared_ptr<md::MuninRoadLabel>>::push_back[abi:nn200100](v42, v2);
    if (*(*v2 + 302))
    {
      *(*v2 + 302) = 0;
    }

    if (v2 != v4)
    {
      for (i = (v2 + 2); i != v4; ++i)
      {
        v38 = *i;
        if (*(*i + 493) == 2 || (*(v38 + 303) = 0, *(v38 + 538)))
        {
          v39 = *(i + 1);
          *i = 0;
          *(i + 1) = 0;
          v40 = v2[1];
          *v2 = v38;
          v2[1] = v39;
          if (v40)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v40);
          }

          v2 += 2;
        }

        else
        {
          std::vector<std::shared_ptr<md::MuninRoadLabel>>::push_back[abi:nn200100](v42, i);
          if (*(*i + 302))
          {
            *(*i + 302) = 0;
          }
        }
      }
    }
  }

LABEL_6:
  v6 = *(this + 14);
  if (v2 != v6)
  {
    while (v6 != v2)
    {
      v7 = *(v6 - 1);
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v7);
      }

      v6 -= 2;
    }

    *(this + 14) = v2;
  }

  memset(v41, 0, sizeof(v41));
  v8 = *(this + 10);
  for (j = *(this + 11); v8 != j; ++v8)
  {
    v10 = *v8;
    if (*(*v8 + 493) == 2)
    {
      if ((*(v10 + 302) & 1) == 0)
      {
        std::vector<std::shared_ptr<md::MuninRoadLabel>>::push_back[abi:nn200100](v41, v8);
        if ((*(*v8 + 302) & 1) == 0)
        {
          *(*v8 + 302) = 1;
        }

        v11 = *(this + 14);
        v12 = *(this + 15);
        if (v11 >= v12)
        {
          v15 = (v11 - *v3) >> 4;
          v16 = v15 + 1;
          if ((v15 + 1) >> 60)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v17 = v12 - *v3;
          if (v17 >> 3 > v16)
          {
            v16 = v17 >> 3;
          }

          if (v17 >= 0x7FFFFFFFFFFFFFF0)
          {
            v18 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v18 = v16;
          }

          v43[4] = v3;
          if (v18)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<md::MuninRoadLabel>>>(v18);
          }

          v19 = 16 * v15;
          v20 = *v8;
          *(16 * v15) = *v8;
          if (*(&v20 + 1))
          {
            atomic_fetch_add_explicit((*(&v20 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v14 = (v19 + 16);
          v21 = *(this + 13);
          v22 = *(this + 14) - v21;
          v23 = v19 - v22;
          memcpy((v19 - v22), v21, v22);
          v24 = *(this + 13);
          *(this + 13) = v23;
          *(this + 14) = v14;
          v25 = *(this + 15);
          *(this + 15) = 0;
          v43[2] = v24;
          v43[3] = v25;
          v43[0] = v24;
          v43[1] = v24;
          std::__split_buffer<std::shared_ptr<md::MuninRoadLabel>>::~__split_buffer(v43);
        }

        else
        {
          *v11 = *v8;
          v13 = *(v8 + 1);
          *(v11 + 1) = v13;
          if (v13)
          {
            atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
          }

          v14 = v11 + 16;
        }

        *(this + 14) = v14;
        v10 = *v8;
      }

      v26 = *(v10 + 303);
      *(v10 + 303) = 1;
      if ((v26 & 1) == 0)
      {
        v27 = *(v10 + 64);
        if (v27)
        {
          *(v27 + 560) = 1;
        }
      }
    }
  }

  v43[0] = v41;
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](v43);
  v43[0] = v42;
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](v43);
  v28 = *(this + 13);
  for (k = *(this + 14); v28 != k; v28 += 2)
  {
    v30 = *v28;
    v31 = *(this + 1);
    *(v30 + 540) = *(*v28 + 495);
    v33 = *(v30 + 496);
    v32 = *(v30 + 504);
    if (v32)
    {
      atomic_fetch_add_explicit((v32 + 8), 1uLL, memory_order_relaxed);
    }

    *(v30 + 544) = v33;
    v34 = *(v30 + 552);
    *(v30 + 552) = v32;
    if (v34)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v34);
    }

    v35 = (v30 + 512);
    v36 = 3;
    do
    {
      *v35 = *(v35 - 16);
      ++v35;
      --v36;
    }

    while (v36);
    (*(**(v30 + 64) + 104))(*(v30 + 64), v31);
    (*(**(v30 + 64) + 112))(*(v30 + 64));
  }
}

void sub_1B2E77E68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, char a12)
{
  a9 = &a12;
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&a9);
  _Unwind_Resume(a1);
}

void md::MuninRoadLabeler::layoutForStaging(md::MuninRoadLabeler *this, const LabelUpdateOptions *a2)
{
  v38 = 0;
  v37 = 0u;
  v36 = 0u;
  v39 = 3;
  v3 = *(this + 1);
  if (&v36 != (this + 216))
  {
    v4 = *(this + 27);
    v5 = *(this + 28);
    if (v5 != v4)
    {
      v6 = (v5 - v4) >> 4;
      std::vector<std::shared_ptr<ggl::Texture2D>>::__vdeallocate(&v36);
      if (!(v6 >> 60))
      {
        v7 = (v37 - v36) >> 3;
        if (v7 <= v6)
        {
          v7 = (v5 - v4) >> 4;
        }

        if (v37 - v36 >= 0x7FFFFFFFFFFFFFF0uLL)
        {
          v8 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v8 = v7;
        }

        if (!(v8 >> 60))
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<md::MuninRoadLabel>>>(v8);
        }
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v9 = std::__copy_impl::operator()[abi:nn200100]<std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *>(*(this + 27), *(this + 28), 0);
    for (i = *(&v36 + 1); i != v9; i -= 2)
    {
      v11 = *(i - 1);
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v11);
      }
    }

    *(&v36 + 1) = v9;
    v3 = *(this + 1);
  }

  *(&v37 + 1) = *(v3 + 424);
  if ((*(this + 74) & 1) != 0 || *(this + 75) == 1)
  {
    *(this + 74) = 0;
    md::MuninRoadLabeler::updateLocationInformation(this);
  }

  if ((*(this + 78) & 1) != 0 || *(*(this + 1) + 3176) == 1)
  {
    v12 = *(this + 10);
    v13 = *(this + 11);
    while (v12 != v13)
    {
      v14 = *v12;
      v12 += 2;
      md::MuninRoadLabel::failForStaging(v14, 29);
    }
  }

  else
  {
    v15 = *(this + 4);
    if (*(v15 + 96))
    {
      goto LABEL_25;
    }

    v26 = *(this + 10);
    v27 = *(this + 11);
    if (v26 != v27)
    {
      LOBYTE(v28) = 0;
      v29 = 0;
      do
      {
        while (v28)
        {
          v26 += 16;
          LOBYTE(v28) = 1;
          if (v26 == v27)
          {
            goto LABEL_25;
          }
        }

        if (*(*v26 + 493))
        {
          v28 = 0;
        }

        else
        {
          v30 = (v29 + 1) > 4;
          if (*(*v26 + 302))
          {
            v28 = 0;
          }

          else
          {
            ++v29;
            v28 = v30;
          }
        }

        v26 += 16;
      }

      while (v26 != v27);
      if (v28)
      {
LABEL_25:
        *(v15 + 96) = 0;
        std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](this + 10);
        std::vector<std::shared_ptr<md::GEOVectorTileResource>>::reserve(this + 10, *(v15 + 32));
        v16 = *(v15 + 8);
        if (v16 != (v15 + 16))
        {
          do
          {
            v17 = (v16 + 4);
            v18 = v16[4];
            if (v18[493] || (v18[302] & 1) != 0)
            {
              std::vector<std::shared_ptr<md::MuninRoadLabel>>::push_back[abi:nn200100](this + 10, v17);
              v19 = v16[1];
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
                  v20 = v16[2];
                  v21 = *v20 == v16;
                  v16 = v20;
                }

                while (!v21);
              }
            }

            else
            {
              atomic_store(0, v18 + 298);
              md::MuninRoadLabel::setActive(*v17, 0);
              v22 = v16[1];
              v23 = v16;
              if (v22)
              {
                do
                {
                  v20 = v22;
                  v22 = *v22;
                }

                while (v22);
              }

              else
              {
                do
                {
                  v20 = v23[2];
                  v21 = *v20 == v23;
                  v23 = v20;
                }

                while (!v21);
              }

              if (*(v15 + 8) == v16)
              {
                *(v15 + 8) = v20;
              }

              --*(v15 + 32);
              std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(*(v15 + 16), v16);
              v24 = v16[5];
              if (v24)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v24);
              }

              v25 = mdm::zone_mallocator::instance(v24);
              geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<std::shared_ptr<md::MuninRoadLabel>,void *>>(v25, v16);
            }

            v16 = v20;
          }

          while (v20 != (v15 + 16));
        }
      }
    }

    v32 = *(this + 10);
    v31 = *(this + 11);
    v33 = v31 - v32;
    if (v31 != v32)
    {
      if (!((v33 >> 4) >> 61))
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v33 >> 4);
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v34 = *(this + 1);
    v35 = *(*(this + 4) + 64);
    if (v35)
    {
      do
      {
        (*(*v35[6] + 16))(v35[6], v34);
        v35 = *v35;
      }

      while (v35);
      v34 = *(this + 1);
    }

    md::LabelSettingsStyleCache::muninRoadStyle(*(*(v34 + 336) + 200));
    std::__introsort<std::_ClassicAlgPolicy,md::MuninRoadLabelSorter &,md::MuninRoadLabel **,false>(0, 0, 0, 1);
    LOWORD(v40[0]) = 0;
    v40[1] = 0;
    v42 = 0;
    v41 = 257;
  }

  v40[0] = &v36;
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](v40);
}

void sub_1B2E78B2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  a25 = a10;
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&a25);
  _Unwind_Resume(a1);
}

void md::MuninRoadLabeler::updateLocationInformation(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v256 = v2;
  v3 = v1;
  v322[2] = *MEMORY[0x1E69E9840];
  v259 = *(v1 + 144);
  v4 = *(v1 + 128);
  v313 = 0uLL;
  *&__p = 0.0;
  v258 = *(v4 + 24);
  v290 = &unk_1F2A08870;
  v293 = COERCE_DOUBLE(&v290);
  _D8 = 0x401921FB54442D18;
  __asm { FMLA            D0, D8, V1.D[1]; __x }

  v10 = exp(_D0);
  v11 = atan(v10);
  v12 = geo::WGS84::unitsPerMeterAtLatitude<geo::Degrees,double>(v11 * 114.591559 + -90.0);
  v13 = vdupq_lane_s64(COERCE__INT64(v12 * 20.0), 0);
  *&v302[16] = vaddq_f64(v258, v13);
  *v302 = vsubq_f64(v258, v13);
  v15 = *(v3 + 192);
  v14 = *(v3 + 200);
  v257 = v3;
  if (v15 != v14)
  {
    v254 = *(v3 + 200);
    do
    {
      v16 = 0;
      v17 = *v15;
      v18 = 1 << *(*v15 + 169);
      v19 = v18;
      v20 = 1.0 / v18;
      v21 = v20 * (v18 + ~*(*v15 + 172));
      *&__src = v20 * *(*v15 + 176);
      v297 = v21;
      v298 = *&__src + v20;
      v299 = v21 + v20;
      v22 = v302;
      p_src = &__src;
      v24 = 1;
      while (*(&v298 + v16) > *v22 && *p_src < *&v302[8 * v16 + 16])
      {
        v25 = v24;
        v24 = 0;
        p_src = &v297;
        v22 = &v302[8];
        v16 = 1;
        if ((v25 & 1) == 0)
        {
          *&v26 = (v258.f64[0] - *&__src) * v19;
          *&v27 = (v258.f64[1] - v21) * v19;
          v280 = __PAIR64__(v27, v26);
          v28 = *(v17 + 760);
          v260 = *(v17 + 768);
          if (v28 != v260)
          {
            v29 = v12 * v19 * (v12 * v19);
            v30 = v29 * 400.0;
            v31 = 1.0 / v29;
            v262 = v15;
            do
            {
              v32 = 0;
              v266 = v28;
              v33 = *v28;
              v34 = *&v33 + 48;
              v269 = v33;
              v35 = *&v33 + 64;
              v36 = v302;
              v37 = 1;
              while (*(v35 + 8 * v32) > *v36 && *(v34 + 8 * v32) < *&v302[8 * v32 + 16])
              {
                v38 = v37;
                v37 = 0;
                v36 = &v302[8];
                v32 = 1;
                if ((v38 & 1) == 0)
                {
                  if (v293 == 0.0 || (v286 = v269, (*(**&v293 + 48))(COERCE_DOUBLE(*&v293), &v286)))
                  {
                    v39 = **&v269;
                    if (*(**&v269 + 96))
                    {
                      v40 = 0;
                      do
                      {
                        v286 = 0.0;
                        v41 = geo::codec::multiSectionFeaturePoints(v39, v40, &v286);
                        v277 = 0.0;
                        LODWORD(v274) = 0;
                        v42 = gm::Matrix<float,2,1>::distanceSquaredToPolyline<int,void>(&v280, *&v286, v41, &v277, &v274);
                        if (v30 > v42)
                        {
                          v43 = *v15;
                          v44 = v15[1];
                          if (v44)
                          {
                            atomic_fetch_add_explicit((v44 + 8), 1uLL, memory_order_relaxed);
                          }

                          else
                          {
                            *(&v43 + 1) = 0;
                          }

                          *&v45 = v42 * v31;
                          HIDWORD(v45) = v274;
                          v46 = v313;
                          if (v313 >= *(&v313 + 1))
                          {
                            v48 = __p;
                            v49 = (v313 - __p) >> 5;
                            v50 = v49 + 1;
                            if ((v49 + 1) >> 59)
                            {
                              std::__throw_bad_array_new_length[abi:nn200100]();
                            }

                            v51 = *(&v313 + 1) - __p;
                            if ((*(&v313 + 1) - __p) >> 4 > v50)
                            {
                              v50 = v51 >> 4;
                            }

                            if (v51 >= 0x7FFFFFFFFFFFFFE0)
                            {
                              v52 = 0x7FFFFFFFFFFFFFFLL;
                            }

                            else
                            {
                              v52 = v50;
                            }

                            if (v52)
                            {
                              if (!(v52 >> 59))
                              {
                                operator new();
                              }

                              std::__throw_bad_array_new_length[abi:nn200100]();
                            }

                            v53 = (v313 - __p) >> 5;
                            v54 = 32 * v49;
                            *v54 = v43;
                            *(v54 + 16) = v269;
                            *(v54 + 24) = v45;
                            v55 = (32 * v49 - 32 * v53);
                            if (v48 != v46)
                            {
                              v56 = v48;
                              v57 = v55;
                              do
                              {
                                *v57 = *v56;
                                *v56 = 0;
                                *(v56 + 1) = 0;
                                v57[1] = *(v56 + 1);
                                v56 += 32;
                                v57 += 2;
                              }

                              while (v56 != v46);
                              do
                              {
                                v58 = *(v48 + 1);
                                if (v58)
                                {
                                  std::__shared_weak_count::__release_shared[abi:nn200100](v58);
                                }

                                v48 += 32;
                              }

                              while (v48 != v46);
                            }

                            v47 = v54 + 32;
                            v59 = __p;
                            __p = v55;
                            v313 = (v54 + 32);
                            if (v59)
                            {
                              operator delete(v59);
                            }

                            v15 = v262;
                          }

                          else
                          {
                            *v313 = v43;
                            *(v46 + 16) = v269;
                            v47 = v46 + 32;
                            *(v46 + 24) = v45;
                          }

                          *&v313 = v47;
                        }

                        ++v40;
                      }

                      while (v40 < *(v39 + 96));
                    }
                  }

                  break;
                }
              }

              v28 = v266 + 1;
            }

            while (v266 + 1 != v260);
          }

          v14 = v254;
          break;
        }
      }

      v15 += 2;
    }

    while (v15 != v14);
  }

  std::__function::__value_func<BOOL ()(md::MuninRoadEdge const*)>::~__value_func[abi:nn200100](&v290);
  v61 = 126 - 2 * __clz((v313 - __p) >> 5);
  if (v313 == __p)
  {
    v62 = 0;
  }

  else
  {
    v62 = v61;
  }

  std::__introsort<std::_ClassicAlgPolicy,findClosestRoad(std::vector<std::shared_ptr<md::MuninRoadNetworkData>> const&,md::MuninRoadGraphZData const*,geo::Mercator3<double> const&,double)::$_1 &,md::RoadSearchResult *,false>(__p, v313, v62, 1, v60);
  v63 = __p;
  v64 = v313;
  v252 = 0u;
  if (__p == v313)
  {
    goto LABEL_67;
  }

  do
  {
    v65 = v63[2];
    v66 = std::__hash_table<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>>>::find<gdc::Registry *>((*v259 + 16), v65);
    if (v66)
    {
      v67 = v66[3];
      if (v67)
      {
        v68 = std::__hash_table<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>>>::find<gdc::Registry *>(v259 + 5, v67);
        if (v68)
        {
          if (v68[7] != v68[8])
          {
            v69 = *(v67 + 24);
            v70 = *(v67 + 32) - v69;
            if (v70)
            {
              v71 = v70 >> 3;
              v72 = v71 <= 1 ? 1 : v71;
              if (*v69 == v65)
              {
                goto LABEL_63;
              }

              v73 = 0;
              v74 = v69 + 1;
              v75 = v72 - 1;
              do
              {
                if (v75 == v73)
                {
                  goto LABEL_64;
                }

                v76 = v74[v73++];
              }

              while (v76 != v65);
              if (v73 < v71)
              {
LABEL_63:
                v280 = 0;
                v277 = 0.0;
                __src = v65;
                LOBYTE(v285) = 0;
                v286 = 0.0;
                operator new();
              }
            }
          }
        }
      }
    }

LABEL_64:
    v63 += 4;
  }

  while (v63 != v64);
  v77 = __p;
  if (__p == v313)
  {
LABEL_67:
    v80 = 0;
    v79 = v257;
  }

  else
  {
    v252 = *__p;
    v78 = (__p + 16);
    *__p = 0;
    v77[1] = 0;
    v79 = v257;
    v80 = *v78;
  }

  *v302 = &__p;
  std::vector<md::RoadSearchResult>::__destroy_vector::operator()[abi:nn200100](v302);
  *(v79 + 152) = v80;
  if (v80)
  {
    v313 = 0uLL;
    *&__p = 0.0;
    LODWORD(v274) = 1;
    operator new();
  }

  if (*(v79 + 75) == 1 && *(v79 + 76) == 1)
  {
    *(v79 + 75) = 0;
    if (*(v79 + 77) == 1)
    {
      *(v79 + 77) = 0;
      md::MuninRoadLabeler::resetCurrentJunctions(v79);
    }

    v81 = md::LabelSettingsStyleCache::muninRoadStyle(*(*(*(v79 + 8) + 336) + 200));
    v274 = 0;
    v275 = 0;
    v276 = 0;
    v82 = *(v81 + 12);
    v270 = *(*(v79 + 128) + 24);
    *&__p = COERCE_DOUBLE(&unk_1F2A088B8);
    *&v313 = &v274;
    p_p = &__p;
    v286 = COERCE_DOUBLE(&unk_1F2A08900);
    v289 = &v286;
    v83 = v82;
    __asm { FMLA            D0, D8, V1.D[1]; __x }

    v85 = exp(_D0);
    v86 = atan(v85);
    v87 = geo::WGS84::unitsPerMeterAtLatitude<geo::Degrees,double>(v86 * 114.591559 + -90.0);
    v88 = vdupq_lane_s64(COERCE__INT64(v87 * v83), 0);
    *&v302[16] = vaddq_f64(v270, v88);
    *v302 = vsubq_f64(v270, v88);
    v89 = v79;
    v90 = *(v79 + 192);
    v91 = *(v89 + 200);
    if (v90 != v91)
    {
      v92 = v87 * v83 * (v87 * v83);
      v93 = 1.0 / (v87 * v87);
      do
      {
        v94 = 0;
        v95 = *v90;
        v96 = 1 << *(*v90 + 169);
        v97 = 1.0 / v96;
        v98 = v97 * (v96 + ~*(*v90 + 43));
        v99 = v97 * *(*v90 + 44) + v97;
        *&__src = v97 * *(*v90 + 44);
        v297 = v98;
        v298 = v99;
        v299 = v98 + v97;
        v100 = v302;
        v101 = &__src;
        v102 = 1;
        while (*(&v298 + v94) > *v100 && *v101 < *&v302[8 * v94 + 16])
        {
          v103 = v102;
          v102 = 0;
          v101 = &v297;
          v100 = &v302[8];
          v94 = 1;
          if ((v103 & 1) == 0)
          {
            v104 = *(v95 + 98);
            v105 = *(v95 + 99);
            while (v104 != v105)
            {
              v106 = 0;
              v107 = *v104;
              v108 = (*v104 + 16);
              v109 = v302;
              v110 = 1;
              while (1)
              {
                v111 = v108->f64[v106];
                if (v111 < *v109 || v111 >= *&v302[8 * v106 + 16])
                {
                  break;
                }

                v112 = v110;
                v110 = 0;
                v109 = &v302[8];
                v106 = 1;
                if ((v112 & 1) == 0)
                {
                  if (!v289 || std::function<BOOL ()(md::MuninJunction const*)>::operator()(v289, *v104))
                  {
                    v113 = vsubq_f64(v270, *v108);
                    v114 = vaddvq_f64(vmulq_f64(v113, v113));
                    if (v114 <= v92)
                    {
                      v290 = 0;
                      v291 = 0;
                      v292 = 0;
                      v293 = -1.0;
                      v115 = *v90;
                      v116 = v90[1];
                      if (v116)
                      {
                        atomic_fetch_add_explicit(&v116->__shared_owners_, 1uLL, memory_order_relaxed);
                        v117 = v291;
                        v290 = v115;
                        v291 = v116;
                        if (v117)
                        {
                          std::__shared_weak_count::__release_shared[abi:nn200100](v117);
                        }
                      }

                      else
                      {
                        v290 = *v90;
                      }

                      v292 = v107;
                      v293 = v114 * v93;
                      if (!p_p)
                      {
                        std::__throw_bad_function_call[abi:nn200100]();
                        std::__throw_bad_array_new_length[abi:nn200100]();
                      }

                      (*(*p_p + 6))(p_p, &v290);
                      if (v291)
                      {
                        std::__shared_weak_count::__release_shared[abi:nn200100](v291);
                      }
                    }
                  }

                  break;
                }
              }

              ++v104;
            }

            break;
          }
        }

        v90 += 2;
      }

      while (v90 != v91);
    }

    std::__function::__value_func<BOOL ()(md::MuninJunction const*)>::~__value_func[abi:nn200100](&v286);
    std::__function::__value_func<void ()(md::JunctionSearchResult const&&)>::~__value_func[abi:nn200100](&__p);
    v119 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v275 - v274) >> 3));
    if (v275 == v274)
    {
      v120 = 0;
    }

    else
    {
      v120 = v119;
    }

    std::__introsort<std::_ClassicAlgPolicy,md::MuninRoadLabeler::findNearbyJunctions(geo::Mercator3<double> const&,double,std::vector<md::MuninJunctionInfo> &)::$_2 &,md::MuninJunctionInfo*,false>(v274, v275, v120, 1, v118);
    v281[0] = 0;
    v281[1] = 0;
    v280 = v281;
    v121 = v257 + 176;
    if (*(v257 + 168) != v257 + 176)
    {
      operator new();
    }

    v278 = 0;
    v279 = 0;
    v277 = COERCE_DOUBLE(&v278);
    v122 = v257;
    v123 = md::LabelSettingsStyleCache::muninRoadStyle(*(*(*(v257 + 8) + 336) + 200));
    v124 = v256;
    v125 = v274;
    v126 = v275;
    if (v274 != v275)
    {
      v249 = v275;
      v250 = v123;
      do
      {
        v127 = v125[1];
        if (v127 >= *(v123 + 8) && v127 < *(v123 + 12) && v127 >= *(v125 + 4))
        {
          v251 = v125;
          v128 = *v125;
          v129 = v281[0];
          if (!v281[0])
          {
            goto LABEL_121;
          }

          v130 = v281;
          do
          {
            v131 = v129;
            v132 = v130;
            v133 = v129[4];
            if (v133 >= v128)
            {
              v130 = v129;
            }

            v129 = v129[v133 < v128];
          }

          while (v129);
          if (v130 == v281)
          {
            goto LABEL_121;
          }

          if (v133 < v128)
          {
            v131 = v132;
          }

          if (v128 < v131[4] || ((v135 = v130[5], (v134 = v130[6]) == 0) ? (v137 = 0, v136 = v135) : (atomic_fetch_add_explicit(&v134->__shared_owners_, 1uLL, memory_order_relaxed), v136 = v135, v137 = v134), *(v135 + 80) != 1))
          {
LABEL_121:
            v138 = v122[18];
            v139 = v138[11];
            v255 = v128;
            if (!*&v139)
            {
              goto LABEL_175;
            }

            v140 = 0x9DDFEA08EB382D69 * ((8 * (v128 & 0x1FFFFFFF) + 8) ^ (v128 >> 32));
            v141 = 0x9DDFEA08EB382D69 * ((v128 >> 32) ^ (v140 >> 47) ^ v140);
            v142 = 0x9DDFEA08EB382D69 * (v141 ^ (v141 >> 47));
            v143 = vcnt_s8(v139);
            v143.i16[0] = vaddlv_u8(v143);
            if (v143.u32[0] > 1uLL)
            {
              v144 = v142;
              if (v142 >= *&v139)
              {
                v144 = v142 % *&v139;
              }
            }

            else
            {
              v144 = v142 & (*&v139 - 1);
            }

            v145 = *(*&v138[10] + 8 * v144);
            if (!v145)
            {
              goto LABEL_175;
            }

            v146 = *v145;
            if (!v146)
            {
              goto LABEL_175;
            }

            while (1)
            {
              v147 = *(v146 + 1);
              if (v142 == v147)
              {
                if (*(v146 + 2) == v128)
                {
                  v253 = v146[3];
                  v148 = v128[1].f64[0] * 6.28318531;
                  v149 = exp(v128[1].f64[1] * 6.28318531 + -3.14159265);
                  v150 = atan(v149) * 2.0 + -1.57079633;
                  v151 = fmod(v148, 6.28318531);
                  v152 = fmod(v151 + 6.28318531, 6.28318531) + -3.14159265;
                  v153 = __sincos_stret(v150);
                  v154 = 6378137.0 / sqrt(v153.__sinval * v153.__sinval * -0.00669437999 + 1.0);
                  v155 = (v154 + v253) * v153.__cosval;
                  v156 = __sincos_stret(v152);
                  v286 = v155 * v156.__cosval;
                  v287 = v155 * v156.__sinval;
                  v288 = (v253 + v154 * 0.99330562) * v153.__sinval;
                  LOBYTE(__src) = 0;
                  v301 = 0;
                  v157 = 20.0;
                  do
                  {
                    LOBYTE(v290) = 0;
                    v295 = 0;
                    v158 = v122[27];
                    v261 = v122[28];
                    if (v158 != v261)
                    {
                      v159 = 1.79769313e308;
                      do
                      {
                        v160 = *v158;
                        v313 = 0uLL;
                        *&__p = 0.0;
                        geo::Geocentric<double>::toCoordinate3D<geo::Radians,double>(&v286, &__p);
                        v271 = *&v313;
                        v161 = tan(*&__p * 0.5 + 0.785398163);
                        v162 = log(v161);
                        v163.f64[0] = v271;
                        v163.f64[1] = v162;
                        __asm { FMOV            V0.2D, #0.5 }

                        v165 = vmlaq_f64(_Q0, vdupq_n_s64(0x3FC45F306DC9C883uLL), v163);
                        v166 = md::mun::MuninMetadata::_searchBounds(v160, v165.f64[0], v165.f64[1], v157);
                        if (SHIDWORD(v166) > v168)
                        {
                          goto LABEL_166;
                        }

                        v169 = 0;
                        v170 = v160 + 352;
                        v263 = v166;
                        v272 = v167 + 1;
                        v171 = v166 >> 32;
                        v264 = v168 + 1;
                        v172 = 1.79769313e308;
                        v267 = v166;
                        v265 = v167;
                        do
                        {
                          if (v166 <= v167)
                          {
                            v173 = 10 * v171;
                            v174 = v263;
                            do
                            {
                              v175 = *(v170 + 2 * (v173 + v174));
                              v177 = v171 == 9 && v174 == 9;
                              if (v177)
                              {
LABEL_151:
                                v178 = (*(v160 + 336) - *(v160 + 328)) >> 3;
                                goto LABEL_153;
                              }

                              while (1)
                              {
                                v178 = *(v170 + 2 * (v173 + v174 + 1));
LABEL_153:
                                if (v175 >= v178)
                                {
                                  break;
                                }

                                v179 = *(v160 + 328);
                                if (v175 >= (*(v160 + 336) - v179) >> 3)
                                {
                                  break;
                                }

                                v180 = *(v179 + 8 * v175);
                                v181 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(v180 + 8, &v286);
                                if (v181 <= v157 && v181 < v172)
                                {
                                  v169 = v180;
                                  v172 = v181;
                                }

                                ++v175;
                                if (v177)
                                {
                                  goto LABEL_151;
                                }
                              }

                              ++v174;
                            }

                            while (v272 != v174);
                          }

                          ++v171;
                          LODWORD(v166) = v267;
                          v167 = v265;
                        }

                        while (v264 != v171);
                        v122 = v257;
                        v128 = v255;
                        if (v169)
                        {
                          v182 = *v169;
                          v183 = *(v169 + 8);
                          v184 = *(v169 + 24);
                          v185 = *(v169 + 32);
                          v316 = *(v169 + 40);
                          v313 = v183;
                          p_p = v184;
                          v315 = v185;
                          v317 = *(v169 + 44);
                          v186 = *(v169 + 72);
                          v318 = *(v169 + 56);
                          v319 = v186;
                          __p = v182;
                          v320[0] = v321;
                          v320[1] = v321;
                          v320[2] = v321;
                          v320[3] = 6;
                          geo::small_vector_base<md::mun::PhotoInfo>::append<md::mun::PhotoInfo const*>(v320, *(v169 + 88), *(v169 + 96));
                          v187 = *(v169 + 1848);
                          *(v322 + 5) = *(v169 + 1853);
                          v322[0] = v187;
                          *v302 = __p;
                          *&v302[8] = v313;
                          *&v302[24] = p_p;
                          v303 = v315;
                          v304 = v316;
                          v305 = v317;
                          v307 = v319;
                          v306 = v318;
                          geo::small_vector_base<md::mun::PhotoInfo>::small_vector_base(v308, v320, &v309);
                          v310[0] = v322[0];
                          *(v310 + 5) = *(v322 + 5);
                          v311 = 1;
                          geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(v320);
                          if (v311)
                          {
                            v188 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(&v302[8], &v286);
                            if (v188 >= v159 || (v189 = v188, std::__optional_storage_base<md::mun::CollectionPoint,false>::__assign_from[abi:nn200100]<std::__optional_copy_assign_base<md::mun::CollectionPoint,false> const&>(&v290, v302), v159 = v189, (v311 & 1) != 0))
                            {
                              geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(v308);
                            }
                          }
                        }

                        else
                        {
LABEL_166:
                          v302[0] = 0;
                          v311 = 0;
                        }

                        v158 += 2;
                      }

                      while (v158 != v261);
                    }

                    std::__optional_storage_base<md::mun::CollectionPoint,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<md::mun::CollectionPoint,false>>(&__src, &v290);
                    if (v295 == 1)
                    {
                      geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(&v294);
                    }

                    if (v301)
                    {
                      break;
                    }

                    v157 = v157 + 15.0;
                  }

                  while (v157 <= 50.0);
                  if (v301)
                  {
                    v253 = v253 - v300[440];
                    geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(v300);
                  }

                  if (v253 == 1.79769313e308)
                  {
LABEL_175:
                    v297 = 0.0;
                    *&__src = 0.0;
                    v298 = 0.0;
                    v290 = 0;
                    v291 = 0;
                    v292 = 0;
                    v313 = 0uLL;
                    *&__p = 0.0;
                    v190 = v122;
                    v191 = v122[27];
                    v192 = v190[28];
                    if (v191 != v192)
                    {
                      do
                      {
                        v193 = *v191;
                        v191 += 2;
                        md::mun::MuninMetadata::neighborsWithinRadius(v193, v128 + 1, &__p, &v290, 5.0);
                      }

                      while (v191 != v192);
                      v194 = __p;
                      v195 = v313;
                      if (__p == v313)
                      {
                        if (*&__p != 0.0)
                        {
                          goto LABEL_188;
                        }
                      }

                      else
                      {
                        std::vector<double>::resize(&__src, (v291 - v290) >> 3);
                        v286 = 0.0;
                        v287 = 0.0;
                        v288 = 0.0;
                        v196 = v291 - v290;
                        if (v291 != v290)
                        {
                          if (!((v196 >> 3) >> 61))
                          {
                            std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v196 >> 3);
                          }

                          std::__throw_bad_array_new_length[abi:nn200100]();
                        }

                        *v302 = &unk_1F2A1F490;
                        *&v302[24] = v302;
                        md::MuninLabelingUtils::computeWeightsForWeightedAverage(&v286, v302, &__src);
                        std::__function::__value_func<double ()(double const&)>::~__value_func[abi:nn200100](v302);
                        v197 = 0;
                        v198 = (v195 - v194) >> 3;
                        if (v198 <= 1)
                        {
                          v198 = 1;
                        }

                        v199 = 0uLL;
                        do
                        {
                          v200 = v194[v197];
                          v201.f64[0] = *(v200 + 72);
                          v201.f64[1] = *(v200 + 1848);
                          v199 = vmlaq_n_f64(v199, v201, *(__src + v197++));
                        }

                        while (v198 != v197);
LABEL_188:
                        operator delete(v194);
                      }
                    }

                    if (v290)
                    {
                      v291 = v290;
                      operator delete(v290);
                    }

                    if (*&__src != 0.0)
                    {
                      operator delete(__src);
                    }
                  }

                  operator new();
                }
              }

              else
              {
                if (v143.u32[0] > 1uLL)
                {
                  if (v147 >= *&v139)
                  {
                    v147 %= *&v139;
                  }
                }

                else
                {
                  v147 &= *&v139 - 1;
                }

                if (v147 != v144)
                {
                  goto LABEL_175;
                }
              }

              v146 = *v146;
              if (!v146)
              {
                goto LABEL_175;
              }
            }
          }

          v202 = v278;
          if (!v278)
          {
LABEL_201:
            operator new();
          }

          while (1)
          {
            while (1)
            {
              v203 = v202;
              v204 = v202[4];
              if (v136 >= v204)
              {
                break;
              }

              v202 = *v203;
              if (!*v203)
              {
                goto LABEL_201;
              }
            }

            if (v204 >= v136)
            {
              break;
            }

            v202 = v203[1];
            if (!v202)
            {
              goto LABEL_201;
            }
          }

          v122 = v257;
          if (v137)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v137);
          }

          v126 = v249;
          v123 = v250;
          v125 = v251;
        }

        v125 += 3;
      }

      while (v125 != v126);
    }

    v297 = 0.0;
    *&__src = 0.0;
    v298 = 0.0;
    v205 = v122[21];
    *&__p = v277;
    v284 = v205;
    v285 = &v278;
    *&v283 = v257 + 176;
    v290 = &__src;
    v291 = 0;
    std::__set_difference[abi:nn200100]<std::__less<void,void>,std::__tree_const_iterator<std::shared_ptr<md::MuninJunctionFeature>,std::__tree_node<std::shared_ptr<md::MuninJunctionFeature>,void *> *,long> &,std::__tree_const_iterator<std::shared_ptr<md::MuninJunctionFeature>,std::__tree_node<std::shared_ptr<md::MuninJunctionFeature>,void *> *,long> &,std::__tree_const_iterator<std::shared_ptr<md::MuninJunctionFeature>,std::__tree_node<std::shared_ptr<md::MuninJunctionFeature>,void *> *,long> &,std::__tree_const_iterator<std::shared_ptr<md::MuninJunctionFeature>,std::__tree_node<std::shared_ptr<md::MuninJunctionFeature>,void *> *,long> &,std::insert_iterator<std::vector<std::shared_ptr<md::MuninJunctionFeature>>> &>(v302, &__p, &v285, &v284, &v283, &v290);
    v290 = 0;
    v291 = 0;
    v292 = 0;
    v206 = v122[21];
    v284 = (v257 + 176);
    v285 = v206;
    v282 = &v278;
    v283 = v277;
    *&__p = COERCE_DOUBLE(&v290);
    *&v313 = 0;
    std::__set_difference[abi:nn200100]<std::__less<void,void>,std::__tree_const_iterator<std::shared_ptr<md::MuninJunctionFeature>,std::__tree_node<std::shared_ptr<md::MuninJunctionFeature>,void *> *,long> &,std::__tree_const_iterator<std::shared_ptr<md::MuninJunctionFeature>,std::__tree_node<std::shared_ptr<md::MuninJunctionFeature>,void *> *,long> &,std::__tree_const_iterator<std::shared_ptr<md::MuninJunctionFeature>,std::__tree_node<std::shared_ptr<md::MuninJunctionFeature>,void *> *,long> &,std::__tree_const_iterator<std::shared_ptr<md::MuninJunctionFeature>,std::__tree_node<std::shared_ptr<md::MuninJunctionFeature>,void *> *,long> &,std::insert_iterator<std::vector<std::shared_ptr<md::MuninJunctionFeature>>> &>(v302, &v285, &v284, &v283, &v282, &__p);
    v207 = v290;
    v208 = v291;
    while (v207 != v208)
    {
      v209 = v207->__vftable;
      v207 = (v207 + 16);
      md::MuninJunctionFeature::clearLabels(v209[1].__on_zero_shared, v209[1].__get_deleter);
    }

    memset(v302, 0, 24);
    v210 = __src;
    v268 = v297;
    if (__src != *&v297)
    {
      while (1)
      {
        v211 = *(*v210 + 56);
        v212 = *(*v210 + 64);
        while (v211 != v212)
        {
          v213 = *v211;
          if ((*(*v211 + 40) & 1) == 0)
          {
            v213[40] = 1;
            (*(*v213 + 24))(v213, v124);
          }

          v211 += 16;
        }

        v214 = *&v302[8];
        v215 = *v302;
        while (v214 != v215)
        {
          v216 = *(v214 - 8);
          if (v216)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v216);
          }

          v214 -= 16;
        }

        *&v302[8] = v215;
        v217 = *v210;
        v218 = std::vector<std::shared_ptr<md::GEOVectorTileResource>>::reserve(v302, (*(*v210 + 64) - *(*v210 + 56)) >> 3);
        v219 = *(v217 + 56);
        v220 = *(v217 + 64);
        while (v219 != v220)
        {
          v222 = *(*v219 + 16);
          v221 = *(*v219 + 24);
          while (v222 != v221)
          {
            v223 = *v222;
            if (!atomic_fetch_add((*v222 + 306), 1u) && !*(v223 + 493))
            {
              atomic_load((v223 + 298));
              *(v223 + 493) = 9473;
              *(v223 + 299) = 0;
              v224 = atomic_load((v223 + 353));
              if ((v224 & 1) == 0)
              {
                *(v223 + 356) = 2 * (*(v223 + 493) == 2);
              }
            }

            v218 = std::vector<std::shared_ptr<md::MuninRoadLabel>>::push_back[abi:nn200100](v302, v222++);
          }

          v219 += 16;
        }

        v273 = v210;
        v225 = *v302;
        v226 = *&v302[8];
        if (*v302 != *&v302[8])
        {
          break;
        }

LABEL_267:
        v210 = v273 + 16;
        v124 = v256;
        v121 = v257 + 176;
        if (v273 + 16 == *&v268)
        {
          goto LABEL_268;
        }
      }

      v227 = *(v257 + 32);
      v228 = (v227 + 16);
      while (1)
      {
        v229 = *v228;
        if (*v228)
        {
          v230 = *v225;
          v231 = *v228;
          do
          {
            v232 = v231[4];
            if (v230 >= v232)
            {
              if (v232 >= v230)
              {
                goto LABEL_266;
              }

              ++v231;
            }

            v231 = *v231;
          }

          while (v231);
        }

        v233 = *v225;
        if ((*(*v225 + 304) & 1) == 0)
        {
          *(v233 + 304) = 1;
        }

        v234 = (v227 + 16);
        v235 = (v227 + 16);
        if (v229)
        {
          while (1)
          {
            while (1)
            {
              v235 = v229;
              v236 = v229[4];
              if (v233 >= v236)
              {
                break;
              }

              v229 = *v235;
              v234 = v235;
              if (!*v235)
              {
                goto LABEL_247;
              }
            }

            if (v236 >= v233)
            {
              break;
            }

            v229 = v235[1];
            if (!v229)
            {
              v234 = v235 + 1;
              goto LABEL_247;
            }
          }
        }

        else
        {
LABEL_247:
          v237 = mdm::zone_mallocator::instance(v218);
          v238 = pthread_rwlock_rdlock((v237 + 32));
          if (v238)
          {
            geo::read_write_lock::logFailure(v238, "read lock", v239);
          }

          v240 = malloc_type_zone_malloc(*v237, 0x30uLL, 0x10200409B2CA512uLL);
          atomic_fetch_add((v237 + 24), 1u);
          geo::read_write_lock::unlock((v237 + 32));
          v240[4] = *v225;
          v241 = v225[1];
          v240[5] = v241;
          if (v241)
          {
            atomic_fetch_add_explicit(v241 + 1, 1uLL, memory_order_relaxed);
          }

          *v240 = 0;
          v240[1] = 0;
          v240[2] = v235;
          *v234 = v240;
          v242 = **(v227 + 8);
          if (v242)
          {
            *(v227 + 8) = v242;
            v240 = *v234;
          }

          v218 = std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(*(v227 + 16), v240);
          ++*(v227 + 32);
        }

        if (*(*v227 + 3653))
        {
          goto LABEL_265;
        }

        v243 = *(*v225 + 6);
        if ((*(v243 + 47) & 0x8000000000000000) != 0)
        {
          if (!*(v243 + 32))
          {
            goto LABEL_265;
          }
        }

        else if (!*(v243 + 47))
        {
          goto LABEL_265;
        }

        v244 = std::__hash_table<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,std::__unordered_map_hasher<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,std::hash<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,std::equal_to<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,true>,std::__unordered_map_equal<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,std::equal_to<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,std::hash<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,mdm::zone_mallocator>>::find<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>((v227 + 40), v243 + 24);
        if (!v244)
        {
          operator new();
        }

        v246 = v244[6];
        v245 = v244[7];
        if (v245)
        {
          atomic_fetch_add_explicit(&v245->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v218 = md::LabelBase::setDedupingGroup(*v225, v246);
        if (v245)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v245);
        }

LABEL_265:
        *(v227 + 96) = 1;
LABEL_266:
        v225 += 2;
        if (v225 == v226)
        {
          goto LABEL_267;
        }
      }
    }

LABEL_268:
    std::__tree<gdc::LayerDataWithWorld>::destroy(*(v257 + 176));
    v247 = v278;
    *(v257 + 168) = v277;
    *(v257 + 176) = v247;
    v248 = v279;
    *(v257 + 184) = v279;
    if (v248)
    {
      v247[2] = v121;
      v277 = COERCE_DOUBLE(&v278);
      v278 = 0;
      v279 = 0;
    }

    else
    {
      *(v257 + 168) = v121;
    }

    *&__p = COERCE_DOUBLE(v302);
    std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&__p);
    *v302 = &v290;
    std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](v302);
    *v302 = &__src;
    std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](v302);
    std::__tree<gdc::LayerDataWithWorld>::destroy(v278);
    std::__tree<std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>>>::destroy(v281[0]);
    if (v274)
    {
      v275 = v274;
      operator delete(v274);
    }
  }

  if (*(&v252 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v252 + 1));
  }
}

void sub_1B2E7B1D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, void *a57)
{
  std::__split_buffer<std::shared_ptr<md::MuninRoadLabel>>::~__split_buffer(&STACK[0x1070]);
  v58 = STACK[0x920];
  if (STACK[0x920])
  {
    STACK[0x928] = v58;
    operator delete(v58);
  }

  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a26);
  }

  std::__tree<gdc::LayerDataWithWorld>::destroy(a54);
  std::__tree<std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>>>::destroy(a57);
  if (a50)
  {
    operator delete(a50);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a20);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,md::MuninRoadLabelSorter &,md::MuninRoadLabel **,false>(uint64_t result, int8x16_t *a2, uint64_t a3, char a4)
{
  v6 = result;
LABEL_2:
  v135 = a2;
  v136 = &a2[-1].i64[1];
  v7 = v6;
  while (1)
  {
    v6 = v7;
    v8 = (a2 - v7) >> 3;
    if (v8 <= 2)
    {
      if (v8 < 2)
      {
        return result;
      }

      if (v8 == 2)
      {
        v81 = *v136;
        v82 = *v6;
        result = md::MuninRoadLabelSorter::operator()(*v136, *v6);
        if (result)
        {
          *v6 = v81;
          *v136 = v82;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v8 == 3)
    {
      break;
    }

    if (v8 == 4)
    {

      return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninRoadLabelSorter &,md::MuninRoadLabel **,0>(v6, (v6 + 8), (v6 + 16), v136);
    }

    if (v8 == 5)
    {
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninRoadLabelSorter &,md::MuninRoadLabel **,0>(v6, (v6 + 8), (v6 + 16), (v6 + 24));
      v74 = *v136;
      v75 = *(v6 + 24);
      result = md::MuninRoadLabelSorter::operator()(*v136, v75);
      if (!result)
      {
        return result;
      }

      *(v6 + 24) = v74;
      *v136 = v75;
      v77 = *(v6 + 16);
      v76 = *(v6 + 24);
      result = md::MuninRoadLabelSorter::operator()(v76, v77);
      if (!result)
      {
        return result;
      }

      *(v6 + 16) = v76;
      *(v6 + 24) = v77;
      v78 = *(v6 + 8);
      result = md::MuninRoadLabelSorter::operator()(v76, v78);
      if (!result)
      {
        return result;
      }

      *(v6 + 8) = v76;
      *(v6 + 16) = v78;
      v79 = *v6;
      v80 = v76;
      goto LABEL_166;
    }

LABEL_10:
    v139 = v6;
    if (v8 <= 23)
    {
      v87 = (v6 + 8);
      v89 = v6 == a2 || v87 == a2;
      if (a4)
      {
        if (!v89)
        {
          v90 = 0;
          v91 = v6;
          do
          {
            v93 = *v91;
            v92 = *(v91 + 8);
            v91 = v87;
            result = md::MuninRoadLabelSorter::operator()(v92, v93);
            if (result)
            {
              v94 = v90;
              while (1)
              {
                *(v139 + v94 + 8) = v93;
                if (!v94)
                {
                  break;
                }

                v93 = *(v139 + v94 - 8);
                result = md::MuninRoadLabelSorter::operator()(v92, v93);
                v94 -= 8;
                if ((result & 1) == 0)
                {
                  v95 = (v139 + v94 + 8);
                  goto LABEL_128;
                }
              }

              v95 = v139;
LABEL_128:
              *v95 = v92;
            }

            v87 = (v91 + 8);
            v90 += 8;
          }

          while ((v91 + 8) != a2);
        }
      }

      else if (!v89)
      {
        do
        {
          v131 = *v6;
          v130 = *(v6 + 8);
          v6 = v87;
          result = md::MuninRoadLabelSorter::operator()(v130, v131);
          if (result)
          {
            v132 = v6;
            do
            {
              *v6 = v131;
              v131 = *(v6 - 16);
              result = md::MuninRoadLabelSorter::operator()(v130, v131);
              v6 -= 8;
            }

            while ((result & 1) != 0);
            *v6 = v130;
            v6 = v132;
            a2 = v135;
          }

          v87 = (v6 + 8);
        }

        while ((v6 + 8) != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v6 != a2)
      {
        v96 = (v8 - 2) >> 1;
        v137 = v96;
        do
        {
          v97 = v96;
          if (v137 >= v96)
          {
            v98 = (2 * v96) | 1;
            v99 = (v6 + 8 * v98);
            v100 = *v99;
            if (2 * v96 + 2 < v8)
            {
              v101 = v99[1];
              if (md::MuninRoadLabelSorter::operator()(*v99, v101))
              {
                v100 = v101;
                ++v99;
                v98 = 2 * v97 + 2;
              }
            }

            v102 = (v6 + 8 * v97);
            v103 = *v102;
            result = md::MuninRoadLabelSorter::operator()(v100, *v102);
            a2 = v135;
            if ((result & 1) == 0)
            {
              do
              {
                v104 = v99;
                *v102 = v100;
                if (v137 < v98)
                {
                  break;
                }

                v105 = (2 * v98) | 1;
                v99 = (v6 + 8 * v105);
                v106 = 2 * v98 + 2;
                v100 = *v99;
                if (v106 < v8)
                {
                  v107 = v99[1];
                  v108 = md::MuninRoadLabelSorter::operator()(*v99, v107);
                  if (v108)
                  {
                    v100 = v107;
                    ++v99;
                  }

                  v6 = v139;
                  if (v108)
                  {
                    v105 = v106;
                  }
                }

                result = md::MuninRoadLabelSorter::operator()(v100, v103);
                v102 = v104;
                v98 = v105;
              }

              while (!result);
              *v104 = v103;
              a2 = v135;
            }
          }

          v96 = v97 - 1;
        }

        while (v97);
        do
        {
          v109 = a2;
          v110 = 0;
          v138 = *v6;
          v111 = v6;
          do
          {
            v112 = &v111[v110];
            v114 = v112 + 1;
            v113 = v112[1];
            v115 = (2 * v110) | 1;
            v116 = 2 * v110 + 2;
            if (v116 >= v8)
            {
              v110 = (2 * v110) | 1;
            }

            else
            {
              v119 = v112[2];
              v117 = v112 + 2;
              v118 = v119;
              result = md::MuninRoadLabelSorter::operator()(v113, v119);
              if (result)
              {
                v113 = v118;
                v114 = v117;
                v110 = v116;
              }

              else
              {
                v110 = v115;
              }
            }

            *v111 = v113;
            v111 = v114;
          }

          while (v110 <= (v8 - 2) / 2);
          v120 = (v109 - 8);
          if (v114 == v120)
          {
            v121 = v120;
            v6 = v139;
            *v114 = v138;
          }

          else
          {
            *v114 = v120->i64[0];
            v121 = v120;
            v6 = v139;
            v120->i64[0] = v138;
            v122 = (v114 - v139 + 8) >> 3;
            v123 = v122 < 2;
            v124 = v122 - 2;
            if (!v123)
            {
              v125 = v124 >> 1;
              v126 = &v139[v124 >> 1];
              v127 = *v126;
              v128 = *v114;
              result = md::MuninRoadLabelSorter::operator()(*v126, *v114);
              if (result)
              {
                do
                {
                  v129 = v126;
                  *v114 = v127;
                  if (!v125)
                  {
                    break;
                  }

                  v125 = (v125 - 1) >> 1;
                  v126 = &v139[v125];
                  v127 = *v126;
                  result = md::MuninRoadLabelSorter::operator()(*v126, v128);
                  v114 = v129;
                }

                while ((result & 1) != 0);
                *v129 = v128;
              }
            }
          }

          v123 = v8-- <= 2;
          a2 = v121;
        }

        while (!v123);
      }

      return result;
    }

    v9 = (v6 + 8 * (v8 >> 1));
    v10 = v9;
    v11 = *v136;
    if (v8 >= 0x81)
    {
      v12 = *v9;
      v13 = *v6;
      v14 = md::MuninRoadLabelSorter::operator()(*v9, *v6);
      v15 = md::MuninRoadLabelSorter::operator()(v11, v12);
      if (v14)
      {
        if (v15)
        {
          *v6 = v11;
          goto LABEL_27;
        }

        *v6 = v12;
        *v9 = v13;
        v24 = *v136;
        if (md::MuninRoadLabelSorter::operator()(*v136, v13))
        {
          *v9 = v24;
LABEL_27:
          *v136 = v13;
        }
      }

      else if (v15)
      {
        *v9 = v11;
        *v136 = v12;
        v20 = *v9;
        v21 = *v6;
        if (md::MuninRoadLabelSorter::operator()(*v9, *v6))
        {
          *v6 = v20;
          *v9 = v21;
        }
      }

      v25 = v9 - 1;
      v26 = *(v9 - 1);
      v27 = *(v6 + 8);
      v28 = md::MuninRoadLabelSorter::operator()(v26, v27);
      v29 = a2[-1].i64[0];
      v30 = md::MuninRoadLabelSorter::operator()(v29, v26);
      if (v28)
      {
        if (v30)
        {
          *(v6 + 8) = v29;
          goto LABEL_39;
        }

        *(v6 + 8) = v26;
        *v25 = v27;
        v34 = a2[-1].i64[0];
        if (md::MuninRoadLabelSorter::operator()(v34, v27))
        {
          *v25 = v34;
LABEL_39:
          a2[-1].i64[0] = v27;
        }
      }

      else if (v30)
      {
        *v25 = v29;
        a2[-1].i64[0] = v26;
        v31 = *v25;
        v32 = *(v6 + 8);
        if (md::MuninRoadLabelSorter::operator()(*v25, v32))
        {
          *(v6 + 8) = v31;
          *v25 = v32;
        }
      }

      v37 = v9[1];
      v36 = v9 + 1;
      v35 = v37;
      v38 = *(v6 + 16);
      v39 = md::MuninRoadLabelSorter::operator()(v37, v38);
      v40 = a2[-2].i64[1];
      v41 = md::MuninRoadLabelSorter::operator()(v40, v37);
      if (v39)
      {
        if (v41)
        {
          *(v6 + 16) = v40;
          goto LABEL_48;
        }

        *(v6 + 16) = v35;
        *v36 = v38;
        v44 = a2[-2].i64[1];
        if (md::MuninRoadLabelSorter::operator()(v44, v38))
        {
          *v36 = v44;
LABEL_48:
          a2[-2].i64[1] = v38;
        }
      }

      else if (v41)
      {
        *v36 = v40;
        a2[-2].i64[1] = v35;
        v42 = *v36;
        v43 = *(v6 + 16);
        if (md::MuninRoadLabelSorter::operator()(*v36, v43))
        {
          *(v6 + 16) = v42;
          *v36 = v43;
        }
      }

      v45 = *v10;
      v46 = *v25;
      v47 = md::MuninRoadLabelSorter::operator()(*v10, *v25);
      v48 = *v36;
      v49 = md::MuninRoadLabelSorter::operator()(*v36, v45);
      if (v47)
      {
        if (!v49)
        {
          *v25 = v45;
          *v10 = v46;
          v25 = v10;
          v45 = v48;
          if (!md::MuninRoadLabelSorter::operator()(v48, v46))
          {
            v45 = v46;
LABEL_56:
            v50 = *v6;
            *v6 = v45;
            *v10 = v50;
            goto LABEL_57;
          }
        }
      }

      else
      {
        if (!v49)
        {
          goto LABEL_56;
        }

        *v10 = v48;
        *v36 = v45;
        v36 = v10;
        v45 = v46;
        if (!md::MuninRoadLabelSorter::operator()(v48, v46))
        {
          v45 = v48;
          goto LABEL_56;
        }
      }

      *v25 = v48;
      *v36 = v46;
      goto LABEL_56;
    }

    v16 = *v6;
    v17 = *v9;
    v18 = md::MuninRoadLabelSorter::operator()(*v6, *v9);
    v19 = md::MuninRoadLabelSorter::operator()(v11, v16);
    if (!v18)
    {
      if (v19)
      {
        *v6 = v11;
        *v136 = v16;
        v22 = *v6;
        v23 = *v9;
        if (md::MuninRoadLabelSorter::operator()(*v6, *v9))
        {
          *v9 = v22;
          *v6 = v23;
        }
      }

      goto LABEL_57;
    }

    if (v19)
    {
      *v9 = v11;
    }

    else
    {
      *v9 = v16;
      *v6 = v17;
      v33 = *v136;
      if (!md::MuninRoadLabelSorter::operator()(*v136, v17))
      {
        goto LABEL_57;
      }

      *v6 = v33;
    }

    *v136 = v17;
LABEL_57:
    --a3;
    v51 = *v6;
    v52 = v6;
    if ((a4 & 1) != 0 || (v52 = v6, md::MuninRoadLabelSorter::operator()(*(v6 - 8), *v6)))
    {
      do
      {
        v53 = v52;
        v55 = *(v52 + 8);
        v52 += 8;
        v54 = v55;
      }

      while (md::MuninRoadLabelSorter::operator()(v55, v51));
      if (v53 == v6)
      {
        a2 = v135;
        do
        {
          if (v52 >= a2)
          {
            break;
          }

          v57 = a2[-1].i64[1];
          a2 = (a2 - 8);
        }

        while (!md::MuninRoadLabelSorter::operator()(v57, v51));
      }

      else
      {
        do
        {
          v56 = a2[-1].i64[1];
          a2 = (a2 - 8);
        }

        while (!md::MuninRoadLabelSorter::operator()(v56, v51));
      }

      if (v52 < a2)
      {
        v58 = a2->i64[0];
        v59 = v52;
        v60 = a2;
        do
        {
          v59->i64[0] = v58;
          v60->i64[0] = v54;
          do
          {
            v53 = v59;
            v61 = v59->i64[1];
            v59 = (v59 + 8);
            v54 = v61;
          }

          while (md::MuninRoadLabelSorter::operator()(v61, v51));
          do
          {
            v62 = v60[-1].i64[1];
            v60 = (v60 - 8);
            v58 = v62;
          }

          while (!md::MuninRoadLabelSorter::operator()(v62, v51));
        }

        while (v59 < v60);
      }

      if (v53 != v6)
      {
        *v6 = v53->i64[0];
      }

      v53->i64[0] = v51;
      v63 = v52 >= a2;
      a2 = v135;
      if (!v63)
      {
        goto LABEL_78;
      }

      v64 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninRoadLabelSorter &,md::MuninRoadLabel **>(v6, v53->i64);
      v7 = &v53->i64[1];
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninRoadLabelSorter &,md::MuninRoadLabel **>(&v53->i64[1], v135->i64);
      if (result)
      {
        a2 = v53;
        if (!v64)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v64)
      {
LABEL_78:
        result = std::__introsort<std::_ClassicAlgPolicy,md::MuninRoadLabelSorter &,md::MuninRoadLabel **,false>(v6, v53, a3, a4 & 1);
        a4 = 0;
        v7 = &v53->i64[1];
      }
    }

    else
    {
      result = md::MuninRoadLabelSorter::operator()(v51, *v136);
      if (result)
      {
        v7 = v6;
        do
        {
          v65 = v7[1];
          ++v7;
          result = md::MuninRoadLabelSorter::operator()(v51, v65);
        }

        while ((result & 1) == 0);
      }

      else
      {
        v66 = v6 + 8;
        do
        {
          v7 = v66;
          if (v66 >= a2)
          {
            break;
          }

          v66 += 8;
          result = md::MuninRoadLabelSorter::operator()(v51, *v7);
        }

        while (!result);
      }

      v67 = a2;
      if (v7 < a2)
      {
        v67 = a2;
        do
        {
          v68 = v67[-1].i64[1];
          v67 = (v67 - 8);
          result = md::MuninRoadLabelSorter::operator()(v51, v68);
        }

        while ((result & 1) != 0);
      }

      if (v7 < v67)
      {
        v69 = *v7;
        v70 = v67->i64[0];
        do
        {
          *v7 = v70;
          v67->i64[0] = v69;
          do
          {
            v71 = v7[1];
            ++v7;
            v69 = v71;
          }

          while (!md::MuninRoadLabelSorter::operator()(v51, v71));
          do
          {
            v72 = v67[-1].i64[1];
            v67 = (v67 - 8);
            v70 = v72;
            result = md::MuninRoadLabelSorter::operator()(v51, v72);
          }

          while ((result & 1) != 0);
        }

        while (v7 < v67);
      }

      v73 = v7 - 1;
      if (v7 - 1 != v139)
      {
        *v139 = *v73;
      }

      a4 = 0;
      *v73 = v51;
    }
  }

  v83 = *v6;
  v84 = *(v6 + 8);
  v85 = md::MuninRoadLabelSorter::operator()(v84, *v6);
  v86 = *v136;
  result = md::MuninRoadLabelSorter::operator()(*v136, v84);
  if (!v85)
  {
    if (!result)
    {
      return result;
    }

    *(v6 + 8) = v86;
    *v136 = v84;
    v79 = *v6;
    v80 = *(v6 + 8);
LABEL_166:
    result = md::MuninRoadLabelSorter::operator()(v80, v79);
    if (result)
    {
      *v6 = vextq_s8(*v6, *v6, 8uLL);
    }

    return result;
  }

  if (result)
  {
    *v6 = v86;
  }

  else
  {
    *v6 = v84;
    *(v6 + 8) = v83;
    v133 = *v136;
    result = md::MuninRoadLabelSorter::operator()(*v136, v83);
    if (!result)
    {
      return result;
    }

    *(v6 + 8) = v133;
  }

  *v136 = v83;
  return result;
}

BOOL md::MuninRoadLabelSorter::operator()(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  if (v2 && v2 == *(a2 + 24))
  {
    return *(a1 + 32) < *(a2 + 32);
  }

  v3 = (*(a1 + 538) & 0xFD) == 1;
  if (((*(a1 + 538) & 0xFD) == 1) == ((*(a2 + 538) & 0xFD) == 1))
  {
    return *(a1 + 488) <= *(a2 + 488);
  }

  return v3;
}

BOOL std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninRoadLabelSorter &,md::MuninRoadLabel **,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  v9 = *a1;
  v10 = md::MuninRoadLabelSorter::operator()(*a2, *a1);
  v11 = *a3;
  v12 = md::MuninRoadLabelSorter::operator()(*a3, v8);
  if (v10)
  {
    if (v12)
    {
      *a1 = v11;
LABEL_9:
      *a3 = v9;
      v8 = v9;
      goto LABEL_11;
    }

    *a1 = v8;
    *a2 = v9;
    v8 = *a3;
    if (md::MuninRoadLabelSorter::operator()(*a3, v9))
    {
      *a2 = v8;
      goto LABEL_9;
    }
  }

  else if (v12)
  {
    *a2 = v11;
    *a3 = v8;
    v13 = *a2;
    v14 = *a1;
    if (md::MuninRoadLabelSorter::operator()(*a2, *a1))
    {
      *a1 = v13;
      *a2 = v14;
      v8 = *a3;
    }
  }

  else
  {
    v8 = v11;
  }

LABEL_11:
  v15 = *a4;
  result = md::MuninRoadLabelSorter::operator()(*a4, v8);
  if (result)
  {
    *a3 = v15;
    *a4 = v8;
    v17 = *a3;
    v18 = *a2;
    result = md::MuninRoadLabelSorter::operator()(*a3, *a2);
    if (result)
    {
      *a2 = v17;
      *a3 = v18;
      v19 = *a2;
      v20 = *a1;
      result = md::MuninRoadLabelSorter::operator()(*a2, *a1);
      if (result)
      {
        *a1 = v19;
        *a2 = v20;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninRoadLabelSorter &,md::MuninRoadLabel **>(uint64_t a1, uint64_t *a2)
{
  v4 = (a2 - a1) >> 3;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v14 = *a1;
        v15 = *(a1 + 8);
        v16 = md::MuninRoadLabelSorter::operator()(v15, *a1);
        v17 = *(a2 - 1);
        v18 = md::MuninRoadLabelSorter::operator()(v17, v15);
        if (v16)
        {
          if (v18)
          {
            *a1 = v17;
          }

          else
          {
            *a1 = v15;
            *(a1 + 8) = v14;
            v25 = *(a2 - 1);
            if (!md::MuninRoadLabelSorter::operator()(v25, v14))
            {
              return 1;
            }

            *(a1 + 8) = v25;
          }

          *(a2 - 1) = v14;
          return 1;
        }

        if (!v18)
        {
          return 1;
        }

        *(a1 + 8) = v17;
        *(a2 - 1) = v15;
        v12 = *a1;
        v13 = *(a1 + 8);
        break;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninRoadLabelSorter &,md::MuninRoadLabel **,0>(a1, (a1 + 8), (a1 + 16), a2 - 1);
        return 1;
      case 5:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninRoadLabelSorter &,md::MuninRoadLabel **,0>(a1, (a1 + 8), (a1 + 16), (a1 + 24));
        v7 = *(a2 - 1);
        v8 = *(a1 + 24);
        if (!md::MuninRoadLabelSorter::operator()(v7, v8))
        {
          return 1;
        }

        *(a1 + 24) = v7;
        *(a2 - 1) = v8;
        v10 = *(a1 + 16);
        v9 = *(a1 + 24);
        if (!md::MuninRoadLabelSorter::operator()(v9, v10))
        {
          return 1;
        }

        *(a1 + 16) = v9;
        *(a1 + 24) = v10;
        v11 = *(a1 + 8);
        if (!md::MuninRoadLabelSorter::operator()(v9, v11))
        {
          return 1;
        }

        *(a1 + 8) = v9;
        *(a1 + 16) = v11;
        v12 = *a1;
        v13 = v9;
        break;
      default:
        goto LABEL_16;
    }

    if (md::MuninRoadLabelSorter::operator()(v13, v12))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 1);
    v6 = *a1;
    if (md::MuninRoadLabelSorter::operator()(v5, *a1))
    {
      *a1 = v5;
      *(a2 - 1) = v6;
    }

    return 1;
  }

LABEL_16:
  v19 = *a1;
  v20 = *(a1 + 8);
  v21 = md::MuninRoadLabelSorter::operator()(v20, *a1);
  v23 = (a1 + 16);
  v22 = *(a1 + 16);
  v24 = md::MuninRoadLabelSorter::operator()(v22, v20);
  if (v21)
  {
    if (v24)
    {
      *a1 = v22;
      *(a1 + 16) = v19;
    }

    else
    {
      *a1 = v20;
      *(a1 + 8) = v19;
      if (md::MuninRoadLabelSorter::operator()(v22, v19))
      {
        *(a1 + 8) = vextq_s8(*(a1 + 8), *(a1 + 8), 8uLL);
      }
    }
  }

  else if (v24)
  {
    *(a1 + 8) = v22;
    *(a1 + 16) = v20;
    if (md::MuninRoadLabelSorter::operator()(v22, v19))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v26 = (a1 + 24);
  if ((a1 + 24) == a2)
  {
    return 1;
  }

  v27 = 0;
  for (i = 24; ; i += 8)
  {
    v29 = *v26;
    v30 = *v23;
    if (md::MuninRoadLabelSorter::operator()(*v26, *v23))
    {
      v31 = i;
      while (1)
      {
        *(a1 + v31) = v30;
        v32 = v31 - 8;
        if (v31 == 8)
        {
          break;
        }

        v30 = *(a1 + v31 - 16);
        v33 = md::MuninRoadLabelSorter::operator()(v29, v30);
        v31 = v32;
        if (!v33)
        {
          v34 = (a1 + v32);
          goto LABEL_40;
        }
      }

      v34 = a1;
LABEL_40:
      *v34 = v29;
      if (++v27 == 8)
      {
        break;
      }
    }

    v23 = v26++;
    if (v26 == a2)
    {
      return 1;
    }
  }

  return v26 + 1 == a2;
}

void std::__optional_storage_base<md::mun::CollectionPoint,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<md::mun::CollectionPoint,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 1864) == *(a2 + 1864))
  {
    if (*(a1 + 1864))
    {
      *a1 = *a2;
      for (i = 32; i != 44; i += 4)
      {
        *(a1 + i) = *(a2 + i);
      }

      *(a1 + 44) = *(a2 + 44);
      for (j = 8; j != 32; j += 8)
      {
        *(a1 + j) = *(a2 + j);
      }

      *(a1 + 48) = *(a2 + 48);
      for (k = 56; k != 80; k += 8)
      {
        *(a1 + k) = *(a2 + k);
      }

      *(a1 + 80) = *(a2 + 80);
      if (a1 != a2)
      {
        geo::small_vector_base<md::mun::PhotoInfo>::move(a1 + 88, a2 + 88, a1 + 120);
      }

      v7 = *(a2 + 1848);
      *(a1 + 1853) = *(a2 + 1853);
      *(a1 + 1848) = v7;
    }
  }

  else if (*(a1 + 1864))
  {
    geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(a1 + 88);
    *(a1 + 1864) = 0;
  }

  else
  {
    *a1 = *a2;
    v8 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v8;
    v9 = *(a2 + 32);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 32) = v9;
    *(a1 + 44) = *(a2 + 44);
    v10 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v10;
    geo::small_vector_base<md::mun::PhotoInfo>::small_vector_base((a1 + 88), (a2 + 88), (a1 + 120));
    v11 = *(a2 + 1848);
    *(a1 + 1853) = *(a2 + 1853);
    *(a1 + 1848) = v11;
    *(a1 + 1864) = 1;
  }
}

char *std::__set_difference[abi:nn200100]<std::__less<void,void>,std::__tree_const_iterator<std::shared_ptr<md::MuninJunctionFeature>,std::__tree_node<std::shared_ptr<md::MuninJunctionFeature>,void *> *,long> &,std::__tree_const_iterator<std::shared_ptr<md::MuninJunctionFeature>,std::__tree_node<std::shared_ptr<md::MuninJunctionFeature>,void *> *,long> &,std::__tree_const_iterator<std::shared_ptr<md::MuninJunctionFeature>,std::__tree_node<std::shared_ptr<md::MuninJunctionFeature>,void *> *,long> &,std::__tree_const_iterator<std::shared_ptr<md::MuninJunctionFeature>,std::__tree_node<std::shared_ptr<md::MuninJunctionFeature>,void *> *,long> &,std::insert_iterator<std::vector<std::shared_ptr<md::MuninJunctionFeature>>> &>(char *result, char **a2, char **a3, uint64_t a4, void *a5, void *a6)
{
  v7 = result;
  v8 = *a2;
  v9 = *a3;
  if (*a2 == *a3)
  {
LABEL_39:
    v27 = *a6;
    goto LABEL_40;
  }

  for (i = *a4; *a4 != *a5; i = *a4)
  {
    v15 = *(v8 + 4);
    v16 = i[4];
    if (v15 >= v16)
    {
      if (v16 >= v15)
      {
        v23 = *(v8 + 1);
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
            v24 = *(v8 + 2);
            v20 = *v24 == v8;
            v8 = v24;
          }

          while (!v20);
        }

        *a2 = v24;
        v25 = *a4;
        v26 = *(*a4 + 8);
        if (v26)
        {
          do
          {
            v22 = v26;
            v26 = *v26;
          }

          while (v26);
        }

        else
        {
          do
          {
            v22 = v25[2];
            v20 = *v22 == v25;
            v25 = v22;
          }

          while (!v20);
        }
      }

      else
      {
        v21 = i[1];
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
            v22 = i[2];
            v20 = *v22 == i;
            i = v22;
          }

          while (!v20);
        }
      }

      *a4 = v22;
    }

    else
    {
      result = std::vector<std::shared_ptr<md::MuninJunctionFeature>>::insert(*a6, a6[1], v8 + 32);
      a6[1] = result + 16;
      v17 = *a2;
      v18 = *(*a2 + 1);
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
          v19 = *(v17 + 2);
          v20 = *v19 == v17;
          v17 = v19;
        }

        while (!v20);
      }

      *a2 = v19;
    }

    v8 = *a2;
    v9 = *a3;
    if (*a2 == *a3)
    {
      goto LABEL_39;
    }
  }

  v27 = *a6;
  if (v8 == v9)
  {
LABEL_40:
    v9 = v8;
    goto LABEL_41;
  }

  v28 = *a6;
  v29 = *(&v27 + 1);
  v32 = v27;
  do
  {
    result = std::vector<std::shared_ptr<md::MuninJunctionFeature>>::insert(v28, v29, v8 + 32);
    v30 = *(v8 + 1);
    if (v30)
    {
      do
      {
        v31 = v30;
        v30 = *v30;
      }

      while (v30);
    }

    else
    {
      do
      {
        v31 = *(v8 + 2);
        v20 = *v31 == v8;
        v8 = v31;
      }

      while (!v20);
    }

    v29 = result + 16;
    v8 = v31;
  }

  while (v31 != v9);
  *&v27 = v32;
  *(&v27 + 1) = result + 16;
LABEL_41:
  *v7 = v9;
  *(v7 + 8) = v27;
  return result;
}