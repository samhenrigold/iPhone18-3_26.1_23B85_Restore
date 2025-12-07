void sub_1B2FB4EFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, __int128 a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42)
{
  if (v42)
  {
    operator delete(v42);
  }

  v46 = *(v44 - 248);
  if (v46)
  {
    *(v44 - 240) = v46;
    operator delete(v46);
  }

  if (v43)
  {
    operator delete(v43);
  }

  if (__p)
  {
    operator delete(__p);
  }

  v47 = *(v44 - 224);
  if (v47)
  {
    operator delete(v47);
  }

  if (a33)
  {
    operator delete(a33);
  }

  if (a30)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

double geo::Polygon2<double>::boundingBox(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1.79769313e308;
  }

  do
  {
    v2 = 0;
    v3 = &v8;
    v4 = 1;
    do
    {
      v5 = *(a1 + 8 * v2);
      v6 = v4;
      *v3 = fmin(v5, *v3);
      *&v9[8 * v2 + 8] = fmax(*&v9[8 * v2 + 8], v5);
      v3 = v9;
      v2 = 1;
      v4 = 0;
    }

    while ((v6 & 1) != 0);
    a1 += 16;
  }

  while (a1 != a2);
  return v8;
}

uint64_t md::PolygonOverlayMeshBuilder::tileCut(geo::QuadTile const&,std::shared_ptr<geo::Polygon2<double>> const&,md::PolygonOverlayMeshBuilder::MeshInfo &,signed char)::$_0::operator()(float ****a1, float *a2, float *a3)
{
  if (!**a1)
  {
    operator new();
  }

  v3 = **a1;
  v4 = *v3;
  v5 = v3[1];
  if (*v3 == v5)
  {
    return 0;
  }

  v6 = *a2;
  v7 = a2[1];
  v8 = *a3;
  v9 = a3[1];
  while (gm::LineSegment<float,2>::distanceSquaredTo(v4, v6, v7) >= 0.00000011921 || gm::LineSegment<float,2>::distanceSquaredTo(v4, v8, v9) >= 0.00000011921)
  {
    v4 += 4;
    if (v4 == v5)
    {
      return 0;
    }
  }

  return 1;
}

void md::PolygonOverlayMeshBuilder::buildOverlayRenderableFromMeshInfos(uint64_t *a1, uint64_t a2, uint64_t **a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t a8, float a9, _DWORD *a10, uint64_t *a11, __int128 *a12, __int128 *a13)
{
  v31[5] = *MEMORY[0x1E69E9840];
  v18 = *a3;
  v19 = a3[1];
  if (*a3 != v19)
  {
    v20 = 0;
    v21 = 0;
    do
    {
      if (geo::effectiveVertexCount<float>(v18))
      {
        v20 += (v18[1] - *v18) >> 3;
        v21 += geo::triangulatedIndexCount<float>(v18);
      }

      v18 += 11;
    }

    while (v18 != v19);
    v30[6] = v21;
    v30[7] = v20;
    if (v20 && v21)
    {
      operator new();
    }
  }

  v22 = a5[1];
  v29[0] = *a5;
  v29[1] = v22;
  if (v22)
  {
    atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
  }

  v23 = a6[1];
  v28[0] = *a6;
  v28[1] = v23;
  if (v23)
  {
    atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
  }

  v24 = a8 == 1;
  if (a8 == 2)
  {
    v24 = 2;
  }

  LOBYTE(v27) = v24;
  LODWORD(v31[0]) = *a10;
  md::PolygonOverlayMeshBuilder::buildStrokeRibbon(v30, *a3, a3[1], a4, v29, v28, a7, &v27, a9, v31);
}

void sub_1B2FB6120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  MEMORY[0x1B8C62190](v17, 0x10F1C4063721C39);
  if (a16)
  {
    (*(*a16 + 8))(a16);
  }

  _Unwind_Resume(a1);
}

void md::PolygonOverlayMeshBuilder::buildStrokeRibbon(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7, char *a8, float a9, int *a10)
{
  v73 = *MEMORY[0x1E69E9840];
  memset(v58, 0, sizeof(v58));
  v59 = 1065353216;
  if (a2 != a3)
  {
    v11 = a7;
    v12 = a3;
    v13 = a2;
    v14 = a10;
    do
    {
      v15 = v13[3];
      v16 = v13[4];
      if (v16 != v15)
      {
        v17 = *v14;
        v19 = *v15;
        v18 = *(v15 + 1);
        v67 = v18;
        v68 = v19;
        v20 = *v11;
        if (*v11)
        {
          v22 = *(v20 + 32);
          v21 = *(v20 + 40);
          v65 = v22;
          v66 = v21;
          if (v21)
          {
            atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
            v15 = v13[3];
            v16 = v13[4];
          }
        }

        else
        {
          v65 = 0;
          v66 = 0;
        }

        v70[0] = v58;
        v70[1] = &v68;
        v70[2] = &v67;
        v70[3] = v13;
        v70[4] = &v65;
        v70[5] = a8;
        v71 = a9;
        v72 = v17;
        if ((v16 - v15) >= 0x11)
        {
          v23 = 0;
          v24 = 1;
          do
          {
            v25 = &v15[v23 * 8];
            v26 = *&v15[v23 * 8 + 16];
            if (*(v25 + 3) >= v26)
            {
              if (v26 != v18)
              {
                md::PolygonOverlayMeshBuilder::addStrokeRibbonBatches(md::PolygonOverlayMeshBuilder::MeshInfo const&,std::unordered_map<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>> &,std::shared_ptr<md::PolygonOverlayRenderable::Style> const&,md::Ribbons::StandardModeRibbon::JoinStyle const&,float,geo::Unit<geo::RadianUnitDescription,float>)::$_0::operator()(v70);
                v68 = *(v25 + 2);
              }
            }

            else
            {
              v27 = md::PolygonOverlayMeshBuilder::addStrokeRibbonBatches(md::PolygonOverlayMeshBuilder::MeshInfo const&,std::unordered_map<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>> &,std::shared_ptr<md::PolygonOverlayRenderable::Style> const&,md::Ribbons::StandardModeRibbon::JoinStyle const&,float,geo::Unit<geo::RadianUnitDescription,float>)::$_0::operator()(v70);
              v28 = v13[3];
              v29 = v28[v23 + 1];
              v31 = *(v25 + 2);
              v30 = *(v25 + 3);
              v32 = *v28;
              v33 = mdm::zone_mallocator::instance(v27);
              v34 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::PolylineOverlayRibbon>(v33);
              v35 = 2;
              if (v29 == v31)
              {
                v35 = 3;
              }

              if (v30 == v32)
              {
                v36 = v35 + 1;
              }

              else
              {
                v36 = v35;
              }

              v37 = *a8;
              v38 = md::Ribbons::StandardModeRibbonUsingPositionType<gm::Matrix<float,2,1>>::StandardModeRibbonUsingPositionType(v34, v36);
              *v38 = &unk_1F2A2D908;
              *(v38 + 104) = 0;
              *(v38 + 112) = 0;
              *(v38 + 120) = 0;
              *(v38 + 121) = v37;
              *(v38 + 124) = a9;
              *(v38 + 128) = v17;
              v64 = v38;
              *(v38 + 96) = 0;
              v39 = *(v25 + 2);
              v40 = *v13;
              if (v28[v23 + 1] == v39)
              {
                v41 = (v40 + 8 * v28[v23]);
                v42 = *(v38 + 72);
                *v42 = *v41;
                v42[1] = v41[1];
                v43 = 1;
              }

              else
              {
                v43 = 0;
                v42 = *(v38 + 72);
              }

              v44 = (v40 + 8 * v39);
              v45 = &v42[2 * v43];
              *v45 = *v44;
              v45[1] = v44[1];
              v46 = *(v25 + 3);
              v47 = (v40 + 8 * v46);
              v45[2] = *v47;
              v45[3] = v47[1];
              if (v46 == *v28)
              {
                v48 = (v40 + 8 * v28[1]);
                v45[4] = *v48;
                v45[5] = v48[1];
              }

              v61 = 0;
              v62 = 0;
              v63 = 0;
              LODWORD(v60) = 0;
              v49 = v65;
              v50 = v66;
              if (v66)
              {
                atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
                v51 = v62;
                v61 = v49;
                v62 = v50;
                if (v51)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](v51);
                  v52 = v60;
                }

                else
                {
                  v52 = 0;
                }
              }

              else
              {
                v52 = 0;
                v61 = v65;
              }

              v69 = &v60;
              v53 = std::__hash_table<std::__hash_value_type<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::PolylineOverlayBatchKey,std::__hash_value_type<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,std::hash<md::PolylineOverlayBatchKey>,std::equal_to<md::PolylineOverlayBatchKey>,true>,std::__unordered_map_equal<md::PolylineOverlayBatchKey,std::__hash_value_type<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::PolylineOverlayBatchKey>,std::hash<md::PolylineOverlayBatchKey>,true>,std::allocator<std::__hash_value_type<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>>>::__emplace_unique_key_args<md::PolylineOverlayBatchKey,std::piecewise_construct_t const&,std::tuple<md::PolylineOverlayBatchKey const&>,std::tuple<>>(v58, v52, v63, &v69);
              std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>::push_back[abi:nn200100]((v53 + 6), &v64);
              v67 = *(v25 + 3);
              v68 = v67;
              if (v62)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v62);
              }

              std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>::~unique_ptr[abi:nn200100](&v64);
            }

            v18 = *(v25 + 3);
            v67 = v18;
            ++v24;
            v15 = v13[3];
            v23 += 2;
          }

          while (v24 < (v13[4] - v15) >> 4);
          v19 = v68;
          v12 = a3;
          v11 = a7;
          v14 = a10;
        }

        if (v18 > v19)
        {
          md::PolygonOverlayMeshBuilder::addStrokeRibbonBatches(md::PolygonOverlayMeshBuilder::MeshInfo const&,std::unordered_map<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>> &,std::shared_ptr<md::PolygonOverlayRenderable::Style> const&,md::Ribbons::StandardModeRibbon::JoinStyle const&,float,geo::Unit<geo::RadianUnitDescription,float>)::$_0::operator()(v70);
        }

        if (v66)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v66);
        }
      }

      v13 += 11;
    }

    while (v13 != v12);
  }

  *a1 = 0;
  operator new();
}

void sub_1B2FB68C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  *v16 = 0;
  std::__hash_table<std::__hash_value_type<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::PolylineOverlayBatchKey,std::__hash_value_type<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,std::hash<md::PolylineOverlayBatchKey>,std::equal_to<md::PolylineOverlayBatchKey>,true>,std::__unordered_map_equal<md::PolylineOverlayBatchKey,std::__hash_value_type<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::PolylineOverlayBatchKey>,std::hash<md::PolylineOverlayBatchKey>,true>,std::allocator<std::__hash_value_type<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void md::PolygonOverlayMeshBuilder::buildVectorOverlayMesh(uint64_t *a1, uint64_t **a2, uint64_t *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      if (geo::effectiveVertexCount<float>(v4))
      {
        v7 += (v4[1] - *v4) >> 3;
        v6 += geo::triangulatedIndexCount<float>(v4);
      }

      v4 += 11;
    }

    while (v4 != v5);
    v8 = v6;
    v9 = v7;
    if (v7 && v6)
    {
      operator new();
    }
  }

  *a1 = 0;
}

void sub_1B2FB6CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a11);
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  _Unwind_Resume(a1);
}

uint64_t geo::effectiveVertexCount<float>(uint64_t *a1)
{
  v7[4] = *MEMORY[0x1E69E9840];
  v7[0] = &unk_1F2A3AD58;
  v7[1] = a1;
  v7[3] = v7;
  v2 = *a1;
  v1 = a1[1];
  std::__function::__value_func<gm::Matrix<float,2,1> ()(unsigned long)>::__value_func[abi:nn200100](v6, v7);
  geo::effectiveVertexCount<float>((v1 - v2) >> 3, v6);
  v4 = v3;
  std::__function::__value_func<gm::Matrix<float,2,1> ()(unsigned long)>::~__value_func[abi:nn200100](v6);
  std::__function::__value_func<gm::Matrix<float,2,1> ()(unsigned long)>::~__value_func[abi:nn200100](v7);
  return v4;
}

void sub_1B2FB6DBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  std::__function::__value_func<gm::Matrix<float,2,1> ()(unsigned long)>::~__value_func[abi:nn200100](va);
  std::__function::__value_func<gm::Matrix<float,2,1> ()(unsigned long)>::~__value_func[abi:nn200100](va1);
  _Unwind_Resume(a1);
}

uint64_t geo::triangulatedIndexCount<float>(uint64_t *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v8[0] = &unk_1F2A1E450;
  v8[1] = a1;
  v8[3] = v8;
  v2 = *a1;
  v1 = a1[1];
  std::__function::__value_func<gm::Matrix<float,2,1> ()(unsigned long)>::__value_func[abi:nn200100](v7, v8);
  v3 = (v1 - v2) >> 3;
  if (v3 >= 3)
  {
    std::__function::__value_func<gm::Matrix<float,2,1> ()(unsigned long)>::__value_func[abi:nn200100](v9, v7);
    geo::effectiveVertexCount<float>(v3, v9);
    v4 = 3 * v5 - 6;
    std::__function::__value_func<gm::Matrix<float,2,1> ()(unsigned long)>::~__value_func[abi:nn200100](v9);
  }

  else
  {
    v4 = 0;
  }

  std::__function::__value_func<gm::Matrix<float,2,1> ()(unsigned long)>::~__value_func[abi:nn200100](v7);
  std::__function::__value_func<gm::Matrix<float,2,1> ()(unsigned long)>::~__value_func[abi:nn200100](v8);
  return v4;
}

void sub_1B2FB6EB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  std::__function::__value_func<gm::Matrix<float,2,1> ()(unsigned long)>::~__value_func[abi:nn200100](v3 - 56);
  std::__function::__value_func<gm::Matrix<float,2,1> ()(unsigned long)>::~__value_func[abi:nn200100](va);
  std::__function::__value_func<gm::Matrix<float,2,1> ()(unsigned long)>::~__value_func[abi:nn200100](va1);
  _Unwind_Resume(a1);
}

void std::__function::__func<md::PolygonOverlayMeshBuilder::buildVectorOverlayMesh(std::vector<md::PolygonOverlayMeshBuilder::MeshInfo> const&,ggl::Loader &)::$_0,std::allocator<md::PolygonOverlayMeshBuilder::buildVectorOverlayMesh(std::vector<md::PolygonOverlayMeshBuilder::MeshInfo> const&,ggl::Loader &)::$_0>,void ()(ggl::ResourceAccessor *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  ggl::DataAccess<ggl::DaVinci::TexturedCompressedVbo>::DataAccess(v22, **(**(a1 + 16) + 64), 0, **(a1 + 24), 1, 1, *a2);
  ggl::DataAccess<ggl::DaVinci::TexturedCompressedVbo>::DataAccess(v20, *(**(a1 + 16) + 96), 0, **(a1 + 32), 1, 1, v3);
  v4 = *(a1 + 8);
  v5 = *v4;
  v6 = v4[1];
  if (*v4 != v6)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      if (!geo::effectiveVertexCount<float>(v5))
      {
        goto LABEL_25;
      }

      if (!geo::effectiveVertexCount<float>(v5))
      {
        goto LABEL_25;
      }

      v9 = geo::triangulatedIndexCount<float>(v5);
      if (!v9)
      {
        goto LABEL_25;
      }

      v10 = v5[1] - *v5;
      if (v10)
      {
        v11 = v10 >> 3;
        if (v11 <= 1)
        {
          v11 = 1;
        }

        v12 = (v23 + 8 * v7 + 4);
        v13 = (*v5 + 4);
        do
        {
          v14 = (*v13 * 16803.0);
          *(v12 - 2) = (*(v13 - 1) * 16803.0);
          *(v12 - 1) = v14;
          *v12 = 0;
          v12 += 2;
          v13 += 2;
          --v11;
        }

        while (v11);
      }

      v24.i64[1] = 0;
      v25 = 0;
      v24.i64[0] = &v24.i64[1];
      v26 = xmmword_1B33B1630;
      v31 = 0;
      v28 = 0;
      v29 = 0;
      v27 = 0;
      v30 = 0;
      v32 = 4;
      v34 = 0;
      v35 = 0;
      __p = 0;
      md::Triangulator<float>::triangulate(&v24, v5);
      v15 = __p;
      v16 = v34 - __p;
      if (v9 == (v34 - __p) >> 1)
      {
        if (v34 != __p)
        {
          v17 = 0;
          v18 = v21 + 2 * v8;
          do
          {
            *(v18 + 2 * v17) = v15[v17] + v7;
            ++v17;
          }

          while (v9 != v17);
LABEL_22:
          v34 = v15;
          operator delete(v15);
          goto LABEL_23;
        }
      }

      else
      {
        if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
        {
          dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
        }

        v19 = GEOGetVectorKitVKDefaultLog_log;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          v37 = v9;
          v38 = 2048;
          v39 = (v34 - __p) >> 1;
          _os_log_impl(&dword_1B2754000, v19, OS_LOG_TYPE_ERROR, "Mismatching number of indices, indexCount: %zu, triangulatedIndexCount: %zu", buf, 0x16u);
        }

        bzero((v21 + 2 * v8), 2 * v9);
        v15 = __p;
      }

      if (v15)
      {
        goto LABEL_22;
      }

LABEL_23:
      geo::Pool<geo::Triangulator<float,unsigned short>::Node>::~Pool(&v24);
      if (v9 != v16 >> 1)
      {
        **(a1 + 40) = 1;
        break;
      }

      v8 += v9;
      v7 += (v5[1] - *v5) >> 3;
LABEL_25:
      v5 += 11;
    }

    while (v5 != v6);
  }

  ggl::BufferMemory::~BufferMemory(v20);
  ggl::BufferMemory::~BufferMemory(v22);
}

void md::Triangulator<float>::triangulate(float32x4_t *a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = (*(a2 + 8) - v3) >> 3;
  a1[4].i64[1] = 0;
  if ((geo::Triangulator<float,unsigned short>::_triangulatePolygon(a1, v3, v4, &a1[5].i64[1]) & 1) == 0)
  {
    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v5 = GEOGetVectorKitVKDefaultLog_log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      md::Triangulator<float>::_describePoints(__p, *a2, (*(a2 + 8) - *a2) >> 3);
      if (v8 >= 0)
      {
        v6 = __p;
      }

      else
      {
        v6 = __p[0];
      }

      *buf = 136315138;
      v10 = v6;
      _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_ERROR, "Triangulator failed to fully triangulate polygon: %s", buf, 0xCu);
      if (v8 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

uint64_t geo::Pool<geo::Triangulator<float,unsigned short>::Node>::~Pool(uint64_t a1)
{
  v25 = 0;
  v26 = 0;
  v24 = &v25;
  v3 = (a1 + 40);
  v2 = *(a1 + 40);
  if (v2)
  {
    do
    {
      std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::__emplace_unique_key_args<geo::Pool<gdc::FallbackNode>::Element *,geo::Pool<gdc::FallbackNode>::Element * const&>(&v24, v2, v3);
      v2 = **v3;
      *v3 = v2;
    }

    while (v2);
    v4 = v26;
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
    v9 = v25;
    v10 = *a1;
    do
    {
      if (v5)
      {
        v11 = 0;
        v12 = v10[4];
        do
        {
          v13 = v12 + 56 * v11;
          if (!v9)
          {
            goto LABEL_21;
          }

          v14 = &v25;
          v15 = v9;
          do
          {
            v16 = v15;
            v17 = v14;
            v18 = v15[4];
            if (v18 >= v13)
            {
              v14 = v15;
            }

            v15 = v15[v18 < v13];
          }

          while (v15);
          if (v14 == &v25)
          {
            goto LABEL_21;
          }

          if (v18 < v13)
          {
            v16 = v17;
          }

          if (v13 < v16[4])
          {
LABEL_21:
            *(v13 + 52) = -1;
          }

          ++v11;
        }

        while (v11 != v5);
      }

      v19 = v10[1];
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
          v20 = v10[2];
          v8 = *v20 == v10;
          v10 = v20;
        }

        while (!v8);
      }

      v10 = v20;
    }

    while (v20 != v7);
  }

  if (v6 != v7)
  {
    do
    {
      free(v6[4]);
      v21 = v6[1];
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
          v22 = v6[2];
          v8 = *v22 == v6;
          v6 = v22;
        }

        while (!v8);
      }

      v6 = v22;
    }

    while (v22 != v7);
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 8));
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = v7;
  *(a1 + 40) = 0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v25);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 8));
  return a1;
}

void sub_1B2FB7538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(a11);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v11 + 8));
  _Unwind_Resume(a1);
}

uint64_t geo::Triangulator<float,unsigned short>::_triangulatePolygon(float32x4_t *a1, uint64_t *a2, unint64_t a3, void *a4)
{
  a4[1] = *a4;
  if (a3 < 3)
  {
    return 0;
  }

  geo::Triangulator<float,unsigned short>::initializeHasherFromVertices(a1, a2, a3);
  LinkedList = geo::Triangulator<float,unsigned short>::createLinkedList(a1, a2, a3, 0, 1, v8, v9);
  if (!LinkedList)
  {
    return 0;
  }

  v11 = *(LinkedList + 24);
  geo::Triangulator<float,unsigned short>::linkListInHashSpace(v11, a1[4].f32[0]);

  return geo::Triangulator<float,unsigned short>::earclipPolygon(a1, v11, a4, v12, v13, v14, v15, v16, v17);
}

_BYTE *md::Triangulator<float>::_describePoints(_BYTE *result, float *a2, uint64_t a3)
{
  v3 = result;
  if (!a3)
  {
    result[23] = 0;
    *result = 0;
    return result;
  }

  std::ostringstream::basic_ostringstream[abi:nn200100](&v15);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v15, "(", 1);
  v6 = std::ostream::operator<<();
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v6, ", ", 2);
  v7 = std::ostream::operator<<();
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v7, ")", 1);
  v8 = a3 - 1;
  if (a3 != 1)
  {
    v9 = a2 + 3;
    do
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v15, ", (", 3);
      v10 = std::ostream::operator<<();
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v10, ", ", 2);
      v11 = std::ostream::operator<<();
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v11, ")", 1);
      v9 += 2;
      --v8;
    }

    while (v8);
  }

  if ((v22 & 0x10) != 0)
  {
    v13 = v21;
    if (v21 < v18)
    {
      v21 = v18;
      v13 = v18;
    }

    locale = v17[4].__locale_;
    goto LABEL_13;
  }

  if ((v22 & 8) != 0)
  {
    locale = v17[1].__locale_;
    v13 = v17[3].__locale_;
LABEL_13:
    v12 = v13 - locale;
    if ((v13 - locale) >= 0x7FFFFFFFFFFFFFF8)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    if (v12 >= 0x17)
    {
      operator new();
    }

    v3[23] = v12;
    if (v12)
    {
      memmove(v3, locale, v12);
    }

    goto LABEL_19;
  }

  v12 = 0;
  v3[23] = 0;
LABEL_19:
  v3[v12] = 0;
  v15 = *MEMORY[0x1E69E54E8];
  *(&v15 + *(v15 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v16 = MEMORY[0x1E69E5548] + 16;
  if (v20 < 0)
  {
    operator delete(__p);
  }

  v16 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v17);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v23);
}

void sub_1B2FB78BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27)
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

float32x4_t *geo::Triangulator<float,unsigned short>::initializeHasherFromVertices(float32x4_t *result, uint64_t *a2, unint64_t a3)
{
  v3 = result;
  v4 = result[5].i32[0];
  if ((v4 & 4) != 0)
  {
    if (!a3)
    {
      v5 = xmmword_1B33B0730;
      goto LABEL_10;
    }
  }

  else if (a3 < 0x33 || (v4 & 2) == 0)
  {
    return result;
  }

  v5 = xmmword_1B33B0730;
  do
  {
    v6 = *a2++;
    v7.i64[0] = v6;
    v7.i64[1] = v6;
    v8.i32[0] = vmovn_s32(vcgtq_f32(v5, v7)).u32[0];
    v8.i32[1] = vmovn_s32(vcgtq_f32(v7, v5)).i32[1];
    v5 = vbslq_s8(vmovl_s16(v8), v7, v5);
    --a3;
  }

  while (a3);
LABEL_10:
  result[3] = v5;
  v9 = vsub_f32(*&vextq_s8(v5, v5, 8uLL), *v5.f32);
  v10 = vmovn_s64(vcgtq_f64(vdupq_n_s64(0x41EFFFFFFFE00000uLL), vcvtq_f64_f32(v9)));
  if (v10.i32[0] & v10.i32[1])
  {
    v11 = fmaxf(v9.f32[0], v9.f32[1]);
  }

  else
  {
    result = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "Cannot properly hash this geometry. Its space is too large.\n", 60);
    v11 = 0.0;
  }

  v3[4].f32[0] = v11;
  return result;
}

uint64_t geo::Triangulator<float,unsigned short>::createLinkedList(float32x2_t *a1, float32x2_t *a2, uint64_t a3, char a4, int a5, __n128 a6, __n128 a7)
{
  if (!a3)
  {
    return 0;
  }

  v8 = a3;
  v9 = a2;
  v11 = &a2[a3];
  v13 = v11[-1].f32[0];
  LODWORD(v12) = v11[-1].i32[1];
  v14 = a2 + 1;
  v15 = 0.0;
  v16 = a3;
  do
  {
    v17 = *(v14 - 1);
    v18 = *v14;
    v12 = ((*&v12 + *v14) * (v13 - v17));
    v15 = v15 + v12;
    v14 += 2;
    *&v12 = v18;
    v13 = v17;
    --v16;
  }

  while (v16);
  v19 = 0;
  if (a5 != 2)
  {
    a4 = 0;
  }

  v21 = a1[9];
  v22 = vdup_n_s32(0x477FFF00u);
  v23 = 0uLL;
  do
  {
    v24 = a1[5];
    if (!v24)
    {
      geo::Pool<geo::Triangulator<float,unsigned short>::Node>::allocateSlab(a1);
      v23 = 0uLL;
      v24 = a1[5];
    }

    a1[5] = *v24;
    *v24 = v21;
    *(v24 + 4) = *v9;
    *(v24 + 16) = v23;
    *(v24 + 32) = v23;
    *(v24 + 45) = 0;
    if (v19)
    {
      v25 = (v19 + 24);
      v26 = *(v19 + 24);
      *(v24 + 16) = v19;
      *(v24 + 24) = v26;
      *(v26 + 16) = v24;
    }

    else
    {
      *(v24 + 16) = v24;
      v25 = (v24 + 24);
    }

    *v25 = v24;
    *(v24 + 52) = a4;
    LODWORD(v12) = a1[8].i32[0];
    if (*&v12 != 0.0)
    {
      v27 = vrev64_s32(vcvt_u32_f32(vdiv_f32(vmul_f32(vsub_f32(*v9, a1[6]), v22), vdup_lane_s32(*&v12, 0))));
      v28 = *&vorr_s8(vshl_n_s32(v27, 8uLL), v27) & 0xFF00FF00FF00FFLL;
      v29 = *&vorr_s8(vshl_n_s32(v28, 4uLL), v28) & 0xFF0FFF0FFF0FFF0FLL;
      v30 = vand_s8(vorr_s8(vshl_n_s32(v29, 2uLL), v29), 0x3333333333333333);
      v31 = vshl_u32(v30, 0x100000002);
      v30.i32[0] *= 2;
      v32 = vand_s8(vorr_s8(v31, v30), 0x55555555AAAAAAAALL);
      v12 = COERCE_DOUBLE(vorr_s8(v32, vdup_lane_s32(v32, 1)));
      *(v24 + 48) = LODWORD(v12);
    }

    v21 = *&a1[9] + 1;
    a1[9] = v21;
    ++v9;
    v19 = v24;
    --v8;
  }

  while (v8);
  if (*(v24 + 4) == *(*(v24 + 24) + 4))
  {
    v33 = *(v24 + 16);
    geo::Triangulator<float,unsigned short>::removeNode(a1, v24);
    v24 = v33;
  }

  if (a5 != 1 && v15 > 0.0 || a5 != 2 && v15 < 0.0)
  {
    v34 = v24;
    do
    {
      v36 = *(v34 + 16);
      v35 = *(v34 + 24);
      *(v34 + 16) = v35;
      *(v34 + 24) = v36;
      v34 = v35;
    }

    while (v35 != v24);
  }

  return v24;
}

void *geo::Triangulator<float,unsigned short>::linkListInHashSpace(void *result, float a2)
{
  if (a2 != 0.0)
  {
    if (!result)
    {
      v17 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "Called linkListInHashSpace with a NULL head.", 44);
      std::ios_base::getloc((v17 + *(*v17 - 24)));
      v18 = std::locale::use_facet(&v19, MEMORY[0x1E69E5318]);
      (v18->__vftable[2].~facet_0)(v18, 10);
      std::locale::~locale(&v19);
      std::ostream::put();
      return std::ostream::flush();
    }

    v2 = result;
    do
    {
      v3 = v2;
      v4 = v2[2];
      v2 = v2[3];
      v3[4] = v4;
      v3[5] = v2;
    }

    while (v2 != result);
    *(v2[4] + 40) = 0;
    v2[4] = 0;
    v5 = 1;
    do
    {
      v6 = 0;
      v7 = 0;
      v8 = v2;
      do
      {
        v9 = 0;
        v10 = v8;
        if (v5)
        {
          do
          {
            ++v9;
            v10 = *(v10 + 40);
            if (!v10)
            {
              goto LABEL_11;
            }
          }

          while (v5 != v9);
          v9 = v5;
        }

LABEL_11:
        ++v6;
        v11 = v5;
        while (1)
        {
          v12 = !v11 || v10 == 0;
          v13 = !v12;
          if (!v9)
          {
            break;
          }

          if (!v13 || *(v8 + 48) <= *(v10 + 48))
          {
            v14 = *(v8 + 40);
            --v9;
            v15 = v10;
            result = v8;
            goto LABEL_25;
          }

LABEL_24:
          v15 = *(v10 + 40);
          --v11;
          v14 = v8;
          result = v10;
LABEL_25:
          v16 = result;
          if (v7)
          {
            *(v7 + 40) = result;
            v16 = v2;
          }

          result[4] = v7;
          v2 = v16;
          v8 = v14;
          v10 = v15;
          v7 = result;
        }

        if (v13)
        {
          v9 = 0;
          goto LABEL_24;
        }

        v8 = v10;
      }

      while (v10);
      *(v7 + 40) = 0;
      v5 *= 2;
    }

    while (v6 > 1);
  }

  return result;
}

uint64_t geo::Triangulator<float,unsigned short>::earclipPolygon(float32x2_t *a1, unsigned __int16 *a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, float64x2_t a9)
{
  if (a2)
  {
    v9 = a2;
    v10 = *(a2 + 2);
    v11 = *(a2 + 3);
    if (v10 == v11)
    {
      return 1;
    }

    v14 = vdup_n_s32(0x477FFF00u);
    __asm { FMOV            V9.2S, #1.0 }

LABEL_4:
    v19 = *(v9 + 2);
    v20 = v9;
    while (1)
    {
      v21 = v10;
      v23 = *(v10 + 4);
      v22 = (v10 + 4);
      v24 = v23;
      v25 = v11;
      v27 = *(v11 + 2);
      v26 = (v11 + 2);
      v28 = v27;
      v29 = vmul_f32(vsub_f32(v27, v19), vrev64_s32(vsub_f32(v19, v24)));
      if ((vcgt_f32(v29, vdup_lane_s32(v29, 1)).u8[0] & 1) == 0)
      {
        LODWORD(a9.f64[0]) = a1[8].i32[0];
        if (*a9.f64 != 0.0)
        {
          v30 = *&v24.i32[1];
          v31 = vcgt_f32(v19, v24).u8[0];
          if (v31)
          {
            v32 = -1;
          }

          else
          {
            v32 = 0;
          }

          v33 = vbsl_s8(vdup_n_s32(v32), v24, v19);
          if (v31)
          {
            v34 = v21;
          }

          else
          {
            v34 = v20;
          }

          if (vcgt_f32(v28, v33).u8[0])
          {
            v35 = v34;
          }

          else
          {
            v35 = v25;
          }

          v36 = (v21 + 4);
          v37 = v20 + 4;
          v38 = (v25 + 4);
          if (v30 >= *&v19.i32[1])
          {
            v39 = (v20 + 4);
            if (*&v19.i32[1] >= v28.f32[1])
            {
              goto LABEL_34;
            }
          }

          else
          {
            v39 = (v21 + 4);
            if (v30 < v28.f32[1])
            {
              goto LABEL_35;
            }

LABEL_34:
            v39 = (v25 + 4);
          }

LABEL_35:
          v56.i32[0] = *(v35 + 1);
          v57 = *v39;
          v58 = v22->f32[0];
          if (*v19.i32 <= v26->f32[0])
          {
            v59 = v26;
          }

          else
          {
            v59 = (v20 + 2);
          }

          if (v58 <= v26->f32[0])
          {
            v60 = v26;
          }

          else
          {
            v60 = v22;
          }

          if (v58 > *v19.i32)
          {
            v59 = v60;
          }

          v61 = *v36;
          if (*&v19.i32[1] <= *v38)
          {
            v37 = v25 + 4;
          }

          if (v61 <= *v38)
          {
            v36 = (v25 + 4);
          }

          if (v61 > *&v19.i32[1])
          {
            v62 = v36;
          }

          else
          {
            v62 = v37;
          }

          v63 = a1[6];
          *&a9.f64[0] = vmul_f32(v14, vdiv_f32(_D9, vdup_lane_s32(*&a9.f64[0], 0)));
          v64 = *(v20 + 5);
          if (v64)
          {
            v65.i32[0] = *v59;
            v65.i32[1] = *v62;
            v66 = vrev64_s32(vcvt_u32_f32(vmul_f32(vsub_f32(v65, v63), *&a9.f64[0])));
            v67 = *&vorr_s8(vshl_n_s32(v66, 8uLL), v66) & 0xFF00FF00FF00FFLL;
            v68 = *&vorr_s8(vshl_n_s32(v67, 4uLL), v67) & 0xFF0FFF0FFF0FFF0FLL;
            v69 = vand_s8(vorr_s8(vshl_n_s32(v68, 2uLL), v68), 0x3333333333333333);
            v70 = vshl_u32(v69, 0x100000002);
            v69.i32[0] *= 2;
            v71 = vand_s8(vorr_s8(v70, v69), 0x55555555AAAAAAAALL);
            v72 = vorr_s8(v71, vdup_lane_s32(v71, 1)).u32[0];
            v73 = vcvtq_f64_f32(v19);
            while (*(v64 + 12) <= v72)
            {
              if (v64 != v21 && v64 != v25)
              {
                v74 = *v64;
                if (*v21 != v74 && *v20 != v74 && *v25 != v74)
                {
                  v75 = *(v64 + 2);
                  v76 = vmul_f32(vsub_f32(*(*(v64 + 3) + 4), v75), vrev64_s32(vsub_f32(v75, *(*(v64 + 2) + 4))));
                  if ((vcgt_f32(vdup_lane_s32(v76, 1), v76).u8[0] & 1) == 0)
                  {
                    v77 = vcvtq_f64_f32(*v22);
                    v78 = vcvtq_f64_f32(v75);
                    v79 = vsubq_f64(v78, v77);
                    v80 = vmulq_f64(vextq_s8(v79, v79, 8uLL), vsubq_f64(v73, v77));
                    if ((vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v80, 1), v80)).u8[0] & 1) == 0)
                    {
                      v28 = *v26;
                      v81 = vcvtq_f64_f32(*v26);
                      v82 = vsubq_f64(v78, v73);
                      v83 = vmulq_f64(vsubq_f64(v81, v73), vextq_s8(v82, v82, 8uLL));
                      if ((vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v83, 1), v83)).u8[0] & 1) == 0)
                      {
                        v84 = vsubq_f64(v78, v81);
                        v85 = vmulq_f64(vsubq_f64(v77, v81), vextq_s8(v84, v84, 8uLL));
                        if (vmovn_s64(vcgeq_f64(v85, vdupq_laneq_s64(v85, 1))).u8[0])
                        {
                          goto LABEL_6;
                        }
                      }
                    }
                  }
                }
              }

              v64 = *(v64 + 5);
              if (!v64)
              {
                break;
              }
            }
          }

          v86 = *(v20 + 4);
          if (v86)
          {
            v56.i32[1] = v57;
            v87 = vrev64_s32(vcvt_u32_f32(vmul_f32(vsub_f32(v56, v63), *&a9.f64[0])));
            v88 = *&vorr_s8(vshl_n_s32(v87, 8uLL), v87) & 0xFF00FF00FF00FFLL;
            v89 = *&vorr_s8(vshl_n_s32(v88, 4uLL), v88) & 0xFF0FFF0FFF0FFF0FLL;
            v90 = vand_s8(vorr_s8(vshl_n_s32(v89, 2uLL), v89), 0x3333333333333333);
            v91 = vshl_u32(v90, 0x100000002);
            v90.i32[0] *= 2;
            v92 = vand_s8(vorr_s8(v91, v90), 0x55555555AAAAAAAALL);
            v93 = vorr_s8(v92, vdup_lane_s32(v92, 1)).u32[0];
            v94 = vcvtq_f64_f32(v19);
            while (*(v86 + 12) >= v93)
            {
              if (v86 != v21 && v86 != v25)
              {
                v95 = *v86;
                if (*v21 != v95 && *v20 != v95 && *v25 != v95)
                {
                  v96 = *(v86 + 2);
                  v97 = vmul_f32(vsub_f32(*(*(v86 + 3) + 4), v96), vrev64_s32(vsub_f32(v96, *(*(v86 + 2) + 4))));
                  if ((vcgt_f32(vdup_lane_s32(v97, 1), v97).u8[0] & 1) == 0)
                  {
                    v98 = vcvtq_f64_f32(*v22);
                    v99 = vcvtq_f64_f32(v96);
                    v100 = vsubq_f64(v99, v98);
                    v101 = vmulq_f64(vextq_s8(v100, v100, 8uLL), vsubq_f64(v94, v98));
                    if ((vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v101, 1), v101)).u8[0] & 1) == 0)
                    {
                      v28 = *v26;
                      v102 = vcvtq_f64_f32(*v26);
                      v103 = vsubq_f64(v99, v94);
                      a9 = vmulq_f64(vsubq_f64(v102, v94), vextq_s8(v103, v103, 8uLL));
                      *&a9.f64[0] = vmovn_s64(vcgtq_f64(vdupq_laneq_s64(a9, 1), a9));
                      if ((LOBYTE(a9.f64[0]) & 1) == 0)
                      {
                        v104 = vsubq_f64(v99, v102);
                        v105 = vmulq_f64(vsubq_f64(v98, v102), vextq_s8(v104, v104, 8uLL));
                        if (vmovn_s64(vcgeq_f64(v105, vdupq_laneq_s64(v105, 1))).u8[0])
                        {
                          goto LABEL_6;
                        }
                      }
                    }
                  }
                }
              }

              v86 = *(v86 + 4);
              if (!v86)
              {
                break;
              }
            }
          }

LABEL_76:
          std::vector<unsigned short>::push_back[abi:nn200100](a3, v21);
          std::vector<unsigned short>::push_back[abi:nn200100](a3, v20);
          std::vector<unsigned short>::push_back[abi:nn200100](a3, v25);
          geo::Triangulator<float,unsigned short>::removeNode(a1, v20);
          v9 = *(v25 + 3);
          if (v9)
          {
            v10 = *(v9 + 2);
            v11 = *(v9 + 3);
            if (v10 != v11)
            {
              goto LABEL_4;
            }
          }

LABEL_78:
          if (v21)
          {
            geo::Triangulator<float,unsigned short>::removeNode(a1, v21);
          }

          geo::Triangulator<float,unsigned short>::removeNode(a1, v25);
          return 1;
        }

        v40 = *(v25 + 3);
        if (v40 == v21)
        {
          goto LABEL_76;
        }

        v41 = vcvtq_f64_f32(v19);
        v42 = vcvtq_f64_f32(v24);
        v43 = vsubq_f64(v41, v42);
        v44 = vcvtq_f64_f32(v28);
        a9 = vsubq_f64(v44, v41);
        v45 = vsubq_f64(v42, v44);
        while (1)
        {
          v46 = *v40;
          if (*v21 != v46 && *v20 != v46 && *v25 != v46)
          {
            v47 = *(v40 + 2);
            v48 = vmul_f32(vrev64_s32(vsub_f32(*(*(v40 + 3) + 4), v47)), vsub_f32(v47, *(*(v40 + 2) + 4)));
            if ((vcgt_f32(v48, vdup_lane_s32(v48, 1)).u8[0] & 1) == 0)
            {
              v49 = vcvtq_f64_f32(v47);
              v50 = vsubq_f64(v49, v42);
              v51 = vmulq_f64(vextq_s8(v50, v50, 8uLL), v43);
              if ((vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v51, 1), v51)).u8[0] & 1) == 0)
              {
                v52 = vsubq_f64(v49, v41);
                v53 = vmulq_f64(a9, vextq_s8(v52, v52, 8uLL));
                if ((vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v53, 1), v53)).u8[0] & 1) == 0)
                {
                  v54 = vsubq_f64(v49, v44);
                  v55 = vmulq_f64(v45, vextq_s8(v54, v54, 8uLL));
                  if (vmovn_s64(vcgeq_f64(v55, vdupq_laneq_s64(v55, 1))).u8[0])
                  {
                    break;
                  }
                }
              }
            }
          }

          v40 = *(v40 + 3);
          if (v40 == v21)
          {
            goto LABEL_76;
          }
        }
      }

LABEL_6:
      if (v25 == v9)
      {
        break;
      }

      v10 = *(v25 + 2);
      v11 = *(v25 + 3);
      v19 = v28;
      v20 = v25;
      if (v10 == v11)
      {
        goto LABEL_78;
      }
    }

    v109 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "Wrapped around the polygon without finishing... :-(", 51);
    std::ios_base::getloc((v109 + *(*v109 - 24)));
    v110 = std::locale::use_facet(&__p, MEMORY[0x1E69E5318]);
    (v110->__vftable[2].~facet_0)(v110, 10);
    std::locale::~locale(&__p);
    std::ostream::put();
    std::ostream::flush();
    v111 = 0;
    v112 = v25;
    do
    {
      ++v111;
      v112 = *(v112 + 3);
    }

    while (v112 != v9 && v112 != 0);
    v114 = MEMORY[0x1E69E5310];
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], "List has ", 9);
    std::to_string(&__p, v111);
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

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v114, p_p, size);
    v117 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], " nodes:", 7);
    std::ios_base::getloc((v117 + *(*v117 - 24)));
    v118 = std::locale::use_facet(&v127, MEMORY[0x1E69E5318]);
    (v118->__vftable[2].~facet_0)(v118, 10);
    std::locale::~locale(&v127);
    std::ostream::put();
    std::ostream::flush();
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], "\t", 1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v119 = MEMORY[0x1E69E5310];
    v120 = v25;
    do
    {
      std::to_string(&__p, *v120);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v121 = &__p;
      }

      else
      {
        v121 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v122 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v122 = __p.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v119, v121, v122);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v119, " ", 1);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v120 = *(v120 + 3);
    }

    while (v120 != v9 && v120);
    std::ios_base::getloc((v119 + *(*v119 - 24)));
    v123 = std::locale::use_facet(&__p, MEMORY[0x1E69E5318]);
    (v123->__vftable[2].~facet_0)(v123, 10);
    std::locale::~locale(&__p);
    std::ostream::put();
    std::ostream::flush();
    v124 = *(v25 + 2);
    if (v124)
    {
      do
      {
        v125 = v25;
        v25 = *(v25 + 3);
        geo::Triangulator<float,unsigned short>::removeNode(a1, v125);
      }

      while (v25 != v124);
      geo::Triangulator<float,unsigned short>::removeNode(a1, v25);
    }
  }

  else
  {
    v107 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "Called earclipPolygon with a NULL head. Probably wrong to do so.", 64);
    std::ios_base::getloc((v107 + *(*v107 - 24)));
    v108 = std::locale::use_facet(&__p, MEMORY[0x1E69E5318]);
    (v108->__vftable[2].~facet_0)(v108, 10);
    std::locale::~locale(&__p);
    std::ostream::put();
    std::ostream::flush();
  }

  return 0;
}

uint64_t geo::Triangulator<float,unsigned short>::removeNode(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 16);
    v2 = *(a2 + 24);
    if (v2)
    {
      *(v2 + 16) = v3;
    }

    if (v3)
    {
      *(v3 + 24) = v2;
    }

    v4 = *(a2 + 32);
    v5 = *(a2 + 40);
    if (v4)
    {
      *(v4 + 40) = v5;
    }

    if (v5)
    {
      *(v5 + 32) = v4;
    }

    if (*(result + 16))
    {
      *(a2 + 52) = -1;
      *a2 = *(result + 40);
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t *geo::Pool<geo::Triangulator<float,unsigned short>::Node>::allocateSlab(uint64_t *a1)
{
  v2 = malloc_type_malloc(56 * a1[3], 0x1022040AC22688FuLL);
  v7 = v2;
  result = std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::__emplace_unique_key_args<geo::Pool<gdc::FallbackNode>::Element *,geo::Pool<gdc::FallbackNode>::Element * const&>(a1, v2, &v7);
  v4 = a1[5];
  v5 = &v2[7 * a1[3] - 7];
  if (v5 >= v2)
  {
    do
    {
      v6 = v5;
      *v5 = v4;
      v5 -= 7;
      v4 = v6;
    }

    while (v5 >= v2);
    v4 = (v5 + 7);
  }

  a1[5] = v4;
  return result;
}

__n128 std::__function::__func<md::PolygonOverlayMeshBuilder::buildVectorOverlayMesh(std::vector<md::PolygonOverlayMeshBuilder::MeshInfo> const&,ggl::Loader &)::$_0,std::allocator<md::PolygonOverlayMeshBuilder::buildVectorOverlayMesh(std::vector<md::PolygonOverlayMeshBuilder::MeshInfo> const&,ggl::Loader &)::$_0>,void ()(ggl::ResourceAccessor *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A1E4E0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__shared_ptr_emplace<ggl::DaVinci::TexturedCompressedMesh>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3AA68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::DaVinci::TexturedCompressedVbo>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3A8C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__value_func<gm::Matrix<float,2,1> ()(unsigned long)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<gm::Matrix<float,2,1> ()(unsigned long)>::~__value_func[abi:nn200100](uint64_t a1)
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

float geo::effectiveVertexCount<float>(unint64_t a1, uint64_t a2)
{
  if (a1 >= 3)
  {
    v10 = 0;
    v4 = *(a2 + 24);
    if (v4 && ((*(*v4 + 48))(v4, &v10), v10 = a1 - 1, (v5 = *(a2 + 24)) != 0))
    {
      result = (*(*v5 + 48))(v5, &v10);
      v10 = __PAIR64__(v7, LODWORD(result));
    }

    else
    {
      v8 = std::__throw_bad_function_call[abi:nn200100]();
      return std::__function::__func<unsigned long geo::triangulatedIndexCount<float>(std::vector<gm::Matrix<float,2,1>> const&)::{lambda(unsigned long)#1},std::allocator<unsigned long geo::triangulatedIndexCount<float>(std::vector<gm::Matrix<float,2,1>> const&)::{lambda(unsigned long)#1}>,gm::Matrix<float,2,1> ()(unsigned long)>::operator()(v8, v9);
    }
  }

  return result;
}

uint64_t std::__function::__func<unsigned long geo::triangulatedIndexCount<float>(std::vector<gm::Matrix<float,2,1>> const&)::{lambda(unsigned long)#1},std::allocator<unsigned long geo::triangulatedIndexCount<float>(std::vector<gm::Matrix<float,2,1>> const&)::{lambda(unsigned long)#1}>,gm::Matrix<float,2,1> ()(unsigned long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A1E450;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<unsigned long geo::effectiveVertexCount<float>(std::vector<gm::Matrix<float,2,1>> const&)::{lambda(unsigned long)#1},std::allocator<unsigned long geo::effectiveVertexCount<float>(std::vector<gm::Matrix<float,2,1>> const&)::{lambda(unsigned long)#1}>,gm::Matrix<float,2,1> ()(unsigned long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A3AD58;
  a2[1] = v2;
  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::PolylineOverlayBatchKey,std::__hash_value_type<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,std::hash<md::PolylineOverlayBatchKey>,std::equal_to<md::PolylineOverlayBatchKey>,true>,std::__unordered_map_equal<md::PolylineOverlayBatchKey,std::__hash_value_type<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::PolylineOverlayBatchKey>,std::hash<md::PolylineOverlayBatchKey>,true>,std::allocator<std::__hash_value_type<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:nn200100]<std::pair<md::PolylineOverlayBatchKey const,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,0>((v2 + 2));
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

void std::__destroy_at[abi:nn200100]<std::pair<md::PolylineOverlayBatchKey const,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,0>(uint64_t a1)
{
  v3 = a1 + 32;
  std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(a1 + 16);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }
}

void sub_1B2FB902C(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  MEMORY[0x1B8C62190](v3, v1);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<md::PolygonOverlayMeshBuilder::buildStrokeRibbon(std::vector<md::PolygonOverlayMeshBuilder::MeshInfo> const&,ggl::Loader &,std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::View>>,std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>>,std::shared_ptr<md::PolygonOverlayRenderable::Style> const&,md::Ribbons::StandardModeRibbon::JoinStyle const&,float,geo::Unit<geo::RadianUnitDescription,float>)::$_0,std::allocator<md::PolygonOverlayMeshBuilder::buildStrokeRibbon(std::vector<md::PolygonOverlayMeshBuilder::MeshInfo> const&,ggl::Loader &,std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::View>>,std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>>,std::shared_ptr<md::PolygonOverlayRenderable::Style> const&,md::Ribbons::StandardModeRibbon::JoinStyle const&,float,geo::Unit<geo::RadianUnitDescription,float>)::$_0>,void ()(ggl::ResourceAccessor *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A1E5E8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t (****md::PolygonOverlayMeshBuilder::addStrokeRibbonBatches(md::PolygonOverlayMeshBuilder::MeshInfo const&,std::unordered_map<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>> &,std::shared_ptr<md::PolygonOverlayRenderable::Style> const&,md::Ribbons::StandardModeRibbon::JoinStyle const&,float,geo::Unit<geo::RadianUnitDescription,float>)::$_0::operator()(mdm::zone_mallocator *a1))(void)
{
  v2 = *(a1 + 5);
  v3 = mdm::zone_mallocator::instance(a1);
  v4 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::PolylineOverlayRibbon>(v3);
  v5 = *v2;
  v6 = *(a1 + 6);
  *(v4 + 49) = 0u;
  *(v4 + 40) = 0u;
  *(v4 + 24) = 0u;
  *(v4 + 8) = 0u;
  *(v4 + 10) = 0;
  *(v4 + 11) = 0;
  *(v4 + 9) = 0;
  *v4 = &unk_1F2A2D908;
  *(v4 + 13) = 0;
  *(v4 + 14) = 0;
  v4[120] = 0;
  v4[121] = v5;
  *(v4 + 124) = v6;
  v20 = v4;
  *(v4 + 48) = 0;
  v7 = **(a1 + 1);
  v8 = **(a1 + 2);
  if (v7 >= v8)
  {
    v9 = **(a1 + 2);
  }

  else
  {
    v9 = **(a1 + 1);
  }

  if (v7 <= v8)
  {
    v7 = **(a1 + 2);
  }

  *(v4 + 11) = v7 - v9 + 1;
  v10 = *(a1 + 4);
  *(v4 + 9) = **(a1 + 3) + 8 * v9;
  v19 = 0;
  v16 = 0;
  v12 = *v10;
  v11 = v10[1];
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = v12;
  v18 = v11;
  v13 = *a1;
  v21 = &v16;
  v14 = std::__hash_table<std::__hash_value_type<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::PolylineOverlayBatchKey,std::__hash_value_type<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,std::hash<md::PolylineOverlayBatchKey>,std::equal_to<md::PolylineOverlayBatchKey>,true>,std::__unordered_map_equal<md::PolylineOverlayBatchKey,std::__hash_value_type<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::PolylineOverlayBatchKey>,std::hash<md::PolylineOverlayBatchKey>,true>,std::allocator<std::__hash_value_type<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>>>::__emplace_unique_key_args<md::PolylineOverlayBatchKey,std::piecewise_construct_t const&,std::tuple<md::PolylineOverlayBatchKey const&>,std::tuple<>>(v13, 0, 0, &v21);
  std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>::push_back[abi:nn200100]((v14 + 6), &v20);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v18);
  }

  return std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>::~unique_ptr[abi:nn200100](&v20);
}

void sub_1B2FB9220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, uint64_t a7, std::__shared_weak_count *a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (a8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a8);
  }

  std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::PolylineOverlayRibbon>(uint64_t a1)
{
  v2 = pthread_rwlock_rdlock((a1 + 32));
  if (v2)
  {
    geo::read_write_lock::logFailure(v2, "read lock", v3);
  }

  v4 = malloc_type_zone_malloc(*a1, 0x88uLL, 0x10A1040BF033D72uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v4;
}

uint64_t *std::__hash_table<std::__hash_value_type<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::PolylineOverlayBatchKey,std::__hash_value_type<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,std::hash<md::PolylineOverlayBatchKey>,std::equal_to<md::PolylineOverlayBatchKey>,true>,std::__unordered_map_equal<md::PolylineOverlayBatchKey,std::__hash_value_type<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::PolylineOverlayBatchKey>,std::hash<md::PolylineOverlayBatchKey>,true>,std::allocator<std::__hash_value_type<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>>>::__emplace_unique_key_args<md::PolylineOverlayBatchKey,std::piecewise_construct_t const&,std::tuple<md::PolylineOverlayBatchKey const&>,std::tuple<>>(float *a1, unsigned int a2, unsigned __int8 a3, _DWORD **a4)
{
  v4 = *(a1 + 1);
  if (!v4)
  {
    goto LABEL_19;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = a2;
    if (v4 <= a2)
    {
      v6 = a2 % v4;
    }
  }

  else
  {
    v6 = (v4 - 1) & a2;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == a2)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= v4)
      {
        v9 %= v4;
      }
    }

    else
    {
      v9 &= v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_19;
    }

LABEL_18:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_19;
    }
  }

  if (*(v8 + 4) != a2 || *(v8 + 40) != a3)
  {
    goto LABEL_18;
  }

  return v8;
}

void sub_1B2FB971C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t (****std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>::~unique_ptr[abi:nn200100](uint64_t (****a1)(void)))(void)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = (**v2)(v2);
    v4 = mdm::zone_mallocator::instance(v3);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::PolylineOverlayRibbon>(v4, v2);
  }

  return a1;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<md::PolylineOverlayBatchKey const,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void md::PolylineOverlayRibbon::~PolylineOverlayRibbon(md::PolylineOverlayRibbon *this)
{
  md::Ribbons::StandardModeRibbonUsingPositionType<gm::Matrix<float,2,1>>::~StandardModeRibbonUsingPositionType(this);

  JUMPOUT(0x1B8C62190);
}

void std::__function::__func<md::PolygonOverlayMeshBuilder::buildFillAntialiasMesh(std::vector<md::PolygonOverlayMeshBuilder::MeshInfo> const&,ggl::Loader &)::$_0,std::allocator<md::PolygonOverlayMeshBuilder::buildFillAntialiasMesh(std::vector<md::PolygonOverlayMeshBuilder::MeshInfo> const&,ggl::Loader &)::$_0>,void ()(ggl::ResourceAccessor *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = **(**(a1 + 16) + 64);
  v5 = **(a1 + 32);
  ggl::BufferMemory::BufferMemory(v35);
  ggl::ResourceAccessor::accessIndexData(v36, v3, v4, 0, v5, 1, 1);
  ggl::BufferMemory::operator=(v35, v36);
  ggl::BufferMemory::~BufferMemory(v36);
  ggl::DataAccess<ggl::DaVinci::TexturedCompressedVbo>::DataAccess(v36, *(**(a1 + 16) + 96), 0, **(a1 + 40), 1, 1, v3);
  v6 = *(a1 + 8);
  v7 = *v6;
  v8 = v6[1];
  if (*v6 != v8)
  {
    v9 = 0;
    v10 = 0;
    v11 = vdup_n_s32(0x46FFFF00u);
    do
    {
      if (geo::effectiveVertexCount<float>(v7))
      {
        v16 = v7[3];
        v15 = v7[4];
        if (v15 != v16)
        {
          v17 = *v7;
          v18 = v7[1] - *v7;
          if (v18)
          {
            v19 = 0;
            if ((v18 >> 3) <= 1)
            {
              v20 = 1;
            }

            else
            {
              v20 = v18 >> 3;
            }

            v21 = (v17 + 4);
            v22 = (v35[5] + 16 * v9 + 28);
            do
            {
              if ((v18 >> 3) - 1 == v19)
              {
                v23 = 0;
              }

              else
              {
                v23 = v19 + 1;
              }

              if (v19)
              {
                v24 = v19;
              }

              else
              {
                v24 = v18 >> 3;
              }

              v25 = v19 + 1;
              v26 = (v17 + 8 * v23);
              v12.i32[0] = *(v21 - 1);
              v13.i32[0] = *v21;
              v27 = v17 + 8 * v24;
              v14.i32[0] = *(v27 - 8);
              v28.i32[0] = *(v27 - 4);
              LODWORD(v27) = (*v12.i32 * 65535.0);
              v29 = (*v21 * 65535.0);
              *(v22 - 10) = v27;
              *(v22 - 9) = v29;
              *(v22 - 2) = v27;
              *(v22 - 1) = v29;
              v14.i32[1] = v12.i32[0];
              v12.i32[1] = *v26;
              *v12.i8 = vsub_f32(*v12.i8, *v14.f32);
              v28.i32[1] = v13.i32[0];
              v13.i32[1] = v26[1];
              *v13.i8 = vsub_f32(*v13.i8, v28);
              *v14.f32 = vdiv_f32(v11, vsqrt_f32(vmla_f32(vmul_f32(*v12.i8, *v12.i8), *v13.i8, *v13.i8)));
              v14 = vzip1q_s32(v14, v14);
              v12 = vcvtq_s32_f32(vmulq_f32(v14, vzip1q_s32(v12, v13)));
              *v12.i8 = vmovn_s32(v12);
              *(v22 - 7) = v12.i64[0];
              *(v22 - 3) = v12.i64[0];
              *(v22 - 4) = 1065353216;
              *v22 = 0;
              v22 += 8;
              v21 += 2;
              v19 = v25;
            }

            while (v20 != v25);
          }

          v30 = v18 >> 2;
          v31 = 2 * (((v15 - v16) >> 3) + ((v15 - v16) >> 4));
          v32 = (v37 + 2 * v10 + 6);
          do
          {
            v33 = v9 + 2 * *v16;
            *(v32 - 3) = v33;
            v34 = v9 + 2 * *(v16 + 8);
            *(v32 - 2) = v9 + 2 * *(v16 + 8);
            *(v32 - 1) = ++v33;
            *v32 = v33;
            v32[1] = v34;
            v32[2] = v34 + 1;
            v16 += 16;
            v32 += 6;
          }

          while (v16 != v15);
          v9 += v30;
          v10 += v31;
        }
      }

      v7 += 11;
    }

    while (v7 != v8);
  }

  ggl::BufferMemory::~BufferMemory(v36);
  ggl::BufferMemory::~BufferMemory(v35);
}

void sub_1B2FB9A74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  ggl::BufferMemory::~BufferMemory(va);
  ggl::BufferMemory::~BufferMemory(&a9);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<md::PolygonOverlayMeshBuilder::buildFillAntialiasMesh(std::vector<md::PolygonOverlayMeshBuilder::MeshInfo> const&,ggl::Loader &)::$_0,std::allocator<md::PolygonOverlayMeshBuilder::buildFillAntialiasMesh(std::vector<md::PolygonOverlayMeshBuilder::MeshInfo> const&,ggl::Loader &)::$_0>,void ()(ggl::ResourceAccessor *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A1E5A0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::PolygonOverlay::AntialiasVbo>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A1E528;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__function::__func<md::PolygonOverlayMeshBuilder::buildFillMesh(std::vector<md::PolygonOverlayMeshBuilder::MeshInfo> const&,ggl::Loader &)::$_0,std::allocator<md::PolygonOverlayMeshBuilder::buildFillMesh(std::vector<md::PolygonOverlayMeshBuilder::MeshInfo> const&,ggl::Loader &)::$_0>,void ()(ggl::ResourceAccessor *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  ggl::DataAccess<ggl::TrafficBase::DefaultVbo>::DataAccess(v23, **(**(a1 + 16) + 64), 0, **(a1 + 24), *a2);
  ggl::DataAccess<ggl::DaVinci::TexturedCompressedVbo>::DataAccess(v21, *(**(a1 + 16) + 96), 0, **(a1 + 32), 1, 1, v3);
  v20 = a1;
  v4 = *(a1 + 8);
  v5 = *v4;
  v6 = v4[1];
  if (*v4 != v6)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      if (!geo::effectiveVertexCount<float>(v5))
      {
        goto LABEL_25;
      }

      if (!geo::effectiveVertexCount<float>(v5))
      {
        goto LABEL_25;
      }

      v9 = geo::triangulatedIndexCount<float>(v5);
      if (!v9)
      {
        goto LABEL_25;
      }

      v10 = v5[1] - *v5;
      if (v10)
      {
        v11 = v10 >> 3;
        if (v11 <= 1)
        {
          v11 = 1;
        }

        v12 = (v23[5] + 8 * v7 + 4);
        v13 = (*v5 + 4);
        do
        {
          v14 = (*v13 * 65535.0);
          *(v12 - 2) = (*(v13 - 1) * 65535.0);
          *(v12 - 1) = v14;
          *v12 = 0x7FFF;
          v12 += 2;
          v13 += 2;
          --v11;
        }

        while (v11);
      }

      v24.i64[1] = 0;
      v25 = 0;
      v24.i64[0] = &v24.i64[1];
      v26 = xmmword_1B33B1630;
      v31 = 0;
      v28 = 0;
      v29 = 0;
      v27 = 0;
      v30 = 0;
      v32 = 4;
      v34 = 0;
      v35 = 0;
      __p = 0;
      md::Triangulator<float>::triangulate(&v24, v5);
      v15 = __p;
      v16 = v34 - __p;
      if (v9 == (v34 - __p) >> 1)
      {
        if (v34 != __p)
        {
          v17 = 0;
          v18 = v22 + 2 * v8;
          do
          {
            *(v18 + 2 * v17) = v15[v17] + v7;
            ++v17;
          }

          while (v9 != v17);
LABEL_22:
          v34 = v15;
          operator delete(v15);
          goto LABEL_23;
        }
      }

      else
      {
        if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
        {
          dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
        }

        v19 = GEOGetVectorKitVKDefaultLog_log;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          v37 = v9;
          v38 = 2048;
          v39 = (v34 - __p) >> 1;
          _os_log_impl(&dword_1B2754000, v19, OS_LOG_TYPE_ERROR, "Mismatching number of indices, indexCount: %zu, triangulatedIndexCount: %zu", buf, 0x16u);
        }

        bzero((v22 + 2 * v8), 2 * v9);
        v15 = __p;
      }

      if (v15)
      {
        goto LABEL_22;
      }

LABEL_23:
      geo::Pool<geo::Triangulator<float,unsigned short>::Node>::~Pool(&v24);
      if (v9 != v16 >> 1)
      {
        **(v20 + 40) = 1;
        break;
      }

      v8 += v9;
      v7 += (v5[1] - *v5) >> 3;
LABEL_25:
      v5 += 11;
    }

    while (v5 != v6);
  }

  ggl::BufferMemory::~BufferMemory(v21);
  ggl::BufferMemory::~BufferMemory(v23);
}

__n128 std::__function::__func<md::PolygonOverlayMeshBuilder::buildFillMesh(std::vector<md::PolygonOverlayMeshBuilder::MeshInfo> const&,ggl::Loader &)::$_0,std::allocator<md::PolygonOverlayMeshBuilder::buildFillMesh(std::vector<md::PolygonOverlayMeshBuilder::MeshInfo> const&,ggl::Loader &)::$_0>,void ()(ggl::ResourceAccessor *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A1E498;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void md::PolygonOverlayMeshBuilder::buildPolygonMeshesFromMeshInfos(uint64_t *a1, uint64_t **a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, int *a7)
{
  *a1 = 0;
  a1[1] = 0;
  md::PolygonOverlayMeshBuilder::buildVectorOverlayMesh(&v21, a2, a3);
  v14 = v21;
  v21 = 0;
  std::unique_ptr<md::Mesh>::reset[abi:nn200100](a1, v14);
  std::unique_ptr<md::Mesh>::reset[abi:nn200100](&v21, 0);
  v15 = a4[1];
  v20[0] = *a4;
  v20[1] = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  v16 = a5[1];
  v19[0] = *a5;
  v19[1] = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  v18 = 0;
  v17 = *a7;
  md::PolygonOverlayMeshBuilder::buildStrokeRibbon(&v21, *a2, a2[1], a3, v20, v19, a6, &v18, 0.0, &v17);
}

void sub_1B2FBA2C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  MEMORY[0x1B8C62190](v17, 0x10F1C4063721C39, a3, a4, a5, a6, a7, a8);
  if (a16)
  {
    (*(*a16 + 8))(a16);
  }

  v19 = v16[1];
  v16[1] = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  std::unique_ptr<md::Mesh>::reset[abi:nn200100](v16, 0);
  _Unwind_Resume(a1);
}

void non-virtual thunk toggl::VertexDataTyped<ggl::BuildingFacade::DefaultVbo>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::BuildingFacade::DefaultVbo>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::BuildingFacade::DefaultVbo>,geo::allocator_adapter<ggl::VertexDataTyped<ggl::BuildingFacade::DefaultVbo>,ggl::zone_mallocator>>::__on_zero_shared_weak(ggl::zone_mallocator *a1)
{
  v2 = ggl::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v2, a1);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::BuildingFacade::DefaultVbo>,geo::allocator_adapter<ggl::VertexDataTyped<ggl::BuildingFacade::DefaultVbo>,ggl::zone_mallocator>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A1E6B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::BuildingFacade::BuildingMesh::~BuildingMesh(ggl::BuildingFacade::BuildingMesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void ggl::BuildingFacade::BuildingMesh::~BuildingMesh(ggl::BuildingFacade::BuildingMesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::MeshTyped<ggl::BuildingFacade::DefaultVbo>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::BuildingFacade::DefaultVbo>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

double md::MapDataAccess::groundCoordinateForScreenCursor(long double *a1, uint64_t a2, double *a3, int32x2_t a4)
{
  v6 = *(a2 + 16);
  if (*(v6 + 376) * *(v6 + 368) == 0.0)
  {
    v7 = vdupq_n_s64(0xC00921FB54442D18);
    *a1 = v7;
    a1[2] = 0.0;
  }

  else
  {
    v7.i64[0] = gdc::ViewDataAccess::worldRayFromScreenCursor(v11, v6, a4, a3).n128_u64[0];
    v9 = *(a2 + 9);
    if ((v9 - 1) < 2)
    {
      md::MapDataAccess::_globeGroundCoordinateForScreenPoint(a1, a2, a3, v11, 0, 0);
    }

    else if (v9 == 3)
    {
      *a1 = *a3;
      v7.i64[0] = a3[2];
      a1[2] = *v7.i64;
    }

    else if (!*(a2 + 9))
    {
      *v7.i64 = md::MapDataAccess::_mercatorGroundCoordinateForScreenPoint(a1, v11, a3[2]);
    }
  }

  return *v7.i64;
}

double md::MapDataAccess::upForCoordinate(unsigned __int8 a1, double *a2)
{
  if (a1 - 1 > 2)
  {
    return 0.0;
  }

  v17[3] = v9;
  v17[4] = v8;
  v17[5] = v7;
  v17[6] = v6;
  v17[7] = v5;
  v17[8] = v4;
  v17[9] = v2;
  v17[10] = v3;
  v10 = a2[1];
  v11 = a2[2];
  v12 = __sincos_stret(*a2);
  v13 = 6378137.0 / sqrt(v12.__sinval * v12.__sinval * -0.00669437999 + 1.0);
  v14 = (v13 + v11) * v12.__cosval;
  v15 = __sincos_stret(v10);
  v17[0] = v14 * v15.__cosval;
  v17[1] = v14 * v15.__sinval;
  v17[2] = (v11 + v13 * 0.99330562) * v12.__sinval;
  return gm::Matrix<double,3,1>::normalized<int,void>(v17);
}

float md::MapDataAccess::cameraFromFrame(gdc::Camera *a1, gdc::Camera *this, uint64_t a3)
{
  v6 = gdc::Camera::widestFieldOfView(this);
  v7 = *gdc::Camera::near(this);
  v8 = gdc::Camera::far(this);
  v9 = gdc::Camera::Camera(a1, a3, this + 368, v6, v7, *v8, *(this + 60));
  v10 = gdc::Camera::horizontalOffset(v9, *(this + 123));
  gdc::Camera::setVerticalOffset(a1, v10);
  v12 = gdc::Camera::horizontalOffset(v11, *(this + 122));

  return gdc::Camera::setHorizontalOffset(a1, v12);
}

void md::Anchor::setMercatorPoint(uint64_t a1, double a2, double a3, double a4)
{
  *&v14 = a2;
  *(&v14 + 1) = a3;
  if (*(a1 + 16) != *&a2 || *(a1 + 24) != *&a3 || *(a1 + 32) != *&a4)
  {
    *(a1 + 32) = a4;
    *(a1 + 16) = v14;
    v7 = *(a1 + 16) * 6.28318531;
    v8 = exp(*(a1 + 24) * 6.28318531 + -3.14159265);
    v13 = atan(v8);
    v9 = fmod(v7, 6.28318531);
    v10 = fmod(v9 + 6.28318531, 6.28318531);
    v11 = *(a1 + 32);
    v12.f64[0] = v13;
    v12.f64[1] = v10;
    *(a1 + 40) = vmlaq_f64(xmmword_1B33B0660, xmmword_1B33B0650, v12);
    *(a1 + 56) = v11;

    md::Anchor::worldPointDidChange(a1);
  }
}

double md::MercatorAnchor::worldPoint(md::MercatorAnchor *this)
{
  if (!*(this + 1))
  {
    return 0.0;
  }

  (*(*this + 56))(this);
  return result;
}

void md::GlobeMercatorAnchor::worldPointWithRouteElevationOffset(md::GlobeMercatorAnchor *this)
{
  if (*(this + 1))
  {
    v1 = (*(*this + 56))(this) * 6.28318531;
    v3 = exp(v2 * 6.28318531 + -3.14159265);
    v4 = atan(v3) * 2.0 + -1.57079633;
    v5 = fmod(v1, 6.28318531);
    v6 = fmod(v5 + 6.28318531, 6.28318531) + -3.14159265;
    __sincos_stret(v4);
    __sincos_stret(v6);
  }
}

void md::GlobeMercatorAnchor::worldPoint(md::GlobeMercatorAnchor *this)
{
  if (*(this + 1))
  {
    v1 = (*(*this + 56))(this) * 6.28318531;
    v3 = exp(v2 * 6.28318531 + -3.14159265);
    v4 = atan(v3) * 2.0 + -1.57079633;
    v5 = fmod(v1, 6.28318531);
    v6 = fmod(v5 + 6.28318531, 6.28318531) + -3.14159265;
    __sincos_stret(v4);
    __sincos_stret(v6);
  }
}

void md::GlobeMercatorAnchor::~GlobeMercatorAnchor(md::GlobeMercatorAnchor *this)
{
  md::Anchor::~Anchor(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t *md::MercatorTerrainAnchor::resetAnchorManager(uint64_t *this)
{
  v1 = this[1];
  if (v1)
  {
    v2 = this;
    this = md::AnchorManager::clearTerrainHeightForAnchor(*(v1 + 16), this);
    v2[1] = 0;
  }

  return this;
}

void md::MercatorTerrainAnchor::setMercatorPoint(md::MercatorTerrainAnchor *a1, double a2, double a3, double a4)
{
  if ((*(*a1 + 56))(a1) != *&a2 || v8 != *&a3 || v9 != *&a4)
  {
    v12 = *(a1 + 1);
    if (v12)
    {
      md::AnchorManager::clearTerrainHeightForAnchor(*(v12 + 16), a1);

      md::Anchor::setMercatorPoint(a1, a2, a3, a4);
    }
  }
}

double md::GlobeMercatorTerrainAnchor::worldPointWithRouteElevationOffset(md::GlobeMercatorTerrainAnchor *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    v2 = md::AnchorManager::mercatorTerrainPointForAnchor(*(this + 1), this);
    v5 = v4 + *(v1 + 68);
  }

  else
  {
    (*(*this + 56))(this);
    v5 = v6;
  }

  v7 = v2 * 6.28318531;
  v8 = exp(v3 * 6.28318531 + -3.14159265);
  v9 = atan(v8) * 2.0 + -1.57079633;
  v10 = fmod(v7, 6.28318531);
  v11 = fmod(v10 + 6.28318531, 6.28318531) + -3.14159265;
  v12 = __sincos_stret(v9);
  return (6378137.0 / sqrt(v12.__sinval * v12.__sinval * -0.00669437999 + 1.0) + v5) * v12.__cosval * __sincos_stret(v11).__cosval;
}

void md::GlobeMercatorTerrainAnchor::worldPoint(md::GlobeMercatorTerrainAnchor *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v3 = md::AnchorManager::mercatorTerrainPointForAnchor(v2, this) * 6.28318531;
    v5 = exp(v4 * 6.28318531 + -3.14159265);
    v6 = atan(v5) * 2.0 + -1.57079633;
    v7 = fmod(v3, 6.28318531);
    v8 = fmod(v7 + 6.28318531, 6.28318531) + -3.14159265;
    __sincos_stret(v6);
    __sincos_stret(v8);
  }

  else
  {
    v11[0] = (*(*this + 56))(this);
    v11[1] = v9;
    v11[2] = v10;
    geo::Geocentric<double>::Geocentric<double>(&v12, v11);
  }
}

void md::GlobeMercatorTerrainAnchor::~GlobeMercatorTerrainAnchor(md::GlobeMercatorTerrainAnchor *this)
{
  md::MercatorTerrainAnchor::~MercatorTerrainAnchor(this);

  JUMPOUT(0x1B8C62190);
}

void md::TrafficSkeletonTileDecoder::decode(void x0_0, uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x1E69E9840];
  if (((*(**a2 + 16))() & 1) == 0)
  {
    operator new();
  }

  operator new();
}

void std::__shared_ptr_emplace<md::TrafficSkeletonTileResource>::__on_zero_shared(void *a1)
{
  v2 = a1[22];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[4];
  if (v3 != a1[6])
  {

    free(v3);
  }
}

void std::__shared_ptr_emplace<md::TrafficSkeletonTileResource>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A1EA60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<zilch::TrafficSkeletonTile>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void std::__shared_ptr_emplace<zilch::TrafficSkeletonTile>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A1EA28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void **std::default_delete<zilch::TrafficSkeletonTile>::operator()[abi:nn200100](void **result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    if (v2)
    {
      v1[1] = v2;
      operator delete(v2);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::__shared_ptr_pointer<zilch::TrafficSkeletonTile *,std::shared_ptr<zilch::TrafficSkeletonTile>::__shared_ptr_default_delete<zilch::TrafficSkeletonTile,zilch::TrafficSkeletonTile>,std::allocator<zilch::TrafficSkeletonTile>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::OcclusionTest::generatePixelRectangleTest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = 0;
  v11 = 0;
  std::vector<gm::Matrix<double,3,1>,geo::allocator_adapter<gm::Matrix<double,3,1>,mdm::zone_mallocator>>::resize(&v9, *(a1 + 239));
  v7 = v9;
  v8 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v9) >> 3);
  md::OcclusionTest::generatePixelRectPoints(a1, *(a1 + 80), a4, v9, v8);
  md::OcclusionTest::setupPointProbes(a1, a3, a4, v7, v8);
  std::vector<gm::Matrix<double,3,1>,geo::allocator_adapter<gm::Matrix<double,3,1>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v9);
}

void sub_1B2FBBC9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<gm::Matrix<double,3,1>,geo::allocator_adapter<gm::Matrix<double,3,1>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void md::OcclusionTest::generatePixelRectPoints(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v69[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8))
  {
    v10 = 1.0;
    v11 = 0.0;
    v12 = 0.0;
  }

  else
  {
    v11 = gm::Matrix<double,3,1>::normalized<int,void>(a2);
    v12 = v13;
    v10 = v14;
  }

  if (*(a1 + 228) == 1)
  {
    for (i = 0; i != 3; ++i)
    {
      *(&v46 + i) = *(a1 + 216 + 4 * i);
    }

    v16 = v47;
    v54 = -(*(&v46 + 1) * v10 - v47 * v12);
    v55 = -(v47 * v11 - *&v46 * v10);
    v56 = -(*&v46 * v12 - *(&v46 + 1) * v11);
    v57 = v11;
    v58 = v12;
    v59 = v10;
    v60 = v46;
  }

  else
  {
    for (j = 0; j != 24; j += 8)
    {
      *(&v46 + j) = *(a3 + 136 + j) - *(a2 + j);
    }

    v18 = -(v47 * v11 - *&v46 * v10);
    v19 = -(*&v46 * v12 - *(&v46 + 1) * v11);
    *&v46 = -(*(&v46 + 1) * v10 - v47 * v12);
    *(&v46 + 1) = v18;
    v47 = v19;
    v20 = gm::Matrix<double,3,1>::normalized<int,void>(&v46);
    v22 = -(v20 * v10 - v21 * v11);
    v54 = v20;
    v55 = v23;
    v56 = v21;
    v57 = v11;
    v16 = -(v23 * v11 - v20 * v12);
    v58 = v12;
    v59 = v10;
    *&v60 = -(v21 * v12 - v23 * v10);
    *(&v60 + 1) = v22;
  }

  v61 = v16;
  for (k = 0; k != 24; k += 8)
  {
    *(&v46 + k) = *(a2 + k) - *(a3 + 136 + k);
  }

  v25 = 0;
  v26 = 0.0;
  do
  {
    v26 = v26 + *(a3 + 160 + v25) * *(&v46 + v25);
    v25 += 8;
  }

  while (v25 != 24);
  v27 = 0;
  v28 = *(a3 + 320) * v26;
  do
  {
    *(&v54 + v27) = *(&v54 + v27) * v28;
    v27 += 8;
  }

  while (v27 != 24);
  do
  {
    *(&v54 + v27) = *(&v54 + v27) * v28;
    v27 += 8;
  }

  while (v27 != 48);
  v29 = 0;
  v30 = &v46;
  v31 = &v54;
  do
  {
    v32 = 0;
    v33 = v30;
    do
    {
      *v33 = v31[v32];
      v33 += 2;
      v32 += 3;
    }

    while (v32 != 9);
    ++v29;
    v30 = (v30 + 8);
    ++v31;
  }

  while (v29 != 3);
  v48 = 0;
  v49 = 0;
  v50 = 0;
  v51 = *a2;
  v52 = *(a2 + 2);
  v53 = 0x3FF0000000000000;
  v34 = *(a1 + 204);
  v35 = *(a1 + 208);
  v36 = *(a1 + 212) - v34;
  *&v64 = *(a1 + 200);
  *(&v64 + 1) = (v34 + (v36 * 0.25));
  v65 = 0;
  v66[0] = v35;
  v66[1] = *(&v64 + 1);
  v66[2] = 0.0;
  *&v67 = v64;
  *(&v67 + 1) = (v34 + (v36 * 0.75));
  v68 = 0;
  v69[0] = v35;
  v69[1] = *(&v67 + 1);
  v69[2] = 0.0;
  if (a5)
  {
    v37 = 0;
    v38 = 0.0;
    do
    {
      v39 = v38;
      v40 = 0;
      if (v37)
      {
        v62 = v64;
        v63 = v65;
        do
        {
          *(&v62 + v40 * 8) = *(&v62 + v40 * 8) + (v66[v40] - *(&v62 + v40 * 8)) * v39;
          ++v40;
        }

        while (v40 != 3);
      }

      else
      {
        v62 = v67;
        v63 = v68;
        do
        {
          *(&v62 + v40 * 8) = *(&v62 + v40 * 8) + (v69[v40] - *(&v62 + v40 * 8)) * v39;
          ++v40;
        }

        while (v40 != 3);
      }

      v41 = a4 + 24 * v37;
      v44 = v62;
      v45 = v63;
      *v41 = gm::Matrix<double,4,4>::multiplyHomogeneous<int,void>(&v46, &v44);
      *(v41 + 8) = v42;
      *(v41 + 16) = v43;
      v38 = v38 + (1.0 / (a5 - 1));
      ++v37;
    }

    while (v37 != a5);
  }
}

void md::OcclusionTest::setupPointProbes(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  if (*(result + 237) - 1 >= 2)
  {
    if (!*(result + 237))
    {
      v11 = *(result + 8);

      md::OcclusionTest::populatePointProbe(v11, a2, a3, 0, a4, a5);
    }
  }

  else if (a5)
  {
    for (i = 0; i != a5; ++i)
    {
      md::OcclusionTest::populatePointProbe(*(result + 8), a2, a3, i, v6, 1);
      v6 += 24;
    }
  }
}

void md::OcclusionTest::populatePointProbe(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a1 + 8 * a4);
  v11 = 3 * v10;
  md::OcclusionQueryResource::initialize((*(a2 + 96) + 24 * v10));
  v12 = (*(a2 + 96) + 8 * v11);
  *(*v12 + 24) = *(a2 + 80);
  ggl::BufferData::resize(**(v12[2] + 64), a6);
  ggl::DataAccess<ggl::CommonMesh::BufferPos4>::DataAccess(v22, **(v12[2] + 64), 0, a6);
  if (a6)
  {
    v13 = 0;
    v14 = v23;
    do
    {
      for (i = 0; i != 24; i += 8)
      {
        *(&v24 + i) = *(a5 + i) - *(a3 + 136 + i);
      }

      for (j = 0; j != 3; ++j)
      {
        v17 = *(&v24 + j);
        *(&v20 + j) = v17;
      }

      v18 = v14 + 16 * v13;
      v19 = v21;
      *v18 = v20;
      *(v18 + 8) = v19;
      *(v18 + 12) = 1065353216;
      ++v13;
      a5 += 24;
    }

    while (v13 != a6);
  }

  ggl::BufferMemory::~BufferMemory(v22);
}

void md::OcclusionTest::generateLabeledCylinderTest(uint64_t result, uint64_t a2, float *a3, uint64_t a4)
{
  v6 = 0;
  v56[12] = *MEMORY[0x1E69E9840];
  v7 = *(result + 80);
  v8 = a4 + 136;
  do
  {
    *(&v54 + v6) = *(a4 + v6 + 136) - *(v7 + v6);
    v6 += 8;
  }

  while (v6 != 24);
  for (i = 0; i != 3; ++i)
  {
    v10 = *(&v54 + i);
    v51[i] = v10;
  }

  v11 = 0;
  v12 = 0.0;
  do
  {
    v12 = v12 + (*(result + v11 * 4 + 184) * v51[v11]);
    ++v11;
  }

  while (v11 != 3);
  for (j = 0; j != 3; ++j)
  {
    *(&v47 + j) = *(result + 4 * j + 184);
  }

  v14 = 0;
  v15 = v12;
  do
  {
    *(&v54 + v14) = *(&v47 + v14) * v15;
    v14 += 8;
  }

  while (v14 != 24);
  v16 = 0;
  v52 = v54;
  v53 = v55;
  do
  {
    *(&v54 + v16) = *(&v52 + v16) + *(v7 + v16);
    v16 += 8;
  }

  while (v16 != 24);
  v17 = 0;
  v49 = v54;
  v50 = v55;
  do
  {
    *(&v54 + v17) = *(a4 + v17 + 136) - *(&v49 + v17);
    v17 += 8;
  }

  while (v17 != 24);
  v18 = 0;
  v19 = 0.0;
  do
  {
    v19 = v19 + *(&v54 + v18) * *(&v54 + v18);
    v18 += 8;
  }

  while (v18 != 24);
  v20 = sqrt(v19);
  v21 = *(result + 196);
  if (v21 >= v20)
  {
    v22 = 1;
    goto LABEL_21;
  }

  if (a3[4] < v20)
  {
    v22 = 2;
LABEL_21:
    *(result + 238) = v22;
    return;
  }

  for (k = 0; k != 3; ++k)
  {
    *(&v54 + k * 4) = (v21 * v51[k]) * (1.0 / v20);
  }

  v24 = 0;
  *&v47 = v54;
  DWORD2(v47) = DWORD2(v54);
  do
  {
    *(&v52 + v24) = *(&v47 + v24);
    ++v24;
  }

  while (v24 != 3);
  for (m = 0; m != 24; m += 8)
  {
    *(&v54 + m) = *(&v52 + m) + *(v7 + m);
  }

  v26 = a3[6];
  if (v26 != 3.4028e38)
  {
    v27 = 0;
    v28 = 0.0;
    do
    {
      v28 = v28 + (v51[v27] * v51[v27]);
      ++v27;
    }

    while (v27 != 3);
    v29 = 0;
    v30 = fabs(v15) / sqrtf(v28);
    v31 = (a3[5] + ((fminf(v26, v20) - a3[5]) * v30));
    v32 = &v54;
    do
    {
      for (n = 0; n != 24; n += 8)
      {
        *(&v52 + n) = *(v32 + n) - *(v8 + n);
      }

      v34 = 0;
      v47 = v52;
      v48 = v53;
      v35 = 0.0;
      do
      {
        v35 = v35 + *(&v47 + v34) * *(&v47 + v34);
        v34 += 8;
      }

      while (v34 != 24);
      if (sqrt(v35) > v31)
      {
        v36 = &v54 + 24 * v29;
        v37 = gm::Matrix<double,3,1>::normalized<int,void>(&v47);
        v38 = 0;
        *v44 = v37;
        v44[1] = v39;
        v44[2] = v40;
        do
        {
          *(&v52 + v38 * 8) = *&v44[v38] * v31;
          ++v38;
        }

        while (v38 != 3);
        v41 = 0;
        v45 = v52;
        v46 = v53;
        do
        {
          *(&v52 + v41) = *(&v45 + v41) + *(v8 + v41);
          v41 += 8;
        }

        while (v41 != 24);
        v42 = v53;
        *v36 = v52;
        *(v36 + 2) = v42;
      }

      ++v29;
      v32 = (v32 + 24);
    }

    while (v29 != 5);
  }

  md::OcclusionTest::generatePixelRectPoints(result, &v54, a4, v56, 4);
  md::OcclusionTest::setupPointProbes(result, a3, a4, &v54, 5);
}

void md::OcclusionTest::generateLineSegmentTest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = **(a1 + 8);
  v9 = 3 * v8;
  md::OcclusionQueryResource::initialize((*(a3 + 96) + 24 * v8));
  v10 = 0;
  v11 = (*(a3 + 96) + 8 * v9);
  *(*v11 + 24) = *(a3 + 48);
  v12 = *(a1 + 80);
  do
  {
    *(&v35 + v10) = *(v12 + v10) - *(a4 + 136 + v10);
    v10 += 8;
  }

  while (v10 != 24);
  for (i = 0; i != 3; ++i)
  {
    v14 = *(&v35 + i);
    *(&v37 + i) = v14;
  }

  v15 = *(a1 + 196);
  v16 = 0.0;
  if (*(a2 + 281) == 2)
  {
    v16 = *(a1 + 232);
  }

  v17 = v16 + v15;
  if (v15 == (v16 + v15))
  {
    v18 = 2;
  }

  else
  {
    v18 = 3;
  }

  ggl::BufferData::resize(**(v11[2] + 64), v18);
  ggl::DataAccess<ggl::CommonMesh::BufferPos4>::DataAccess(&v35, **(v11[2] + 64), 0, v18);
  v19 = 0;
  v20 = v38;
  v21 = v36;
  *v36 = v37;
  *(v21 + 2) = v20;
  *(v21 + 3) = 1065353216;
  v22 = a1 + 184;
  v23 = *(a3 + 8);
  do
  {
    v24 = v23 * v15;
    *(&v39 + v19) = *(v22 + v19) * v24;
    v19 += 4;
  }

  while (v19 != 12);
  v25 = 0;
  v33 = v39;
  v34 = v40;
  do
  {
    *(&v39 + v25) = *(&v33 + v25) + *(&v37 + v25);
    v25 += 4;
  }

  while (v25 != 12);
  v26 = v40;
  v21[2] = v39;
  *(v21 + 6) = v26;
  *(v21 + 7) = 1065353216;
  if (v15 != v17)
  {
    v27 = 0;
    v28 = v23 * v17;
    do
    {
      *(&v39 + v27) = *(v22 + v27) * v28;
      v27 += 4;
    }

    while (v27 != 12);
    v29 = 0;
    v31 = v39;
    v32 = v40;
    do
    {
      *(&v39 + v29) = *(&v31 + v29) + *(&v37 + v29);
      v29 += 4;
    }

    while (v29 != 12);
    v30 = v40;
    v21[4] = v39;
    *(v21 + 10) = v30;
    *(v21 + 11) = 1065353216;
  }

  ggl::BufferMemory::~BufferMemory(&v35);
}

void geo::small_vector_base<gm::Matrix<double,3,1>>::grow(uint64_t a1, unint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = (1 << -__clz(v5 + 1));
  if (v5 >= 0xFFFFFFFFFFFFFFFELL)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  if (v8 <= a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = v8;
  }

  v10 = malloc_type_malloc(24 * v9, 0x1000040504FFAC1uLL);
  v11 = v10;
  v12 = *a1;
  v13 = *(a1 + 8);
  if (*a1 != v13)
  {
    v14 = v10;
    do
    {
      v15 = *v12;
      *(v14 + 2) = v12[2];
      *v14 = v15;
      v14 += 24;
      v12 += 3;
    }

    while (v12 != v13);
  }

  if (v3 != v6)
  {
    free(*a1);
  }

  *a1 = v11;
  *(a1 + 8) = &v11[v4 - v3];
  *(a1 + 24) = v9;
}

uint64_t md::StandardLabeler::stylesheetAnimationDidFinish(uint64_t this)
{
  v1 = *(this + 72);
  v2 = *(this + 80);
  while (v1 != v2)
  {
    v3 = *v1;
    v1 += 2;
    this = md::Label::stopStyleAnimation(v3);
  }

  return this;
}

void md::StandardLabeler::layoutDisplayableLabelsForStaging(uint64_t this)
{
  v4 = 257;
  v5 = 1;
  v1 = *(this + 72);
  for (i = *(this + 80); v1 != i; v1 += 2)
  {
    if (*(*v1 + 844) == 2)
    {
      md::Label::layoutForStaging(*v1, *(this + 24), *(this + 48), &v4);
    }
  }
}

uint64_t md::StandardLabeler::resetOcclusionQueries(uint64_t this)
{
  v1 = *(this + 72);
  for (i = *(this + 80); v1 != i; v1 += 2)
  {
    v3 = *v1;
    v3[480] = 1;
    if (v3[844] != 2)
    {
      v3[485] = 0;
    }
  }

  return this;
}

uint64_t md::GenericLabelCollidableItem::collidesWithObject(md::GenericLabelCollidableItem *this, const md::CollisionObject *a2)
{
  v2 = a2;
  if (*(this + 216) == 0 || (*(a2 + 200) & *(this + 256)) != 0)
  {
    return 0;
  }

  v4 = *(a2 + 21);
  if (*(this + 28))
  {
    v5 = (this + 56);
    if (v4)
    {
      return md::CollisionObject::circlesCollideWithCircles(v5, a2);
    }

    return md::CollisionObject::circlesCollideWithRects(v5, a2);
  }

  if (v4)
  {
    a2 = (this + 56);
    v5 = v2;
    return md::CollisionObject::circlesCollideWithRects(v5, a2);
  }

  if ((*(this + 252) & 1) != 0 || *(a2 + 196) == 1)
  {
    return md::CollisionObject::rectsCollideWithRectsOBB((this + 56), a2);
  }

  else
  {
    return md::CollisionObject::rectsCollideWithRects((this + 56), a2);
  }
}

void md::GenericLabelCollidableItem::~GenericLabelCollidableItem(void **this)
{
  *this = &unk_1F2A1EDF0;
  md::CollisionObject::~CollisionObject(this + 7);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A1EDF0;
  md::CollisionObject::~CollisionObject(this + 7);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::LabelMapTile>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::weak_ptr<md::Label>>,void *>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelDedupingGroup>,void *> *> *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::shared_ptr<md::LabelDedupingGroup>,void *>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,void *> *> *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,void *>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,void *>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::Label>>(uint64_t a1, void *a2)
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

void ggl::DaVinci::ElevatedStrokeColorPipelineState::~ElevatedStrokeColorPipelineState(ggl::DaVinci::ElevatedStrokeColorPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

uint64_t ggl::DaVinci::ElevatedStrokeColorPipelineSetup::textureIsEnabled(ggl::DaVinci::ElevatedStrokeColorPipelineSetup *this, uint64_t a2)
{
  if (a2)
  {
    v2 = 0;
  }

  else
  {
    v2 = *(*(this + 2) + 339);
  }

  return v2 & 1;
}

uint64_t ggl::DaVinci::ElevatedStrokeColorPipelineSetup::constantDataIsEnabled(ggl::DaVinci::ElevatedStrokeColorPipelineSetup *this, unint64_t a2)
{
  v2 = 1;
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      return v2 & 1;
    }

    if (a2 == 4)
    {
      v2 = *(*(this + 2) + 339);
      return v2 & 1;
    }

    goto LABEL_8;
  }

  if (a2 >= 2)
  {
    if (a2 == 2)
    {
      v2 = *(*(this + 2) + 336);
      return v2 & 1;
    }

LABEL_8:
    v2 = 0;
  }

  return v2 & 1;
}

void ggl::DaVinci::ElevatedStrokeColorPipelineSetup::~ElevatedStrokeColorPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineState::~ElevatedStrokeColorWithDistancePipelineState(ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

void ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineSetup::typedReflection(ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineSetup *this)
{
  {
    ggl::MeshTyped<ggl::DaVinci::DistanceCompressedVbo>::typedReflection();
    ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineSetup::typedReflection(void)::ref = &ggl::MeshTyped<ggl::DaVinci::DistanceCompressedVbo>::typedReflection(void)::r;
    unk_1EB82E1A0 = &ggl::DaVinci::pipelineDataElevatedStrokeColorWithDistancePipelineDeviceStructs(void)::ref;
    qword_1EB82E1A8 = 0;
    {
      ggl::DaVinci::pipelineDataElevatedStrokeColorWithDistancePipelineConstantStructs(void)::ref = ggl::Tile::View::reflection(void)::reflection;
      *algn_1EB82E0F8 = ggl::Tile::Transform::reflection(void)::reflection;
      qword_1EB82E100 = ggl::Tile::Clipping::reflection(void)::reflection;
      unk_1EB82E108 = ggl::DaVinci::ClippedStroke::reflection(void)::reflection;
      qword_1EB82E110 = ggl::PolylineOverlayRibbon::Style::reflection(void)::reflection;
    }

    qword_1EB82E1B0 = &ggl::DaVinci::pipelineDataElevatedStrokeColorWithDistancePipelineConstantStructs(void)::ref;
    unk_1EB82E1B8 = xmmword_1B33B1000;
  }
}

uint64_t ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineSetup::textureIsEnabled(ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineSetup *this, uint64_t a2)
{
  if (a2)
  {
    v2 = 0;
  }

  else
  {
    v2 = *(*(this + 2) + 339);
  }

  return v2 & 1;
}

uint64_t ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineSetup::constantDataIsEnabled(ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineSetup *this, unint64_t a2)
{
  v2 = 1;
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      return v2 & 1;
    }

    if (a2 == 4)
    {
      v2 = *(*(this + 2) + 339);
      return v2 & 1;
    }

    goto LABEL_8;
  }

  if (a2 >= 2)
  {
    if (a2 == 2)
    {
      v2 = *(*(this + 2) + 336);
      return v2 & 1;
    }

LABEL_8:
    v2 = 0;
  }

  return v2 & 1;
}

void ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineSetup::~ElevatedStrokeColorWithDistancePipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::ARWalkingArrivalLabelFeature::styleAttributes@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 200);
  *a2 = *(result + 192);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void md::ARWalkingArrivalLabelFeature::populateStyleQueries(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 496))(a1);
  if (v4)
  {
    v4 = (*(*a1 + 488))(a1, 0);
    if (v4)
    {
      operator new();
    }
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  v11[4] = v15;
  v5 = mdm::zone_mallocator::instance(v4);
  v6 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v5, 1);
  *v6 = 0x100010060;
  v7 = (v6 + 1);
  v8 = v6 - (v13 - v12);
  memcpy(v8, v12, v13 - v12);
  v9 = v12;
  v10 = v14;
  v12 = v8;
  v13 = v7;
  v14 = v7;
  v11[2] = v9;
  v11[3] = v10;
  v11[0] = v9;
  v11[1] = v9;
  std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(v11);
  v13 = v7;
  (*(*a1 + 560))(a1, &v12);
  _ZNSt3__115allocate_sharedB8nn200100I22FeatureStyleAttributesNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(v11);
}

void sub_1B2FBD8AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  MEMORY[0x1B8C62190](v16, 0x1012C40B602C572, a3, a4, a5, a6, a7, a8);
  std::unique_ptr<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>::reset[abi:nn200100](va, 0);
  _Unwind_Resume(a1);
}

std::__shared_weak_count *std::vector<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,geo::allocator_adapter<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,mdm::zone_mallocator>>::push_back[abi:nn200100](std::__shared_weak_count *result, __int128 *a2)
{
  v3 = result;
  shared_owners = result->__shared_owners_;
  shared_weak_owners = result->__shared_weak_owners_;
  if (shared_owners >= shared_weak_owners)
  {
    v8 = (shared_owners - result->__vftable) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = shared_weak_owners - result->__vftable;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v23 = &result[1];
    if (v11)
    {
      v12 = mdm::zone_mallocator::instance(result);
      v13 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>(v12, v11);
    }

    else
    {
      v13 = 0;
    }

    v14 = &v13[16 * v8];
    v15 = *a2;
    *v14 = *a2;
    if (*(&v15 + 1))
    {
      atomic_fetch_add_explicit((*(&v15 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v16 = &v13[16 * v11];
    v7 = v14 + 16;
    v17 = v3[1] - *v3;
    v18 = &v14[-v17];
    memcpy(&v14[-v17], *v3, v17);
    v19 = *v3;
    *v3 = v18;
    v3[1] = v7;
    v20 = v3[2];
    v3[2] = v16;
    v21.__shared_weak_owners_ = v19;
    v22 = v20;
    v21.__vftable = v19;
    v21.__shared_owners_ = v19;
    result = std::__split_buffer<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,geo::allocator_adapter<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,mdm::zone_mallocator> &>::~__split_buffer(&v21);
  }

  else
  {
    v6 = *(a2 + 1);
    *shared_owners = *a2;
    *(shared_owners + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = shared_owners + 16;
  }

  v3[1] = v7;
  return result;
}

void sub_1B2FBDB90(_Unwind_Exception *a1)
{
  if (*(v2 - 33) < 0)
  {
    operator delete(*(v2 - 56));
  }

  _Unwind_Resume(a1);
}

uint64_t md::ARWalkingArrivalLabelFeature::dedupingGroup@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 256);
  *a2 = *(this + 248);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t md::ARWalkingArrivalLabelFeature::facingVector(uint64_t result, _DWORD *a2)
{
  v2 = *(result + 264);
  v3 = *(result + 272);
  if (v2 != v3)
  {
    while (*a2 != *v2)
    {
      v2 += 160;
      if (v2 == v3)
      {
        return result;
      }
    }

    if (v2 != v3)
    {
      return *(v2 + 56);
    }
  }

  return result;
}

__int128 *md::ARWalkingArrivalLabelFeature::labelPoint(md::LabelPoint *a1, _DWORD *a2)
{
  v2 = *(a1 + 33);
  v3 = *(a1 + 34);
  if (v2 != v3)
  {
    while (*a2 != *v2)
    {
      v2 += 40;
      if (v2 == v3)
      {
        goto LABEL_7;
      }
    }

    if (v2 != v3)
    {
      return (v2 + 2);
    }
  }

LABEL_7:
  md::LabelPoint::NullPoint(a1);
  return &md::LabelPoint::NullPoint(void)::kNullLabelPoint;
}

void md::ARWalkingArrivalLabelFeature::newRootPart(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = (*(**(a3 + 8) + 112))(*(a3 + 8), a3 + 48);
  md::LabelPoint::coordinate(&v22, v7);
  v8 = tan(v22.f64[0] * 0.00872664626 + 0.785398163);
  log(v8);
  v21[2] = 0uLL;
  v9 = a1[12];
  __asm { FMOV            V0.4S, #1.0 }

  if ((a1[13] - v9) >= 0x11)
  {
    v15 = *(v9 + 16);
    v16 = *(v9 + 24);
    if (v16)
    {
      atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
    }

    if (v15)
    {
      v17 = a1[26];
      v18 = a1[27];
      v20[0] = v17;
      v20[1] = v18;
      if (v18)
      {
        atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
      }

      v19[0] = 0;
      v19[4] = 0;
      LOBYTE(v24) = 0;
      v26 = 0;
      memset(__p, 0, 24);
      __p[6] = 0;
      md::LabelStyle::pointIconImageKey(v21, v15, a2, a3, v20, 0, v19, 0, &v24, 0, 255, 0, __p);
    }
  }

  v24 = 0uLL;
  v25 = 0;
  operator new();
}

void sub_1B2FBE244(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v41);
    if (!v40)
    {
LABEL_3:
      if (!v38)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if (!v40)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](v40);
  if (!v38)
  {
LABEL_4:
    if (!v39)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_9:
  std::__shared_weak_count::__release_shared[abi:nn200100](v38);
  v39 = a28;
  if (!a28)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

LABEL_5:
  std::__shared_weak_count::__release_shared[abi:nn200100](v39);
  goto LABEL_6;
}

void md::ARArrivalExternalMeshRequest::~ARArrivalExternalMeshRequest(md::ARArrivalExternalMeshRequest *this)
{
  md::ARArrivalExternalMeshRequest::~ARArrivalExternalMeshRequest(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A1F238;
  v2 = *(this + 26);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::LabelExternalMeshRequest::~LabelExternalMeshRequest(this);
}

void std::__shared_ptr_emplace<md::ARArrivalExternalMeshRequest>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A1F200;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::TextureBackedLabelIcon>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A205C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::ARWalkingArrivalLabelFeature::~ARWalkingArrivalLabelFeature(md::ARWalkingArrivalLabelFeature *this)
{
  *this = &unk_1F2A1EEE8;
  v2 = *(this + 33);
  if (v2)
  {
    *(this + 34) = v2;
    operator delete(v2);
  }

  v3 = *(this + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  *(this + 28) = &unk_1F2A39040;

  v4 = *(this + 27);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = *(this + 25);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  md::LabelFeature::~LabelFeature(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A1EEE8;
  v2 = *(this + 33);
  if (v2)
  {
    *(this + 34) = v2;
    operator delete(v2);
  }

  v3 = *(this + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  *(this + 28) = &unk_1F2A39040;

  v4 = *(this + 27);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = *(this + 25);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  md::LabelFeature::~LabelFeature(this);
}

void geo::_retain_ptr<VKARWalkingArrivalFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A39040;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKARWalkingArrivalFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A39040;

  return a1;
}

void *geo::_retain_ptr<VKARWalkingArrivalFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(void *a1, void *a2)
{
  v3 = a2;
  *a1 = &unk_1F2A39040;
  a1[1] = v3;
  return a1;
}

double geo::OrientedBox<double,2u,double,double>::operator=(uint64_t a1, uint64_t a2)
{
  for (i = 24; i != 48; i += 8)
  {
    *(a1 + i) = *(a2 + i);
  }

  v3 = 0;
  *(a1 + 48) = *(a2 + 48);
  do
  {
    *(a1 + v3) = *(a2 + v3);
    v3 += 8;
  }

  while (v3 != 24);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  result = *(a2 + 80);
  *(a1 + 80) = result;
  return result;
}

uint64_t std::__shared_ptr_pointer<ARArrivalFeatureDedupingGroup *,std::shared_ptr<md::LabelDedupingGroup>::__shared_ptr_default_delete<md::LabelDedupingGroup,ARArrivalFeatureDedupingGroup>,std::allocator<ARArrivalFeatureDedupingGroup>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ARArrivalFeatureDedupingGroup *,std::shared_ptr<md::LabelDedupingGroup>::__shared_ptr_default_delete<md::LabelDedupingGroup,ARArrivalFeatureDedupingGroup>,std::allocator<ARArrivalFeatureDedupingGroup>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void *ARArrivalFeatureDedupingGroup::prepareForCollision(ARArrivalFeatureDedupingGroup *this, md::LabelManager *a2)
{
  *(this + 6) = *(this + 5);
  *(this + 9) = 0;
  v5 = *(this + 1);
  v4 = *(this + 2);
  if (v5 != v4)
  {
    while (((*(*v5->i64[0] + 16))() & 1) != 0)
    {
      v5 = (v5 + 8);
LABEL_4:
      if (v5 == v4)
      {
        goto LABEL_11;
      }
    }

    v6 = (v4 - 8);
    while (v6 != v5)
    {
      v4 = v6;
      v7 = v6->i64[0];
      v6 = (v6 - 8);
      if ((*(*v7 + 16))(v7))
      {
        v8 = v5->i64[0];
        v5->i64[0] = v4->i64[0];
        v5 = (v5 + 8);
        v4->i64[0] = v8;
        goto LABEL_4;
      }
    }
  }

  v4 = v5;
LABEL_11:
  v9 = *(this + 1);
  v10 = 126 - 2 * __clz((v4 - v9) >> 3);
  v11 = *(a2 + 53) + 136;
  v19[0] = this;
  v19[1] = v11;
  if (v4 == v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = v10;
  }

  std::__introsort<std::_ClassicAlgPolicy,ARArrivalFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::{lambda(md::LabelBase const*,md::LabelBase const*)#1} &,md::LabelBase**,false>(v9, v4, v19, v12, 1);
  v13 = *(this + 2);
  v14 = *(this + 1);
  if (v14 != v13)
  {
    v15 = 0;
    v16 = *(this + 1);
    do
    {
      v17 = *v16++;
      *(v17 + 32) = v15++;
    }

    while (v16 != v13);
    *(this + 9) = *v14;
  }

  return std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear(this + 10);
}

int8x16_t *std::__introsort<std::_ClassicAlgPolicy,ARArrivalFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::{lambda(md::LabelBase const*,md::LabelBase const*)#1} &,md::LabelBase**,false>(int8x16_t *result, int8x16_t *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v469 = result;
LABEL_2:
  v462 = &a2[-1].u64[1];
  v6 = v469;
  while (1)
  {
    v7 = a2;
    v8 = (a2 - v6) >> 3;
    v469 = v6;
    if (v8 > 2)
    {
      break;
    }

    if (v8 < 2)
    {
      return result;
    }

    result = v6;
    v7 = a2;
    if (v8 == 2)
    {
      v296 = *v462;
      v297 = v6->i64[0];
      v470 = v6->i64[0];
      v471 = *&v296;
      v298 = *a3;
      v299 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v296);
      if (v299)
      {
        v300 = v299[3];
      }

      else
      {
        v300 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v296 + 616);
        v472 = &v471;
        *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v298 + 80), v296, &v472) + 3) = v300;
      }

      result = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v298 + 80), v297);
      if (result)
      {
        v427 = *&result[1].i64[1];
      }

      else
      {
        v427 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v297 + 616);
        v472 = &v470;
        result = std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v298 + 80), v297, &v472);
        *&result[1].i64[1] = v427;
      }

      if (v300 < v427)
      {
        v428 = v6->i64[0];
        v429 = &a2[-1].i64[1];
        v6->i64[0] = *v462;
LABEL_440:
        *v429 = v428;
        return result;
      }

      return result;
    }

LABEL_10:
    if (v8 <= 23)
    {
      v306 = &result->i64[1];
      v307 = result == v7 || v306 == v7;
      v308 = v307;
      if (a5)
      {
        if ((v308 & 1) == 0)
        {
          v309 = 0;
          do
          {
            v311 = v6->i64[0];
            v310 = v6->u64[1];
            v6 = v306;
            v470 = v311;
            v471 = *&v310;
            v312 = *a3;
            v313 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v310);
            if (v313)
            {
              v314 = v313[3];
              v315 = v311;
            }

            else
            {
              v314 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v310 + 616);
              v472 = &v471;
              *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v312 + 80), v310, &v472) + 3) = v314;
              v315 = v470;
            }

            result = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v312 + 80), v315);
            if (result)
            {
              v316 = *&result[1].i64[1];
            }

            else
            {
              v316 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v311 + 616);
              v472 = &v470;
              result = std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v312 + 80), v315, &v472);
              *&result[1].i64[1] = v316;
            }

            v317 = a2;
            if (v314 < v316)
            {
              v318 = v6->i64[0];
              v319 = v309;
              v320 = v469;
              while (1)
              {
                v321 = (v320 + v319);
                v321[1] = *v321;
                if (!v319)
                {
                  break;
                }

                v322 = *(v321 - 1);
                v470 = v322;
                v471 = *&v318;
                v323 = *a3;
                v324 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v318);
                if (v324)
                {
                  v325 = v324[3];
                  v326 = v322;
                }

                else
                {
                  v325 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v318 + 616);
                  v472 = &v471;
                  *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v323 + 80), v318, &v472) + 3) = v325;
                  v326 = v470;
                }

                result = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v323 + 80), v326);
                if (result)
                {
                  v327 = *&result[1].i64[1];
                }

                else
                {
                  v327 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v322 + 616);
                  v472 = &v470;
                  result = std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v323 + 80), v326, &v472);
                  *&result[1].i64[1] = v327;
                }

                v319 -= 8;
                v320 = v469;
                if (v325 >= v327)
                {
                  v328 = (v469 + v319 + 8);
                  goto LABEL_325;
                }
              }

              v328 = v469;
LABEL_325:
              *v328 = v318;
              v317 = a2;
            }

            v306 = &v6->i64[1];
            v309 += 8;
          }

          while (&v6->u64[1] != v317);
        }
      }

      else if ((v308 & 1) == 0)
      {
        do
        {
          v406 = *v469;
          v405 = v469[1];
          v469 = v306;
          v470 = v406;
          v471 = *&v405;
          v407 = *a3;
          v408 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v405);
          if (v408)
          {
            v409 = v408[3];
            v410 = v406;
          }

          else
          {
            v409 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v405 + 616);
            v472 = &v471;
            *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v407 + 80), v405, &v472) + 3) = v409;
            v410 = v470;
          }

          result = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v407 + 80), v410);
          if (result)
          {
            v411 = *&result[1].i64[1];
          }

          else
          {
            v411 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v406 + 616);
            v472 = &v470;
            result = std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v407 + 80), v410, &v472);
            *&result[1].i64[1] = v411;
          }

          v412 = v469;
          if (v409 < v411)
          {
            v413 = *v469;
            do
            {
              v414 = *(v412 - 2);
              *v412 = *(v412 - 1);
              v470 = v414;
              v471 = *&v413;
              v415 = *a3;
              v416 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v413);
              if (v416)
              {
                v417 = v416[3];
                v418 = v414;
              }

              else
              {
                v417 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v413 + 616);
                v472 = &v471;
                *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v415 + 80), v413, &v472) + 3) = v417;
                v418 = v470;
              }

              result = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v415 + 80), v418);
              if (result)
              {
                v419 = *&result[1].i64[1];
              }

              else
              {
                v419 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v414 + 616);
                v472 = &v470;
                result = std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v415 + 80), v418, &v472);
                *&result[1].i64[1] = v419;
              }

              --v412;
            }

            while (v417 < v419);
            *v412 = v413;
            v412 = v469;
          }

          v306 = v412 + 1;
        }

        while (v412 + 1 != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (result != v7)
      {
        v329 = (v8 - 2) >> 1;
        v330 = v329;
        v331 = v6;
        v463 = (a2 - v6) >> 3;
        v467 = v329;
        do
        {
          v332 = v330;
          if (v329 >= v330)
          {
            v333 = (2 * v330) | 1;
            v334 = v331 + v333;
            v335 = *a3;
            if (2 * v330 + 2 < v8)
            {
              v336 = *v334;
              v337 = v334[1];
              v470 = v337;
              v471 = *&v336;
              v338 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v335 + 80), v336);
              if (v338)
              {
                v339 = v338[3];
                v340 = v337;
              }

              else
              {
                v339 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v336 + 616);
                v472 = &v471;
                *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v335 + 80), v336, &v472) + 3) = v339;
                v340 = v470;
              }

              v341 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v335 + 80), v340);
              if (v341)
              {
                v342 = v341[3];
              }

              else
              {
                v342 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v337 + 616);
                v472 = &v470;
                *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v335 + 80), v340, &v472) + 3) = v342;
              }

              v8 = v463;
              if (v339 < v342)
              {
                ++v334;
                v333 = 2 * v332 + 2;
              }

              v335 = *a3;
              v331 = v469;
            }

            v343 = &v331->i64[v332];
            v344 = *v334;
            v345 = *v343;
            v470 = *v343;
            v471 = *&v344;
            v346 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v335 + 80), v344);
            if (v346)
            {
              v347 = v346[3];
              v348 = v345;
            }

            else
            {
              v347 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v344 + 616);
              v472 = &v471;
              *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v335 + 80), v344, &v472) + 3) = v347;
              v348 = v470;
            }

            result = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v335 + 80), v348);
            if (result)
            {
              v349 = *&result[1].i64[1];
            }

            else
            {
              v349 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v345 + 616);
              v472 = &v470;
              result = std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v335 + 80), v348, &v472);
              *&result[1].i64[1] = v349;
            }

            v329 = v467;
            v331 = v469;
            if (v347 >= v349)
            {
              v461 = v332;
              v350 = *v343;
              do
              {
                v351 = v334;
                *v343 = *v334;
                if (v329 < v333)
                {
                  break;
                }

                v352 = (2 * v333) | 1;
                v334 = v331 + v352;
                v333 = 2 * v333 + 2;
                v353 = *a3;
                if (v333 >= v8)
                {
                  v333 = v352;
                }

                else
                {
                  v354 = *v334;
                  v355 = v334[1];
                  v470 = v355;
                  v471 = *&v354;
                  v356 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v353 + 80), v354);
                  if (v356)
                  {
                    v357 = v356[3];
                    v358 = v355;
                  }

                  else
                  {
                    v357 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v354 + 616);
                    v472 = &v471;
                    *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v353 + 80), v354, &v472) + 3) = v357;
                    v358 = v470;
                  }

                  v359 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v353 + 80), v358);
                  if (v359)
                  {
                    v360 = v359[3];
                  }

                  else
                  {
                    v360 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v355 + 616);
                    v472 = &v470;
                    *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v353 + 80), v358, &v472) + 3) = v360;
                  }

                  v8 = v463;
                  if (v357 >= v360)
                  {
                    v333 = v352;
                  }

                  else
                  {
                    ++v334;
                  }

                  v353 = *a3;
                  v329 = v467;
                }

                v361 = *v334;
                v470 = v350;
                v471 = *&v361;
                v362 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v353 + 80), v361);
                if (v362)
                {
                  v363 = v362[3];
                  v364 = v350;
                }

                else
                {
                  v363 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v361 + 616);
                  v472 = &v471;
                  *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v353 + 80), v361, &v472) + 3) = v363;
                  v364 = v470;
                }

                result = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v353 + 80), v364);
                if (result)
                {
                  v365 = *&result[1].i64[1];
                }

                else
                {
                  v365 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v350 + 616);
                  v472 = &v470;
                  result = std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v353 + 80), v364, &v472);
                  *&result[1].i64[1] = v365;
                }

                v343 = v351;
                v331 = v469;
              }

              while (v363 >= v365);
              *v351 = v350;
              v332 = v461;
            }
          }

          v330 = v332 - 1;
        }

        while (v332);
        do
        {
          v366 = 0;
          v367 = v469;
          v464 = *v469;
          v368 = (v8 - 2) / 2;
          v468 = v368;
          do
          {
            v369 = &v367[v366];
            v370 = (v369 + 1);
            v371 = (2 * v366) | 1;
            v372 = 2 * v366 + 2;
            if (v372 >= v8)
            {
              v366 = (2 * v366) | 1;
            }

            else
            {
              v373 = v8;
              v376 = v369[2];
              v374 = (v369 + 2);
              v375 = v376;
              v377 = *(v374 - 1);
              v470 = v376;
              v471 = *&v377;
              v378 = *a3;
              v379 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v377);
              if (v379)
              {
                v380 = v379[3];
                v381 = v375;
              }

              else
              {
                v380 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v377 + 616);
                v472 = &v471;
                *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v378 + 80), v377, &v472) + 3) = v380;
                v381 = v470;
              }

              result = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v378 + 80), v381);
              if (result)
              {
                v382 = *&result[1].i64[1];
              }

              else
              {
                v382 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v375 + 616);
                v472 = &v470;
                result = std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v378 + 80), v381, &v472);
                *&result[1].i64[1] = v382;
              }

              v8 = v373;
              if (v380 >= v382)
              {
                v366 = v371;
              }

              else
              {
                v370 = v374;
                v366 = v372;
              }

              v368 = v468;
            }

            *v367 = *v370;
            v367 = v370;
          }

          while (v366 <= v368);
          v383 = &a2[-1].i64[1];
          v307 = v370 == &a2[-1].u64[1];
          a2 = (a2 - 8);
          if (v307)
          {
            *v370 = v464;
          }

          else
          {
            *v370 = *v383;
            *v383 = v464;
            v384 = (v370 - v469 + 8) >> 3;
            v385 = v384 < 2;
            v386 = v384 - 2;
            if (!v385)
            {
              v387 = v386 >> 1;
              v388 = &v469[v386 >> 1];
              v389 = *v388;
              v390 = *v370;
              v470 = *v370;
              v471 = *&v389;
              v391 = *a3;
              v392 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v389);
              if (v392)
              {
                v393 = v392[3];
                v394 = v390;
              }

              else
              {
                v393 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v389 + 616);
                v472 = &v471;
                *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v391 + 80), v389, &v472) + 3) = v393;
                v394 = v470;
              }

              result = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v391 + 80), v394);
              if (result)
              {
                v395 = *&result[1].i64[1];
              }

              else
              {
                v395 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v390 + 616);
                v472 = &v470;
                result = std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v391 + 80), v394, &v472);
                *&result[1].i64[1] = v395;
              }

              v396 = v469;
              if (v393 < v395)
              {
                v397 = *v370;
                do
                {
                  v398 = v388;
                  *v370 = *v388;
                  if (!v387)
                  {
                    break;
                  }

                  v387 = (v387 - 1) >> 1;
                  v388 = &v396[v387];
                  v399 = *v388;
                  v470 = v397;
                  v471 = *&v399;
                  v400 = *a3;
                  v401 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v399);
                  if (v401)
                  {
                    v402 = v401[3];
                    v403 = v397;
                  }

                  else
                  {
                    v402 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v399 + 616);
                    v472 = &v471;
                    *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v400 + 80), v399, &v472) + 3) = v402;
                    v403 = v470;
                  }

                  result = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v400 + 80), v403);
                  if (result)
                  {
                    v404 = *&result[1].i64[1];
                  }

                  else
                  {
                    v404 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v397 + 616);
                    v472 = &v470;
                    result = std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v400 + 80), v403, &v472);
                    *&result[1].i64[1] = v404;
                  }

                  v370 = v398;
                  v396 = v469;
                }

                while (v402 < v404);
                *v398 = v397;
              }
            }
          }

          v385 = v8-- <= 2;
        }

        while (!v385);
      }

      return result;
    }

    v9 = v8 >> 1;
    if (v8 < 0x81)
    {
      v16 = *result->i64;
      v17 = result->i64[v9];
      v470 = v17;
      v471 = v16;
      v18 = *a3;
      v19 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), *&v16);
      if (v19)
      {
        v20 = v19[3];
        v21 = v17;
      }

      else
      {
        v20 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], *&v16 + 616);
        v472 = &v471;
        *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v18 + 80), *&v16, &v472) + 3) = v20;
        v21 = v470;
      }

      v24 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v18 + 80), v21);
      if (v24)
      {
        v25 = v24[3];
      }

      else
      {
        v25 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v17 + 616);
        v472 = &v470;
        *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v18 + 80), v21, &v472) + 3) = v25;
      }

      v32 = *v462;
      v33 = *v469;
      v470 = *v469;
      v471 = *&v32;
      v34 = *a3;
      v35 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v32);
      if (v35)
      {
        v36 = v35[3];
        v37 = v33;
      }

      else
      {
        v36 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v32 + 616);
        v472 = &v471;
        *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v34 + 80), v32, &v472) + 3) = v36;
        v37 = v470;
      }

      v40 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v34 + 80), v37);
      if (v40)
      {
        v41 = v40[3];
      }

      else
      {
        v41 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v33 + 616);
        v472 = &v470;
        *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v34 + 80), v37, &v472) + 3) = v41;
      }

      v51 = v469;
      if (v20 >= v25)
      {
        if (v36 < v41)
        {
          v53 = *v469;
          *v469 = *v462;
          *v462 = v53;
          v54 = *v469;
          v55 = v469[v9];
          v470 = v55;
          v471 = *&v54;
          v56 = *a3;
          v57 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v54);
          if (v57)
          {
            v58 = v57[3];
            v59 = v55;
          }

          else
          {
            v58 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v54 + 616);
            v472 = &v471;
            *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v56 + 80), v54, &v472) + 3) = v58;
            v59 = v470;
          }

          v72 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v56 + 80), v59);
          if (v72)
          {
            v73 = v72[3];
          }

          else
          {
            v73 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v55 + 616);
            v472 = &v470;
            *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v56 + 80), v59, &v472) + 3) = v73;
          }

          v51 = v469;
          if (v58 < v73)
          {
            v79 = v469[v9];
            v469[v9] = *v469;
            v51 = v469;
            *v469 = v79;
          }
        }
      }

      else
      {
        v52 = v469[v9];
        if (v36 >= v41)
        {
          v469[v9] = *v469;
          *v469 = v52;
          v65 = *v462;
          v470 = v52;
          v471 = *&v65;
          v66 = *a3;
          v67 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v65);
          if (v67)
          {
            v68 = v67[3];
            v69 = v52;
          }

          else
          {
            v68 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v65 + 616);
            v472 = &v471;
            *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v66 + 80), v65, &v472) + 3) = v68;
            v69 = v470;
          }

          v76 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v66 + 80), v69);
          if (v76)
          {
            v77 = v76[3];
          }

          else
          {
            v77 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v52 + 616);
            v472 = &v470;
            *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v66 + 80), v69, &v472) + 3) = v77;
          }

          v51 = v469;
          if (v68 < v77)
          {
            v112 = *v469;
            *v469 = *v462;
            v51 = v469;
            *v462 = v112;
          }
        }

        else
        {
          v469[v9] = *v462;
          *v462 = v52;
        }
      }

      goto LABEL_175;
    }

    v10 = result->u64[v9];
    v11 = *result->i64;
    v470 = result->i64[0];
    v471 = *&v10;
    v12 = *a3;
    v13 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v10);
    if (v13)
    {
      v14 = v13[3];
      v15 = *&v11;
    }

    else
    {
      v14 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v10 + 616);
      v472 = &v471;
      *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v12 + 80), v10, &v472) + 3) = v14;
      v15 = v470;
    }

    v22 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v12 + 80), v15);
    if (v22)
    {
      v23 = v22[3];
    }

    else
    {
      v23 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], *&v11 + 616);
      v472 = &v470;
      *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v12 + 80), v15, &v472) + 3) = v23;
    }

    v26 = *v462;
    v27 = v469[v9];
    v470 = v27;
    v471 = *&v26;
    v28 = *a3;
    v29 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v26);
    if (v29)
    {
      v30 = v29[3];
      v31 = v27;
    }

    else
    {
      v30 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v26 + 616);
      v472 = &v471;
      *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v28 + 80), v26, &v472) + 3) = v30;
      v31 = v470;
    }

    v38 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v28 + 80), v31);
    if (v38)
    {
      v39 = v38[3];
    }

    else
    {
      v39 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v27 + 616);
      v472 = &v470;
      *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v28 + 80), v31, &v472) + 3) = v39;
    }

    v42 = v469;
    if (v14 >= v23)
    {
      if (v30 < v39)
      {
        v44 = v469[v9];
        v469[v9] = *v462;
        *v462 = v44;
        v45 = v469[v9];
        v46 = *v469;
        v470 = *v469;
        v471 = *&v45;
        v47 = *a3;
        v48 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v45);
        if (v48)
        {
          v49 = v48[3];
          v50 = v46;
        }

        else
        {
          v49 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v45 + 616);
          v472 = &v471;
          *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v47 + 80), v45, &v472) + 3) = v49;
          v50 = v470;
        }

        v70 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v47 + 80), v50);
        if (v70)
        {
          v71 = v70[3];
        }

        else
        {
          v71 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v46 + 616);
          v472 = &v470;
          *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v47 + 80), v50, &v472) + 3) = v71;
        }

        v42 = v469;
        if (v49 < v71)
        {
          v78 = *v469;
          *v469 = v469[v9];
          v42 = v469;
          v469[v9] = v78;
        }
      }
    }

    else
    {
      v43 = *v469;
      if (v30 >= v39)
      {
        *v469 = v469[v9];
        v469[v9] = v43;
        v60 = *v462;
        v470 = v43;
        v471 = *&v60;
        v61 = *a3;
        v62 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v60);
        if (v62)
        {
          v63 = v62[3];
          v64 = v43;
        }

        else
        {
          v63 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v60 + 616);
          v472 = &v471;
          *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v61 + 80), v60, &v472) + 3) = v63;
          v64 = v470;
        }

        v74 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v61 + 80), v64);
        if (v74)
        {
          v75 = v74[3];
        }

        else
        {
          v75 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v43 + 616);
          v472 = &v470;
          *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v61 + 80), v64, &v472) + 3) = v75;
        }

        v42 = v469;
        if (v63 < v75)
        {
          v80 = v469[v9];
          v469[v9] = *v462;
          v42 = v469;
          *v462 = v80;
        }
      }

      else
      {
        *v469 = *v462;
        *v462 = v43;
      }
    }

    v81 = v9 - 1;
    v82 = v42[v9 - 1];
    v83 = v42[1];
    v470 = v83;
    v471 = *&v82;
    v84 = *a3;
    v85 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v82);
    if (v85)
    {
      v86 = v85[3];
      v87 = v83;
    }

    else
    {
      v86 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v82 + 616);
      v472 = &v471;
      *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v84 + 80), v82, &v472) + 3) = v86;
      v87 = v470;
    }

    v88 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v84 + 80), v87);
    if (v88)
    {
      v89 = v88[3];
    }

    else
    {
      v89 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v83 + 616);
      v472 = &v470;
      *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v84 + 80), v87, &v472) + 3) = v89;
    }

    v90 = a2[-1].u64[0];
    v91 = v469[v81];
    v470 = v91;
    v471 = *&v90;
    v92 = *a3;
    v93 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v90);
    if (v93)
    {
      v94 = v93[3];
      v95 = v91;
    }

    else
    {
      v94 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v90 + 616);
      v472 = &v471;
      *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v92 + 80), v90, &v472) + 3) = v94;
      v95 = v470;
    }

    v96 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v92 + 80), v95);
    if (v96)
    {
      v97 = v96[3];
    }

    else
    {
      v97 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v91 + 616);
      v472 = &v470;
      *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v92 + 80), v95, &v472) + 3) = v97;
    }

    v98 = v469;
    if (v86 >= v89)
    {
      if (v94 < v97)
      {
        v100 = v469[v81];
        v469[v81] = a2[-1].i64[0];
        a2[-1].i64[0] = v100;
        v101 = v469[v81];
        v102 = v469[1];
        v470 = v102;
        v471 = *&v101;
        v103 = *a3;
        v104 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v101);
        if (v104)
        {
          v105 = v104[3];
          v106 = v102;
        }

        else
        {
          v105 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v101 + 616);
          v472 = &v471;
          *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v103 + 80), v101, &v472) + 3) = v105;
          v106 = v470;
        }

        v113 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v103 + 80), v106);
        if (v113)
        {
          v114 = v113[3];
        }

        else
        {
          v114 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v102 + 616);
          v472 = &v470;
          *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v103 + 80), v106, &v472) + 3) = v114;
        }

        v98 = v469;
        if (v105 < v114)
        {
          v117 = v469[1];
          v469[1] = v469[v81];
          v98 = v469;
          v469[v81] = v117;
        }
      }
    }

    else
    {
      v99 = v469[1];
      if (v94 >= v97)
      {
        v469[1] = v469[v81];
        v469[v81] = v99;
        v107 = a2[-1].u64[0];
        v470 = v99;
        v471 = *&v107;
        v108 = *a3;
        v109 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v107);
        if (v109)
        {
          v110 = v109[3];
          v111 = v99;
        }

        else
        {
          v110 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v107 + 616);
          v472 = &v471;
          *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v108 + 80), v107, &v472) + 3) = v110;
          v111 = v470;
        }

        v115 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v108 + 80), v111);
        if (v115)
        {
          v116 = v115[3];
        }

        else
        {
          v116 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v99 + 616);
          v472 = &v470;
          *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v108 + 80), v111, &v472) + 3) = v116;
        }

        v98 = v469;
        if (v110 < v116)
        {
          v118 = v469[v81];
          v469[v81] = a2[-1].i64[0];
          v98 = v469;
          a2[-1].i64[0] = v118;
        }
      }

      else
      {
        v469[1] = a2[-1].i64[0];
        a2[-1].i64[0] = v99;
      }
    }

    v119 = v9 + 1;
    v120 = v98[v9 + 1];
    v121 = v98[2];
    v470 = v121;
    v471 = *&v120;
    v122 = *a3;
    v123 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v120);
    if (v123)
    {
      v124 = v123[3];
      v125 = v121;
    }

    else
    {
      v124 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v120 + 616);
      v472 = &v471;
      *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v122 + 80), v120, &v472) + 3) = v124;
      v125 = v470;
    }

    v126 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v122 + 80), v125);
    if (v126)
    {
      v127 = v126[3];
    }

    else
    {
      v127 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v121 + 616);
      v472 = &v470;
      *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v122 + 80), v125, &v472) + 3) = v127;
    }

    v128 = a2[-2].u64[1];
    v129 = v469[v119];
    v470 = v129;
    v471 = *&v128;
    v130 = *a3;
    v131 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v128);
    if (v131)
    {
      v132 = v131[3];
      v133 = v129;
    }

    else
    {
      v132 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v128 + 616);
      v472 = &v471;
      *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v130 + 80), v128, &v472) + 3) = v132;
      v133 = v470;
    }

    v134 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v130 + 80), v133);
    if (v134)
    {
      v135 = v134[3];
    }

    else
    {
      v135 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v129 + 616);
      v472 = &v470;
      *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v130 + 80), v133, &v472) + 3) = v135;
    }

    v136 = v469;
    if (v124 >= v127)
    {
      if (v132 < v135)
      {
        v138 = v469[v119];
        v469[v119] = a2[-2].i64[1];
        a2[-2].i64[1] = v138;
        v139 = v469[v119];
        v140 = v469[2];
        v470 = v140;
        v471 = *&v139;
        v141 = *a3;
        v142 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v139);
        if (v142)
        {
          v143 = v142[3];
          v144 = v140;
        }

        else
        {
          v143 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v139 + 616);
          v472 = &v471;
          *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v141 + 80), v139, &v472) + 3) = v143;
          v144 = v470;
        }

        v150 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v141 + 80), v144);
        if (v150)
        {
          v151 = v150[3];
        }

        else
        {
          v151 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v140 + 616);
          v472 = &v470;
          *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v141 + 80), v144, &v472) + 3) = v151;
        }

        v136 = v469;
        if (v143 < v151)
        {
          v154 = v469[2];
          v469[2] = v469[v119];
          v136 = v469;
          v469[v119] = v154;
        }
      }
    }

    else
    {
      v137 = v469[2];
      if (v132 >= v135)
      {
        v469[2] = v469[v119];
        v469[v119] = v137;
        v145 = a2[-2].u64[1];
        v470 = v137;
        v471 = *&v145;
        v146 = *a3;
        v147 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v145);
        if (v147)
        {
          v148 = v147[3];
          v149 = v137;
        }

        else
        {
          v148 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v145 + 616);
          v472 = &v471;
          *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v146 + 80), v145, &v472) + 3) = v148;
          v149 = v470;
        }

        v152 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v146 + 80), v149);
        if (v152)
        {
          v153 = v152[3];
        }

        else
        {
          v153 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v137 + 616);
          v472 = &v470;
          *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v146 + 80), v149, &v472) + 3) = v153;
        }

        v136 = v469;
        if (v148 < v153)
        {
          v155 = v469[v119];
          v469[v119] = a2[-2].i64[1];
          v136 = v469;
          a2[-2].i64[1] = v155;
        }
      }

      else
      {
        v469[2] = a2[-2].i64[1];
        a2[-2].i64[1] = v137;
      }
    }

    v156 = v136[v9];
    v157 = v136[v81];
    v470 = v157;
    v471 = *&v156;
    v158 = *a3;
    v159 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v156);
    if (v159)
    {
      v160 = v159[3];
      v161 = v157;
    }

    else
    {
      v160 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v156 + 616);
      v472 = &v471;
      *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v158 + 80), v156, &v472) + 3) = v160;
      v161 = v470;
    }

    v162 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v158 + 80), v161);
    if (v162)
    {
      v163 = v162[3];
    }

    else
    {
      v163 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v157 + 616);
      v472 = &v470;
      *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v158 + 80), v161, &v472) + 3) = v163;
    }

    v164 = v469[v119];
    v165 = v469[v9];
    v470 = v165;
    v471 = *&v164;
    v166 = *a3;
    v167 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v164);
    if (v167)
    {
      v168 = v167[3];
      v169 = v165;
    }

    else
    {
      v168 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v164 + 616);
      v472 = &v471;
      *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v166 + 80), v164, &v472) + 3) = v168;
      v169 = v470;
    }

    v170 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v166 + 80), v169);
    if (v170)
    {
      v171 = v170[3];
    }

    else
    {
      v171 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v165 + 616);
      v472 = &v470;
      *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v166 + 80), v169, &v472) + 3) = v171;
    }

    if (v160 >= v163)
    {
      v173 = v469[v9];
      if (v168 >= v171)
      {
        goto LABEL_174;
      }

      v174 = v469[v119];
      v469[v9] = v174;
      v469[v119] = v173;
      v175 = v469[v81];
      v470 = v175;
      v471 = *&v174;
      v176 = *a3;
      v177 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v174);
      if (v177)
      {
        v178 = v177[3];
        v179 = v175;
      }

      else
      {
        v178 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v174 + 616);
        v472 = &v471;
        *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v176 + 80), v174, &v472) + 3) = v178;
        v179 = v470;
      }

      v185 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v176 + 80), v179);
      if (v185)
      {
        v186 = v185[3];
      }

      else
      {
        v186 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v175 + 616);
        v472 = &v470;
        *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v176 + 80), v179, &v472) + 3) = v186;
      }

      v173 = v469[v9];
      if (v178 >= v186)
      {
        goto LABEL_174;
      }

      v189 = v469[v81];
      v469[v81] = v173;
      v469[v9] = v189;
LABEL_173:
      v173 = v189;
      goto LABEL_174;
    }

    v172 = v469[v81];
    if (v168 >= v171)
    {
      v469[v81] = v469[v9];
      v469[v9] = v172;
      v180 = v469[v119];
      v470 = v172;
      v471 = *&v180;
      v181 = *a3;
      v182 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v180);
      if (v182)
      {
        v183 = v182[3];
        v184 = v172;
      }

      else
      {
        v183 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v180 + 616);
        v472 = &v471;
        *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v181 + 80), v180, &v472) + 3) = v183;
        v184 = v470;
      }

      v187 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v181 + 80), v184);
      if (v187)
      {
        v188 = v187[3];
      }

      else
      {
        v188 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v172 + 616);
        v472 = &v470;
        *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v181 + 80), v184, &v472) + 3) = v188;
      }

      v173 = v469[v9];
      if (v183 >= v188)
      {
        goto LABEL_174;
      }

      v189 = v469[v119];
      v469[v9] = v189;
      v469[v119] = v173;
      goto LABEL_173;
    }

    v469[v81] = v469[v119];
    v469[v119] = v172;
    v173 = v469[v9];
LABEL_174:
    v190 = *v469;
    *v469 = v173;
    v469[v9] = v190;
    v51 = v469;
LABEL_175:
    --a4;
    v191 = *v51;
    if ((a5 & 1) != 0
      || ((v192 = *(v51 - 1), v470 = *v51, v471 = *&v192, v193 = *a3, (v194 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v192)) == 0) ? (v195 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v192 + 616), v472 = &v471, *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v193 + 80), v192, &v472) + 3) = v195, v196 = v470) : (v195 = v194[3], v196 = v191),
          (v197 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v193 + 80), v196)) == 0 ? (v198 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v191 + 616), v472 = &v470, *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v193 + 80), v196, &v472) + 3) = v198) : (v198 = v197[3]),
          v51 = v469,
          v191 = *v469,
          v195 < v198))
    {
      v199 = v51;
      do
      {
        v201 = v199[1];
        ++v199;
        v200 = v201;
        v470 = v191;
        v471 = *&v201;
        v202 = *a3;
        v203 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v201);
        if (v203)
        {
          v204 = v203[3];
          v205 = v191;
        }

        else
        {
          v204 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v200 + 616);
          v472 = &v471;
          *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v202 + 80), v200, &v472) + 3) = v204;
          v205 = v470;
        }

        v206 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v202 + 80), v205);
        if (v206)
        {
          v207 = v206[3];
        }

        else
        {
          v207 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v191 + 616);
          v472 = &v470;
          *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v202 + 80), v205, &v472) + 3) = v207;
        }
      }

      while (v204 < v207);
      v208 = (v199 - 1);
      v209 = a2;
      if (v199 - 1 == v469)
      {
        v209 = a2;
        do
        {
          if (v199 >= v209)
          {
            break;
          }

          v219 = v209[-1].u64[1];
          v209 = (v209 - 8);
          v218 = v219;
          v470 = v191;
          v471 = *&v219;
          v220 = *a3;
          v221 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v219);
          if (v221)
          {
            v222 = v221[3];
            v223 = v191;
          }

          else
          {
            v222 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v218 + 616);
            v472 = &v471;
            *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v220 + 80), v218, &v472) + 3) = v222;
            v223 = v470;
          }

          v224 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v220 + 80), v223);
          if (v224)
          {
            v225 = v224[3];
          }

          else
          {
            v225 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v191 + 616);
            v472 = &v470;
            *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v220 + 80), v223, &v472) + 3) = v225;
          }
        }

        while (v222 >= v225);
      }

      else
      {
        do
        {
          v211 = v209[-1].u64[1];
          v209 = (v209 - 8);
          v210 = v211;
          v470 = v191;
          v471 = *&v211;
          v212 = *a3;
          v213 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v211);
          if (v213)
          {
            v214 = v213[3];
            v215 = v191;
          }

          else
          {
            v214 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v210 + 616);
            v472 = &v471;
            *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v212 + 80), v210, &v472) + 3) = v214;
            v215 = v470;
          }

          v216 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v212 + 80), v215);
          if (v216)
          {
            v217 = v216[3];
          }

          else
          {
            v217 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v191 + 616);
            v472 = &v470;
            *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v212 + 80), v215, &v472) + 3) = v217;
          }
        }

        while (v214 >= v217);
      }

      if (v199 < v209)
      {
        v226 = v199;
        v227 = v209;
        do
        {
          v228 = *v226;
          *v226 = *v227;
          *v227 = v228;
          do
          {
            v230 = v226[1];
            ++v226;
            v229 = v230;
            v470 = v191;
            v471 = *&v230;
            v231 = *a3;
            v232 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v230);
            if (v232)
            {
              v233 = v232[3];
              v234 = v191;
            }

            else
            {
              v233 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v229 + 616);
              v472 = &v471;
              *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v231 + 80), v229, &v472) + 3) = v233;
              v234 = v470;
            }

            v235 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v231 + 80), v234);
            if (v235)
            {
              v236 = v235[3];
            }

            else
            {
              v236 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v191 + 616);
              v472 = &v470;
              *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v231 + 80), v234, &v472) + 3) = v236;
            }
          }

          while (v233 < v236);
          v208 = (v226 - 1);
          do
          {
            v238 = *--v227;
            v237 = v238;
            v470 = v191;
            v471 = *&v238;
            v239 = *a3;
            v240 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v238);
            if (v240)
            {
              v241 = v240[3];
              v242 = v191;
            }

            else
            {
              v241 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v237 + 616);
              v472 = &v471;
              *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v239 + 80), v237, &v472) + 3) = v241;
              v242 = v470;
            }

            v243 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v239 + 80), v242);
            if (v243)
            {
              v244 = v243[3];
            }

            else
            {
              v244 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v191 + 616);
              v472 = &v470;
              *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v239 + 80), v242, &v472) + 3) = v244;
            }
          }

          while (v241 >= v244);
        }

        while (v226 < v227);
      }

      result = v469;
      if (v208 != v469)
      {
        *v469 = v208->i64[0];
      }

      v208->i64[0] = v191;
      if (v199 < v209)
      {
        goto LABEL_233;
      }

      v245 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,ARArrivalFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::{lambda(md::LabelBase const*,md::LabelBase const*)#1} &,md::LabelBase**>(v469, v208, a3);
      v6 = &v208->u64[1];
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,ARArrivalFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::{lambda(md::LabelBase const*,md::LabelBase const*)#1} &,md::LabelBase**>(&v208->u64[1], a2, a3);
      if (result)
      {
        a2 = v208;
        if (!v245)
        {
          goto LABEL_2;
        }

        return result;
      }

      result = v469;
      if (!v245)
      {
LABEL_233:
        result = std::__introsort<std::_ClassicAlgPolicy,ARArrivalFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::{lambda(md::LabelBase const*,md::LabelBase const*)#1} &,md::LabelBase**,false>(result->i64, v208, a3, a4, a5 & 1);
        a5 = 0;
        v6 = &v208->u64[1];
      }
    }

    else
    {
      v246 = *v462;
      v470 = *v462;
      v471 = *&v191;
      v247 = *a3;
      v248 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v191);
      if (v248)
      {
        v249 = v248[3];
        v250 = v246;
      }

      else
      {
        v249 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v191 + 616);
        v472 = &v471;
        *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v247 + 80), v191, &v472) + 3) = v249;
        v250 = v470;
      }

      result = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v247 + 80), v250);
      if (result)
      {
        v251 = *&result[1].i64[1];
      }

      else
      {
        v251 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v246 + 616);
        v472 = &v470;
        result = std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v247 + 80), v250, &v472);
        *&result[1].i64[1] = v251;
      }

      v6 = v469;
      if (v249 >= v251)
      {
        v259 = (v469 + 1);
        do
        {
          v6 = v259;
          if (v259 >= a2)
          {
            break;
          }

          v260 = v259->i64[0];
          v470 = v259->i64[0];
          v471 = *&v191;
          v261 = *a3;
          v262 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v191);
          if (v262)
          {
            v263 = v262[3];
            v264 = v260;
          }

          else
          {
            v263 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v191 + 616);
            v472 = &v471;
            *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v261 + 80), v191, &v472) + 3) = v263;
            v264 = v470;
          }

          result = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v261 + 80), v264);
          if (result)
          {
            v265 = *&result[1].i64[1];
          }

          else
          {
            v265 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v260 + 616);
            v472 = &v470;
            result = std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v261 + 80), v264, &v472);
            *&result[1].i64[1] = v265;
          }

          v259 = &v6->u64[1];
        }

        while (v263 >= v265);
      }

      else
      {
        do
        {
          v253 = v6->i64[1];
          v6 = (v6 + 8);
          v252 = v253;
          v470 = v253;
          v471 = *&v191;
          v254 = *a3;
          v255 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v191);
          if (v255)
          {
            v256 = v255[3];
            v257 = v252;
          }

          else
          {
            v256 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v191 + 616);
            v472 = &v471;
            *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v254 + 80), v191, &v472) + 3) = v256;
            v257 = v470;
          }

          result = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v254 + 80), v257);
          if (result)
          {
            v258 = *&result[1].i64[1];
          }

          else
          {
            v258 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v252 + 616);
            v472 = &v470;
            result = std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v254 + 80), v257, &v472);
            *&result[1].i64[1] = v258;
          }
        }

        while (v256 >= v258);
      }

      v266 = a2;
      if (v6 < a2)
      {
        v266 = a2;
        do
        {
          v268 = v266[-1].i64[1];
          v266 = (v266 - 8);
          v267 = v268;
          v470 = v268;
          v471 = *&v191;
          v269 = *a3;
          v270 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v191);
          if (v270)
          {
            v271 = v270[3];
            v272 = v267;
          }

          else
          {
            v271 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v191 + 616);
            v472 = &v471;
            *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v269 + 80), v191, &v472) + 3) = v271;
            v272 = v470;
          }

          result = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v269 + 80), v272);
          if (result)
          {
            v273 = *&result[1].i64[1];
          }

          else
          {
            v273 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v267 + 616);
            v472 = &v470;
            result = std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v269 + 80), v272, &v472);
            *&result[1].i64[1] = v273;
          }
        }

        while (v271 < v273);
      }

      while (v6 < v266)
      {
        v274 = v6->i64[0];
        v6->i64[0] = v266->i64[0];
        v266->i64[0] = v274;
        do
        {
          v276 = v6->i64[1];
          v6 = (v6 + 8);
          v275 = v276;
          v470 = v276;
          v471 = *&v191;
          v277 = *a3;
          v278 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v191);
          if (v278)
          {
            v279 = v278[3];
            v280 = v275;
          }

          else
          {
            v279 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v191 + 616);
            v472 = &v471;
            *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v277 + 80), v191, &v472) + 3) = v279;
            v280 = v470;
          }

          v281 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v277 + 80), v280);
          if (v281)
          {
            v282 = v281[3];
          }

          else
          {
            v282 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v275 + 616);
            v472 = &v470;
            *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v277 + 80), v280, &v472) + 3) = v282;
          }
        }

        while (v279 >= v282);
        do
        {
          v284 = v266[-1].i64[1];
          v266 = (v266 - 8);
          v283 = v284;
          v470 = v284;
          v471 = *&v191;
          v285 = *a3;
          v286 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v191);
          if (v286)
          {
            v287 = v286[3];
            v288 = v283;
          }

          else
          {
            v287 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v191 + 616);
            v472 = &v471;
            *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v285 + 80), v191, &v472) + 3) = v287;
            v288 = v470;
          }

          result = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v285 + 80), v288);
          if (result)
          {
            v289 = *&result[1].i64[1];
          }

          else
          {
            v289 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v283 + 616);
            v472 = &v470;
            result = std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v285 + 80), v288, &v472);
            *&result[1].i64[1] = v289;
          }
        }

        while (v287 < v289);
      }

      v290 = &v6[-1].i64[1];
      if (&v6[-1].u64[1] != v469)
      {
        *v469 = *v290;
      }

      a5 = 0;
      *v290 = v191;
    }
  }

  result = v6;
  if (v8 != 3)
  {
    if (v8 == 4)
    {

      return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,ARArrivalFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::{lambda(md::LabelBase const*,md::LabelBase const*)#1} &,md::LabelBase**,0>(v6, &v6->u64[1], &v6[1], v462, a3);
    }

    if (v8 == 5)
    {
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,ARArrivalFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::{lambda(md::LabelBase const*,md::LabelBase const*)#1} &,md::LabelBase**,0>(v6, &v6->u64[1], &v6[1], &v6[1].u64[1], a3);
      v291 = *v462;
      v292 = v6[1].u64[1];
      v470 = v292;
      v471 = *&v291;
      v293 = *a3;
      v294 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v291);
      if (v294)
      {
        v295 = v294[3];
      }

      else
      {
        v295 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v291 + 616);
        v472 = &v471;
        *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v293 + 80), v291, &v472) + 3) = v295;
      }

      result = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v293 + 80), v292);
      if (result)
      {
        v420 = *&result[1].i64[1];
      }

      else
      {
        v420 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v292 + 616);
        v472 = &v470;
        result = std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v293 + 80), v292, &v472);
        *&result[1].i64[1] = v420;
      }

      if (v295 >= v420)
      {
        return result;
      }

      v421 = v6[1].u64[1];
      v6[1].i64[1] = *v462;
      *v462 = v421;
      v422 = v6[1].u64[0];
      v423 = v6[1].u64[1];
      v470 = v422;
      v471 = *&v423;
      v424 = *a3;
      v425 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v423);
      if (v425)
      {
        v426 = v425[3];
      }

      else
      {
        v426 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v423 + 616);
        v472 = &v471;
        *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v424 + 80), v423, &v472) + 3) = v426;
      }

      result = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v424 + 80), v422);
      if (result)
      {
        v446 = *&result[1].i64[1];
      }

      else
      {
        v446 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v422 + 616);
        v472 = &v470;
        result = std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v424 + 80), v422, &v472);
        *&result[1].i64[1] = v446;
      }

      if (v426 >= v446)
      {
        return result;
      }

      v447 = v6[1].i64[0];
      v448 = v6[1].u64[1];
      v449 = v6->u64[1];
      v6[1].i64[0] = v448;
      v6[1].i64[1] = v447;
      v470 = v449;
      v471 = *&v448;
      v450 = *a3;
      v451 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v448);
      if (v451)
      {
        v452 = v451[3];
      }

      else
      {
        v452 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v448 + 616);
        v472 = &v471;
        *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v450 + 80), v448, &v472) + 3) = v452;
      }

      result = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v450 + 80), v449);
      if (result)
      {
        v453 = *&result[1].i64[1];
      }

      else
      {
        v453 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v449 + 616);
        v472 = &v470;
        result = std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v450 + 80), v449, &v472);
        *&result[1].i64[1] = v453;
      }

      if (v452 >= v453)
      {
        return result;
      }

      v454 = v6->i64[1];
      v441 = v6[1].u64[0];
      v440 = v6->i64[0];
      v6->i64[1] = v441;
      v6[1].i64[0] = v454;
      goto LABEL_471;
    }

    goto LABEL_10;
  }

  v301 = v6->i64[0];
  v302 = v6->u64[1];
  v470 = v6->i64[0];
  v471 = *&v302;
  v303 = *a3;
  v304 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v302);
  if (v304)
  {
    v305 = v304[3];
  }

  else
  {
    v305 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v302 + 616);
    v472 = &v471;
    *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v303 + 80), v302, &v472) + 3) = v305;
  }

  v430 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v303 + 80), v301);
  if (v430)
  {
    v431 = v430[3];
  }

  else
  {
    v431 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v301 + 616);
    v472 = &v470;
    *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v303 + 80), v301, &v472) + 3) = v431;
  }

  v432 = *v462;
  v433 = v6->u64[1];
  v470 = v433;
  v471 = *&v432;
  v434 = *a3;
  v435 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v432);
  if (v435)
  {
    v436 = v435[3];
  }

  else
  {
    v436 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v432 + 616);
    v472 = &v471;
    *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v434 + 80), v432, &v472) + 3) = v436;
  }

  result = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v434 + 80), v433);
  if (result)
  {
    v437 = *&result[1].i64[1];
  }

  else
  {
    v437 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v433 + 616);
    v472 = &v470;
    result = std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v434 + 80), v433, &v472);
    *&result[1].i64[1] = v437;
  }

  if (v305 >= v431)
  {
    if (v436 >= v437)
    {
      return result;
    }

    v439 = v6->u64[1];
    v6->i64[1] = *v462;
    *v462 = v439;
    v440 = v6->i64[0];
    v441 = v6->u64[1];
LABEL_471:
    v470 = v440;
    v471 = *&v441;
    v455 = *a3;
    v456 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v441);
    if (v456)
    {
      v457 = v456[3];
    }

    else
    {
      v457 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v441 + 616);
      v472 = &v471;
      *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v455 + 80), v441, &v472) + 3) = v457;
    }

    result = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v455 + 80), v440);
    if (result)
    {
      v458 = *&result[1].i64[1];
    }

    else
    {
      v458 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v440 + 616);
      v472 = &v470;
      result = std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v455 + 80), v440, &v472);
      *&result[1].i64[1] = v458;
    }

    if (v457 < v458)
    {
      *v6 = vextq_s8(*v6, *v6, 8uLL);
    }

    return result;
  }

  v438 = v6->i64[0];
  if (v436 >= v437)
  {
    v6->i64[0] = v6->i64[1];
    v6->i64[1] = v438;
    v442 = *v462;
    v470 = v438;
    v471 = *&v442;
    v443 = *a3;
    v444 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v442);
    if (v444)
    {
      v445 = v444[3];
    }

    else
    {
      v445 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v442 + 616);
      v472 = &v471;
      *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v443 + 80), v442, &v472) + 3) = v445;
    }

    result = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v443 + 80), v438);
    if (result)
    {
      v459 = *&result[1].i64[1];
    }

    else
    {
      v459 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v438 + 616);
      v472 = &v470;
      result = std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v443 + 80), v438, &v472);
      *&result[1].i64[1] = v459;
    }

    if (v445 < v459)
    {
      v428 = v6->i64[1];
      v429 = &a2[-1].i64[1];
      v6->i64[1] = *v462;
      goto LABEL_440;
    }
  }

  else
  {
    v6->i64[0] = *v462;
    *v462 = v438;
  }

  return result;
}

double *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,ARArrivalFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::{lambda(md::LabelBase const*,md::LabelBase const*)#1} &,md::LabelBase**,0>(unint64_t *a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t *a5)
{
  v10 = *a2;
  v11 = *a1;
  v65 = *a1;
  v66 = v10;
  v12 = *a5;
  v13 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a5 + 80), v10);
  if (v13)
  {
    v14 = v13[3];
    v15 = v11;
  }

  else
  {
    v14 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a5[1], v10 + 616);
    v67 = &v66;
    *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v12 + 80), v10, &v67) + 3) = v14;
    v15 = v65;
  }

  v16 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v12 + 80), v15);
  if (v16)
  {
    v17 = v16[3];
  }

  else
  {
    v17 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a5[1], v11 + 616);
    v67 = &v65;
    *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v12 + 80), v15, &v67) + 3) = v17;
  }

  v18 = *a3;
  v19 = *a2;
  v65 = *a2;
  v66 = v18;
  v20 = *a5;
  v21 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a5 + 80), v18);
  if (v21)
  {
    v22 = v21[3];
    v23 = v19;
  }

  else
  {
    v22 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a5[1], v18 + 616);
    v67 = &v66;
    *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v20 + 80), v18, &v67) + 3) = v22;
    v23 = v65;
  }

  v24 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v20 + 80), v23);
  if (v24)
  {
    v25 = v24[3];
  }

  else
  {
    v25 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a5[1], v19 + 616);
    v67 = &v65;
    *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v20 + 80), v23, &v67) + 3) = v25;
  }

  if (v14 >= v17)
  {
    if (v22 < v25)
    {
      v27 = *a2;
      *a2 = *a3;
      *a3 = v27;
      v28 = *a2;
      v29 = *a1;
      v65 = *a1;
      v66 = v28;
      v30 = *a5;
      v31 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a5 + 80), v28);
      if (v31)
      {
        v32 = v31[3];
      }

      else
      {
        v32 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a5[1], v28 + 616);
        v67 = &v66;
        *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v30 + 80), v28, &v67) + 3) = v32;
      }

      v37 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v30 + 80), v29);
      if (v37)
      {
        v38 = v37[3];
      }

      else
      {
        v38 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a5[1], v29 + 616);
        v67 = &v65;
        *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v30 + 80), v29, &v67) + 3) = v38;
      }

      if (v32 < v38)
      {
        v41 = *a1;
        *a1 = *a2;
        *a2 = v41;
      }
    }
  }

  else
  {
    v26 = *a1;
    if (v22 >= v25)
    {
      *a1 = *a2;
      *a2 = v26;
      v33 = *a3;
      v65 = v26;
      v66 = v33;
      v34 = *a5;
      v35 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a5 + 80), v33);
      if (v35)
      {
        v36 = v35[3];
      }

      else
      {
        v36 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a5[1], v33 + 616);
        v67 = &v66;
        *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v34 + 80), v33, &v67) + 3) = v36;
      }

      v39 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v34 + 80), v26);
      if (v39)
      {
        v40 = v39[3];
      }

      else
      {
        v40 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a5[1], v26 + 616);
        v67 = &v65;
        *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v34 + 80), v26, &v67) + 3) = v40;
      }

      if (v36 < v40)
      {
        v42 = *a2;
        *a2 = *a3;
        *a3 = v42;
      }
    }

    else
    {
      *a1 = *a3;
      *a3 = v26;
    }
  }

  v43 = *a4;
  v44 = *a3;
  v65 = *a3;
  v66 = v43;
  v45 = *a5;
  v46 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a5 + 80), v43);
  if (v46)
  {
    v47 = v46[3];
  }

  else
  {
    v47 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a5[1], v43 + 616);
    v67 = &v66;
    *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v45 + 80), v43, &v67) + 3) = v47;
  }

  result = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v45 + 80), v44);
  if (result)
  {
    v49 = result[3];
  }

  else
  {
    v49 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a5[1], v44 + 616);
    v67 = &v65;
    result = std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v45 + 80), v44, &v67);
    result[3] = v49;
  }

  if (v47 < v49)
  {
    v50 = *a3;
    *a3 = *a4;
    *a4 = v50;
    v51 = *a3;
    v52 = *a2;
    v65 = *a2;
    v66 = v51;
    v53 = *a5;
    v54 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a5 + 80), v51);
    if (v54)
    {
      v55 = v54[3];
    }

    else
    {
      v55 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a5[1], v51 + 616);
      v67 = &v66;
      *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v53 + 80), v51, &v67) + 3) = v55;
    }

    result = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v53 + 80), v52);
    if (result)
    {
      v56 = result[3];
    }

    else
    {
      v56 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a5[1], v52 + 616);
      v67 = &v65;
      result = std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v53 + 80), v52, &v67);
      result[3] = v56;
    }

    if (v55 < v56)
    {
      v57 = *a2;
      *a2 = *a3;
      *a3 = v57;
      v58 = *a2;
      v59 = *a1;
      v65 = *a1;
      v66 = v58;
      v60 = *a5;
      v61 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a5 + 80), v58);
      if (v61)
      {
        v62 = v61[3];
      }

      else
      {
        v62 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a5[1], v58 + 616);
        v67 = &v66;
        *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v60 + 80), v58, &v67) + 3) = v62;
      }

      result = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v60 + 80), v59);
      if (result)
      {
        v63 = result[3];
      }

      else
      {
        v63 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a5[1], v59 + 616);
        v67 = &v65;
        result = std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v60 + 80), v59, &v67);
        result[3] = v63;
      }

      if (v62 < v63)
      {
        v64 = *a1;
        *a1 = *a2;
        *a2 = v64;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,ARArrivalFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::{lambda(md::LabelBase const*,md::LabelBase const*)#1} &,md::LabelBase**>(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v5 = a1;
  v6 = a2 - a1;
  if (v6 <= 2)
  {
    if (v6 < 2)
    {
      return 1;
    }

    if (v6 == 2)
    {
      v7 = *(a2 - 1);
      v8 = *a1;
      v125 = *a1;
      v126 = v7;
      v9 = *a3;
      v10 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v7);
      if (v10)
      {
        v11 = v10[3];
      }

      else
      {
        v11 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v7 + 616);
        v127 = &v126;
        *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v9 + 80), v7, &v127) + 3) = v11;
      }

      v58 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v9 + 80), v8);
      if (v58)
      {
        v59 = v58[3];
      }

      else
      {
        v59 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v8 + 616);
        v127 = &v125;
        *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v9 + 80), v8, &v127) + 3) = v59;
      }

      if (v11 >= v59)
      {
        return 1;
      }

      v60 = *v5;
      *v5 = *(a2 - 1);
      goto LABEL_53;
    }

    goto LABEL_13;
  }

  if (v6 != 3)
  {
    if (v6 == 4)
    {
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,ARArrivalFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::{lambda(md::LabelBase const*,md::LabelBase const*)#1} &,md::LabelBase**,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
      return 1;
    }

    if (v6 != 5)
    {
LABEL_13:
      v23 = *a1;
      v22 = a1[1];
      v125 = *a1;
      v126 = v22;
      v24 = *a3;
      v25 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v22);
      if (v25)
      {
        v26 = v25[3];
        v27 = v23;
      }

      else
      {
        v26 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v22 + 616);
        v127 = &v126;
        *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v24 + 80), v22, &v127) + 3) = v26;
        v27 = v125;
      }

      v41 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v24 + 80), v27);
      if (v41)
      {
        v42 = v41[3];
      }

      else
      {
        v42 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v23 + 616);
        v127 = &v125;
        *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v24 + 80), v27, &v127) + 3) = v42;
      }

      v44 = v5[1];
      v43 = v5[2];
      v125 = v44;
      v126 = v43;
      v45 = *a3;
      v46 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v43);
      if (v46)
      {
        v47 = v46[3];
        v48 = v44;
      }

      else
      {
        v47 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v43 + 616);
        v127 = &v126;
        *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v45 + 80), v43, &v127) + 3) = v47;
        v48 = v125;
      }

      v49 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v45 + 80), v48);
      if (v49)
      {
        v50 = v49[3];
      }

      else
      {
        v50 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v44 + 616);
        v127 = &v125;
        *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v45 + 80), v48, &v127) + 3) = v50;
      }

      if (v26 >= v42)
      {
        if (v47 < v50)
        {
          v52 = v5[1];
          v53 = v5[2];
          v54 = *v5;
          v5[1] = v53;
          v5[2] = v52;
          v125 = v54;
          v126 = v53;
          v55 = *a3;
          v56 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v53);
          if (v56)
          {
            v57 = v56[3];
          }

          else
          {
            v57 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v53 + 616);
            v127 = &v126;
            *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v55 + 80), v53, &v127) + 3) = v57;
          }

          v87 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v55 + 80), v54);
          if (v87)
          {
            v88 = v87[3];
          }

          else
          {
            v88 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v54 + 616);
            v127 = &v125;
            *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v55 + 80), v54, &v127) + 3) = v88;
          }

          if (v57 < v88)
          {
            *v5 = vextq_s8(*v5, *v5, 8uLL);
          }
        }
      }

      else
      {
        v51 = *v5;
        if (v47 >= v50)
        {
          v73 = v5[2];
          *v5 = v5[1];
          v5[1] = v51;
          v125 = v51;
          v126 = v73;
          v74 = *a3;
          v75 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v73);
          if (v75)
          {
            v76 = v75[3];
          }

          else
          {
            v76 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v73 + 616);
            v127 = &v126;
            *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v74 + 80), v73, &v127) + 3) = v76;
          }

          v89 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v74 + 80), v51);
          if (v89)
          {
            v90 = v89[3];
          }

          else
          {
            v90 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v51 + 616);
            v127 = &v125;
            *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v74 + 80), v51, &v127) + 3) = v90;
          }

          if (v76 < v90)
          {
            *(v5 + 1) = vextq_s8(*(v5 + 1), *(v5 + 1), 8uLL);
          }
        }

        else
        {
          *v5 = v5[2];
          v5[2] = v51;
        }
      }

      v91 = v5 + 3;
      if (v5 + 3 != a2)
      {
        v92 = 0;
        v93 = 0;
        v94 = v5 + 2;
        v124 = a2;
        while (1)
        {
          v95 = *v91;
          v96 = *v94;
          v125 = *v94;
          v126 = v95;
          v97 = *a3;
          v98 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v95);
          if (v98)
          {
            v99 = v98[3];
            v100 = v96;
          }

          else
          {
            v99 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v95 + 616);
            v127 = &v126;
            *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v97 + 80), v95, &v127) + 3) = v99;
            v100 = v125;
          }

          v101 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v97 + 80), v100);
          if (v101)
          {
            v102 = v101[3];
          }

          else
          {
            v102 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v96 + 616);
            v127 = &v125;
            *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v97 + 80), v100, &v127) + 3) = v102;
          }

          if (v99 >= v102)
          {
            v114 = v124;
          }

          else
          {
            v103 = *v91;
            v104 = v92;
            while (1)
            {
              *(v5 + v104 + 24) = *(v5 + v104 + 16);
              if (v104 == -16)
              {
                break;
              }

              v105 = v5;
              v106 = *(v5 + v104 + 8);
              v125 = v106;
              v126 = v103;
              v107 = *a3;
              v108 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v103);
              if (v108)
              {
                v109 = v108[3];
                v110 = v106;
              }

              else
              {
                v109 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v103 + 616);
                v127 = &v126;
                *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v107 + 80), v103, &v127) + 3) = v109;
                v110 = v125;
              }

              v111 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v107 + 80), v110);
              if (v111)
              {
                v112 = v111[3];
              }

              else
              {
                v112 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v106 + 616);
                v127 = &v125;
                *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v107 + 80), v110, &v127) + 3) = v112;
              }

              v5 = v105;
              v104 -= 8;
              if (v109 >= v112)
              {
                v113 = (v105 + v104 + 24);
                goto LABEL_111;
              }
            }

            v113 = v5;
LABEL_111:
            *v113 = v103;
            ++v93;
            v114 = v124;
            if (v93 == 8)
            {
              return v91 + 1 == v124;
            }
          }

          v94 = v91;
          v92 += 8;
          if (++v91 == v114)
          {
            return 1;
          }
        }
      }

      return 1;
    }

    std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,ARArrivalFeatureDedupingGroup::prepareForCollision(md::LabelManager *)::{lambda(md::LabelBase const*,md::LabelBase const*)#1} &,md::LabelBase**,0>(a1, a1 + 1, a1 + 2, a1 + 3, a3);
    v12 = *(a2 - 1);
    v13 = v5[3];
    v125 = v13;
    v126 = v12;
    v14 = *a3;
    v15 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v12);
    if (v15)
    {
      v16 = v15[3];
    }

    else
    {
      v16 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v12 + 616);
      v127 = &v126;
      *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v14 + 80), v12, &v127) + 3) = v16;
    }

    v61 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v14 + 80), v13);
    if (v61)
    {
      v62 = v61[3];
    }

    else
    {
      v62 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v13 + 616);
      v127 = &v125;
      *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v14 + 80), v13, &v127) + 3) = v62;
    }

    if (v16 >= v62)
    {
      return 1;
    }

    v63 = v5[3];
    v5[3] = *(a2 - 1);
    *(a2 - 1) = v63;
    v64 = v5[2];
    v65 = v5[3];
    v125 = v64;
    v126 = v65;
    v66 = *a3;
    v67 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v65);
    if (v67)
    {
      v68 = v67[3];
    }

    else
    {
      v68 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v65 + 616);
      v127 = &v126;
      *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v66 + 80), v65, &v127) + 3) = v68;
    }

    v77 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v66 + 80), v64);
    if (v77)
    {
      v78 = v77[3];
    }

    else
    {
      v78 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v64 + 616);
      v127 = &v125;
      *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v66 + 80), v64, &v127) + 3) = v78;
    }

    if (v68 >= v78)
    {
      return 1;
    }

    v79 = v5[2];
    v80 = v5[3];
    v81 = v5[1];
    v5[2] = v80;
    v5[3] = v79;
    v125 = v81;
    v126 = v80;
    v82 = *a3;
    v83 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v80);
    if (v83)
    {
      v84 = v83[3];
    }

    else
    {
      v84 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v80 + 616);
      v127 = &v126;
      *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v82 + 80), v80, &v127) + 3) = v84;
    }

    v116 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v82 + 80), v81);
    if (v116)
    {
      v117 = v116[3];
    }

    else
    {
      v117 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v81 + 616);
      v127 = &v125;
      *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v82 + 80), v81, &v127) + 3) = v117;
    }

    if (v84 >= v117)
    {
      return 1;
    }

    v118 = v5[1];
    v40 = v5[2];
    v39 = *v5;
    v5[1] = v40;
    v5[2] = v118;
LABEL_121:
    v125 = v39;
    v126 = v40;
    v119 = *a3;
    v120 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v40);
    if (v120)
    {
      v121 = v120[3];
    }

    else
    {
      v121 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v40 + 616);
      v127 = &v126;
      *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v119 + 80), v40, &v127) + 3) = v121;
    }

    v122 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v119 + 80), v39);
    if (v122)
    {
      v123 = v122[3];
    }

    else
    {
      v123 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v39 + 616);
      v127 = &v125;
      *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v119 + 80), v39, &v127) + 3) = v123;
    }

    if (v121 < v123)
    {
      *v5 = vextq_s8(*v5, *v5, 8uLL);
    }

    return 1;
  }

  v17 = *a1;
  v18 = a1[1];
  v125 = *a1;
  v126 = v18;
  v19 = *a3;
  v20 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v18);
  if (v20)
  {
    v21 = v20[3];
  }

  else
  {
    v21 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v18 + 616);
    v127 = &v126;
    *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v19 + 80), v18, &v127) + 3) = v21;
  }

  v28 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v19 + 80), v17);
  if (v28)
  {
    v29 = v28[3];
  }

  else
  {
    v29 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v17 + 616);
    v127 = &v125;
    *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v19 + 80), v17, &v127) + 3) = v29;
  }

  v30 = *(a2 - 1);
  v31 = v5[1];
  v125 = v31;
  v126 = v30;
  v32 = *a3;
  v33 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v30);
  if (v33)
  {
    v34 = v33[3];
  }

  else
  {
    v34 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v30 + 616);
    v127 = &v126;
    *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v32 + 80), v30, &v127) + 3) = v34;
  }

  v35 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v32 + 80), v31);
  if (v35)
  {
    v36 = v35[3];
  }

  else
  {
    v36 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v31 + 616);
    v127 = &v125;
    *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v32 + 80), v31, &v127) + 3) = v36;
  }

  if (v21 >= v29)
  {
    if (v34 >= v36)
    {
      return 1;
    }

    v38 = v5[1];
    v5[1] = *(a2 - 1);
    *(a2 - 1) = v38;
    v39 = *v5;
    v40 = v5[1];
    goto LABEL_121;
  }

  v37 = *v5;
  if (v34 >= v36)
  {
    *v5 = v5[1];
    v5[1] = v37;
    v69 = *(a2 - 1);
    v125 = v37;
    v126 = v69;
    v70 = *a3;
    v71 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((*a3 + 80), v69);
    if (v71)
    {
      v72 = v71[3];
    }

    else
    {
      v72 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v69 + 616);
      v127 = &v126;
      *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v70 + 80), v69, &v127) + 3) = v72;
    }

    v85 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((v70 + 80), v37);
    if (v85)
    {
      v86 = v85[3];
    }

    else
    {
      v86 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(a3[1], v37 + 616);
      v127 = &v125;
      *(std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>((v70 + 80), v37, &v127) + 3) = v86;
    }

    if (v72 >= v86)
    {
      return 1;
    }

    v60 = v5[1];
    v5[1] = *(a2 - 1);
LABEL_53:
    *(a2 - 1) = v60;
    return 1;
  }

  *v5 = *(a2 - 1);
  *(a2 - 1) = v37;
  return 1;
}

void *std::__hash_table<std::__hash_value_type<md::LabelBase const*,double>,std::__unordered_map_hasher<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::hash<md::LabelBase const*>,std::equal_to<md::LabelBase const*>,true>,std::__unordered_map_equal<md::LabelBase const*,std::__hash_value_type<md::LabelBase const*,double>,std::equal_to<md::LabelBase const*>,std::hash<md::LabelBase const*>,true>,std::allocator<std::__hash_value_type<md::LabelBase const*,double>>>::__emplace_unique_key_args<md::LabelBase const*,std::piecewise_construct_t const&,std::tuple<md::LabelBase const* const&>,std::tuple<>>(float *a1, unint64_t a2, void **a3)
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

void ARArrivalFeatureDedupingGroup::~ARArrivalFeatureDedupingGroup(ARArrivalFeatureDedupingGroup *this)
{
  *this = &unk_1F2A1F180;
  v2 = (this + 40);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 80);
  *this = off_1F2A55B58;
  std::vector<md::LabelBase *,geo::allocator_adapter<md::LabelBase *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<md::LabelBase *,geo::allocator_adapter<md::LabelBase *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 8));

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A1F180;
  v2 = (this + 40);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 80);
  *this = off_1F2A55B58;
  std::vector<md::LabelBase *,geo::allocator_adapter<md::LabelBase *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<md::LabelBase *,geo::allocator_adapter<md::LabelBase *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 8));
}

uint64_t std::map<std::string,std::string>::insert[abi:nn200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(uint64_t result, void ***a2, void ***a3)
{
  if (a2 != a3)
  {
    v17[9] = v3;
    v17[10] = v4;
    v6 = a2;
    v7 = result;
    v8 = (result + 8);
    do
    {
      v9 = v7[1];
      v10 = v8;
      if (*v7 == v8)
      {
        goto LABEL_10;
      }

      v11 = v7[1];
      v12 = v8;
      if (v9)
      {
        do
        {
          v10 = v11;
          v11 = v11[1];
        }

        while (v11);
      }

      else
      {
        do
        {
          v10 = v12[2];
          v13 = *v10 == v12;
          v12 = v10;
        }

        while (v13);
      }

      result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(v10 + 4, v6 + 4);
      if ((result & 0x80) != 0)
      {
LABEL_10:
        if (!v9)
        {
          v17[0] = v8;
LABEL_15:
          operator new();
        }

        v17[0] = v10;
        v14 = v10 + 1;
      }

      else
      {
        result = std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__find_equal<std::string>(v7, v17, v6 + 4);
        v14 = result;
      }

      if (!*v14)
      {
        goto LABEL_15;
      }

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
          v13 = *v16 == v6;
          v6 = v16;
        }

        while (!v13);
      }

      v6 = v16;
    }

    while (v16 != a3);
  }

  return result;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::string>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t md::LabelIconStyleMonitor::needsCrossfade(uint64_t a1, md::LabelStyle *this, _BYTE *a3)
{
  result = 0;
  if (!this || !*(a1 + 51))
  {
    return result;
  }

  if (*(a1 + 51) == 2)
  {
    v7 = *(this + 33);
    if (!v7)
    {
      v8 = md::LabelStyle::prepareStyleGroup<md::LabelLineStyleGroup>(this);
      v7 = *v8;
      *(this + 33) = *v8;
    }

    v9 = v7 + 72;
  }

  else
  {
    v9 = md::LabelStyle::monitorIconName(this);
  }

  v10 = *(this + 37);
  if (!v10)
  {
    v11 = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(this, 0);
    v10 = *v11;
    *(this + 37) = *v11;
  }

  v12 = *(a1 + 50);
  v13 = *(this + 34);
  if (!v13)
  {
    v14 = md::LabelStyle::prepareStyleGroup<md::LabelPointStyleGroup>(this);
    v13 = *v14;
    *(this + 34) = *v14;
  }

  if (v12 == *(v13 + 69) && *(a1 + 49) == *(v10 + 88) && *(a1 + 32) == *(v10 + 64) && *(a1 + 36) == *(v10 + 68) && *(a1 + 48) == *(v10 + 92))
  {
    v15 = *(a1 + 23);
    if (v15 >= 0)
    {
      v16 = *(a1 + 23);
    }

    else
    {
      v16 = *(a1 + 8);
    }

    v17 = *(v9 + 23);
    v18 = v17;
    if ((v17 & 0x80u) != 0)
    {
      v17 = *(v9 + 8);
    }

    if (v16 == v17)
    {
      v19 = v15 >= 0 ? a1 : *a1;
      v20 = v18 >= 0 ? v9 : *v9;
      if (!memcmp(v19, v20, v16) && *(a1 + 52) == *(this + 145) && *(v10 + 56) == *(a1 + 40) && *(v10 + 60) == *(a1 + 44))
      {
        return 0;
      }
    }
  }

  if (*(a1 + 23) < 0)
  {
    if (*(a1 + 8))
    {
      goto LABEL_36;
    }

LABEL_38:
    v21 = 1;
    goto LABEL_39;
  }

  if (!*(a1 + 23))
  {
    goto LABEL_38;
  }

LABEL_36:
  v21 = 0;
LABEL_39:
  v22 = md::LabelStyle::monitorIconName(this);
  v23 = *(v22 + 23);
  if (v23 < 0)
  {
    v24 = *(v22 + 8) == 0;
  }

  else
  {
    v24 = v23 == 0;
  }

  v25 = v24;
  if (((v21 ^ v25) & 1) == 0 && (*(a1 + 32) == 0) != (*(v10 + 64) != 0) && (*(a1 + 36) == 0) != (*(v10 + 68) != 0))
  {
    return 1;
  }

  result = 1;
  a3[8] = 1;
  *a3 = 1;
  return result;
}

void md::RouteOverlayContainer::removeOverlay(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = a2;
  v13 = v12;
  std::mutex::lock((a1 + 96));
  v5 = 24;
  if (a3)
  {
    v5 = 48;
  }

  if (std::__tree<objc_object  {objcproto14VKRouteOverlay}*>::__erase_unique<objc_object  {objcproto14VKRouteOverlay}*>((a1 + v5), v12))
  {
    v6 = std::remove[abi:nn200100]<std::__wrap_iter<geo::_retain_ptr<objc_object  {objcproto14VKRouteOverlay}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *>,objc_object  {objcproto14VKRouteOverlay}*>(*a1, *(a1 + 8), &v13);
    v7 = *(a1 + 8);
    if (v7 != v6)
    {
      std::vector<geo::_retain_ptr<objc_object  {objcproto14VKRouteOverlay}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::erase(a1, v6, v7);
      v8 = *(a1 + 72);
      if (v8 != (a1 + 80))
      {
        do
        {
          (*(*v8[4] + 8))(v8[4], v12, a3);
          v9 = v8[1];
          if (v9)
          {
            do
            {
              v10 = v9;
              v9 = *v9;
            }

            while (v9);
          }

          else
          {
            do
            {
              v10 = v8[2];
              v11 = *v10 == v8;
              v8 = v10;
            }

            while (!v11);
          }

          v8 = v10;
        }

        while (v10 != (a1 + 80));
      }
    }
  }

  std::mutex::unlock((a1 + 96));
}

void sub_1B2FC2DC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9)
{
  std::mutex::unlock((v9 + 96));

  _Unwind_Resume(a1);
}

void md::RouteOverlayContainer::overlays(uint64_t ****this, uint64_t a2)
{
  std::mutex::lock((a2 + 96));
  std::set<objc_object  {objcproto14VKRouteOverlay}*>::set[abi:nn200100](this, (a2 + 24));

  std::mutex::unlock((a2 + 96));
}

void md::RouteOverlayContainer::persistentOverlays(uint64_t ****this, uint64_t a2)
{
  std::mutex::lock((a2 + 96));
  std::set<objc_object  {objcproto14VKRouteOverlay}*>::set[abi:nn200100](this, (a2 + 48));

  std::mutex::unlock((a2 + 96));
}

void geo::_retain_ptr<GEOFeatureStyleAttributes * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A1F320;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<GEOFeatureStyleAttributes * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A1F320;

  return a1;
}

void md::LabelExternalPointFeature::setPlaceholderIcon(void *a1, void *a2, void *a3, char a4)
{
  v5 = a1[44];
  a1[45] = v5;
  v6 = a1[46];
  if (v6 == v5)
  {
    operator new();
  }

  if (v5 >= v6)
  {
    v8 = a1[44];
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - v8) >> 2);
    if (v9 + 1 > 0xCCCCCCCCCCCCCCCLL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - v8) >> 2);
    v11 = 2 * v10;
    if (2 * v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x666666666666666)
    {
      v12 = 0xCCCCCCCCCCCCCCCLL;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::LabelExternalIconElement>>(v12);
    }

    v13 = 20 * v9;
    *v13 = *a2;
    *(v13 + 8) = *a3;
    *(v13 + 16) = a4;
    *(v13 + 17) = 0;
    v7 = 20 * v9 + 20;
    v14 = a1[44];
    v15 = a1[45];
    v16 = 20 * v9 + v14 - v15;
    if (v14 != v15)
    {
      v17 = 20 * v9 + v14 - v15;
      do
      {
        v18 = *v14;
        *(v17 + 16) = *(v14 + 4);
        *v17 = v18;
        v17 += 20;
        v14 += 20;
      }

      while (v14 != v15);
      v14 = a1[44];
    }

    a1[44] = v16;
    a1[45] = v7;
    a1[46] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    *(v5 + 8) = *a3;
    *(v5 + 16) = a4;
    *(v5 + 17) = 0;
    v7 = v5 + 20;
  }

  a1[45] = v7;
}

void sub_1B2FC4F10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37)
{
  std::__function::__value_func<CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::~__value_func[abi:nn200100](v39 + 24);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  std::__function::__value_func<CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::~__value_func[abi:nn200100](&a37);
  if (a36 < 0)
  {
    operator delete(a31);
  }

  _Unwind_Resume(a1);
}

void md::LabelExternalLineFeature::~LabelExternalLineFeature(md::LabelExternalLineFeature *this)
{
  md::LabelExternalLineFeature::~LabelExternalLineFeature(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A1F2B0;
  v2 = *(this + 23);
  if (v2)
  {
    *(this + 24) = v2;
    operator delete(v2);
  }

  md::LabelExternalFeature::~LabelExternalFeature(this);
}

void std::__shared_ptr_emplace<md::LabelExternalLineFeature>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A1F278;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::SolidTraffic::BasePipelineState::~BasePipelineState(ggl::SolidTraffic::BasePipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

void ggl::SolidTraffic::BasePipelineSetup::~BasePipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::SolidTraffic::BaseMaskedPipelineState::~BaseMaskedPipelineState(ggl::SolidTraffic::BaseMaskedPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

void ggl::SolidTraffic::BaseMaskedPipelineSetup::~BaseMaskedPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t EaseOvershootSmallOut(float a1)
{
  {
    v7[1] = v1;
    v8 = v2;
    v5 = a1;
    a1 = v5;
    if (v4)
    {
      v7[0] = 0x3F2147AE3F0A3D71;
      v6 = 0x3F95C28F3F1EB852;
      md::BezierEase::BezierEase(EaseOvershootSmallOut(float)::ease, v7, &v6);
      a1 = v5;
    }

    v2 = v8;
  }

  return md::BezierEase::value(EaseOvershootSmallOut(float)::ease, a1);
}

uint64_t EaseOvershootOut(float a1)
{
  {
    v7[1] = v1;
    v8 = v2;
    v5 = a1;
    a1 = v5;
    if (v4)
    {
      v7[0] = 0x3F5C28F63EF0A3D7;
      v6 = 0x3FA3D70A3EC7AE14;
      md::BezierEase::BezierEase(EaseOvershootOut(float)::ease, v7, &v6);
      a1 = v5;
    }

    v2 = v8;
  }

  return md::BezierEase::value(EaseOvershootOut(float)::ease, a1);
}

void EaseElasticInOut(float a1)
{
  if (a1 >= 0.5)
  {
    v2 = 2.0 - (a1 * 2.0);
    sin(v2 * -20.4203522);
    exp2(((v2 * 10.0) + -10.0));
  }

  else
  {
    sin(a1 * 20.4203522);
    exp2(((a1 * 10.0) + -10.0));
  }
}

float EaseElasticOut(float a1)
{
  v1 = 1.0 - a1;
  v2 = sin((1.0 - a1) * -20.4203522);
  v3 = exp2(((v1 * 10.0) + -10.0)) * v2;
  return v3 + 1.0;
}

uint64_t EaseBackOut(float a1)
{
  {
    v7[1] = v1;
    v8 = v2;
    v5 = a1;
    a1 = v5;
    if (v4)
    {
      v7[0] = vdup_n_s32(0x3EAE147Bu);
      v6 = 0x3FCF5C293F35C28FLL;
      md::BezierEase::BezierEase(EaseBackOut(float)::ease, v7, &v6);
      a1 = v5;
    }

    v2 = v8;
  }

  return md::BezierEase::value(EaseBackOut(float)::ease, a1);
}

float EaseBounceOut(float a1)
{
  if (a1 < 0.36364)
  {
    return (a1 * a1) * 7.5625;
  }

  if (a1 < 0.72727)
  {
    v2 = (a1 + -0.54545) * (a1 + -0.54545);
    v3 = 0.75;
    return v3 + (v2 * 7.5625);
  }

  if (a1 < 0.90909)
  {
    v2 = (a1 + -0.81818) * (a1 + -0.81818);
    v3 = 0.9375;
    return v3 + (v2 * 7.5625);
  }

  return (((a1 + -0.95455) * (a1 + -0.95455)) * 7.5625) + 0.98438;
}

float EaseCubicInOut(float a1)
{
  v1 = a1 < 0.5;
  v2 = (((((a1 * 2.0) + -2.0) * ((a1 * 2.0) + -2.0)) * 0.5) * ((a1 * 2.0) + -2.0)) + 1.0;
  result = (a1 * a1) * (a1 + a1);
  if (!v1)
  {
    return v2;
  }

  return result;
}

float EaseQuadInOut(float a1)
{
  v1 = a1 < 0.5;
  v2 = ((0.5 - a1) * ((a1 * 2.0) + -3.0)) + 0.5;
  result = (a1 * a1) + (a1 * a1);
  if (!v1)
  {
    return v2;
  }

  return result;
}

void md::MuninLabelingUtils::computeWeightsForWeightedAverage(void *a1, uint64_t a2, uint64_t a3)
{
  std::vector<double>::resize(a3, (a1[1] - *a1) >> 3);
  v6 = *a3;
  if (*(a3 + 8) == *a3)
  {
    v9 = 0.0;
LABEL_7:
    v13 = a1[1] - *a1;
    if (v13)
    {
      v14 = v13 >> 3;
      if (v14 <= 1)
      {
        v14 = 1;
      }

      do
      {
        *v6 = *v6 * (1.0 / v9);
        v6 += 8;
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0.0;
    while (1)
    {
      v10 = *(a2 + 24);
      if (!v10)
      {
        break;
      }

      v11 = (*(*v10 + 48))(v10, *a1 + v7);
      v6 = *a3;
      v12 = *(a3 + 8);
      *(*a3 + 8 * v8) = v11;
      v9 = v11 + v9;
      ++v8;
      v7 += 8;
      if (v8 >= (v12 - v6) >> 3)
      {
        goto LABEL_7;
      }
    }

    v15 = std::__throw_bad_function_call[abi:nn200100]();
    std::__function::__value_func<double ()(double const&)>::~__value_func[abi:nn200100](v15);
  }
}

uint64_t std::__function::__value_func<double ()(double const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

void md::MuninLabelingUtils::clipRange(uint64_t *a1, _OWORD *a2, uint64_t *a3)
{
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  operator new();
}

__n128 std::__function::__func<md::ita::UpdateTileRenderables::operator()(ecs2::Query<md::ls::TileRenderableDataHandle const&,md::ls::BoundsWidth const&,md::ls::TileViewConstantDataHandle &>)::$_0,std::allocator<md::ita::UpdateTileRenderables::operator()(ecs2::Query<md::ls::TileRenderableDataHandle const&,md::ls::BoundsWidth const&,md::ls::TileViewConstantDataHandle &>)::$_0>,void ()(md::ls::TileRenderableDataHandle const&,md::ls::BoundsWidth const&,md::ls::TileViewConstantDataHandle &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A1F560;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<md::ita::UpdateTileTransforms::operator()(ecs2::Query<md::ls::TileBounds const&,md::ls::TileMatrix const&,md::ls::TileTransformConstantDataHandle &>)::$_0,std::allocator<md::ita::UpdateTileTransforms::operator()(ecs2::Query<md::ls::TileBounds const&,md::ls::TileMatrix const&,md::ls::TileTransformConstantDataHandle &>)::$_0>,void ()(md::ls::TileBounds const&,md::ls::TileMatrix const&,md::ls::TileTransformConstantDataHandle &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A1F630;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<md::ita::UpdateCameraStyleLight::operator()(ecs2::Query<md::ls::TileMatrix const&,md::ls::TileStyleCameraConstantDataHandle &>)::$_0,std::allocator<md::ita::UpdateCameraStyleLight::operator()(ecs2::Query<md::ls::TileMatrix const&,md::ls::TileStyleCameraConstantDataHandle &>)::$_0>,void ()(md::ls::TileMatrix const&,md::ls::TileStyleCameraConstantDataHandle &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A1F678;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t md::FlyoverRenderLayer::prepare(uint64_t a1, uint64_t a2)
{
  result = (*(*a1 + 104))(a1);
  **(a2 + 744) = 1;
  return result;
}

uint64_t md::FlyoverRenderLayer::reserveStencilRange(uint64_t a1, uint64_t a2)
{
  result = ggl::StencilManager::reserveStencilValues(*(a2 + 24), (*(a1 + 49) - *(a1 + 48) + 1), *(a1 + 1632));
  *(a1 + 1640) = result - *(a1 + 48);
  return result;
}

void md::FlyoverRenderLayer::layout(md::FlyoverRenderLayer *this, const md::LayoutContext *a2)
{
  v310 = *MEMORY[0x1E69E9840];
  md::FlyoverRenderResources::resetPools((this + 368));
  v4 = *(gdc::Context::get<md::StyleLogicContext>(*(a2 + 1)) + 72);
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v258, *(this + 196));
  v5 = *(a2 + 1);
  v6 = md::LayoutContext::get<md::CameraContext>(v5);
  v7 = 0;
  v8 = (v6 + 552);
  do
  {
    v10 = *v8;
    v9 = v8[1];
    v8 += 2;
    *(&v253 + v7) = vcvt_hight_f32_f64(vcvt_f32_f64(v10), v9);
    v7 += 16;
  }

  while (v7 != 64);
  v11 = v261;
  *v261 = v253;
  *(v11 + 16) = v254;
  *(v11 + 32) = v255;
  *(v11 + 48) = v256;
  v12 = md::LayoutContext::get<md::LightingLogicContext>(v5);
  if (v12)
  {
    v13 = v12[13].f64[0];
    *(v11 + 96) = vcvt_f32_f64(v12[12]);
    *(v11 + 104) = v13;
    v14 = LODWORD(v12[28].f64[1]);
  }

  else
  {
    v15 = objc_alloc_init(MEMORY[0x1E69A1B48]);
    *&v253 = 0;
    *&v305 = 0;
    v297[0] = 0.0;
    [v15 calculateGeocentricDirectionForSunX:&v253 Y:&v305 Z:v297];
    v16 = *&v253;
    v17 = *&v305;
    v18 = v297[0];
    v19 = v261;
    *(v261 + 96) = v16;
    *(v19 + 100) = v17;
    *(v19 + 104) = v18;

    v11 = v261;
    v14 = 0;
  }

  v20 = v4 == 1;
  *(v11 + 112) = v14;
  v21 = **(a2 + 9);
  v22 = gdc::Camera::cameraFrame(v6);
  v23 = 0;
  v24 = *(v22 + 24) < 6378137.0;
  DWORD2(v305) = 1065353216;
  v25 = v24;
  *&v305 = 0x3F4CCCCD3F333333;
  v26 = 1.0;
  if ((v20 & v25) != 0)
  {
    v26 = -1.0;
  }

  if (v21)
  {
    v26 = 0.0;
  }

  do
  {
    *(&v253 + v23) = *(&v305 + v23) * v26;
    v23 += 4;
  }

  while (v23 != 12);
  v27 = DWORD2(v253);
  *(v11 + 64) = v253;
  *(v11 + 72) = v27;
  v28 = gdc::CameraView::position(v6);
  v29 = 0;
  v30 = 0.0;
  do
  {
    v30 = v30 + *(v28 + v29) * *(v28 + v29);
    v29 += 8;
  }

  while (v29 != 24);
  v305 = *v28;
  v306 = *(v28 + 16);
  geo::Coordinate3D<geo::Radians,double>::Coordinate3D<double>(&v253, &v305);
  v31 = sqrt(v30) + -6371008.77;
  v32 = fmaxf(v31, 0.0);
  v33 = *&v254;
  v34 = fmaxf(v33, 1.0);
  v35 = v34;
  v36 = sqrt((v34 * v34) + v34 * 12742017.5);
  v37 = fmin(fmax(v35, 0.0), 8000.0);
  v38 = (v36 - v32) + (v37 * 0.000125 * (v37 * 0.000125) * (v37 * -0.00025 + 3.0) + -1.0) * ((v36 - v32) * 0.5);
  *(v11 + 80) = v32;
  *(v11 + 84) = v38;
  ggl::BufferMemory::~BufferMemory(v258);
  md::LayoutContext::camera(a2);
  v258[0] = *v39;
  v259 = *(v39 + 8);
  v260 = *(v39 + 24);
  v261 = *(v39 + 40);
  v262 = *(v39 + 56);
  v40 = *(v39 + 72);
  v264 = *(v39 + 80);
  v265 = *(v39 + 96);
  v266 = *(v39 + 112);
  v41 = *(v39 + 128);
  v279 = *(v39 + 312);
  v280 = *(v39 + 328);
  v281 = *(v39 + 344);
  v276 = *(v39 + 264);
  v277 = *(v39 + 280);
  v42 = *(v39 + 296);
  v263 = v40;
  v278 = v42;
  v43 = *(v39 + 360);
  v267 = v41;
  v282 = v43;
  v275 = *(v39 + 248);
  v271 = *(v39 + 184);
  v272 = *(v39 + 200);
  v273 = *(v39 + 216);
  v274 = *(v39 + 232);
  v268 = *(v39 + 136);
  v269 = *(v39 + 152);
  v270 = *(v39 + 168);
  v44 = *(v39 + 384);
  v283 = *(v39 + 368);
  v284 = v44;
  v285 = *(v39 + 400);
  v286 = *(v39 + 416);
  v287 = *(v39 + 432);
  v288 = *(v39 + 448);
  v289 = *(v39 + 456);
  v45 = *(v39 + 480);
  v290 = *(v39 + 464);
  v291 = v45;
  gdc::CameraView::geocentricCameraView(&v253, v258);
  geo::RigidTransform<double,double>::inverse(&v305, &v257);
  geo::RigidTransform<double,double>::toMatrix(v252, &v305);
  v46 = md::FrameGraph::renderQueueForPass(*(*(*(this + 5) + 24) + 8), *(this + 361));
  if (v46)
  {
    v47 = *(*(v46 + 16) + 8 * *(this + 362));
  }

  else
  {
    v47 = 0;
  }

  v47[4] = *(this + 204);
  v247 = md::LayoutContext::get<md::MeshRenderableContext>(*(a2 + 1));
  v48 = (*(*this + 96))(this, a2);
  v49 = *v48;
  v246 = v48[1];
  if (*v48 != v246)
  {
    do
    {
      v50 = *(*v49 + 8);
      v51 = (**(v50 + 640))();
      v52 = 0;
      v53 = *(v50 + 432);
      v251[4] = *(v50 + 416);
      v251[5] = v53;
      v54 = *(v50 + 464);
      v251[6] = *(v50 + 448);
      v251[7] = v54;
      v55 = *(v50 + 368);
      v251[0] = *(v50 + 352);
      v251[1] = v55;
      v56 = *(v50 + 400);
      v57 = v252;
      v251[2] = *(v50 + 384);
      v251[3] = v56;
      do
      {
        v58 = 0;
        v59 = v251;
        do
        {
          v60 = 0;
          v61 = 0.0;
          v62 = v57;
          do
          {
            v63 = *v62;
            v62 += 4;
            v61 = v61 + *(v59 + v60) * v63;
            v60 += 8;
          }

          while (v60 != 32);
          v250[4 * v58++ + v52] = v61;
          v59 += 2;
        }

        while (v58 != 4);
        ++v52;
        ++v57;
      }

      while (v52 != 4);
      v248 = v49;
      v64 = md::MeshRenderableContext::renderablesForRegistry(v247, v51);
      v66 = *v64;
      v65 = v64[1];
      v249 = v65;
      while (v66 != v65)
      {
        v67 = *v66;
        if (*(*v66 + 232) == *(*v66 + 240))
        {
          v71 = *(this + 186);
          v72 = v71[1];
          if (v72 == *v71)
          {
            v151 = v71[11];
            if (!v151)
            {
              goto LABEL_145;
            }

            v70 = (*(*v151 + 48))(v151);
            *&v297[0] = v70;
          }

          else
          {
            v70 = *(v72 - 8);
            *&v297[0] = v70;
            v71[1] = v72 - 8;
          }

          std::vector<ggl::Flyover::FlyoverPipelineSetup *,geo::allocator_adapter<ggl::Flyover::FlyoverPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v71 + 4), v297);
          *&v305 = v70;
          v152 = v71[15];
          if (!v152)
          {
LABEL_145:
            std::__throw_bad_function_call[abi:nn200100]();
LABEL_146:
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          (*(*v152 + 48))(v152, &v305);
          v153 = *(v70 + 136);
          *v153 = *(this + 196);
          v153[1] = 0;
          v154 = *(v70 + 232);
          v155 = v154[1];
          *v154 = 0;
          v154[1] = 0;
          if (v155)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v155);
          }

          v156 = ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>::pop(*(this + 198));
          v157 = *(v70 + 136);
          *(v157 + 16) = v156;
          *(v157 + 24) = 0;
          v158 = *(v70 + 232);
          v159 = *(v158 + 24);
          *(v158 + 16) = 0;
          *(v158 + 24) = 0;
          if (v159)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v159);
          }

          ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v303, v156);
          v160 = 0;
          v161 = v67 + 256;
          v162 = v292;
          v163 = v67 + 256;
          do
          {
            v164 = 0;
            v165 = v162;
            do
            {
              *v165 = *(v163 + v164);
              v165 += 4;
              v164 += 12;
            }

            while (v164 != 48);
            ++v160;
            v162 += 4;
            v163 += 4;
          }

          while (v160 != 3);
          v166 = 0;
          v293 = 0;
          v294 = 0;
          v167 = v297;
          v295 = 0;
          v296 = 1065353216;
          do
          {
            v168 = *&v292[v166];
            *v167 = vcvtq_f64_f32(*v168.f32);
            v167[1] = vcvt_hight_f64_f32(v168);
            v167 += 2;
            v166 += 16;
          }

          while (v166 != 64);
          v169 = 0;
          v170 = v251;
          do
          {
            v171 = 0;
            v172 = v297;
            do
            {
              v173 = 0;
              v174 = 0.0;
              v175 = v170;
              do
              {
                v176 = *v175;
                v175 += 4;
                v174 = v174 + v172[v173++] * v176;
              }

              while (v173 != 4);
              *(&v305 + 4 * v171++ + v169) = v174;
              v172 += 4;
            }

            while (v171 != 4);
            ++v169;
            v170 = (v170 + 8);
          }

          while (v169 != 4);
          v177 = 0;
          v178 = &v305;
          do
          {
            v180 = *v178;
            v179 = v178[1];
            v178 += 2;
            *(&v299 + v177) = vcvt_hight_f32_f64(vcvt_f32_f64(v180), v179);
            v177 += 16;
          }

          while (v177 != 64);
          v181 = 0;
          v182 = v304;
          v183 = v300;
          v304[4] = v299;
          v182[5] = v183;
          v184 = v302;
          v182[6] = v301;
          v182[7] = v184;
          v185 = v292;
          do
          {
            v186 = 0;
            v187 = v185;
            do
            {
              *v187 = *(v161 + v186);
              v187 += 4;
              v186 += 12;
            }

            while (v186 != 48);
            ++v181;
            v185 += 4;
            v161 += 4;
          }

          while (v181 != 3);
          v188 = 0;
          v293 = 0;
          v294 = 0;
          v189 = v297;
          v295 = 0;
          v296 = 1065353216;
          do
          {
            v190 = *&v292[v188];
            *v189 = vcvtq_f64_f32(*v190.f32);
            v189[1] = vcvt_hight_f64_f32(v190);
            v189 += 2;
            v188 += 16;
          }

          while (v188 != 64);
          v191 = 0;
          v192 = v250;
          do
          {
            v193 = 0;
            v194 = v297;
            do
            {
              v195 = 0;
              v196 = 0.0;
              v197 = v192;
              do
              {
                v198 = *v197;
                v197 += 4;
                v196 = v196 + v194[v195++] * v198;
              }

              while (v195 != 4);
              *(&v305 + 4 * v193++ + v191) = v196;
              v194 += 4;
            }

            while (v193 != 4);
            ++v191;
            ++v192;
          }

          while (v191 != 4);
          v199 = 0;
          v200 = &v305;
          do
          {
            v202 = *v200;
            v201 = v200[1];
            v200 += 2;
            *(&v299 + v199) = vcvt_hight_f32_f64(vcvt_f32_f64(v202), v201);
            v199 += 16;
          }

          while (v199 != 64);
          v203 = v300;
          *v182 = v299;
          v182[1] = v203;
          v204 = v302;
          v182[2] = v301;
          v182[3] = v204;
          ggl::BufferMemory::~BufferMemory(v303);
          v205 = ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>::pop(*(this + 200));
          v206 = *(v70 + 136);
          *(v206 + 32) = v205;
          *(v206 + 40) = 0;
          v207 = *(v70 + 232);
          v208 = *(v207 + 40);
          *(v207 + 32) = 0;
          *(v207 + 40) = 0;
          if (v208)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v208);
          }

          ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v297, v205);
          v209 = 0;
          v210 = *(v67 + 208);
          do
          {
            *(&v299 + v209) = *(v210 + 36 + 4 * v209);
            ++v209;
          }

          while (v209 != 3);
          v211 = (v210 + 48);
          for (i = 24; i != 48; i += 8)
          {
            v213 = *v211++;
            *(&v299 + i) = v213;
          }

          altitude::util::computeLocalClipPlanes(&v299, &v305, 1.04999995);
          v214 = 0;
          v215 = v298;
          do
          {
            *(v215 + v214) = *(&v305 + v214);
            v214 += 16;
          }

          while (v214 != 96);
          ggl::BufferMemory::~BufferMemory(v297);
          v216 = ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>::pop(*(this + 201));
          v217 = *(v70 + 136);
          *(v217 + 48) = v216;
          *(v217 + 56) = 0;
          v218 = *(v70 + 232);
          v219 = *(v218 + 56);
          *(v218 + 48) = 0;
          *(v218 + 56) = 0;
          if (v219)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v219);
          }

          v220 = ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v305, v216);
          *v309 = 1065353216;
          ggl::BufferMemory::~BufferMemory(v220);
          v221 = ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>::pop(*(this + 202));
          v222 = *(v70 + 136);
          *(v222 + 64) = v221;
          *(v222 + 72) = 0;
          v223 = *(v70 + 232);
          v224 = *(v223 + 72);
          *(v223 + 64) = 0;
          *(v223 + 72) = 0;
          if (v224)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v224);
          }

          v225 = ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v305, v221);
          *v309 = xmmword_1B33B0720;
          ggl::BufferMemory::~BufferMemory(v225);
          **(v70 + 168) = *(this + 203);
          v149 = (v67 + 216);
          v150 = 8;
        }

        else
        {
          v68 = *(this + 192);
          v69 = v68[1];
          if (v69 == *v68)
          {
            v73 = v68[11];
            if (!v73)
            {
              goto LABEL_145;
            }

            v70 = (*(*v73 + 48))(v73);
            *&v297[0] = v70;
          }

          else
          {
            v70 = *(v69 - 8);
            *&v297[0] = v70;
            v68[1] = v69 - 8;
          }

          std::vector<ggl::FlyoverNight::FlyoverPipelineSetup *,geo::allocator_adapter<ggl::FlyoverNight::FlyoverPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v68 + 4), v297);
          *&v305 = v70;
          v74 = v68[15];
          if (!v74)
          {
            goto LABEL_145;
          }

          (*(*v74 + 48))(v74, &v305);
          v75 = *(v70 + 136);
          *v75 = *(this + 196);
          v75[1] = 0;
          v76 = *(v70 + 232);
          v77 = v76[1];
          *v76 = 0;
          v76[1] = 0;
          if (v77)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v77);
          }

          v78 = ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>::pop(*(this + 198));
          v79 = *(v70 + 136);
          *(v79 + 16) = v78;
          *(v79 + 24) = 0;
          v80 = *(v70 + 232);
          v81 = *(v80 + 24);
          *(v80 + 16) = 0;
          *(v80 + 24) = 0;
          if (v81)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v81);
          }

          ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v303, v78);
          v82 = 0;
          v83 = v67 + 256;
          v84 = v292;
          v85 = v67 + 256;
          do
          {
            v86 = 0;
            v87 = v84;
            do
            {
              *v87 = *(v85 + v86);
              v87 += 4;
              v86 += 12;
            }

            while (v86 != 48);
            ++v82;
            v84 += 4;
            v85 += 4;
          }

          while (v82 != 3);
          v88 = 0;
          v293 = 0;
          v294 = 0;
          v89 = v297;
          v295 = 0;
          v296 = 1065353216;
          do
          {
            v90 = *&v292[v88];
            *v89 = vcvtq_f64_f32(*v90.f32);
            v89[1] = vcvt_hight_f64_f32(v90);
            v89 += 2;
            v88 += 16;
          }

          while (v88 != 64);
          v91 = 0;
          v92 = v251;
          do
          {
            v93 = 0;
            v94 = v297;
            do
            {
              v95 = 0;
              v96 = 0.0;
              v97 = v92;
              do
              {
                v98 = *v97;
                v97 += 4;
                v96 = v96 + v94[v95++] * v98;
              }

              while (v95 != 4);
              *(&v305 + 4 * v93++ + v91) = v96;
              v94 += 4;
            }

            while (v93 != 4);
            ++v91;
            v92 = (v92 + 8);
          }

          while (v91 != 4);
          v99 = 0;
          v100 = &v305;
          do
          {
            v102 = *v100;
            v101 = v100[1];
            v100 += 2;
            *(&v299 + v99) = vcvt_hight_f32_f64(vcvt_f32_f64(v102), v101);
            v99 += 16;
          }

          while (v99 != 64);
          v103 = 0;
          v104 = v304;
          v105 = v300;
          v304[4] = v299;
          v104[5] = v105;
          v106 = v302;
          v104[6] = v301;
          v104[7] = v106;
          v107 = v292;
          do
          {
            v108 = 0;
            v109 = v107;
            do
            {
              *v109 = *(v83 + v108);
              v109 += 4;
              v108 += 12;
            }

            while (v108 != 48);
            ++v103;
            v107 += 4;
            v83 += 4;
          }

          while (v103 != 3);
          v110 = 0;
          v293 = 0;
          v294 = 0;
          v111 = v297;
          v295 = 0;
          v296 = 1065353216;
          do
          {
            v112 = *&v292[v110];
            *v111 = vcvtq_f64_f32(*v112.f32);
            v111[1] = vcvt_hight_f64_f32(v112);
            v111 += 2;
            v110 += 16;
          }

          while (v110 != 64);
          v113 = 0;
          v114 = v250;
          do
          {
            v115 = 0;
            v116 = v297;
            do
            {
              v117 = 0;
              v118 = 0.0;
              v119 = v114;
              do
              {
                v120 = *v119;
                v119 += 4;
                v118 = v118 + v116[v117++] * v120;
              }

              while (v117 != 4);
              *(&v305 + 4 * v115++ + v113) = v118;
              v116 += 4;
            }

            while (v115 != 4);
            ++v113;
            ++v114;
          }

          while (v113 != 4);
          v121 = 0;
          v122 = &v305;
          do
          {
            v124 = *v122;
            v123 = v122[1];
            v122 += 2;
            *(&v299 + v121) = vcvt_hight_f32_f64(vcvt_f32_f64(v124), v123);
            v121 += 16;
          }

          while (v121 != 64);
          v125 = v300;
          *v104 = v299;
          v104[1] = v125;
          v126 = v302;
          v104[2] = v301;
          v104[3] = v126;
          ggl::BufferMemory::~BufferMemory(v303);
          v127 = ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>::pop(*(this + 200));
          v128 = *(v70 + 136);
          *(v128 + 32) = v127;
          *(v128 + 40) = 0;
          v129 = *(v70 + 232);
          v130 = *(v129 + 40);
          *(v129 + 32) = 0;
          *(v129 + 40) = 0;
          if (v130)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v130);
          }

          ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v297, v127);
          v131 = 0;
          v132 = *(v67 + 208);
          do
          {
            *(&v299 + v131) = *(v132 + 36 + 4 * v131);
            ++v131;
          }

          while (v131 != 3);
          v133 = (v132 + 48);
          for (j = 24; j != 48; j += 8)
          {
            v135 = *v133++;
            *(&v299 + j) = v135;
          }

          altitude::util::computeLocalClipPlanes(&v299, &v305, 1.04999995);
          v136 = 0;
          v137 = v298;
          do
          {
            *(v137 + v136) = *(&v305 + v136);
            v136 += 16;
          }

          while (v136 != 96);
          ggl::BufferMemory::~BufferMemory(v297);
          v138 = ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>::pop(*(this + 201));
          v139 = *(v70 + 136);
          *(v139 + 48) = v138;
          *(v139 + 56) = 0;
          v140 = *(v70 + 232);
          v141 = *(v140 + 56);
          *(v140 + 48) = 0;
          *(v140 + 56) = 0;
          if (v141)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v141);
          }

          v142 = ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v305, v138);
          *v309 = 1065353216;
          ggl::BufferMemory::~BufferMemory(v142);
          v143 = ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>::pop(*(this + 202));
          v144 = *(v70 + 136);
          *(v144 + 64) = v143;
          *(v144 + 72) = 0;
          v145 = *(v70 + 232);
          v146 = *(v145 + 72);
          *(v145 + 64) = 0;
          *(v145 + 72) = 0;
          if (v146)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v146);
          }

          v147 = ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v305, v143);
          *v309 = xmmword_1B33B0720;
          ggl::BufferMemory::~BufferMemory(v147);
          **(v70 + 168) = *(this + 203);
          *(*(v70 + 168) + 8) = *(v67 + 216);
          v149 = *(v67 + 232);
          v150 = 16;
        }

        *(*(v70 + 168) + v150) = *v149;
        ggl::RenderItem::RenderItem(v148, "");
        LOBYTE(v297[0]) = 0;
        v307 = md::FlyoverRenderResources::renderState(this + 368, v297);
        v308 = v70;
        v226 = *(v50 + 169);
        if (*(this + 49) < v226)
        {
          v226 = *(this + 49);
        }

        LODWORD(v309) = *(this + 410) + v226;
        md::RenderItemPool::construct(this + 368, &v305, **(v67 + 208), (*(v67 + 208) + 16));
        v228 = v227;
        v230 = *(v47 + 10);
        v229 = *(v47 + 11);
        if (v230 >= v229)
        {
          v232 = *(v47 + 9);
          v233 = (v230 - v232) >> 3;
          if ((v233 + 1) >> 61)
          {
            goto LABEL_146;
          }

          v234 = v229 - v232;
          v235 = v234 >> 2;
          if (v234 >> 2 <= (v233 + 1))
          {
            v235 = v233 + 1;
          }

          if (v234 >= 0x7FFFFFFFFFFFFFF8)
          {
            v236 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v236 = v235;
          }

          *&v297[4] = v47 + 12;
          if (v236)
          {
            v237 = ggl::zone_mallocator::instance(v227);
            v238 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::RenderItem *>(v237, v236);
          }

          else
          {
            v238 = 0;
          }

          v239 = &v238[8 * v233];
          v240 = &v238[8 * v236];
          *v239 = v228;
          v231 = v239 + 1;
          v241 = *(v47 + 9);
          v242 = *(v47 + 10) - v241;
          v243 = v239 - v242;
          memcpy(v239 - v242, v241, v242);
          v244 = v47[9];
          *(v47 + 9) = v243;
          *(v47 + 10) = v231;
          v245 = v47[11];
          *(v47 + 11) = v240;
          v297[2] = v244;
          v297[3] = v245;
          v297[1] = v244;
          v297[0] = v244;
          std::__split_buffer<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator> &>::~__split_buffer(v297);
        }

        else
        {
          *v230 = v227;
          v231 = v230 + 1;
        }

        *(v47 + 10) = v231;
        ++v66;
        v65 = v249;
      }

      v49 = v248 + 8;
    }

    while (v248 + 8 != v246);
  }
}

uint64_t md::FlyoverRenderResources::renderState(uint64_t a1, _BYTE *a2)
{
  v4 = +[VKDebugSettings sharedSettings];
  v5 = [v4 flyoverSkipTileRendering];

  if (v5)
  {
    v6 = 888;
  }

  else if (*a2 - 1 > 2)
  {
    v6 = 24;
  }

  else
  {
    v6 = 216 * (*a2 - 1) + 240;
  }

  return a1 + v6;
}

uint64_t ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>::pop(void *a1)
{
  v2 = a1[1];
  if (v2 == *a1)
  {
    v4 = a1[11];
    if (!v4)
    {
      goto LABEL_7;
    }

    v3 = (*(*v4 + 48))(v4);
    v8 = v3;
  }

  else
  {
    v3 = *(v2 - 8);
    v8 = v3;
    a1[1] = v2 - 8;
  }

  std::vector<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform> *,ggl::zone_mallocator>>::push_back[abi:nn200100]((a1 + 4), &v8);
  v9 = v3;
  v5 = a1[15];
  if (v5)
  {
    (*(*v5 + 48))(v5, &v9);
    return v3;
  }

LABEL_7:
  v7 = std::__throw_bad_function_call[abi:nn200100]();
  return ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>::pop(v7);
}

uint64_t ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>::pop(void *a1)
{
  v2 = a1[1];
  if (v2 == *a1)
  {
    v4 = a1[11];
    if (!v4)
    {
      goto LABEL_7;
    }

    v3 = (*(*v4 + 48))(v4);
    v8 = v3;
  }

  else
  {
    v3 = *(v2 - 8);
    v8 = v3;
    a1[1] = v2 - 8;
  }

  std::vector<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip> *,ggl::zone_mallocator>>::push_back[abi:nn200100]((a1 + 4), &v8);
  v9 = v3;
  v5 = a1[15];
  if (v5)
  {
    (*(*v5 + 48))(v5, &v9);
    return v3;
  }

LABEL_7:
  v7 = std::__throw_bad_function_call[abi:nn200100]();
  return ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>::pop(v7);
}

uint64_t ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>::pop(void *a1)
{
  v2 = a1[1];
  if (v2 == *a1)
  {
    v4 = a1[11];
    if (!v4)
    {
      goto LABEL_7;
    }

    v3 = (*(*v4 + 48))(v4);
    v8 = v3;
  }

  else
  {
    v3 = *(v2 - 8);
    v8 = v3;
    a1[1] = v2 - 8;
  }

  std::vector<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material> *,ggl::zone_mallocator>>::push_back[abi:nn200100]((a1 + 4), &v8);
  v9 = v3;
  v5 = a1[15];
  if (v5)
  {
    (*(*v5 + 48))(v5, &v9);
    return v3;
  }

LABEL_7:
  v7 = std::__throw_bad_function_call[abi:nn200100]();
  return ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>::pop(v7);
}

ggl::zone_mallocator *ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>::pop(void *a1)
{
  v2 = a1[1];
  if (v2 == *a1)
  {
    v4 = a1[11];
    if (!v4)
    {
      goto LABEL_7;
    }

    v3 = (*(*v4 + 48))(v4);
    v9 = v3;
  }

  else
  {
    v3 = *(v2 - 8);
    v9 = v3;
    a1[1] = v2 - 8;
  }

  std::vector<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords> *,ggl::zone_mallocator>>::push_back[abi:nn200100]((a1 + 4), &v9);
  v10 = v3;
  v5 = a1[15];
  if (v5)
  {
    (*(*v5 + 48))(v5, &v10);
    return v3;
  }

LABEL_7:
  v7 = std::__throw_bad_function_call[abi:nn200100]();
  return std::vector<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords> *,ggl::zone_mallocator>>::push_back[abi:nn200100](v7, v8);
}

ggl::zone_mallocator *std::vector<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords> *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords> *>(v11, v10);
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
    result = std::__split_buffer<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords> *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}