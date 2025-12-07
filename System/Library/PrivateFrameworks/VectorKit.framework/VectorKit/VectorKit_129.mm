uint64_t md::TransitLink::isSuperset(md::TransitLink *this, const md::TransitLink *a2, const md::TransitLink *a3)
{
  if (*(this + 14) - *(this + 13) < (a3 - a2))
  {
    return 0;
  }

  v5 = a2;
  if (a2 == a3)
  {
    return 1;
  }

  while (1)
  {
    result = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(this + 22, *(*(**v5 + 16) + 40));
    if (!result)
    {
      break;
    }

    v7 = *(result + 24);
    if (!v7 || *(v7 + 55) == 1)
    {
      return 0;
    }

    v5 = (v5 + 8);
    if (v5 == a3)
    {
      return 1;
    }
  }

  return result;
}

float md::TransitLink::populateEndPoints(uint64_t a1, int a2, uint64_t *a3)
{
  v3 = *(a1 + 20);
  if (v3)
  {
    v6 = v3 - 1;
    if (a2)
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }

    v15 = 0;
    v8 = geo::codec::transitLinkPoints(a1, v7, &v15);
    if (v15 >= 5)
    {
      v9 = 5;
    }

    else
    {
      v9 = v15;
    }

    if (a2)
    {
      std::vector<gm::Matrix<float,2,1>>::__assign_with_size[abi:nn200100]<gm::Matrix<float,2,1> const*,gm::Matrix<float,2,1> const*>(a3, v8, &v8[v9], v9);
    }

    else
    {
      std::vector<gm::Matrix<float,2,1>>::__assign_with_size[abi:nn200100]<gm::Matrix<float,2,1> const*,gm::Matrix<float,2,1> const*>(a3, &v8[v15 - v9], &v8[v15], (8 * v9) >> 3);
      v11 = *a3;
      v12 = a3[1];
      if (*a3 != v12)
      {
        for (i = (v12 - 8); v11 < i; v11 += 8)
        {
          result = *v11;
          v14 = *(v11 + 4);
          *v11 = *i;
          *(v11 + 4) = i[1];
          *i = result;
          i[1] = v14;
          i -= 2;
        }
      }
    }
  }

  return result;
}

uint64_t md::BuildingLayerDataSource::resourceKeyForType@<X0>(uint64_t a1@<X0>, char a2@<W1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
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

void md::BuildingLayerDataSource::createLayerData(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, _OWORD *a4@<X8>)
{
  v199 = *MEMORY[0x1E69E9840];
  gdc::Tiled::tileFromLayerDataKey(&v162, *(a2 + 16));
  gdc::LayerDataSource::getResourceFromMap<md::GEOVectorTileResource>(&v161, *(a1 + 592), *a3, a3[1]);
  memset(v160, 0, sizeof(v160));
  gdc::LayerDataSource::populateLoadMetadataListFromMap(*a3, a3[1], v160);
  atomic_load((a1 + 776));
  std::atomic_load[abi:nn200100]<md::RegistryManager>(&v159, (a1 + 760));
  v157 = 0uLL;
  v158 = 0;
  v152 = a1;
  if (*(a1 + 808) == 1)
  {
    std::string::basic_string[abi:nn200100]<0>(&v190, "btCHECKER");
    std::string::basic_string[abi:nn200100]<0>(&v191 + 1, "btHORIZPINSTRIPE");
    std::string::basic_string[abi:nn200100]<0>(&v192, "btVERTPINSTRIPE");
    v6 = *(&v157 + 1);
    v7 = (*(&v157 + 1) - v157) >> 4;
    if (v7 > 2)
    {
      if (*(&v157 + 1) - v157 != 48)
      {
        while (v6 != v157 + 48)
        {
          v11 = *(v6 - 8);
          if (v11)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v11);
          }

          v6 -= 16;
        }

        *(&v157 + 1) = v157 + 48;
      }
    }

    else
    {
      v8 = 3 - v7;
      if (3 - v7 > (v158 - *(&v157 + 1)) >> 4)
      {
        *(&src_24 + 1) = &v157;
        v9 = (v158 - v157) >> 3;
        if (v9 <= 3)
        {
          v9 = 3;
        }

        if ((v158 - v157) >= 0x7FFFFFFFFFFFFFF0)
        {
          v10 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<md::MuninRoadLabel>>>(v10);
      }

      bzero(*(&v157 + 1), 16 * v8);
      *(&v157 + 1) += 16 * v8;
    }

    LODWORD(dest.data) = 0;
    LODWORD(components[0]) = 0;
    LODWORD(__dst) = 1065353216;
    LODWORD(v177) = 0;
    LODWORD(__src[0]) = 0;
    std::allocate_shared[abi:nn200100]<ggl::SamplerState,std::allocator<ggl::SamplerState>,ggl::Wrap,ggl::Wrap,float,ggl::Filter,ggl::Filter,0>(src, &dest, components, &__dst, &v177, __src);
  }

  v155 = 0uLL;
  v156 = 0;
  ggl::CullingGridWithHeight::CullingGridWithHeight(&v190);
  v12 = v161;
  v13 = *(v161 + 144);
  v14 = geo::codec::VectorTile::polygonsCount(*(v13 + 96), *(v13 + 104));
  if (v14 + geo::codec::VectorTile::totalBuildingFootprintsCount(v13))
  {
    *&src[8] = 0;
    *src = &src[8];
    src_24 = xmmword_1B33B1630;
    v185 = 0;
    *&src[16] = 0;
    v181 = 0;
    v183 = 0;
    v182 = 0;
    v184 = 0;
    v186 = 4;
    v189 = 0;
    v187 = 0;
    v188 = 0;
    v148 = *(v152 + 792);
    [v148 gglDevice];
    v15 = geo::codec::VectorTile::totalBuildingFootprintsCount(*(v12 + 144));
    if (v15)
    {
      v16 = v15;
      v17 = *(&v155 + 1);
      v18 = *(&v155 + 1) - v155;
      v19 = 0xAAAAAAAAAAAAAAABLL * ((*(&v155 + 1) - v155) >> 3);
      if (v19 > 2)
      {
        if (v18 != 72)
        {
          while (v17 != (v155 + 72))
          {
            v17 -= 24;
            dest.data = v17;
            std::vector<geo::_retain_ptr<VKBuildingGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](&dest);
          }

          *(&v155 + 1) = v155 + 72;
        }
      }

      else
      {
        if (0xAAAAAAAAAAAAAAABLL * ((v156 - *(&v155 + 1)) >> 3) < 3 - v19)
        {
          v20 = 0x5555555555555556 * ((v156 - v155) >> 3);
          if (v20 <= 3)
          {
            v20 = 3;
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v156 - v155) >> 3) >= 0x555555555555555)
          {
            v21 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v21 = v20;
          }

          if (v21 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          goto LABEL_160;
        }

        bzero(*(&v155 + 1), 24 * ((48 - v18) / 0x18uLL) + 24);
        *(&v155 + 1) += 24 * ((48 - v18) / 0x18uLL) + 24;
      }

      v22 = 0;
      while (*(v155 + v22 + 16) != *(v155 + v22))
      {
        v22 += 24;
        if (v22 == 72)
        {
          __powidf2();
          dest.data = 0;
          dest.height = &dest;
          dest.width = 0x4812000000;
          dest.rowBytes = __Block_byref_object_copy__36137;
          v164 = __Block_byref_object_dispose__36138;
          v165 = "";
          v167 = 0;
          v168 = 0;
          __p = 0;
          if (!(v16 >> 60))
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<GeoCodecsBuildingFootprintFeature *,unsigned char>>>(v16);
          }

          std::__throw_bad_array_new_length[abi:nn200100]();
        }
      }

      v164 = (v155 + v22);
      operator new();
    }

    if (v187)
    {
      v188 = v187;
      operator delete(v187);
    }

    geo::Pool<geo::Triangulator<float,unsigned short>::Node>::~Pool(src);
  }

  v23 = +[VKPlatform sharedPlatform];
  v24 = [v23 supportsBuildingShadows];

  v25 = v161;
  v150 = v161;
  if (v24)
  {
    *src = xmmword_1B33B0720;
    v26 = *(v161 + 144);
    v27 = geo::codec::VectorTile::nonOverlappingBuildingFootprintsCount(*(v26 + 280), *(v26 + 288));
    if (v27)
    {
      v28 = v27;
      for (i = 0; i != v28; ++i)
      {
        v30 = geo::codec::buildingFootprintFeatureAtIndex(*(v25 + 144), i);
        if ((*(v30 + 128) & 1) == 0)
        {
          v31 = v30;
          if (*(v30 + 96))
          {
            v32 = 0;
            do
            {
              if (geo::codec::buildingFootprintExtrusionHeight(v31, v32) != 0.0)
              {
                dest.data = 0;
                v33 = geo::codec::multiSectionFeaturePoints(v31, v32, &dest);
                data = dest.data;
                if (dest.data)
                {
                  v35 = 0;
                  do
                  {
                    v36 = 0;
                    v37 = src;
                    v38 = 1;
                    do
                    {
                      v39 = *(&v33->__vftable + 2 * v35 + v36);
                      v40 = v38;
                      *v37 = fminf(v39, *v37);
                      *&src[4 * v36 + 8] = fmaxf(*&src[4 * v36 + 8], v39);
                      v37 = &src[4];
                      v36 = 1;
                      v38 = 0;
                    }

                    while ((v40 & 1) != 0);
                    v35 = v35 + 1;
                  }

                  while (v35 != data);
                }
              }

              ++v32;
            }

            while (v32 < *(v31 + 96));
          }
        }
      }

      v41 = *src;
      v26 = *(v25 + 144);
    }

    else
    {
      v41 = xmmword_1B33B0720;
    }

    v154 = v41;
    v42 = geo::codec::VectorTile::nonOverlappingThreeDBuildingsCount(*(v26 + 440), *(v26 + 448));
    if (v42)
    {
      v43 = v42;
      v44 = 0;
      __asm { FMOV            V9.2S, #1.0 }

      do
      {
        v50 = geo::codec::threeDBuildingFeatureAtIndex(*(v25 + 144), v44);
        v51 = *(v50 + 80);
        v52 = (*(v50 + 88) - v51);
        *src = 0;
        v53 = geo::A3DFileCreate(v51, v52);
        v55 = v53;
        if (v53)
        {
          if (VKA3DGetShadowCount(v53, src, v54))
          {
            operator new[]();
          }

          geo::A3DFileDelete(v55, v56);
        }

        ++v44;
      }

      while (v44 != v43);
    }

    else
    {
      __asm { FMOV            V9.2S, #1.0 }
    }

    v57 = 0;
    v58 = src;
    *src = 0;
    *&src[8] = _D9;
    v59 = &v154;
    v60 = 1;
    do
    {
      v61 = v60;
      v62 = *v58;
      v63 = v59->f32[0];
      *(&v154 + v57 + 2) = fmaxf(*(&v154 + v57 + 2), *&src[4 * v57 + 8]);
      v59->f32[0] = fminf(v62, v63);
      v58 = &src[4];
      v59 = (&v154 + 4);
      v57 = 1;
      v60 = 0;
    }

    while ((v61 & 1) != 0);
    v154 = vaddq_f32(v154, xmmword_1B33B2190);
    operator new();
  }

  v144 = *(v152 + 792);
  v176 = 0;
  *__src = 0u;
  v64 = geo::codec::VectorTile::totalThreeDBuildingsCount(*(v25 + 144));
  v174 = 0;
  v173 = 0u;
  v172 = 0;
  v171 = 0u;
  v149 = v64;
  if (!v64)
  {
    *color = 0uLL;
    goto LABEL_159;
  }

  v65 = 0;
  *color = 0uLL;
  while (1)
  {
    v66 = geo::codec::threeDBuildingFeatureAtIndex(*(v25 + 144), v65);
    v67 = *(v66 + 40);
    v68 = geo::A3DFileCreate(*(v66 + 80), (*(v66 + 88) - *(v66 + 80)));
    if (v68)
    {
      break;
    }

    v25 = v150;
LABEL_134:
    if (++v65 == v149)
    {
      v143 = *(&v173 + 1);
      v113 = v173;
      if (v173 != *(&v173 + 1))
      {
        do
        {
          v114 = *v113;
          v115 = *(v113 + 8);
          v145 = v113;
          v169 = *(v115 + 92);
          v170 = *(v115 + 108);
          v117 = v144;
          v146 = v114;
          if (v114 && (*(v114 + 3) || (geo::prepareAlignedVertices(v114, v116) & 1) != 0))
          {
            v118 = *(*(v115 + 8) - 8);
            v119 = **(v118 + 64);
            v120 = (*(v119 + 6) - *(v119 + 5)) / *(v119 + 1);
            v121 = v120 + *(v114 + 2);
            if (v121 >= 0x10000)
            {
              ggl::MeshVendor<ggl::Landmark::LandmarkMesh>::_allocateNewMesh(v115);
            }

            ggl::BufferData::resize(v119, v121);
            v122 = **(v118 + 64);
            v123 = *(v146 + 2);
            ggl::BufferMemory::BufferMemory(&dest);
            ggl::ResourceAccessor::accessIndexData(src, 0, v122, v120, v123 + v120, 1, 0);
            ggl::BufferMemory::operator=(&dest, src);
            ggl::BufferMemory::~BufferMemory(src);
            for (j = 0; j != 12; j += 4)
            {
              *&src[j] = *(&v169 + j + 12) - *(&v169 + j);
            }

            v125 = 0;
            __dst = *src;
            LODWORD(__dst_8) = *&src[8];
            do
            {
              *&src[v125] = 65535.0 / *(&__dst + v125);
              v125 += 4;
            }

            while (v125 != 12);
            if (*(v146 + 2))
            {
              v126 = 0;
              v127 = *src;
              v128 = *&src[8];
              v129 = v169;
              v130 = 1;
              v131 = *(&v169 + 2);
              do
              {
                v132 = (*(v146 + 3) + 32 * v126);
                v133 = ((v132[1] - *(&v129 + 1)) * *(&v127 + 1));
                v134 = ((v132[2] - v131) * v128);
                v135 = (v132[6] * 65535.0);
                v136 = (v132[7] * 65535.0);
                v137 = (v132[3] * 127.0);
                v138 = v132[4] * 127.0;
                v139 = v132[5] * 127.0;
                v140 = &v165[16 * v126];
                *v140 = ((*v132 - *&v129) * *&v127);
                *(v140 + 1) = v133;
                *(v140 + 2) = v134;
                *(v140 + 3) = -1;
                *(v140 + 4) = v135;
                *(v140 + 5) = v136;
                v140[12] = v137;
                v140[13] = v138;
                *(v140 + 7) = v139;
                v126 = v130;
              }

              while (*(v146 + 2) > v130++);
            }

            if (v144)
            {
              objc_msgSend_textureManager(v117, 1123942400, 0xFFFFLL);
            }

            else
            {
              v178[3] = 0;
              v178[2] = 0;
            }

            *src = 1;
            LODWORD(__dst) = 1;
            std::allocate_shared[abi:nn200100]<ggl::SamplerState,std::allocator<ggl::SamplerState>,ggl::Filter,ggl::Filter,0>(v178, src, &__dst);
          }

          geo::A3DFileDelete(v114, v142);
          v113 = v145 + 32;
        }

        while (v145 + 32 != v143);
      }

LABEL_159:
      *components = *__src;
      v194 = v176;
      v176 = 0;
      __src[1] = 0;
      __src[0] = 0;
      v195 = *color;
      v196 = 0;
      *src = &v171;
      std::vector<md::components::BoundingVolume>::__destroy_vector::operator()[abi:nn200100](src);
      *src = &v173;
      std::vector<std::pair<void *,std::pair<std::shared_ptr<md::ObjectGroup>,unsigned long long>>>::__destroy_vector::operator()[abi:nn200100](src);
      *src = __src;
      std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](src);

      operator new();
    }
  }

  v151 = v67;
  v69 = v159;
  md::createFeatureAttributeSet(src, (v66 + 24));
  gss::StylesheetManager<gss::PropertyID>::styleQueryForFeatureAttributes(&__dst, v69, src);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](src);
  v71 = v171;
  if (v171 == *(&v171 + 1))
  {
    goto LABEL_83;
  }

  while (__dst != *v71)
  {
    v71 += 32;
    if (v71 == *(&v171 + 1))
    {
      goto LABEL_83;
    }
  }

  if (v71 == *(&v171 + 1))
  {
LABEL_83:
    dest.data = 0;
    dest.height = 0;
    LOWORD(dest.width) = 256;
    *geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](&dest, 0x10002u) = 1;
    md::createFeatureAttributeSet(src, (v66 + 24));
    gss::StylesheetManager<gss::PropertyID>::styleQueryForFeatureAttributes(&v177, v69, src, &dest);
    std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](src);
    operator new();
  }

  v72 = *(v71 + 16);
  v73 = *(v71 + 24);
  if (v73)
  {
    v153 = v72;
    atomic_fetch_add_explicit((v73 + 8), 1uLL, memory_order_relaxed);
  }

  else
  {
    v153 = v72;
  }

  v74 = *(v68 + 3);
  if (!v74)
  {
    if (!geo::prepareAlignedVertices(v68, v70))
    {
      goto LABEL_92;
    }

    v74 = *(v68 + 3);
  }

  *src = *v74;
  *&src[8] = *(v74 + 8);
  *&src[12] = *src;
  *&src[20] = *&src[8];
  v75 = *(v68 + 2);
  if (v75 >= 2)
  {
    LODWORD(v76) = 1;
    do
    {
      v77 = (v74 + 32 * v76);
      v78 = src;
      v79 = 3;
      do
      {
        v80 = *v77++;
        *v78 = fminf(v80, *v78);
        v78[3] = fmaxf(v78[3], v80);
        ++v78;
        --v79;
      }

      while (v79);
      v76 = (v76 + 1);
    }

    while (v75 > v76);
  }

LABEL_92:
  if (*(v153 + 88) == 1)
  {
    v81 = (v153 + 104);
    v82 = src;
    v83 = 3;
    do
    {
      *(v81 - 3) = fminf(*v82, *(v81 - 3));
      *v81 = fmaxf(*v81, v82[3]);
      ++v81;
      ++v82;
      --v83;
    }

    while (v83);
  }

  else
  {
    v84 = 0;
    *(v153 + 88) = 1;
    do
    {
      *(v153 + 92 + v84) = *&src[v84];
      v84 += 4;
    }

    while (v84 != 12);
    for (k = 0; k != 12; k += 4)
    {
      *(v153 + 104 + k) = *&src[k + 12];
    }
  }

  if (*(&v153 + 1))
  {
    atomic_fetch_add_explicit((*(&v153 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v86 = *(&v173 + 1);
  if (*(&v173 + 1) >= v174)
  {
    v88 = v173;
    v89 = *(&v173 + 1) - v173;
    v90 = (*(&v173 + 1) - v173) >> 5;
    v91 = v90 + 1;
    if ((v90 + 1) >> 59)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v92 = v174 - v173;
    if ((v174 - v173) >> 4 > v91)
    {
      v91 = v92 >> 4;
    }

    if (v92 >= 0x7FFFFFFFFFFFFFE0)
    {
      v93 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v93 = v91;
    }

    if (v93)
    {
      if (!(v93 >> 59))
      {
        operator new();
      }

LABEL_160:
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v94 = (*(&v173 + 1) - v173) >> 5;
    v95 = 32 * v90;
    *v95 = v68;
    *(v95 + 8) = v153;
    *(v95 + 24) = v151;
    v87 = 32 * v90 + 32;
    v96 = 32 * v90 - 32 * v94;
    memcpy((v95 - 32 * v94), v88, v89);
    *&v173 = v96;
    *(&v173 + 1) = v87;
    v174 = 0;
    if (v88)
    {
      operator delete(v88);
    }
  }

  else
  {
    **(&v173 + 1) = v68;
    *(v86 + 8) = v153;
    v87 = v86 + 32;
    *(v86 + 24) = v151;
  }

  *(&v173 + 1) = v87;
  v97 = color[1] - color[0];
  v98 = 0x84BDA12F684BDA13 * ((color[1] - color[0]) >> 4) + 1;
  if (v98 > 0x97B425ED097B42)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (0x97B425ED097B426 * (-color[0] >> 4) > v98)
  {
    v98 = 0x97B425ED097B426 * (-color[0] >> 4);
  }

  if (0x84BDA12F684BDA13 * (-color[0] >> 4) >= 0x4BDA12F684BDA1)
  {
    v99 = 0x97B425ED097B42;
  }

  else
  {
    v99 = v98;
  }

  if (v99)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<VKBuildingHeightMap,unsigned long long>>>(v99);
  }

  v100 = 16 * ((color[1] - color[0]) >> 4);
  *(v100 + 416) = 0;
  *(v100 + 384) = 0u;
  *(v100 + 400) = 0u;
  *(v100 + 352) = 0u;
  *(v100 + 368) = 0u;
  *(v100 + 320) = 0u;
  *(v100 + 336) = 0u;
  *(v100 + 288) = 0u;
  *(v100 + 304) = 0u;
  *(v100 + 256) = 0u;
  *(v100 + 272) = 0u;
  *(v100 + 224) = 0u;
  *(v100 + 240) = 0u;
  *(v100 + 192) = 0u;
  *(v100 + 208) = 0u;
  *(v100 + 160) = 0u;
  *(v100 + 176) = 0u;
  *(v100 + 128) = 0u;
  *(v100 + 144) = 0u;
  *(v100 + 96) = 0u;
  *(v100 + 112) = 0u;
  *(v100 + 64) = 0u;
  *(v100 + 80) = 0u;
  *(v100 + 32) = 0u;
  *(v100 + 48) = 0u;
  v101 = v100 + 432;
  *v100 = 0u;
  *(v100 + 16) = 0u;
  v102 = *(v66 + 40);
  v103 = (v100 + 432 * (v97 / -432));
  *(v100 + 424) = v102;
  memcpy(v103, color[0], v97);
  if (color[0])
  {
    operator delete(color[0]);
  }

  *&v104 = v103;
  *(&v104 + 1) = 16 * ((color[1] - color[0]) >> 4) + 432;
  *color = v104;
  v105 = (v101 - 432);
  v106 = *v68;
  v107 = *(v68 + 1);
  v108 = geo::A3DGetMetadataHeaderCount(*v68, v107);
  v25 = v150;
  if (v108 && (v109 = v108, (v110 = geo::A3DGetMetadataHeaders(v106, v107)) != 0))
  {
    v111 = v109;
    while (*v110 != 1)
    {
      v110 += 17;
      if (!--v111)
      {
        goto LABEL_130;
      }
    }

    memcpy(v105, v106 + *(v110 + 1), 0x1A8uLL);
    if (!*(&v153 + 1))
    {
      goto LABEL_132;
    }
  }

  else
  {
LABEL_130:
    *&v112 = color[0];
    *(&v112 + 1) = v105;
    *color = v112;
    if (!*(&v153 + 1))
    {
      goto LABEL_132;
    }
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](*(&v153 + 1));
LABEL_132:
  if (__dst_8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](__dst_8);
  }

  goto LABEL_134;
}

void std::vector<std::vector<geo::_retain_ptr<VKBuildingGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>::__destroy_vector::operator()[abi:nn200100](void ****a1)
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
        v4 -= 3;
        v6 = v4;
        std::vector<geo::_retain_ptr<VKBuildingGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<geo::_retain_ptr<VKBuildingGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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

void std::__shared_ptr_emplace<md::BuildingTileData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A38860;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<VKBuildingHeightMap,unsigned long long>>>(unint64_t a1)
{
  if (a1 < 0x97B425ED097B43)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::vector<std::pair<void *,std::pair<std::shared_ptr<md::ObjectGroup>,unsigned long long>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v6 = *(v4 - 2);
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v6);
        }

        v4 -= 32;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::unique_ptr<ggl::Landmark::LandmarkMesh>,geo::allocator_adapter<std::unique_ptr<ggl::Landmark::LandmarkMesh>,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](void ***result)
{
  v1 = *result;
  v2 = **result;
  if (v2)
  {
    v3 = v1[1];
    v4 = **result;
    if (v3 != v2)
    {
      v5 = result;
      do
      {
        v6 = *--v3;
        result = v6;
        *v3 = 0;
        if (v6)
        {
          result = ((*result)[1])(result);
        }
      }

      while (v3 != v2);
      v4 = **v5;
    }

    v1[1] = v2;
    v7 = ggl::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<ggl::Landmark::LandmarkMesh>>(v7, v4);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<ggl::Landmark::LandmarkMesh>>(uint64_t a1, void *a2)
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

void std::__shared_ptr_emplace<md::ObjectGroup>::__on_zero_shared(void *a1)
{
  v2 = a1[13];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[11];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = a1[7];
  if (v4)
  {
    v5 = a1[8];
    v6 = a1[7];
    if (v5 != v4)
    {
      do
      {
        v5 -= 40;
        std::__destroy_at[abi:nn200100]<std::pair<std::shared_ptr<ggl::Texture2D>,geo::linear_map<ggl::Landmark::LandmarkMesh *,std::vector<md::ObjectGroupFeatureRange>,std::equal_to<ggl::Landmark::LandmarkMesh *>,std::allocator<std::pair<ggl::Landmark::LandmarkMesh *,std::vector<md::ObjectGroupFeatureRange>>>,std::vector<std::pair<ggl::Landmark::LandmarkMesh *,std::vector<md::ObjectGroupFeatureRange>>>>>,0>(v5);
      }

      while (v5 != v4);
      v6 = a1[7];
    }

    a1[8] = v4;
    operator delete(v6);
  }

  v7 = (a1 + 3);
  std::vector<std::unique_ptr<ggl::Landmark::LandmarkMesh>,geo::allocator_adapter<std::unique_ptr<ggl::Landmark::LandmarkMesh>,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v7);
}

void std::__destroy_at[abi:nn200100]<std::pair<std::shared_ptr<ggl::Texture2D>,geo::linear_map<ggl::Landmark::LandmarkMesh *,std::vector<md::ObjectGroupFeatureRange>,std::equal_to<ggl::Landmark::LandmarkMesh *>,std::allocator<std::pair<ggl::Landmark::LandmarkMesh *,std::vector<md::ObjectGroupFeatureRange>>>,std::vector<std::pair<ggl::Landmark::LandmarkMesh *,std::vector<md::ObjectGroupFeatureRange>>>>>,0>(uint64_t a1)
{
  v3 = (a1 + 16);
  std::vector<geo::c3mm::C3mmEntrySection<unsigned char>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(a1 + 8);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }
}

void std::__shared_ptr_emplace<md::ObjectGroup>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A38898;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

CGColorSpaceRef ___ZL20_grayscaleColorSpacev_block_invoke()
{
  result = CGColorSpaceCreateDeviceGray();
  _grayscaleColorSpace(void)::colorspace = result;
  return result;
}

__n128 __Block_byref_object_copy__36137(__n128 *a1, __n128 *a2)
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

void __Block_byref_object_dispose__36138(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,_buildMeshes(std::vector<std::vector<geo::_retain_ptr<VKBuildingGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>> &,ggl::CullingGridWithHeight &,md::Triangulator<float> &,ggl::Device *,BOOL,std::shared_ptr<md::GEOVectorTileResource> const&,std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&,float,geo::QuadTile const&)::$_0 &,std::pair<GeoCodecsBuildingFootprintFeature *,unsigned char> *,false>(uint64_t result, void *a2, uint64_t a3, char a4)
{
  v7 = result;
  while (2)
  {
    v8 = a2 - 2;
    v9 = a2 - 1;
    v149 = (a2 - 3);
    v10 = (a2 - 5);
    v11 = v7;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v7 = v11;
          v12 = (a2 - v11) >> 4;
          if (v12 > 2)
          {
            switch(v12)
            {
              case 3:
                v92 = (v11 + 24);
                v93 = *(v11 + 24);
                v94 = (v11 + 8);
                v95 = *(v11 + 8);
                v96 = *v9;
                if (v93 >= v95)
                {
                  if (v96 >= v93)
                  {
                    return result;
                  }

                  v140 = *(v11 + 16);
                  *(v11 + 16) = *v8;
                  *v8 = v140;
                  LOBYTE(v140) = *(v11 + 24);
                  *(v11 + 24) = *v9;
                  *v9 = v140;
                  if (*(v11 + 24) >= *(v11 + 8))
                  {
                    return result;
                  }

                  v141 = *v11;
                  *v11 = *(v11 + 16);
                  *(v11 + 16) = v141;
                }

                else
                {
                  v97 = *v11;
                  if (v96 >= v93)
                  {
                    *v11 = *(v11 + 16);
                    *(v11 + 16) = v97;
                    *(v11 + 8) = v93;
                    *(v11 + 24) = v95;
                    if (*v9 >= v95)
                    {
                      return result;
                    }

                    *(v11 + 16) = *v8;
                    *v8 = v97;
                    v94 = (v11 + 24);
                  }

                  else
                  {
                    *v11 = *v8;
                    *v8 = v97;
                  }

                  v92 = (a2 - 1);
                }

                v148 = *v94;
                *v94 = *v92;
                *v92 = v148;
                return result;
              case 4:

                return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,_buildMeshes(std::vector<std::vector<geo::_retain_ptr<VKBuildingGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>> &,ggl::CullingGridWithHeight &,md::Triangulator<float> &,ggl::Device *,BOOL,std::shared_ptr<md::GEOVectorTileResource> const&,std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&,float,geo::QuadTile const&)::$_0 &,std::pair<GeoCodecsBuildingFootprintFeature *,unsigned char> *,0>(v11, (v11 + 16), (v11 + 32), a2 - 2);
              case 5:
                result = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,_buildMeshes(std::vector<std::vector<geo::_retain_ptr<VKBuildingGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>> &,ggl::CullingGridWithHeight &,md::Triangulator<float> &,ggl::Device *,BOOL,std::shared_ptr<md::GEOVectorTileResource> const&,std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&,float,geo::QuadTile const&)::$_0 &,std::pair<GeoCodecsBuildingFootprintFeature *,unsigned char> *,0>(v11, (v11 + 16), (v11 + 32), (v11 + 48));
                if (*v9 < *(v11 + 56))
                {
                  v82 = *(v11 + 48);
                  *(v11 + 48) = *v8;
                  *v8 = v82;
                  LOBYTE(v82) = *(v11 + 56);
                  *(v11 + 56) = *v9;
                  *v9 = v82;
                  v83 = *(v11 + 56);
                  v84 = *(v11 + 40);
                  if (v83 < v84)
                  {
                    v85 = *(v11 + 32);
                    v86 = *(v11 + 48);
                    *(v11 + 32) = v86;
                    *(v11 + 48) = v85;
                    *(v11 + 40) = v83;
                    *(v11 + 56) = v84;
                    v87 = *(v11 + 24);
                    if (v83 < v87)
                    {
                      v88 = *(v11 + 16);
                      *(v11 + 16) = v86;
                      *(v11 + 32) = v88;
                      *(v11 + 24) = v83;
                      *(v11 + 40) = v87;
                      v89 = *(v11 + 8);
                      if (v83 < v89)
                      {
                        v90 = *v11;
                        *v11 = v86;
                        *(v11 + 16) = v90;
                        *(v11 + 8) = v83;
                        *(v11 + 24) = v89;
                      }
                    }
                  }
                }

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
              if (*v9 < *(v11 + 8))
              {
                v91 = *v11;
                *v11 = *v8;
                *v8 = v91;
                LOBYTE(v91) = *(v11 + 8);
                *(v11 + 8) = *v9;
                *v9 = v91;
              }

              return result;
            }
          }

          if (v12 <= 23)
          {
            v98 = (v11 + 16);
            v100 = v11 == a2 || v98 == a2;
            if (a4)
            {
              if (!v100)
              {
                v101 = 0;
                v102 = v11;
                do
                {
                  v103 = *(v102 + 24);
                  v104 = *(v102 + 8);
                  v102 = v98;
                  if (v103 < v104)
                  {
                    v105 = *v98;
                    v106 = v101;
                    while (1)
                    {
                      v107 = v11 + v106;
                      *(v107 + 16) = *(v11 + v106);
                      *(v107 + 24) = *(v11 + v106 + 8);
                      if (!v106)
                      {
                        break;
                      }

                      v106 -= 16;
                      if (v103 >= *(v107 - 8))
                      {
                        v108 = v11 + v106 + 16;
                        goto LABEL_139;
                      }
                    }

                    v108 = v11;
LABEL_139:
                    *v108 = v105;
                    *(v108 + 8) = v103;
                  }

                  v98 = v102 + 2;
                  v101 += 16;
                }

                while (v102 + 2 != a2);
              }
            }

            else if (!v100)
            {
              v142 = v11 + 8;
              do
              {
                v143 = *(v7 + 24);
                v144 = *(v7 + 8);
                v7 = v98;
                if (v143 < v144)
                {
                  v145 = *v98;
                  v146 = v142;
                  do
                  {
                    *(v146 + 8) = *(v146 - 8);
                    *(v146 + 16) = *v146;
                    v147 = *(v146 - 16);
                    v146 -= 16;
                  }

                  while (v143 < v147);
                  *(v146 + 8) = v145;
                  *(v146 + 16) = v143;
                }

                v98 = (v7 + 16);
                v142 += 16;
              }

              while ((v7 + 16) != a2);
            }

            return result;
          }

          if (!a3)
          {
            if (v11 != a2)
            {
              v109 = (v12 - 2) >> 1;
              v110 = v109;
              do
              {
                v111 = v110;
                if (v109 >= v110)
                {
                  v112 = (2 * v110) | 1;
                  v113 = v11 + 16 * v112;
                  if (2 * v111 + 2 < v12)
                  {
                    v114 = *(v113 + 8);
                    v115 = *(v113 + 24);
                    v113 += 16 * (v114 < v115);
                    if (v114 < v115)
                    {
                      v112 = 2 * v111 + 2;
                    }
                  }

                  v116 = v11 + 16 * v111;
                  v117 = *(v116 + 8);
                  if (*(v113 + 8) >= v117)
                  {
                    v118 = *v116;
                    do
                    {
                      v119 = v116;
                      v116 = v113;
                      *v119 = *v113;
                      *(v119 + 8) = *(v113 + 8);
                      if (v109 < v112)
                      {
                        break;
                      }

                      v120 = (2 * v112) | 1;
                      v113 = v11 + 16 * v120;
                      v121 = 2 * v112 + 2;
                      if (v121 < v12)
                      {
                        v122 = *(v113 + 8);
                        result = *(v113 + 24);
                        v113 += 16 * (v122 < result);
                        if (v122 < result)
                        {
                          v120 = v121;
                        }
                      }

                      v112 = v120;
                    }

                    while (*(v113 + 8) >= v117);
                    *v116 = v118;
                    *(v116 + 8) = v117;
                  }
                }

                v110 = v111 - 1;
              }

              while (v111);
              do
              {
                v123 = 0;
                v124 = *v11;
                v125 = *(v11 + 8);
                v126 = v11;
                do
                {
                  v127 = v126 + 16 * v123;
                  v128 = v127 + 16;
                  v129 = (2 * v123) | 1;
                  v123 = 2 * v123 + 2;
                  if (v123 >= v12)
                  {
                    v123 = v129;
                  }

                  else
                  {
                    v130 = *(v127 + 24);
                    result = *(v127 + 40);
                    v131 = v127 + 32;
                    if (v130 >= result)
                    {
                      v123 = v129;
                    }

                    else
                    {
                      v128 = v131;
                    }
                  }

                  *v126 = *v128;
                  *(v126 + 8) = *(v128 + 8);
                  v126 = v128;
                }

                while (v123 <= ((v12 - 2) >> 1));
                if (v128 == a2 - 2)
                {
                  *v128 = v124;
                  *(v128 + 8) = v125;
                }

                else
                {
                  *v128 = *(a2 - 2);
                  *(v128 + 8) = *(a2 - 8);
                  *(a2 - 2) = v124;
                  *(a2 - 8) = v125;
                  v132 = (v128 - v11 + 16) >> 4;
                  v133 = v132 < 2;
                  v134 = v132 - 2;
                  if (!v133)
                  {
                    v135 = v134 >> 1;
                    v136 = v11 + 16 * (v134 >> 1);
                    v137 = *(v128 + 8);
                    if (*(v136 + 8) < v137)
                    {
                      v138 = *v128;
                      do
                      {
                        v139 = v128;
                        v128 = v136;
                        *v139 = *v136;
                        *(v139 + 8) = *(v136 + 8);
                        if (!v135)
                        {
                          break;
                        }

                        v135 = (v135 - 1) >> 1;
                        v136 = v11 + 16 * v135;
                      }

                      while (*(v136 + 8) < v137);
                      *v128 = v138;
                      *(v128 + 8) = v137;
                    }
                  }
                }

                a2 -= 2;
                v133 = v12-- <= 2;
              }

              while (!v133);
            }

            return result;
          }

          v13 = v11 + 16 * (v12 >> 1);
          v14 = *v9;
          if (v12 >= 0x81)
          {
            v15 = (v13 + 8);
            v16 = *(v13 + 8);
            v17 = (v11 + 8);
            v18 = *(v11 + 8);
            if (v16 >= v18)
            {
              if (v14 >= v16 || (v25 = *v13, *v13 = *v8, *v8 = v25, LOBYTE(v25) = *(v13 + 8), *(v13 + 8) = *v9, *v9 = v25, *(v13 + 8) >= *v17))
              {
LABEL_29:
                v31 = (v13 - 8);
                v32 = *(v13 - 8);
                v33 = (v13 - 16);
                v34 = (v11 + 24);
                v35 = *(v11 + 24);
                v36 = *v149;
                if (v32 >= v35)
                {
                  if (v36 >= v32 || (v38 = *v33, *v33 = *(a2 - 4), *(a2 - 4) = v38, LOBYTE(v38) = *(v13 - 8), *(v13 - 8) = *(a2 - 24), *(a2 - 24) = v38, *(v13 - 8) >= *v34))
                  {
LABEL_43:
                    v43 = *(v13 + 24);
                    v44 = (v13 + 16);
                    v45 = (v11 + 40);
                    v46 = *(v11 + 40);
                    result = *v10;
                    if (v43 >= v46)
                    {
                      if (result >= v43 || (v48 = *v44, *v44 = *(a2 - 6), *(a2 - 6) = v48, LOBYTE(v48) = *(v13 + 24), *(v13 + 24) = *(a2 - 40), *(a2 - 40) = v48, v43 = *(v13 + 24), v43 >= *v45))
                      {
LABEL_53:
                        v52 = *v15;
                        v53 = *v31;
                        if (v52 >= v53)
                        {
                          v54 = *v13;
                          if (v43 >= v52)
                          {
LABEL_63:
                            v57 = *v11;
                            *v11 = v54;
                            *v13 = v57;
                            LOBYTE(v57) = *(v11 + 8);
                            *(v11 + 8) = v52;
                            *(v13 + 8) = v57;
                            goto LABEL_64;
                          }

                          v55 = *v44;
                          *v13 = *v44;
                          *v44 = v54;
                          *(v13 + 8) = v43;
                          *(v13 + 24) = v52;
                          if (v43 >= v53)
                          {
                            LOBYTE(v52) = v43;
                            v54 = v55;
                            goto LABEL_63;
                          }

                          v56 = *v33;
                          *v33 = v55;
                          *v13 = v56;
                        }

                        else
                        {
                          v54 = *v33;
                          if (v43 >= v52)
                          {
                            *v33 = *v13;
                            *v13 = v54;
                            *(v13 - 8) = v52;
                            *(v13 + 8) = v53;
                            if (v43 >= v53)
                            {
                              LOBYTE(v52) = v53;
                              goto LABEL_63;
                            }

                            *v13 = *v44;
                            *v44 = v54;
                            v31 = (v13 + 8);
                          }

                          else
                          {
                            *v33 = *v44;
                            *v44 = v54;
                          }

                          v15 = (v13 + 24);
                        }

                        *v31 = v43;
                        *v15 = v53;
                        v54 = *v13;
                        LOBYTE(v52) = *(v13 + 8);
                        goto LABEL_63;
                      }

                      v49 = *(v11 + 32);
                      *(v11 + 32) = *v44;
                      *v44 = v49;
                      v50 = (v13 + 24);
                    }

                    else
                    {
                      v47 = *(v11 + 32);
                      if (result >= v43)
                      {
                        *(v11 + 32) = *v44;
                        *v44 = v47;
                        *(v11 + 40) = v43;
                        *(v13 + 24) = v46;
                        v43 = v46;
                        if (*v10 >= v46)
                        {
                          goto LABEL_53;
                        }

                        *v44 = *(a2 - 6);
                        *(a2 - 6) = v47;
                        v45 = (v13 + 24);
                      }

                      else
                      {
                        *(v11 + 32) = *(a2 - 6);
                        *(a2 - 6) = v47;
                      }

                      v50 = (a2 - 5);
                    }

                    v51 = *v45;
                    *v45 = *v50;
                    *v50 = v51;
                    v43 = *(v13 + 24);
                    goto LABEL_53;
                  }

                  v39 = *(v11 + 16);
                  *(v11 + 16) = *v33;
                  *v33 = v39;
                  v40 = (v13 - 8);
                }

                else
                {
                  v37 = *(v11 + 16);
                  if (v36 >= v32)
                  {
                    *(v11 + 16) = *v33;
                    *v33 = v37;
                    *(v11 + 24) = v32;
                    *(v13 - 8) = v35;
                    if (*v149 >= v35)
                    {
                      goto LABEL_43;
                    }

                    *v33 = *(a2 - 4);
                    *(a2 - 4) = v37;
                    v34 = (v13 - 8);
                  }

                  else
                  {
                    *(v11 + 16) = *(a2 - 4);
                    *(a2 - 4) = v37;
                  }

                  v40 = (a2 - 3);
                }

                v42 = *v34;
                *v34 = *v40;
                *v40 = v42;
                goto LABEL_43;
              }

              v26 = *v11;
              *v11 = *v13;
              *v13 = v26;
              v27 = (v13 + 8);
            }

            else
            {
              v19 = *v11;
              if (v14 >= v16)
              {
                *v11 = *v13;
                *v13 = v19;
                *(v11 + 8) = v16;
                *(v13 + 8) = v18;
                if (*v9 >= v18)
                {
                  goto LABEL_29;
                }

                *v13 = *v8;
                *v8 = v19;
                v17 = (v13 + 8);
              }

              else
              {
                *v11 = *v8;
                *v8 = v19;
              }

              v27 = (a2 - 1);
            }

            v30 = *v17;
            *v17 = *v27;
            *v27 = v30;
            goto LABEL_29;
          }

          v20 = (v11 + 8);
          v21 = *(v11 + 8);
          v22 = (v13 + 8);
          v23 = *(v13 + 8);
          if (v21 < v23)
          {
            v24 = *v13;
            if (v14 >= v21)
            {
              *v13 = *v11;
              *v11 = v24;
              *(v13 + 8) = v21;
              *(v11 + 8) = v23;
              if (*v9 >= v23)
              {
                goto LABEL_64;
              }

              *v11 = *v8;
              *v8 = v24;
              v22 = (v11 + 8);
            }

            else
            {
              *v13 = *v8;
              *v8 = v24;
            }

            v20 = (a2 - 1);
            goto LABEL_38;
          }

          if (v14 < v21)
          {
            v28 = *v11;
            *v11 = *v8;
            *v8 = v28;
            LOBYTE(v28) = *(v11 + 8);
            *(v11 + 8) = *v9;
            *v9 = v28;
            if (*(v11 + 8) < *v22)
            {
              v29 = *v13;
              *v13 = *v11;
              *v11 = v29;
LABEL_38:
              v41 = *v22;
              *v22 = *v20;
              *v20 = v41;
            }
          }

LABEL_64:
          --a3;
          if (a4)
          {
            break;
          }

          v59 = *(v11 + 8);
          v58 = *v11;
          if (*(v11 - 8) < v59)
          {
            goto LABEL_67;
          }

          if (v59 >= *v9)
          {
            v74 = v11 + 16;
            do
            {
              v11 = v74;
              if (v74 >= a2)
              {
                break;
              }

              v75 = *(v74 + 8);
              v74 += 16;
            }

            while (v59 >= v75);
          }

          else
          {
            v72 = v11;
            do
            {
              v11 = v72 + 16;
              v73 = *(v72 + 24);
              v72 += 16;
            }

            while (v59 >= v73);
          }

          v76 = a2;
          if (v11 < a2)
          {
            v77 = a2;
            do
            {
              v76 = v77 - 2;
              v78 = *(v77 - 8);
              v77 -= 2;
            }

            while (v59 < v78);
          }

          while (v11 < v76)
          {
            v79 = *v11;
            *v11 = *v76;
            *v76 = v79;
            LOBYTE(v79) = *(v11 + 8);
            *(v11 + 8) = *(v76 + 8);
            *(v76 + 8) = v79;
            do
            {
              v80 = *(v11 + 24);
              v11 += 16;
            }

            while (v59 >= v80);
            do
            {
              v81 = *(v76 - 8);
              v76 -= 2;
            }

            while (v59 < v81);
          }

          if (v11 - 16 != v7)
          {
            *v7 = *(v11 - 16);
            *(v7 + 8) = *(v11 - 8);
          }

          a4 = 0;
          *(v11 - 16) = v58;
          *(v11 - 8) = v59;
        }

        v58 = *v11;
        v59 = *(v11 + 8);
LABEL_67:
        v60 = v11;
        do
        {
          v61 = v60;
          v60 += 16;
        }

        while (*(v61 + 24) < v59);
        v62 = a2;
        if (v61 == v11)
        {
          v65 = a2;
          while (v60 < v65)
          {
            v63 = v65 - 2;
            v66 = *(v65 - 8);
            v65 -= 2;
            if (v66 < v59)
            {
              goto LABEL_77;
            }
          }

          v63 = v65;
        }

        else
        {
          do
          {
            v63 = v62 - 2;
            v64 = *(v62 - 8);
            v62 -= 2;
          }

          while (v64 >= v59);
        }

LABEL_77:
        v11 = v60;
        if (v60 < v63)
        {
          v67 = v63;
          do
          {
            v68 = *v11;
            *v11 = *v67;
            *v67 = v68;
            LOBYTE(v68) = *(v11 + 8);
            *(v11 + 8) = *(v67 + 8);
            *(v67 + 8) = v68;
            do
            {
              v69 = *(v11 + 24);
              v11 += 16;
            }

            while (v69 < v59);
            do
            {
              v70 = *(v67 - 8);
              v67 -= 16;
            }

            while (v70 >= v59);
          }

          while (v11 < v67);
        }

        if (v11 - 16 != v7)
        {
          *v7 = *(v11 - 16);
          *(v7 + 8) = *(v11 - 8);
        }

        *(v11 - 16) = v58;
        *(v11 - 8) = v59;
        if (v60 >= v63)
        {
          break;
        }

LABEL_88:
        result = std::__introsort<std::_ClassicAlgPolicy,_buildMeshes(std::vector<std::vector<geo::_retain_ptr<VKBuildingGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>> &,ggl::CullingGridWithHeight &,md::Triangulator<float> &,ggl::Device *,BOOL,std::shared_ptr<md::GEOVectorTileResource> const&,std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&,float,geo::QuadTile const&)::$_0 &,std::pair<GeoCodecsBuildingFootprintFeature *,unsigned char> *,false>(v7, (v11 - 16), a3, a4 & 1);
        a4 = 0;
      }

      v71 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,_buildMeshes(std::vector<std::vector<geo::_retain_ptr<VKBuildingGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>> &,ggl::CullingGridWithHeight &,md::Triangulator<float> &,ggl::Device *,BOOL,std::shared_ptr<md::GEOVectorTileResource> const&,std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&,float,geo::QuadTile const&)::$_0 &,std::pair<GeoCodecsBuildingFootprintFeature *,unsigned char> *>(v7, (v11 - 16));
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,_buildMeshes(std::vector<std::vector<geo::_retain_ptr<VKBuildingGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>> &,ggl::CullingGridWithHeight &,md::Triangulator<float> &,ggl::Device *,BOOL,std::shared_ptr<md::GEOVectorTileResource> const&,std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&,float,geo::QuadTile const&)::$_0 &,std::pair<GeoCodecsBuildingFootprintFeature *,unsigned char> *>(v11, a2);
      if (result)
      {
        break;
      }

      if (!v71)
      {
        goto LABEL_88;
      }
    }

    a2 = (v11 - 16);
    if (!v71)
    {
      continue;
    }

    return result;
  }
}

uint64_t geo::_retain_ptr<VKBuildingGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2A38820;
  *(a1 + 8) = 0;
  objc_storeStrong((a1 + 8), *(a2 + 8));
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;

  return a1;
}

void ___Z12_buildMeshesRNSt3__16vectorINS0_IN3geo11_retain_ptrIU8__strongP15VKBuildingGroupNS1_16_retain_objc_arcENS1_17_release_objc_arcENS1_10_hash_objcENS1_11_equal_objcEEENS_9allocatorISA_EEEENSB_ISD_EEEERN3ggl21CullingGridWithHeightERN2md12TriangulatorIfEEPNSH_6DeviceEbRKNS_10shared_ptrINSK_21GEOVectorTileResourceEEERKNSQ_IN3gss17StylesheetManagerINSV_10PropertyIDEEEEEfRKNS1_8QuadTileE_block_invoke(uint64_t a1, uint64_t a2, double a3)
{
  for (i = 0; i != 3; ++i)
  {
    v6 = (**(a1 + 40) + 24 * i);
    v7 = *v6;
    v8 = v6[1];
    while (v7 != v8)
    {
      v9 = *(v7 + 8);
      [v9 willAddDataWithAccessor:a2];

      v7 += 24;
    }
  }

  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 48);
  v12 = *(v10 + 56);
  if (v11 != v12)
  {
    v13 = 0;
    while (1)
    {
      v14 = *v11;
      if ((*(*v11 + 128) & 1) == 0)
      {
        break;
      }

LABEL_30:
      v11 += 2;
      if (v11 == v12)
      {
        goto LABEL_31;
      }
    }

    if (!*(v14 + 96))
    {
LABEL_29:
      ++v13;
      goto LABEL_30;
    }

    v15 = (**(a1 + 40) + 24 * (v13 % 3));
    v16 = *v15;
    v17 = v15[1];
    while (1)
    {
      if (v16 == v17)
      {
        v20 = 0;
        goto LABEL_16;
      }

      v18 = *(v16 + 8);
      v19 = [v18 canAcceptPolygon:v14];

      if (v19)
      {
        break;
      }

      v16 += 24;
    }

    v20 = *(v16 + 8);
LABEL_16:
    if (*(a1 + 68) == 1)
    {
      v21 = *(v14 + 24);
      v22 = *(v21 + 33);
      if (*(v21 + 33))
      {
        v23 = *v21;
        if (*v23 == 19)
        {
          v24 = 0;
          v25 = 1;
LABEL_24:
          if (v23[2 * v24 + 1])
          {
            v28 = 0;
          }

          else
          {
            v28 = v25;
          }

          goto LABEL_28;
        }

        v24 = 0;
        v26 = v23 + 2;
        while (v22 - 1 != v24)
        {
          v27 = *v26;
          v26 += 2;
          ++v24;
          if (v27 == 19)
          {
            v25 = v24 < v22;
            goto LABEL_24;
          }
        }
      }
    }

    v28 = 0;
LABEL_28:
    LODWORD(a3) = *(a1 + 64);
    LOBYTE(v34) = v28;
    [v20 addBuilding:v14 index:v13 ofTotal:*(a1 + 48) accessor:a2 triangulator:*(a1 + 56) prepareExtrusion:a3 forRoofStyle:v34 scaleThreshold:?];

    goto LABEL_29;
  }

LABEL_31:
  for (j = 0; j != 3; ++j)
  {
    v30 = (**(a1 + 40) + 24 * j);
    v31 = *v30;
    v32 = v30[1];
    while (v31 != v32)
    {
      v33 = *(v31 + 8);
      [v33 didFinishAddingData];

      v31 += 24;
    }
  }
}

uint64_t (***std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<geo::_retain_ptr<VKBuildingGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::_retain_ptr<VKBuildingGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>*>(uint64_t (***result)(void), uint64_t (***a2)(void), uint64_t a3))(void)
{
  if (result != a2)
  {
    v5 = result;
    v6 = result;
    do
    {
      geo::_retain_ptr<VKBuildingGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(a3, v6);
      v6 += 3;
      a3 += 24;
    }

    while (v6 != a2);
    v7 = v5;
    v8 = v5;
    do
    {
      v9 = *v8;
      v8 += 3;
      result = (*v9)(v5);
      v7 += 3;
      v5 = v8;
    }

    while (v8 != a2);
  }

  return result;
}

uint64_t std::__split_buffer<geo::_retain_ptr<VKBuildingGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 24);
    *(a1 + 16) = i - 24;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void geo::_retain_ptr<VKBuildingGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A38820;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKBuildingGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A38820;

  return a1;
}

uint64_t *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,_buildMeshes(std::vector<std::vector<geo::_retain_ptr<VKBuildingGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>> &,ggl::CullingGridWithHeight &,md::Triangulator<float> &,ggl::Device *,BOOL,std::shared_ptr<md::GEOVectorTileResource> const&,std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&,float,geo::QuadTile const&)::$_0 &,std::pair<GeoCodecsBuildingFootprintFeature *,unsigned char> *,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *(a2 + 8);
  v5 = result + 1;
  v6 = a3 + 1;
  v7 = *(a3 + 8);
  if (v4 >= *(result + 8))
  {
    if (v7 < v4)
    {
      v10 = *a2;
      *a2 = *a3;
      *a3 = v10;
      v7 = *(a2 + 8);
      *(a2 + 8) = *(a3 + 8);
      *(a3 + 8) = v7;
      if (*(a2 + 8) < *v5)
      {
        v11 = *result;
        *result = *a2;
        *a2 = v11;
        v9 = result + 1;
        v12 = a2 + 1;
LABEL_10:
        v15 = *v9;
        *v9 = *v12;
        *v12 = v15;
        v7 = *v6;
      }
    }
  }

  else
  {
    v8 = *result;
    if (v7 < v4)
    {
      *result = *a3;
      *a3 = v8;
      v9 = result + 1;
LABEL_9:
      v12 = a3 + 1;
      goto LABEL_10;
    }

    *result = *a2;
    *a2 = v8;
    v13 = *(result + 8);
    *(result + 8) = *(a2 + 8);
    *(a2 + 8) = v13;
    v7 = *v6;
    if (v7 < v13)
    {
      v14 = *a2;
      *a2 = *a3;
      *a3 = v14;
      v9 = a2 + 1;
      goto LABEL_9;
    }
  }

  if (*(a4 + 8) < v7)
  {
    v16 = *a3;
    *a3 = *a4;
    *a4 = v16;
    LOBYTE(v16) = *(a3 + 8);
    *(a3 + 8) = *(a4 + 8);
    *(a4 + 8) = v16;
    if (*(a3 + 8) < *(a2 + 8))
    {
      v17 = *a2;
      *a2 = *a3;
      *a3 = v17;
      LOBYTE(v17) = *(a2 + 8);
      *(a2 + 8) = *(a3 + 8);
      *(a3 + 8) = v17;
      if (*(a2 + 8) < *v5)
      {
        v18 = *result;
        *result = *a2;
        *a2 = v18;
        LOBYTE(v18) = *(result + 8);
        *(result + 8) = *(a2 + 8);
        *(a2 + 8) = v18;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,_buildMeshes(std::vector<std::vector<geo::_retain_ptr<VKBuildingGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>> &,ggl::CullingGridWithHeight &,md::Triangulator<float> &,ggl::Device *,BOOL,std::shared_ptr<md::GEOVectorTileResource> const&,std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&,float,geo::QuadTile const&)::$_0 &,std::pair<GeoCodecsBuildingFootprintFeature *,unsigned char> *>(uint64_t a1, uint64_t *a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v15 = (a1 + 24);
      v16 = *(a1 + 24);
      v17 = (a1 + 8);
      v18 = *(a1 + 8);
      v19 = *(a2 - 8);
      if (v16 >= v18)
      {
        if (v19 >= v16)
        {
          return 1;
        }

        v27 = *(a1 + 16);
        *(a1 + 16) = *(a2 - 2);
        *(a2 - 2) = v27;
        LOBYTE(v27) = *(a1 + 24);
        *(a1 + 24) = *(a2 - 8);
        *(a2 - 8) = v27;
        if (*(a1 + 24) >= *(a1 + 8))
        {
          return 1;
        }

        v28 = *a1;
        *a1 = *(a1 + 16);
        *(a1 + 16) = v28;
      }

      else
      {
        v20 = *a1;
        if (v19 >= v16)
        {
          *a1 = *(a1 + 16);
          *(a1 + 16) = v20;
          *(a1 + 8) = v16;
          *(a1 + 24) = v18;
          if (*(a2 - 8) >= v18)
          {
            return 1;
          }

          *(a1 + 16) = *(a2 - 2);
          *(a2 - 2) = v20;
          v17 = (a1 + 24);
        }

        else
        {
          *a1 = *(a2 - 2);
          *(a2 - 2) = v20;
        }

        v15 = (a2 - 1);
      }

      v32 = *v17;
      *v17 = *v15;
      *v15 = v32;
      return 1;
    }

    if (v4 != 4)
    {
      if (v4 == 5)
      {
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,_buildMeshes(std::vector<std::vector<geo::_retain_ptr<VKBuildingGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>> &,ggl::CullingGridWithHeight &,md::Triangulator<float> &,ggl::Device *,BOOL,std::shared_ptr<md::GEOVectorTileResource> const&,std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&,float,geo::QuadTile const&)::$_0 &,std::pair<GeoCodecsBuildingFootprintFeature *,unsigned char> *,0>(a1, (a1 + 16), (a1 + 32), (a1 + 48));
        if (*(a2 - 8) < *(a1 + 56))
        {
          v6 = *(a1 + 48);
          *(a1 + 48) = *(a2 - 2);
          *(a2 - 2) = v6;
          LOBYTE(v6) = *(a1 + 56);
          *(a1 + 56) = *(a2 - 8);
          *(a2 - 8) = v6;
          v7 = *(a1 + 56);
          v8 = *(a1 + 40);
          if (v7 < v8)
          {
            v9 = *(a1 + 32);
            v10 = *(a1 + 48);
            *(a1 + 32) = v10;
            *(a1 + 48) = v9;
            *(a1 + 40) = v7;
            *(a1 + 56) = v8;
            v11 = *(a1 + 24);
            if (v7 < v11)
            {
              v12 = *(a1 + 16);
              *(a1 + 16) = v10;
              *(a1 + 32) = v12;
              *(a1 + 24) = v7;
              *(a1 + 40) = v11;
              v13 = *(a1 + 8);
              if (v7 < v13)
              {
                v14 = *a1;
                *a1 = v10;
                *(a1 + 16) = v14;
                *(a1 + 8) = v7;
                *(a1 + 24) = v13;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,_buildMeshes(std::vector<std::vector<geo::_retain_ptr<VKBuildingGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>> &,ggl::CullingGridWithHeight &,md::Triangulator<float> &,ggl::Device *,BOOL,std::shared_ptr<md::GEOVectorTileResource> const&,std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&,float,geo::QuadTile const&)::$_0 &,std::pair<GeoCodecsBuildingFootprintFeature *,unsigned char> *,0>(a1, (a1 + 16), (a1 + 32), a2 - 2);
    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if (*(a2 - 8) < *(a1 + 8))
    {
      v5 = *a1;
      *a1 = *(a2 - 2);
      *(a2 - 2) = v5;
      LOBYTE(v5) = *(a1 + 8);
      *(a1 + 8) = *(a2 - 8);
      *(a2 - 8) = v5;
    }

    return 1;
  }

LABEL_17:
  v21 = *(a1 + 24);
  v23 = (a1 + 8);
  v22 = *(a1 + 8);
  v25 = (a1 + 40);
  v24 = *(a1 + 40);
  if (v21 < v22)
  {
    v26 = *a1;
    if (v24 >= v21)
    {
      *a1 = *(a1 + 16);
      *(a1 + 16) = v26;
      *(a1 + 8) = v21;
      *(a1 + 24) = v22;
      if (v24 >= v22)
      {
        goto LABEL_34;
      }

      *(a1 + 16) = *(a1 + 32);
      *(a1 + 32) = v26;
      v23 = (a1 + 24);
    }

    else
    {
      *a1 = *(a1 + 32);
      *(a1 + 32) = v26;
    }

    goto LABEL_33;
  }

  if (v24 < v21)
  {
    v29 = *(a1 + 16);
    v30 = *(a1 + 32);
    *(a1 + 16) = v30;
    *(a1 + 32) = v29;
    *(a1 + 24) = v24;
    *(a1 + 40) = v21;
    if (v24 < v22)
    {
      v31 = *a1;
      *a1 = v30;
      *(a1 + 16) = v31;
      v25 = (a1 + 24);
LABEL_33:
      *v23 = v24;
      *v25 = v22;
    }
  }

LABEL_34:
  v33 = (a1 + 48);
  if ((a1 + 48) == a2)
  {
    return 1;
  }

  v34 = 0;
  v35 = 0;
  v36 = (a1 + 32);
  while (1)
  {
    v37 = *(v33 + 8);
    if (v37 < *(v36 + 8))
    {
      v38 = *v33;
      v39 = v34;
      while (1)
      {
        v40 = a1 + v39;
        *(v40 + 48) = *(a1 + v39 + 32);
        *(v40 + 56) = *(a1 + v39 + 40);
        if (v39 == -32)
        {
          break;
        }

        v39 -= 16;
        if (v37 >= *(v40 + 24))
        {
          v41 = a1 + v39 + 48;
          goto LABEL_42;
        }
      }

      v41 = a1;
LABEL_42:
      *v41 = v38;
      *(v41 + 8) = v37;
      if (++v35 == 8)
      {
        return v33 + 2 == a2;
      }
    }

    v36 = v33;
    v34 += 16;
    v33 += 2;
    if (v33 == a2)
    {
      return 1;
    }
  }
}

void md::BuildingLayerDataSource::~BuildingLayerDataSource(md::BuildingLayerDataSource *this)
{
  md::BuildingLayerDataSource::~BuildingLayerDataSource(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A38778;
  *(this + 98) = &unk_1F2A59028;

  v2 = *(this + 96);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::SingleGEOResourceLayerDataSource::~SingleGEOResourceLayerDataSource(this);
}

float colorLerp(uint64_t a1, float *a2, float *a3, float a4)
{
  RGBtoHSV(a2);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  RGBtoHSV(a3);
  v16 = gm::lerp<gm::Matrix<float,3,1>,float>(v8, v10, v12, v13, v14, v15, a4);
  v18 = v17;
  v20 = v19 * v17;
  v21 = fmod(v16 * 0.0166666667, 6.0);
  v22 = v20 - fabs(v21 + trunc(v21 * 0.5) * -2.0 + -1.0) * v20;
  v39[0] = v18 - v20;
  v39[1] = v18 - v20;
  v39[2] = v18 - v20;
  if (v21 >= 0.0 && v21 < 1.0)
  {
    v30 = 0;
    v37 = __PAIR64__(LODWORD(v22), LODWORD(v20));
    v38 = 0.0;
    do
    {
      *(&v40 + v30 * 4) = *(&v37 + v30 * 4) + v39[v30];
      ++v30;
    }

    while (v30 != 3);
  }

  else if (v21 >= 1.0 && v21 < 2.0)
  {
    v31 = 0;
    v37 = __PAIR64__(LODWORD(v20), LODWORD(v22));
    v38 = 0.0;
    do
    {
      *(&v40 + v31 * 4) = *(&v37 + v31 * 4) + v39[v31];
      ++v31;
    }

    while (v31 != 3);
  }

  else if (v21 >= 2.0 && v21 < 3.0)
  {
    v32 = 0;
    LODWORD(v37) = 0;
    *(&v37 + 1) = v20;
    v38 = v22;
    do
    {
      *(&v40 + v32 * 4) = *(&v37 + v32 * 4) + v39[v32];
      ++v32;
    }

    while (v32 != 3);
  }

  else if (v21 >= 3.0 && v21 < 4.0)
  {
    v33 = 0;
    LODWORD(v37) = 0;
    *(&v37 + 1) = v22;
    v38 = v20;
    do
    {
      *(&v40 + v33 * 4) = *(&v37 + v33 * 4) + v39[v33];
      ++v33;
    }

    while (v33 != 3);
  }

  else if (v21 >= 4.0 && v21 < 5.0)
  {
    v34 = 0;
    v37 = LODWORD(v22);
    v38 = v20;
    do
    {
      *(&v40 + v34 * 4) = *(&v37 + v34 * 4) + v39[v34];
      ++v34;
    }

    while (v34 != 3);
  }

  else if (v21 >= 5.0 && v21 < 6.0)
  {
    v35 = 0;
    v37 = LODWORD(v20);
    v38 = v22;
    do
    {
      *(&v40 + v35 * 4) = *(&v37 + v35 * 4) + v39[v35];
      ++v35;
    }

    while (v35 != 3);
  }

  else
  {
    v29 = 0;
    v37 = 0;
    v38 = 0.0;
    do
    {
      *(&v40 + v29 * 4) = *(&v37 + v29 * 4) + v39[v29];
      ++v29;
    }

    while (v29 != 3);
  }

  result = v41;
  *a1 = v40;
  *(a1 + 8) = result;
  return result;
}

void RGBtoHSV(float *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = fmaxf(fmaxf(*a1, v1), v2);
  v4 = v3 - fminf(v2, fminf(v1, *a1));
  if (v4 > 0.0 && v3 == *a1)
  {
    fmod(((v1 - v2) / v4), 6.0);
  }
}

void md::MuninRoadLabeler::updateDebugSettings(md::MuninRoadLabeler *this)
{
  v2 = +[VKDebugSettings sharedSettings];
  *(this + 49) = [v2 enableMuninRoadNetworkMiniMap];
}

BOOL md::MuninRoadLabeler::needsDebugDraw(md::MuninRoadLabeler *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    v3 = atomic_load((v2 + 298));
    if ((v3 & 1) == 0)
    {
      v5[0] = 0;
      v5[1] = 0;
      md::MuninRoadLabeler::setDebugHighlight(this, v5);
    }
  }

  return (*(this + 49) & 1) != 0 || *(this + 7) != 0;
}

void md::MuninRoadLabeler::setDebugHighlight(uint64_t a1, uint64_t *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 56);
  v4 = *a2;
  if (v3 != *a2)
  {
    if (v3)
    {
      atomic_store(0, (v3 + 298));
      v4 = *a2;
    }

    v5 = a2[1];
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = *(a1 + 64);
    *(a1 + 56) = v4;
    *(a1 + 64) = v5;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
      v4 = *(a1 + 56);
    }

    if (v4)
    {
      atomic_store(1u, (v4 + 298));
    }

    md::LabelManager::setNeedsDisplay(*(a1 + 8));
    v3 = *(a1 + 56);
  }

  if (v3)
  {
    if (GEOGetVectorKitLabelHighlightLog(void)::onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitLabelHighlightLog(void)::onceToken, &__block_literal_global_36185);
    }

    v7 = GEOGetVectorKitLabelHighlightLog(void)::log;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      md::MuninRoadLabel::debugString(__p, *(a1 + 56), *(a1 + 8));
      if (v10 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      *buf = 136315138;
      v12 = v8;
      _os_log_impl(&dword_1B2754000, v7, OS_LOG_TYPE_INFO, "\n%s", buf, 0xCu);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void ___ZL32GEOGetVectorKitLabelHighlightLogv_block_invoke_36190()
{
  v0 = os_log_create("com.apple.VectorKit", "LabelHighlight");
  v1 = GEOGetVectorKitLabelHighlightLog(void)::log;
  GEOGetVectorKitLabelHighlightLog(void)::log = v0;
}

void md::MuninRoadLabeler::clearDebugHighlight(md::MuninRoadLabeler *this)
{
  v1[0] = 0;
  v1[1] = 0;
  md::MuninRoadLabeler::setDebugHighlight(this, v1);
}

uint64_t md::MuninRoadLabeler::debugHighlightLabelAtPixel(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 104);
LABEL_2:
  if (v2 == *(a1 + 112))
  {
    return 0;
  }

  v3 = 0;
  v4 = *(*(*v2 + 64) + 24);
  v5 = v4 + 392;
  v6 = v4 + 400;
  v7 = 1;
  do
  {
    v8 = *(a2 + 4 * v3);
    if (v8 < *(v5 + 4 * v3) || v8 >= *(v6 + 4 * v3))
    {
      v2 += 2;
      goto LABEL_2;
    }

    v9 = v7;
    v7 = 0;
    v3 = 1;
  }

  while ((v9 & 1) != 0);
  v10 = v2[1];
  v12[0] = *v2;
  v12[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = 1;
  md::MuninRoadLabeler::setDebugHighlight(a1, v12);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  return 1;
}

void sub_1B3169004(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void md::MuninRoadLabeler::debugDraw(md::MuninRoadLabeler *this, NSMutableString *a2, float32x2_t *a3)
{
  v236 = *MEMORY[0x1E69E9840];
  v193 = a2;
  v194 = +[VKDebugSettings sharedSettings];
  v5 = *(this + 7);
  v201 = this;
  if (v5)
  {
    v6 = *(this + 1);
    if (*(v6 + 3683) == 1)
    {
      md::MuninRoadLabel::debugDraw(v5, a3);
    }

    else
    {
      [(NSMutableString *)v193 appendFormat:@"LayoutZoom:%.2f\n", *(v6 + 464)];
      v7 = *(this + 7);
      if (v7)
      {
        md::MuninRoadLabel::debugDraw(v7, a3);
        v8 = MEMORY[0x1E696AEC0];
        md::MuninRoadLabel::debugString(&__p, *(this + 7), *(this + 1));
        v9 = v212.i8[7] >= 0 ? &__p : __p;
        v10 = [v8 stringWithUTF8String:v9];
        [(NSMutableString *)v193 appendString:v10];

        if (v212.i8[7] < 0)
        {
          operator delete(__p);
        }
      }
    }
  }

  if (![v194 enableMuninRoadNetworkMiniMap])
  {
    goto LABEL_256;
  }

  [v194 muninRoadNetworkMiniMapAreaInMeters];
  v216 = -16776961;
  v11 = *(this + 1);
  v12 = *(v11 + 176);
  v13 = *(this + 35);
  v14 = *(v13 + 816);
  v15 = *(v11 + 1500);
  LODWORD(v11) = *(v11 + 1496);
  v215[0] = 0.0;
  v215[1] = v15 * 0.25;
  LODWORD(v215[2]) = v11;
  v215[3] = v15 * 0.75;
  v192 = *(v13 + 24);
  v218 = v192;
  v228 = v16;
  *v208 = v16;
  md::DebugConsoleMapRect::DebugConsoleMapRect(&__p, a3, v215, &v218, &v228, v208);
  a3[12].i32[0] = 0x80000000;
  v17 = v211.f32[0];
  a3[1] = v211;
  ggl::DebugConsole::drawRectangleWithFill(a3, &v212, v17);
  a3[12].i32[0] = -1;
  memset(v208, 0, sizeof(v208));
  v209 = 1065353216;
  v18 = *(this + 21);
  v200 = this + 176;
  if (v18 == this + 176)
  {
    goto LABEL_35;
  }

  do
  {
    v19 = **(v18 + 4);
    v20 = 0x9DDFEA08EB382D69 * ((8 * (v19 & 0x1FFFFFFF) + 8) ^ HIDWORD(v19));
    v21 = 0x9DDFEA08EB382D69 * (HIDWORD(v19) ^ (v20 >> 47) ^ v20);
    v22 = 0x9DDFEA08EB382D69 * (v21 ^ (v21 >> 47));
    if (!*(&v208[0] + 1))
    {
      goto LABEL_28;
    }

    v23 = vcnt_s8(*(v208 + 8));
    v23.i16[0] = vaddlv_u8(v23);
    if (v23.u32[0] > 1uLL)
    {
      v24 = 0x9DDFEA08EB382D69 * (v21 ^ (v21 >> 47));
      if (v22 >= *(&v208[0] + 1))
      {
        v24 = v22 % *(&v208[0] + 1);
      }
    }

    else
    {
      v24 = v22 & (*(&v208[0] + 1) - 1);
    }

    v25 = *(*&v208[0] + 8 * v24);
    if (!v25 || (v26 = *v25) == 0)
    {
LABEL_28:
      operator new();
    }

    while (1)
    {
      v27 = v26[1];
      if (v27 == v22)
      {
        break;
      }

      if (v23.u32[0] > 1uLL)
      {
        if (v27 >= *(&v208[0] + 1))
        {
          v27 %= *(&v208[0] + 1);
        }
      }

      else
      {
        v27 &= *(&v208[0] + 1) - 1;
      }

      if (v27 != v24)
      {
        goto LABEL_28;
      }

LABEL_27:
      v26 = *v26;
      if (!v26)
      {
        goto LABEL_28;
      }
    }

    if (v26[2] != v19)
    {
      goto LABEL_27;
    }

    v28 = *(v18 + 1);
    if (v28)
    {
      do
      {
        v29 = v28;
        v28 = *v28;
      }

      while (v28);
    }

    else
    {
      do
      {
        v29 = *(v18 + 2);
        _ZF = *v29 == v18;
        v18 = v29;
      }

      while (!_ZF);
    }

    v18 = v29;
  }

  while (v29 != v200);
LABEL_35:
  v31 = +[VKDebugSettings sharedSettings];
  v198 = [v31 enableMuninMiniMapComposedEdgeRoadColoring];

  v32 = +[VKDebugSettings sharedSettings];
  v199 = [v32 enableMuninMiniMapRoadZData];

  v33 = +[VKDebugSettings sharedSettings];
  v34 = [v33 enableMuninMiniMapCollectionPoints];

  v35 = v201;
  if (v34)
  {
    if (*(v201 + 18))
    {
      v36 = *(v201 + 27);
      v203 = *(v201 + 28);
      if (v36 != v203)
      {
        __asm { FMOV            V0.2D, #2.0 }

        v205 = _Q0;
        do
        {
          v41 = 0;
          v42 = *v36;
          v43 = 1 << *(*v36 + 297);
          v44 = 1.0 / v43;
          v45 = ~*(*v36 + 300);
          v46 = v44 * HIDWORD(*(*v36 + 300)) + v44;
          v218.n128_f64[0] = v44 * HIDWORD(*(*v36 + 300));
          v218.n128_f64[1] = v44 * (v43 + v45);
          *v219 = v46;
          *&v219[1] = v218.n128_f64[1] + v44;
          v47 = &v218;
          v48 = 1;
          while (*&v219[v41] > v213.f64[v41] && v47->f64[0] < v214[0].f64[v41])
          {
            v49 = v48;
            v48 = 0;
            v47 = &v218.n128_i8[8];
            v41 = 1;
            if ((v49 & 1) == 0)
            {
              v50 = *(v42 + 168);
              v51 = *(v42 + 176);
              while (v50 != v51)
              {
                v52 = 0;
                v53 = v50[7];
                v54 = 1;
                while (v53 >= v213.f64[v52] && v53 < v214[0].f64[v52])
                {
                  v55 = v54;
                  v54 = 0;
                  v53 = v50[8];
                  v52 = 1;
                  if ((v55 & 1) == 0)
                  {
                    v56 = (v50[9] - *(*(v201 + 18) + 160)) / fmax(*(*(v201 + 18) + 168) - *(*(v201 + 18) + 160), 40.0);
                    v218.n128_u64[0] = 0;
                    v218.n128_u32[2] = 1065353216;
                    *&v56 = v56;
                    v225 = 1065353216;
                    LODWORD(v226) = 0;
                    colorLerp(&v228, &v218, &v225, *&v56);
                    v57 = *(v50 + 7);
                    v218 = v205;
                    LOBYTE(v225) = (*&v228 * 255.0);
                    BYTE1(v225) = (*(&v228 + 1) * 255.0);
                    BYTE2(v225) = (*&v229 * 255.0);
                    BYTE3(v225) = -1;
                    md::DebugConsoleMapRect::drawWorldRectWithMeterDimension(&__p, &v218, &v225, 1, v57);
                    break;
                  }
                }

                v50 += 233;
              }

              break;
            }
          }

          v36 += 2;
          v35 = v201;
        }

        while (v36 != v203);
      }
    }
  }

  if (!v199)
  {
    goto LABEL_123;
  }

  v58 = *(v35 + 18);
  if (!v58)
  {
    goto LABEL_123;
  }

  v59 = *(v35 + 17);
  if (!v59)
  {
    goto LABEL_123;
  }

  v60 = *(v58 + 96);
  __asm { FMOV            V0.2D, #5.0 }

  v206 = _Q0;
  if (v60)
  {
    v62 = vdup_n_s32(0x437F0000u);
    do
    {
      v63 = 0;
      v64 = (*(v60 + 2) + 16);
      v65 = 1;
      while (1)
      {
        v66 = v64->n128_f64[v63];
        if (v66 < v213.f64[v63] || v66 >= v214[0].f64[v63])
        {
          break;
        }

        v67 = v65;
        v65 = 0;
        v63 = 1;
        if ((v67 & 1) == 0)
        {
          v68 = v60[3];
          if (v68 == -1.79769313e308)
          {
            v69.i8[0] = 63;
            v69.i8[4] = 63;
            v70 = -65;
            LOBYTE(v71) = 63;
          }

          else if (v68 == 1.79769313e308)
          {
            v69 = 0xFF000000FFLL;
            v70 = -65;
            LOBYTE(v71) = -1;
          }

          else
          {
            v72 = (v68 - *(*(v201 + 18) + 160)) / fmax(*(*(v201 + 18) + 168) - *(*(v201 + 18) + 160), 40.0);
            v228 = 0.0;
            LODWORD(v229) = 1065353216;
            *&v72 = v72;
            v225 = 1065353216;
            LODWORD(v226) = 0;
            colorLerp(&v218, &v228, &v225, *&v72);
            v69 = vcvt_s32_f32(vmul_f32(v218.n128_u64[0], v62));
            v71 = (v218.n128_f32[2] * 255.0);
            v70 = -1;
          }

          v218 = v206;
          LOBYTE(v228) = v69.i8[0];
          BYTE1(v228) = v69.i8[4];
          BYTE2(v228) = v71;
          BYTE3(v228) = v70;
          md::DebugConsoleMapRect::drawWorldRectWithMeterDimension(&__p, &v218, &v228, 1, *v64);
          break;
        }
      }

      v60 = *v60;
    }

    while (v60);
    v59 = *(v201 + 17);
  }

  std::vector<md::MuninRoadEdge const*>::vector[abi:nn200100](&v225, (v59 + 56));
  v73 = v225;
  v74 = v226;
  if (v225 != v226)
  {
    v35 = v201;
    v195 = v226;
    while (1)
    {
      v75 = 0;
      v76 = *v73;
      v77 = 1;
      do
      {
        if (v214[0].f64[v75] <= *(*v73 + 104 + 8 * v75) || v213.f64[v75] >= *(*v73 + 120 + 8 * v75))
        {
          goto LABEL_120;
        }

        v78 = v77;
        v77 = 0;
        v75 = 1;
      }

      while ((v78 & 1) != 0);
      v235 = 0;
      v234 = 0u;
      v233 = 0u;
      v232 = 0u;
      v231 = 0u;
      v230 = 0u;
      v229 = 0u;
      v79 = std::__hash_table<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>>>::find<gdc::Registry *>((*(v201 + 18) + 40), v76);
      if (v79)
      {
        break;
      }

      if (*(&v230 + 1))
      {
        operator delete(*(&v230 + 1));
      }

      if (v229)
      {
        operator delete(v229);
      }

      v74 = v195;
LABEL_120:
      if (++v73 == v74)
      {
        v73 = v225;
        if (v225)
        {
          goto LABEL_122;
        }

        goto LABEL_123;
      }
    }

    v80 = v79;
    LOBYTE(v228) = *(v79 + 24);
    std::vector<gm::Range<double>>::__assign_with_size[abi:nn200100]<gm::Range<double>*,gm::Range<double>*>(&v229, v79[4], v79[5], (v79[5] - v79[4]) >> 4);
    v82 = v80[7];
    v81 = v80[8];
    v83 = v81 - v82;
    v84 = *(&v231 + 1);
    v85 = *(&v230 + 1);
    if (*(&v231 + 1) - *(&v230 + 1) < (v81 - v82))
    {
      if (*(&v230 + 1))
      {
        operator delete(*(&v230 + 1));
        v84 = 0;
        *(&v230 + 1) = 0;
        v231 = 0uLL;
      }

      v86 = v83 >> 4;
      if (!((v83 >> 4) >> 60))
      {
        if (v84 >> 3 > v86)
        {
          v86 = v84 >> 3;
        }

        if (v84 >= 0x7FFFFFFFFFFFFFF0)
        {
          v87 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v87 = v86;
        }

        if (!(v87 >> 60))
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(v87);
        }
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v88 = v231;
    v89 = v231 - *(&v230 + 1);
    if (v231 - *(&v230 + 1) >= v83)
    {
      if (v81 != v82)
      {
        memmove(*(&v230 + 1), v82, v81 - v82);
      }

      v94 = (v85 + v83);
    }

    else
    {
      if (v231 != *(&v230 + 1))
      {
        v90 = v231;
        v91 = v231 - *(&v230 + 1);
        memmove(*(&v230 + 1), v80[7], v231 - *(&v230 + 1));
        v89 = v91;
        v88 = v90;
      }

      v92 = v81 - &v82[v89];
      if (v81 != &v82[v89])
      {
        v93 = v88;
        memmove(v88, &v82[v89], v92);
        v88 = v93;
      }

      v94 = &v88[v92];
    }

    *&v231 = v94;
    std::vector<gm::Range<double>>::__assign_with_size[abi:nn200100]<gm::Range<double>*,gm::Range<double>*>(&v232, v80[10], v80[11], (v80[11] - v80[10]) >> 4);
    std::vector<gm::Range<double>>::__assign_with_size[abi:nn200100]<gm::Range<double>*,gm::Range<double>*>(&v233 + 1, v80[13], v80[14], (v80[14] - v80[13]) >> 4);
    v95.n128_u64[0] = v80[16];
    v235 = v95.n128_u64[0];
    v223 = 0;
    v222 = 0;
    v224 = 0;
    v96 = *(&v232 + 1) - v232;
    if (*(&v232 + 1) != v232)
    {
      if (!((v96 >> 4) >> 60))
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(v96 >> 4);
      }

LABEL_260:
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v97 = 0;
    v98 = 0;
    v99 = *(&v233 + 1);
    v100 = v234 - *(&v233 + 1);
    v101 = (v234 - *(&v233 + 1)) >> 4;
    if (v101 >= 1)
    {
      if (v100 <= 0)
      {
        if (*(&v233 + 1) != v234)
        {
          memmove(0, *(&v233 + 1), v234 - *(&v233 + 1));
        }

        v98 = v100;
        v223 = v100;
      }

      else
      {
        if (v101 >> 60)
        {
          goto LABEL_260;
        }

        v102 = (v234 - *(&v233 + 1)) >> 4;
        if (v102)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(v102);
        }

        v98 = (v234 - *(&v233 + 1));
        v103 = 0;
        do
        {
          v104 = *v99++;
          *v103++ = v104;
          v100 -= 16;
        }

        while (v100);
        v105 = v222;
        v97 = v222;
        memcpy(v222, v222, -v222);
        v222 = v97;
        v223 = v98;
        v224 = 0;
        if (v105)
        {
          operator delete(v105);
        }
      }
    }

    v106 = 126 - 2 * __clz(v98 - v97);
    if (v98 == v97)
    {
      v107 = 0;
    }

    else
    {
      v107 = v106;
    }

    std::__introsort<std::_ClassicAlgPolicy,[LabelNavRouteLabeler(Debug) drawNavOverlayDebugView:navContext:]::$_0 &,gm::Range<double> *,false>(v97, v98, v107, 1, v95);
    v218 = xmmword_1B33B0740;
    md::MuninLabelingUtils::clipRange(&v221, &v218, &v222);
  }

  v35 = v201;
  if (v225)
  {
LABEL_122:
    v226 = v73;
    operator delete(v73);
  }

LABEL_123:
  LODWORD(v217) = -1;
  v226 = 0;
  v225 = 0;
  v227 = 0;
  v108 = *(v35 + 24);
  v109 = *(v35 + 25);
  if (v108 != v109)
  {
    __asm { FMOV            V0.2D, #0.5 }

    v202 = _Q0;
    v204 = vdupq_n_s64(0x3FC45F306DC9C883uLL);
    v196 = *(v35 + 25);
    do
    {
      v111 = 0;
      v112 = *v108;
      v113 = 1 << *(*v108 + 169);
      v114 = 1.0 / v113;
      v115 = v114 * (v113 + ~*(*v108 + 172));
      v116 = v114 * *(*v108 + 176) + v114;
      v218.n128_f64[0] = v114 * *(*v108 + 176);
      v218.n128_f64[1] = v115;
      v219[0] = *&v116;
      *&v219[1] = v115 + v114;
      v117 = &v218;
      v118 = 1;
      while (*&v219[v111] > v213.f64[v111] && v117->f64[0] < v214[0].f64[v111])
      {
        v119 = v118;
        v118 = 0;
        v117 = &v218.n128_i8[8];
        v111 = 1;
        if ((v119 & 1) == 0)
        {
          v197 = v108;
          LODWORD(v217) = -1;
          v120 = v112[95];
          if (v120 != v112[96])
          {
            v121 = *v120;
            v221 = *v120;
            v223 = 0;
            v222 = 0;
            if (v198)
            {
              v122 = std::__hash_table<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>>>::find<gdc::Registry *>((*(v35 + 17) + 16), v121);
              if (v122)
              {
                v123 = v122[3];
                if (v123)
                {
                  v124 = 0x9DDFEA08EB382D69 * ((8 * (v122[3] & 0x1FFFFFFFLL) + 8) ^ HIDWORD(v122[3]));
                  v125 = 0x9DDFEA08EB382D69 * (HIDWORD(v123) ^ (v124 >> 47) ^ v124);
                  v126 = 0x9DDFEA08EB382D69 * (v125 ^ (v125 >> 47));
                  v127 = *(v35 + 248);
                  if (!*&v127)
                  {
                    goto LABEL_159;
                  }

                  v128 = vcnt_s8(v127);
                  v128.i16[0] = vaddlv_u8(v128);
                  if (v128.u32[0] > 1uLL)
                  {
                    v129 = 0x9DDFEA08EB382D69 * (v125 ^ (v125 >> 47));
                    if (v126 >= *&v127)
                    {
                      v129 = v126 % *&v127;
                    }
                  }

                  else
                  {
                    v129 = v126 & (*&v127 - 1);
                  }

                  v132 = *(*(v35 + 30) + 8 * v129);
                  if (!v132 || (v133 = *v132) == 0)
                  {
LABEL_159:
                    strcpy(&v217, "zI");
                    BYTE3(v217) = -1;
                    if (!*&v127)
                    {
                      goto LABEL_175;
                    }

                    v135 = vcnt_s8(v127);
                    v135.i16[0] = vaddlv_u8(v135);
                    if (v135.u32[0] > 1uLL)
                    {
                      v136 = 0x9DDFEA08EB382D69 * (v125 ^ (v125 >> 47));
                      if (v126 >= *&v127)
                      {
                        v136 = v126 % *&v127;
                      }
                    }

                    else
                    {
                      v136 = v126 & (*&v127 - 1);
                    }

                    v137 = *(*(v201 + 30) + 8 * v136);
                    if (!v137 || (v138 = *v137) == 0)
                    {
LABEL_175:
                      operator new();
                    }

                    while (1)
                    {
                      v139 = v138[1];
                      if (v139 == v126)
                      {
                        if (v138[2] == v123)
                        {
                          v35 = v201;
                          goto LABEL_176;
                        }
                      }

                      else
                      {
                        if (v135.u32[0] > 1uLL)
                        {
                          if (v139 >= *&v127)
                          {
                            v139 %= *&v127;
                          }
                        }

                        else
                        {
                          v139 &= *&v127 - 1;
                        }

                        if (v139 != v136)
                        {
                          goto LABEL_175;
                        }
                      }

                      v138 = *v138;
                      if (!v138)
                      {
                        goto LABEL_175;
                      }
                    }
                  }

                  while (1)
                  {
                    v134 = v133[1];
                    if (v134 == v126)
                    {
                      if (v133[2] == v123)
                      {
                        for (i = 0; i != 4; ++i)
                        {
                          *(&v217 + i) = *(v133 + i + 24);
                        }

                        goto LABEL_176;
                      }
                    }

                    else
                    {
                      if (v128.u32[0] > 1uLL)
                      {
                        if (v134 >= *&v127)
                        {
                          v134 %= *&v127;
                        }
                      }

                      else
                      {
                        v134 &= *&v127 - 1;
                      }

                      if (v134 != v129)
                      {
                        goto LABEL_159;
                      }
                    }

                    v133 = *v133;
                    if (!v133)
                    {
                      goto LABEL_159;
                    }
                  }
                }
              }

              if (*(v121 + 112))
              {
                v130 = -1;
              }

              else
              {
                v130 = 64;
              }

              LOBYTE(v217) = v130;
              BYTE1(v217) = v130;
              BYTE2(v217) = v130;
              BYTE3(v217) = 32;
            }

            else
            {
              if (v121 == *(v35 + 19))
              {
                v131 = -16711936;
              }

              else
              {
                if (*(v121 + 112) == 1)
                {
                  LODWORD(v217) = -1;
                  goto LABEL_176;
                }

                v131 = -553648128;
              }

              LODWORD(v217) = v131;
            }

LABEL_176:
            if (!v199)
            {
              goto LABEL_199;
            }

            v140 = std::__hash_table<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>>>::find<gdc::Registry *>((*(v35 + 17) + 16), v221);
            if (v140)
            {
              v141 = v140[3];
            }

            else
            {
              v141 = 0;
            }

            v142 = *(v35 + 18);
            v218 = 0u;
            *v219 = 0u;
            v220 = *(v142 + 152);
            std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::__rehash<true>(&v218, *(v142 + 128));
            for (j = *(v142 + 136); j; j = *j)
            {
              std::__hash_table<md::ComposedRoadEdge const*,std::hash<md::ComposedRoadEdge const*>,std::equal_to<md::ComposedRoadEdge const*>,std::allocator<md::ComposedRoadEdge const*>>::__emplace_unique_key_args<md::ComposedRoadEdge const*,md::ComposedRoadEdge const* const&>(&v218, j[2], j + 2);
            }

            if (v218.n128_u64[1])
            {
              v144 = 0x9DDFEA08EB382D69 * ((8 * (v141 & 0x1FFFFFFF) + 8) ^ HIDWORD(v141));
              v145 = 0x9DDFEA08EB382D69 * (HIDWORD(v141) ^ (v144 >> 47) ^ v144);
              v146 = 0x9DDFEA08EB382D69 * (v145 ^ (v145 >> 47));
              v147 = vcnt_s8(*&v218.n128_i8[8]);
              v147.i16[0] = vaddlv_u8(v147);
              if (v147.u32[0] > 1uLL)
              {
                v148 = v146;
                if (v146 >= v218.n128_u64[1])
                {
                  v148 = v146 % v218.n128_u64[1];
                }
              }

              else
              {
                v148 = v146 & (v218.n128_u64[1] - 1);
              }

              v149 = *(v218.n128_u64[0] + 8 * v148);
              if (v149)
              {
                for (k = *v149; k; k = *k)
                {
                  v151 = k[1];
                  if (v146 == v151)
                  {
                    if (k[2] == v141)
                    {
                      std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&v218);
                      LODWORD(v217) = -16776961;
                      goto LABEL_199;
                    }
                  }

                  else
                  {
                    if (v147.u32[0] > 1uLL)
                    {
                      if (v151 >= v218.n128_u64[1])
                      {
                        v151 %= v218.n128_u64[1];
                      }
                    }

                    else
                    {
                      v151 &= v218.n128_u64[1] - 1;
                    }

                    if (v151 != v148)
                    {
                      break;
                    }
                  }
                }
              }
            }

            std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&v218);
LABEL_199:
            v152 = +[VKDebugSettings sharedSettings];
            if ([v152 enableMuninMiniMapRoadWidths])
            {
              v153 = *(v221 + 112);
            }

            else
            {
              v153 = 0;
            }

            v218.n128_u8[0] = v153 & 1;
            *&v230 = 0;
            operator new();
          }

          v155 = v112[98];
          v156 = v112[99];
          while (v155 != v156)
          {
            v157 = 0;
            v158 = *v155;
            v159 = (*v155 + 16);
            v160 = 1;
            while (1)
            {
              v161 = v159->n128_f64[v157];
              if (v161 < v213.f64[v157] || v161 >= v214[0].f64[v157])
              {
                break;
              }

              v162 = v160;
              v160 = 0;
              v157 = 1;
              if ((v162 & 1) == 0)
              {
                if (std::__hash_table<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>>>::find<gdc::Registry *>(v208, *v155))
                {
                  v163 = -16711936;
                  goto LABEL_213;
                }

                v164 = *(v158 + 69);
                if (v164 > 2 || v164 - 1 <= 1 && *(v158 + 68) >= 3u)
                {
                  LODWORD(v221) = -1;
                }

                else
                {
                  v163 = -553648128;
LABEL_213:
                  LODWORD(v221) = v163;
                }

                v165 = +[VKDebugSettings sharedSettings];
                if (![v165 enableMuninMiniMapRoadWidths])
                {
                  goto LABEL_231;
                }

                v166 = *(v158 + 69);
                if (v166 >= 3)
                {

                  goto LABEL_219;
                }

                if (v166 - 1 < 2)
                {
                  v174 = *(v158 + 68) > 2u;

                  if (v174)
                  {
LABEL_219:
                    v167 = *(v158 + 40);
                    v168 = 0.0;
                    while (v167 != *(v158 + 48))
                    {
                      v169 = *v167++;
                      v168 = fmax(v168, *(v169 + 8));
                    }

                    v170 = v168 * v14;
                    v218 = *v159;
                    *v219 = v168 * v14;
                    if (gm::Box<double,2>::intersects<int,void>(&v213, &v218))
                    {
                      v171 = md::DebugConsoleMapRect::worldPointToPixel(&__p, v218);
                      v172 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(vsub_f32(v212, v211)), vsubq_f64(v214[0], v213)));
                      v172.f32[0] = v170 * fminf(v172.f32[1], v172.f32[0]);
                      v222 = __PAIR64__(v173, LODWORD(v171));
                      LODWORD(v223) = v172.i32[0];
                      md::DebugConsoleMapRect::drawPixelCircle(&__p, &v222, &v221, 0);
                    }
                  }
                }

                else
                {
LABEL_231:
                }

                md::DebugConsoleMapRect::drawWorldCircleWithPixelRadius(&__p, (v12 + v12), &v221, 1, *v159);
                v35 = v201;
                break;
              }
            }

            ++v155;
          }

          v175 = *(v35 + 21);
          if (v175 != v200)
          {
            do
            {
              v176 = 0;
              v177 = *(v175 + 4);
              v178 = 1;
              while (1)
              {
                v179 = *(*v177 + 16 + 8 * v176);
                if (v179 < v213.f64[v176] || v179 >= v214[0].f64[v176])
                {
                  break;
                }

                v180 = v178;
                v178 = 0;
                v176 = 1;
                if ((v180 & 1) == 0)
                {
                  v181 = v177[7];
                  v182 = v177[8];
                  while (v181 != v182)
                  {
                    v183 = *(*(**v181 + 16))();
                    v218.n128_u32[0] = -65281;
                    md::DebugConsoleMapRect::drawWorldCircleWithPixelRadius(&__p, (v12 + v12), &v218, 1, v183);
                    v184 = *(*v181 + 16);
                    v185 = *(*v181 + 24);
                    while (v184 != v185)
                    {
                      v186 = *v184;
                      v184 += 2;
                      v218 = 0uLL;
                      v219[0] = 0;
                      geo::Geocentric<double>::toCoordinate3D<geo::Radians,double>((v186 + 216), &v218);
                      v207 = v218.n128_f64[1];
                      v187 = tan(v218.n128_f64[0] * 0.5 + 0.785398163);
                      v188 = log(v187);
                      v189.f64[0] = v207;
                      v189.f64[1] = v188;
                      v218.n128_u32[0] = -256;
                      md::DebugConsoleMapRect::drawWorldCircleWithPixelRadius(&__p, (v12 + v12), &v218, 1, vmlaq_f64(v202, v204, v189));
                    }

                    v181 += 16;
                  }

                  break;
                }
              }

              v190 = *(v175 + 1);
              v35 = v201;
              if (v190)
              {
                do
                {
                  v191 = v190;
                  v190 = *v190;
                }

                while (v190);
              }

              else
              {
                do
                {
                  v191 = *(v175 + 2);
                  _ZF = *v191 == v175;
                  v175 = v191;
                }

                while (!_ZF);
              }

              v175 = v191;
            }

            while (v191 != v200);
          }

          v109 = v196;
          v108 = v197;
          break;
        }
      }

      v108 += 16;
    }

    while (v108 != v109);
  }

  v218.n128_u64[0] = *(*(v35 + 35) + 1288);
  md::DebugConsoleMapRect::drawWorldArrow(&__p, v218.n128_f64, &v216, v192, v12 * 22.0, v12 * 12.0);
  if (v225)
  {
    v226 = v225;
    operator delete(v225);
  }

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v208);
LABEL_256:
}

void sub_1B316AD10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  if (v33)
  {
    STACK[0x2D0] = v33;
    operator delete(v33);
  }

  if (STACK[0x348])
  {
    operator delete(STACK[0x348]);
  }

  if (STACK[0x330])
  {
    operator delete(STACK[0x330]);
  }

  if (STACK[0x318])
  {
    operator delete(STACK[0x318]);
  }

  if (STACK[0x300])
  {
    operator delete(STACK[0x300]);
  }

  v35 = STACK[0x2E0];
  if (STACK[0x2E0])
  {
    STACK[0x2E8] = v35;
    operator delete(v35);
  }

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&a33);

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<md::MuninRoadLabeler::debugDrawRoadNetworkMiniMap(md::DebugConsole *,double)::$_0,std::allocator<md::MuninRoadLabeler::debugDrawRoadNetworkMiniMap(md::DebugConsole *,double)::$_0>,BOOL ()(gm::Matrix<double,2,1> const&)>::operator()(uint64_t a1, float64x2_t *a2)
{
  v4 = *(a1 + 8);
  if (*v4 != 0)
  {
    v5 = *(a1 + 40);
    v7 = *(a1 + 16);
    v6 = *(a1 + 24);
    v8 = *v7;
    *(v7 + 8) = *v7;
    if (*v6 == 1)
    {
      v9 = v4->f64[0];
      v10 = v4->f64[1];
      v12 = a2->f64[0];
      v11 = a2->f64[1];
      v13 = v4->f64[0] - a2->f64[0];
      v14 = 1.0 / sqrt(v13 * v13 + (v10 - v11) * (v10 - v11));
      v15 = *(*(v5 + 280) + 816) * (*(**(a1 + 32) + 8) * 0.5);
      v16 = -(v15 * v14) * (v10 - v11);
      v17 = v15 * v13 * v14;
      v18 = *(v7 + 16);
      if (v8 >= v18)
      {
        v21 = v18 - v8;
        v22 = v21 >> 4;
        if ((v21 >> 4) <= 1)
        {
          v22 = 1;
        }

        if (v21 >= 0x7FFFFFFFFFFFFFE0)
        {
          v23 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v23 = v22;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<double,2>>>(v23);
      }

      *v8 = v16 + v4->f64[0];
      v8[1] = v17 + v10;
      v8[2] = v12 - v9;
      v8[3] = v11 - v10;
      *(v7 + 8) = v8 + 4;
      v24 = *(a1 + 8);
      v7 = *(a1 + 16);
      v25 = *v24;
      v26 = v24[1];
      v27 = *v24 - v16;
      v28 = v26 - v17;
      v30 = a2->f64[0];
      v29 = a2->f64[1];
      v8 = *(v7 + 8);
      v31 = *(v7 + 16);
      if (v8 >= v31)
      {
        v41 = (v8 - *v7) >> 5;
        v42 = v41 + 1;
        if ((v41 + 1) >> 59)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v43 = v31 - *v7;
        if (v43 >> 4 > v42)
        {
          v42 = v43 >> 4;
        }

        if (v43 >= 0x7FFFFFFFFFFFFFE0)
        {
          v44 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v44 = v42;
        }

        if (v44)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<double,2>>>(v44);
        }

        v45 = (32 * v41);
        *v45 = v27;
        v45[1] = v28;
        v45[2] = v30 - v25;
        v45[3] = v29 - v26;
        v32 = 32 * v41 + 32;
        v46 = *v7;
        v47 = *(v7 + 8);
        v48 = (v45 + *v7 - v47);
        if (v47 != *v7)
        {
          v49 = v48;
          do
          {
            v50 = *v46;
            v51 = *(v46 + 1);
            v46 += 4;
            *v49 = v50;
            v49[1] = v51;
            v49 += 2;
          }

          while (v46 != v47);
          v46 = *v7;
        }

        *v7 = v48;
        *(v7 + 8) = v32;
        *(v7 + 16) = 0;
        if (v46)
        {
          operator delete(v46);
        }

        goto LABEL_23;
      }

      *v8 = v27;
      v8[1] = v28;
      v8[2] = v30 - v25;
      v8[3] = v29 - v26;
    }

    else
    {
      v19 = *(v7 + 16);
      if (v8 >= v19)
      {
        v33 = v19 - v8;
        v34 = v33 >> 4;
        if ((v33 >> 4) <= 1)
        {
          v34 = 1;
        }

        if (v33 >= 0x7FFFFFFFFFFFFFE0)
        {
          v35 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v35 = v34;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<double,2>>>(v35);
      }

      v20 = vsubq_f64(*a2, *v4);
      *v8 = *v4;
      *(v8 + 1) = v20;
    }

    v32 = (v8 + 4);
LABEL_23:
    *(v7 + 8) = v32;
    v36 = *(a1 + 16);
    v37 = *v36;
    v38 = v36[1];
    while (v37 != v38)
    {
      md::DebugConsoleMapRect::drawWorldSegment(*(a1 + 48), v37, *(a1 + 56));
      v37 += 2;
    }
  }

  v39 = *(a1 + 8);
  *v39 = a2->f64[0];
  v39[1] = a2->f64[1];
  return 1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<double,2>>>(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

__n128 std::__function::__func<md::MuninRoadLabeler::debugDrawRoadNetworkMiniMap(md::DebugConsole *,double)::$_0,std::allocator<md::MuninRoadLabeler::debugDrawRoadNetworkMiniMap(md::DebugConsole *,double)::$_0>,BOOL ()(gm::Matrix<double,2,1> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A388F0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t md::MuninRoadLabeler::debugString@<X0>(md::MuninRoadLabeler *this@<X0>, _BYTE *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:nn200100](&v21);
  md::LabelSettingsStyleCache::muninRoadStyle(*(*(*(this + 1) + 336) + 200));
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v21, "[MuninRoadLabeler]\n", 19);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v21, " State: isSceneLoaded=", 22);
  v4 = MEMORY[0x1B8C61C50](&v21, *(this + 79));
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v4, "\n", 1);
  v5 = v21;
  *(&v21 + *(v21 - 24) + 8) = *(&v21 + *(v21 - 24) + 8) & 0xFFFFFEFB | 4;
  *(&v23[0].__locale_ + *(v5 - 24)) = 1;
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v21, " Junctions: active=", 19);
  v6 = MEMORY[0x1B8C61CB0](&v21, *(this + 23));
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v6, " maxDist(Corner=", 16);
  v7 = std::ostream::operator<<();
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v7, " Cross=", 7);
  v8 = std::ostream::operator<<();
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v8, ")\n", 2);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v21, " Labels: active=", 16);
  v9 = MEMORY[0x1B8C61CB0](&v21, *(*(this + 4) + 32));
  v10 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v9, "(", 1);
  v11 = MEMORY[0x1B8C61CB0](v10, (*(this + 11) - *(this + 10)) >> 4);
  v12 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v11, ") display=", 10);
  v13 = MEMORY[0x1B8C61CB0](v12, (*(this + 14) - *(this + 13)) >> 4);
  v14 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v13, " exist=", 7);
  v15 = atomic_load(md::MuninRoadLabel::_totalLabels);
  v16 = MEMORY[0x1B8C61C90](v14, v15);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v16, "\n", 1);
  if ((v28 & 0x10) != 0)
  {
    v18 = v27;
    if (v27 < v24)
    {
      v27 = v24;
      v18 = v24;
    }

    locale = v23[4].__locale_;
  }

  else
  {
    if ((v28 & 8) == 0)
    {
      v17 = 0;
      a2[23] = 0;
      goto LABEL_14;
    }

    locale = v23[1].__locale_;
    v18 = v23[3].__locale_;
  }

  v17 = v18 - locale;
  if ((v18 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v17 >= 0x17)
  {
    operator new();
  }

  a2[23] = v17;
  if (v17)
  {
    memmove(a2, locale, v17);
  }

LABEL_14:
  a2[v17] = 0;
  v21 = *MEMORY[0x1E69E54E8];
  *(&v21 + *(v21 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v22 = MEMORY[0x1E69E5548] + 16;
  if (v26 < 0)
  {
    operator delete(__p);
  }

  v22 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v23);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v29);
}

void sub_1B316B690(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27)
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

void md::PolarFlyoverTileData::~PolarFlyoverTileData(md::PolarFlyoverTileData *this)
{
  md::PolarFlyoverTileData::~PolarFlyoverTileData(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A38938;
  *(this + 80) = &unk_1F2A38980;
  md::RegistryManager::removeRegistry(*(this + 96), this);
  v2 = *(this + 97);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v4 = (this + 744);
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&v4);
  v3 = *(this + 92);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::MapTileData::~MapTileData(this);
}

void sub_1B316B888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v12 = *(v10 + 776);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  a10 = (v10 + 744);
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&a10);
  v13 = *(v10 + 736);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }

  md::MapTileData::~MapTileData(v10);
  _Unwind_Resume(a1);
}

void md::ARWalkingStorefrontLabelFeature::populateStyleQueries(uint64_t a1, const void **a2, uint64_t *a3)
{
  v29 = 0;
  v6 = (*(*a1 + 496))(a1);
  if (v6)
  {
    v6 = (*(*a1 + 488))(a1, 0);
    if (v6)
    {
      operator new();
    }
  }

  v7 = *a2;
  v8 = a2[1];
  v9 = v8 - *a2;
  if ((v9 >> 4) > 1)
  {
    if (v9 != 32)
    {
      v23 = v7 + 32;
      while (v8 != v23)
      {
        v24 = *(v8 - 1);
        if (v24)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v24);
        }

        v8 -= 16;
      }

      a2[1] = v23;
    }
  }

  else
  {
    v10 = 2 - (v9 >> 4);
    v11 = a2[2];
    if (v10 <= (v11 - v8) >> 4)
    {
      bzero(a2[1], 16 * v10);
      a2[1] = &v8[16 * v10];
    }

    else
    {
      v12 = v11 - v7;
      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        v13 = 2;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFF0)
      {
        v14 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v13;
      }

      v32 = a2 + 3;
      v15 = mdm::zone_mallocator::instance(v6);
      v16 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>(v15, v14);
      v17 = &v16[v9];
      v18 = &v16[16 * v14];
      bzero(v17, 16 * v10);
      v19 = a2[1] - *a2;
      v20 = &v17[-v19];
      memcpy(&v17[-v19], *a2, v19);
      v21 = *a2;
      *a2 = v20;
      a2[1] = &v17[16 * v10];
      v22 = a2[2];
      a2[2] = v18;
      v30.__shared_weak_owners_ = v21;
      v31 = v22;
      v30.__vftable = v21;
      v30.__shared_owners_ = v21;
      std::__split_buffer<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,geo::allocator_adapter<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,mdm::zone_mallocator> &>::~__split_buffer(&v30);
    }
  }

  (*(*a1 + 600))(&v30, a1, 0);
  md::LabelStyleCache::styleQueryForFeatureAttributes(&v28, a3, &v30, v29);
  v25 = *a2;
  v26 = v28;
  v28 = 0uLL;
  v27 = *(v25 + 1);
  *v25 = v26;
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v27);
  }

  if (*(&v28 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v28 + 1));
  }

  std::allocate_shared[abi:nn200100]<FeatureStyleAttributes,std::allocator<FeatureStyleAttributes>,FeatureStyleAttributes const&,0>(&v28, v30.__vftable);
}

void sub_1B316BC28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  MEMORY[0x1B8C62190](v13, 0x1012C40B602C572, a3, a4, a5, a6, a7);
  std::unique_ptr<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>::reset[abi:nn200100](va, 0);
  _Unwind_Resume(a1);
}

uint64_t md::ARWalkingStorefrontLabelFeature::style(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 776);
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = a1 + 776;
  do
  {
    v4 = *(v2 + 28);
    v5 = v4 >= a2;
    v6 = v4 < a2;
    if (v5)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * v6);
  }

  while (v2);
  if (v3 != a1 + 776 && *(v3 + 28) <= a2)
  {
    v7 = *(v3 + 32);
  }

  else
  {
LABEL_9:
    v7 = 0;
  }

  return *(a1 + 96) + 16 * v7;
}

void sub_1B316BEDC(_Unwind_Exception *a1)
{
  if (*(v2 - 49) < 0)
  {
    operator delete(*(v2 - 72));
  }

  _Unwind_Resume(a1);
}

uint64_t md::ARWalkingStorefrontLabelFeature::dedupingGroup@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 800);
  *a2 = *(this + 792);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

BOOL md::ARWalkingStorefrontLabelFeature::updateDynamicStyling(md::ARWalkingStorefrontLabelFeature *this, md::LabelManager *a2, md::Label *a3)
{
  v5 = *(a3 + 12);
  v4 = (a3 + 48);
  v3 = v5;
  v6 = *(this + 97);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = this + 776;
  do
  {
    v8 = *(v6 + 7);
    v9 = v8 >= v3;
    v10 = v8 < v3;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *&v6[8 * v10];
  }

  while (v6);
  if (v7 != this + 776 && v3 >= *(v7 + 7))
  {
    v11 = v7[32] != *(this + 760);
  }

  else
  {
LABEL_9:
    v11 = 0;
  }

  v12 = *(this + 760);
  v14 = v4;
  *(std::__tree<std::__value_type<md::LabelIdentifier,BOOL>,std::__map_value_compare<md::LabelIdentifier,std::__value_type<md::LabelIdentifier,BOOL>,std::less<md::LabelIdentifier>,true>,std::allocator<std::__value_type<md::LabelIdentifier,BOOL>>>::__emplace_unique_key_args<md::LabelIdentifier,std::piecewise_construct_t const&,std::tuple<md::LabelIdentifier const&>,std::tuple<>>(this + 96, v3, &v14) + 32) = v12;
  return v11;
}

md::LabelPart *md::ARWalkingStorefrontLabelFeature::newRootPart(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v5 = md::PointLabelFeature::newRootPart(a1, a2, a3, a4, a5);
  v6 = v5;
  if (v5)
  {
    (*(*v5 + 64))(v5, 1, 1);
  }

  return v6;
}

void md::ARWalkingStorefrontLabelFeature::~ARWalkingStorefrontLabelFeature(md::ARWalkingStorefrontLabelFeature *this)
{
  *this = &unk_1F2A38998;
  v2 = *(this + 100);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 97));
  *(this + 92) = &unk_1F2A39040;

  *this = &unk_1F2A38D00;
  v3 = (this + 712);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v3);
  md::PointLabelFeature::~PointLabelFeature(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A38998;
  v2 = *(this + 100);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 97));
  *(this + 92) = &unk_1F2A39040;

  *this = &unk_1F2A38D00;
  v3 = (this + 712);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v3);

  md::PointLabelFeature::~PointLabelFeature(this);
}

void geo::_retain_ptr<VKARWalkingArrivalStoreFront * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A39020;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKARWalkingArrivalStoreFront * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A39020;

  return a1;
}

void md::LabelExternalPointFeature::addLocation(void *a1, double *a2)
{
  v5 = a1 + 24;
  v4 = a1[24];
  if (__PAIR64__(*(v4 + 46), *(v4 + 45)) == 0x100000001 && *(v4 + 40) == 3.4028e38)
  {
    v6 = a1 + 25;
    v7 = a1[25];
    if (*(v4 + 24) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v6 = a1 + 25;
    v7 = a1[25];
  }

  v8 = a1[26];
  if (v7 >= v8)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v4) >> 4);
    if (v9 + 1 > 0x555555555555555)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v4) >> 4);
    v11 = 2 * v10;
    if (2 * v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x2AAAAAAAAAAAAAALL)
    {
      v12 = 0x555555555555555;
    }

    else
    {
      v12 = v11;
    }

    __p[4] = v5;
    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::LabelPoint>>(v12);
    }

    v13 = 48 * v9;
    __p[0] = 0;
    __p[1] = v13;
    *(v13 + 16) = 0u;
    *(v13 + 32) = 0u;
    *v13 = 0u;
    *(v13 + 40) = 2139095039;
    __p[2] = (48 * v9 + 48);
    __p[3] = 0;
    std::vector<md::LabelPoint>::__swap_out_circular_buffer(v5, __p);
    v7 = a1[25];
    if (__p[0])
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *(v7 + 16) = 0u;
    *(v7 + 32) = 0u;
    *v7 = 0u;
    *(v7 + 40) = 2139095039;
    v7 += 48;
  }

  *v6 = v7;
LABEL_19:

  md::LabelPoint::setCoordinate(v7 - 48, a2);
}

void std::__shared_ptr_emplace<md::ARWalkingStorefront>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A39098;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__shared_ptr_pointer<ARStorefrontLabelFeatureDedupingGroup *,std::shared_ptr<md::LabelDedupingGroup>::__shared_ptr_default_delete<md::LabelDedupingGroup,ARStorefrontLabelFeatureDedupingGroup>,std::allocator<ARStorefrontLabelFeatureDedupingGroup>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ARStorefrontLabelFeatureDedupingGroup *,std::shared_ptr<md::LabelDedupingGroup>::__shared_ptr_default_delete<md::LabelDedupingGroup,ARStorefrontLabelFeatureDedupingGroup>,std::allocator<ARStorefrontLabelFeatureDedupingGroup>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void *ARStorefrontLabelFeatureDedupingGroup::prepareForCollision(ARStorefrontLabelFeatureDedupingGroup *this, md::LabelManager *a2)
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

void ARStorefrontLabelFeatureDedupingGroup::~ARStorefrontLabelFeatureDedupingGroup(ARStorefrontLabelFeatureDedupingGroup *this)
{
  *this = &unk_1F2A38CB8;
  v2 = (this + 40);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 80);
  *this = off_1F2A55B58;
  std::vector<md::LabelBase *,geo::allocator_adapter<md::LabelBase *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<md::LabelBase *,geo::allocator_adapter<md::LabelBase *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 8));

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A38CB8;
  v2 = (this + 40);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 80);
  *this = off_1F2A55B58;
  std::vector<md::LabelBase *,geo::allocator_adapter<md::LabelBase *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<md::LabelBase *,geo::allocator_adapter<md::LabelBase *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 8));
}

void md::Logic<md::DebugDrawLogic,md::DebugDrawContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2, v3);
}

uint64_t md::Logic<md::DebugDrawLogic,md::DebugDrawContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  if (*(a3 + 8) == 0x3619066E3FB5F2CLL && *(a3 + 32))
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

uint64_t gdc::ObjectHolder<md::DebugDrawContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::DebugDrawContext>::~ManagedObjectHolder(void *a1)
{
  gdc::ManagedObjectHolder<md::DebugDrawContext>::~ManagedObjectHolder(a1);

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::DebugDrawContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A39188;
  v2 = a1[4];
  if (v2)
  {
    v5 = (v2 + 104);
    std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::vector<gm::LineSegment<float,3>>>>>::__destroy_vector::operator()[abi:nn200100](&v5);
    v5 = (v2 + 80);
    std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>>>>::__destroy_vector::operator()[abi:nn200100](&v5);
    std::__hash_table<std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>>>,std::__unordered_map_hasher<gdc::Tiled const*,std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>>>,std::hash<gdc::Tiled const*>,std::equal_to<gdc::Tiled const*>,true>,std::__unordered_map_equal<gdc::Tiled const*,std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>>>,std::equal_to<gdc::Tiled const*>,std::hash<gdc::Tiled const*>,true>,std::allocator<std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>>>>>::~__hash_table(v2 + 40);
    v3 = std::__hash_table<std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>>>,std::__unordered_map_hasher<gdc::Tiled const*,std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>>>,std::hash<gdc::Tiled const*>,std::equal_to<gdc::Tiled const*>,true>,std::__unordered_map_equal<gdc::Tiled const*,std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>>>,std::equal_to<gdc::Tiled const*>,std::hash<gdc::Tiled const*>,true>,std::allocator<std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>>>>>::~__hash_table(v2);
    MEMORY[0x1B8C62190](v3, 0x10A0C40D55A27F3);
  }

  return a1;
}

void md::DebugDrawLogic::~DebugDrawLogic(md::DebugDrawLogic *this)
{
  md::DebugDrawLogic::~DebugDrawLogic(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A390D0;
  v2 = *(this + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

void md::Logic<md::RouteLineLogic,md::RouteLineContext,md::LogicDependencies<gdc::TypeList<md::NavigationContext,md::ElevationContext,md::CameraContext,md::SceneContext>,gdc::TypeList<md::PuckContext,md::RouteOverlayContext>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2, v3);
}

BOOL md::RouteLineLogic::runBeforeLayout(md::LayoutContext const&,md::LogicDependencies<gdc::TypeList<md::NavigationContext,md::ElevationContext,md::CameraContext,md::SceneContext>,gdc::TypeList<md::PuckContext,md::RouteOverlayContext>>::ResolvedDependencies const&,md::RouteLineContext &)::$_0::operator()(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  if (!a1 || !a2)
  {
    return (v3 | v2) != 0;
  }

  while (1)
  {
    v18 = *(v3 + 20);
    *v17 = *(v3 + 16);
    v4 = *(v3 + 32);
    v19 = v4;
    v5 = *(v3 + 40);
    v20 = *(v3 + 40);
    v6 = *(v2 + 17);
    v8 = *(v2 + 20);
    v7 = *(v2 + 24);
    v9 = *(v2 + 16);
    v10 = *(v2 + 32);
    v11 = *(v2 + 40);
    v12 = *(v2 + 56);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v5)
    {
      geo::QuadTile::computeHash(v17);
      v4 = v19;
      if (v11)
      {
LABEL_19:
        v14 = (v6 + ((v9 - 0x61C8864680B583EBLL) << 6) + ((v9 - 0x61C8864680B583EBLL) >> 2) - 0x61C8864680B583EBLL) ^ (v9 - 0x61C8864680B583EBLL);
        v15 = (v8 + (v14 << 6) + (v14 >> 2) - 0x61C8864680B583EBLL) ^ v14;
        v10 = (v7 + (v15 << 6) + (v15 >> 2) - 0x61C8864680B583EBLL) ^ v15;
      }
    }

    else if (v11)
    {
      goto LABEL_19;
    }

    v13 = 0;
    if (v4 == v10 && v17[0] == v9 && v17[1] == v6 && v18 == v8)
    {
      v13 = HIDWORD(v18) == v7;
    }

    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v12);
    }

    if (!v13)
    {
      return 1;
    }

    v3 = *v3;
    v2 = *v2;
    if (!v3 || !v2)
    {
      return (v3 | v2) != 0;
    }
  }
}

void std::__hash_table<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>>>::__emplace_unique_key_args<geo::QuadTile,geo::QuadTile const&,std::shared_ptr<md::FlyoverDsmTileData> const&>(void *a1, geo::QuadTile *this, uint64_t a3, void *a4)
{
  if (*(this + 24) == 1)
  {
    geo::QuadTile::computeHash(this);
    *(this + 24) = 0;
  }

  v6 = *(this + 2);
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_20;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = *(this + 2);
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_20:
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
      goto LABEL_20;
    }

LABEL_19:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_20;
    }
  }

  if (!std::equal_to<geo::QuadTile>::operator()[abi:nn200100](v12 + 16, this))
  {
    goto LABEL_19;
  }
}

uint64_t *std::__tree<unsigned char,std::greater<unsigned char>,std::allocator<unsigned char>>::__emplace_unique_key_args<unsigned char,unsigned char const&>(uint64_t *result, unsigned __int8 a2, _BYTE *a3)
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
      v5 = *(v3 + 25);
      if (v5 >= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 <= a2)
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

void gdc::ServiceLocator::associate<md::RouteElevationSource,md::FlyoverRouteElevationSource>(void *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 != v2)
  {
    while (*v1 != 0xD91D59D9773C991ALL)
    {
      v1 += 5;
      if (v1 == v2)
      {
        return;
      }
    }

    if (v1 != v2)
    {
      v5[0] = 0xAB4154EC82453679;
      v5[1] = "md::RouteElevationSource]";
      v3 = v1[3];
      v4 = v1[4];
      v5[2] = 24;
      v5[3] = v3;
      v5[4] = v4;
      if (v4)
      {
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      geo::linear_map<gdc::TypeInfo,std::shared_ptr<void>,std::equal_to<gdc::TypeInfo>,std::allocator<std::pair<gdc::TypeInfo,std::shared_ptr<void>>>,std::vector<std::pair<gdc::TypeInfo,std::shared_ptr<void>>>>::insert_or_assign(a1, v5);
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v4);
      }
    }
  }
}

void sub_1B316D094(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::RouteElevationSourceContext::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *(a1 + 32) = *(a2 + 32);
    std::__hash_table<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,void *> *>>(a1, *(a2 + 16));
    std::__tree<unsigned char,std::greater<unsigned char>,std::allocator<unsigned char>>::__assign_multi<std::__tree_const_iterator<unsigned char,std::__tree_node<unsigned char,void *> *,long>>((a1 + 40), *(a2 + 40), (a2 + 48));
  }

  return a1;
}

uint64_t md::Logic<md::RouteLineLogic,md::RouteLineContext,md::LogicDependencies<gdc::TypeList<md::NavigationContext,md::ElevationContext,md::CameraContext,md::SceneContext>,gdc::TypeList<md::PuckContext,md::RouteOverlayContext>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  if (*(a3 + 8) == 0x8E4587A431F9C696 && (v4 = *(a3 + 32)) != 0)
  {
    v6 = result;
    md::LogicDependencies<gdc::TypeList<md::NavigationContext,md::ElevationContext,md::CameraContext,md::SceneContext>,gdc::TypeList<md::PuckContext,md::RouteOverlayContext>>::resolveDependencies(v7, *(a2 + 8));
    return (*(*v6 + 160))(v6, a2, v7, v4);
  }

  else
  {
    a4[23] = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::RouteLineContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::RouteLineContext>::~ManagedObjectHolder(void *a1)
{
  gdc::ManagedObjectHolder<md::RouteLineContext>::~ManagedObjectHolder(a1);

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::RouteLineContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A39320;
  v2 = a1[4];
  if (v2)
  {
    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v2 + 56));
    std::__hash_table<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>>>::~__hash_table((v2 + 8));
    MEMORY[0x1B8C62190](v2, 0x10A0C408B8AFFAALL);
  }

  return a1;
}

void md::RouteLineLogic::~RouteLineLogic(md::RouteLineLogic *this)
{
  md::RouteLineLogic::~RouteLineLogic(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A391B0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 24));
  std::__hash_table<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>>>::~__hash_table(this + 18);
  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

void md::MuninJunction::~MuninJunction(md::MuninJunction *this)
{
  *this = &unk_1F2A46FB8;
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A46FB8;
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }
}

void md::MuninJunction::addRoad(md::MuninJunction *this, const md::MuninRoadEdge *a2)
{
  v5 = *(this + 6);
  v4 = *(this + 7);
  if (v5 >= v4)
  {
    v7 = *(this + 5);
    v8 = (v5 - v7) >> 3;
    if ((v8 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v9 = v4 - v7;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::MuninRoadEdge const*>>(v11);
    }

    *(8 * v8) = a2;
    v6 = 8 * v8 + 8;
    v12 = *(this + 5);
    v13 = *(this + 6) - v12;
    v14 = (8 * v8 - v13);
    memcpy(v14, v12, v13);
    v15 = *(this + 5);
    *(this + 5) = v14;
    *(this + 6) = v6;
    *(this + 7) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v5 = a2;
    v6 = (v5 + 1);
  }

  *(this + 6) = v6;
  *(this + 68) += *(a2 + 112);
  v16 = *(this + 5);
  v17 = v6 - v16;
  if (v6 != v16)
  {
    if (!((v17 >> 3) >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v17 >> 3);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v32 = this;
  std::__introsort<std::_ClassicAlgPolicy,md::MuninJunction::addRoad(md::MuninRoadEdge const*)::$_0 &,unsigned long *,false>(v17, 0, &v32, 0, 1);
  *(this + 69) = 0;
  if (v17)
  {
    v18 = 0;
    v19 = 0;
    v20 = *(this + 5);
    v21 = v17;
    do
    {
      v22 = *(v20 + 8 * *v21);
      if (*(v22 + 112) != 1)
      {
        break;
      }

      if (!v19)
      {
        goto LABEL_33;
      }

      v23 = *(v22 + 39);
      if (v23 >= 0)
      {
        v24 = *(v22 + 39);
      }

      else
      {
        v24 = *(v22 + 24);
      }

      v25 = *(v19 + 39);
      v26 = v25;
      if ((v25 & 0x80u) != 0)
      {
        v25 = *(v19 + 24);
      }

      if (v24 != v25 || (v23 >= 0 ? (v27 = (v22 + 16)) : (v27 = *(v22 + 16)), (v30 = *(v19 + 16), v28 = (v19 + 16), v29 = v30, v26 >= 0) ? (v31 = v28) : (v31 = v29), memcmp(v27, v31, v24)))
      {
LABEL_33:
        *(this + 69) = ++v18;
      }

      ++v21;
      v19 = v22;
    }

    while (v21);
  }

  if (v17)
  {

    operator delete(v17);
  }
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,md::MuninJunction::addRoad(md::MuninRoadEdge const*)::$_0 &,unsigned long *,false>(uint64_t result, uint64_t *a2, void *a3, uint64_t a4, char a5)
{
  v6 = a3;
  v155 = result;
LABEL_2:
  v151 = a2 - 1;
  v140 = a2 - 3;
  v141 = a2 - 2;
  k = v155;
  v144 = a2;
  while (1)
  {
    v9 = a2 - k;
    v155 = k;
    if (v9 > 2)
    {
      v10 = k;
      switch(v9)
      {
        case 3:
          v57 = *(*v6 + 40);

          return std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninJunction::addRoad(md::MuninRoadEdge const*)::$_0 &,unsigned long *,0>(k, k + 1, v151, v57);
        case 4:

          return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninJunction::addRoad(md::MuninRoadEdge const*)::$_0 &,unsigned long *,0>(k, k + 1, k + 2, v151, v6);
        case 5:

          return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninJunction::addRoad(md::MuninRoadEdge const*)::$_0 &,unsigned long *,0>(k, k + 1, k + 2, k + 3, v151, v6);
      }

      goto LABEL_10;
    }

    if (v9 < 2)
    {
      return result;
    }

    v10 = k;
    if (v9 == 2)
    {
      break;
    }

LABEL_10:
    if (v9 <= 23)
    {
      v58 = v10 + 1;
      v60 = v10 == a2 || v58 == a2;
      if (a5)
      {
        if (v60)
        {
          return result;
        }

        v61 = 0;
        v62 = *(*v6 + 40);
        v63 = k;
        while (1)
        {
          v64 = v63;
          v65 = *v63;
          v66 = v63[1];
          v67 = *(v62 + 8 * v66);
          v63 = v58;
          v68 = *(v67 + 112);
          v69 = *(v62 + 8 * v65);
          if (v68 == *(v69 + 112))
          {
            result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((v67 + 16), (v69 + 16));
            if ((result & 0x80) == 0)
            {
              goto LABEL_141;
            }
          }

          else if (!*(v67 + 112))
          {
            goto LABEL_141;
          }

          v64[1] = v65;
          v70 = v155;
          if (v64 == v155)
          {
            goto LABEL_140;
          }

          v152 = v66;
          v71 = *(*(v62 + 8 * v66) + 112);
          v72 = v61;
          while (1)
          {
            v73 = *(v155 + v72 - 8);
            v74 = *(v62 + 8 * v73);
            if (v71 == *(v74 + 112))
            {
              result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((v67 + 16), (v74 + 16));
              if ((result & 0x80) == 0)
              {
                v70 = (v155 + v72);
                goto LABEL_139;
              }

              goto LABEL_136;
            }

            if (!v68)
            {
              break;
            }

LABEL_136:
            --v64;
            *(v155 + v72) = v73;
            v72 -= 8;
            if (!v72)
            {
              v70 = v155;
              goto LABEL_139;
            }
          }

          v70 = v64;
LABEL_139:
          v66 = v152;
LABEL_140:
          *v70 = v66;
LABEL_141:
          v58 = v63 + 1;
          v61 += 8;
          if (v63 + 1 == v144)
          {
            return result;
          }
        }
      }

      if (v60)
      {
        return result;
      }

      v129 = *(*v6 + 40);
      while (1)
      {
        v130 = v155;
        v132 = *v155;
        v131 = v155[1];
        v133 = *(v129 + 8 * v131);
        v155 = v58;
        v134 = *(v133 + 112);
        v135 = *(v129 + 8 * v132);
        if (v134 == *(v135 + 112))
        {
          result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((v133 + 16), (v135 + 16));
          if ((result & 0x80) == 0)
          {
            goto LABEL_213;
          }
        }

        else if (!*(v133 + 112))
        {
          goto LABEL_213;
        }

        v136 = *(*(v129 + 8 * v131) + 112);
        do
        {
          while (1)
          {
            v137 = v130;
            v138 = *--v130;
            v130[2] = v132;
            v132 = v138;
            v139 = *(v129 + 8 * v138);
            if (v136 != *(v139 + 112))
            {
              break;
            }

            result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((v133 + 16), (v139 + 16));
            if ((result & 0x80) == 0)
            {
              goto LABEL_212;
            }
          }
        }

        while ((v134 & 1) != 0);
LABEL_212:
        *v137 = v131;
        a2 = v144;
LABEL_213:
        v58 = v155 + 1;
        if (v155 + 1 == a2)
        {
          return result;
        }
      }
    }

    if (!a4)
    {
      if (v10 == a2)
      {
        return result;
      }

      v75 = (v9 - 2) >> 1;
      v143 = *v6;
      v153 = v75;
      v76 = k;
      while (1)
      {
        v77 = v75;
        if (v153 < v75)
        {
          goto LABEL_171;
        }

        v78 = (2 * v75) | 1;
        v79 = &v76[v78];
        v80 = *(v143 + 40);
        if (2 * v75 + 2 < v9)
        {
          v81 = *(v80 + 8 * *v79);
          v82 = *(v80 + 8 * v79[1]);
          if (*(v81 + 112) == *(v82 + 112))
          {
            result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((v81 + 16), (v82 + 16));
            if ((result & 0x80) == 0)
            {
              goto LABEL_152;
            }
          }

          else if (!*(v81 + 112))
          {
            goto LABEL_152;
          }

          ++v79;
          v78 = 2 * v77 + 2;
        }

LABEL_152:
        v83 = *v79;
        v84 = *(v80 + 8 * *v79);
        v85 = *(v84 + 112);
        v76 = v155;
        v86 = v155[v77];
        v87 = *(v80 + 8 * v86);
        v88 = *(v87 + 112);
        if (v85 == v88)
        {
          result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((v84 + 16), (v87 + 16));
          if ((result & 0x80) == 0)
          {
            goto LABEL_156;
          }
        }

        else if ((v85 & 1) == 0)
        {
LABEL_156:
          v146 = v86;
          v155[v77] = v83;
          if (v153 < v78)
          {
LABEL_157:
            v89 = v79;
LABEL_170:
            *v89 = v146;
            goto LABEL_171;
          }

          v148 = *a3;
          while (2)
          {
            v90 = 2 * v78;
            v78 = (2 * v78) | 1;
            v89 = &v76[v78];
            v91 = v90 + 2;
            if (v90 + 2 < v9)
            {
              v92 = *(v148 + 40);
              v93 = *(v92 + 8 * *v89);
              v94 = *(v92 + 8 * v89[1]);
              if (*(v93 + 112) == *(v94 + 112))
              {
                result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((v93 + 16), (v94 + 16));
                if ((result & 0x80) != 0)
                {
LABEL_164:
                  ++v89;
                  v78 = v91;
                }
              }

              else if (*(v93 + 112))
              {
                goto LABEL_164;
              }
            }

            v95 = *v89;
            v96 = *(v80 + 8 * *v89);
            v97 = *(v96 + 112);
            if (v97 == v88)
            {
              result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((v96 + 16), (v87 + 16));
              v76 = v155;
              if ((result & 0x80) != 0)
              {
                goto LABEL_157;
              }
            }

            else
            {
              v76 = v155;
              if (v97)
              {
                goto LABEL_157;
              }
            }

            *v79 = v95;
            v79 = v89;
            if (v153 < v78)
            {
              goto LABEL_170;
            }

            continue;
          }
        }

LABEL_171:
        v75 = v77 - 1;
        if (!v77)
        {
          v98 = a3;
          v149 = *a3;
          v99 = v144;
          while (1)
          {
            v100 = v99;
            v101 = 0;
            v102 = v155;
            v103 = *v155;
            v104 = *v98;
            do
            {
              v105 = v102;
              v106 = &v102[v101];
              v102 = v106 + 1;
              v107 = 2 * v101;
              v101 = (2 * v101) | 1;
              v108 = v107 + 2;
              if (v107 + 2 >= v9)
              {
                goto LABEL_180;
              }

              v110 = v106[2];
              v109 = v106 + 2;
              v111 = *(v104 + 40);
              v112 = *(v111 + 8 * *(v109 - 1));
              v113 = *(v111 + 8 * v110);
              if (*(v112 + 112) == *(v113 + 112))
              {
                result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((v112 + 16), (v113 + 16));
                if ((result & 0x80) == 0)
                {
                  goto LABEL_180;
                }
              }

              else if (!*(v112 + 112))
              {
                goto LABEL_180;
              }

              v102 = v109;
              v101 = v108;
LABEL_180:
              *v105 = *v102;
            }

            while (v101 <= ((v9 - 2) >> 1));
            v114 = v100 - 1;
            if (v102 == v114)
            {
              v99 = v114;
              *v102 = v103;
            }

            else
            {
              *v102 = *v114;
              v99 = v114;
              *v114 = v103;
              v115 = (v102 - v155 + 8) >> 3;
              v116 = v115 - 2;
              if (v115 >= 2)
              {
                v117 = v116 >> 1;
                v118 = &v155[v116 >> 1];
                v119 = *v118;
                v120 = *(v149 + 40);
                v121 = *(v120 + 8 * *v118);
                v154 = *v102;
                v122 = *(v120 + 8 * *v102);
                v123 = *(v122 + 112);
                if (*(v121 + 112) == v123)
                {
                  result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((v121 + 16), (v122 + 16));
                  if ((result & 0x80) != 0)
                  {
LABEL_188:
                    *v102 = v119;
                    if (v116 >= 2)
                    {
                      do
                      {
                        v125 = v117 - 1;
                        v117 = (v117 - 1) >> 1;
                        v124 = &v155[v117];
                        v126 = *v124;
                        v127 = *(v120 + 8 * *v124);
                        if (*(v127 + 112) == v123)
                        {
                          result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((v127 + 16), (v122 + 16));
                          if ((result & 0x80) == 0)
                          {
                            goto LABEL_189;
                          }
                        }

                        else if (!*(v127 + 112))
                        {
                          goto LABEL_189;
                        }

                        *v118 = v126;
                        v118 = &v155[v117];
                      }

                      while (v125 > 1);
                    }

                    else
                    {
LABEL_189:
                      v124 = v118;
                    }

                    *v124 = v154;
                  }
                }

                else if (*(v121 + 112))
                {
                  goto LABEL_188;
                }
              }
            }

            v128 = v9-- <= 2;
            v98 = a3;
            if (v128)
            {
              return result;
            }
          }
        }
      }
    }

    v11 = &v10[v9 >> 1];
    v12 = *(*v6 + 40);
    if (v9 < 0x81)
    {
      result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninJunction::addRoad(md::MuninRoadEdge const*)::$_0 &,unsigned long *,0>(&v10[v9 >> 1], v10, v151, v12);
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninJunction::addRoad(md::MuninRoadEdge const*)::$_0 &,unsigned long *,0>(v10, &v10[v9 >> 1], v151, v12);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninJunction::addRoad(md::MuninRoadEdge const*)::$_0 &,unsigned long *,0>((v10 + 1), v11 - 1, v141, *(*v6 + 40));
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninJunction::addRoad(md::MuninRoadEdge const*)::$_0 &,unsigned long *,0>((v10 + 2), &v10[(v9 >> 1) + 1], v140, *(*v6 + 40));
      result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninJunction::addRoad(md::MuninRoadEdge const*)::$_0 &,unsigned long *,0>((v11 - 1), &v10[v9 >> 1], &v10[(v9 >> 1) + 1], *(*v6 + 40));
      v13 = *v10;
      *v10 = *v11;
      *v11 = v13;
    }

    v14 = *v10;
    v15 = *v6;
    v145 = *v10;
    v147 = a4 - 1;
    if (a5)
    {
      v16 = *(v15 + 40);
      v17 = *(v16 + 8 * v14);
      v18 = *(v17 + 112);
LABEL_21:
      for (i = v10 + 1; ; ++i)
      {
        v22 = *i;
        v23 = *(v16 + 8 * *i);
        if (*(v23 + 112) != v18)
        {
          break;
        }

        if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((v23 + 16), (v17 + 16)) & 0x80) == 0)
        {
          goto LABEL_27;
        }

LABEL_26:
        ;
      }

      if (*(v23 + 112))
      {
        goto LABEL_26;
      }

LABEL_27:
      v24 = i - 1;
      if (i - 1 != v155)
      {
        for (j = v151; ; --j)
        {
          v26 = *(v16 + 8 * *j);
          v27 = *(v26 + 112);
          if (v27 == v18)
          {
            if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((v26 + 16), (v17 + 16)) & 0x80) != 0)
            {
              goto LABEL_43;
            }
          }

          else if (v27)
          {
            goto LABEL_43;
          }
        }
      }

      j = a2;
      if (i < a2)
      {
        for (j = v151; ; --j)
        {
          v28 = *(v16 + 8 * *j);
          v29 = *(v28 + 112);
          if (v29 == v18)
          {
            v30 = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((v28 + 16), (v17 + 16));
            if (i >= j || v30 < 0)
            {
              break;
            }
          }

          else if (i >= j || (v29 & 1) != 0)
          {
            break;
          }
        }
      }

LABEL_43:
      if (i >= j)
      {
        goto LABEL_57;
      }

      v31 = *j;
      v32 = i;
      v33 = j;
      while (2)
      {
        *v32++ = v31;
        *v33 = v22;
        while (2)
        {
          v22 = *v32;
          v34 = *(v16 + 8 * *v32);
          if (*(v34 + 112) == v18)
          {
            if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((v34 + 16), (v17 + 16)) & 0x80) == 0)
            {
              break;
            }

            goto LABEL_50;
          }

          if (*(v34 + 112))
          {
LABEL_50:
            ++v32;
            continue;
          }

          break;
        }

        v24 = v32 - 1;
        do
        {
          while (1)
          {
            v35 = *--v33;
            v31 = v35;
            v36 = *(v16 + 8 * v35);
            v37 = *(v36 + 112);
            if (v37 != v18)
            {
              break;
            }

            if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((v36 + 16), (v17 + 16)) & 0x80) != 0)
            {
              goto LABEL_56;
            }
          }
        }

        while ((v37 & 1) == 0);
LABEL_56:
        if (v32 < v33)
        {
          continue;
        }

        break;
      }

LABEL_57:
      if (v24 != v155)
      {
        *v155 = *v24;
      }

      a2 = v144;
      *v24 = v145;
      a4 = v147;
      v6 = a3;
      if (i < j)
      {
LABEL_62:
        result = std::__introsort<std::_ClassicAlgPolicy,md::MuninJunction::addRoad(md::MuninRoadEdge const*)::$_0 &,unsigned long *,false>(v155, v24, a3, v147, a5 & 1);
        a5 = 0;
        k = v24 + 1;
      }

      else
      {
        v38 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninJunction::addRoad(md::MuninRoadEdge const*)::$_0 &,unsigned long *>(v155, v24, a3);
        k = v24 + 1;
        result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninJunction::addRoad(md::MuninRoadEdge const*)::$_0 &,unsigned long *>(v24 + 1, v144, a3);
        if (result)
        {
          a2 = v24;
          if (v38)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v38)
        {
          goto LABEL_62;
        }
      }
    }

    else
    {
      v16 = *(v15 + 40);
      v19 = *(v16 + 8 * *(v10 - 1));
      v20 = *(v19 + 112);
      v17 = *(v16 + 8 * v14);
      v18 = *(v17 + 112);
      if (v20 == v18)
      {
        result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((v19 + 16), (v17 + 16));
        if ((result & 0x80) != 0)
        {
          v18 = v20;
          goto LABEL_21;
        }
      }

      else if (v20)
      {
        goto LABEL_21;
      }

      v39 = *(v16 + 8 * *v151);
      v40 = *(v39 + 112);
      if (v18 == v40)
      {
        result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((v17 + 16), (v39 + 16));
        if ((result & 0x80) != 0)
        {
          goto LABEL_73;
        }
      }

      else if (v18)
      {
LABEL_73:
        for (k = v155 + 1; ; ++k)
        {
          v42 = *(v16 + 8 * *k);
          if (v18 == *(v42 + 112))
          {
            result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((v17 + 16), (v42 + 16));
            if ((result & 0x80) != 0)
            {
              goto LABEL_79;
            }
          }

          else if (v18)
          {
            goto LABEL_79;
          }
        }
      }

      for (k = v155 + 1; k < a2; ++k)
      {
        v41 = *(v16 + 8 * *k);
        if (v18 == *(v41 + 112))
        {
          result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((v17 + 16), (v41 + 16));
          if ((result & 0x80) != 0)
          {
            break;
          }
        }

        else if (v18)
        {
          break;
        }
      }

LABEL_79:
      m = a2;
      if (k < a2)
      {
        for (m = v151; ; --m)
        {
          if (v18 == v40)
          {
            result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((v17 + 16), (v39 + 16));
            if ((result & 0x80) == 0)
            {
              break;
            }
          }

          else if (!v18)
          {
            break;
          }

          v44 = *(m - 1);
          v39 = *(v16 + 8 * v44);
          LOBYTE(v40) = *(v39 + 112);
        }
      }

      if (k >= m)
      {
        v47 = v155;
        goto LABEL_100;
      }

      v45 = *k;
      v46 = *m;
      v47 = v155;
      do
      {
        *k++ = v46;
        *m = v45;
        while (1)
        {
          v45 = *k;
          v48 = *(v16 + 8 * *k);
          if (v18 == *(v48 + 112))
          {
            break;
          }

          if (v18)
          {
            goto LABEL_95;
          }

LABEL_93:
          ++k;
        }

        result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((v17 + 16), (v48 + 16));
        if ((result & 0x80) == 0)
        {
          goto LABEL_93;
        }

        do
        {
LABEL_95:
          while (1)
          {
            v49 = *--m;
            v46 = v49;
            v50 = *(v16 + 8 * v49);
            if (v18 == *(v50 + 112))
            {
              break;
            }

            if (!v18)
            {
              goto LABEL_97;
            }
          }

          result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((v17 + 16), (v50 + 16));
        }

        while ((result & 0x80) != 0);
LABEL_97:
        ;
      }

      while (k < m);
LABEL_100:
      v51 = k - 1;
      a2 = v144;
      if (k - 1 != v47)
      {
        *v47 = *v51;
      }

      a5 = 0;
      *v51 = v14;
      a4 = v147;
      v6 = a3;
    }
  }

  v52 = *v151;
  v53 = *(*v6 + 40);
  v54 = *(v53 + 8 * *v151);
  v55 = *k;
  v56 = *(v53 + 8 * *k);
  if (*(v54 + 112) == *(v56 + 112))
  {
    result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((v54 + 16), (v56 + 16));
    if ((result & 0x80) == 0)
    {
      return result;
    }
  }

  else if (!*(v54 + 112))
  {
    return result;
  }

  *k = v52;
  *v151 = v55;
  return result;
}

uint64_t std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninJunction::addRoad(md::MuninRoadEdge const*)::$_0 &,unsigned long *,0>(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v6 = a2;
  v7 = result;
  v8 = *a2;
  v9 = *(a4 + 8 * *a2);
  v10 = *(v9 + 112);
  v11 = *result;
  v12 = *(a4 + 8 * *result);
  v13 = *(v12 + 112);
  if (v10 == v13)
  {
    result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((v9 + 16), (v12 + 16));
    if ((result & 0x80) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v10 & 1) == 0)
  {
LABEL_3:
    v14 = *a3;
    v15 = *(a4 + 8 * *a3);
    if (*(v15 + 112) == v10)
    {
      result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((v15 + 16), (v9 + 16));
      if ((result & 0x80) == 0)
      {
        return result;
      }
    }

    else if (!*(v15 + 112))
    {
      return result;
    }

    *v6 = v14;
    *a3 = v8;
    v18 = *v6;
    v20 = *(a4 + 8 * *v6);
    v21 = *(v20 + 112);
    v11 = *v7;
    v22 = *(a4 + 8 * *v7);
    if (v21 == *(v22 + 112))
    {
      result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((v20 + 16), (v22 + 16));
      if ((result & 0x80) == 0)
      {
        return result;
      }
    }

    else if ((v21 & 1) == 0)
    {
      return result;
    }

    goto LABEL_21;
  }

  v23 = *a3;
  v16 = *(a4 + 8 * *a3);
  v17 = *(v16 + 112);
  if (v17 == v10)
  {
    result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((v16 + 16), (v9 + 16));
    if ((result & 0x80) == 0)
    {
      goto LABEL_9;
    }

LABEL_17:
    v6 = a3;
    v18 = v23;
    goto LABEL_21;
  }

  if (v17)
  {
    goto LABEL_17;
  }

LABEL_9:
  *v7 = v8;
  *v6 = v11;
  v18 = *a3;
  v19 = *(a4 + 8 * *a3);
  if (*(v19 + 112) == v13)
  {
    result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((v19 + 16), (v12 + 16));
    v7 = v6;
    v6 = a3;
    if ((result & 0x80) == 0)
    {
      return result;
    }

    goto LABEL_21;
  }

  v7 = v6;
  v6 = a3;
  if (*(v19 + 112))
  {
LABEL_21:
    *v7 = v18;
    *v6 = v11;
  }

  return result;
}

uint64_t std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninJunction::addRoad(md::MuninRoadEdge const*)::$_0 &,unsigned long *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninJunction::addRoad(md::MuninRoadEdge const*)::$_0 &,unsigned long *,0>(a1, a2, a3, *(*a5 + 40));
  v11 = *a4;
  v12 = *(*a5 + 40);
  v13 = *(v12 + 8 * *a4);
  v14 = *a3;
  v15 = *(v12 + 8 * *a3);
  if (*(v13 + 112) == *(v15 + 112))
  {
    result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((v13 + 16), (v15 + 16));
    if ((result & 0x80) == 0)
    {
      return result;
    }
  }

  else if (!*(v13 + 112))
  {
    return result;
  }

  *a3 = v11;
  *a4 = v14;
  v16 = *a3;
  v17 = *(v12 + 8 * *a3);
  v18 = *a2;
  v19 = *(v12 + 8 * *a2);
  if (*(v17 + 112) == *(v19 + 112))
  {
    result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((v17 + 16), (v19 + 16));
    if ((result & 0x80) == 0)
    {
      return result;
    }
  }

  else if (!*(v17 + 112))
  {
    return result;
  }

  *a2 = v16;
  *a3 = v18;
  v20 = *a2;
  v21 = *(v12 + 8 * *a2);
  v22 = *a1;
  v23 = *(v12 + 8 * *a1);
  if (*(v21 + 112) == *(v23 + 112))
  {
    result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((v21 + 16), (v23 + 16));
    if ((result & 0x80) == 0)
    {
      return result;
    }
  }

  else if (!*(v21 + 112))
  {
    return result;
  }

  *a1 = v20;
  *a2 = v22;
  return result;
}

uint64_t std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninJunction::addRoad(md::MuninRoadEdge const*)::$_0 &,unsigned long *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  result = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninJunction::addRoad(md::MuninRoadEdge const*)::$_0 &,unsigned long *,0>(a1, a2, a3, a4, a6);
  v13 = *a5;
  v14 = *(*a6 + 40);
  v15 = *(v14 + 8 * *a5);
  v16 = *a4;
  v17 = *(v14 + 8 * *a4);
  if (*(v15 + 112) == *(v17 + 112))
  {
    result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((v15 + 16), (v17 + 16));
    if ((result & 0x80) == 0)
    {
      return result;
    }
  }

  else if (!*(v15 + 112))
  {
    return result;
  }

  *a4 = v13;
  *a5 = v16;
  v18 = *a4;
  v19 = *(v14 + 8 * *a4);
  v20 = *a3;
  v21 = *(v14 + 8 * *a3);
  if (*(v19 + 112) == *(v21 + 112))
  {
    result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((v19 + 16), (v21 + 16));
    if ((result & 0x80) == 0)
    {
      return result;
    }
  }

  else if (!*(v19 + 112))
  {
    return result;
  }

  *a3 = v18;
  *a4 = v20;
  v22 = *a3;
  v23 = *(v14 + 8 * *a3);
  v24 = *a2;
  v25 = *(v14 + 8 * *a2);
  if (*(v23 + 112) == *(v25 + 112))
  {
    result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((v23 + 16), (v25 + 16));
    if ((result & 0x80) == 0)
    {
      return result;
    }
  }

  else if (!*(v23 + 112))
  {
    return result;
  }

  *a2 = v22;
  *a3 = v24;
  v26 = *a2;
  v27 = *(v14 + 8 * *a2);
  v28 = *a1;
  v29 = *(v14 + 8 * *a1);
  if (*(v27 + 112) == *(v29 + 112))
  {
    result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((v27 + 16), (v29 + 16));
    if ((result & 0x80) == 0)
    {
      return result;
    }
  }

  else if (!*(v27 + 112))
  {
    return result;
  }

  *a1 = v26;
  *a2 = v28;
  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninJunction::addRoad(md::MuninRoadEdge const*)::$_0 &,unsigned long *>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = a2;
  v5 = a2 - a1;
  if (v5 > 2)
  {
    switch(v5)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninJunction::addRoad(md::MuninRoadEdge const*)::$_0 &,unsigned long *,0>(a1, a1 + 1, a2 - 1, *(*a3 + 40));
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninJunction::addRoad(md::MuninRoadEdge const*)::$_0 &,unsigned long *,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninJunction::addRoad(md::MuninRoadEdge const*)::$_0 &,unsigned long *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        return 1;
    }
  }

  else
  {
    if (v5 < 2)
    {
      return 1;
    }

    if (v5 == 2)
    {
      v6 = *(a2 - 1);
      v7 = *(*a3 + 40);
      v8 = *(v7 + 8 * v6);
      v9 = *a1;
      v10 = *(v7 + 8 * *a1);
      if (*(v8 + 112) == *(v10 + 112))
      {
        if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((v8 + 16), (v10 + 16)) & 0x80) != 0)
        {
          goto LABEL_30;
        }
      }

      else if (*(v8 + 112))
      {
LABEL_30:
        *a1 = v6;
        *(v4 - 1) = v9;
      }

      return 1;
    }
  }

  v11 = a1 + 2;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninJunction::addRoad(md::MuninRoadEdge const*)::$_0 &,unsigned long *,0>(a1, a1 + 1, a1 + 2, *(*a3 + 40));
  v12 = a1 + 3;
  if (a1 + 3 == v4)
  {
    return 1;
  }

  v13 = 0;
  v14 = 0;
  v15 = *(*a3 + 40);
  v26 = v4;
  while (1)
  {
    v16 = *v12;
    v17 = *(v15 + 8 * *v12);
    v18 = *(v17 + 112);
    v19 = *v11;
    v20 = *(v15 + 8 * *v11);
    if (v18 != *(v20 + 112))
    {
      break;
    }

    if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((v17 + 16), (v20 + 16)) & 0x80) != 0)
    {
      goto LABEL_18;
    }

LABEL_26:
    v11 = v12;
    v13 += 8;
    if (++v12 == v4)
    {
      return 1;
    }
  }

  if (!*(v17 + 112))
  {
    goto LABEL_26;
  }

LABEL_18:
  v27 = v14;
  *v12 = v19;
  v21 = *(*(v15 + 8 * v16) + 112);
  v22 = v13;
  do
  {
    v23 = *(a1 + v22 + 8);
    v24 = *(v15 + 8 * v23);
    if (v21 == *(v24 + 112))
    {
      if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((v17 + 16), (v24 + 16)) & 0x80) == 0)
      {
        v11 = (a1 + v22 + 16);
        goto LABEL_25;
      }
    }

    else if (!v18)
    {
      goto LABEL_25;
    }

    --v11;
    *(a1 + v22 + 16) = v23;
    v22 -= 8;
  }

  while (v22 != -16);
  v11 = a1;
LABEL_25:
  v4 = v26;
  *v11 = v16;
  v14 = v27 + 1;
  if (v27 != 7)
  {
    goto LABEL_26;
  }

  return v12 + 1 == v26;
}

void ggl::Debug::BasePipelineSetup::~BasePipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void *ggl::Debug::BasePipelineSetup::BasePipelineSetup(void *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
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

  *a1 = &unk_1F2A39368;
  v11 = a1[17];
  v12 = *a4;
  v13 = a4[1];
  *v11 = *a4;
  v11[1] = 0;
  v14 = a1[29];
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = v14[1];
  *v14 = v12;
  v14[1] = v13;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
  }

  v16 = a1[17];
  v17 = *a5;
  v18 = a5[1];
  *(v16 + 16) = *a5;
  *(v16 + 24) = 0;
  v19 = a1[29];
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

  v20 = *(v19 + 24);
  *(v19 + 16) = v17;
  *(v19 + 24) = v18;
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v20);
  }

  v21 = a1[17];
  v22 = *a6;
  v23 = a6[1];
  *(v21 + 32) = *a6;
  *(v21 + 40) = 0;
  v24 = a1[29];
  if (v23)
  {
    atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
  }

  v25 = *(v24 + 40);
  *(v24 + 32) = v22;
  *(v24 + 40) = v23;
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v25);
  }

  return a1;
}

void ggl::Debug::ExtendedPipelineState::~ExtendedPipelineState(ggl::Debug::ExtendedPipelineState *this)
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

ggl::RenderDataHolder *ggl::Debug::ExtendedPipelineState::ExtendedPipelineState(ggl::RenderDataHolder *this, void *a2, uint64_t a3, _OWORD *a4)
{
  {
    v12 = a4;
    v14 = a2;
    v15 = a3;
    a2 = v14;
    a3 = v15;
    a4 = v12;
    if (v13)
    {
      {
        if (v13)
        {
          ggl::MeshTyped<ggl::Debug::ExtendedVbo>::typedReflection();
          ggl::Debug::ExtendedPipelineSetup::typedReflection(void)::ref = &ggl::MeshTyped<ggl::Debug::ExtendedVbo>::typedReflection(void)::r;
          unk_1EB8459F0 = &ggl::Debug::pipelineDataExtendedPipelineDeviceStructs(void)::ref;
          qword_1EB8459F8 = 0;
          {
            ggl::Debug::pipelineDataExtendedPipelineConstantStructs(void)::ref = ggl::Debug::Style::reflection(void)::reflection;
            *algn_1EB845B58 = ggl::Debug::View::reflection(void)::reflection;
            qword_1EB845B60 = ggl::Tile::Transform::reflection(void)::reflection;
          }

          qword_1EB845A00 = &ggl::Debug::pipelineDataExtendedPipelineConstantStructs(void)::ref;
          unk_1EB845A08 = xmmword_1B33B0910;
        }
      }

      ggl::Debug::ExtendedPipelineState::typedReflection(void)::ref = &ggl::Debug::ExtendedPipelineSetup::typedReflection(void)::ref;
      ggl::DebugExtendedShader::typedReflection(v13);
      qword_1EB845998 = &ggl::DebugExtendedShader::typedReflection(void)::ref;
      {
        ggl::Debug::pipelineStateExtendedPipelineAttributeStructBinding(void)::attr = 0;
        *algn_1EB845A78 = 0;
        qword_1EB845A80 = "";
        dword_1EB845A88 = 0;
        qword_1EB845A90 = &ggl::Debug::pipelineStateExtendedPipelineAttributeBinding_0(void)::attr;
        unk_1EB845A98 = 2;
      }

      qword_1EB8459A0 = &ggl::Debug::pipelineStateExtendedPipelineAttributeStructBinding(void)::attr;
      *algn_1EB8459A8 = 1;
      qword_1EB8459B0 = 0;
      unk_1EB8459B8 = 0;
      qword_1EB8459C0 = &ggl::Debug::pipelineStateExtendedPipelineDeviceStructBinding(void)::ref;
      unk_1EB8459C8 = 0;
      {
        ggl::Debug::pipelineStateExtendedPipelineConstantStructBinding(void)::ref = 0;
        *algn_1EB845AB8 = 0;
        qword_1EB845AC0 = "style";
        dword_1EB845AC8 = 3;
        qword_1EB845AD0 = &ggl::Debug::pipelineStateExtendedPipelineConstantStyleBinding(void)::reflection;
        unk_1EB845AD8 = xmmword_1B33B07A0;
        qword_1EB845AE8 = 1;
        unk_1EB845AF0 = "view";
        dword_1EB845AF8 = 3;
        qword_1EB845B00 = &ggl::Debug::pipelineStateExtendedPipelineConstantViewBinding(void)::reflection;
        unk_1EB845B08 = xmmword_1B33B0920;
        qword_1EB845B18 = 2;
        unk_1EB845B20 = "transform";
        dword_1EB845B28 = 3;
        qword_1EB845B30 = &ggl::Debug::pipelineStateExtendedPipelineConstantTransformBinding(void)::reflection;
        unk_1EB845B38 = 11;
      }

      qword_1EB8459D0 = &ggl::Debug::pipelineStateExtendedPipelineConstantStructBinding(void)::ref;
      *algn_1EB8459D8 = 3;
      a4 = v12;
      a2 = v14;
      a3 = v15;
    }
  }

  v6 = *a2;
  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *v18 = *a3;
  *&v18[16] = *(a3 + 16);
  *&v18[28] = *(a3 + 28);
  v7 = *(a3 + 44);
  v16 = *a4;
  v17 = a4[1];
  ggl::RenderDataHolder::RenderDataHolder(this);
  *this = &unk_1F2A5CF68;
  *(this + 5) = &ggl::Debug::ExtendedPipelineState::typedReflection(void)::ref;
  *(this + 6) = v6;
  *(this + 7) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  for (i = 0; i != 192; i += 48)
  {
    v10 = this + i;
    v10[64] = 0;
    *(v10 + 68) = xmmword_1B33B0760;
    *(v10 + 84) = 0;
    *(v10 + 100) = 0;
    *(v10 + 92) = 0;
  }

  *(this + 16) = v16;
  *(this + 17) = v17;
  *(this + 288) = 0;
  *(this + 45) = 0;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 46) = 0x100000001;
  *(this + 188) = 0;
  *(this + 378) = 0;
  *(this + 4) = *v18;
  *(this + 76) = *&v18[12];
  *(this + 92) = *&v18[28];
  *(this + 108) = v7;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  *this = &unk_1F2A393A0;
  *(this + 305) = 0;
  *(this + 37) = ggl::packFunctionConstantKey((this + 304), v8);
  *(this + 288) = 1;
  return this;
}

void ggl::Debug::ExtendedPipelineSetup::~ExtendedPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void *ggl::Debug::ExtendedPipelineSetup::ExtendedPipelineSetup(void *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
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

  *a1 = &unk_1F2A393C0;
  v11 = a1[17];
  v12 = *a4;
  v13 = a4[1];
  *v11 = *a4;
  v11[1] = 0;
  v14 = a1[29];
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = v14[1];
  *v14 = v12;
  v14[1] = v13;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
  }

  v16 = a1[17];
  v17 = *a5;
  v18 = a5[1];
  *(v16 + 16) = *a5;
  *(v16 + 24) = 0;
  v19 = a1[29];
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

  v20 = *(v19 + 24);
  *(v19 + 16) = v17;
  *(v19 + 24) = v18;
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v20);
  }

  v21 = a1[17];
  v22 = *a6;
  v23 = a6[1];
  *(v21 + 32) = *a6;
  *(v21 + 40) = 0;
  v24 = a1[29];
  if (v23)
  {
    atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
  }

  v25 = *(v24 + 40);
  *(v24 + 32) = v22;
  *(v24 + 40) = v23;
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v25);
  }

  return a1;
}

void ggl::Debug::LinePipelineSetup::~LinePipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::BalloonLabelPart::needsCrossfade(uint64_t a1)
{
  if (*(a1 + 631) == 1)
  {
    v1 = *(a1 + 16);
    if (v1)
    {
      v2 = atomic_load((v1 + 1328));
      LOBYTE(v1) = v2 ^ 1;
    }
  }

  else
  {
    LOBYTE(v1) = 0;
  }

  return v1 & 1;
}

uint64_t md::BalloonLabelPart::pushToRenderModel(uint64_t result, uint64_t a2, float a3)
{
  if (*(result + 612) == 1)
  {
    a3 = *(result + 608);
  }

  v5 = *(result + 576);
  v6 = *(result + 584);
  while (v5 != v6)
  {
    v7 = *v5++;
    result = (*(*v7 + 128))(v7, a2, a3);
  }

  return result;
}

void md::BalloonLabelPart::~BalloonLabelPart(md::BalloonLabelPart *this)
{
  md::CompositeLabelPart::~CompositeLabelPart(this);
  v3 = mdm::zone_mallocator::instance(v2);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v3, this);
}

md::BalloonLabelPart *md::BalloonLabelPart::BalloonLabelPart(md::BalloonLabelPart *this, md::IconLabelPart *a2, md::IconLabelPart *a3, md::IconLabelPart *a4, md::IconLabelPart *a5, md::LabelManager *a6, md::Label *a7, md::LabelStyle *a8)
{
  md::LabelPart::LabelPart(this);
  *(v13 + 592) = 0;
  *(v13 + 576) = 0u;
  *(v13 + 608) = 0;
  *(v13 + 612) = 0;
  *(v13 + 616) = 0;
  *(v13 + 624) = 0;
  *v13 = &unk_1F2A39450;
  *(v13 + 628) = 1;
  *(v13 + 632) = 1;
  md::CompositeLabelPart::addLabelPart(v13, a2);
  md::CompositeLabelPart::addLabelPart(this, a3);
  md::CompositeLabelPart::addLabelPart(this, a4);
  md::CompositeLabelPart::addLabelPart(this, a5);
  (*(*a2 + 176))(a2, 1);
  (*(*a3 + 176))(a3, 1);
  (*(*a4 + 176))(a4, 1);
  (*(*a5 + 176))(a5, 1);
  *(a2 + 715) = 2;
  *(a3 + 715) = 1;
  *(a4 + 715) = 1;
  *(this + 3) = a2;
  v14 = *(this + 2);
  if (v14)
  {
    LOBYTE(v14) = atomic_load((v14 + 1328));
  }

  *(this + 631) = v14 & 1;
  return this;
}

uint64_t md::ARWalkingManeuverArrowLabelPart::isAnimating(md::ARWalkingManeuverArrowLabelPart *this)
{
  v2 = *(this + 72);
  v3 = *(this + 73);
  if (v2 == v3)
  {
    goto LABEL_8;
  }

  v4 = v2 + 8;
  do
  {
    v5 = (*(**(v4 - 8) + 712))(*(v4 - 8));
    if (v5)
    {
      break;
    }

    v6 = v4 == v3;
    v4 += 8;
  }

  while (!v6);
  if ((v5 & 1) == 0)
  {
LABEL_8:
    v7 = *(this + 720) ^ 1;
  }

  else
  {
    v7 = 1;
  }

  return v7 & 1;
}

void md::ARWalkingManeuverArrowLabelPart::animate(md::ARWalkingManeuverArrowLabelPart *this, __n128 a2)
{
  v2 = a2.n128_u32[0];
  v4 = *(this + 72);
  v5 = *(this + 73);
  while (v4 != v5)
  {
    v6 = *v4++;
    (*(*v6 + 624))(v6, *&v2);
  }

  a2.n128_u32[0] = v2;

  md::LabelAnimator::runAnimations((this + 632), a2);
}

_DWORD *md::ARWalkingManeuverArrowLabelPart::pushToRenderModel(uint64_t a1, float a2)
{
  result = (*(***(a1 + 576) + 128))(**(a1 + 576));
  if (*(a1 + 631) == 1)
  {
    v6 = *(a1 + 576);
    result = v6[1];
    if (result)
    {
      result[200] = *(*v6 + 768);
      v7 = *(*result + 128);
      v5.n128_f32[0] = a2;

      return v7(v5);
    }
  }

  return result;
}

uint64_t md::ARWalkingManeuverArrowLabelPart::layoutForDisplay(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float32x2_t *a5)
{
  v10 = **(a1 + 576);
  v11 = *(a1 + 664);
  v12 = *(a1 + 656);
  if (0x8E38E38E38E38E39 * ((v11 - v12) >> 4) <= v10[563])
  {
    v13 = 0;
    if (v12 == v11 || (*(a1 + 721) & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v12 += 144 * v10[563];
  }

  v13 = 0;
  if (v12)
  {
    v14 = *(v12 + 88);
    if (v14)
    {
      v13.i32[1] = 0;
      v13.f32[0] = *(a1 + 728) * *(*v14 + 32 * *(v14 + 32) + 8);
      if (*(a1 + 508) == 1)
      {
        v13 = vmul_n_f32(*(a1 + 328), v13.f32[0]);
      }
    }
  }

LABEL_9:
  v35 = xmmword_1B33B0730;
  v34 = vadd_f32(*a5, v13);
  v15 = (*(*v10 + 120))(v10, a2, a3, a4, &v34);
  if (v15 == 37)
  {
    v16 = 0;
    v17 = *(a1 + 576);
    v18 = *(*v17 + 24);
    v19 = v18 + 312;
    v20 = v18 + 320;
    v21 = &v35;
    v22 = 1;
    do
    {
      v23 = v22;
      *v21 = fminf(*(v19 + 4 * v16), *v21);
      *(&v35 + v16 + 2) = fmaxf(*(&v35 + v16 + 2), *(v20 + 4 * v16));
      v21 = &v35 + 1;
      v16 = 1;
      v22 = 0;
    }

    while ((v23 & 1) != 0);
    if (*(a1 + 631) == 1 && (v24 = v17[1]) != 0)
    {
      v15 = (*(*v24 + 120))(v24, a2, a3, a4, a5);
      v25 = 0;
      v26 = *(*(*(a1 + 576) + 8) + 24);
      v27 = v26 + 312;
      v28 = v26 + 320;
      v29 = &v35;
      v30 = 1;
      do
      {
        v31 = v30;
        *v29 = fminf(*(v27 + 4 * v25), *v29);
        *(&v35 + v25 + 2) = fmaxf(*(&v35 + v25 + 2), *(v28 + 4 * v25));
        v29 = &v35 + 1;
        v25 = 1;
        v30 = 0;
      }

      while ((v31 & 1) != 0);
    }

    else
    {
      v15 = 37;
    }

    v32 = md::CollisionObject::setLocalBounds(a1 + 312, &v35);
    *(a1 + 424) = (*(*a1 + 144))(a1, v32);
  }

  return v15;
}

float md::ARWalkingManeuverArrowLabelPart::updateForDisplay(md::ARWalkingManeuverArrowLabelPart *this)
{
  v2 = *(this + 72);
  v3 = *(this + 73);
  if (v2 != v3)
  {
    do
    {
      v4 = *v2++;
      (*(*v4 + 112))(v4);
    }

    while (v2 != v3);
    v2 = *(this + 72);
  }

  result = (*(*(*v2 + 24) + 80) - *(*(*v2 + 24) + 72)) * 0.15625;
  *(this + 182) = result;
  return result;
}

uint64_t md::ARWalkingManeuverArrowLabelPart::layoutForStaging(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  result = (*(***(a1 + 576) + 80))(**(a1 + 576));
  if (result == 37)
  {
    v9 = 0;
    v10 = 0;
    v11 = *(a1 + 576);
    v12 = *(*v11 + 24);
    v13 = v12 + 9;
    v14 = v12 + 10;
    do
    {
      v15 = v14->f32[v10];
      v16 = v13->f32[v10];
      if (v9)
      {
        break;
      }

      v9 = 1;
      v10 = 1;
    }

    while (v15 >= v16);
    if (v15 < v16)
    {
      return 14;
    }

    v27 = *v13->f32;
    if (*(a1 + 631) == 1)
    {
      v17 = v11[1];
      if (v17)
      {
        v18 = vsub_f32(*v14, *v13);
        v19 = vmul_f32(vmaxnm_f32(v18, 0), 0x3E99999A3F800000);
        v20 = vmla_f32(*v13, 0x3F0000003F000000, v18);
        *&v21 = vsub_f32(v20, v19);
        *(&v21 + 1) = vadd_f32(v19, v20);
        v26 = v21;
        v22 = vmuls_lane_f32(0.85, v18, 1);
        md::AnimatedTextureLabelPart::setMeshRectForStaging(v17, &v26);
        *(v17 + 664) = v22;
        result = (*(*v17 + 80))(v17, a2, a3, a4);
        if (result != 37)
        {
          return result;
        }

        LODWORD(v27) = gm::Box<float,2>::enclosed(&v27, *(v17 + 24) + 72);
        *(&v27 + 4) = __PAIR64__(v24, v23);
        HIDWORD(v27) = v25;
      }
    }

    md::CollisionObject::setLocalBounds(a1 + 72, &v27);
    *(a1 + 280) = *a3;
    *(a1 + 284) = a3[1];
    *(a1 + 104) = *a3;
    *(a1 + 108) = a3[1];
    md::CollisionObject::setupShapeData(a1 + 72);
    *(a1 + 184) = (*(*a1 + 136))(a1);
    return 37;
  }

  return result;
}

void md::ARWalkingManeuverArrowLabelPart::~ARWalkingManeuverArrowLabelPart(md::ARWalkingManeuverArrowLabelPart *this)
{
  *this = &unk_1F2A397F0;
  v4 = (this + 688);
  std::vector<std::unique_ptr<md::LabelAnimationTrack>,geo::allocator_adapter<std::unique_ptr<md::LabelAnimationTrack>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v4);
  v4 = (this + 656);
  std::vector<md::LabelAnimation,geo::allocator_adapter<md::LabelAnimation,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v4);
  md::CompositeLabelPart::~CompositeLabelPart(this);
  v3 = mdm::zone_mallocator::instance(v2);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v3, this);
}

{
  *this = &unk_1F2A397F0;
  v2 = (this + 688);
  std::vector<std::unique_ptr<md::LabelAnimationTrack>,geo::allocator_adapter<std::unique_ptr<md::LabelAnimationTrack>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v2);
  v2 = (this + 656);
  std::vector<md::LabelAnimation,geo::allocator_adapter<md::LabelAnimation,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v2);

  md::CompositeLabelPart::~CompositeLabelPart(this);
}

void md::ARWalkingManeuverArrowLabelPart::ARWalkingManeuverArrowLabelPart(md::LabelPart *a1, uint64_t a2, uint64_t a3, void *a4, md::LabelPart *a5, char a6)
{
  md::LabelPart::LabelPart(a1);
  *(v12 + 592) = 0;
  *(v12 + 576) = 0u;
  *(v12 + 608) = 0;
  *(v12 + 612) = 0;
  *(v12 + 616) = 0;
  *(v12 + 624) = 0;
  *v12 = &unk_1F2A397F0;
  *(v12 + 628) = 1;
  *(v12 + 632) = a2;
  *(v12 + 640) = a3;
  *(v12 + 688) = 0;
  *(v12 + 696) = 0u;
  *(v12 + 720) = 0;
  *(v12 + 722) = 0;
  *(v12 + 648) = 0u;
  *(v12 + 664) = 0u;
  *(v12 + 728) = 0;
  v13 = mdm::zone_mallocator::instance(v12);
  v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v13, 0x508uLL);
  v16[0] = 0;
  v16[10] = 0;
  v15 = md::HorizontalTextLabelPart::HorizontalTextLabelPart(v14, a4, v16, 1);
  *v15 = &unk_1F2A332B8;
  *(v15 + 1272) = a6;
  md::CompositeLabelPart::addLabelPart(a1, v14);
  (*(*v14 + 832))(v14, 1);
  if (a5)
  {
    *(a1 + 631) = 1;
    md::CompositeLabelPart::addLabelPart(a1, a5);
    (*(*a5 + 832))(a5, 0);
  }

  md::LabelAnimator::setupAnimations(a1 + 632, 18, v14);
}

void sub_1B316FE30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  std::vector<std::unique_ptr<md::LabelAnimationTrack>,geo::allocator_adapter<std::unique_ptr<md::LabelAnimationTrack>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a9);
  a9 = v9 + 82;
  std::vector<md::LabelAnimation,geo::allocator_adapter<md::LabelAnimation,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a9);
  md::CompositeLabelPart::~CompositeLabelPart(v9);
  _Unwind_Resume(a1);
}

BOOL md::ElevationRaster::decodePngElevationRaster(_DWORD *data, size_t size, uint64_t a3, size_t *a4, size_t *a5)
{
  v5 = 0;
  if (!data || !size)
  {
    return v5;
  }

  if (*data != 1196314761 || data[1] != 169478669)
  {
    return 0;
  }

  if (md::ElevationRaster::decodePngElevationRaster(unsigned char const*,unsigned long,std::vector<unsigned char> &,unsigned long &,unsigned long &)::onceToken[0] != -1)
  {
    dispatch_once(md::ElevationRaster::decodePngElevationRaster(unsigned char const*,unsigned long,std::vector<unsigned char> &,unsigned long &,unsigned long &)::onceToken, &__block_literal_global_36695);
  }

  v11 = CGDataProviderCreateWithData(0, data, size, 0);
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  v13 = CGImageSourceCreateWithDataProvider(v11, md::ElevationRaster::decodePngElevationRaster(unsigned char const*,unsigned long,std::vector<unsigned char> &,unsigned long &,unsigned long &)::options);
  CGDataProviderRelease(v12);
  if (!v13)
  {
    return 0;
  }

  if (!CGImageSourceGetCount(v13))
  {
    CFRelease(v13);
    return 0;
  }

  ImageAtIndex = CGImageSourceCreateImageAtIndex(v13, 0, md::ElevationRaster::decodePngElevationRaster(unsigned char const*,unsigned long,std::vector<unsigned char> &,unsigned long &,unsigned long &)::options);
  CFRelease(v13);
  if (!ImageAtIndex)
  {
    return 0;
  }

  CGImageGetImageProvider();
  ColorSpace = CGImageGetColorSpace(ImageAtIndex);
  *a4 = CGImageGetWidth(ImageAtIndex);
  *a5 = CGImageGetHeight(ImageAtIndex);
  BytesPerRow = CGImageGetBytesPerRow(ImageAtIndex);
  BitsPerComponent = CGImageGetBitsPerComponent(ImageAtIndex);
  if (CGColorSpaceGetNumberOfComponents(ColorSpace) == 1 && (CGImageGetBitmapInfo(ImageAtIndex), v18 = CGImageProviderCopyImageBlockSetWithOptions(), CGImageBlockSetGetPixelSize(), v18))
  {
    if (CGImageBlockSetGetCount() == 1 && CGImageBlockSetGetImageBlock())
    {
      v19 = CGImageBlockGetData();
      if (CGColorSpaceGetModel(ColorSpace) == kCGColorSpaceModelIndexed)
      {
        BaseColorSpace = CGColorSpaceGetBaseColorSpace(ColorSpace);
        CGColorSpaceGetNumberOfComponents(BaseColorSpace);
        CGColorSpaceGetColorTableCount(ColorSpace);
        operator new[]();
      }

      v22 = CGImageBlockGetBytesPerRow();
      v23 = *a5;
      v24 = *a5 * BytesPerRow;
      v25 = *a3;
      v26 = *(a3 + 8) - *a3;
      if (v24 <= v26)
      {
        if (v24 < v26)
        {
          *(a3 + 8) = &v25[v24];
        }
      }

      else
      {
        std::vector<unsigned char>::__append(a3, v24 - v26);
        v25 = *a3;
        v23 = *a5;
      }

      if (v22 == BytesPerRow)
      {
        memcpy(v25, v19, v23 * BytesPerRow);
      }

      else if (v23)
      {
        v27 = 0;
        v28 = 1;
        do
        {
          memcpy(&v25[v27 * BytesPerRow], &v19[v27 * v22], BytesPerRow);
          v27 = v28;
        }

        while (*a5 > v28++);
      }

      v5 = ((BitsPerComponent - 8) & 0xFFFFFFFFFFFFFFF7) == 0;
    }

    else
    {
      v5 = 0;
    }

    CGImageBlockSetRelease();
  }

  else
  {
    v5 = 0;
  }

  CGImageRelease(ImageAtIndex);
  return v5;
}

CFDictionaryRef ___ZN2md15ElevationRaster24decodePngElevationRasterEPKhmRNSt3__16vectorIhNS3_9allocatorIhEEEERmS9__block_invoke()
{
  keys[1] = *MEMORY[0x1E69E9840];
  keys[0] = *MEMORY[0x1E695F298];
  values = *MEMORY[0x1E695E4D0];
  result = CFDictionaryCreate(0, keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  md::ElevationRaster::decodePngElevationRaster(unsigned char const*,unsigned long,std::vector<unsigned char> &,unsigned long &,unsigned long &)::options = result;
  return result;
}

void md::ElevationRaster::texture(md::ElevationRaster *this, uint64_t a2, float a3, double a4, float a5)
{
  v5 = *(a2 + 96);
  if (!v5)
  {
    v6 = *a2;
    v7 = *(a2 + 8);
    if (*a2 != v7)
    {
      v8 = *(a2 + 24);
      if (v8 == 8)
      {
        if (v6 + 1 != v7)
        {
          v12 = *v6;
          v13 = v6 + 1;
          do
          {
            v15 = *v13++;
            v14 = v15;
            if (v12 <= v15)
            {
              v12 = v14;
            }
          }

          while (v13 != v7);
        }
      }

      else if (v8 == 16)
      {
        v9 = 0;
        v10 = 0;
        v11 = v7 - v6;
        do
        {
          LOBYTE(a5) = v6[v9];
          a5 = *(a2 + 52) + (*(a2 + 48) * LODWORD(a5));
          if (v10 <= a5)
          {
            v10 = a5;
          }

          v9 += 2;
        }

        while (v9 < v11);
      }

      operator new();
    }

    v5 = 0;
  }

  v16 = *(a2 + 104);
  *this = v5;
  *(this + 1) = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }
}

double md::MuninLabelMapTile::assignWorldPointToLabel(md::MuninLabelMapTile *this, md::Label *a2)
{
  v3 = (*(**(a2 + 1) + 112))(*(a2 + 1), a2 + 48);
  v4 = md::LabelPoint::geocentricPoint(v3);
  v9 = *v4;
  v10 = *(v4 + 2);
  v8[0] = gm::Matrix<double,3,1>::normalized<int,void>(&v9);
  v8[1] = v5;
  v8[2] = v6;
  return md::Label::setWorldPoint(a2, &v9, v8, 0x100000000);
}

double md::MuninLabelMapTile::worldPointFromMercatorPoint(uint64_t a1, double *a2)
{
  v2 = *a2 * 6.28318531;
  v3 = exp(a2[1] * 6.28318531 + -3.14159265);
  v4 = atan(v3) * 2.0 + -1.57079633;
  v5 = fmod(v2, 6.28318531);
  v6 = fmod(v5 + 6.28318531, 6.28318531) + -3.14159265;
  v7 = __sincos_stret(v4);
  return 6378137.0 / sqrt(v7.__sinval * v7.__sinval * -0.00669437999 + 1.0) * v7.__cosval * __sincos_stret(v6).__cosval;
}

void md::MuninLabelMapTile::~MuninLabelMapTile(md::MuninLabelMapTile *this)
{
  md::LabelMapTile::~LabelMapTile(this);

  JUMPOUT(0x1B8C62190);
}

void md::TransitRenderLayer::updateWithContext(uint64_t a1, uint64_t **a2, md::LayoutContext *a3)
{
  v5 = *(a3 + 1);
  v6 = md::LayoutContext::get<md::CameraContext>(v5);
  v43 = gdc::Context::get<md::GeometryContext>(v5);
  v7 = md::LayoutContext::get<md::ElevationContext>(v5);
  v8 = 0.0;
  v9 = 0.0;
  if (*(a1 + 417) == 1)
  {
    v9 = v7[4];
  }

  v10 = v7[5];
  v11 = md::LayoutContext::cameraType(a3);
  v12 = 0;
  v13 = 0;
  v14 = 0;
  if (gdc::ToCoordinateSystem(v11))
  {
    v15 = gdc::CameraView::position((v6 + 475));
    v8 = md::GlobeClipPlane(*v15, v15[1], v15[2]);
    v12 = v16;
    v13 = v17;
    v14 = v18;
  }

  v19 = *a2;
  if (*a2 != a2[1])
  {
    v20 = *v19;
    v21 = v6[471] * v6[173] / (v6[171] * (*(*v19 + 80) - *(*v19 + 64)));
    *(v20 + 376) = v21;
    md::BaseMapTileDataRenderable::adjustZScale(v20, v9, v10);
    v22 = *(v20 + 392);
    *(v22 + 1360) = *(v20 + 376);
    ggl::DataAccess<ggl::Tile::View>::DataAccess(v50, *(v22 + 824), 1);
    v23 = 0;
    v24 = (v20 + 96);
    for (i = v6 + 101; ; ++i)
    {
      v26 = 0;
      v27 = v20 + 96;
      do
      {
        v28 = 0;
        v29 = 0.0;
        v30 = i;
        do
        {
          v31 = *v30;
          v30 += 4;
          v29 = v29 + *(v27 + v28) * v31;
          v28 += 8;
        }

        while (v28 != 32);
        *(&v46[2 * v26++] + v23) = v29;
        v27 += 32;
      }

      while (v26 != 4);
      if (++v23 == 4)
      {
        v32 = 0;
        v33 = v46;
        do
        {
          v35 = *v33;
          v34 = v33[1];
          v33 += 2;
          v47[v32++] = vcvt_hight_f32_f64(vcvt_f32_f64(v35), v34);
        }

        while (v32 != 4);
        v36 = v51;
        *v51 = v47[0];
        v36[1] = v47[1];
        v36[2] = v48;
        v36[3] = v49;
        *(v36 + 16) = *(v20 + 376);
        ggl::BufferMemory::~BufferMemory(v50);
        v37 = *(v22 + 856);
        ggl::BufferMemory::BufferMemory(v47);
        ggl::ResourceAccessor::accessConstantData(v46, 0, v37, 1);
        ggl::BufferMemory::operator=(v47, v46);
        ggl::BufferMemory::~BufferMemory(v46);
        for (j = 0; j != 4; ++j)
        {
          v40 = *v24;
          v39 = v24[1];
          v24 += 2;
          v46[j] = vcvt_hight_f32_f64(vcvt_f32_f64(v40), v39);
        }

        v41 = *(&v48 + 1);
        **(&v48 + 1) = v46[0];
        *(v41 + 16) = v46[1];
        *(v41 + 32) = v46[2];
        *(v41 + 48) = v46[3];
        *(v41 + 64) = v8;
        *(v41 + 68) = v12;
        *(v41 + 72) = v13;
        *(v41 + 76) = v14;
        ggl::BufferMemory::~BufferMemory(v47);
        v42 = md::LayoutContext::cameraType(a3);
        md::GeometryContext::transformConstantData(&v45, v43, (v20 + 24), v42, -1, 0.0, 0.0);
      }
    }
  }
}

uint64_t *std::__tree<std::shared_ptr<md::TransitTileData>,md::TransitTileSetCompare,std::allocator<std::shared_ptr<md::TransitTileData>>>::__emplace_unique_key_args<std::shared_ptr<md::TransitTileData>,std::shared_ptr<md::TransitTileData> const&>(uint64_t **a1, grl::IconMetricsRenderResult *a2, uint64_t *a3)
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
      v5 = v3;
      v6 = v3[4];
      if (!md::TransitTileSetCompare::operator()(a2, v6))
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_7;
      }
    }

    result = md::TransitTileSetCompare::operator()(v6, a2);
    if (!result)
    {
      return result;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

uint64_t md::TransitTileSetCompare::operator()(grl::IconMetricsRenderResult *a1, grl::IconMetricsRenderResult *a2)
{
  FillRect = grl::IconMetricsRenderResult::getFillRect(a1);
  v5 = grl::IconMetricsRenderResult::getFillRect(a2);
  if (gdc::LayerDataRequestKey::operator==(FillRect, v5))
  {
    return *(a1 + 17) < *(a2 + 17);
  }

  return gdc::LayerDataRequestKey::operator<(FillRect, v5);
}

void md::TransitRenderLayer::renderablesWillEnterView(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v3 = *(a1 + 376);
  v4 = *(v3 + 76);
  *(v3 + 76) = 0;
  v5 = *a3;
  v6 = a3[1];
  if (*a3 != v6)
  {
    do
    {
      v8 = *v5;
      std::__tree<std::shared_ptr<md::TransitTileData>,md::TransitTileSetCompare,std::allocator<std::shared_ptr<md::TransitTileData>>>::__emplace_unique_key_args<std::shared_ptr<md::TransitTileData>,std::shared_ptr<md::TransitTileData> const&>((a1 + 424), (*v5)[49], *v5 + 49);
      if (v4)
      {
        v9 = [[VKTimedAnimation alloc] initWithDuration:0.5];
        LODWORD(v10) = 30.0;
        [(VKAnimation *)v9 setFrequency:v10];
        md::TransitTileDataRenderable::setAlpha(v8[49], 0.0);
        v11 = v8[52];
        md::LabelExternalPointFeature::incident(v11);
        [objc_claimAutoreleasedReturnValue() stop];

        [(VKTimedAnimation *)v9 setTimingFunction:VKAnimationCurveLinear];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = ___ZN2md18TransitRenderLayer20transitionRenderableEPNS_25TransitTileDataRenderableEffb_block_invoke;
        v15[3] = &__block_descriptor_48_e8_v12__0f8l;
        v15[4] = v8;
        v15[5] = 0x3F80000000000000;
        [(VKTimedAnimation *)v9 setStepHandler:v15];
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = ___ZN2md18TransitRenderLayer20transitionRenderableEPNS_25TransitTileDataRenderableEffb_block_invoke_2;
        v13[3] = &__block_descriptor_44_e8_v12__0B8l;
        v13[4] = v8;
        v14 = 1065353216;
        [(VKAnimation *)v9 setCompletionHandler:v13];
        geo::_retain_ptr<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::reset((v8 + 51), v9);
        md::AnimationRunner::runAnimation(*(a1 + 400), &v9->super);
      }

      else
      {
        md::TransitTileDataRenderable::clearAnimation(v8);
        LODWORD(v12) = 1.0;
        md::TransitTileDataRenderable::setAlpha(v8[49], v12);
      }

      ++v5;
    }

    while (v5 != v6);
  }
}

void ___ZN2md18TransitRenderLayer20transitionRenderableEPNS_25TransitTileDataRenderableEffb_block_invoke_2(uint64_t a1, double a2)
{
  LODWORD(a2) = *(a1 + 40);
  md::TransitTileDataRenderable::setAlpha(*(*(a1 + 32) + 392), a2);
  v3 = *(a1 + 32) + 408;

  geo::_retain_ptr<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::reset(v3, 0);
}

uint64_t ___ZN2md18TransitRenderLayer19beginFadeOutTransitENSt3__18functionIFvvEEE_block_invoke(uint64_t result, double a2)
{
  v2 = *(*(result + 32) + 104);
  if (v2)
  {
    v3 = 1.0 - *&a2;
    do
    {
      *&a2 = v3;
      result = md::TransitTileDataRenderable::setAlpha(*(v2[16] + 392), a2);
      v2 = *v2;
    }

    while (v2);
  }

  return result;
}

void ___ZN2md18TransitRenderLayer19beginFadeOutTransitENSt3__18functionIFvvEEE_block_invoke_2(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    for (i = *(v3 + 104); i; i = *i)
    {
      md::TransitTileDataRenderable::setAlpha(*(i[16] + 392), 0.0);
    }
  }

  v5 = *(a1 + 64);
  if (v5)
  {
    (*(*v5 + 48))(v5);
    v6 = *(v3 + 376);
    v7 = *(v6 + 112);
    *(v6 + 112) = 0;
  }

  else
  {
    v8 = std::__throw_bad_function_call[abi:nn200100]();
    std::__function::__func<md::TransitRenderLayer::deactivate(BOOL)::$_0,std::allocator<md::TransitRenderLayer::deactivate(BOOL)::$_0>,void ()(void)>::operator()(v8);
  }
}

uint64_t std::__function::__func<md::TransitRenderLayer::deactivate(BOOL)::$_0,std::allocator<md::TransitRenderLayer::deactivate(BOOL)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  v1[32] = 0;
  return (*(*v1 + 48))();
}

__n128 std::__function::__func<md::TransitRenderLayer::deactivate(BOOL)::$_0,std::allocator<md::TransitRenderLayer::deactivate(BOOL)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A39D90;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t md::TransitRenderLayer::reserveStencilRange(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = *(a3 + 1);
  v5 = *(*(result + 384) + 32);
  if (v5[20] == v4 || v5[19] == v4)
  {
    result = ggl::StencilManager::reserveStencilValues(*(a2 + 24), (*(result + 49) - *(result + 48) + 1), (*(result + 376) + 152), 0);
    *(*(v3 + 376) + 72) = result - *(v3 + 48);
  }

  else if (v5[93] == v4 || v5[92] == v4)
  {
    result = ggl::StencilManager::reserveStencilValues(*(a2 + 24), (*(result + 49) - *(result + 48) + 1), (*(result + 376) + 144), 0);
    *(*(v3 + 376) + 68) = result - *(v3 + 48);
  }

  else if (v5[76] == v4 || v5[75] == v4)
  {
    result = ggl::StencilManager::reserveStencilValues(*(a2 + 24), (*(result + 49) - *(result + 48) + 1), (*(result + 376) + 136), 0);
    *(*(v3 + 376) + 64) = result - *(v3 + 48);
  }

  return result;
}

uint64_t md::TransitRenderLayer::layout(md::TransitRenderLayer *this, const md::LayoutContext *a2)
{
  v351 = *MEMORY[0x1E69E9840];
  v307 = mach_absolute_time();
  md::TransitRenderLayer::updateActiveTileDatas(this);
  v4 = *(a2 + 1);
  v5 = md::LayoutContext::get<md::SettingsContext>(v4);
  if (v5)
  {
    v6 = *v5;
    v7 = v5[1];
    if (*v5 == v7)
    {
      goto LABEL_12;
    }

    v8 = *v5;
    while (*v8 != 21)
    {
      v8 += 16;
      if (v8 == v7)
      {
        goto LABEL_12;
      }
    }

    if (v8 != v7 && *(v8 + 8))
    {
      v314 = 0;
      goto LABEL_15;
    }

LABEL_12:
    while (v6 != v7)
    {
      if (*v6 == 25)
      {
        if (v6 == v7)
        {
          break;
        }

        v9 = *(v6 + 8) == 0;
        goto LABEL_14;
      }

      v6 += 16;
    }
  }

  v9 = 1;
LABEL_14:
  v314 = v9;
LABEL_15:
  v10 = gdc::Context::get<md::StyleLogicContext>(v4);
  v340[0] = &unk_1F2A39D48;
  v340[1] = this;
  v319 = this;
  v340[3] = v340;
  md::StyleLogicContext::parseEvents(v10, v340);
  std::__function::__value_func<void ()(md::StyleManagerEvent)>::~__value_func[abi:nn200100](v340);
  v11 = gdc::Context::context<md::TransitContext>(*(a2 + 1));
  if (!v11)
  {
    goto LABEL_410;
  }

  v12 = v11;
  v13 = this;
  v14 = *(this + 44);
  *(v14 + 112) = 0;
  *(v14 + 120) = 0;
  v15 = *(this + 47);
  v316 = a2;
  if (*(v15 + 4) == 1)
  {
    v16 = +[VKDebugSettings sharedSettings];
    if ([v16 disableTransitLineMerging])
    {
      v17 = 7;
    }

    else if ([v16 disableTransitLineGroupMerging])
    {
      v17 = 4;
    }

    else
    {
      v17 = 0;
    }

    v18 = *(this + 47);
    if (*(v18 + 323) != v17)
    {
      *(v18 + 323) = v17;
      v19 = *(this + 102);
      if ((v19 + 1) > 1)
      {
        v20 = v19 + 1;
      }

      else
      {
        v20 = 1;
      }

      *(this + 102) = v20;
    }

    v21 = *(v18 + 324);
    if (v21 != [v16 disableIntraLinkTransitLineCrossings])
    {
      *(*(v319 + 47) + 324) = [v16 disableIntraLinkTransitLineCrossings];
      v22 = *(v319 + 102);
      if ((v22 + 1) > 1)
      {
        v23 = v22 + 1;
      }

      else
      {
        v23 = 1;
      }

      *(v319 + 102) = v23;
    }

    if (([v16 transitHighlighting] & 1) == 0 && (*(*(v319 + 47) + 322) & 1) == 0)
    {
      *v332 = 0;
      *&v332[8] = 0;
      md::TransitRenderLayer::setDebugHighlightedItem(v319, v332);
    }

    v24 = [v16 disableOverlayTextConsole];
    v25 = *(v319 + 47);
    *(v25 + 322) = v24;
    v26 = *(v25 + 321);
    if (v26 != [v16 paintTransitCounts])
    {
      *(*(v319 + 47) + 321) = [v16 paintTransitCounts];
      v27 = *(v319 + 102);
      if ((v27 + 1) > 1)
      {
        v28 = v27 + 1;
      }

      else
      {
        v28 = 1;
      }

      *(v319 + 102) = v28;
      *(v319 + 416) = 1;
    }

    v13 = v319;
    v15 = *(v319 + 47);
  }

  v29 = *(v15 + 96);
  if (v29)
  {
    v30 = *(*(v13 + 5) + 104);
    [v30 contentScale];
    v32 = v31;
    if (v29[66] != v32)
    {
      v29[66] = v32;
      md::TransitNodeFeaturePool::resetCache(v29);
    }

    v13 = v319;
  }

  if (*(v12 + 224) == 1)
  {
    v33 = *(v13 + 47);
    if (*(v33 + 104) == 1)
    {
      v34 = *(v33 + 56);
      v35 = *(v12 + 24);
      *&v333 = 0;
      *v332 = &v332[8];
      *&v332[8] = 0;
      for (i = 0; v35; v35 = *v35)
      {
        v37 = *&v332[8];
        v38 = &v332[8];
        if (*v332 == &v332[8])
        {
          goto LABEL_56;
        }

        v39 = *&v332[8];
        v40 = &v332[8];
        if (*&v332[8])
        {
          do
          {
            v38 = v39;
            v39 = v39[1];
          }

          while (v39);
        }

        else
        {
          do
          {
            v38 = *(v40 + 2);
            v41 = *v38 == v40;
            v40 = v38;
          }

          while (v41);
        }

        v42 = v35[2];
        if (v38[4] < v42)
        {
LABEL_56:
          if (*&v332[8])
          {
            v43 = v38;
          }

          else
          {
            v43 = &v332[8];
          }

          if (*&v332[8])
          {
            v44 = (v38 + 1);
          }

          else
          {
            v44 = &v332[8];
          }
        }

        else
        {
          v43 = &v332[8];
          v44 = &v332[8];
          if (*&v332[8])
          {
            v44 = &v332[8];
            while (1)
            {
              while (1)
              {
                v43 = v37;
                v47 = v37[4];
                if (v42 >= v47)
                {
                  break;
                }

                v37 = *v43;
                v44 = v43;
                if (!*v43)
                {
                  goto LABEL_63;
                }
              }

              if (v47 >= v42)
              {
                break;
              }

              v44 = v43 + 1;
              v37 = v43[1];
              if (!v37)
              {
                goto LABEL_63;
              }
            }
          }
        }

        if (!*v44)
        {
LABEL_63:
          v45 = mdm::zone_mallocator::instance(v11);
          v46 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__tree_node<unsigned long long,void *>>(v45);
          v46[4] = v35[2];
          *v46 = 0;
          v46[1] = 0;
          v46[2] = v43;
          *v44 = v46;
          if (**v332)
          {
            *v332 = **v332;
            v46 = *v44;
          }

          v11 = std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(*&v332[8], v46);
          i = v333 + 1;
          *&v333 = v333 + 1;
        }
      }

      if (*(v34 + 433))
      {
        v48 = (v34 + 160);
      }

      else
      {
        v48 = (v34 + 128);
      }

      if (v48[3] == i)
      {
        v51 = *v48;
        v50 = v48 + 1;
        v49 = v51;
        if (v51 == v50)
        {
LABEL_99:
          std::__tree<unsigned long long,std::less<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::destroy(*&v332[8]);
          v13 = v319;
          goto LABEL_100;
        }

        v52 = *v332;
        while (v49[4] == v52[4])
        {
          v53 = v49[1];
          v54 = v49;
          if (v53)
          {
            do
            {
              v49 = v53;
              v53 = *v53;
            }

            while (v53);
          }

          else
          {
            do
            {
              v49 = v54[2];
              v41 = *v49 == v54;
              v54 = v49;
            }

            while (!v41);
          }

          v55 = v52[1];
          if (v55)
          {
            do
            {
              v56 = v55;
              v55 = *v55;
            }

            while (v55);
          }

          else
          {
            do
            {
              v56 = v52[2];
              v41 = *v56 == v52;
              v52 = v56;
            }

            while (!v41);
          }

          v52 = v56;
          if (v49 == v50)
          {
            goto LABEL_99;
          }
        }
      }

      v57 = v34 + 168;
      std::__tree<unsigned long long,std::less<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::destroy(*(v34 + 168));
      v58 = *&v332[8];
      *(v34 + 160) = *v332;
      *(v34 + 168) = v58;
      v59 = v333;
      *(v34 + 184) = v333;
      if (v59)
      {
        *(v58 + 16) = v57;
        *v332 = &v332[8];
        *&v332[8] = 0;
        *&v333 = 0;
      }

      else
      {
        *(v34 + 160) = v57;
      }

      *(v34 + 433) = 1;
      goto LABEL_99;
    }
  }

LABEL_100:
  v60 = md::LayoutContext::get<md::CameraContext>(*(a2 + 1));
  v61 = v60;
  if (v60[1310] >= 1.0)
  {
    v62 = fmaxf(v60[770] + v60[768], 1.0);
  }

  else
  {
    md::LayoutContext::labelZoom(a2);
  }

  if (vabds_f32(v62, *(v13 + 103)) > 0.01)
  {
    *(v13 + 103) = v62;
  }

  v63 = *(v13 + 34);
  v317 = *(v13 + 35);
  v320 = v61;
  if (v63 == v317)
  {
    v64 = 0;
    v324 = 0;
    goto LABEL_221;
  }

  LOBYTE(v324) = 0;
  LOBYTE(v64) = 0;
  v326 = vdupq_n_s32(0x37800080u);
  do
  {
    v65 = *v63;
    v66 = *(*v63 + 392);
    v67 = vcvtms_s32_f32(fmaxf(v61[770] + v61[768], 1.0));
    if (v67 >= 0x17)
    {
      v67 = 23;
    }

    if (*(v66 + 1376))
    {
      v68 = 1;
    }

    else
    {
      v68 = *(v66 + 1377);
    }

    v69 = *(v13 + 102);
    v70 = *(v13 + 103);
    *(v66 + 1376) = 0;
    if (*(v66 + 1368) != v69)
    {
      v71 = *(v66 + 872);
      v72 = *(v66 + 880);
      if (v71 != v72)
      {
        v73 = 0;
        v74 = (v72 - v71 - 104) / 0x68uLL;
        v75 = vdupq_n_s64(v74);
        v76 = (v71 + 268);
        do
        {
          v77 = vdupq_n_s64(v73);
          v78 = vmovn_s64(vcgeq_u64(v75, vorrq_s8(v77, xmmword_1B33B0560)));
          if (vuzp1_s16(v78, *v75.i8).u8[0])
          {
            *(v76 - 52) = -1;
          }

          if (vuzp1_s16(v78, *&v75).i8[2])
          {
            *(v76 - 26) = -1;
          }

          if (vuzp1_s16(*&v75, vmovn_s64(vcgeq_u64(v75, vorrq_s8(v77, xmmword_1B33B0550)))).i32[1])
          {
            *v76 = -1;
            v76[26] = -1;
          }

          v73 += 4;
          v76 += 104;
        }

        while (((v74 + 4) & 0x7FFFFFFFFFFFFFCLL) != v73);
      }

      *(v66 + 1368) = v69;
      v68 = 1;
    }

    v79 = (*(v66 + 1372) != v67) | v68;
    v80 = *(v66 + 896);
    v81 = *(v66 + 904);
    while (v80 != v81)
    {
      v82 = *(v80 + 80);
      v83 = *(v80 + 88);
      while (v82 != v83)
      {
        if (*v82)
        {
          v84 = *v82 + 8;
        }

        else
        {
          v84 = 0;
        }

        if (*(v84 + 16) <= v70)
        {
          v85 = 1;
        }

        else
        {
          v85 = *(*v84 + 88);
        }

        v86 = v85 & 1;
        if (*(v84 + 56) != v86)
        {
          *(v84 + 56) = v86;
          v79 = 1;
        }

        ++v82;
      }

      v80 += 248;
    }

    v322 = v64;
    v87 = v66 + 920;
    v88 = *(v66 + 928);
    if (v88 != v66 + 920)
    {
      if (v70 >= 0x17)
      {
        v89 = 23;
      }

      else
      {
        v89 = v70;
      }

      do
      {
        if (*(v88 + 40) > v70 || *(v88 + 44) <= v70)
        {
          v92 = 0;
        }

        else
        {
          v90 = *(v88 + 24);
          if (v90)
          {
            v91 = *(v88 + 32);
            if (v91)
            {
              atomic_fetch_add_explicit(&v91->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            gss::QueryableLocker<gss::PropertyID>::QueryableLocker(v332, v90, v91);
            if (v91)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v91);
            }

            if (BYTE8(v333) == 1)
            {
              v92 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(*(*v332 + 24), 91, v89, 2u, 0);
              if (BYTE8(v333))
              {
                (*(**v332 + 56))(*v332);
              }
            }

            else
            {
              v92 = 0;
            }

            if (v333)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v333);
            }

            if (*&v332[8])
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](*&v332[8]);
            }
          }

          else
          {
            v92 = 1;
          }
        }

        if (*(v88 + 48) != v92)
        {
          *(v88 + 48) = v92;
          v79 = 1;
        }

        v88 = *(v88 + 8);
      }

      while (v88 != v87);
    }

    v93 = *(v319 + 416);
    if (v79)
    {
      v61 = v320;
    }

    else
    {
      v61 = v320;
      if ((*(v319 + 416) & 1) == 0)
      {
        v94 = md::LabelExternalPointFeature::incident(*(v65 + 416));
        v95 = v94 == 0;

        if (v95)
        {
          goto LABEL_211;
        }

        v93 = *(v319 + 416);
      }
    }

    v96 = *(v319 + 47);
    v97 = *(v96 + 323);
    v98 = md::LayoutContext::get<md::CameraContext>(*(v316 + 1));
    v99 = vcvtms_s32_f32(fmaxf(*(v98 + 3080) + *(v98 + 3072), 1.0));
    if (v99 >= 0x17)
    {
      v99 = 23;
    }

    *(v66 + 1372) = v99;
    md::TransitTileData::updateLineStyles(v66, v316, v97, v93 & 1, (v96 + 328));
    for (j = *(v66 + 928); j != v87; j = *(j + 8))
    {
      if (*(j + 48) != 1)
      {
        goto LABEL_188;
      }

      v101 = *(v66 + 1372);
      v102 = *(v66 + 1348);
      v103 = *(v66 + 1352);
      v104 = *(j + 24);
      v105 = *(j + 32);
      if (v105)
      {
        atomic_fetch_add_explicit(&v105->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v346, v104, v105);
      if (v105)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v105);
      }

      if ((v350 & 1) == 0)
      {
        goto LABEL_184;
      }

      if (v101 >= 0x17u)
      {
        v106 = 23;
      }

      else
      {
        v106 = v101;
      }

      gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v346[3], 94, v106, 2u, 0);
      v108 = v107 * 0.5;
      gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v346[3], 97, v106, 2u, 0);
      v110 = v109;
      if (v108 <= 0.0 && v109 <= 0.0)
      {
        if (v350)
        {
          (*(*v346 + 56))(v346);
        }

LABEL_184:
        if (v349)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v349);
        }

        if (v347)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v347);
        }

LABEL_188:
        v111 = 0;
        v346 = 0x100000000;
        do
        {
          ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v332, *(*(*(*(j + 72) + (*(&v346 + v111) << 7) + 48) + 136) + 32));
          v112 = v334;
          *v334 = 0;
          *(v112 + 8) = 0;
          *(v112 + 24) = 0;
          *(v112 + 16) = 0;
          ggl::BufferMemory::~BufferMemory(v332);
          v111 += 4;
        }

        while (v111 != 8);
        continue;
      }

      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v332, *(*(*(*(j + 72) + 48) + 136) + 32));
      gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v345, v346[3], 93, v106, 2u, 0, v113, v114);
      v115 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v345.i8)), v326);
      v116 = v334;
      *(v334 + 8) = v115.i32[2];
      *v116 = v115.i64[0];
      *(v116 + 12) = vmuls_lane_f32(v103, v115, 3);
      *(v116 + 24) = (v110 + v108) * v102;
      *(v116 + 16) = 0;
      *(v116 + 28) = *(**(*(j + 56) + 168) + 80);
      ggl::BufferMemory::~BufferMemory(v332);
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v332, *(*(*(*(j + 72) + 176) + 136) + 32));
      gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v345, v346[3], 92, v106, 2u, 0, v117, v118);
      v119 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v345.i8)), v326);
      v120 = v334;
      *v334 = v119.i64[0];
      *(v120 + 8) = v119.i32[2];
      *(v120 + 12) = vmuls_lane_f32(v103, v119, 3);
      *(v120 + 24) = v108 * v102;
      *(v120 + 16) = 0;
      *(v120 + 28) = *(**(*(j + 64) + 168) + 80);
      ggl::BufferMemory::~BufferMemory(v332);
      if (v350 == 1)
      {
        (*(*v346 + 56))(v346);
      }

      if (v349)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v349);
      }

      if (v347)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v347);
      }
    }

    v121 = *(v66 + 952);
    v122 = *(v66 + 960);
    while (v121 != v122)
    {
      (*(**v121 + 48))(*v121, *(v66 + 1378));
      v121 += 2;
    }

    v123 = *(v66 + 1232);
    if (v123 && *(v66 + 1378) == 1)
    {
      v124 = *(v66 + 952);
      v125 = *(v66 + 960);
      while (v124 != v125)
      {
        v126 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((v123 + 32), *(*(*v124 + 8) + 40));
        if (v126)
        {
          v127 = v126[3];
          v128 = v127[5];
          if (v127[4] == v128)
          {
            v129 = 5;
          }

          else
          {
            v129 = *(*(v128 - 16) + 61);
          }

          atomic_store(v129, (v127[2] + 25));
          atomic_store(v127[4] != v127[5], (v127[2] + 24));
        }

        v124 += 16;
      }
    }

    *(v66 + 1378) = 0;
LABEL_211:
    v130 = v324 || *(v66 + 1080) != 0;
    v324 = v130;
    v13 = v319;
    v64 = v322 || *(v66 + 1072) || *(v66 + 1224) != 0;
    ++v63;
  }

  while (v63 != v317);
LABEL_221:
  *(v13 + 416) = 0;
  v131 = v316;
  v132 = md::LayoutContext::get<md::CameraContext>(*(v316 + 1));
  v133 = *(gdc::Camera::cameraFrame(v132) + 32);
  *(v13 + 420) = v314;
  if (v133 <= 0.0)
  {
    v134 = 0;
    *(v13 + 419) = 0;
  }

  else
  {
    if (*(v13 + 417) == 1)
    {
      v134 = vcvtms_s32_f32(fmaxf(v320[770] + v320[768], 1.0)) > 0xD;
    }

    else
    {
      v134 = **(v316 + 93);
    }

    *(v13 + 419) = v134;
  }

  *(v13 + 421) = v134 & v314 & 1;
  if (*(*(v13 + 47) + 4) == 1)
  {
    v135 = +[VKDebugSettings sharedSettings];
    v136 = [v135 disableTransitLineDrawing];

    v13 = v319;
    v131 = v316;
    if (v136 == 1)
    {
      goto LABEL_378;
    }
  }

  if (!v64 && !v324)
  {
    goto LABEL_378;
  }

  v137 = v64;
  v138 = *(*(v13 + 5) + 24);
  v139 = *(v13 + 46);
  v140 = 38;
  if (v139 == 1)
  {
    v140 = 40;
  }

  v141 = *(*(v13 + 48) + 8);
  v142 = *(v141 + v140);
  v143 = *(v138 + 8);
  v144 = md::FrameGraph::renderQueueForPass(v143, *(v141 + v140));
  if (v144)
  {
    v145 = *(*(v144 + 16) + 8 * (v142 >> 8));
  }

  else
  {
    v145 = 0;
  }

  v146 = 184;
  if (v139 == 1)
  {
    v146 = 186;
  }

  v147 = *(v141 + v146);
  v148 = md::FrameGraph::renderQueueForPass(v143, *(v141 + v146));
  if (v148)
  {
    v149 = *(*(v148 + 16) + 8 * (v147 >> 8));
  }

  else
  {
    v149 = 0;
  }

  v150 = 150;
  if (v139 == 1)
  {
    v150 = 152;
  }

  v151 = *(v141 + v150);
  v152 = md::FrameGraph::renderQueueForPass(v143, *(v141 + v150));
  if (v152)
  {
    v153 = *(*(v152 + 16) + 8 * (v151 >> 8));
  }

  else
  {
    v153 = 0;
  }

  v13 = v319;
  v154 = *(v319 + 421);
  *(v319 + 418) = v154;
  if (!v154)
  {
    v153 = v149;
  }

  v313 = v153;
  if (*(v319 + 420))
  {
    v155 = v145;
  }

  else
  {
    v155 = 0;
  }

  v308 = v155;
  if (!v324)
  {
    if (!v137)
    {
      goto LABEL_261;
    }

    goto LABEL_255;
  }

  if (*(v319 + 420))
  {
    v156 = *(*(v319 + 47) + 72);
    v332[0] = 0;
    v339 = 0;
    md::CartographicTiledVectorRenderLayer<md::TransitTileDataRenderable>::layoutStencilTiles(v319, v131, v145, v156, v332);
    v157 = *(*(v319 + 47) + 152);
    if (v157)
    {
      *(v145 + 4) = v157;
    }
  }

  if (v137 || (*(v319 + 420) & 1) == 0)
  {
LABEL_255:
    v158 = 68;
    if (*(v319 + 418))
    {
      v158 = 64;
    }

    v159 = *(*(v319 + 47) + v158);
    v332[0] = 0;
    v339 = 0;
    md::CartographicTiledVectorRenderLayer<md::TransitTileDataRenderable>::layoutStencilTiles(v319, v131, v313, v159, v332);
    v160 = 144;
    if (*(v319 + 418))
    {
      v160 = 136;
    }

    v161 = *(*(v319 + 47) + v160);
    if (v161)
    {
      *(v313 + 32) = v161;
    }
  }

LABEL_261:
  if (*(v319 + 34) != *(v319 + 35))
  {
    v162 = *(v319 + 47);
    if (*(v319 + 419) == 1)
    {
      if (*(v319 + 360))
      {
        v311 = v162[6];
        if ((*(v319 + 421) & 1) == 0)
        {
          v163 = v162[5];
          goto LABEL_273;
        }

LABEL_269:
        v315 = 0;
      }

      else
      {
        v311 = v162[2];
        if (*(v319 + 421))
        {
          goto LABEL_269;
        }

        v163 = v162[3];
LABEL_273:
        v315 = v163;
      }
    }

    else
    {
      v315 = 0;
      if (*(v319 + 360))
      {
        v164 = v162[4];
      }

      else
      {
        v164 = v162[1];
      }

      v311 = v164;
    }

    v165 = *md::LayoutContext::get<md::SharedResourcesContext>(*(v131 + 1));
    v166 = *[v165 highInflationAlphaAtlas];
    v167 = +[VKDebugSettings sharedSettings];
    [v167 ribbonCrispness];
    v169 = v168;

    v170 = *(v319 + 34);
    v309 = *(v319 + 35);
    if (v170 != v309)
    {
      v171 = v169 * v166;
      do
      {
        v312 = v170;
        v172 = *(*v170 + 392);
        v173 = 68;
        if (*(v319 + 418))
        {
          v173 = 64;
        }

        v327 = *(v172 + 169);
        k = (*(*(v319 + 47) + v173) + v327);
        v328 = k;
        if (*(v172 + 1072) || *(v172 + 1080))
        {
          ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v332, *(v172 + 1136));
          *(v334 + 16) = v171;
          ggl::BufferMemory::~BufferMemory(v332);
          ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v332, *(v172 + 1152));
          *(v334 + 16) = v171;
          ggl::BufferMemory::~BufferMemory(v332);
          v175 = *(v172 + 1072);
          if (v175)
          {
            v176 = v175[1];
            v177 = v175[2];
            while (v176 != v177)
            {
              v178 = *v176;
              ggl::Batcher::reset((*v176 + 528));
              v179 = *(v178 + 608);
              if (v179)
              {
                do
                {
                  if (v179[1])
                  {
                    v180 = 0;
                    v181 = v179 + 2;
                    v182 = v179 + 2;
                    v183 = (v179 + 2);
                    do
                    {
                      v184 = *v183;
                      v183 += 15;
                      (*v184)(v182);
                      ++v180;
                      v181 += 15;
                      v182 = v183;
                    }

                    while (v180 < v179[1]);
                  }

                  v179[1] = 0;
                  v179 = *v179;
                }

                while (v179);
                v185 = *(v178 + 608);
              }

              else
              {
                v185 = 0;
              }

              *(v178 + 616) = v185;
              ++v176;
            }

            v175[7] = v311;
            v175[8] = v311;
            v175[9] = v315;
            v175[10] = v315;
            k = v328;
            v346 = &unk_1F2A39D00;
            v347 = v328;
            v348 = v313;
            v349 = &v346;
            v186 = v175[1];
            v187 = v175[2];
            while (v186 != v187)
            {
              v188 = *v186;
              std::__function::__value_func<void ()(md::Ribbons::TransitRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](v332, &v346);
              md::Ribbons::RibbonBatch<md::Ribbons::TransitRibbonDescriptor>::collectRenderItemsForPassesNoReset(v188, 3u, v332);
              std::__function::__value_func<void ()(md::Ribbons::TransitRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v332);
              ++v186;
            }

            std::__function::__value_func<void ()(md::Ribbons::TransitRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](&v346);
            if (v315)
            {
              v346 = &unk_1F2A39D00;
              v347 = v328;
              v348 = v313;
              v349 = &v346;
              v190 = v175[1];
              v189 = v175[2];
              while (v190 != v189)
              {
                v191 = *v190;
                std::__function::__value_func<void ()(md::Ribbons::TransitRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](v332, &v346);
                md::Ribbons::RibbonBatch<md::Ribbons::TransitRibbonDescriptor>::collectRenderItemsForPassesNoReset(v191, 0xCu, v332);
                std::__function::__value_func<void ()(md::Ribbons::TransitRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v332);
                ++v190;
              }

              std::__function::__value_func<void ()(md::Ribbons::TransitRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](&v346);
            }
          }
        }

        v192 = *(v172 + 1080);
        if (!v192)
        {
          goto LABEL_325;
        }

        v193 = v192[1];
        v194 = v192[2];
        while (v193 != v194)
        {
          v195 = *v193;
          ggl::Batcher::reset((*v193 + 528));
          v196 = *(v195 + 608);
          if (v196)
          {
            do
            {
              if (v196[1])
              {
                v197 = 0;
                v198 = v196 + 2;
                v199 = v196 + 2;
                v200 = (v196 + 2);
                do
                {
                  v201 = *v200;
                  v200 += 15;
                  (*v201)(v199);
                  ++v197;
                  v198 += 15;
                  v199 = v200;
                }

                while (v197 < v196[1]);
              }

              v196[1] = 0;
              v196 = *v196;
            }

            while (v196);
            v202 = *(v195 + 608);
          }

          else
          {
            v202 = 0;
          }

          *(v195 + 616) = v202;
          ++v193;
        }

        v192[7] = v311;
        v192[8] = v311;
        v192[9] = v315;
        v192[10] = v315;
        if (v308)
        {
          v203 = (*(*(v319 + 47) + 72) + v327);
          v346 = &unk_1F2A39D00;
          v347 = v203;
          v348 = v308;
          v349 = &v346;
          v204 = v192[1];
          v205 = v192[2];
          for (k = v328; v204 != v205; ++v204)
          {
            v206 = *v204;
            std::__function::__value_func<void ()(md::Ribbons::TransitRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](v332, &v346);
            md::Ribbons::RibbonBatch<md::Ribbons::TransitRibbonDescriptor>::collectRenderItemsForPassesNoReset(v206, 3u, v332);
            std::__function::__value_func<void ()(md::Ribbons::TransitRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v332);
          }

          std::__function::__value_func<void ()(md::Ribbons::TransitRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](&v346);
          if (!v315)
          {
            goto LABEL_325;
          }

          v346 = &unk_1F2A39D00;
          v347 = v203;
          v348 = v308;
          v349 = &v346;
          v208 = v192[1];
          v207 = v192[2];
          while (v208 != v207)
          {
            v209 = *v208;
            std::__function::__value_func<void ()(md::Ribbons::TransitRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](v332, &v346);
            md::Ribbons::RibbonBatch<md::Ribbons::TransitRibbonDescriptor>::collectRenderItemsForPassesNoReset(v209, 0xCu, v332);
            std::__function::__value_func<void ()(md::Ribbons::TransitRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v332);
            ++v208;
          }
        }

        else
        {
          k = v328;
          v346 = &unk_1F2A39D00;
          v347 = v328;
          v348 = v313;
          v349 = &v346;
          v210 = v192[1];
          v211 = v192[2];
          while (v210 != v211)
          {
            v212 = *v210;
            std::__function::__value_func<void ()(md::Ribbons::TransitRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](v332, &v346);
            md::Ribbons::RibbonBatch<md::Ribbons::TransitRibbonDescriptor>::collectRenderItemsForPassesNoReset(v212, 3u, v332);
            std::__function::__value_func<void ()(md::Ribbons::TransitRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v332);
            ++v210;
          }

          std::__function::__value_func<void ()(md::Ribbons::TransitRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](&v346);
          if (!v315)
          {
            goto LABEL_325;
          }

          v346 = &unk_1F2A39D00;
          v347 = v328;
          v348 = v313;
          v349 = &v346;
          v214 = v192[1];
          v213 = v192[2];
          while (v214 != v213)
          {
            v215 = *v214;
            std::__function::__value_func<void ()(md::Ribbons::TransitRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](v332, &v346);
            md::Ribbons::RibbonBatch<md::Ribbons::TransitRibbonDescriptor>::collectRenderItemsForPassesNoReset(v215, 0xCu, v332);
            std::__function::__value_func<void ()(md::Ribbons::TransitRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v332);
            ++v214;
          }
        }

        std::__function::__value_func<void ()(md::Ribbons::TransitRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](&v346);
LABEL_325:
        v216 = *(v172 + 1224);
        if (v216)
        {
          v216[7] = v311;
          v216[8] = v311;
          v341 = &unk_1F2A39DD8;
          v342 = v310 & 0xFFFFFFFF00000000 | k;
          v310 = v342;
          v343 = v313;
          v344 = &v341;
          v218 = v216[1];
          v217 = v216[2];
          v321 = v217;
          while (v218 != v217)
          {
            v219 = *v218;
            std::__function::__value_func<void ()(md::TransitDisplayConnectionRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](&v345, &v341);
            if (*(v219 + 400) == 1)
            {
              ggl::Batcher::reset((v219 + 272));
              v220 = *(v219 + 352);
              if (v220)
              {
                do
                {
                  if (v220[1])
                  {
                    v221 = 0;
                    v222 = v220 + 2;
                    v223 = v220 + 2;
                    v224 = (v220 + 2);
                    do
                    {
                      v225 = *v224;
                      v224 += 15;
                      (*v225)(v223);
                      ++v221;
                      v222 += 15;
                      v223 = v224;
                    }

                    while (v221 < v220[1]);
                  }

                  v220[1] = 0;
                  v220 = *v220;
                }

                while (v220);
                v226 = *(v219 + 352);
              }

              else
              {
                v226 = 0;
              }

              *(v219 + 360) = v226;
              std::__function::__value_func<void ()(md::TransitDisplayConnectionRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](&v346, &v345);
              if (*(v219 + 400) == 1)
              {
                v318 = v218;
                memset(&v331, 0, sizeof(v331));
                std::vector<unsigned int>::reserve(&v331, 5uLL);
                v228 = 0;
                v229 = 0;
                v230 = v219 + 16;
                v231 = 1;
                do
                {
                  v232 = v231;
                  v233 = v230 + (v228 << 7);
                  if (*(v233 + 120) == 1)
                  {
                    *v332 = v228;
                    std::vector<unsigned int>::push_back[abi:nn200100](&v331, v332);
                    v234 = *(*(v219 + 8) + 8 * v228 + 56);
                    *(v233 + 24) = v234;
                    v229 |= *(v234 + 58) == 1;
                  }

                  v231 = 0;
                  v228 = 1;
                }

                while ((v232 & 1) != 0);
                begin = v331.__begin_;
                if (v331.__begin_ != v331.__end_)
                {
                  v237 = *(v219 + 376);
                  v236 = *(v219 + 384);
                  if (v237 == v236)
                  {
                    v238 = 0;
                  }

                  else
                  {
                    v238 = 0;
                    v239 = 16;
                    if (v229)
                    {
                      v239 = 32;
                    }

                    v323 = *(v219 + 384);
                    v325 = v239;
                    do
                    {
                      v240 = *v237;
                      if (*(*v237 + 48) == 1)
                      {
                        if (*(v240 + 88) != v238)
                        {
                          v329 = v238;
                          if (v238)
                          {
                            v241 = ggl::Batcher::commit((v219 + 272), 0xC8u, v227);
                            if (v241[1] != *v241)
                            {
                              v243 = v331.__begin_;
                              end = v331.__end_;
                              if (v331.__begin_ != v331.__end_)
                              {
                                v244 = v241;
                                do
                                {
                                  v245 = *v243;
                                  *v332 = &off_1F2A5D8B8;
                                  v246 = v230 + (v245 << 7);
                                  v247 = *(v246 + 8);
                                  v248 = *(v246 + 24);
                                  v334 = *(v246 + 40);
                                  v333 = v248;
                                  *&v332[8] = v247;
                                  v249 = *(v246 + 56);
                                  v250 = *(v246 + 72);
                                  v251 = *(v246 + 88);
                                  v338 = *(v246 + 104);
                                  v337 = v251;
                                  v336 = v250;
                                  v335 = v249;
                                  v252 = *(v219 + 360);
                                  v253 = v252[1];
                                  if (v253 == *(v219 + 368))
                                  {
                                    v252 = *v252;
                                    if (!v252)
                                    {
                                      v252 = malloc_type_malloc(120 * v253 + 16, 0x1020040EDED9539uLL);
                                      *v252 = 0;
                                      v252[1] = 0;
                                      **(v219 + 360) = v252;
                                    }

                                    *(v219 + 360) = v252;
                                    v253 = v252[1];
                                  }

                                  v254 = &v252[15 * v253];
                                  v252[1] = v253 + 1;
                                  v254[2] = &off_1F2A5D8B8;
                                  v255 = *&v332[8];
                                  v256 = v333;
                                  *(v254 + 7) = v334;
                                  *(v254 + 5) = v256;
                                  *(v254 + 3) = v255;
                                  v257 = v335;
                                  v258 = v336;
                                  v259 = v337;
                                  *(v254 + 15) = v338;
                                  *(v254 + 13) = v259;
                                  *(v254 + 11) = v258;
                                  *(v254 + 9) = v257;
                                  ggl::RenderItem::~RenderItem(v332);
                                  v254[10] = v329;
                                  v260 = *v244;
                                  v254[13] = *v244;
                                  v254[14] = (v244[1] - v260) >> 4;
                                  std::function<void ()(md::TransitDisplayConnectionRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(v349, v245, (v254 + 2));
                                  ++v243;
                                  v230 = v219 + 16;
                                }

                                while (v243 != end);
                              }
                            }
                          }

                          v240 = *v237;
                          v238 = *(*v237 + 88);
                          v236 = v323;
                        }

                        ggl::Batcher::addRange(v219 + 272, (v240 + v325));
                      }

                      ++v237;
                    }

                    while (v237 != v236);
                    begin = v331.__begin_;
                  }

                  v261 = ggl::Batcher::commit((v219 + 272), 0xC8u, v227);
                  if (v261[1] != *v261)
                  {
                    v262 = v331.__end_;
                    if (begin != v331.__end_)
                    {
                      v263 = v261;
                      v330 = v238;
                      do
                      {
                        v264 = *begin;
                        *v332 = &off_1F2A5D8B8;
                        v265 = v230 + (v264 << 7);
                        v266 = *(v265 + 8);
                        v267 = *(v265 + 24);
                        v334 = *(v265 + 40);
                        v333 = v267;
                        *&v332[8] = v266;
                        v268 = *(v265 + 56);
                        v269 = *(v265 + 72);
                        v270 = *(v265 + 88);
                        v338 = *(v265 + 104);
                        v337 = v270;
                        v336 = v269;
                        v335 = v268;
                        v271 = *(v219 + 360);
                        v272 = v271[1];
                        if (v272 == *(v219 + 368))
                        {
                          v271 = *v271;
                          if (!v271)
                          {
                            v271 = malloc_type_malloc(120 * v272 + 16, 0x1020040EDED9539uLL);
                            *v271 = 0;
                            v271[1] = 0;
                            **(v219 + 360) = v271;
                          }

                          *(v219 + 360) = v271;
                          v272 = v271[1];
                        }

                        v273 = &v271[15 * v272];
                        v271[1] = v272 + 1;
                        v273[2] = &off_1F2A5D8B8;
                        v274 = *&v332[8];
                        v275 = v333;
                        *(v273 + 7) = v334;
                        *(v273 + 5) = v275;
                        *(v273 + 3) = v274;
                        v276 = v335;
                        v277 = v336;
                        v278 = v337;
                        *(v273 + 15) = v338;
                        *(v273 + 13) = v278;
                        *(v273 + 11) = v277;
                        *(v273 + 9) = v276;
                        ggl::RenderItem::~RenderItem(v332);
                        v273[10] = v330;
                        v279 = *v263;
                        v273[13] = *v263;
                        v273[14] = (v263[1] - v279) >> 4;
                        std::function<void ()(md::TransitDisplayConnectionRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(v349, v264, (v273 + 2));
                        ++begin;
                      }

                      while (begin != v262);
                      begin = v331.__begin_;
                    }
                  }
                }

                v218 = v318;
                if (begin)
                {
                  v331.__end_ = begin;
                  operator delete(begin);
                }
              }

              std::__function::__value_func<void ()(md::TransitDisplayConnectionRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](&v346);
            }

            std::__function::__value_func<void ()(md::TransitDisplayConnectionRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](&v345);
            ++v218;
            v217 = v321;
          }

          std::__function::__value_func<void ()(md::TransitDisplayConnectionRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](&v341);
        }

        v170 = v312 + 8;
      }

      while (v312 + 8 != v309);
    }

    ggl::CommandBuffer::sortRenderItems(*(v313 + 72), *(v313 + 80));
    v13 = v319;
    v131 = v316;
  }

LABEL_378:
  v280 = *(v13 + 47);
  v281 = md::LayoutContext::get<md::CameraContext>(*(v131 + 1));
  if (v281)
  {
    for (m = 0; m != 128; m += 8)
    {
      *(v280 + 160 + m) = *(v281 + 5384 + m);
    }

    [*v131 sizeInPixels];
    *&v283 = v283;
    *&v284 = v284;
    *(v280 + 288) = LODWORD(v283);
    *(v280 + 292) = LODWORD(v284);
    *(v280 + 296) = 1;
    v285 = *(v319 + 47);
    v286 = *(v285 + 304);
    if (v286)
    {
      if (!(*(*v286 + 24))(v286) || (v287 = *(v319 + 34), v288 = *(v319 + 35), v287 == v288))
      {
LABEL_387:
        *v332 = 0;
        *&v332[8] = 0;
        md::TransitRenderLayer::setDebugHighlightedItem(v319, v332);
        v285 = *(v319 + 47);
        v289 = *(v285 + 304);
      }

      else
      {
        v285 = *(v319 + 47);
        v289 = *(v285 + 304);
        while (*(*v287 + 392) != **(v289 + 8))
        {
          v287 += 8;
          if (v287 == v288)
          {
            goto LABEL_387;
          }
        }
      }

      if (v289)
      {
        goto LABEL_390;
      }
    }

    if (*(v285 + 321))
    {
LABEL_390:
      v290 = 1;
    }

    else
    {
      if (*(v285 + 320) != 1)
      {
        goto LABEL_410;
      }

      v290 = 0;
    }

    v291 = md::LayoutContext::debugConsoleForId(v131, 4);
    v292 = md::LayoutContext::debugConsoleForId(v131, 5);
    if (v291)
    {
      v293 = v292;
      if (v292)
      {
        if ((v290 & 1) == 0 && *(*(v319 + 47) + 320) == 1)
        {
          ggl::DebugConsole::begin(v291);
        }

        [*(*(v319 + 5) + 104) contentScale];
        v294 = md::LayoutContext::cameraType(v131);
        gdc::ToCoordinateSystem(v294);
        v295 = *(*(v319 + 47) + 288);
        v296 = *(v131 + 4);
        v297 = *(v131 + 5);
        if (v297)
        {
          v298 = 1;
          atomic_fetch_add_explicit(&v297->__shared_owners_, 1uLL, memory_order_relaxed);
          v299 = *(v296 + 64);
          v296 = *(v131 + 4);
          v300 = *(v131 + 5);
          if (v300)
          {
            v298 = 0;
            atomic_fetch_add_explicit(&v300->__shared_owners_, 1uLL, memory_order_relaxed);
          }
        }

        else
        {
          v300 = 0;
          v299 = *(v296 + 64);
          v298 = 1;
        }

        v301 = v299;
        v302 = *(v296 + 72);
        *v332 = 2.0 / v295.f32[0];
        *&v332[12] = 0;
        *&v332[4] = 0;
        *&v332[20] = 2.0 / v295.f32[1];
        v303 = v301 + -1.0;
        if (!v302)
        {
          v303 = 1.0 - v301;
        }

        v333 = 0uLL;
        *&v334 = v303 * 0.5;
        DWORD1(v334) = 0;
        *(&v334 + 1) = vdiv_f32(vneg_f32(v295), v295);
        *&v335 = (v301 * 0.5) + 0.5;
        DWORD1(v335) = 1065353216;
        if ((v298 & 1) == 0)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v300);
        }

        if (v297)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v297);
        }

        ggl::DebugConsole::setProjection(v293, v332);
        ggl::DebugConsole::begin(v293);
      }
    }
  }

  else
  {
    *(v280 + 296) = 0;
  }

LABEL_410:
  v304 = mach_absolute_time();
  v305 = v304 - v307;
  result = ggl::Performance::Counters::instance(v304);
  atomic_fetch_add((*(result + 32) + 128), v305);
  return result;
}