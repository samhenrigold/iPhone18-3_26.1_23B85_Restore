void geo::small_vector_base<unsigned int>::push_back(int **a1, int *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = v4 - *a1;
  v7 = (v6 >> 2) + 1;
  v8 = a1[3];
  if (v8 < v7)
  {
    v9 = a1[2];
    v10 = (1 << -__clz(v8 + 1));
    if (v8 >= 0xFFFFFFFFFFFFFFFELL)
    {
      v10 = 1;
    }

    if (v10 <= v7)
    {
      v11 = (v6 >> 2) + 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = malloc_type_malloc(4 * v11, 0x100004052888210uLL);
    v13 = *a1;
    v14 = a1[1];
    if (*a1 != v14)
    {
      v15 = v12;
      v16 = *a1;
      do
      {
        v17 = *v16++;
        *v15++ = v17;
      }

      while (v16 != v14);
    }

    if (v5 != v9)
    {
      free(v13);
    }

    *a1 = v12;
    v4 = (v12 + v6);
    a1[3] = v11;
  }

  *v4 = *a2;
  a1[1] = v4 + 1;
}

void std::__split_buffer<unsigned long *>::emplace_back<unsigned long *&>(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long *>>(v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long *>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__split_buffer<gdc::TrianglePair *>::emplace_back<gdc::TrianglePair *&>(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

__n128 std::__function::__func<std::shared_ptr<ggl::PolylineOverlayRibbon::ElevatedMesh> anonymous namespace::intersectMeshWithoutPolygon<ggl::PolylineOverlayRibbon::BakedWidthMesh,ggl::PolylineOverlayRibbon::ElevatedMesh,RibbonOverlayTriangleAccessor,StrokeTriangle>(md::FoundationMesh const&,ggl::PolylineOverlayRibbon::BakedWidthMesh const&,ggl::Loader *,gdc::PolygonIntersectionDebugStats &)::{lambda(ggl::ResourceAccessor *)#1},std::allocator<std::shared_ptr<ggl::PolylineOverlayRibbon::ElevatedMesh> anonymous namespace::intersectMeshWithoutPolygon<ggl::PolylineOverlayRibbon::BakedWidthMesh,ggl::PolylineOverlayRibbon::ElevatedMesh,RibbonOverlayTriangleAccessor,StrokeTriangle>(md::FoundationMesh const&,ggl::PolylineOverlayRibbon::BakedWidthMesh const&,ggl::Loader *,gdc::PolygonIntersectionDebugStats &)::{lambda(ggl::ResourceAccessor *)#1}>,void ()(ggl::ResourceAccessor *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A09218;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__shared_ptr_pointer<ggl::VertexDataTyped<ggl::PolylineOverlayRibbon::ElevatedVbo> *,std::shared_ptr<ggl::VertexDataTyped<ggl::PolylineOverlayRibbon::ElevatedVbo>>::__shared_ptr_default_delete<ggl::VertexDataTyped<ggl::PolylineOverlayRibbon::ElevatedVbo>,ggl::VertexDataTyped<ggl::PolylineOverlayRibbon::ElevatedVbo>>,std::allocator<ggl::VertexDataTyped<ggl::PolylineOverlayRibbon::ElevatedVbo>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ggl::VertexDataTyped<ggl::PolylineOverlayRibbon::ElevatedVbo> *,std::shared_ptr<ggl::VertexDataTyped<ggl::PolylineOverlayRibbon::ElevatedVbo>>::__shared_ptr_default_delete<ggl::VertexDataTyped<ggl::PolylineOverlayRibbon::ElevatedVbo>,ggl::VertexDataTyped<ggl::PolylineOverlayRibbon::ElevatedVbo>>,std::allocator<ggl::VertexDataTyped<ggl::PolylineOverlayRibbon::ElevatedVbo>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__function::__func<std::shared_ptr<gdc::TriangularDCEL> md::buildDCELForMesh<ggl::PolylineOverlayRibbon::BakedWidthMesh const>(ggl::PolylineOverlayRibbon::BakedWidthMesh const &,gm::Range<unsigned long>,ggl::Loader *)::{lambda(ggl::ResourceAccessor *)#1},std::allocator<std::shared_ptr<gdc::TriangularDCEL> md::buildDCELForMesh<ggl::PolylineOverlayRibbon::BakedWidthMesh const>(ggl::PolylineOverlayRibbon::BakedWidthMesh const &,gm::Range<unsigned long>,ggl::Loader *)::{lambda(ggl::ResourceAccessor *)#1}>,void ()(ggl::ResourceAccessor *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = **(a1 + 24);
  if (*(v4 + 216))
  {
    ggl::DataAccess<ggl::DaVinci::TexturedCompressedDrapingVbo>::DataAccess(v13, v4, *(a1 + 32), *(a1 + 40), 0, v3);
    if (*(a1 + 48))
    {
      v5 = 0;
      v6 = 3;
      do
      {
        gdc::TriangularDCEL::addFace(**(a1 + 8), *(v14 + 4 * v5), *(v14 + 4 * (v6 - 2)), *(v14 + 4 * (v6 - 1)), *(a1 + 16));
        v5 = v6;
        v7 = *(a1 + 48);
        v8 = v7 >= v6;
        v9 = v7 == v6;
        v6 += 3;
      }

      while (!v9 && v8);
    }
  }

  else
  {
    ggl::DataAccess<ggl::DaVinci::TexturedCompressedVbo>::DataAccess(v13, v4, *(a1 + 32), *(a1 + 40), 0, 1, v3);
    if (*(a1 + 48))
    {
      v10 = 0;
      v11 = 3;
      do
      {
        gdc::TriangularDCEL::addFace(**(a1 + 8), *(v14 + 2 * v10), *(v14 + 2 * (v11 - 2)), *(v14 + 2 * (v11 - 1)), *(a1 + 16));
        v10 = v11;
        v12 = *(a1 + 48);
        v8 = v12 >= v11;
        v9 = v12 == v11;
        v11 += 3;
      }

      while (!v9 && v8);
    }
  }

  ggl::BufferMemory::~BufferMemory(v13);
}

__n128 std::__function::__func<std::shared_ptr<gdc::TriangularDCEL> md::buildDCELForMesh<ggl::PolylineOverlayRibbon::BakedWidthMesh const>(ggl::PolylineOverlayRibbon::BakedWidthMesh const &,gm::Range<unsigned long>,ggl::Loader *)::{lambda(ggl::ResourceAccessor *)#1},std::allocator<std::shared_ptr<gdc::TriangularDCEL> md::buildDCELForMesh<ggl::PolylineOverlayRibbon::BakedWidthMesh const>(ggl::PolylineOverlayRibbon::BakedWidthMesh const &,gm::Range<unsigned long>,ggl::Loader *)::{lambda(ggl::ResourceAccessor *)#1}>,void ()(ggl::ResourceAccessor *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A09158;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__value_func<void ()(gdc::DCELBase const*,gdc::DCELBase::Warning,unsigned int)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__func<void (*)(gdc::DCELBase const*,gdc::DCELBase::Warning,unsigned int),std::allocator<void (*)(gdc::DCELBase const*,gdc::DCELBase::Warning,unsigned int)>,void ()(gdc::DCELBase const*,gdc::DCELBase::Warning,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A09110;
  a2[1] = v2;
  return result;
}

void std::__shared_ptr_emplace<gdc::TriangularDCEL>::__on_zero_shared(void *a1)
{
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 19));
  std::__function::__value_func<void ()(gdc::DCELBase const*,gdc::DCELBase::Warning,unsigned int)>::~__value_func[abi:nn200100]((a1 + 15));
  v2 = a1[12];
  if (v2)
  {
    a1[13] = v2;
    operator delete(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    a1[10] = v3;
    operator delete(v3);
  }

  v4 = a1[6];
  if (v4)
  {
    a1[7] = v4;
    operator delete(v4);
  }

  v5 = a1[3];
  if (v5)
  {
    a1[4] = v5;

    operator delete(v5);
  }
}

void std::__shared_ptr_emplace<gdc::TriangularDCEL>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A090D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::DaVinci::ElevatedFillMesh>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A09328;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__function::__func<std::shared_ptr<ggl::DaVinci::ElevatedFillMesh> anonymous namespace::intersectMeshWithoutPolygon<ggl::DaVinci::TexturedCompressedMesh,ggl::DaVinci::ElevatedFillMesh,OverlayTriangleAccessor,FillTriangle>(md::FoundationMesh const&,ggl::DaVinci::TexturedCompressedMesh const&,ggl::Loader *,gdc::PolygonIntersectionDebugStats &)::{lambda(ggl::ResourceAccessor *)#1},std::allocator<std::shared_ptr<ggl::DaVinci::ElevatedFillMesh> anonymous namespace::intersectMeshWithoutPolygon<ggl::DaVinci::TexturedCompressedMesh,ggl::DaVinci::ElevatedFillMesh,OverlayTriangleAccessor,FillTriangle>(md::FoundationMesh const&,ggl::DaVinci::TexturedCompressedMesh const&,ggl::Loader *,gdc::PolygonIntersectionDebugStats &)::{lambda(ggl::ResourceAccessor *)#1}>,void ()(ggl::ResourceAccessor *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v150 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = *(a1 + 24);
  v5 = (*(*(v4 + 96) + 48) - *(*(v4 + 96) + 40)) / *(*(v4 + 96) + 8);
  ggl::DataAccess<ggl::DaVinci::TexturedCompressedDrapingVbo>::DataAccess(v109, **(v4 + 64), 0, (*(**(v4 + 64) + 48) - *(**(v4 + 64) + 40)) / *(**(v4 + 64) + 8), 0, *a2);
  v110 = v109[5];
  ggl::DataAccess<ggl::DaVinci::TexturedCompressedVbo>::DataAccess(v111, *(v4 + 96), 0, v5, 0, 1, v3);
  v112 = v111[5];
  v113 = v5 / 3;
  v6 = *(a1 + 8);
  v7 = *(v6[12] + 216);
  if (v7 != 1)
  {
    if (v7)
    {
      goto LABEL_102;
    }

    VertexData_Reader<TempFoundationTriangleAccessor,unsigned short>::VertexData_Reader(v104, v6, v6[18], v6[19], v3);
    v8 = *(a1 + 40);
    v9 = **(a1 + 32);
    v11 = *v8;
    v10 = v8[1];
    v92 = **(a1 + 48);
    v88 = *(a1 + 8);
    v96 = *(a1 + 16);
    v98 = *(a1 + 56);
    *(v98 + 8) = 0;
    *v98 = 0;
    if (!v108 || !v113)
    {
      goto LABEL_101;
    }

    v147[0].n128_u8[0] = 0;
    v86 = v113;
    std::vector<BOOL>::vector(__p, v113, v147);
    v12 = 0;
    v13 = v86;
    while (1)
    {
      v14 = __p[0];
      v15 = v12 >> 6;
      v16 = 1 << v12;
      if ((*(__p[0] + (v12 >> 6)) & (1 << v12)) == 0)
      {
        v17 = (v112 + 6 * v12);
        v18 = (v110 + 16 * v17[1]);
        v19 = (v110 + 16 * v17[2]);
        v142 = (v110 + 16 * *v17);
        v143 = v18;
        v144 = v19;
        v20 = vmul_f32(vsub_f32(*v142, *v19), vrev64_s32(vsub_f32(*v18, *v19)));
        *v20.i32 = vsub_f32(v20, vdup_lane_s32(v20, 1)).f32[0];
        v145 = *v20.i32;
        if (*v20.i32 != 0.0)
        {
          v90 = v12;
          if (gdc::_triangleIntersectsBox<gdc::Triangle<RibbonOverlayTriangleAccessor>,float>(&v142, v88 + 184))
          {
            v100 = v108;
            if (v108)
            {
              v21 = 0;
              v22 = 0;
              while (1)
              {
                v23 = (v105 + 16 * *(v107 + v21 + 2));
                v24 = *(v107 + v21 + 4);
                *&v139 = v105 + 16 * *(v107 + v21);
                *(&v139 + 1) = v23;
                *&v140 = v105 + 16 * v24;
                *(&v140 + 1) = (((*(v140 + 4) - *(v139 + 4)) * (*v23 - *v140)) + ((*v139 - *v140) * (v23[1] - *(v140 + 4))));
                v147[0].n128_u64[0] = &v139;
                v147[0].n128_u64[1] = &v142;
                v148 = 0;
                v149 = 0;
                if (gdc::TriangleIntersection<gdc::Triangle<TempFoundationTriangleAccessor>,gdc::Triangle<OverlayTriangleAccessor>>::compute(v147))
                {
                  break;
                }

                ++v22;
                v21 += 6;
                if (v100 == v22)
                {
                  v14 = __p[0];
                  goto LABEL_14;
                }
              }

              ++*(v98 + 4);
              v140 = 0u;
              v141 = 0u;
              v139 = 0u;
              v147[0].n128_u64[0] = v90;
              v147[0].n128_u64[1] = v22;
              std::deque<gdc::TrianglePair>::push_back(&v139, v147);
              while (*(&v141 + 1))
              {
                *v138 = *(*(*(&v139 + 1) + ((v141 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v141);
                --*(&v141 + 1);
                *&v141 = v141 + 1;
                if (v141 >= 0x200)
                {
                  operator delete(**(&v139 + 1));
                  *(&v139 + 1) += 8;
                  *&v141 = v141 - 256;
                }

                v136 = 0u;
                v137 = 0u;
                v135 = 0u;
                v132 = 0u;
                v133 = 0u;
                v134 = 1065353216;
                std::deque<unsigned long>::push_back(&v135, &v138[2]);
                std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long const&>(&v132, *&v138[2], &v138[2]);
                v94 = *v138;
                gdc::_overlayNeighborsNoDegenerates<VertexData_Reader<OverlayTriangleAccessor,unsigned short>>(&v129, v109, v92, v138[0], __p);
                v126 = 0u;
                v127 = 0u;
                v128 = 1065353216;
                v25 = *(&v137 + 1);
                if (*(&v137 + 1))
                {
                  v101 = 6 * v94;
                  do
                  {
                    v26 = *(*(*(&v135 + 1) + ((v137 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v137 & 0x1FF));
                    *(&v137 + 1) = v25 - 1;
                    *&v137 = v137 + 1;
                    if (v137 >= 0x400)
                    {
                      operator delete(**(&v135 + 1));
                      *(&v135 + 1) += 8;
                      *&v137 = v137 - 512;
                    }

                    v27 = (v110 + 16 * *(v112 + v101 + 2));
                    v28 = (v110 + 16 * *(v112 + v101 + 4));
                    v122 = (v110 + 16 * *(v112 + 6 * v94));
                    v123 = v27;
                    v124 = v28;
                    v125 = (((v28[1] - v122[1]) * (*v27 - *v28)) + ((*v122 - *v28) * (v27[1] - v28[1])));
                    v29 = (v107 + 6 * v26);
                    v30 = (v105 + 16 * v29[1]);
                    v31 = (v105 + 16 * v29[2]);
                    v118 = (v105 + 16 * *v29);
                    v119 = v30;
                    v120 = v31;
                    v121 = (((v31[1] - v118[1]) * (*v30 - *v31)) + ((*v118 - *v31) * (v30[1] - v31[1])));
                    v32 = gdc::clipFoundationAgainstOverlayTriangle<gdc::Triangle<TempFoundationTriangleAccessor>,gdc::Triangle<OverlayTriangleAccessor>,VertexData_Writer<FillTriangle>>(&v118, &v122, v96);
                    ++*v98;
                    if (v32)
                    {
                      v33 = v129;
                      if (v129 != v130)
                      {
                        do
                        {
                          v34 = *v33;
                          v35 = (v112 + 6 * v34);
                          v36 = (v110 + 16 * *v35);
                          v37 = (v110 + 16 * v35[1]);
                          v38 = v35[2];
                          v114 = v36;
                          v115 = v37;
                          v116 = (v110 + 16 * v38);
                          v117 = (((v116[1] - v36[1]) * (*v37 - *v116)) + ((*v36 - *v116) * (v37[1] - v116[1])));
                          v147[0].n128_u64[0] = &v118;
                          v147[0].n128_u64[1] = &v114;
                          v148 = 0;
                          v149 = 0;
                          if (gdc::TriangleIntersection<gdc::Triangle<TempFoundationTriangleAccessor>,gdc::Triangle<OverlayTriangleAccessor>>::compute(v147))
                          {
                            v147[0].n128_u64[0] = v34;
                            v147[0].n128_u64[1] = v26;
                            std::deque<gdc::TrianglePair>::push_back(&v139, v147);
                            v39 = v130;
                            if (v33 + 1 != v130)
                            {
                              memmove(v33, v33 + 1, ((v130 - v33) & 0xFFFFFFFFFFFFFFFCLL) - 4);
                            }

                            v40 = v39 - 1;
                            v130 = v39 - 1;
                          }

                          else
                          {
                            ++v33;
                            v40 = v130;
                          }
                        }

                        while (v33 != v40);
                      }

                      v41 = gdc::TriangularDCEL::outerComponent(v9, v26 + v11);
                      v42 = v41;
                      v43 = v41;
                      do
                      {
                        v44 = gdc::TriangularDCEL::twin(v9, v43);
                        v45 = gdc::TriangularDCEL::incidentFace(v9, v44);
                        if (v45 != 0x3FFFFFFF)
                        {
                          v46 = v45;
                          if (v45 <= (((*(v9 + 10) - *(v9 + 9)) >> 2) / 3uLL) && !gdc::TriangularDCEL::_isBadFace(v9, v45) && v46 >= v11 && v46 < v10)
                          {
                            v147[0].n128_u64[0] = v46 - v11;
                            if (!std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(&v132, v147[0].n128_u64[0]))
                            {
                              std::deque<unsigned long>::push_back(&v135, v147);
                              std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long const&>(&v132, v46 - v11, v147);
                            }
                          }
                        }

                        v43 = gdc::TriangularDCEL::next(v9, v43);
                      }

                      while (v43 != v42);
                    }

                    v25 = *(&v137 + 1);
                  }

                  while (*(&v137 + 1));
                }

                *(__p[0] + ((v94 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v94;
                std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&v126);
                if (v129 != v131)
                {
                  free(v129);
                }

                std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&v132);
                std::deque<unsigned long>::~deque[abi:nn200100](&v135);
              }

              std::deque<gdc::TrianglePair>::~deque[abi:nn200100](&v139);
              goto LABEL_18;
            }

LABEL_14:
            ++*(v98 + 4);
          }

          else
          {
            ++*(v98 + 8);
          }

          v14[v15] |= v16;
LABEL_18:
          v13 = v86;
          v12 = v90;
          goto LABEL_19;
        }

        *(__p[0] + v15) |= v16;
      }

LABEL_19:
      if (++v12 == v13)
      {
        goto LABEL_99;
      }
    }
  }

  VertexData_Reader<TempFoundationTriangleAccessor,unsigned int>::VertexData_Reader(v104, v6, v6[18], v6[19], v3);
  v47 = *(a1 + 40);
  v48 = **(a1 + 32);
  v50 = *v47;
  v49 = v47[1];
  v93 = **(a1 + 48);
  v89 = *(a1 + 8);
  v97 = *(a1 + 16);
  v99 = *(a1 + 56);
  *(v99 + 8) = 0;
  *v99 = 0;
  if (!v108 || !v113)
  {
    goto LABEL_101;
  }

  v147[0].n128_u8[0] = 0;
  v87 = v113;
  std::vector<BOOL>::vector(__p, v113, v147);
  v51 = 0;
  v52 = v87;
  do
  {
    v53 = __p[0];
    v54 = v51 >> 6;
    v55 = 1 << v51;
    if ((*(__p[0] + (v51 >> 6)) & (1 << v51)) != 0)
    {
      goto LABEL_67;
    }

    v56 = (v112 + 6 * v51);
    v57 = (v110 + 16 * v56[1]);
    v58 = (v110 + 16 * v56[2]);
    v142 = (v110 + 16 * *v56);
    v143 = v57;
    v144 = v58;
    v59 = vmul_f32(vsub_f32(*v142, *v58), vrev64_s32(vsub_f32(*v57, *v58)));
    *v59.i32 = vsub_f32(v59, vdup_lane_s32(v59, 1)).f32[0];
    v145 = *v59.i32;
    if (*v59.i32 == 0.0)
    {
      *(__p[0] + v54) |= v55;
      goto LABEL_67;
    }

    v91 = v51;
    if (gdc::_triangleIntersectsBox<gdc::Triangle<RibbonOverlayTriangleAccessor>,float>(&v142, v89 + 184))
    {
      v102 = v108;
      if (v108)
      {
        v60 = 0;
        v61 = 0;
        while (1)
        {
          v62 = (v105 + 16 * *(v107 + v60 + 4));
          v63 = *(v107 + v60 + 8);
          *&v139 = v105 + 16 * *(v107 + v60);
          *(&v139 + 1) = v62;
          *&v140 = v105 + 16 * v63;
          *(&v140 + 1) = (((*(v140 + 4) - *(v139 + 4)) * (*v62 - *v140)) + ((*v139 - *v140) * (v62[1] - *(v140 + 4))));
          v147[0].n128_u64[0] = &v139;
          v147[0].n128_u64[1] = &v142;
          v148 = 0;
          v149 = 0;
          if (gdc::TriangleIntersection<gdc::Triangle<TempFoundationTriangleAccessor>,gdc::Triangle<OverlayTriangleAccessor>>::compute(v147))
          {
            break;
          }

          ++v61;
          v60 += 12;
          if (v102 == v61)
          {
            v53 = __p[0];
            goto LABEL_62;
          }
        }

        ++*(v99 + 4);
        v140 = 0u;
        v141 = 0u;
        v139 = 0u;
        v147[0].n128_u64[0] = v91;
        v147[0].n128_u64[1] = v61;
        std::deque<gdc::TrianglePair>::push_back(&v139, v147);
        while (*(&v141 + 1))
        {
          *v138 = *(*(*(&v139 + 1) + ((v141 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v141);
          --*(&v141 + 1);
          *&v141 = v141 + 1;
          if (v141 >= 0x200)
          {
            operator delete(**(&v139 + 1));
            *(&v139 + 1) += 8;
            *&v141 = v141 - 256;
          }

          v136 = 0u;
          v137 = 0u;
          v135 = 0u;
          v132 = 0u;
          v133 = 0u;
          v134 = 1065353216;
          std::deque<unsigned long>::push_back(&v135, &v138[2]);
          std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long const&>(&v132, *&v138[2], &v138[2]);
          v95 = *v138;
          gdc::_overlayNeighborsNoDegenerates<VertexData_Reader<OverlayTriangleAccessor,unsigned short>>(&v129, v109, v93, v138[0], __p);
          v126 = 0u;
          v127 = 0u;
          v128 = 1065353216;
          v64 = *(&v137 + 1);
          if (*(&v137 + 1))
          {
            v103 = 6 * v95;
            do
            {
              v65 = *(*(*(&v135 + 1) + ((v137 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v137 & 0x1FF));
              *(&v137 + 1) = v64 - 1;
              *&v137 = v137 + 1;
              if (v137 >= 0x400)
              {
                operator delete(**(&v135 + 1));
                *(&v135 + 1) += 8;
                *&v137 = v137 - 512;
              }

              v66 = (v110 + 16 * *(v112 + v103 + 2));
              v67 = (v110 + 16 * *(v112 + v103 + 4));
              v122 = (v110 + 16 * *(v112 + 6 * v95));
              v123 = v66;
              v124 = v67;
              v125 = (((v67[1] - v122[1]) * (*v66 - *v67)) + ((*v122 - *v67) * (v66[1] - v67[1])));
              v68 = (v107 + 12 * v65);
              v69 = (v105 + 16 * v68[1]);
              v70 = (v105 + 16 * v68[2]);
              v118 = (v105 + 16 * *v68);
              v119 = v69;
              v120 = v70;
              v121 = (((v70[1] - v118[1]) * (*v69 - *v70)) + ((*v118 - *v70) * (v69[1] - v70[1])));
              v71 = gdc::clipFoundationAgainstOverlayTriangle<gdc::Triangle<TempFoundationTriangleAccessor>,gdc::Triangle<OverlayTriangleAccessor>,VertexData_Writer<FillTriangle>>(&v118, &v122, v97);
              ++*v99;
              if (v71)
              {
                v72 = v129;
                if (v129 != v130)
                {
                  do
                  {
                    v73 = *v72;
                    v74 = (v112 + 6 * v73);
                    v75 = (v110 + 16 * *v74);
                    v76 = (v110 + 16 * v74[1]);
                    v77 = v74[2];
                    v114 = v75;
                    v115 = v76;
                    v116 = (v110 + 16 * v77);
                    v117 = (((v116[1] - v75[1]) * (*v76 - *v116)) + ((*v75 - *v116) * (v76[1] - v116[1])));
                    v147[0].n128_u64[0] = &v118;
                    v147[0].n128_u64[1] = &v114;
                    v148 = 0;
                    v149 = 0;
                    if (gdc::TriangleIntersection<gdc::Triangle<TempFoundationTriangleAccessor>,gdc::Triangle<OverlayTriangleAccessor>>::compute(v147))
                    {
                      v147[0].n128_u64[0] = v73;
                      v147[0].n128_u64[1] = v65;
                      std::deque<gdc::TrianglePair>::push_back(&v139, v147);
                      v78 = v130;
                      if (v72 + 1 != v130)
                      {
                        memmove(v72, v72 + 1, ((v130 - v72) & 0xFFFFFFFFFFFFFFFCLL) - 4);
                      }

                      v79 = v78 - 1;
                      v130 = v78 - 1;
                    }

                    else
                    {
                      ++v72;
                      v79 = v130;
                    }
                  }

                  while (v72 != v79);
                }

                v80 = gdc::TriangularDCEL::outerComponent(v48, v65 + v50);
                v81 = v80;
                v82 = v80;
                do
                {
                  v83 = gdc::TriangularDCEL::twin(v48, v82);
                  v84 = gdc::TriangularDCEL::incidentFace(v48, v83);
                  if (v84 != 0x3FFFFFFF)
                  {
                    v85 = v84;
                    if (v84 <= (((*(v48 + 10) - *(v48 + 9)) >> 2) / 3uLL) && !gdc::TriangularDCEL::_isBadFace(v48, v84) && v85 >= v50 && v85 < v49)
                    {
                      v147[0].n128_u64[0] = v85 - v50;
                      if (!std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(&v132, v147[0].n128_u64[0]))
                      {
                        std::deque<unsigned long>::push_back(&v135, v147);
                        std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long const&>(&v132, v85 - v50, v147);
                      }
                    }
                  }

                  v82 = gdc::TriangularDCEL::next(v48, v82);
                }

                while (v82 != v81);
              }

              v64 = *(&v137 + 1);
            }

            while (*(&v137 + 1));
          }

          *(__p[0] + ((v95 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v95;
          std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&v126);
          if (v129 != v131)
          {
            free(v129);
          }

          std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&v132);
          std::deque<unsigned long>::~deque[abi:nn200100](&v135);
        }

        std::deque<gdc::TrianglePair>::~deque[abi:nn200100](&v139);
        goto LABEL_66;
      }

LABEL_62:
      ++*(v99 + 4);
    }

    else
    {
      ++*(v99 + 8);
    }

    v53[v54] |= v55;
LABEL_66:
    v52 = v87;
    v51 = v91;
LABEL_67:
    ++v51;
  }

  while (v51 != v52);
LABEL_99:
  if (__p[0])
  {
    operator delete(__p[0]);
  }

LABEL_101:
  ggl::BufferMemory::~BufferMemory(&v106);
  ggl::BufferMemory::~BufferMemory(v104);
LABEL_102:
  ggl::BufferMemory::~BufferMemory(v111);
  ggl::BufferMemory::~BufferMemory(v109);
}

void sub_1B2E93FC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  ggl::BufferMemory::~BufferMemory(&a24);
  ggl::BufferMemory::~BufferMemory(&a17);
  ggl::BufferMemory::~BufferMemory(&a39);
  ggl::BufferMemory::~BufferMemory(&a32);
  _Unwind_Resume(a1);
}

const gdc::TriangularDCEL::HalfEdge *gdc::_overlayNeighborsNoDegenerates<VertexData_Reader<OverlayTriangleAccessor,unsigned short>>(uint64_t a1, uint64_t a2, gdc::TriangularDCEL *this, unsigned int a4, void *a5)
{
  *a1 = a1 + 32;
  *(a1 + 8) = a1 + 32;
  *(a1 + 16) = a1 + 32;
  *(a1 + 24) = 3;
  v7 = gdc::TriangularDCEL::outerComponent(this, a4);
  v8 = v7;
  v9 = v7;
  v28 = a5;
  do
  {
    v10 = gdc::TriangularDCEL::twin(this, v9);
    v11 = gdc::TriangularDCEL::incidentFace(this, v10);
    v34 = v11;
    if (v11 != 0x3FFFFFFF)
    {
      v12 = v11;
      v13 = ((*(this + 10) - *(this + 9)) >> 2) / 3uLL;
      if (v11 <= v13 && !gdc::TriangularDCEL::_isBadFace(this, v11))
      {
        v14 = *a5;
        if (((*(*a5 + ((v12 >> 3) & 0x1FFFFFF8)) >> v12) & 1) == 0)
        {
          v15 = *(a2 + 48);
          v31 = *(a2 + 104);
          v16 = (v31 + 6 * v12);
          v17 = *(v15 + 16 * v16[2]);
          v18 = vmul_f32(vsub_f32(*(v15 + 16 * *v16), v17), vrev64_s32(vsub_f32(*(v15 + 16 * v16[1]), v17)));
          if (vmvn_s8(vceq_f32(v18, vdup_lane_s32(v18, 1))).u8[0])
          {
            geo::small_vector_base<unsigned int>::push_back(a1, &v34);
          }

          else
          {
            LOBYTE(v32) = 0;
            v33 = 0;
            v19 = gdc::TriangularDCEL::next(this, v10);
            while (1)
            {
              v20 = gdc::TriangularDCEL::twin(this, v19);
              v21 = gdc::TriangularDCEL::incidentFace(this, v20);
              if (v21 != 0x3FFFFFFF && v21 <= v13)
              {
                v23 = v21;
                if (!gdc::TriangularDCEL::_isBadFace(this, v21) && ((*(v14 + ((v23 >> 3) & 0x1FFFFFF8)) >> v23) & 1) == 0)
                {
                  v24 = (v31 + 6 * v23);
                  v25 = *(v15 + 16 * v24[2]);
                  v26 = vmul_f32(vsub_f32(*(v15 + 16 * *v24), v25), vrev64_s32(vsub_f32(*(v15 + 16 * v24[1]), v25)));
                  if (vmvn_s8(vceq_f32(v26, vdup_lane_s32(v26, 1))).u8[0])
                  {
                    break;
                  }
                }
              }

              v19 = gdc::TriangularDCEL::next(this, v19);
              if (v19 == v10)
              {
                goto LABEL_17;
              }
            }

            v32 = v23;
            v33 = 1;
            geo::small_vector_base<unsigned int>::push_back(a1, &v32);
LABEL_17:
            a5 = v28;
          }
        }
      }
    }

    result = gdc::TriangularDCEL::next(this, v9);
    v9 = result;
  }

  while (result != v8);
  return result;
}

void sub_1B2E94324(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*a10 != *(a10 + 16))
  {
    free(*a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gdc::clipFoundationAgainstOverlayTriangle<gdc::Triangle<TempFoundationTriangleAccessor>,gdc::Triangle<OverlayTriangleAccessor>,VertexData_Writer<FillTriangle>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v64[46] = *MEMORY[0x1E69E9840];
  v61[0] = a1;
  v61[1] = a2;
  v62 = 0;
  v63 = 0;
  v55 = gdc::TriangleIntersection<gdc::Triangle<TempFoundationTriangleAccessor>,gdc::Triangle<OverlayTriangleAccessor>>::compute(v61);
  if (v55)
  {
    if (v55 >= 4)
    {
      v4 = 4;
    }

    else
    {
      v4 = v55;
    }

    v5 = *(a3 + 216);
    v6 = v5 + (3 * v4);
    if (v6 > *(a3 + 208))
    {
      v7 = v6 > 1;
      v8 = (1 << -__clz(v6 - 1));
      if (v7)
      {
        v9 = v8;
      }

      else
      {
        v9 = 1;
      }

      *(a3 + 208) = v9;
      ggl::BufferData::resize(*(a3 + 192), v9);
      v5 = *(a3 + 216);
    }

    v10 = a3;
    do
    {
      v11 = *(a3 + 192);
      ggl::BufferMemory::BufferMemory(v59);
      ggl::ResourceAccessor::accessIndexData(v60, 0, v11, v5, v5 + 3, 1, 0);
      ggl::BufferMemory::operator=(v59, v60);
      ggl::BufferMemory::~BufferMemory(v60);
      ggl::BufferMemory::operator=(v10, v59);
      ggl::BufferMemory::~BufferMemory(v59);
      v5 = *(a3 + 216) + 3;
      *(a3 + 216) = v5;
      v10 += 48;
      --v4;
    }

    while (v4);
    v14 = v63;
    if (v63)
    {
      v15 = *v61[0];
      v16 = *(v61[0] + 8);
      v17 = *(v61[0] + 16);
      v18 = (a3 + 40);
      v19 = v64;
      do
      {
        v58 = *(v19 - 8);
        v20 = *(v19 - 6);
        v21 = *v15;
        v22 = *(v15 + 4);
        v23 = *v16;
        v24 = *(v16 + 4);
        v25 = *v17;
        LODWORD(v12) = v22;
        v13.i32[0] = v24;
        v26 = FillTriangle::valueFromBarycentricCoordinates<-1,gm::Matrix<unsigned short,2,1>,gm::Matrix<float,2,1>>(v58, v20, *v15, *&v12, *v16, v13, *v17);
        v27 = v26;
        v28 = *v18;
        **v18 = v26;
        v57 = *(v19 - 5);
        v29 = *(v19 - 3);
        v30.i32[0] = v22;
        v31.i32[0] = v24;
        v32 = FillTriangle::valueFromBarycentricCoordinates<-1,gm::Matrix<unsigned short,2,1>,gm::Matrix<float,2,1>>(v57, v29, v21, v30, v23, v31, v25);
        v33 = v32;
        v34 = HIWORD(v32);
        v28[2] = v32;
        v56 = *(v19 - 2);
        v35 = *v19;
        v36.i32[0] = v22;
        v37.i32[0] = v24;
        v38 = FillTriangle::valueFromBarycentricCoordinates<-1,gm::Matrix<unsigned short,2,1>,gm::Matrix<float,2,1>>(v56, *v19, v21, v36, v23, v37, v25);
        v28[4] = v38;
        _V2.D[1] = v57.i64[1];
        _V7.D[1] = v58.i64[1];
        _D1 = *(v16 + 8);
        __asm { FMLA            D0, D1, V7.D[1] }

        *&_D0 = _D0 + v20 * v17[1].f32[0];
        v28[1] = LODWORD(_D0);
        _D1 = *(v16 + 8);
        __asm { FMLA            D0, D1, V2.D[1] }

        *&_D0 = _D0 + v29 * v17[1].f32[0];
        v28[3] = LODWORD(_D0);
        _V2.D[1] = v56.i64[1];
        _D1 = *(v16 + 8);
        __asm { FMLA            D0, D1, V2.D[1] }

        *&_D0 = _D0 + v35 * v17[1].f32[0];
        v28[5] = LODWORD(_D0);
        v52 = *(v28 + 1);
        v12 = (HIWORD(v38) - v52);
        if (v12 * (v33 - v27) < (v38 - v27) * (v34 - v52))
        {
          v53 = v28[2];
          v28[2] = v38;
          v28[4] = v53;
        }

        v18 += 6;
        v19 += 9;
        --v14;
      }

      while (v14);
    }
  }

  return v55;
}

__n128 std::__function::__func<std::shared_ptr<ggl::DaVinci::ElevatedFillMesh> anonymous namespace::intersectMeshWithoutPolygon<ggl::DaVinci::TexturedCompressedMesh,ggl::DaVinci::ElevatedFillMesh,OverlayTriangleAccessor,FillTriangle>(md::FoundationMesh const&,ggl::DaVinci::TexturedCompressedMesh const&,ggl::Loader *,gdc::PolygonIntersectionDebugStats &)::{lambda(ggl::ResourceAccessor *)#1},std::allocator<std::shared_ptr<ggl::DaVinci::ElevatedFillMesh> anonymous namespace::intersectMeshWithoutPolygon<ggl::DaVinci::TexturedCompressedMesh,ggl::DaVinci::ElevatedFillMesh,OverlayTriangleAccessor,FillTriangle>(md::FoundationMesh const&,ggl::DaVinci::TexturedCompressedMesh const&,ggl::Loader *,gdc::PolygonIntersectionDebugStats &)::{lambda(ggl::ResourceAccessor *)#1}>,void ()(ggl::ResourceAccessor *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A092E0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<std::shared_ptr<gdc::TriangularDCEL> md::buildDCELForMesh<ggl::DaVinci::TexturedCompressedMesh const>(ggl::DaVinci::TexturedCompressedMesh const &,gm::Range<unsigned long>,ggl::Loader *)::{lambda(ggl::ResourceAccessor *)#1},std::allocator<std::shared_ptr<gdc::TriangularDCEL> md::buildDCELForMesh<ggl::DaVinci::TexturedCompressedMesh const>(ggl::DaVinci::TexturedCompressedMesh const &,gm::Range<unsigned long>,ggl::Loader *)::{lambda(ggl::ResourceAccessor *)#1}>,void ()(ggl::ResourceAccessor *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = **(a1 + 24);
  if (*(v4 + 216))
  {
    ggl::DataAccess<ggl::DaVinci::TexturedCompressedDrapingVbo>::DataAccess(v13, v4, *(a1 + 32), *(a1 + 40), 0, v3);
    if (*(a1 + 48))
    {
      v5 = 0;
      v6 = 3;
      do
      {
        gdc::TriangularDCEL::addFace(**(a1 + 8), *(v14 + 4 * v5), *(v14 + 4 * (v6 - 2)), *(v14 + 4 * (v6 - 1)), *(a1 + 16));
        v5 = v6;
        v7 = *(a1 + 48);
        v8 = v7 >= v6;
        v9 = v7 == v6;
        v6 += 3;
      }

      while (!v9 && v8);
    }
  }

  else
  {
    ggl::DataAccess<ggl::DaVinci::TexturedCompressedVbo>::DataAccess(v13, v4, *(a1 + 32), *(a1 + 40), 0, 1, v3);
    if (*(a1 + 48))
    {
      v10 = 0;
      v11 = 3;
      do
      {
        gdc::TriangularDCEL::addFace(**(a1 + 8), *(v14 + 2 * v10), *(v14 + 2 * (v11 - 2)), *(v14 + 2 * (v11 - 1)), *(a1 + 16));
        v10 = v11;
        v12 = *(a1 + 48);
        v8 = v12 >= v11;
        v9 = v12 == v11;
        v11 += 3;
      }

      while (!v9 && v8);
    }
  }

  ggl::BufferMemory::~BufferMemory(v13);
}

__n128 std::__function::__func<std::shared_ptr<gdc::TriangularDCEL> md::buildDCELForMesh<ggl::DaVinci::TexturedCompressedMesh const>(ggl::DaVinci::TexturedCompressedMesh const &,gm::Range<unsigned long>,ggl::Loader *)::{lambda(ggl::ResourceAccessor *)#1},std::allocator<std::shared_ptr<gdc::TriangularDCEL> md::buildDCELForMesh<ggl::DaVinci::TexturedCompressedMesh const>(ggl::DaVinci::TexturedCompressedMesh const &,gm::Range<unsigned long>,ggl::Loader *)::{lambda(ggl::ResourceAccessor *)#1}>,void ()(ggl::ResourceAccessor *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A09298;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void md::TrafficDynamicTileDecoder::decode(uint64_t a2@<X2>, _OWORD *a3@<X8>)
{
  if (((*(**a2 + 16))() & 1) == 0)
  {
    operator new();
  }

  *a3 = 0u;
}

void sub_1B2E95140(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  std::unique_ptr<md::TrafficDynamicTileResource>::~unique_ptr[abi:nn200100](va);
  std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  _Unwind_Resume(a1);
}

md::TrafficDynamicTileResource **std::unique_ptr<md::TrafficDynamicTileResource>::~unique_ptr[abi:nn200100](md::TrafficDynamicTileResource **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    md::TrafficDynamicTileResource::~TrafficDynamicTileResource(v2);
    MEMORY[0x1B8C62190]();
  }

  return a1;
}

void std::__shared_ptr_pointer<md::TrafficDynamicTileResource *,std::shared_ptr<md::TrafficDynamicTileResource>::__shared_ptr_default_delete<md::TrafficDynamicTileResource,md::TrafficDynamicTileResource>,std::allocator<md::TrafficDynamicTileResource>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t *std::unique_ptr<zilch::TrafficDynamicTile>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MEMORY[0x1B8C618C0]();
    MEMORY[0x1B8C62190](v3, 0x1032C40278CF260);
  }

  return a1;
}

void std::__shared_ptr_pointer<zilch::TrafficDynamicTile *,std::shared_ptr<zilch::TrafficDynamicTile>::__shared_ptr_default_delete<zilch::TrafficDynamicTile,zilch::TrafficDynamicTile>,std::allocator<zilch::TrafficDynamicTile>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::FoggedDiffuseBuilding::BuildingPipelineSetup::~BuildingPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

mdm::zone_mallocator *md::VenueFeatureMarker::debugString@<X0>(mdm::zone_mallocator *this@<X0>, uint64_t a2@<X8>)
{
  v2 = a2;
  v3 = *(this + 159);
  if ((v3 & 0x8000000000000000) != 0)
  {
    v3 = *(this + 18);
    if (v3 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v4 = *(this + 17);
  }

  else
  {
    v4 = (this + 136);
  }

  if (v3 >= 0x17)
  {
    if ((v3 | 7) == 0x17)
    {
      v5 = 25;
    }

    else
    {
      v5 = (v3 | 7) + 1;
    }

    v6 = mdm::zone_mallocator::instance(this);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<char>(v6, v5);
    v2[1] = v3;
    v2[2] = v5 | 0x8000000000000000;
    *v2 = v7;
    v2 = v7;
  }

  else
  {
    *(a2 + 23) = v3;
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  this = memmove(v2, v4, v3);
LABEL_13:
  *(v2 + v3) = 0;
  return this;
}

mdm::zone_mallocator *md::VenueFeatureMarker::shortName@<X0>(mdm::zone_mallocator *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = a3;
  if (a2 && (*(this + 240) & 1) != 0)
  {
    v4 = this + 216;
  }

  else
  {
    v4 = this + 160;
  }

  v5 = v4[23];
  if ((v5 & 0x8000000000000000) != 0)
  {
    v5 = *(v4 + 1);
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v4 = *v4;
  }

  if (v5 >= 0x17)
  {
    if ((v5 | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (v5 | 7) + 1;
    }

    v7 = mdm::zone_mallocator::instance(this);
    v8 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<char>(v7, v6);
    v3[1] = v5;
    v3[2] = v6 | 0x8000000000000000;
    *v3 = v8;
    v3 = v8;
  }

  else
  {
    *(a3 + 23) = v5;
    if (!v5)
    {
      goto LABEL_16;
    }
  }

  this = memmove(v3, v4, v5);
LABEL_16:
  *(v3 + v5) = 0;
  return this;
}

mdm::zone_mallocator *md::VenueFeatureMarker::name@<X0>(mdm::zone_mallocator *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = a3;
  if (a2 && (*(this + 208) & 1) != 0)
  {
    v4 = this + 184;
  }

  else
  {
    v4 = this + 136;
  }

  v5 = v4[23];
  if ((v5 & 0x8000000000000000) != 0)
  {
    v5 = *(v4 + 1);
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v4 = *v4;
  }

  if (v5 >= 0x17)
  {
    if ((v5 | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (v5 | 7) + 1;
    }

    v7 = mdm::zone_mallocator::instance(this);
    v8 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<char>(v7, v6);
    v3[1] = v5;
    v3[2] = v6 | 0x8000000000000000;
    *v3 = v8;
    v3 = v8;
  }

  else
  {
    *(a3 + 23) = v5;
    if (!v5)
    {
      goto LABEL_16;
    }
  }

  this = memmove(v3, v4, v5);
LABEL_16:
  *(v3 + v5) = 0;
  return this;
}

void md::VenueFeatureMarker::~VenueFeatureMarker(void **this)
{
  *this = &unk_1F2A09428;
  md::Venue::~Venue(this + 4);
  v2 = this[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A09428;
  md::Venue::~Venue(this + 4);
  v2 = this[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void md::Venue::~Venue(void **this)
{
  if (*(this + 208) == 1 && *(this + 207) < 0)
  {
    operator delete(this[23]);
  }

  if (*(this + 176) == 1 && *(this + 175) < 0)
  {
    operator delete(this[19]);
  }

  if (*(this + 151) < 0)
  {
    operator delete(this[16]);
  }

  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  v2 = this[8];
  if (v2)
  {
    this[9] = v2;
    operator delete(v2);
  }

  v3 = this[5];
  if (v3)
  {
    this[6] = v3;
    operator delete(v3);
  }

  v4 = this + 2;
  std::vector<md::VenueBuilding>::__destroy_vector::operator()[abi:nn200100](&v4);
}

void std::vector<md::VenueBuilding>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 120;
        std::__destroy_at[abi:nn200100]<md::VenueBuilding,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__destroy_at[abi:nn200100]<md::VenueBuilding,0>(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = a1;
  std::vector<md::VenueLevel>::__destroy_vector::operator()[abi:nn200100](&v3);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<md::VenueBuilding>>(unint64_t a1)
{
  if (a1 < 0x222222222222223)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void ggl::DaVinci::GroundDepthPipelineSetup::~GroundDepthPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ImageCopy::Pos2DUVPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A09510;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::IdentifiedResourceLogic::debugConsoleString@<X0>(md::SceneContext **a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:nn200100](&v57);
  v4 = *a1;
  *__p = 0u;
  v55 = 0u;
  v56 = 1065353216;
  v5 = md::SceneContext::layerDataInView(v4, 33);
  v6 = *v5;
  v52 = v5 + 1;
  if (*v5 != v5 + 1)
  {
    while (1)
    {
      v7 = v6[4];
      v8 = v6[5];
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v53 = v8;
      v9 = gdc::Registry::storage<md::components::Asset>(*(v7 + 1328));
      v10 = v9[7];
      v11 = v9[8];
      if (v10 != v11)
      {
        break;
      }

LABEL_24:
      if (v53)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v53);
      }

      v19 = v6[1];
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
          v20 = v6[2];
          v21 = *v20 == v6;
          v6 = v20;
        }

        while (!v21);
      }

      v6 = v20;
      if (v20 == v52)
      {
        goto LABEL_32;
      }
    }

    v12 = v9[10];
LABEL_6:
    v13 = *v12;
    if (!__p[1])
    {
      goto LABEL_22;
    }

    v14 = vcnt_s8(__p[1]);
    v14.i16[0] = vaddlv_u8(v14);
    if (v14.u32[0] > 1uLL)
    {
      v15 = *v12;
      if (v13 >= __p[1])
      {
        v15 = v13 % __p[1];
      }
    }

    else
    {
      v15 = (__p[1] - 1) & v13;
    }

    v16 = *(__p[0] + v15);
    if (!v16 || (v17 = *v16) == 0)
    {
LABEL_22:
      operator new();
    }

    while (1)
    {
      v18 = v17[1];
      if (v18 == v13)
      {
        if (v17[2] == v13)
        {
          ++*(v17 + 6);
          v12 += 9;
          v10 += 8;
          if (v10 == v11)
          {
            goto LABEL_24;
          }

          goto LABEL_6;
        }
      }

      else
      {
        if (v14.u32[0] > 1uLL)
        {
          if (v18 >= __p[1])
          {
            v18 %= __p[1];
          }
        }

        else
        {
          v18 &= __p[1] - 1;
        }

        if (v18 != v15)
        {
          goto LABEL_22;
        }
      }

      v17 = *v17;
      if (!v17)
      {
        goto LABEL_22;
      }
    }
  }

LABEL_32:
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v57, "\n=== Assets ===\n", 16);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v57, "Count: ", 7);
  v22 = MEMORY[0x1B8C61CB0](&v57, *(a2 + 64));
  v23 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v22, " - In Scene: ", 13);
  v24 = MEMORY[0x1B8C61CB0](v23, *(&v55 + 1));
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v24, "\n", 1);
  for (i = *(a2 + 56); i; i = *i)
  {
    v26 = i[3];
    v27 = MEMORY[0x1B8C61CF0](&v57, i[2]);
    v28 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v27, " - ", 3);
    v29 = MEMORY[0x1B8C61CB0](v28, *(i[3] + 368));
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v29, " lods\n", 6);
    v30 = *(v26 + 184);
    v31 = *(v26 + 192);
    while (v30 != v31)
    {
      if (__p[1])
      {
        v32 = i[2];
        v33 = vcnt_s8(__p[1]);
        v33.i16[0] = vaddlv_u8(v33);
        if (v33.u32[0] > 1uLL)
        {
          v34 = i[2];
          if (v32 >= __p[1])
          {
            v34 = v32 % __p[1];
          }
        }

        else
        {
          v34 = (__p[1] - 1) & v32;
        }

        v35 = *(__p[0] + v34);
        if (v35)
        {
          for (j = *v35; j; j = *j)
          {
            v37 = j[1];
            if (v37 == v32)
            {
              if (j[2] == v32)
              {
                v44 = *(j + 6);
                goto LABEL_52;
              }
            }

            else
            {
              if (v33.u32[0] > 1uLL)
              {
                if (v37 >= __p[1])
                {
                  v37 %= __p[1];
                }
              }

              else
              {
                v37 &= __p[1] - 1;
              }

              if (v37 != v34)
              {
                break;
              }
            }
          }
        }
      }

      v44 = 0;
LABEL_52:
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v57, "\t Instances: ", 13);
      v38 = MEMORY[0x1B8C61C90](&v57, v44);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v38, "\n", 1);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v57, "\t\t", 2);
      v39 = MEMORY[0x1B8C61C80](&v57, 0);
      v40 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v39, ": ", 2);
      v41 = MEMORY[0x1B8C61CB0](v40, (v30[3] - v30[2]) / 3uLL);
      v42 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v41, " tri's ", 7);
      v43 = MEMORY[0x1B8C61CB0](v42, (*(*v30 + 72) - *(*v30 + 64)) >> 4);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v43, " vertices\n", 10);
      v30 += 10;
    }
  }

  if ((v64 & 0x10) != 0)
  {
    v47 = v63;
    if (v63 < v60)
    {
      v63 = v60;
      v47 = v60;
    }

    locale = v59[4].__locale_;
  }

  else
  {
    if ((v64 & 8) == 0)
    {
      v45 = 0;
      v46 = a3;
      *(a3 + 23) = 0;
      goto LABEL_67;
    }

    locale = v59[1].__locale_;
    v47 = v59[3].__locale_;
  }

  v46 = a3;
  v45 = v47 - locale;
  if ((v47 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v45 >= 0x17)
  {
    operator new();
  }

  *(a3 + 23) = v45;
  if (v45)
  {
    memmove(a3, locale, v45);
  }

LABEL_67:
  *(v46 + v45) = 0;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(__p);
  v57 = *MEMORY[0x1E69E54E8];
  *(&v57 + *(v57 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v58 = MEMORY[0x1E69E5548] + 16;
  if (v62 < 0)
  {
    operator delete(v61);
  }

  v58 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v59);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v65);
}

void sub_1B2E96314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&a13);
  a19 = *MEMORY[0x1E69E54E8];
  *(&a19 + *(a19 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  a20 = MEMORY[0x1E69E5548] + 16;
  if (a33 < 0)
  {
    operator delete(__p);
  }

  a20 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a21);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&a36);
  _Unwind_Resume(a1);
}

unint64_t gdc::RegistryView<md::components::ReferencedAssetInstance,md::components::NonTiled>::getComponent<md::components::NonTiled,md::components::ReferencedAssetInstance>(void *a1, uint64_t a2)
{
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  if (a1[8] == v3)
  {
    return a1[11];
  }

  else
  {
    return a1[10] + 96 * ((v3 - a1[7]) >> 3);
  }
}

unint64_t gdc::RegistryView<md::components::Asset,md::components::NonTiled>::getComponent<md::components::NonTiled,md::components::Asset>(void *a1, uint64_t a2)
{
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  if (a1[8] == v3)
  {
    return a1[11];
  }

  else
  {
    return a1[10] + 72 * ((v3 - a1[7]) >> 3);
  }
}

void std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<md::MaterialData>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::MaterialData>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::MaterialData>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<md::MaterialData>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::__deallocate_node(*(a1 + 16));
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

void std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<md::AssetData>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::AssetData>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::AssetData>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<md::AssetData>>>>::swap(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = 0;
  v5 = *a2;
  *a2 = 0;
  v6 = *a1;
  *a1 = v5;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *a2;
  *a2 = v4;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = *(a1 + 16);
  v9 = *(a1 + 8);
  v10 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v10;
  *(a2 + 8) = v9;
  *(a2 + 16) = v8;
  v11 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = v11;
  v12 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = v12;
  if (*(a1 + 24))
  {
    v13 = *(a1 + 8);
    v14 = *(*(a1 + 16) + 8);
    if ((v13 & (v13 - 1)) != 0)
    {
      if (v14 >= v13)
      {
        v14 %= v13;
      }
    }

    else
    {
      v14 &= v13 - 1;
    }

    *(*a1 + 8 * v14) = a1 + 16;
  }

  if (v11)
  {
    v15 = *(a2 + 8);
    v16 = *(*(a2 + 16) + 8);
    if ((v15 & (v15 - 1)) != 0)
    {
      if (v16 >= v15)
      {
        v16 %= v15;
      }
    }

    else
    {
      v16 &= v15 - 1;
    }

    *(*a2 + 8 * v16) = a2 + 16;
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<md::MaterialData>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::MaterialData>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::MaterialData>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<md::MaterialData>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(void *a1, unint64_t a2, void **a3)
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

void sub_1B2E96880(_Unwind_Exception *a1)
{
  v3 = v1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t md::Logic<md::IdentifiedResourceLogic,md::IdentifiedResourceContext,md::LogicDependencies<gdc::TypeList<md::SceneContext,md::LayerDataLogicContext,md::RegistryContext,md::ElevationContext>,gdc::TypeList<md::AssetInjectionContext>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  if (*(a3 + 8) == 0x12B1E486D3040E2CLL && (v4 = *(a3 + 32)) != 0)
  {
    v6 = result;
    md::LogicDependencies<gdc::TypeList<md::SceneContext,md::LayerDataLogicContext,md::RegistryContext,md::ElevationContext>,gdc::TypeList<md::AssetInjectionContext>>::resolveDependencies(v7, *(a2 + 8));
    return (*(*v6 + 160))(v6, a2, v7, v4);
  }

  else
  {
    a4[23] = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::IdentifiedResourceContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::IdentifiedResourceContext>::~ManagedObjectHolder(void *a1)
{
  gdc::ManagedObjectHolder<md::IdentifiedResourceContext>::~ManagedObjectHolder(a1);

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::IdentifiedResourceContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A09718;
  v2 = a1[4];
  if (v2)
  {
    std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::~__hash_table((v2 + 184));
    std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::~__hash_table((v2 + 144));
    v3 = *(v2 + 120);
    if (v3)
    {
      *(v2 + 128) = v3;
      operator delete(v3);
    }

    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v2 + 80);
    std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::~__hash_table((v2 + 40));
    v4 = std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::~__hash_table(v2);
    MEMORY[0x1B8C62190](v4, 0x10B0C40F8CC62CALL);
  }

  return a1;
}

void md::IdentifiedResourceLogic::~IdentifiedResourceLogic(md::IdentifiedResourceLogic *this, uint64_t a2)
{
  md::IdentifiedResourceLogic::~IdentifiedResourceLogic(this, a2);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A09548;
  GEOConfigRemoveBlockListener();
  GEOConfigRemoveBlockListener();
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(this + 304);
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(this + 224);

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 152);
  v3 = *(this + 18);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  std::unique_ptr<gdc::LayerDataCollector>::~unique_ptr[abi:nn200100](this + 16);
  std::unique_ptr<gdc::LayerDataCollector>::~unique_ptr[abi:nn200100](this + 15);
  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

void sub_1B2E96B2C(_Unwind_Exception *a1)
{
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(v1 + 304);
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(v1 + 224);

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v1 + 152);
  v3 = *(v1 + 144);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  std::unique_ptr<gdc::LayerDataCollector>::~unique_ptr[abi:nn200100]((v1 + 128));
  std::unique_ptr<gdc::LayerDataCollector>::~unique_ptr[abi:nn200100]((v1 + 120));
  *v1 = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v1 + 104));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v1 + 80));
  _Unwind_Resume(a1);
}

void ***std::unique_ptr<gdc::LayerDataCollector>::~unique_ptr[abi:nn200100](void ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    gdc::LayerDataCollector::~LayerDataCollector(v2);
    MEMORY[0x1B8C62190]();
  }

  return a1;
}

void ___ZN2md23IdentifiedResourceLogicC2ERKNSt3__110shared_ptrINS_15RegistryManagerEEEPU28objcproto17OS_dispatch_queue8NSObject_block_invoke(uint64_t a1)
{
  md::IdentifiedResourceLogic::IdentifiedResourceLogic(std::shared_ptr<md::RegistryManager> const&,NSObject  {objcproto17OS_dispatch_queue}*)::$_0::operator()(*(a1 + 32));
  v1 = [MEMORY[0x1E696AD88] defaultCenter];
  [v1 postNotificationName:@"VKShouldFlushTileCachesNotification" object:0];
}

void ___ZN2md23IdentifiedResourceLogicC2ERKNSt3__110shared_ptrINS_15RegistryManagerEEEPU28objcproto17OS_dispatch_queue8NSObject_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(v1 + 192) = GEOConfigGetBOOL();
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"VKShouldFlushTileCachesNotification" object:0];
}

void *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long>(void *result, unint64_t a2, void *a3)
{
  v3 = result[1];
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

  v6 = *(*result + 8 * v5);
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

  return result;
}

void md::Logic<md::IdentifiedResourceLogic,md::IdentifiedResourceContext,md::LogicDependencies<gdc::TypeList<md::SceneContext,md::LayerDataLogicContext,md::RegistryContext,md::ElevationContext>,gdc::TypeList<md::AssetInjectionContext>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2, v3);
}

void md::BuildingRenderLayer::featureMarker(uint64_t a1@<X1>, double *a2@<X2>, uint64_t *a3@<X8>)
{
  v3 = *(a1 + 648);
  *a3 = 0;
  a3[1] = 0;
  if (v3)
  {
    v7 = geo::codec::VectorTile::totalBuildingFootprintsCount(v3);
    if (v7)
    {
      v8 = v7;
      for (i = 0; i != v8; ++i)
      {
        v10 = geo::codec::buildingFootprintFeatureAtIndex(*(a1 + 648), i);
        v11 = *(v10 + 96);
        if (v11)
        {
          v12 = v10;
          for (j = 0; j != v11; ++j)
          {
            v24 = 0;
            v14 = geo::codec::multiSectionFeaturePoints(v12, j, &v24);
            if (VKPointInPolygon(v14, v24, *a2, a2[1]))
            {
              operator new();
            }
          }
        }
      }

      *a3 = 0;
      a3[1] = 0;
      v3 = *(a1 + 648);
    }

    v15 = geo::codec::VectorTile::polygonsCount(*(v3 + 96), *(v3 + 104));
    if (v15)
    {
      v16 = v15;
      for (k = 0; k < v16; ++k)
      {
        v18 = *(*(a1 + 648) + 96) + (k << 7);
        v24 = v18;
        v19 = *(v18 + 96);
        if (v19)
        {
          for (m = 0; m != v19; ++m)
          {
            v22 = 0;
            v21 = geo::codec::multiSectionFeaturePoints(v18, m, &v22);
            if (VKPointInPolygon(v21, v22, *a2, a2[1]))
            {
              std::allocate_shared[abi:nn200100]<md::VectorFeatureMarker,std::allocator<md::VectorFeatureMarker>,GeoCodecsPolygonFeature *&,0>(&v23, &v24);
            }
          }

          a3[1] = 0;
        }

        *a3 = 0;
      }
    }
  }
}

void sub_1B2E97204(_Unwind_Exception *exception_object)
{
  *v1 = 0;
  v1[1] = v2;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<md::VectorFeatureMarker>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A36930;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::BuildingRenderLayer::updateWithContext(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  v5 = md::LayoutContext::get<md::VenueLogicContext>(v4);
  v6 = md::LayoutContext::get<md::CameraContext>(v4);
  v71 = md::LayoutContext::get<md::ElevationContext>(v4);
  v7 = *a2;
  v8 = a2[1];
  if (*a2 != v8)
  {
    do
    {
      v9 = *v7;
      v10 = v6[471] * v6[173] / (v6[171] * (*(*v7 + 80) - *(*v7 + 64)));
      *(v9 + 376) = v10;
      *(v9 + 416) = *(v71 + 5);
      ggl::DataAccess<ggl::Tile::View>::DataAccess(v77, *(v9 + 224), 1);
      v11 = 0;
      v12 = v6 + 101;
      do
      {
        v13 = 0;
        v14 = v9 + 96;
        do
        {
          v15 = 0;
          v16 = 0.0;
          v17 = v12;
          do
          {
            v18 = *v17;
            v17 += 4;
            v16 = v16 + *(v14 + v15) * v18;
            v15 += 8;
          }

          while (v15 != 32);
          v72[4 * v13++ + v11] = v16;
          v14 += 32;
        }

        while (v13 != 4);
        ++v11;
        ++v12;
      }

      while (v11 != 4);
      v19 = 0;
      v20 = v72;
      do
      {
        v22 = *v20;
        v21 = *(v20 + 2);
        v20 += 4;
        *(&v73 + v19) = vcvt_hight_f32_f64(vcvt_f32_f64(v22), v21);
        v19 += 16;
      }

      while (v19 != 64);
      v23 = v78;
      v24 = v74;
      *v78 = v73;
      v23[1] = v24;
      v25 = v76;
      v23[2] = v75;
      v23[3] = v25;
      *(v23 + 16) = *(v9 + 376);
      ggl::BufferMemory::~BufferMemory(v77);
      v27 = *(v9 + 472);
      v28 = *(v9 + 480);
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
        ggl::DataAccess<ggl::Tile::View>::DataAccess(v26, v27, 1);
        std::__shared_weak_count::__release_shared[abi:nn200100](v28);
      }

      else
      {
        ggl::DataAccess<ggl::Tile::View>::DataAccess(v26, v27, 1);
      }

      v29 = 0;
      v30 = v6 + 101;
      do
      {
        v31 = 0;
        v32 = v9 + 648;
        do
        {
          v33 = 0;
          v34 = 0.0;
          v35 = v30;
          do
          {
            v36 = *v35;
            v35 += 4;
            v34 = v34 + *(v32 + v33) * v36;
            v33 += 8;
          }

          while (v33 != 32);
          v72[4 * v31++ + v29] = v34;
          v32 += 32;
        }

        while (v31 != 4);
        ++v29;
        ++v30;
      }

      while (v29 != 4);
      v37 = 0;
      v38 = v72;
      do
      {
        v40 = *v38;
        v39 = *(v38 + 2);
        v38 += 4;
        *(&v73 + v37) = vcvt_hight_f32_f64(vcvt_f32_f64(v40), v39);
        v37 += 16;
      }

      while (v37 != 64);
      v41 = v78;
      v42 = v74;
      *v78 = v73;
      v41[1] = v42;
      v43 = v76;
      v41[2] = v75;
      v41[3] = v43;
      *(v41 + 16) = *(v9 + 376);
      ggl::BufferMemory::~BufferMemory(v77);
      ggl::DataAccess<ggl::Tile::View>::DataAccess(v44, *(v9 + 488), 1);
      v45 = 0;
      if (v5)
      {
        v46 = (v5 + 18);
        do
        {
          v47 = 0;
          v48 = v9 + 96;
          do
          {
            v49 = 0;
            v50 = 0.0;
            v51 = v46;
            do
            {
              v52 = *v51;
              v51 += 4;
              v50 = v50 + *(v48 + v49) * v52;
              v49 += 8;
            }

            while (v49 != 32);
            v72[4 * v47++ + v45] = v50;
            v48 += 32;
          }

          while (v47 != 4);
          ++v45;
          ++v46;
        }

        while (v45 != 4);
        v53 = 0;
        v54 = v72;
        do
        {
          v56 = *v54;
          v55 = *(v54 + 2);
          v54 += 4;
          *(&v73 + v53) = vcvt_hight_f32_f64(vcvt_f32_f64(v56), v55);
          v53 += 16;
        }

        while (v53 != 64);
      }

      else
      {
        v57 = v6 + 101;
        do
        {
          v58 = 0;
          v59 = v9 + 96;
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
            v72[4 * v58++ + v45] = v61;
            v59 += 32;
          }

          while (v58 != 4);
          ++v45;
          ++v57;
        }

        while (v45 != 4);
        v64 = 0;
        v65 = v72;
        do
        {
          v67 = *v65;
          v66 = *(v65 + 2);
          v65 += 4;
          *(&v73 + v64) = vcvt_hight_f32_f64(vcvt_f32_f64(v67), v66);
          v64 += 16;
        }

        while (v64 != 64);
      }

      v68 = v78;
      v69 = v74;
      *v78 = v73;
      v68[1] = v69;
      v70 = v76;
      v68[2] = v75;
      v68[3] = v70;
      *(v68 + 16) = *(v9 + 376);
      ggl::BufferMemory::~BufferMemory(v77);
      ++v7;
    }

    while (v7 != v8);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,md::BuildingTileDataRenderable *>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,md::BuildingTileDataRenderable *>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,md::BuildingTileDataRenderable *>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,md::BuildingTileDataRenderable *>>>::erase(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = *a2;
  v3 = a2[1];
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v6 = *(*a1 + 8 * v3);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 != a1 + 2)
  {
    v8 = v7[1];
    if (v5.u32[0] > 1uLL)
    {
      if (v8 >= *&v2)
      {
        v8 %= *&v2;
      }
    }

    else
    {
      v8 &= *&v2 - 1;
    }

    v9 = *a2;
    if (v8 == v3)
    {
LABEL_20:
      if (!v9)
      {
        goto LABEL_27;
      }

      goto LABEL_21;
    }
  }

  if (!v4)
  {
    goto LABEL_19;
  }

  v10 = *(v4 + 8);
  if (v5.u32[0] > 1uLL)
  {
    if (v10 >= *&v2)
    {
      v10 %= *&v2;
    }
  }

  else
  {
    v10 &= *&v2 - 1;
  }

  v9 = *a2;
  if (v10 != v3)
  {
LABEL_19:
    *(*a1 + 8 * v3) = 0;
    v9 = *a2;
    goto LABEL_20;
  }

LABEL_21:
  v11 = *(v9 + 8);
  if (v5.u32[0] > 1uLL)
  {
    if (v11 >= *&v2)
    {
      v11 %= *&v2;
    }
  }

  else
  {
    v11 &= *&v2 - 1;
  }

  if (v11 != v3)
  {
    *(*a1 + 8 * v11) = v7;
    v9 = *a2;
  }

LABEL_27:
  *v7 = v9;
  *a2 = 0;
  --a1[3];
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<gdc::LayerDataRequestKey,std::__list_iterator<geo::MarkedLRUCache<gdc::LayerDataRequestKey,long long,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>>::CacheEntry,void *>>,void *>>>::operator()[abi:nn200100](1, a2);
  return v4;
}

void ___ZN2md19BuildingRenderLayer12animateTilesERKN3geo5sliceINSt3__111__wrap_iterIPKPNS_26BuildingTileDataRenderableEEEEEffff_block_invoke_3(uint64_t a1, float a2)
{
  v2 = a2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  if (*(a1 + 64) > *(a1 + 68))
  {
    a2 = 1.0 - a2;
  }

  *(v5 + 408) = a2;
  v6 = *(a1 + 64);
  v7 = *(a1 + 68);
  *(v5 + 412) = v6 + ((*(*(a1 + 32) + 16))(v2) * (v7 - v6));
  v8 = *(a1 + 48);
  v9 = *(a1 + 72);
  v10 = *(a1 + 76);
  *(v8 + 420) = v9 + ((*(*(a1 + 32) + 16))(v2) * (v10 - v9));
  v11 = *(v4 + 456);
  v12 = *(a1 + 56);

  md::MercatorTerrainHeightCache::invalidateRect(v11, v12);
}

void ___ZN2md19BuildingRenderLayer12animateTilesERKN3geo5sliceINSt3__111__wrap_iterIPKPNS_26BuildingTileDataRenderableEEEEEffff_block_invoke_4(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = 1.0;
  if (*(a1 + 56) > *(a1 + 60))
  {
    v4 = 0.0;
  }

  *(v2 + 408) = v4;
  *(v2 + 412) = *(a1 + 60);
  *(v2 + 420) = *(a1 + 64);
  md::BuildingTileDataRenderable::setAnimation(v2, 0);
  v5 = *(v3 + 456);
  v6 = *(a1 + 48);

  md::MercatorTerrainHeightCache::invalidateRect(v5, v6);
}

void md::BuildingRenderLayer::renderablesWillEnterView(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v5 = gdc::Context::get<md::StyleLogicContext>(*(a2 + 8));
  v6 = *a3;
  v7 = a3[1];
  if (*a3 != v7)
  {
    v8 = v5;
    do
    {
      v9 = *(*v6 + 392);
      v10 = *(v9 + 728);
      v11 = *(v9 + 736);
      while (v10 != v11)
      {
        v12 = *v10;
        v13 = v10[1];
        while (v12 != v13)
        {
          v14 = *(v12 + 8);
          [v14 updateWithStyleManager:v8];

          v12 += 24;
        }

        v10 += 3;
      }

      ++v6;
    }

    while (v6 != v7);
    v6 = *a3;
    v7 = a3[1];
  }

  if (*(*(a1 + 376) + 17) == 1)
  {
    v15 = 1.0;
  }

  else
  {
    v15 = 0.0;
  }

  md::BuildingRenderLayer::animateTiles(a1, v6, v7, 0.0, 1.0, 0.0, v15);
}

void md::BuildingRenderLayer::prepare(uint64_t **this, md::LayoutContext *a2)
{
  ((*this)[13])(this);
  v4 = this[34];
  for (i = this[35]; v4 != i; ++v4)
  {
    v6 = *v4;
    v7 = md::LabelExternalPointFeature::incident(*(*v4 + 432));
    if (v7)
    {
    }

    else
    {
      v8 = *(v6 + 456);
      md::LabelExternalPointFeature::incident(v8);
      objc_claimAutoreleasedReturnValue();

      if (!v8)
      {
        if (*(this[47] + 17))
        {
          v9 = 1.0;
        }

        else
        {
          v9 = 0.0;
        }

        *(v6 + 420) = v9;
      }
    }
  }

  if (*(this[47] + 17) == 1 && *(this[49] + 771) == 1)
  {
    v10 = this[35];
    v11 = this[34];
    if (v10 != v11)
    {
      **(a2 + 93) = 1;
      do
      {
        if ((*(*(a2 + 93) + 1) & 1) == 0)
        {
          v12 = *v11;
          if (*(*(*v11 + 392) + 888) != *(*(*v11 + 392) + 880))
          {
            v13 = *(v12 + 432);
            md::LabelExternalPointFeature::incident(v13);
            objc_claimAutoreleasedReturnValue();
            if (v13)
            {
              *(*(a2 + 93) + 1) = 1;
            }

            else
            {
              v14 = md::LabelExternalPointFeature::incident(*(v12 + 456));
              *(*(a2 + 93) + 1) = v14 != 0;
            }
          }
        }

        ++v11;
      }

      while (v11 != v10);
    }
  }
}

uint64_t md::BuildingRenderLayer::reserveStencilRange(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 486) == *(a3 + 1))
  {
    v3 = result;
    result = ggl::StencilManager::reserveStencilValues(*(a2 + 24), 1, (*(result + 392) + 760), 0);
    *(*(v3 + 392) + 776) = result;
  }

  return result;
}

uint64_t *md::BuildingRenderLayer::layout(md::BuildingRenderLayer *this, const md::LayoutContext *a2)
{
  v2 = this;
  v154 = *MEMORY[0x1E69E9840];
  v3 = *(this + 44);
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  v4 = *(a2 + 1);
  v5 = md::LayoutContext::get<md::CameraContext>(v4);
  v6 = *(v2 + 408);
  if (*(*(v2 + 49) + 771) != 1)
  {
    md::BuildingRenderLayer::setBuildingMode(v2, 0, *(v2 + 408));
    goto LABEL_22;
  }

  v7 = gdc::Context::get<md::StyleLogicContext>(v4);
  v8 = *(*(v2 + 47) + 16);
  v9 = v7[85];
  gss::StylesheetManager<gss::PropertyID>::styleGlobalProperties(&v148, *(*v7 + 16));
  shared_owners = v148;
  if (v148)
  {
    shared_owners = v148[12].__shared_owners_;
  }

  if (v9 == 3 || (shared_owners & 1) != 0)
  {
    if (v8 != 1)
    {
      md::BuildingRenderLayer::setBuildingMode(v2, 1, v6);
    }

    goto LABEL_20;
  }

  v11 = *(gdc::Camera::cameraFrame(v5) + 32);
  if (v11 > 0.0 && v8 != 1)
  {
    v14 = 1;
LABEL_19:
    md::BuildingRenderLayer::setBuildingMode(v2, v14, v6);
    goto LABEL_20;
  }

  if (v11 == 0.0 && v8 != 0)
  {
    v14 = 0;
    goto LABEL_19;
  }

LABEL_20:
  if (v149)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v149);
  }

LABEL_22:
  md::BuildingRenderResources::resetPools(*(v2 + 49));
  md::LandmarkRenderResources::resetPools(*(v2 + 50));
  v15 = *(*(*(v2 + 5) + 24) + 8);
  md::FrameGraph::renderQueueForPass(v15, *(v2 + 472));
  v16 = md::FrameGraph::renderQueueForPass(v15, *(v2 + 474));
  if (v16)
  {
    v17 = *(*(v16 + 16) + 8 * *(v2 + 475));
  }

  else
  {
    v17 = 0;
  }

  v18 = md::FrameGraph::renderQueueForPass(v15, *(v2 + 476));
  if (v18)
  {
    v19 = *(*(v18 + 16) + 8 * *(v2 + 477));
  }

  else
  {
    v19 = 0;
  }

  v20 = md::FrameGraph::renderQueueForPass(v15, *(v2 + 478));
  if (v20)
  {
    v139 = *(*(v20 + 16) + 8 * *(v2 + 479));
  }

  else
  {
    v139 = 0;
  }

  v21 = md::FrameGraph::renderQueueForPass(v15, *(v2 + 480));
  if (v21)
  {
    v130 = *(*(v21 + 16) + 8 * *(v2 + 481));
  }

  else
  {
    v130 = 0;
  }

  v22 = md::FrameGraph::renderQueueForPass(v15, *(v2 + 482));
  if (v22)
  {
    v132 = *(*(v22 + 16) + 8 * *(v2 + 483));
  }

  else
  {
    v132 = 0;
  }

  v23 = md::FrameGraph::renderQueueForPass(v15, *(v2 + 484));
  if (v23)
  {
    v24 = *(*(v23 + 16) + 8 * *(v2 + 485));
  }

  else
  {
    v24 = 0;
  }

  ggl::CommandBuffer::clearRenderItems(v139);
  *(v139 + 4) = *(*(v2 + 49) + 760);
  ggl::CommandBuffer::clearRenderItems(v130);
  *(v130 + 4) = *(*(v2 + 49) + 760);
  ggl::CommandBuffer::clearRenderItems(v132);
  *(v132 + 4) = *(*(v2 + 49) + 760);
  ggl::CommandBuffer::clearRenderItems(v24);
  *(v24 + 32) = *(*(v2 + 49) + 760);
  v25 = *(a2 + 1);
  v26 = md::LayoutContext::get<md::VenueLogicContext>(v25);
  md::LayoutContext::zoomAtCentrePoint(v25);
  if (v26)
  {
    v28 = 1.0 - fminf(fmaxf((*(v2 + 103) * 2.0) + -31.0, 0.0), 1.0);
    *(v2 + 103) = v27;
    if (v28 < 0.00000011921 == (1.0 - fminf(fmaxf((v27 * 2.0) + -31.0, 0.0), 1.0)) >= 0.00000011921)
    {
      md::MercatorTerrainHeightCache::invalidateRect(*(v2 + 57), v5 + 2920);
    }
  }

  else
  {
    *(v2 + 103) = v27;
  }

  v138 = v2;
  if (*(*(v2 + 47) + 17) == 1)
  {
    v58 = *(v2 + 49);
    if (*(v58 + 771) == 1)
    {
      v59 = *(v2 + 34);
      v60 = *(v2 + 35);
      v128 = v19;
      if (v59 == v60)
      {
        v64 = 5;
      }

      else
      {
        v61 = 1;
        do
        {
          v62 = *v59++;
          v63 = (*(*(v62 + 392) + 888) - *(*(v62 + 392) + 880)) >> 4;
          if (v61 <= v63)
          {
            v61 = v63;
          }
        }

        while (v59 != v60);
        v64 = 5 * v61;
      }

      v141 = v64;
      if (*(v58 + 770))
      {
        v67 = *gdc::Context::get<md::StyleLogicContext>(*(a2 + 1));
        if (v67)
        {
          gss::StylesheetManager<gss::PropertyID>::styleGlobalProperties(&v146, *(v67 + 16));
          v68 = v146;
          if (v146)
          {
            v69 = gdc::Context::get<md::GeometryContext>(*(a2 + 1));
            if (v69)
            {
              v70 = v69;
              v71 = *(v68 + 300);
              v72 = *(v68 + 308);
              v73 = *(v68 + 312);
              v74 = gdc::ToCoordinateSystem(*(v69 + 320));
              v75 = 2;
              if (v74)
              {
                v75 = 4;
              }

              v76 = &v70[v75];
              v77 = v76[1];
              v140 = *v76;
              if (v77)
              {
                atomic_fetch_add_explicit(&v77->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v78 = *(v2 + 34);
              v136 = v77;
              for (i = *(v2 + 35); v78 != i; ++v78)
              {
                v79 = *v78;
                v80 = *(*v78 + 392);
                v81 = *(*(v2 + 49) + 592);
                v82 = v81[1];
                if (v82 == *v81)
                {
                  v84 = v81[11];
                  if (!v84)
                  {
                    goto LABEL_140;
                  }

                  v74 = (*(*v84 + 48))(v84);
                  v83 = v74;
                }

                else
                {
                  v83 = *(v82 - 8);
                  v81[1] = v82 - 8;
                }

                v86 = v81[5];
                v85 = v81[6];
                if (v86 >= v85)
                {
                  v88 = v81[4];
                  v89 = (v86 - v88) >> 3;
                  if ((v89 + 1) >> 61)
                  {
                    std::__throw_bad_array_new_length[abi:nn200100]();
                  }

                  v90 = v85 - v88;
                  v91 = v90 >> 2;
                  if (v90 >> 2 <= (v89 + 1))
                  {
                    v91 = v89 + 1;
                  }

                  if (v90 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v92 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v92 = v91;
                  }

                  v152 = v81 + 7;
                  if (v92)
                  {
                    v93 = ggl::zone_mallocator::instance(v74);
                    v94 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::BuildingShadow::MeshPipelineSetup *>(v93, v92);
                  }

                  else
                  {
                    v94 = 0;
                  }

                  v96 = &v94[8 * v92];
                  v95 = &v94[8 * v89];
                  *v95 = v83;
                  v87 = v95 + 1;
                  v97 = v81[4];
                  v98 = v81[5] - v97;
                  v99 = v95 - v98;
                  memcpy(v95 - v98, v97, v98);
                  v100 = v81[4];
                  v81[4] = v99;
                  v81[5] = v87;
                  v101 = v81[6];
                  v81[6] = v96;
                  v150 = v100;
                  v151 = v101;
                  v149 = v100;
                  v148 = v100;
                  std::__split_buffer<ggl::BuildingShadow::MeshPipelineSetup *,geo::allocator_adapter<ggl::BuildingShadow::MeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(&v148);
                  v2 = v138;
                }

                else
                {
                  *v86 = v83;
                  v87 = v86 + 1;
                }

                v81[5] = v87;
                v148 = v83;
                v102 = v81[15];
                if (!v102)
                {
LABEL_140:
                  std::__throw_bad_function_call[abi:nn200100]();
                  std::__throw_bad_array_new_length[abi:nn200100]();
                }

                (*(*v102 + 48))(v102, &v148);
                v104 = *(v79 + 472);
                v105 = *(v79 + 480);
                if (v105)
                {
                  atomic_fetch_add_explicit(&v105->__shared_owners_, 1uLL, memory_order_relaxed);
                  v107 = v83 + 136;
                  v106 = *(v83 + 17);
                  *v106 = v104;
                  v106[1] = 0;
                  v108 = *(v83 + 29);
                  atomic_fetch_add_explicit(&v105->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                else
                {
                  v107 = v83 + 136;
                  v109 = *(v83 + 17);
                  *v109 = v104;
                  v109[1] = 0;
                  v108 = *(v83 + 29);
                }

                v110 = v108[1];
                *v108 = v104;
                v108[1] = v105;
                if (v110)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](v110);
                }

                if (v105)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](v105);
                }

                **(v83 + 21) = *(v80 + 904);
                LODWORD(v103) = *(v79 + 412);
                (*(VKAnimationCurveEaseInOut + 2))(v103);
                v142 = (v111 * v73) * *(v79 + 420);
                v112 = *(*v107 + 16);
                ggl::BufferMemory::BufferMemory(&v143);
                ggl::ResourceAccessor::accessConstantData(&v148, 0, v112, 1);
                ggl::BufferMemory::operator=(&v143, &v148);
                ggl::BufferMemory::~BufferMemory(&v148);
                v113 = v144;
                v144->i32[0] = **(v2 + 49);
                v113[2] = vmul_n_f32(v71, v142);
                v113[3].f32[0] = v142 * v72;
                v113[3].f32[1] = v142;
                ggl::BufferMemory::~BufferMemory(&v143);
                v114 = ggl::FragmentedPool<ggl::RenderItem>::pop(*(*(v2 + 49) + 752));
                v115 = *(*(v2 + 49) + 720);
                v114[2].__shared_weak_owners_ = v140;
                v114[3].__vftable = 0;
                v114[3].__shared_owners_ = 0;
                v114[3].__shared_weak_owners_ = 0;
                v114[4].__vftable = 1;
                v114[1].__vftable = v115;
                v114[1].__shared_owners_ = v83;
                v114[2].__vftable = v141;
                v148 = v114;
                v74 = std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v24 + 72), &v148);
              }

              if (v136)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v136);
              }
            }
          }

          if (v147)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v147);
          }
        }
      }

      for (j = 0; j != 2; ++j)
      {
        v117 = md::BuildingRenderLayer::layout(md::LayoutContext const&)::allSelectionStates[j];
        md::BuildingRenderLayer::layout3DBuildings(v2, v2 + 34, v130, a2, v117, 0);
        md::BuildingRenderLayer::layout3DBuildings(v2, v2 + 34, v132, a2, v117, 1);
      }

      md::BuildingRenderLayer::layout3DLandmarks(v2, v2 + 34, v17, a2, 0);
      goto LABEL_132;
    }
  }

  else if (!*(*(v2 + 47) + 17))
  {
    v128 = v19;
    v29 = 0;
    do
    {
      v135 = md::BuildingRenderLayer::layout(md::LayoutContext const&)::allSelectionStates[v29];
      v30 = *(a2 + 1);
      v31 = gdc::Context::context<md::PolygonContext>(v30);
      v129 = v29;
      if (v31 && *(v31 + 16) == 1)
      {
        v32 = v31[1];
      }

      else
      {
        v32 = 0;
      }

      if (v135 != 1 || v32 != 0)
      {
        v34 = *(v2 + 35);
        v35 = *(v2 + 34);
        if (v34 != v35)
        {
          v133 = v32;
          md::LayoutContext::get<md::CameraContext>(v30);
          v36 = 0.0;
          v37 = 3.4028e38;
          do
          {
            v38 = *(*v35 + 392);
            v39 = *(v38 + 728);
            v40 = *(v38 + 736);
            while (v39 != v40)
            {
              v41 = *v39;
              v42 = v39[1];
              while (v41 != v42)
              {
                v43 = *(v41 + 8);
                v44 = *([v43 origin] + 8);
                v45 = *([v43 maxPoint] + 8);

                v37 = fminf(v44, v37);
                v36 = fmaxf(v36, v45);
                v41 += 24;
              }

              v39 += 3;
            }

            v35 += 8;
          }

          while (v35 != v34);
          v46 = *(a2 + 1);
          v131 = md::LayoutContext::get<md::VenueLogicContext>(v46);
          v47 = md::LayoutContext::get<md::SharedResourcesContext>(v46);
          if (*(v2 + 55))
          {
            v54 = *(v2 + 54);
            if (v54)
            {
              do
              {
                v55 = *v54;
                operator delete(v54);
                v54 = v55;
              }

              while (v55);
            }

            *(v2 + 54) = 0;
            v56 = *(v2 + 53);
            if (v56)
            {
              for (k = 0; k != v56; ++k)
              {
                *(*(v2 + 52) + 8 * k) = 0;
              }
            }

            *(v2 + 55) = 0;
          }

          [*v47 alphaAtlas];
          v48 = *(v2 + 34);
          if (v48 != *(v2 + 35))
          {
            v49 = *(*v48 + 392);
            v50 = *(*v48 + 224);
            v51 = *(*v48 + 232);
            if (v51)
            {
              atomic_fetch_add_explicit((v51 + 8), 1uLL, memory_order_relaxed);
            }

            ggl::DataAccess<ggl::Tile::View>::DataAccess(&v148, v50, 0);
            v52 = 0;
            v53 = v153;
            do
            {
              *(&v146 + v52) = *(v53 + v52);
              v52 += 16;
            }

            while (v52 != 64);
            ggl::BufferMemory::~BufferMemory(&v148);
            ggl::CullingGrid::intersectedCellsForView(&v146, 0.0);
            md::featureIdPredicate(v145, v135, 0, *(v49 + 169), v133, v131, v2 + 416);
          }
        }
      }

      md::BuildingRenderLayer::layout3DBuildings(v2, v2 + 34, v132, a2, v135, 1);
      v29 = v129 + 1;
    }

    while (v129 != 1);
    v65 = *(a2 + 1);
    v66 = md::LayoutContext::get<md::VenueLogicContext>(*(a2 + 1));
    if (*(v2 + 55))
    {
      v124 = *(v2 + 54);
      if (v124)
      {
        do
        {
          v125 = *v124;
          operator delete(v124);
          v124 = v125;
        }

        while (v125);
      }

      *(v2 + 54) = 0;
      v126 = *(v2 + 53);
      if (v126)
      {
        for (m = 0; m != v126; ++m)
        {
          *(*(v2 + 52) + 8 * m) = 0;
        }
      }

      *(v2 + 55) = 0;
      v65 = *(a2 + 1);
    }

    md::LayoutContext::get<md::CameraContext>(v65);
    v118 = gdc::Context::context<md::PolygonContext>(v65);
    if (v118 && *(v118 + 16) == 1)
    {
      v119 = v118[1];
    }

    else
    {
      v119 = 0;
    }

    v120 = *(v2 + 34);
    if (v120 != *(v2 + 35))
    {
      v121 = *(*v120 + 392);
      v122 = *(*v120 + 232);
      if (v122)
      {
        atomic_fetch_add_explicit((v122 + 8), 1uLL, memory_order_relaxed);
      }

      md::featureIdPredicate(&v143, 1, 0, *(v121 + 169), v119, v66, v2 + 416);
    }

LABEL_132:
    md::BuildingRenderLayer::layout3DLandmarks(v2, v2 + 34, v128, a2, 1);
  }

  ggl::CommandBuffer::sortRenderItems(*(v139 + 9), *(v139 + 10));
  ggl::CommandBuffer::sortRenderItems(*(v130 + 9), *(v130 + 10));
  return ggl::CommandBuffer::sortRenderItems(*(v132 + 9), *(v132 + 10));
}

void sub_1B2E9991C(_Unwind_Exception *a1)
{
  if (STACK[0x2A0])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](STACK[0x2A0]);
  }

  _Unwind_Resume(a1);
}

void md::BuildingRenderLayer::setBuildingMode(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 376);
  if (*(v3 + 17) != a2)
  {
    v4 = a2;
    if (a2)
    {
      v6 = 1.0;
    }

    else
    {
      v6 = 0.0;
    }

    if (!a3 || (v7 = *(a1 + 280), v8 = *(a1 + 272), v7 == v8))
    {
      *(v3 + 16) = a2;
      *(v3 + 17) = a2;
      v16 = **(*(a1 + 40) + 88);
      if (v16)
      {
        v26[0] = 7;
        md::MapEngine::setNeedsTick(v16, v26);
      }

      v17 = *(a1 + 272);
      v18 = *(a1 + 280);
      while (v17 != v18)
      {
        v19 = *v17++;
        *(v19 + 420) = v6;
      }
    }

    else
    {
      do
      {
        v9 = *v8;
        v10 = [[VKTimedAnimation alloc] initWithDuration:0.300000012];
        v11 = *(*(a1 + 392) + 771);
        v12 = *(a1 + 376);
        if (v11 != *(v12 + 17))
        {
          *(v12 + 17) = v11;
          v13 = **(*(a1 + 40) + 88);
          if (v13)
          {
            v26[0] = 7;
            md::MapEngine::setNeedsTick(v13, v26);
          }
        }

        v14 = *(v9 + 420);
        v15 = *(v9 + 456);
        md::LabelExternalPointFeature::incident(v15);
        [objc_claimAutoreleasedReturnValue() stop];

        *(*(a1 + 376) + 16) = v4;
        [(VKTimedAnimation *)v10 setTimingFunction:VKAnimationCurveEaseOut];
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = ___ZN2md19BuildingRenderLayer15setBuildingModeENS_18BuildingRenderModeEb_block_invoke;
        v23[3] = &__block_descriptor_64_e8_v12__0f8l;
        v23[4] = a1;
        v23[5] = v9;
        v24 = v14;
        v25 = v6;
        v23[6] = v9 + 64;
        [(VKTimedAnimation *)v10 setStepHandler:v23];
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = ___ZN2md19BuildingRenderLayer15setBuildingModeENS_18BuildingRenderModeEb_block_invoke_2;
        v20[3] = &__block_descriptor_61_e8_v12__0B8l;
        v20[4] = a1;
        v20[5] = v9;
        v21 = v6;
        v22 = v4;
        v20[6] = v9 + 64;
        [(VKAnimation *)v10 setCompletionHandler:v20];
        md::BuildingTileDataRenderable::setAnimationForPitch(v9, &v10->super);
        md::AnimationRunner::runAnimation(*(a1 + 464), &v10->super);

        ++v8;
      }

      while (v8 != v7);
    }
  }
}

void ___ZN2md19BuildingRenderLayer15setBuildingModeENS_18BuildingRenderModeEb_block_invoke(uint64_t a1, float a2)
{
  v2 = *(a1 + 32);
  *(*(a1 + 40) + 420) = *(a1 + 56) + ((*(a1 + 60) - *(a1 + 56)) * a2);
  md::MercatorTerrainHeightCache::invalidateRect(*(v2 + 456), *(a1 + 48));
}

void ___ZN2md19BuildingRenderLayer15setBuildingModeENS_18BuildingRenderModeEb_block_invoke_2(uint64_t a1, int a2)
{
  v4 = *(a1 + 32);
  md::BuildingTileDataRenderable::setAnimationForPitch(*(a1 + 40), 0);
  *(*(a1 + 40) + 420) = *(a1 + 56);
  if (a2)
  {
    v5 = *(a1 + 60);
    v6 = v4[47];
    if (v5 != *(v6 + 17))
    {
      *(v6 + 17) = v5;
      v7 = **(v4[5] + 88);
      if (v7)
      {
        v10 = 7;
        md::MapEngine::setNeedsTick(v7, &v10);
      }
    }

    v8 = v4[57];
    v9 = *(a1 + 48);

    md::MercatorTerrainHeightCache::invalidateRect(v8, v9);
  }
}

void md::DaVinciMaterialResourceDecoder::decode(uint64_t a1@<X1>, void *a2@<X2>, void *a3@<X8>)
{
  v53 = *MEMORY[0x1E69E9840];
  if (*a2)
  {
    v6 = (*(**a2 + 32))(*a2);
    v7 = (*(**a2 + 24))();
    v10[0] = v6;
    v10[1] = v7;
    v10[2] = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = 1065353216;
    v21 = 1065353216;
    v22 = 0u;
    v23 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = 1065353216;
    v27 = 1065353216;
    v29 = 0u;
    v28 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 1065353216;
    v33 = 1065353216;
    v34 = 0u;
    v35 = 0u;
    v36 = 1065353216;
    v37 = 0u;
    v38 = 0u;
    v39 = 1065353216;
    v40 = 0u;
    v41 = 0u;
    v42 = 1065353216;
    v43 = 0u;
    v44 = 0u;
    v45 = 1065353216;
    v46 = 0;
    v47 = 0u;
    v48 = 0u;
    v49 = 0;
    v50 = 1065353216;
    v52 = 0;
    v51 = 0u;
    if (geo::codec::MaterialSheet::decodeExternalMaterial(&v12, v10))
    {
      UInt64 = gdc::ResourceKey::getUInt64(*(a1 + 8), 0);
      md::DaVinciMaterialResourceDecoder::translateFromCodec(&v9, &v12, UInt64);
    }

    *a3 = 0;
    a3[1] = 0;
    geo::codec::MaterialSheet::~MaterialSheet(&v12);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }
}

void sub_1B2E9A1F8(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void **);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](va);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  geo::codec::MaterialSheet::~MaterialSheet(va1);
  _Unwind_Resume(a1);
}

void md::DaVinciMaterialResourceDecoder::translateFromCodec(md::DaVinciMaterialResourceDecoder *this, geo::codec::MaterialSheet *a2, uint64_t a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = 0uLL;
  v5 = 0;
  v6[0] = 0;
  gms::MaterialSheet<ggl::Texture2D>::_init(&v3, v6);
}

void sub_1B2E9AF34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21)
{
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v21);
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](a13);
  v24 = *(v22 - 200);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v24);
  }

  v25 = *(v22 - 184);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v25);
  }

  a21 = (v22 - 176);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&a21);
  _Unwind_Resume(a1);
}

void geo::codec::MaterialSheet::~MaterialSheet(geo::codec::MaterialSheet *this)
{
  v2 = *(this + 64);
  if (v2)
  {
    v3 = *(this + 65);
    v4 = *(this + 64);
    if (v3 != v2)
    {
      v5 = *(this + 65);
      do
      {
        v7 = *(v5 - 40);
        v5 -= 40;
        v6 = v7;
        if (v7)
        {
          *(v3 - 32) = v6;
          free(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *(this + 64);
    }

    *(this + 65) = v2;
    free(v4);
  }

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 464);
  std::__hash_table<std::__hash_value_type<unsigned char,std::vector<std::pair<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<std::pair<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<std::pair<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<std::pair<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>>>>>::~__hash_table(this + 376);
  std::__hash_table<std::__hash_value_type<unsigned char,std::vector<std::pair<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<std::pair<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<std::pair<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<std::pair<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>>>>>::~__hash_table(this + 336);
  v8 = (this + 32);
  std::vector<std::vector<gdc::Registry *>>::__destroy_vector::operator()[abi:nn200100](&v8);
  v8 = (this + 8);
  std::vector<geo::codec::MaterialSheet::Material>::__destroy_vector::operator()[abi:nn200100](&v8);
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned char,std::vector<std::pair<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<std::pair<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<std::pair<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<std::pair<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v6 = (v2 + 24);
      std::vector<std::pair<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>>::__destroy_vector::operator()[abi:nn200100](&v6);
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

void std::vector<geo::codec::MaterialSheet::Material>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 216;
      do
      {
        v7 = v6 - 240;
        std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v6 + 168);
        std::__hash_table<std::__hash_value_type<unsigned char,std::vector<std::pair<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<std::pair<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<std::pair<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<std::pair<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>>>>>::~__hash_table(v6 + 80);
        std::__hash_table<std::__hash_value_type<unsigned char,std::vector<std::pair<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<std::pair<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<std::pair<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<std::pair<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>>>>>::~__hash_table(v6 + 40);
        v6 -= 456;
      }

      while (v7 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::pair<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v6 = v4 - 48;
        std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((v4 - 40));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__shared_ptr_emplace<md::DaVinciMaterialResource>::__on_zero_shared(uint64_t a1)
{
  v4 = (a1 + 184);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v4);
  v2 = *(a1 + 176);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(a1 + 32);
  if (v3 != *(a1 + 48))
  {

    free(v3);
  }
}

void std::__shared_ptr_emplace<md::DaVinciMaterialResource>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0B7C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void getMaterialFromCodec(__n128 *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t *a5)
{
  v9 = *(a2 + 448);
  v8[0] = a3;
  v8[1] = a4;
  if (a4)
  {
    atomic_fetch_add_explicit(&a4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 404);
  v6 = a5[1];
  v7[0] = *a5;
  v7[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  gms::createMaterial<ggl::Texture2D>(a1, v8, &v9, v5, v7);
}

void sub_1B2E9C1C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<unsigned char,geo::allocator_adapter<unsigned char,geo::mallocator>>::vector[abi:nn200100](uint64_t a1, uint64_t a2)
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
    if (v3 - *a2 < 0)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v6 = malloc_type_malloc(v5, 0x100004077774924uLL);
    *a1 = v6;
    *(a1 + 8) = v6;
    v7 = &v6[v5];
    *(a1 + 16) = &v6[v5];
    memmove(v6, v4, v5);
    *(a1 + 8) = v7;
  }

  return a1;
}

void gms::TextureStore<ggl::Texture2D>::addTexture(uint64_t a1, __int128 *a2, char a3)
{
  v8 = a3;
  v7 = a1;
  v5 = pthread_rwlock_wrlock(a1);
  if (v5)
  {
    geo::read_write_lock::logFailure(v5, "write lock", v6);
  }

  std::vector<std::shared_ptr<md::MuninRoadLabel>>::push_back[abi:nn200100]((a1 + 200), a2);
  std::vector<BOOL>::push_back((a1 + 224), &v8);
  geo::write_lock_guard::~write_lock_guard(&v7);
}

uint64_t geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::insert<std::pair<gss::StyleAttribute const,unsigned short> *>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v3 = result;
    if ((*(result + 16) & 1) == 0)
    {
      v5 = a2;
      v6 = *(result + 12);
      do
      {
        result = geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v3, *v5);
        if (result == v6)
        {
          result = geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::isSpaceAvailable(v3);
          if (!result)
          {
            return result;
          }

          v7 = *(v3 + 12);
          v8 = *v3;
          *(*v3 + 4 * v7) = *v5;
          *(v8 + *(v3 + 8) + 2 * v7) = *(v5 + 4);
          v6 = *(v3 + 12) + 1;
          *(v3 + 12) = v6;
          *(v3 + 17) = 0;
        }

        v5 += 8;
      }

      while (v5 != a3);
    }
  }

  return result;
}

uint64_t ***std::__hash_table<std::__hash_value_type<unsigned char,BOOL>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,BOOL>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,BOOL>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,BOOL>>>::find<unsigned char>(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = vcnt_s8(a2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a3;
    if (a3 >= a2)
    {
      v4 = a3 % a2;
    }
  }

  else
  {
    v4 = (a2 - 1) & a3;
  }

  v5 = *(a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a3)
    {
      if (*(result + 16) == a3)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= a2)
        {
          v7 %= a2;
        }
      }

      else
      {
        v7 &= a2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *std::vector<std::pair<gm::Range<unsigned char>,float>>::vector[abi:nn200100](uint64_t *a1, uint64_t **a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (v2 - *a2 >= 0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return a1;
}

uint64_t *std::vector<std::pair<gm::Range<unsigned char>,unsigned char>>::vector[abi:nn200100](uint64_t *a1, __int16 **a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * (v2 - *a2) < 0x5555555555555556)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return a1;
}

uint64_t md::MuninRoadLabelingCameraState::MuninRoadLabelingCameraState(uint64_t a1, gdc::CameraView *this, uint64_t a3)
{
  v6 = gdc::CameraView::position(this);
  v7 = *(v6 + 16);
  *a1 = *v6;
  *(a1 + 16) = v7;
  v43 = 0.0;
  v44[0] = 0uLL;
  geo::Geocentric<double>::toCoordinate3D<geo::Radians,double>(a1, &v43);
  v41 = v44[0];
  v8 = tan(v43 * 0.5 + 0.785398163);
  v9 = log(v8);
  *&v10.f64[0] = v41;
  v10.f64[1] = v9;
  __asm { FMOV            V0.2D, #0.5 }

  v39 = _Q0;
  v40 = vdupq_n_s64(0x3FC45F306DC9C883uLL);
  v38 = vmlaq_f64(_Q0, v40, v10);
  *(a1 + 24) = v38;
  *(a1 + 40) = *(&v41 + 1);
  memcpy((a1 + 48), this + 984, 0x180uLL);
  for (i = 0; i != 192; i += 24)
  {
    v17 = &v43 + i;
    v45 = *(a1 + i + 240);
    v46 = *(a1 + i + 256);
    memset(v47, 0, sizeof(v47));
    geo::Geocentric<double>::toCoordinate3D<geo::Radians,double>(&v45, v47);
    v42 = *&v47[8];
    v18 = tan(*v47 * 0.5 + 0.785398163);
    v19 = log(v18);
    *&v20.f64[0] = v42;
    v20.f64[1] = v19;
    *v17 = vmlaq_f64(v39, v40, v20);
    *(v17 + 2) = *(&v42 + 1);
  }

  v21 = 0;
  v22 = a1 + 624;
  do
  {
    v23 = a1 + v21;
    *(v23 + 624) = *(&v43 + v21);
    *(v23 + 640) = *(v44 + v21 + 8);
    v21 += 24;
  }

  while (v21 != 192);
  v24 = 0;
  v25 = &qword_1B33B3FB8;
  do
  {
    v26 = a1 + v24;
    v27 = v22 + 24 * *(v25 - 2);
    v28 = v22 + 24 * *(v25 - 1);
    v29 = *v25;
    v25 += 3;
    gm::Plane3<double>::Plane3(v47, v27, v28, v22 + 24 * v29);
    *(v26 + 432) = *v47;
    *(v26 + 448) = *&v47[16];
    *(v26 + 456) = v48;
    v24 += 32;
  }

  while (v24 != 192);
  _D1 = 0x401921FB54442D18;
  _V2.D[1] = v38.f64[1];
  __asm { FMLA            D0, D1, V2.D[1]; __x }

  v33 = exp(_D0);
  v34 = atan(v33);
  *(a1 + 816) = geo::WGS84::unitsPerMeterAtLatitude<geo::Degrees,double>(v34 * 114.591559 + -90.0);
  v35 = *(a3 + 16);
  *(a1 + 824) = *a3;
  *(a1 + 840) = v35;
  v36 = *(a3 + 24);
  *(a1 + 864) = *(a3 + 40);
  *(a1 + 848) = v36;
  *(a1 + 872) = *(a3 + 48);
  memcpy((a1 + 880), (a3 + 56), 0x198uLL);
  *(a1 + 1288) = *gdc::Camera::heading(this);
  return a1;
}

__n128 md::PolygonLayoutCharacteristics::modifyMVCForPolygonGroup@<Q0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  v4 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v4;
  return result;
}

unint64_t md::PolygonLayerLayoutCharacteristics::renderOrderForAttributes(uint64_t a1, int a2, uint64_t a3, int a4, unint64_t a5, unsigned int a6, int a7, void *a8)
{
  v8 = 0x400000000;
  if (!a4)
  {
    v8 = 0;
  }

  v9 = 0x1000000;
  if (a2)
  {
    v9 = 0;
  }

  v10 = 0x10000;
  if (!a7)
  {
    v10 = 0;
  }

  return v9 & 0xFFFFFFFFFFFF00FFLL | (a3 << 25) | v8 & 0xFFFFFFFFFFFF00FFLL | (a6 << 17) | v10 & 0xFFFFFFFFFFFF00FFLL | ((a5 >> 4) << 8) | (*(a5 + 1) << 19) | (*a8 >> 4);
}

uint64_t md::PolygonLayerLayoutCharacteristics::commandBuffer(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  if (a3)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (a2 != 2)
  {
    v4 = a2;
  }

  return *(a4 + 8 * v4);
}

void md::PolygonLayerLayoutCharacteristics::~PolygonLayerLayoutCharacteristics(md::PolygonLayerLayoutCharacteristics *this)
{
  *this = &unk_1F2A4E720;
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A4E720;
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }
}

uint64_t geo::Pool<md::MaterialDecalRenderable>::~Pool(uint64_t a1)
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
          v12 = (v11 + 240 * v10);
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

void sub_1B2E9CBE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(a11);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v11 + 8));
  _Unwind_Resume(a1);
}

uint64_t geo::Pool<md::MeshRenderable>::~Pool(uint64_t a1)
{
  v20[0] = 0;
  v20[1] = 0;
  if (*(a1 + 40))
  {
    operator new();
  }

  v2 = *(a1 + 24);
  v3 = *a1;
  v4 = (a1 + 8);
  if (*(a1 + 16) * v2)
  {
    v5 = v3 == v4;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = *(a1 + 24);
    do
    {
      if (v6)
      {
        v7 = 0;
        v8 = v3[4];
        do
        {
          v9 = (v8 + 216 * v7);
          v10 = v20[0];
          if (!v20[0])
          {
            goto LABEL_19;
          }

          v11 = v20;
          do
          {
            v12 = v10;
            v13 = v11;
            v14 = v10[4];
            if (v14 >= v9)
            {
              v11 = v10;
            }

            v10 = v10[v14 < v9];
          }

          while (v10);
          if (v11 == v20)
          {
            goto LABEL_19;
          }

          if (v14 < v9)
          {
            v12 = v13;
          }

          if (v9 < v12[4])
          {
LABEL_19:
            (**v9)(v9);
            v2 = *(a1 + 24);
          }

          ++v7;
          v6 = v2;
        }

        while (v7 < v2);
      }

      v15 = v3[1];
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
          v16 = v3[2];
          v5 = *v16 == v3;
          v3 = v16;
        }

        while (!v5);
      }

      v3 = v16;
    }

    while (v16 != v4);
    v3 = *a1;
  }

  if (v3 != v4)
  {
    do
    {
      free(v3[4]);
      v17 = v3[1];
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
          v18 = v3[2];
          v5 = *v18 == v3;
          v3 = v18;
        }

        while (!v5);
      }

      v3 = v18;
    }

    while (v18 != v4);
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 8));
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = v4;
  *(a1 + 40) = 0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v20[0]);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 8));
  return a1;
}

void sub_1B2E9CE70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(a11);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v11 + 8));
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>,md::RenderBatch *>,std::__unordered_map_hasher<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>,std::__hash_value_type<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>,md::RenderBatch *>,std::hash<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>>,std::equal_to<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>>,true>,std::__unordered_map_equal<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>,std::__hash_value_type<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>,md::RenderBatch *>,std::equal_to<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>>,std::hash<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>>,true>,std::allocator<std::__hash_value_type<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>,md::RenderBatch *>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = *(v2 + 60);
      if (v4 != -1)
      {
        (*(&off_1F2A0B878 + v4))(&v7, (v2 + 2));
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

void *geo::Pool<md::RenderBatch>::~Pool(void *a1)
{
  v29 = 0;
  v30 = 0;
  v28 = &v29;
  v3 = a1 + 5;
  v2 = a1[5];
  if (v2)
  {
    do
    {
      std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::__emplace_unique_key_args<geo::Pool<gdc::FallbackNode>::Element *,geo::Pool<gdc::FallbackNode>::Element * const&>(&v28, v2, v3);
      v2 = **v3;
      *v3 = v2;
    }

    while (v2);
    v4 = v30;
  }

  else
  {
    v4 = 0;
  }

  v5 = a1[3];
  v6 = *a1;
  v7 = a1 + 1;
  v8 = v4 == a1[2] * v5 || v6 == v7;
  if (!v8)
  {
    v9 = a1[3];
    do
    {
      if (v9)
      {
        v10 = 0;
        v11 = v6[4];
        do
        {
          v12 = v11 + 384 * v10;
          v13 = v29;
          if (!v29)
          {
            goto LABEL_21;
          }

          v14 = &v29;
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
          if (v14 == &v29)
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
            v18 = *(v12 + 320);
            if (v18)
            {
              *(v12 + 328) = v18;
              operator delete(v18);
            }

            if (*(v12 + 312) == 1)
            {
              v31 = (v12 + 288);
              std::vector<md::MeshRenderable>::__destroy_vector::operator()[abi:nn200100](&v31);
            }

            v19 = *(v12 + 280);
            *(v12 + 280) = 0;
            if (v19)
            {
              v20 = *(v19 + 72);
              if (v20)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v20);
              }

              v21 = *(v19 + 8);
              if (v21)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v21);
              }

              MEMORY[0x1B8C62190](v19, 0x1020C408635837CLL);
            }

            std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v12 + 240);
            v22 = *(v12 + 224);
            if (v22 != -1)
            {
              (*(&off_1F2A0B878 + v22))(&v31, (v11 + 384 * v10));
            }

            *(v12 + 224) = -1;
            v5 = a1[3];
          }

          ++v10;
          v9 = v5;
        }

        while (v10 < v5);
      }

      v23 = v6[1];
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
          v24 = v6[2];
          v8 = *v24 == v6;
          v6 = v24;
        }

        while (!v8);
      }

      v6 = v24;
      v7 = a1 + 1;
    }

    while (v24 != a1 + 1);
    v6 = *a1;
  }

  if (v6 != v7)
  {
    do
    {
      free(v6[4]);
      v25 = v6[1];
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
          v26 = v6[2];
          v8 = *v26 == v6;
          v6 = v26;
        }

        while (!v8);
      }

      v6 = v26;
    }

    while (v26 != v7);
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(a1[1]);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = v7;
  a1[5] = 0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v29);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(a1[1]);
  return a1;
}

void sub_1B2E9D17C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(a12);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v12 + 8));
  _Unwind_Resume(a1);
}

uint64_t geo::Pool<md::RenderBatch>::destroy(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    if (*(result + 16))
    {
      v4 = *(a2 + 320);
      if (v4)
      {
        *(a2 + 328) = v4;
        operator delete(v4);
      }

      if (*(a2 + 312) == 1)
      {
        v9 = a2 + 288;
        std::vector<md::MeshRenderable>::__destroy_vector::operator()[abi:nn200100](&v9);
      }

      v5 = *(a2 + 280);
      *(a2 + 280) = 0;
      if (v5)
      {
        v6 = *(v5 + 72);
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v6);
        }

        v7 = *(v5 + 8);
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v7);
        }

        MEMORY[0x1B8C62190](v5, 0x1020C408635837CLL);
      }

      result = std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a2 + 240);
      v8 = *(a2 + 224);
      if (v8 != -1)
      {
        result = (*(&off_1F2A0B878 + v8))(&v10, a2);
      }

      *(a2 + 224) = -1;
      *a2 = *(v2 + 40);
      *(v2 + 40) = a2;
    }
  }

  return result;
}

void std::vector<md::MeshRenderable>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 27;
      v7 = v4 - 27;
      v8 = v4 - 27;
      do
      {
        v9 = *v8;
        v8 -= 27;
        (*v9)(v7);
        v6 -= 27;
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

void std::__hash_table<md::RenderBatch *,std::hash<md::RenderBatch *>,std::equal_to<md::RenderBatch *>,std::allocator<md::RenderBatch *>>::__emplace_unique_key_args<md::RenderBatch *,md::RenderBatch *&>(float *a1, unint64_t a2, void *a3)
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
}

uint64_t std::__function::__value_func<void ()(md::MeshRenderable *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t md::RenderBatchManager::destroyRenderable(uint64_t this, md::MeshRenderable *a2)
{
  v3 = this;
  v4 = *(a2 + 8);
  if (v4 == 2)
  {
    if (!*(this + 320))
    {
      return this;
    }

    v5 = 344;
    goto LABEL_7;
  }

  if (v4 == 1 && *(this + 224))
  {
    v5 = 248;
LABEL_7:
    this = (**a2)(a2);
    *a2 = *(v3 + v5);
    *(v3 + v5) = a2;
  }

  return this;
}

uint64_t std::__function::__func<std::__bind<void (md::RenderBatchManager::*)(md::MeshRenderable *),md::RenderBatchManager*,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<void (md::RenderBatchManager::*)(md::MeshRenderable *),md::RenderBatchManager*,std::placeholders::__ph<1> const&>>,void ()(md::MeshRenderable *)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[1];
  v4 = (a1[3] + (v2 >> 1));
  if (v2)
  {
    v3 = *(*v4 + v3);
  }

  return v3(v4, *a2);
}

__n128 std::__function::__func<std::__bind<void (md::RenderBatchManager::*)(md::MeshRenderable *),md::RenderBatchManager*,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<void (md::RenderBatchManager::*)(md::MeshRenderable *),md::RenderBatchManager*,std::placeholders::__ph<1> const&>>,void ()(md::MeshRenderable *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A0B8D0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t **std::__hash_table<std::__hash_value_type<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>,md::RenderBatch *>,std::__unordered_map_hasher<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>,std::__hash_value_type<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>,md::RenderBatch *>,std::hash<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>>,std::equal_to<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>>,true>,std::__unordered_map_equal<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>,std::__hash_value_type<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>,md::RenderBatch *>,std::equal_to<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>>,std::hash<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>>,true>,std::allocator<std::__hash_value_type<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>,md::RenderBatch *>>>::find<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>>(void *a1, uint64_t a2)
{
  v4 = std::hash<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>>::operator()[abi:nn200100](a2);
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
    v12 = i[1];
    if (v12 == v6)
    {
      v13 = *(i + 60);
      v14 = *(a2 + 224);
      if (v13 != -1 && v14 == v13)
      {
        v18 = &v17;
        if ((off_1F2A0B8A8[v13])(&v18, i + 2, a2))
        {
          return i;
        }
      }

      else if (v14 == v13)
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

unint64_t std::hash<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>>::operator()[abi:nn200100](uint64_t a1)
{
  v3 = *(a1 + 224);
  if (v3 == -1)
  {
    v5 = 299792458;
LABEL_5:
    v6 = -1;
    goto LABEL_6;
  }

  v11 = v1;
  v12 = v2;
  v5 = (off_1F2A0B890[v3])(&v10, a1);
  v6 = *(a1 + 224);
  if (v6 == -1)
  {
    goto LABEL_5;
  }

LABEL_6:
  v7 = 0x9DDFEA08EB382D69 * (v5 ^ __ROR8__(v6 + 16, 16));
  v8 = __ROR8__(v6 + 16, 16) ^ (v7 >> 47);
  return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v8 ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v8 ^ v7)) >> 47))) ^ v6;
}

unint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNKS_4hashINS_7variantIJN2md22MaterialRenderBatchKeyENS8_26DynamicTypedRenderBatchKeyENS8_27MaterialDecalRenderBatchKeyEEEEEclB8nn200100ERKSC_EUlRKT_E_JRKNS0_6__baseILNS0_6_TraitE1EJS9_SA_SB_EEEEEEDcSG_DpT0_(uint64_t a1, uint64_t a2)
{
  v3 = std::hash<md::BaseRenderBatchKey<ggl::VertexData>>::operator()(a2);
  v4 = (((v3 - 0x61C8864680B583EBLL) << 6) + ((v3 - 0x61C8864680B583EBLL) >> 2) + *(a2 + 80) - 0x61C8864680B583EBLL) ^ (v3 - 0x61C8864680B583EBLL);
  return (*(a2 + 96) + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583EBLL) ^ v4;
}

unint64_t std::hash<md::BaseRenderBatchKey<ggl::VertexData>>::operator()(uint64_t a1)
{
  v1 = (*(a1 + 73) + ((*a1 - 0x61C8864680B583EBLL) << 6) + ((*a1 - 0x61C8864680B583EBLL) >> 2) - 0x61C8864680B583EBLL) ^ (*a1 - 0x61C8864680B583EBLL);
  v2 = ((*(a1 + 74) | (v1 << 6)) + (v1 >> 2) - 0x61C8864680B583EBLL) ^ v1;
  v3 = (*(a1 + 64) + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583EBLL) ^ v2;
  v4 = ((*(a1 + 72) | (v3 << 6)) + (v3 >> 2) - 0x61C8864680B583EBLL) ^ v3;
  v5 = ((*(a1 + 75) | (v4 << 6)) + (v4 >> 2) - 0x61C8864680B583EBLL) ^ v4;
  v6 = ((*(a1 + 76) | (v5 << 6)) + (v5 >> 2) - 0x61C8864680B583EBLL) ^ v5;
  v7 = (*(a1 + 77) + (v6 << 6) + (v6 >> 2) - 0x61C8864680B583EBLL) ^ v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    v7 ^= v8 - 0x61C8864680B583EBLL + (v7 << 6) + (v7 >> 2);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v7 ^= (v7 << 6) - 0x61C8864680B583EBLL + (v7 >> 2) + v9;
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    return ((v7 << 6) - 0x61C8864680B583EBLL + (v7 >> 2) + v10) ^ v7;
  }

  else
  {
    return v7;
  }
}

unint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNKS_4hashINS_7variantIJN2md22MaterialRenderBatchKeyENS8_26DynamicTypedRenderBatchKeyENS8_27MaterialDecalRenderBatchKeyEEEEEclB8nn200100ERKSC_EUlRKT_E_JRKNS0_6__baseILNS0_6_TraitE1EJS9_SA_SB_EEEEEEDcSG_DpT0_(uint64_t a1, uint64_t a2)
{
  v3 = std::hash<md::BaseRenderBatchKey<ggl::VertexData>>::operator()(a2);
  v4 = (((v3 - 0x61C8864680B583EBLL) << 6) + ((v3 - 0x61C8864680B583EBLL) >> 2) + *(a2 + 80) - 0x61C8864680B583EBLL) ^ (v3 - 0x61C8864680B583EBLL);
  v5 = (*(a2 + 96) + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583EBLL) ^ v4;
  v6 = (*(a2 + 120) + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583EBLL) ^ v5;
  v7 = (*(a2 + 104) + (v6 << 6) + (v6 >> 2) - 0x61C8864680B583EBLL) ^ v6;
  v8 = (*(a2 + 121) + (v7 << 6) + (v7 >> 2) - 0x61C8864680B583EBLL) ^ v7;
  v9 = (*(a2 + 122) + (v8 << 6) + (v8 >> 2) - 0x61C8864680B583EBLL) ^ v8;
  if (*(a2 + 217))
  {
    v10 = *(a2 + 216) - 0x61C8864680B583EBLL;
  }

  else
  {
    v10 = 0x9E3779B97F4A7C15;
  }

  v11 = (v10 + (v9 << 6) + (v9 >> 2)) ^ v9;
  v12 = ((*(a2 + 218) | (v11 << 6)) + (v11 >> 2) - 0x61C8864680B583EBLL) ^ v11;
  return ((*(a2 + 219) | (v12 << 6)) + (v12 >> 2) - 0x61C8864680B583EBLL) ^ v12;
}

void md::RenderBatchManager::process(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = std::__hash_table<std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::__unordered_map_hasher<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,true>,std::__unordered_map_equal<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::equal_to<gdc::Entity>,std::hash<gdc::Entity>,true>,std::allocator<std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>::find<gdc::Entity>((a1 + 168), a3);
  if (!v6)
  {
    goto LABEL_12;
  }

  v7 = v6[3];
  if (!v7)
  {
    goto LABEL_12;
  }

  v8 = *(a2 + 224);
  v9 = v7[28].i32[0];
  if (v8 == -1 || v9 != v8)
  {
    if (v9 == v8)
    {
      goto LABEL_12;
    }

LABEL_10:
    if (md::RenderBatch::remove(v7, a3))
    {
      *(a1 + 80) = 1;
    }

    goto LABEL_12;
  }

  v52 = &v51;
  if ((off_1F2A0B860[v8])(&v52, a2, v7))
  {
    goto LABEL_10;
  }

LABEL_12:
  i = std::__hash_table<std::__hash_value_type<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>,md::RenderBatch *>,std::__unordered_map_hasher<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>,std::__hash_value_type<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>,md::RenderBatch *>,std::hash<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>>,std::equal_to<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>>,true>,std::__unordered_map_equal<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>,std::__hash_value_type<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>,md::RenderBatch *>,std::equal_to<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>>,std::hash<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>>,true>,std::allocator<std::__hash_value_type<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>,md::RenderBatch *>>>::find<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>>((a1 + 128), a2);
  if (!i)
  {
    v12 = *(a1 + 72);
    if (!v12)
    {
      v13 = malloc_type_malloc(384 * *(a1 + 56), 0x10A2040A37F67C8uLL);
      v52 = v13;
      std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::__emplace_unique_key_args<geo::Pool<gdc::FallbackNode>::Element *,geo::Pool<gdc::FallbackNode>::Element * const&>((a1 + 32), v13, &v52);
      v12 = *(a1 + 72);
      v14 = &v13[48 * *(a1 + 56) - 48];
      if (v14 >= v13)
      {
        do
        {
          *v14 = v12;
          v12 = v14;
          v14 -= 48;
        }

        while (v14 >= v13);
        v12 = (v14 + 48);
      }

      *(a1 + 72) = v12;
    }

    *(a1 + 72) = *v12;
    std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:nn200100](v12, a2);
    *(v12 + 232) = atomic_fetch_add(md::RenderBatch::nextId(void)::next, 1uLL) + 1;
    *(v12 + 240) = 0u;
    *(v12 + 256) = 0u;
    *(v12 + 272) = 1065353216;
    *(v12 + 280) = 0;
    *(v12 + 288) = 0;
    *(v12 + 312) = 0;
    *(v12 + 360) = 0;
    *(v12 + 368) = 0;
    *(v12 + 376) = 0;
    *(v12 + 320) = 0u;
    *(v12 + 336) = 0u;
    *(v12 + 352) = 0;
    v16 = *(a1 + 16);
    v15 = *(a1 + 24);
    if (v16 >= v15)
    {
      v18 = *(a1 + 8);
      v19 = (v16 - v18) >> 3;
      if ((v19 + 1) >> 61)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v20 = v15 - v18;
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
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v22);
      }

      *(8 * v19) = v12;
      v17 = 8 * v19 + 8;
      v23 = *(a1 + 8);
      v24 = *(a1 + 16) - v23;
      v25 = (8 * v19 - v24);
      memcpy(v25, v23, v24);
      v26 = *(a1 + 8);
      *(a1 + 8) = v25;
      *(a1 + 16) = v17;
      *(a1 + 24) = 0;
      if (v26)
      {
        operator delete(v26);
      }
    }

    else
    {
      *v16 = v12;
      v17 = (v16 + 1);
    }

    *(a1 + 16) = v17;
    v27 = std::hash<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>>::operator()[abi:nn200100](a2);
    v28 = v27;
    v29 = *(a1 + 136);
    if (v29)
    {
      v30 = vcnt_s8(v29);
      v30.i16[0] = vaddlv_u8(v30);
      v31 = v30.u32[0];
      if (v30.u32[0] > 1uLL)
      {
        v32 = v27;
        if (v27 >= *&v29)
        {
          v32 = v27 % *&v29;
        }
      }

      else
      {
        v32 = (*&v29 - 1) & v27;
      }

      v33 = *(*(a1 + 128) + 8 * v32);
      if (v33)
      {
        for (i = *v33; i; i = *i)
        {
          v34 = i[1];
          if (v34 == v28)
          {
            v35 = *(i + 60);
            v36 = *(a2 + 224);
            if (v35 != -1 && v36 == v35)
            {
              v52 = &v51;
              if ((off_1F2A0B8A8[v35])(&v52, i + 2, a2))
              {
                goto LABEL_54;
              }
            }

            else if (v36 == v35)
            {
              goto LABEL_54;
            }
          }

          else
          {
            if (v31 > 1)
            {
              if (v34 >= *&v29)
              {
                v34 = (v34 % *&v29);
              }
            }

            else
            {
              v34 = (v34 & (*&v29 - 1));
            }

            if (v34 != v32)
            {
              break;
            }
          }
        }
      }
    }

    operator new();
  }

LABEL_54:
  v38 = i[31];
  v39 = v38[31];
  if (!*&v39)
  {
    goto LABEL_72;
  }

  v40 = vcnt_s8(v39);
  v40.i16[0] = vaddlv_u8(v40);
  if (v40.u32[0] > 1uLL)
  {
    v41 = a3;
    if (*&v39 <= a3)
    {
      v41 = a3 % *&v39;
    }
  }

  else
  {
    v41 = (*&v39 - 1) & a3;
  }

  v42 = *(*&v38[30] + 8 * v41);
  if (!v42 || (v43 = *v42) == 0)
  {
LABEL_72:
    operator new();
  }

  while (1)
  {
    v44 = v43[1];
    if (v44 == a3)
    {
      break;
    }

    if (v40.u32[0] > 1uLL)
    {
      if (v44 >= *&v39)
      {
        v44 %= *&v39;
      }
    }

    else
    {
      v44 &= *&v39 - 1;
    }

    if (v44 != v41)
    {
      goto LABEL_72;
    }

LABEL_71:
    v43 = *v43;
    if (!v43)
    {
      goto LABEL_72;
    }
  }

  if (__PAIR64__(*(v43 + 9), *(v43 + 8)) != __PAIR64__(WORD1(a3), a3) || *(v43 + 5) != HIDWORD(a3))
  {
    goto LABEL_71;
  }

  v45 = *(a1 + 176);
  if (!*&v45)
  {
    goto LABEL_91;
  }

  v46 = vcnt_s8(v45);
  v46.i16[0] = vaddlv_u8(v46);
  if (v46.u32[0] > 1uLL)
  {
    v47 = a3;
    if (*&v45 <= a3)
    {
      v47 = a3 % *&v45;
    }
  }

  else
  {
    v47 = (*&v45 - 1) & a3;
  }

  v48 = *(*(a1 + 168) + 8 * v47);
  if (!v48 || (v49 = *v48) == 0)
  {
LABEL_91:
    operator new();
  }

  while (2)
  {
    v50 = v49[1];
    if (v50 != a3)
    {
      if (v46.u32[0] > 1uLL)
      {
        if (v50 >= *&v45)
        {
          v50 %= *&v45;
        }
      }

      else
      {
        v50 &= *&v45 - 1;
      }

      if (v50 != v47)
      {
        goto LABEL_91;
      }

      goto LABEL_90;
    }

    if (__PAIR64__(*(v49 + 9), *(v49 + 8)) != __PAIR64__(WORD1(a3), a3) || *(v49 + 5) != HIDWORD(a3))
    {
LABEL_90:
      v49 = *v49;
      if (!v49)
      {
        goto LABEL_91;
      }

      continue;
    }

    break;
  }

  v49[3] = v38;
}

void sub_1B2E9ECD8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  v11 = v9[60];
  if (v11 != -1)
  {
    (*(&off_1F2A0B878 + v11))(va, v9 + 4, a3, a4, a5, a6, a7, a8);
  }

  operator delete(v9);
  _Unwind_Resume(a1);
}

uint64_t std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:nn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 224) = -1;
  v3 = *(a2 + 224);
  if (v3 != -1)
  {
    v5 = a1;
    (off_1F2A0B9C8[v3])(&v5);
    *(a1 + 224) = v3;
  }

  return a1;
}

void sub_1B2E9ED80(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, __int16 a10, char a11, char a12)
{
  v14 = *(v12 + 224);
  if (v14 != -1)
  {
    (*(&off_1F2A0B878 + v14))(&a12, v12, a3, a4, a5, a6, a7, a8);
  }

  *(v12 + 224) = -1;
  _Unwind_Resume(exception_object);
}

void **_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN2md22MaterialRenderBatchKeyENS8_26DynamicTypedRenderBatchKeyENS8_27MaterialDecalRenderBatchKeyEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISC_LNS0_6_TraitE1EEEEEvRSD_OT_EUlSM_E_JRKNS0_6__baseILSG_1EJS9_SA_SB_EEEEEEDcSL_DpT0_(void **result, void *a2)
{
  v2 = *result;
  v3 = a2[1];
  *v2 = *a2;
  v2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a2[3];
  v2[2] = a2[2];
  v2[3] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a2[5];
  v2[4] = a2[4];
  v2[5] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a2[7];
  v2[6] = a2[6];
  v2[7] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = a2[8];
  *(v2 + 70) = *(a2 + 70);
  v2[8] = v7;
  v8 = a2[11];
  v2[10] = a2[10];
  v2[11] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v2[12] = a2[12];
  return result;
}

uint64_t *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN2md22MaterialRenderBatchKeyENS8_26DynamicTypedRenderBatchKeyENS8_27MaterialDecalRenderBatchKeyEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISC_LNS0_6_TraitE1EEEEEvRSD_OT_EUlSM_E_JRKNS0_6__baseILSG_1EJS9_SA_SB_EEEEEEDcSL_DpT0_(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  v3 = *(a2 + 8);
  *v2 = *a2;
  *(v2 + 8) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a2 + 24);
  *(v2 + 16) = *(a2 + 16);
  *(v2 + 24) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 40);
  *(v2 + 32) = *(a2 + 32);
  *(v2 + 40) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a2 + 56);
  *(v2 + 48) = *(a2 + 48);
  *(v2 + 56) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(a2 + 64);
  *(v2 + 70) = *(a2 + 70);
  *(v2 + 64) = v7;
  *(v2 + 80) = *(a2 + 80);
  return result;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN2md22MaterialRenderBatchKeyENS8_26DynamicTypedRenderBatchKeyENS8_27MaterialDecalRenderBatchKeyEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISC_LNS0_6_TraitE1EEEEEvRSD_OT_EUlSM_E_JRKNS0_6__baseILSG_1EJS9_SA_SB_EEEEEEDcSL_DpT0_(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 8);
  *v3 = *a2;
  *(v3 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 24);
  *(v3 + 16) = *(a2 + 16);
  *(v3 + 24) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a2 + 40);
  *(v3 + 32) = *(a2 + 32);
  *(v3 + 40) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(a2 + 56);
  *(v3 + 48) = *(a2 + 48);
  *(v3 + 56) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 64);
  *(v3 + 70) = *(a2 + 70);
  *(v3 + 64) = v8;
  v9 = *(a2 + 88);
  *(v3 + 80) = *(a2 + 80);
  *(v3 + 88) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = *(a2 + 104);
  *(v3 + 96) = *(a2 + 96);
  *(v3 + 104) = v10;
  v11 = *(a2 + 112);
  *(v3 + 112) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = *(a2 + 120);
  v13 = *(a2 + 122);
  *(v3 + 124) = 0;
  *(v3 + 122) = v13;
  *(v3 + 120) = v12;
  *(v3 + 140) = 0;
  if (*(a2 + 140) == 1)
  {
    *(v3 + 124) = *(a2 + 124);
    *(v3 + 140) = 1;
  }

  v14 = *(a2 + 144);
  *(v3 + 152) = 0;
  result = v3 + 152;
  *(v3 + 144) = v14;
  *(v3 + 208) = 0;
  if (*(a2 + 208) == 1)
  {
    result = std::construct_at[abi:nn200100]<md::RasterOverlayRenderPatch,md::RasterOverlayRenderPatch const&,md::RasterOverlayRenderPatch*>(result, a2 + 152);
    *(v3 + 208) = 1;
  }

  *(v3 + 216) = *(a2 + 216);
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul,1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<std::__convert_to_BOOL<std::not_equal_to<void>>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,md::MaterialRenderBatchKey,std::__variant_detail::_Trait::DynamicTypedRenderBatchKey,std::__variant_detail::_Trait::MaterialDecalRenderBatchKey> const&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,md::MaterialRenderBatchKey,std::__variant_detail::_Trait::DynamicTypedRenderBatchKey,std::__variant_detail::_Trait::MaterialDecalRenderBatchKey> const>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(result) = md::BaseRenderBatchKey<ggl::VertexData>::operator!=(a2, a3);
  if (*(a2 + 80) == *(a3 + 80))
  {
    return result;
  }

  else
  {
    return 1;
  }
}

uint64_t std::__function::__value_func<md::MeshRenderable * ()(md::MeshRenderable&)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__function::__func<md::RenderBatchManager::buildRenderablesForBatch(md::MeshRenderableBuilder *,md::RenderBatch *,unsigned long long)::$_0,std::allocator<md::RenderBatchManager::buildRenderablesForBatch(md::MeshRenderableBuilder *,md::RenderBatch *,unsigned long long)::$_0>,md::MeshRenderable * ()(md::MeshRenderable&)>::operator()(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  v7 = *(a1 + 8);
  v8 = &v14;
  v9 = a2;
  v3 = *(a1 + 32);
  v10 = *(a1 + 24);
  v11 = v7;
  v12 = &v14;
  v13 = a2;
  v4 = *(v3 + 224);
  if (v4 == -1)
  {
    v5 = std::__throw_bad_variant_access[abi:nn200100]();
    _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IONS1_9__variant15__value_visitorI10overloadedIJZZN2md18RenderBatchManager24buildRenderablesForBatchEPNS9_21MeshRenderableBuilderEPNS9_11RenderBatchEyENK3__0clERNS9_14MeshRenderableEEUlRKNS9_22MaterialRenderBatchKeyEE_ZZNSA_24buildRenderablesForBatchESC_SE_yENKSF_clESH_EUlRKNS9_27MaterialDecalRenderBatchKeyEE_ZZNSA_24buildRenderablesForBatchESC_SE_yENKSF_clESH_EUlRKNS9_26DynamicTypedRenderBatchKeyEE_ZZNSA_24buildRenderablesForBatchESC_SE_yENKSF_clESH_EUlT_E_EEEEJRKNS0_6__baseILNS0_6_TraitE1EJSI_SQ_SM_EEEEEEDcSU_DpT0_(v5, v6);
  }

  else
  {
    v15 = &v7;
    (off_1F2A0B950[v4])(&v15);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IONS1_9__variant15__value_visitorI10overloadedIJZZN2md18RenderBatchManager24buildRenderablesForBatchEPNS9_21MeshRenderableBuilderEPNS9_11RenderBatchEyENK3__0clERNS9_14MeshRenderableEEUlRKNS9_22MaterialRenderBatchKeyEE_ZZNSA_24buildRenderablesForBatchESC_SE_yENKSF_clESH_EUlRKNS9_27MaterialDecalRenderBatchKeyEE_ZZNSA_24buildRenderablesForBatchESC_SE_yENKSF_clESH_EUlRKNS9_26DynamicTypedRenderBatchKeyEE_ZZNSA_24buildRenderablesForBatchESC_SE_yENKSF_clESH_EUlT_E_EEEEJRKNS0_6__baseILNS0_6_TraitE1EJSI_SQ_SM_EEEEEEDcSU_DpT0_(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 56);
  v31 = &unk_1F2A3CEF8;
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  v32 = *(v4 + 8);
  v33 = v5;
  v34 = v6;
  v7 = *(v4 + 40);
  v35 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *(v4 + 48);
  v9 = *(v4 + 64);
  v38 = *(v4 + 80);
  v37 = v9;
  v36 = v8;
  v10 = *(v4 + 96);
  v11 = *(v4 + 112);
  v12 = *(v4 + 128);
  *&v41[15] = *(v4 + 143);
  *v41 = v12;
  v40 = v11;
  v39 = v10;
  LOBYTE(v42) = 0;
  v45 = 0;
  if (*(v4 + 176) == 1)
  {
    v13 = *(v4 + 160);
    v42 = *(v4 + 152);
    v43 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    v44 = *(v4 + 168);
    v45 = 1;
  }

  v46 = *(v4 + 184);
  v47 = 0;
  if (*(v4 + 193) == 1)
  {
    LOBYTE(v47) = *(v4 + 192);
    HIBYTE(v47) = 1;
  }

  v14 = *(v4 + 196);
  v49 = *(v4 + 212);
  v48 = v14;
  v31 = &unk_1F2A0B9A8;
  v51 = 0;
  v50 = 0uLL;
  LOBYTE(v32) = 2;
  v15 = *(a2 + 80);
  v16 = *(a2 + 88);
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
    *&v50 = v15;
    *(&v50 + 1) = v16;
  }

  else
  {
    v50 = *(a2 + 80);
  }

  v51 = *(a2 + 96);
  v41[16] = *(a2 + 72);
  v41[18] = 0;
  v17 = v3[43];
  if (!v17)
  {
    v18 = malloc_type_malloc(240 * v3[41], 0x10E20404BA776A7uLL);
    v52 = v18;
    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::__emplace_unique_key_args<geo::Pool<gdc::FallbackNode>::Element *,geo::Pool<gdc::FallbackNode>::Element * const&>(v3 + 38, v18, &v52);
    v17 = v3[43];
    v19 = &v18[240 * v3[41] - 240];
    if (v19 >= v18)
    {
      do
      {
        v20 = v19;
        *v19 = v17;
        v19 -= 240;
        v17 = v20;
      }

      while (v19 >= v18);
      v17 = v19 + 240;
    }

    v3[43] = v17;
  }

  v3[43] = *v17;
  *v17 = &unk_1F2A3CEF8;
  v21 = v32;
  v17[3] = v33;
  *(v17 + 1) = v21;
  v22 = v35;
  v17[4] = v34;
  v17[5] = v22;
  if (v22)
  {
    atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
  }

  v23 = v36;
  v24 = v38;
  *(v17 + 4) = v37;
  *(v17 + 5) = v24;
  *(v17 + 3) = v23;
  v25 = v39;
  v26 = v40;
  v27 = *v41;
  *(v17 + 143) = *&v41[15];
  *(v17 + 7) = v26;
  *(v17 + 8) = v27;
  *(v17 + 6) = v25;
  *(v17 + 152) = 0;
  *(v17 + 176) = 0;
  if (v45 == 1)
  {
    v28 = v43;
    v17[19] = v42;
    v17[20] = v28;
    if (v28)
    {
      atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
    }

    *(v17 + 168) = v44;
    *(v17 + 176) = 1;
  }

  v17[23] = v46;
  *(v17 + 96) = 0;
  if (HIBYTE(v47) == 1)
  {
    *(v17 + 192) = v47;
    *(v17 + 193) = 1;
  }

  v29 = v48;
  *(v17 + 53) = v49;
  *(v17 + 196) = v29;
  *v17 = &unk_1F2A0B9A8;
  *(v17 + 27) = v50;
  v50 = 0uLL;
  **(v2 + 48) = v17;
  v30 = *(&v50 + 1);
  v17[29] = v51;
  v31 = &unk_1F2A0B9A8;
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v30);
  }

  md::MeshRenderable::~MeshRenderable(&v31);
}

void sub_1B2E9F500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, std::__shared_weak_count *a38)
{
  if (a38)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a38);
  }

  md::MeshRenderable::~MeshRenderable(&a10);
  _Unwind_Resume(a1);
}

void md::MaterialDecalRenderable::~MaterialDecalRenderable(md::MaterialDecalRenderable *this)
{
  *this = &unk_1F2A0B9A8;
  v2 = *(this + 28);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::MeshRenderable::~MeshRenderable(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A0B9A8;
  v2 = *(this + 28);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::MeshRenderable::~MeshRenderable(this);
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IONS1_9__variant15__value_visitorI10overloadedIJZZN2md18RenderBatchManager24buildRenderablesForBatchEPNS9_21MeshRenderableBuilderEPNS9_11RenderBatchEyENK3__0clERNS9_14MeshRenderableEEUlRKNS9_22MaterialRenderBatchKeyEE_ZZNSA_24buildRenderablesForBatchESC_SE_yENKSF_clESH_EUlRKNS9_27MaterialDecalRenderBatchKeyEE_ZZNSA_24buildRenderablesForBatchESC_SE_yENKSF_clESH_EUlRKNS9_26DynamicTypedRenderBatchKeyEE_ZZNSA_24buildRenderablesForBatchESC_SE_yENKSF_clESH_EUlT_E_EEEEJRKNS0_6__baseILNS0_6_TraitE1EJSI_SQ_SM_EEEEEEDcSU_DpT0_(uint64_t **a1, uint64_t a2)
{
  v5 = *a1;
  v6 = **a1;
  v7 = (*a1)[3];
  *(v7 + 8) = 1;
  if (*(a2 + 217) == 1)
  {
    v8 = *(a2 + 64);
    v9 = *(a2 + 216);
    v10 = 1;
  }

  else
  {
    v8 = *(v7 + 48);
    v9 = *(v7 + 56);
    v39[0] = *(v7 + 57);
    *(v39 + 3) = *(v7 + 60);
    v10 = *(v7 + 64);
    v38[0] = *(v7 + 65);
    *(v38 + 3) = *(v7 + 68);
  }

  v11 = v5[1];
  v12 = *(a2 + 96);
  v13 = *(a2 + 112);
  v36[0] = *(a2 + 104);
  v36[1] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = *(a2 + 72);
  v15 = *(a2 + 120);
  v16 = *(a2 + 121);
  v17 = *(a2 + 75);
  v18 = *(a2 + 122);
  LOBYTE(v34) = 0;
  v35 = 0;
  if (*(a2 + 140) == 1)
  {
    v34 = *(a2 + 124);
    v35 = 1;
  }

  v19 = *(a2 + 144);
  v20 = *(a2 + 76);
  LOBYTE(v27[0]) = 0;
  v33 = 0;
  v21 = *(a2 + 208);
  if (v21 == 1)
  {
    v2 = *(a2 + 160);
    v27[0] = *(a2 + 152);
    v27[1] = v2;
    if (v2)
    {
      atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v28 = *(a2 + 168);
    v3 = *(a2 + 184);
    v29 = *(a2 + 176);
    v30 = v3;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v4 = *(a2 + 200);
    v31 = *(a2 + 192);
    v32 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v33 = 1;
  }

  v22 = v8;
  v23 = v9;
  *v24 = v39[0];
  *&v24[3] = *(v39 + 3);
  v25 = v10;
  *v26 = v38[0];
  *&v26[3] = *(v38 + 3);
  md::MeshRenderableBuilder::buildRenderable(v37, v11, v7, (a2 + 80), v12, v36, v14, v15, v16, v17, v18, &v34, v19, SBYTE4(v19), SHIWORD(v19), v20, v27, &v22, *(a2 + 218), HIBYTE(*(a2 + 218)));
  if (v21)
  {
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }

    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v2);
    }
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }

  *v5[2] = geo::Pool<md::MaterialRenderable>::construct<md::MaterialRenderable>((v6 + 208), v37);
  md::MaterialRenderable::~MaterialRenderable(v37);
}

void sub_1B2E9F838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  md::MaterialRenderable::~MaterialRenderable(va);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<md::RenderBatchManager::buildRenderablesForBatch(md::MeshRenderableBuilder *,md::RenderBatch *,unsigned long long)::$_0,std::allocator<md::RenderBatchManager::buildRenderablesForBatch(md::MeshRenderableBuilder *,md::RenderBatch *,unsigned long long)::$_0>,md::MeshRenderable * ()(md::MeshRenderable&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A0B918;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void md::RenderBatchManager::removeEntity(int8x8_t *a1, unint64_t *a2)
{
  v4 = *a2;
  v5 = std::__hash_table<std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::__unordered_map_hasher<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,true>,std::__unordered_map_equal<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::equal_to<gdc::Entity>,std::hash<gdc::Entity>,true>,std::allocator<std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>::find<gdc::Entity>(&a1[21], *a2);
  if (v5)
  {
    v6 = v5[3];
    if (v6)
    {
      if (md::RenderBatch::remove(v6, v4))
      {
        a1[10].i8[0] = 1;
      }
    }
  }

  v7 = std::__hash_table<std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::__unordered_map_hasher<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,true>,std::__unordered_map_equal<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::equal_to<gdc::Entity>,std::hash<gdc::Entity>,true>,std::allocator<std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>::find<gdc::Entity>(&a1[21], *a2);
  if (v7)
  {
    v8 = a1[22];
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

    v11 = a1[21];
    v12 = *(*&v11 + 8 * v9);
    do
    {
      v13 = v12;
      v12 = *v12;
    }

    while (v12 != v7);
    if (v13 == &a1[23])
    {
      goto LABEL_24;
    }

    v14 = v13[1];
    if (v10.u32[0] > 1uLL)
    {
      if (*&v14 >= *&v8)
      {
        *&v14 %= *&v8;
      }
    }

    else
    {
      *&v14 &= *&v8 - 1;
    }

    if (*&v14 != v9)
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
        *(*&v11 + 8 * v9) = 0;
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
        *(*&a1[21] + 8 * v17) = v13;
        v16 = *v7;
      }
    }

    *v13 = v16;
    *v7 = 0;
    --*&a1[24];

    operator delete(v7);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::LabelCreateExternalIconRequest>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelExternalIcon>,void *> *> *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::shared_ptr<md::LabelExternalIcon>,void *>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsTransitLink const*,std::weak_ptr<md::LabelExternalTransitLink>>,void *> *> *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<GeoCodecsTransitLink const*,std::weak_ptr<md::LabelExternalTransitLink>>,void *>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned long long,std::weak_ptr<md::LabelExternalTransitNode>>,void *> *> *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<unsigned long long,std::weak_ptr<md::LabelExternalTransitNode>>,void *>>(uint64_t a1, void *a2)
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

void std::__shared_ptr_emplace<md::weak_interface_ptr<md::LabelExternalObjectsModerator>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0BA20;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::LabelExternalObjectsModerator::runIconCreateRequest(void (***a1)(__int128 *__return_ptr), uint64_t *a2)
{
  if (a1)
  {
    (**a1)(&v6);
    v3 = *a2;
    v4 = v6;
    v6 = 0uLL;
    v5 = *(v3 + 8);
    *v3 = v4;
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }

    if (*(&v6 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*(&v6 + 1));
    }
  }

  *(*a2 + 57) = 1;
}

void std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<std::shared_ptr<md::LabelExternalIcon>,void *>,mdm::zone_mallocator>>::operator()[abi:nn200100](std::__shared_weak_count *a1, void *a2)
{
  if (a1)
  {
    a1 = a2[3];
    if (a1)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](a1);
    }
  }

  v3 = mdm::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::shared_ptr<md::LabelExternalIcon>,void *>>(v3, a2);
}

void std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<std::__hash_value_type<GeoCodecsTransitLink const*,std::weak_ptr<md::LabelExternalTransitLink>>,void *>,mdm::zone_mallocator>>::operator()[abi:nn200100](std::__shared_weak_count *result, void *a2)
{
  if (result)
  {
    result = a2[4];
    if (result)
    {
      std::__shared_weak_count::__release_weak(result);
    }
  }

  else if (!a2)
  {
    return;
  }

  v3 = mdm::zone_mallocator::instance(result);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<GeoCodecsTransitLink const*,std::weak_ptr<md::LabelExternalTransitLink>>,void *>>(v3, a2);
}

void std::__shared_ptr_emplace<md::LabelExternalTransitLinkData>::__on_zero_shared(mdm::zone_mallocator *result)
{
  v1 = *(result + 3);
  if (v1)
  {
    *(result + 4) = v1;
    v2 = mdm::zone_mallocator::instance(result);
    v3 = pthread_rwlock_rdlock((v2 + 32));
    if (v3)
    {
      geo::read_write_lock::logFailure(v3, "read lock", v4);
    }

    atomic_fetch_add((v2 + 24), 0xFFFFFFFF);
    malloc_zone_free(*v2, v1);

    geo::read_write_lock::unlock((v2 + 32));
  }
}

void std::__shared_ptr_emplace<md::LabelExternalTransitLinkData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0BA58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::LabelExternalObjectsModerator::externalTransitLink(void *a1, uint64_t a2, unint64_t a3)
{
  std::mutex::lock((a2 + 304));
  v6 = *(a2 + 200);
  if (!*&v6)
  {
    goto LABEL_17;
  }

  v7 = 0x9DDFEA08EB382D69 * ((8 * (a3 & 0x1FFFFFFF) + 8) ^ HIDWORD(a3));
  v8 = 0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v7 >> 47) ^ v7);
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
  v10 = vcnt_s8(v6);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    v11 = v9;
    if (v9 >= *&v6)
    {
      v11 = v9 % *&v6;
    }
  }

  else
  {
    v11 = v9 & (*&v6 - 1);
  }

  v12 = *(*(a2 + 192) + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_17:
    *a1 = 0;
    a1[1] = 0;
    goto LABEL_18;
  }

  while (1)
  {
    v14 = v13[1];
    if (v9 == v14)
    {
      break;
    }

    if (v10.u32[0] > 1uLL)
    {
      if (v14 >= *&v6)
      {
        v14 %= *&v6;
      }
    }

    else
    {
      v14 &= *&v6 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_17;
    }

LABEL_16:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_17;
    }
  }

  if (v13[2] != a3)
  {
    goto LABEL_16;
  }

  *a1 = 0;
  a1[1] = 0;
  v15 = v13[4];
  if (v15)
  {
    v16 = std::__shared_weak_count::lock(v15);
    a1[1] = v16;
    if (v16)
    {
      *a1 = v13[3];
    }
  }

LABEL_18:

  std::mutex::unlock((a2 + 304));
}

void std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsTransitLink const*,std::weak_ptr<md::LabelExternalTransitLink>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsTransitLink const*,std::weak_ptr<md::LabelExternalTransitLink>>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsTransitLink const*,std::weak_ptr<md::LabelExternalTransitLink>>,void *> *> **,0>(mdm::zone_mallocator *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsTransitLink const*,std::weak_ptr<md::LabelExternalTransitLink>>,void *> *> *>(v3, v2);
  }
}

void std::__shared_ptr_emplace<md::LabelExternalTransitLink>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::mutex::lock(v2);
  sig = v2[1].__m_.__sig;
  if (sig)
  {
    v4 = *(a1 + 24);
    std::mutex::lock((sig + 304));
    v5 = *(sig + 200);
    if (v5)
    {
      v6 = 0x9DDFEA08EB382D69 * ((8 * (v4 & 0x1FFFFFFF) + 8) ^ HIDWORD(v4));
      v7 = 0x9DDFEA08EB382D69 * (HIDWORD(v4) ^ (v6 >> 47) ^ v6);
      v8 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
      v9 = vcnt_s8(v5);
      v9.i16[0] = vaddlv_u8(v9);
      if (v9.u32[0] > 1uLL)
      {
        v10 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
        if (v8 >= *&v5)
        {
          v10 = v8 % *&v5;
        }
      }

      else
      {
        v10 = v8 & (*&v5 - 1);
      }

      v11 = *(sig + 192);
      v12 = *(v11 + 8 * v10);
      if (v12)
      {
        v13 = *v12;
        if (*v12)
        {
          v14 = *&v5 - 1;
          do
          {
            v15 = v13[1];
            if (v15 == v8)
            {
              if (v13[2] == v4)
              {
                v16 = v13[1];
                if (v9.u32[0] > 1uLL)
                {
                  if (v16 >= *&v5)
                  {
                    v16 %= *&v5;
                  }
                }

                else
                {
                  v16 &= v14;
                }

                v17 = *(v11 + 8 * v16);
                do
                {
                  v18 = v17;
                  v17 = *v17;
                }

                while (v17 != v13);
                if (v18 == (sig + 216))
                {
                  goto LABEL_37;
                }

                v19 = v18[1];
                if (v9.u32[0] > 1uLL)
                {
                  if (v19 >= *&v5)
                  {
                    v19 %= *&v5;
                  }
                }

                else
                {
                  v19 &= v14;
                }

                if (v19 != v16)
                {
LABEL_37:
                  if (!*v13)
                  {
                    goto LABEL_38;
                  }

                  v20 = *(*v13 + 8);
                  if (v9.u32[0] > 1uLL)
                  {
                    if (v20 >= *&v5)
                    {
                      v20 %= *&v5;
                    }
                  }

                  else
                  {
                    v20 &= v14;
                  }

                  if (v20 != v16)
                  {
LABEL_38:
                    *(v11 + 8 * v16) = 0;
                  }
                }

                v21 = *v13;
                if (*v13)
                {
                  v22 = *(v21 + 8);
                  if (v9.u32[0] > 1uLL)
                  {
                    if (v22 >= *&v5)
                    {
                      v22 %= *&v5;
                    }
                  }

                  else
                  {
                    v22 &= v14;
                  }

                  if (v22 != v16)
                  {
                    *(*(sig + 192) + 8 * v22) = v18;
                    v21 = *v13;
                  }
                }

                *v18 = v21;
                *v13 = 0;
                --*(sig + 232);
                std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<std::__hash_value_type<GeoCodecsTransitLink const*,std::weak_ptr<md::LabelExternalTransitLink>>,void *>,mdm::zone_mallocator>>::operator()[abi:nn200100](1, v13);
                break;
              }
            }

            else
            {
              if (v9.u32[0] > 1uLL)
              {
                if (v15 >= *&v5)
                {
                  v15 %= *&v5;
                }
              }

              else
              {
                v15 &= v14;
              }

              if (v15 != v10)
              {
                break;
              }
            }

            v13 = *v13;
          }

          while (v13);
        }
      }
    }

    std::mutex::unlock((sig + 304));
  }

  std::mutex::unlock(v2);
  std::mutex::~mutex((a1 + 64));
  v23 = *(a1 + 56);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v23);
  }

  v24 = *(a1 + 40);
  if (v24)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v24);
  }
}

void sub_1B2EA0538(_Unwind_Exception *a1)
{
  std::mutex::unlock(v2);
  std::mutex::~mutex((v1 + 64));
  v4 = *(v1 + 56);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = *(v1 + 40);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<md::LabelExternalTransitLink>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0BA90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<std::__hash_value_type<unsigned long long,std::weak_ptr<md::LabelExternalTransitNode>>,void *>,mdm::zone_mallocator>>::operator()[abi:nn200100](std::__shared_weak_count *result, void *a2)
{
  if (result)
  {
    result = a2[4];
    if (result)
    {
      std::__shared_weak_count::__release_weak(result);
    }
  }

  else if (!a2)
  {
    return;
  }

  v3 = mdm::zone_mallocator::instance(result);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<unsigned long long,std::weak_ptr<md::LabelExternalTransitNode>>,void *>>(v3, a2);
}

void md::LabelExternalObjectsModerator::externalTransitNode(md::LabelExternalObjectsModerator *this, uint64_t a2, unint64_t a3)
{
  std::mutex::lock((a2 + 368));
  v6 = *(a2 + 256);
  if (!*&v6)
  {
    goto LABEL_17;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = a3;
    if (*&v6 <= a3)
    {
      v8 = a3 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & a3;
  }

  v9 = *(*(a2 + 248) + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_17:
    *this = 0;
    *(this + 1) = 0;
    goto LABEL_18;
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == a3)
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
      goto LABEL_17;
    }

LABEL_16:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_17;
    }
  }

  if (v10[2] != a3)
  {
    goto LABEL_16;
  }

  *this = 0;
  *(this + 1) = 0;
  v12 = v10[4];
  if (v12)
  {
    v13 = std::__shared_weak_count::lock(v12);
    *(this + 1) = v13;
    if (v13)
    {
      *this = v10[3];
    }
  }

LABEL_18:

  std::mutex::unlock((a2 + 368));
}

void std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned long long,std::weak_ptr<md::LabelExternalTransitNode>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned long long,std::weak_ptr<md::LabelExternalTransitNode>>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned long long,std::weak_ptr<md::LabelExternalTransitNode>>,void *> *> **,0>(mdm::zone_mallocator *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned long long,std::weak_ptr<md::LabelExternalTransitNode>>,void *> *> *>(v3, v2);
  }
}

void std::__shared_ptr_emplace<md::LabelExternalTransitNode>::__on_zero_shared(void *a1)
{
  v2 = a1[4];
  std::mutex::lock(v2);
  sig = v2[1].__m_.__sig;
  if (sig)
  {
    v4 = a1[3];
    std::mutex::lock((sig + 368));
    v5 = *(sig + 256);
    if (v5)
    {
      v6 = vcnt_s8(v5);
      v6.i16[0] = vaddlv_u8(v6);
      if (v6.u32[0] > 1uLL)
      {
        v7 = v4;
        if (v4 >= *&v5)
        {
          v7 = v4 % *&v5;
        }
      }

      else
      {
        v7 = (*&v5 - 1) & v4;
      }

      v8 = *(sig + 248);
      v9 = *(v8 + 8 * v7);
      if (v9)
      {
        v10 = *v9;
        if (*v9)
        {
          v11 = *&v5 - 1;
          do
          {
            v12 = v10[1];
            if (v12 == v4)
            {
              if (v10[2] == v4)
              {
                v13 = v10[1];
                if (v6.u32[0] > 1uLL)
                {
                  if (v13 >= *&v5)
                  {
                    v13 %= *&v5;
                  }
                }

                else
                {
                  v13 &= v11;
                }

                v14 = *(v8 + 8 * v13);
                do
                {
                  v15 = v14;
                  v14 = *v14;
                }

                while (v14 != v10);
                if (v15 == (sig + 272))
                {
                  goto LABEL_37;
                }

                v16 = v15[1];
                if (v6.u32[0] > 1uLL)
                {
                  if (v16 >= *&v5)
                  {
                    v16 %= *&v5;
                  }
                }

                else
                {
                  v16 &= v11;
                }

                if (v16 != v13)
                {
LABEL_37:
                  if (!*v10)
                  {
                    goto LABEL_38;
                  }

                  v17 = *(*v10 + 8);
                  if (v6.u32[0] > 1uLL)
                  {
                    if (v17 >= *&v5)
                    {
                      v17 %= *&v5;
                    }
                  }

                  else
                  {
                    v17 &= v11;
                  }

                  if (v17 != v13)
                  {
LABEL_38:
                    *(v8 + 8 * v13) = 0;
                  }
                }

                v18 = *v10;
                if (*v10)
                {
                  v19 = *(v18 + 8);
                  if (v6.u32[0] > 1uLL)
                  {
                    if (v19 >= *&v5)
                    {
                      v19 %= *&v5;
                    }
                  }

                  else
                  {
                    v19 &= v11;
                  }

                  if (v19 != v13)
                  {
                    *(*(sig + 248) + 8 * v19) = v15;
                    v18 = *v10;
                  }
                }

                *v15 = v18;
                *v10 = 0;
                --*(sig + 288);
                std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<std::__hash_value_type<unsigned long long,std::weak_ptr<md::LabelExternalTransitNode>>,void *>,mdm::zone_mallocator>>::operator()[abi:nn200100](1, v10);
                break;
              }
            }

            else
            {
              if (v6.u32[0] > 1uLL)
              {
                if (v12 >= *&v5)
                {
                  v12 %= *&v5;
                }
              }

              else
              {
                v12 &= v11;
              }

              if (v12 != v7)
              {
                break;
              }
            }

            v10 = *v10;
          }

          while (v10);
        }
      }
    }

    std::mutex::unlock((sig + 368));
  }

  std::mutex::unlock(v2);
  v20 = a1[5];
  if (v20)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v20);
  }
}

void sub_1B2EA09D8(_Unwind_Exception *a1)
{
  std::mutex::unlock(v2);
  v4 = *(v1 + 40);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<md::LabelExternalTransitNode>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0BAC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::LabelExternalObjectsModerator::isTransitNodeAlongSelectedLine(md::LabelExternalObjectsModerator *this, unint64_t a2)
{
  if (*(this + 433) == 1)
  {
    for (i = *(this + 21); i; i = *i)
    {
      v3 = i[4];
      if (v3 <= a2)
      {
        if (v3 >= a2)
        {
          return 1;
        }

        ++i;
      }
    }

    return 0;
  }

  v4 = *(this + 17);
  if (!v4)
  {
    return 0;
  }

  while (1)
  {
    v5 = v4[4];
    if (v5 <= a2)
    {
      break;
    }

LABEL_12:
    v4 = *v4;
    if (!v4)
    {
      return 0;
    }
  }

  if (v5 < a2)
  {
    ++v4;
    goto LABEL_12;
  }

  return 1;
}

void std::__shared_ptr_emplace<md::LabelCreateExternalIconRequest>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

void std::__shared_ptr_emplace<md::LabelCreateExternalIconRequest>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0BB00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::LabelExternalObjectsModerator::registerIconForAsynchModeUpdates(unint64_t result, void *a2)
{
  if ((*(result + 432) & 1) == 0)
  {
    v5 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
    v6 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v5 >> 47) ^ v5);
    v7 = 0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47));
    v8 = *(result + 80);
    if (v8)
    {
      v9 = vcnt_s8(v8);
      v9.i16[0] = vaddlv_u8(v9);
      if (v9.u32[0] > 1uLL)
      {
        v2 = 0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47));
        if (v7 >= v8)
        {
          v2 = v7 % v8;
        }
      }

      else
      {
        v2 = v7 & (v8 - 1);
      }

      v10 = *(*(result + 72) + 8 * v2);
      if (v10)
      {
        for (i = *v10; i; i = *i)
        {
          v12 = i[1];
          if (v12 == v7)
          {
            if (i[2] == *a2)
            {
              return;
            }
          }

          else
          {
            if (v9.u32[0] > 1uLL)
            {
              if (v12 >= v8)
              {
                v12 %= v8;
              }
            }

            else
            {
              v12 &= v8 - 1;
            }

            if (v12 != v2)
            {
              break;
            }
          }
        }
      }
    }

    v13 = mdm::zone_mallocator::instance(result);
    v14 = pthread_rwlock_rdlock((v13 + 32));
    if (v14)
    {
      geo::read_write_lock::logFailure(v14, "read lock", v15);
    }

    v16 = malloc_type_zone_malloc(*v13, 0x20uLL, 0x10200404161829EuLL);
    atomic_fetch_add((v13 + 24), 1u);
    geo::read_write_lock::unlock((v13 + 32));
    *v16 = 0;
    v16[1] = v7;
    v18 = a2[1];
    v16[2] = *a2;
    v16[3] = v18;
    if (v18)
    {
      atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
    }

    v19 = (*(result + 112) + 1);
    v20 = *(result + 120);
    if (v8 && (v20 * v8) >= v19)
    {
LABEL_68:
      v38 = *(result + 72);
      v39 = *(v38 + 8 * v2);
      if (v39)
      {
        *v16 = *v39;
      }

      else
      {
        *v16 = *(result + 96);
        *(result + 96) = v16;
        *(v38 + 8 * v2) = result + 96;
        if (!*v16)
        {
LABEL_77:
          ++*(result + 112);
          return;
        }

        v40 = *(*v16 + 8);
        if ((v8 & (v8 - 1)) != 0)
        {
          if (v40 >= v8)
          {
            v40 %= v8;
          }
        }

        else
        {
          v40 &= v8 - 1;
        }

        v39 = (*(result + 72) + 8 * v40);
      }

      *v39 = v16;
      goto LABEL_77;
    }

    v21 = 1;
    if (v8 >= 3)
    {
      v21 = (v8 & (v8 - 1)) != 0;
    }

    v22 = v21 | (2 * v8);
    v23 = vcvtps_u32_f32(v19 / v20);
    if (v22 <= v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = v22;
    }

    if (v24 == 1)
    {
      v24 = 2;
    }

    else if ((v24 & (v24 - 1)) != 0)
    {
      prime = std::__next_prime(v24);
      v24 = prime;
    }

    v8 = *(result + 80);
    if (v24 > v8)
    {
      goto LABEL_35;
    }

    if (v24 < v8)
    {
      prime = vcvtps_u32_f32(*(result + 112) / *(result + 120));
      if (v8 < 3 || (v33 = vcnt_s8(v8), v33.i16[0] = vaddlv_u8(v33), v33.u32[0] > 1uLL))
      {
        prime = std::__next_prime(prime);
      }

      else
      {
        v34 = 1 << -__clz(prime - 1);
        if (prime >= 2)
        {
          prime = v34;
        }
      }

      if (v24 <= prime)
      {
        v24 = prime;
      }

      if (v24 >= v8)
      {
        v8 = *(result + 80);
      }

      else
      {
        if (v24)
        {
LABEL_35:
          v25 = mdm::zone_mallocator::instance(prime);
          v26 = pthread_rwlock_rdlock((v25 + 32));
          if (v26)
          {
            geo::read_write_lock::logFailure(v26, "read lock", v27);
          }

          v28 = malloc_type_zone_malloc(*v25, 8 * v24, 0x2004093837F09uLL);
          atomic_fetch_add((v25 + 24), 1u);
          geo::read_write_lock::unlock((v25 + 32));
          std::unique_ptr<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelExternalIcon>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelExternalIcon>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelExternalIcon>,void *> *> **,0>((result + 72), v28);
          v29 = 0;
          *(result + 80) = v24;
          do
          {
            *(*(result + 72) + 8 * v29++) = 0;
          }

          while (v24 != v29);
          v30 = *(result + 96);
          if (v30)
          {
            v31 = v30[1];
            v32 = vcnt_s8(v24);
            v32.i16[0] = vaddlv_u8(v32);
            if (v32.u32[0] > 1uLL)
            {
              if (v31 >= v24)
              {
                v31 %= v24;
              }
            }

            else
            {
              v31 &= v24 - 1;
            }

            *(*(result + 72) + 8 * v31) = result + 96;
            v35 = *v30;
            if (*v30)
            {
              do
              {
                v36 = v35[1];
                if (v32.u32[0] > 1uLL)
                {
                  if (v36 >= v24)
                  {
                    v36 %= v24;
                  }
                }

                else
                {
                  v36 &= v24 - 1;
                }

                if (v36 != v31)
                {
                  v37 = *(result + 72);
                  if (!*(v37 + 8 * v36))
                  {
                    *(v37 + 8 * v36) = v30;
                    goto LABEL_59;
                  }

                  *v30 = *v35;
                  *v35 = **(v37 + 8 * v36);
                  **(v37 + 8 * v36) = v35;
                  v35 = v30;
                }

                v36 = v31;
LABEL_59:
                v30 = v35;
                v35 = *v35;
                v31 = v36;
              }

              while (v35);
            }
          }

          v8 = v24;
          goto LABEL_63;
        }

        std::unique_ptr<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelExternalIcon>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelExternalIcon>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelExternalIcon>,void *> *> **,0>((result + 72), 0);
        v8 = 0;
        *(result + 80) = 0;
      }
    }

LABEL_63:
    if ((v8 & (v8 - 1)) != 0)
    {
      if (v7 >= v8)
      {
        v2 = v7 % v8;
      }

      else
      {
        v2 = v7;
      }
    }

    else
    {
      v2 = (v8 - 1) & v7;
    }

    goto LABEL_68;
  }
}

void sub_1B2EA1040(_Unwind_Exception *a1)
{
  geo::read_write_lock::unlock((v2 + 32));
  std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<std::shared_ptr<md::LabelExternalIcon>,void *>,mdm::zone_mallocator>>::operator()[abi:nn200100](1, v1);
  _Unwind_Resume(a1);
}

void std::unique_ptr<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelExternalIcon>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelExternalIcon>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelExternalIcon>,void *> *> **,0>(mdm::zone_mallocator *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelExternalIcon>,void *> *> *>(v3, v2);
  }
}

void md::LabelExternalIcon::debugString(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void std::vector<AdditionalRouteInfo>::clear[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    v4 = v3 - 40;
    do
    {
      *(v3 - 40) = &unk_1F2A4C308;
      v3 -= 40;

      v4 -= 40;
    }

    while (v3 != v2);
  }

  a1[1] = v2;
}

void *geo::_retain_ptr<GEOComposedRoute * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(void *a1, uint64_t a2)
{
  *a1 = &unk_1F2A4C308;
  a1[1] = 0;
  v3 = *(a2 + 8);
  v4 = a1[1];
  a1[1] = v3;

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned char,md::DataRequirement>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,md::DataRequirement>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,md::DataRequirement>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,md::DataRequirement>>>::__erase_unique<unsigned char>(void *a1, unsigned __int8 a2)
{
  v3 = std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::find<gms::PropertyKey>(a1, a2);
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

    operator delete(v3);
  }
}

void md::CartographicMapEngineMode::~CartographicMapEngineMode(md::CartographicMapEngineMode *this)
{
  md::MapEngineMode::~MapEngineMode(this);

  JUMPOUT(0x1B8C62190);
}

void gdc::LogicExecutionGraphBuilder::addLogic<md::DisplayLinkVerificationLogic>(uint64_t a1)
{
  v7[0] = 0x3A3A2962B4F0D965;
  v7[1] = "md::DisplayLinkVerificationLogic]";
  v7[2] = 32;
  v5[0] = 0x42BE82C40F9A8F80;
  v5[1] = "md::DisplayLinkVerificationContext]";
  v5[2] = 34;
  v6 = 1;
  v4[1] = v5;
  v4[2] = 0;
  v4[0] = &unk_1F2A4C258;
  v1[1] = &v2;
  v1[2] = 1;
  v1[0] = &unk_1F2A4C218;
  v2 = xmmword_1E7B3BAF8;
  v3 = 17;
  gdc::LogicExecutionGraphBuilder::addLogic(a1, v7, v5, 0, v4, v1);
}

void *std::unique_ptr<ggl::FragmentedPool<ggl::ARMesh::ARShadowPipelineSetup>>::reset[abi:nn200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    ggl::FragmentedPool<ggl::ARMesh::ARShadowPipelineSetup>::~FragmentedPool(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void *std::unique_ptr<ggl::FragmentedPool<ggl::ARMesh::ARMeshPipelineSetup>>::reset[abi:nn200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    ggl::FragmentedPool<ggl::ARMesh::ARMeshPipelineSetup>::~FragmentedPool(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void *std::unique_ptr<ggl::FragmentedPool<ggl::ARMesh::ARDepthMeshPipelineSetup>>::reset[abi:nn200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    ggl::FragmentedPool<ggl::ARMesh::ARDepthMeshPipelineSetup>::~FragmentedPool(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

__n128 md::ARMeshRenderResources::generateIcoSphereCached(__n128 *this, unsigned int a2)
{
  {
  }

  if (a2 >= 3)
  {
    a2 = 3;
  }

  v4 = (&md::ARMeshRenderResources::generateIcoSphereCached(unsigned char)::_icoSpheres + 16 * a2);
  if (!*v4)
  {
    memset(v9, 0, sizeof(v9));
    memset(v8, 0, sizeof(v8));
    md::GeometryLogic::createIcoSphere(v9, v8, a2);
    operator new();
  }

  v5 = v4[1];
  this->n128_u64[0] = *v4;
  this->n128_u64[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = (&md::ARMeshRenderResources::generateIcoSphereCached(unsigned char)::_icoSpheresBounds + 24 * a2);
  result = *v6;
  this[1] = *v6;
  this[2].n128_u64[0] = v6[1].n128_u64[0];
  return result;
}

void sub_1B2EA27A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36, ...)
{
  va_start(va, a36);
  ggl::BufferMemory::~BufferMemory(&a15);
  std::__shared_weak_count::__release_shared[abi:nn200100](v37);
  ggl::BufferMemory::~BufferMemory(&a21);
  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a28);
  }

  ggl::BufferMemory::~BufferMemory(&a29);
  if (a36)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a36);
  }

  ggl::BufferMemory::~BufferMemory(va);
  std::__shared_weak_count::__release_shared[abi:nn200100](v36);
  if (__p)
  {
    operator delete(__p);
  }

  v40 = *(v38 - 208);
  if (v40)
  {
    *(v38 - 200) = v40;
    operator delete(v40);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<ggl::DaVinci::TexturedMesh>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3AA30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::DeviceDataTyped<ggl::DaVinci::Normals>::~DeviceDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::DeviceDataTyped<ggl::DaVinci::Normals>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3A728;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::DeviceDataTyped<ggl::DaVinci::UVs>::~DeviceDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::DeviceDataTyped<ggl::DaVinci::UVs>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3A6D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::VertexDataTyped<ggl::DaVinci::TexturedVbo>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::DaVinci::TexturedVbo>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::DaVinci::TexturedVbo>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3A7D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

ggl::zone_mallocator *std::vector<ggl::ARMesh::ARDepthMeshPipelineSetup *,geo::allocator_adapter<ggl::ARMesh::ARDepthMeshPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if ((*(result + 2) - *result) >> 6 <= 0x7CuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ARMesh::ARDepthMeshPipelineSetup *>(v6, 1000);
    v8 = &v7[v5];
    v9 = v7 + 8000;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::ARMesh::ARDepthMeshPipelineSetup *,geo::allocator_adapter<ggl::ARMesh::ARDepthMeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

void sub_1B2EA2F78(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void ggl::ConstantDataTyped<ggl::ARMesh::CameraView>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::ARMesh::CameraView>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0BCA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__func<md::ARMeshRenderResources::ARMeshRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_4,std::allocator<md::ARMeshRenderResources::ARMeshRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_4>,ggl::ARMesh::ARDepthMeshPipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A0BDD8;
  a2[1] = v2;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::ARMesh::ARMeshPipelineSetup *,geo::allocator_adapter<ggl::ARMesh::ARMeshPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if ((*(result + 2) - *result) >> 6 <= 0x7CuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ARMesh::ARMeshPipelineSetup *>(v6, 1000);
    v8 = &v7[v5];
    v9 = v7 + 8000;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::ARMesh::ARMeshPipelineSetup *,geo::allocator_adapter<ggl::ARMesh::ARMeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

void sub_1B2EA34B0(_Unwind_Exception *exception_object)
{
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    if (!v3)
    {
LABEL_3:
      if (!v2)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if (!v3)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  if (!v2)
  {
LABEL_4:
    if (!v1)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_9:
  std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  if (!v1)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

LABEL_5:
  std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  goto LABEL_6;
}

void sub_1B2EA3514()
{
  if (!v0)
  {
    JUMPOUT(0x1B2EA34CCLL);
  }

  JUMPOUT(0x1B2EA34C4);
}

void ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0BC70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__func<md::ARMeshRenderResources::ARMeshRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_2,std::allocator<md::ARMeshRenderResources::ARMeshRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_2>,ggl::ARMesh::ARMeshPipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A0BD48;
  a2[1] = v2;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::ARMesh::ARShadowPipelineSetup *,geo::allocator_adapter<ggl::ARMesh::ARShadowPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if ((*(result + 2) - *result) >> 6 <= 0x7CuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ARMesh::ARShadowPipelineSetup *>(v6, 1000);
    v8 = &v7[v5];
    v9 = v7 + 8000;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::ARMesh::ARShadowPipelineSetup *,geo::allocator_adapter<ggl::ARMesh::ARShadowPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

void sub_1B2EA3A2C(_Unwind_Exception *exception_object)
{
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    if (!v3)
    {
LABEL_3:
      if (!v2)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if (!v3)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  if (!v2)
  {
LABEL_4:
    if (!v1)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_9:
  std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  if (!v1)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

LABEL_5:
  std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  goto LABEL_6;
}

void sub_1B2EA3A90()
{
  if (!v0)
  {
    JUMPOUT(0x1B2EA3A48);
  }

  JUMPOUT(0x1B2EA3A40);
}

uint64_t std::__function::__func<md::ARMeshRenderResources::ARMeshRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_0,std::allocator<md::ARMeshRenderResources::ARMeshRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_0>,ggl::ARMesh::ARShadowPipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A0BC28;
  a2[1] = v2;
  return result;
}

void std::__shared_ptr_emplace<ggl::ARMesh::ARShadowPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0BBF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ARMesh::ARDepthMeshPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0BBB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ARMesh::ARMeshPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0BB80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void sub_1B2EA5E9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, std::__shared_weak_count *a37)
{
  ggl::BufferMemory::~BufferMemory(&a16);
  std::__shared_weak_count::__release_shared[abi:nn200100](v39);
  ggl::BufferMemory::~BufferMemory(&a22);
  if (a29)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a29);
  }

  ggl::BufferMemory::~BufferMemory(&a30);
  if (a37)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a37);
  }

  ggl::BufferMemory::~BufferMemory((v40 - 200));
  std::__shared_weak_count::__release_shared[abi:nn200100](v38);
  if (v37)
  {
    operator delete(v37);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void geo::_retain_ptr<ARCamera * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A4EB10;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<ARCamera * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A4EB10;

  return a1;
}

md::MDARCamera *md::MDARCamera::MDARCamera(md::MDARCamera *this, ARCamera *a2)
{
  v3 = a2;
  *this = &unk_1F2A4EB10;
  *(this + 1) = v3;
  return this;
}

long double md::MDARCamera::widestFieldOfView(md::MDARCamera *this, uint64_t a2)
{
  v4 = *(a2 + 8);
  md::LabelExternalPointFeature::incident(v4);
  [objc_claimAutoreleasedReturnValue() imageResolution];
  v6 = v5;
  v7 = *(a2 + 8);
  md::LabelExternalPointFeature::incident(v7);
  [objc_claimAutoreleasedReturnValue() imageResolution];

  v8 = *(a2 + 8);
  md::LabelExternalPointFeature::incident(v8);
  [objc_claimAutoreleasedReturnValue() intrinsics];
  v12 = v9;
  v10 = *(a2 + 8);
  md::LabelExternalPointFeature::incident(v10);
  [objc_claimAutoreleasedReturnValue() intrinsics];

  result = atan(fmax(v6, 0.0) / (v12 + v12)) * 114.591559;
  *this = result;
  return result;
}

void md::MDARCamera::roll(md::MDARCamera *this, void *a2)
{
  md::LabelExternalPointFeature::incident(a2);
  objc_claimAutoreleasedReturnValue();
  [a2 eulerAngles];
  *this = v3;
}

void md::MDARCamera::pitch(md::MDARCamera *this, void *a2)
{
  md::LabelExternalPointFeature::incident(a2);
  objc_claimAutoreleasedReturnValue();
  [a2 eulerAngles];
  *this = v3;
}

void md::MDARCamera::yaw(md::MDARCamera *this, void *a2)
{
  md::LabelExternalPointFeature::incident(a2);
  objc_claimAutoreleasedReturnValue();
  [a2 eulerAngles];
  *this = v3;
}

uint64_t md::StyleCrossFadeLabelPart::animate(md::StyleCrossFadeLabelPart *this, float a2)
{
  v2 = *(this + 158) + (a2 * 2.5);
  *(this + 158) = v2;
  if (v2 >= 1.0)
  {
    *(this + 158) = 1065353216;
    *(this + 638) = 0;
  }

  return (*(**(*(this + 72) + 8) + 624))();
}

void md::StyleCrossFadeLabelPart::~StyleCrossFadeLabelPart(md::StyleCrossFadeLabelPart *this)
{
  md::CompositeLabelPart::~CompositeLabelPart(this);
  v3 = mdm::zone_mallocator::instance(v2);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v3, this);
}

void md::Logic<md::ARAssetOcclusionMeshDataLogic,md::ARAssetOcclusionMeshDataContext,md::LogicDependencies<gdc::TypeList<md::LayerDataLogicContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)60>>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2, v3);
}

uint64_t md::ARAssetOcclusionMeshDataLogic::runBeforeLayout(uint64_t a1, md::LayoutContext *this, gdc::LayerDataManager ***a3, unsigned __int8 *a4)
{
  v106 = *MEMORY[0x1E69E9840];
  v88 = **a3;
  md::LayoutContext::frameState(this);
  v6 = *(v5 + 88);
  gdc::LayerDataCollector::clear(*(a1 + 128));
  v93 = 0u;
  v94 = 0u;
  v95 = 1065353216;
  v86 = a1;
  v7 = gdc::Registry::storage<SceneComponents::LayerDataInView<(md::MapDataType)60>>(*(a1 + 120));
  v8 = v7[7];
  v90 = v7[8];
  if (v8 != v90)
  {
    v9 = v7[10];
    do
    {
      v92 = v8;
      v10 = *v9;
      if (*v9 != v9 + 1)
      {
        do
        {
          v11 = v10[4];
          v12 = *(v11 + 728);
          v13 = *(v11 + 736);
          if (v12 != v13)
          {
            v14 = v12 + 16;
            do
            {
              v15 = (v14 - 16);
              if (!*(v14 - 8))
              {
                v15 = v14;
              }

              v16 = *v15;
              v96[0] = *v15;
              v17 = *(v14 + 8);
              if ((v17 & 2) != 0)
              {
                *buf = v96;
                std::__hash_table<std::__hash_value_type<unsigned long long,std::list<std::pair<unsigned long long,unsigned char>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::list<std::pair<unsigned long long,unsigned char>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::list<std::pair<unsigned long long,unsigned char>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::list<std::pair<unsigned long long,unsigned char>>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&v93, v16, buf);
                operator new();
              }

              v18 = std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::find<unsigned long long>(v93, *(&v93 + 1), v16);
              if ((v17 & 1) != 0 && !v18)
              {
                *buf = v96;
                std::__hash_table<std::__hash_value_type<unsigned long long,std::list<std::pair<unsigned long long,unsigned char>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::list<std::pair<unsigned long long,unsigned char>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::list<std::pair<unsigned long long,unsigned char>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::list<std::pair<unsigned long long,unsigned char>>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&v93, v16, buf);
                operator new();
              }

              v19 = v14 + 16;
              v14 += 32;
            }

            while (v19 != v13);
          }

          v20 = v10[1];
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
              v21 = v10[2];
              v43 = *v21 == v10;
              v10 = v21;
            }

            while (!v43);
          }

          v10 = v21;
        }

        while (v21 != v9 + 1);
      }

      v9 += 3;
      v8 = v92 + 8;
    }

    while (v92 + 8 != v90);
  }

  v22 = v94;
  for (i = v86; v22; v22 = *v22)
  {
    v24 = v22[2];
    v25 = *(v86 + 128);
    v98 = *(v22[4] + 16);
    v99 = 42;
    v100 = v24;
    gdc::GenericKey::GenericKey(v96, &v98, 3);
    gdc::LayerDataRequestKey::LayerDataRequestKey(buf, 0, 61, v96, -4);
    if (v96[0] != v97)
    {
      free(v96[0]);
    }

    gdc::LayerDataCollector::addDataKey(v25, buf);
    if (*&v103[2] != v105)
    {
      free(*&v103[2]);
    }

    v26 = v22[2];
    v27 = *(v86 + 128);
    v98 = *(v22[4] + 16);
    v99 = 28;
    v100 = v26;
    gdc::GenericKey::GenericKey(v96, &v98, 3);
    gdc::LayerDataRequestKey::LayerDataRequestKey(buf, 0, 61, v96, -1073741827);
    if (v96[0] != v97)
    {
      free(v96[0]);
    }

    gdc::LayerDataCollector::addDataKey(v27, buf);
    if (*&v103[2] != v105)
    {
      free(*&v103[2]);
    }
  }

  gdc::LayerDataManager::createDataRequests(v88, *(v86 + 128), (v6 * 1000.0));
  gdc::LayerDataManager::getData(v88, *(v86 + 128));
  v28 = gdc::LayerDataCollector::cDataHolders(*(*(v86 + 128) + 24), *(*(v86 + 128) + 32), 61);
  v30 = v29;
  v31 = *(a4 + 2);
  v32 = *(a4 + 6);
  v33 = a4 + 16;
  v34 = *(a4 + 1);
  *(a4 + 40) = v34;
  *(a4 + 4) = *(a4 + 1);
  *(a4 + 8) = v31;
  *(a4 + 3) = v32;
  if (*(&v34 + 1))
  {
    v35 = (v34 + 16);
  }

  else
  {
    v35 = a4 + 32;
  }

  *v35 = a4 + 40;
  if (v32)
  {
    v36 = (*v33 + 16);
  }

  else
  {
    v36 = a4 + 8;
  }

  *v36 = v33;
  std::__tree<std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>>>::destroy(*v33);
  v89 = (a4 + 8);
  *(a4 + 1) = v33;
  *(a4 + 3) = 0;
  v85 = a4 + 16;
  *v33 = 0;
  if (*(v86 + 160))
  {
    v37 = *(v86 + 152);
    if (v37)
    {
      do
      {
        v38 = *v37;
        operator delete(v37);
        v37 = v38;
      }

      while (v38);
    }

    *(v86 + 152) = 0;
    v39 = *(v86 + 144);
    if (v39)
    {
      for (j = 0; j != v39; ++j)
      {
        *(*(v86 + 136) + 8 * j) = 0;
      }
    }

    *(v86 + 160) = 0;
  }

  if (v28 == v30)
  {
    v91 = 0;
    goto LABEL_46;
  }

  v91 = 0;
  v49 = v28;
  do
  {
    v50 = *(v49 + 16);
    if (gdc::ResourceKey::getUInt64(v50, 1u) == 28)
    {
      goto LABEL_99;
    }

    UInt64 = gdc::ResourceKey::getUInt64(v50, 2u);
    v52 = gdc::ResourceKey::getUInt64(v50, 0);
    v53 = *(v49 + 128);
    v54 = *(v86 + 144);
    if (!*&v54)
    {
      goto LABEL_87;
    }

    v55 = vcnt_s8(v54);
    v55.i16[0] = vaddlv_u8(v55);
    if (v55.u32[0] > 1uLL)
    {
      v56 = UInt64;
      if (UInt64 >= *&v54)
      {
        v56 = UInt64 % *&v54;
      }
    }

    else
    {
      v56 = (*&v54 - 1) & UInt64;
    }

    v57 = *(*(v86 + 136) + 8 * v56);
    if (!v57 || (v58 = *v57) == 0)
    {
LABEL_87:
      operator new();
    }

    while (1)
    {
      v59 = v58[1];
      if (v59 == UInt64)
      {
        break;
      }

      if (v55.u32[0] > 1uLL)
      {
        if (v59 >= *&v54)
        {
          v59 %= *&v54;
        }
      }

      else
      {
        v59 &= *&v54 - 1;
      }

      if (v59 != v56)
      {
        goto LABEL_87;
      }

LABEL_86:
      v58 = *v58;
      if (!v58)
      {
        goto LABEL_87;
      }
    }

    if (v58[2] != UInt64)
    {
      goto LABEL_86;
    }

    v64 = *(v49 + 128);
    v58[3] = v52;
    *(v58 + 8) = v53;
    if (v64 == 1)
    {
      v91 = 1;
    }

    else if (v64 == 3)
    {
      v60 = *(v49 + 112);
      v61 = *(v49 + 120);
      if (v61)
      {
        atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v96[0] = *(v60 + 168);
      *buf = v96;
      v62 = std::__tree<std::__value_type<unsigned long long,std::shared_ptr<md::ARAssetOcclusionMeshData>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<md::ARAssetOcclusionMeshData>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<md::ARAssetOcclusionMeshData>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v89, v96[0], buf);
      if (v61)
      {
        atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v63 = v62[6];
      v62[5] = v60;
      v62[6] = v61;
      if (v63)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v63);
      }

      if (v61)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v61);
      }
    }

LABEL_99:
    v49 += 144;
  }

  while (v49 != v30);
  while (2)
  {
    v67 = *(v28 + 16);
    if (gdc::ResourceKey::getUInt64(v67, 1u) == 42)
    {
      goto LABEL_104;
    }

    v68 = gdc::ResourceKey::getUInt64(v67, 2u);
    v69 = v68;
    v70 = i[18];
    if (!*&v70)
    {
      goto LABEL_124;
    }

    v71 = vcnt_s8(v70);
    v71.i16[0] = vaddlv_u8(v71);
    if (v71.u32[0] > 1uLL)
    {
      v72 = v68;
      if (v68 >= *&v70)
      {
        v72 = v68 % *&v70;
      }
    }

    else
    {
      v72 = (*&v70 - 1) & v68;
    }

    v73 = *(*&i[17] + 8 * v72);
    if (!v73 || (v74 = *v73) == 0)
    {
LABEL_124:
      v76 = *(v28 + 128);
      switch(v76)
      {
        case 1:
          v91 = 1;
          break;
        case 2:
          if (GEOGetVectorKitARAssetOcclusionMeshDataLogicLog(void)::onceToken != -1)
          {
            dispatch_once(&GEOGetVectorKitARAssetOcclusionMeshDataLogicLog(void)::onceToken, &__block_literal_global_13653);
          }

          v83 = GEOGetVectorKitARAssetOcclusionMeshDataLogicLog(void)::log;
          if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
          {
            v84 = gdc::ResourceKey::getUInt64(*(v28 + 16), 0);
            *buf = 134218754;
            *&buf[4] = v84;
            v102 = 2080;
            *v103 = "false";
            *&v103[8] = 2080;
            v104 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/ARAssetOcclusionMeshDataLogic.mm";
            LOWORD(v105) = 1024;
            *(&v105 + 2) = 166;
            _os_log_impl(&dword_1B2754000, v83, OS_LOG_TYPE_ERROR, "Failed to resolve an occlusion mesh for asset:%llu: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x26u);
          }

          break;
        case 3:
          v77 = *(v28 + 112);
          v78 = *(v28 + 120);
          if (v78)
          {
            atomic_fetch_add_explicit(&v78->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v96[0] = *(v77 + 168);
          *buf = v96;
          v79 = std::__tree<std::__value_type<unsigned long long,std::shared_ptr<md::ARAssetOcclusionMeshData>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<md::ARAssetOcclusionMeshData>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<md::ARAssetOcclusionMeshData>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v89, v96[0], buf);
          if (v78)
          {
            atomic_fetch_add_explicit(&v78->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v80 = v79[6];
          v79[5] = v77;
          v79[6] = v78;
          if (v80)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v80);
          }

          v81 = std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::find<unsigned long long>(v93, *(&v93 + 1), v69);
          i = v86;
          if (v81)
          {
              ;
            }
          }

          if (v78)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v78);
          }

          break;
      }

      goto LABEL_104;
    }

    while (2)
    {
      v75 = v74[1];
      if (v75 != v68)
      {
        if (v71.u32[0] > 1uLL)
        {
          if (v75 >= *&v70)
          {
            v75 %= *&v70;
          }
        }

        else
        {
          v75 &= *&v70 - 1;
        }

        if (v75 != v72)
        {
          goto LABEL_124;
        }

        goto LABEL_121;
      }

      if (v74[2] != v68)
      {
LABEL_121:
        v74 = *v74;
        if (!v74)
        {
          goto LABEL_124;
        }

        continue;
      }

      break;
    }

    if (*(v74 + 8) == 2)
    {
      goto LABEL_124;
    }

LABEL_104:
    v28 += 144;
    if (v28 != v30)
    {
      continue;
    }

    break;
  }

LABEL_46:
  if (*(a4 + 3) == *(a4 + 6))
  {
    v41 = *v89;
    if (*v89 == v85)
    {
LABEL_68:
      v44 = 0;
    }

    else
    {
      v42 = *(a4 + 4);
      while (1)
      {
        v43 = v41[4] == v42[4] && v41[5] == v42[5];
        v44 = !v43;
        if (!v43)
        {
          break;
        }

        v45 = v41[1];
        v46 = v41;
        if (v45)
        {
          do
          {
            v41 = v45;
            v45 = *v45;
          }

          while (v45);
        }

        else
        {
          do
          {
            v41 = v46[2];
            v43 = *v41 == v46;
            v46 = v41;
          }

          while (!v43);
        }

        v47 = v42[1];
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
            v48 = v42[2];
            v43 = *v48 == v42;
            v42 = v48;
          }

          while (!v43);
        }

        v42 = v48;
        if (v41 == v85)
        {
          goto LABEL_68;
        }
      }
    }
  }

  else
  {
    v44 = 1;
  }

  a4[2] = v44;
  v65 = v91 & 1;
  a4[1] = *a4 != v65;
  *a4 = v65;
  return std::__hash_table<std::__hash_value_type<unsigned long long,std::list<std::pair<unsigned long long,unsigned char>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::list<std::pair<unsigned long long,unsigned char>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::list<std::pair<unsigned long long,unsigned char>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::list<std::pair<unsigned long long,unsigned char>>>>>::~__hash_table(&v93);
}

void sub_1B2EA70A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  std::__hash_table<std::__hash_value_type<unsigned long long,std::list<std::pair<unsigned long long,unsigned char>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::list<std::pair<unsigned long long,unsigned char>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::list<std::pair<unsigned long long,unsigned char>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::list<std::pair<unsigned long long,unsigned char>>>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t gdc::Registry::storage<SceneComponents::LayerDataInView<(md::MapDataType)60>>(uint64_t a1)
{
  v3 = 0x37A96293F55A3841;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x37A96293F55A3841uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,std::list<std::pair<unsigned long long,unsigned char>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::list<std::pair<unsigned long long,unsigned char>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::list<std::pair<unsigned long long,unsigned char>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::list<std::pair<unsigned long long,unsigned char>>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(float *a1, unint64_t a2, void **a3)
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

void sub_1B2EA76BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,std::list<std::pair<unsigned long long,unsigned char>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::list<std::pair<unsigned long long,unsigned char>>>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<unsigned long long,std::shared_ptr<md::ARAssetOcclusionMeshData>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<md::ARAssetOcclusionMeshData>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<md::ARAssetOcclusionMeshData>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(uint64_t **a1, unint64_t a2, uint64_t **a3)
{
  v3 = a1[1];
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
      v5 = v3[4];
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
      return v4;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,std::list<std::pair<unsigned long long,unsigned char>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::list<std::pair<unsigned long long,unsigned char>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::list<std::pair<unsigned long long,unsigned char>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::list<std::pair<unsigned long long,unsigned char>>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__list_imp<std::pair<unsigned long long,unsigned char>>::clear(v2 + 3);
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

void ___ZL47GEOGetVectorKitARAssetOcclusionMeshDataLogicLogv_block_invoke()
{
  v0 = os_log_create("com.apple.VectorKit", "ARAssetOcclusionMeshDataLogic");
  v1 = GEOGetVectorKitARAssetOcclusionMeshDataLogicLog(void)::log;
  GEOGetVectorKitARAssetOcclusionMeshDataLogicLog(void)::log = v0;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,std::list<std::pair<unsigned long long,unsigned char>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::list<std::pair<unsigned long long,unsigned char>>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__list_imp<std::pair<unsigned long long,unsigned char>>::clear(v2 + 3);
    }

    operator delete(v2);
  }

  return a1;
}

BOOL gdc::ComponentStorageWrapper<SceneComponents::LayerDataInView<(md::MapDataType)60>>::remove(void *a1, uint64_t a2)
{
  v12 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10] + 24 * ((v3 - a1[7]) >> 3);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = a1[11];
    if (v6 != v7 - 24)
    {
      std::__tree<gdc::LayerDataWithWorld>::__assign_multi<std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long>>(v6, *(v7 - 24), (v7 - 16));
      v7 = a1[11];
    }

    v8 = v7 - 24;
    std::__tree<gdc::LayerDataWithWorld>::destroy(*(v7 - 16));
    a1[11] = v8;
    v9 = a1[28];
    if (v9)
    {
      v10 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v9[6], v10, &v12, 1);
        v9 = *v9;
      }

      while (v9);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<SceneComponents::LayerDataInView<(md::MapDataType)60>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v3 = (a1 + 80);
  std::vector<SceneComponents::LayerDataInView<(md::MapDataType)60>>::__destroy_vector::operator()[abi:nn200100](&v3);
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

void std::vector<SceneComponents::LayerDataInView<(md::MapDataType)60>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v6 = v4 - 3;
        std::__tree<gdc::LayerDataWithWorld>::destroy(*(v4 - 2));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t gdc::ComponentStorageWrapper<SceneComponents::LayerDataInView<(md::MapDataType)60>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v4 = (a1 + 80);
  std::vector<SceneComponents::LayerDataInView<(md::MapDataType)60>>::__destroy_vector::operator()[abi:nn200100](&v4);
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

void md::Logic<md::ARAssetOcclusionMeshDataLogic,md::ARAssetOcclusionMeshDataContext,md::LogicDependencies<gdc::TypeList<md::LayerDataLogicContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)60>>>>::allocateContext(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 2) = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = a1 + 16;
  *(a1 + 48) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a1 + 40;
}

uint64_t md::Logic<md::ARAssetOcclusionMeshDataLogic,md::ARAssetOcclusionMeshDataContext,md::LogicDependencies<gdc::TypeList<md::LayerDataLogicContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)60>>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  if (*(a3 + 8) == 0x18CA739B45F5362ALL && (v4 = *(a3 + 32)) != 0)
  {
    v6 = result;
    v7 = *(a2 + 8);
    v8[0] = gdc::Context::context<md::LayerDataLogicContext>(v7);
    v8[1] = gdc::Context::context<md::CollectMapDataContext<(md::MapDataType)60>>(v7);
    return (*(*v6 + 160))(v6, a2, v8, v4);
  }

  else
  {
    a4[23] = 0;
    *a4 = 0;
  }

  return result;
}

void *gdc::Context::context<md::CollectMapDataContext<(md::MapDataType)60>>(void *a1)
{
  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0xF9EFCB105DF83E4uLL);
  if (result)
  {
    v2 = result[5];
    if (*(v2 + 8) == 0xF9EFCB105DF83E4)
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

uint64_t md::Logic<md::ARAssetOcclusionMeshDataLogic,md::ARAssetOcclusionMeshDataContext,md::LogicDependencies<gdc::TypeList<md::LayerDataLogicContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)60>>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x18CA739B45F5362ALL)
  {
    v9[8] = v3;
    v9[9] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v8 = *(a2 + 8);
      v9[0] = gdc::Context::context<md::LayerDataLogicContext>(v8);
      v9[1] = gdc::Context::context<md::CollectMapDataContext<(md::MapDataType)60>>(v8);
      return (*(*v7 + 152))(v7, a2, v9, v5);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARAssetOcclusionMeshDataLogic,md::ARAssetOcclusionMeshDataContext,md::LogicDependencies<gdc::TypeList<md::LayerDataLogicContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)60>>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x18CA739B45F5362ALL)
  {
    v9[8] = v3;
    v9[9] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v8 = *(a2 + 8);
      v9[0] = gdc::Context::context<md::LayerDataLogicContext>(v8);
      v9[1] = gdc::Context::context<md::CollectMapDataContext<(md::MapDataType)60>>(v8);
      return (*(*v7 + 144))(v7, a2, v9, v5);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARAssetOcclusionMeshDataLogic,md::ARAssetOcclusionMeshDataContext,md::LogicDependencies<gdc::TypeList<md::LayerDataLogicContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)60>>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x18CA739B45F5362ALL)
  {
    v9[8] = v3;
    v9[9] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v8 = *(a2 + 8);
      v9[0] = gdc::Context::context<md::LayerDataLogicContext>(v8);
      v9[1] = gdc::Context::context<md::CollectMapDataContext<(md::MapDataType)60>>(v8);
      return (*(*v7 + 136))(v7, a2, v9, v5);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARAssetOcclusionMeshDataLogic,md::ARAssetOcclusionMeshDataContext,md::LogicDependencies<gdc::TypeList<md::LayerDataLogicContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)60>>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x18CA739B45F5362ALL)
  {
    v9[8] = v3;
    v9[9] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v8 = *(a2 + 8);
      v9[0] = gdc::Context::context<md::LayerDataLogicContext>(v8);
      v9[1] = gdc::Context::context<md::CollectMapDataContext<(md::MapDataType)60>>(v8);
      return (*(*v7 + 128))(v7, a2, v9, v5);
    }
  }

  return result;
}

void sub_1B2EA8090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15)
{
  std::__tree<std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>>>::destroy(a15);
  std::__tree<std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>>>::destroy(a12);
  MEMORY[0x1B8C62190](v15, v16);
  _Unwind_Resume(a1);
}

uint64_t gdc::ObjectHolder<md::ARAssetOcclusionMeshDataContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::ARAssetOcclusionMeshDataContext>::~ManagedObjectHolder(void *a1)
{
  gdc::ManagedObjectHolder<md::ARAssetOcclusionMeshDataContext>::~ManagedObjectHolder(a1);

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::ARAssetOcclusionMeshDataContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A0C3F8;
  v2 = a1[4];
  if (v2)
  {
    std::__tree<std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>>>::destroy(*(v2 + 40));
    std::__tree<std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>>>::destroy(*(v2 + 16));
    MEMORY[0x1B8C62190](v2, 0x1020C400970237FLL);
  }

  return a1;
}

void md::ARAssetOcclusionMeshDataLogic::~ARAssetOcclusionMeshDataLogic(void ***this)
{
  md::ARAssetOcclusionMeshDataLogic::~ARAssetOcclusionMeshDataLogic(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A0C268;
  std::__hash_table<std::shared_ptr<md::ARAssetOcclusionMeshData>,std::hash<std::shared_ptr<md::ARAssetOcclusionMeshData>>,std::equal_to<std::shared_ptr<md::ARAssetOcclusionMeshData>>,std::allocator<std::shared_ptr<md::ARAssetOcclusionMeshData>>>::~__hash_table((this + 37));
  std::__hash_table<std::shared_ptr<md::ARAssetOcclusionMeshData>,std::hash<std::shared_ptr<md::ARAssetOcclusionMeshData>>,std::equal_to<std::shared_ptr<md::ARAssetOcclusionMeshData>>,std::allocator<std::shared_ptr<md::ARAssetOcclusionMeshData>>>::~__hash_table((this + 32));
  std::__hash_table<std::shared_ptr<md::ARAssetOcclusionMeshData>,std::hash<std::shared_ptr<md::ARAssetOcclusionMeshData>>,std::equal_to<std::shared_ptr<md::ARAssetOcclusionMeshData>>,std::allocator<std::shared_ptr<md::ARAssetOcclusionMeshData>>>::~__hash_table((this + 27));
  std::__hash_table<std::shared_ptr<md::ARAssetOcclusionMeshData>,std::hash<std::shared_ptr<md::ARAssetOcclusionMeshData>>,std::equal_to<std::shared_ptr<md::ARAssetOcclusionMeshData>>,std::allocator<std::shared_ptr<md::ARAssetOcclusionMeshData>>>::~__hash_table((this + 22));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((this + 17));
  std::unique_ptr<gdc::LayerDataCollector>::reset[abi:nn200100](this + 16, 0);
  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(this[13]);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(this[10]);
}

uint64_t std::__hash_table<std::shared_ptr<md::ARAssetOcclusionMeshData>,std::hash<std::shared_ptr<md::ARAssetOcclusionMeshData>>,std::equal_to<std::shared_ptr<md::ARAssetOcclusionMeshData>>,std::allocator<std::shared_ptr<md::ARAssetOcclusionMeshData>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

void ggl::TrafficGlow::BasePipelineState::~BasePipelineState(ggl::TrafficGlow::BasePipelineState *this)
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

void ggl::TrafficGlow::BasePipelineSetup::~BasePipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::PolygonOverlay::AntialiasPipelineSetup *>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolygonOverlay::AntialiasPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void ggl::ConstantDataTyped<ggl::PolygonOverlay::AntialiasConstants>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::PolygonOverlay::AntialiasConstants>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0C660;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::PolygonOverlay::Fill>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::PolygonOverlay::Fill>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0C530;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::PolygonOverlay::FillPipelineSetup *>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolygonOverlay::FillPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void std::__shared_ptr_emplace<ggl::PolygonOverlay::AntialiasPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0C4B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::PolygonOverlay::FillPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0C478;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t **ggl::FragmentedPool<ggl::PolygonOverlay::FillPipelineSetup>::pushAll(uint64_t **result)
{
  v1 = result;
  v2 = result[4];
  v3 = result[5];
  if (v2 != v3)
  {
    v4 = result[1];
    do
    {
      v5 = *v2;
      v6 = *(v1 + 2);
      if (v4 >= v6)
      {
        v7 = (v4 - *v1) >> 3;
        if ((v7 + 1) >> 61)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v8 = v6 - *v1;
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

        v19[4] = v1 + 24;
        if (v10)
        {
          v11 = ggl::zone_mallocator::instance(result);
          v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolygonOverlay::FillPipelineSetup *>(v11, v10);
        }

        else
        {
          v12 = 0;
        }

        v14 = &v12[8 * v10];
        v13 = &v12[8 * v7];
        *v13 = v5;
        v4 = (v13 + 8);
        v15 = *(v1 + 1) - *v1;
        v16 = &v13[-v15];
        memcpy(&v13[-v15], *v1, v15);
        v17 = *v1;
        *v1 = v16;
        *(v1 + 1) = v4;
        v18 = *(v1 + 2);
        *(v1 + 2) = v14;
        v19[2] = v17;
        v19[3] = v18;
        v19[0] = v17;
        v19[1] = v17;
        result = std::__split_buffer<ggl::PolygonOverlay::FillPipelineSetup *,geo::allocator_adapter<ggl::PolygonOverlay::FillPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
      }

      else
      {
        *v4++ = v5;
      }

      *(v1 + 1) = v4;
      ++v2;
    }

    while (v2 != v3);
    v2 = *(v1 + 4);
    v3 = *(v1 + 5);
  }

  if (v2 != v3)
  {
    *(v1 + 5) = v2;
  }

  return result;
}

void ggl::RouteLineAlphaReset::BasePipelineSetup::~BasePipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void md::InteractiveMapEngineCommandExecutor::schedule(void *a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a1 + 3;
  v4 = a1[3];
  std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<md::DisplayLinkFired,md::DestroyMapEngine,md::RenderScene,md::RenderSceneInContext>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:nn200100](v12, a2);
  v14 = a1[1];
  std::mutex::lock((v4 + 8));
  v5 = *v4;
  if ((*v4 & 1) == 0)
  {
    v6 = std::__hash_table<std::__hash_value_type<md::RunnableMapEngineCommand,std::__list_iterator<md::RunnableMapEngineCommand,void *>>,std::__unordered_map_hasher<md::RunnableMapEngineCommand,std::__hash_value_type<md::RunnableMapEngineCommand,std::__list_iterator<md::RunnableMapEngineCommand,void *>>,md::MapEngineCommandHash,md::MapEngineCommandEqual,true>,std::__unordered_map_equal<md::RunnableMapEngineCommand,std::__hash_value_type<md::RunnableMapEngineCommand,std::__list_iterator<md::RunnableMapEngineCommand,void *>>,md::MapEngineCommandEqual,md::MapEngineCommandHash,true>,std::allocator<std::__hash_value_type<md::RunnableMapEngineCommand,std::__list_iterator<md::RunnableMapEngineCommand,void *>>>>::find<md::RunnableMapEngineCommand>(v4 + 18, v13);
    if (v6)
    {
      v7 = v6[9];
      v9 = *v7;
      v8 = v7[1];
      *(v9 + 8) = v8;
      *v8 = v9;
      --*(v4 + 17);
      v10 = *(v7 + 14);
      if (v10 != -1)
      {
        (off_1F2A0C7F0[v10])(&v11, v7 + 2);
      }

      operator delete(v7);
    }

    operator new();
  }

  std::mutex::unlock((v4 + 8));
  if (v13 != -1)
  {
    (off_1F2A0C7F0[v13])(&v11, v12);
  }

  if ((v5 & 1) == 0)
  {
    md::InteractiveMapEngineCommandExecutor::nextCommand(a1[2], a1[1], v3, (a1 + 5));
  }
}