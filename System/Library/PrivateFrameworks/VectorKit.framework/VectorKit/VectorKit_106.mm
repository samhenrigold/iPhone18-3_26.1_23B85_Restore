void sub_1B2F664B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  ggl::BufferMemory::~BufferMemory(&a50);
  std::__hash_table<std::__hash_value_type<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>,std::__unordered_map_hasher<std::pair<signed char,BOOL>,std::__hash_value_type<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>,md::RenderedCirclePairHash,std::equal_to<std::pair<signed char,BOOL>>,true>,std::__unordered_map_equal<std::pair<signed char,BOOL>,std::__hash_value_type<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>,std::equal_to<std::pair<signed char,BOOL>>,md::RenderedCirclePairHash,true>,std::allocator<std::__hash_value_type<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>>>::~__hash_table(&a35);
  if (STACK[0x2C0])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](STACK[0x2C0]);
  }

  _Unwind_Resume(a1);
}

ggl::zone_mallocator *md::COverlayRenderLayer::layoutResourceForGlobe(uint64_t a1, std::__shared_weak_count *a2, uint64_t a3, uint64_t a4, md::LayoutContext *this, uint64_t a6, uint64_t a7, int a8, uint64_t a9, char a10)
{
  v12 = this;
  v17 = *(a3 + 392);
  v180 = *(v17 + 169) + a8;
  md::LayoutContext::frameState(this);
  a2[6].__vftable = *(v18 + 624);
  result = md::LayoutContext::get<md::CameraContext>(*(v12 + 1));
  v179 = result;
  if (a2->__vftable)
  {
    if (*(v17 + 168) == 255)
    {
      v91 = ggl::FragmentedPool<ggl::RenderItem>::pop(*(*(a1 + 360) + 344));
      v93 = *(a1 + 360);
      if (a10)
      {
        v94 = v12;
        v95 = a2->__vftable;
        v96 = (v93 + 8 * LOBYTE(a2->__vftable[2].~__shared_weak_count) + 48);
      }

      else
      {
        v94 = v12;
        if (*(a7 + 132) == 1)
        {
          v131 = 2 * (*(a1 + 348) == 0);
        }

        else
        {
          v131 = 0;
        }

        v95 = a2->__vftable;
        v96 = (v93 + 16 * v131 + 8 * LOBYTE(a2->__vftable[2].~__shared_weak_count));
      }

      v132 = *v96;
      on_zero_shared_weak = v95[1].__on_zero_shared_weak;
      *v187 = v95[1].__get_deleter;
      *&v187[8] = on_zero_shared_weak;
      v134 = v95;
      if (on_zero_shared_weak)
      {
        atomic_fetch_add_explicit(&on_zero_shared_weak->__shared_owners_, 1uLL, memory_order_relaxed);
        v134 = a2->__vftable;
      }

      v135 = v134[1].~__shared_weak_count;
      v183 = v134->__on_zero_shared_weak;
      v184 = v135;
      if (v135)
      {
        atomic_fetch_add_explicit(&v135->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      LOWORD(v186[0]) = 257;
      BYTE2(v186[0]) = md::CameraContext::isSplinedEnabled(v179, v92);
      md::COverlayRenderLayer::drapeOnTerrainIfNecessary(a1, *(v94 + 1), a9, a10, v180, v17 + 168, v95, v91, v132, v187, &v183, (a3 + 224), (a3 + 240), v186);
      if (v135)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v135);
      }

      if (on_zero_shared_weak)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](on_zero_shared_weak);
      }

      *v187 = v91;
      v126 = (a4 + 72);
      v127 = v187;
      return std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100](v126, v127);
    }

    v20 = *(a3 + 25);
    v21 = *(a3 + 28);
    v22 = *(a3 + 24);
    ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v183, *(*(a1 + 360) + 360));
    v23 = 0;
    v24 = (v179 + 552);
    do
    {
      v26 = *v24;
      v25 = v24[1];
      v24 += 2;
      *&v187[v23] = vcvt_hight_f32_f64(vcvt_f32_f64(v26), v25);
      v23 += 16;
    }

    while (v23 != 64);
    v27 = v185;
    *v185 = *v187;
    v27[1] = *&v187[16];
    v27[2] = *&v187[32];
    v27[3] = *&v187[48];
    ggl::BufferMemory::~BufferMemory(&v183);
    v28 = *(gdc::ServiceLocator::resolve<md::ConfigSettingProvider>(**(v12 + 2), *(*(v12 + 2) + 8)) + 160);
    v29 = ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v187, *(*(a1 + 360) + 376));
    v30 = -v28;
    v31 = *&v187[40];
    **&v187[40] = 0;
    *(v31 + 8) = 1065353216;
    *(v31 + 12) = v30;
    ggl::BufferMemory::~BufferMemory(v29);
    v33 = ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v32, *(*(a1 + 360) + 392));
    v34 = *&v187[40];
    **&v187[40] = 0;
    *(v34 + 8) = -1082130432;
    *(v34 + 12) = v30;
    ggl::BufferMemory::~BufferMemory(v33);
    v36 = ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v35, *(*(a1 + 360) + 408));
    **&v187[40] = xmmword_1B33B0720;
    ggl::BufferMemory::~BufferMemory(v36);
    v37 = 0;
    memset(&v187[40], 0, 32);
    v188 = 0;
    v191 = 0u;
    v190 = 0u;
    memset(&v187[8], 0, 32);
    *v187 = 0x415854A640000000;
    *&v187[40] = 0x415854A640000000;
    v192 = 0x3FF0000000000000;
    v189 = 0x41583FC4141C97D0;
    v38 = (v179 + 3160);
    do
    {
      v39 = 0;
      v40 = v187;
      do
      {
        v41 = 0;
        v42 = 0.0;
        v43 = v38;
        do
        {
          v44 = *v43;
          v43 += 4;
          v42 = v42 + *&v40[v41] * v44;
          v41 += 8;
        }

        while (v41 != 32);
        *&(&(&v183)[4 * v39++])[v37] = v42;
        v40 += 32;
      }

      while (v39 != 4);
      ++v37;
      ++v38;
    }

    while (v37 != 4);
    v45 = 0;
    v46 = &v183;
    do
    {
      v48 = *v46;
      v47 = *(v46 + 1);
      v46 += 4;
      v186[v45++] = vcvt_hight_f32_f64(vcvt_f32_f64(v48), v47);
    }

    while (v45 != 4);
    v49 = ggl::FragmentedPool<ggl::RenderItem>::pop(*(*(a1 + 360) + 344));
    v50 = *(a1 + 360);
    v49[3] = v50[12];
    v49[8] = v50[44];
    v51 = v50[55];
    v52 = v51[1];
    if (v52 == *v51)
    {
      v97 = v51[11];
      if (!v97)
      {
        goto LABEL_137;
      }

      v53 = (*(*v97 + 48))(v97);
      v182[0] = v53;
    }

    else
    {
      v53 = *(v52 - 8);
      v182[0] = v53;
      v51[1] = v52 - 8;
    }

    std::vector<ggl::Textured::PoleTexturedBlendPipelineSetup *,geo::allocator_adapter<ggl::Textured::PoleTexturedBlendPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v51 + 4), v182);
    v183 = v53;
    v98 = v51[15];
    if (v98)
    {
      v99 = vrev64_s32(v21);
      (*(*v98 + 48))(v98, &v183);
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v183, *(*(v53 + 136) + 16));
      v100 = v185;
      *(v185 + 80) = v22;
      *v100 = v186[0];
      *(v100 + 16) = v186[1];
      *(v100 + 32) = v186[2];
      *(v100 + 48) = v186[3];
      v101.i64[0] = v99.u32[0];
      v101.i64[1] = v99.u32[1];
      v102 = vadd_s32(v99, 0x100000001);
      __asm { FMOV            V3.2D, #1.0 }

      v108 = vdivq_f64(_Q3, vdupq_lane_s64(COERCE__INT64((1 << v20)), 0));
      v109 = vmulq_f64(vcvtq_f64_u64(v101), v108);
      v101.i64[0] = v102.u32[0];
      v101.i64[1] = v102.u32[1];
      *&v109.f64[0] = vcvt_f32_f64(v109);
      *(v100 + 64) = vsub_f32(vcvt_f32_f64(vmulq_f64(vcvtq_f64_u64(v101), v108)), *&v109.f64[0]);
      *(v100 + 72) = v109.f64[0];
      ggl::BufferMemory::~BufferMemory(&v183);
      v110 = 408;
      if (v22 == 5)
      {
        v110 = 392;
      }

      if (v22 == 2)
      {
        v110 = 376;
      }

      v111 = (*(a1 + 360) + v110);
      v112 = *(v53 + 136);
      *(v112 + 40) = 0;
      v113 = *v111;
      *(v112 + 32) = *v111;
      v114 = *(v53 + 232);
      v115 = v111[1];
      if (v115)
      {
        atomic_fetch_add_explicit((v115 + 8), 1uLL, memory_order_relaxed);
      }

      v116 = *(v114 + 40);
      *(v114 + 32) = v113;
      *(v114 + 40) = v115;
      if (v116)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v116);
      }

      v118 = a2->__on_zero_shared_weak;
      v117 = a2->__vftable[1].~__shared_weak_count;
      if (v117)
      {
        atomic_fetch_add_explicit(&v117->__shared_owners_, 1uLL, memory_order_relaxed);
        **(v53 + 168) = v118;
        std::__shared_weak_count::__release_shared[abi:nn200100](v117);
      }

      else
      {
        **(v53 + 168) = v118;
      }

      v119 = *(a1 + 360);
      v120 = *(v119 + 432);
      v183 = *(v119 + 424);
      v184 = v120;
      if (v120)
      {
        atomic_fetch_add_explicit(&v120->__shared_owners_, 1uLL, memory_order_relaxed);
        ggl::PipelineSetup::setState(v53, &v183);
        std::__shared_weak_count::__release_shared[abi:nn200100](v120);
      }

      else
      {
        ggl::PipelineSetup::setState(v53, &v183);
      }

      get_deleter = a2->__vftable[1].__get_deleter;
      v122 = a2->__vftable[1].__on_zero_shared_weak;
      if (v122)
      {
        atomic_fetch_add_explicit(&v122->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v123 = *(v53 + 136);
      *(v123 + 48) = get_deleter;
      *(v123 + 56) = 0;
      v124 = *(v53 + 232);
      v125 = *(v124 + 56);
      *(v124 + 48) = 0;
      *(v124 + 56) = 0;
      if (v125)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v125);
      }

      if (v122)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v122);
      }

      v49[4] = v53;
      *(v49 + 10) = v180;
      v49[6] = a9;
      ggl::RenderItem::assertValid(v49);
      v183 = v49;
      v126 = (a4 + 72);
      v127 = &v183;
      return std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100](v126, v127);
    }

LABEL_137:
    v166 = std::__throw_bad_function_call[abi:nn200100]();
    if (a2)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](a2);
    }

    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v22);
    }

    _Unwind_Resume(v166);
  }

  v181 = a1;
  v172 = v17;
  if (a2[3].__shared_weak_owners_)
  {
    LODWORD(v186[0]) = *a2[4].__shared_weak_owners_;
    *v187 = v186;
    result = std::__hash_table<std::__hash_value_type<unsigned int,md::COverlayRenderLayer::KeyframeState>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,md::COverlayRenderLayer::KeyframeState>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,md::COverlayRenderLayer::KeyframeState>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,md::COverlayRenderLayer::KeyframeState>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((a1 + 400), v186[0], v187);
    shared_weak_owners = a2[3].__shared_weak_owners_;
    v55 = *shared_weak_owners;
    v177 = shared_weak_owners[1];
    if (*shared_weak_owners != v177)
    {
      v175 = *(result + 10);
      v171 = *(result + 11);
      v56 = *(result + 6);
      v57 = 168;
      if (a10)
      {
        v57 = 176;
      }

      v168 = v57;
      v169 = a4;
      v170 = v12;
      do
      {
        v58 = *(v55 + 64);
        v59 = a9;
        v60 = 1.0 - v56;
        if (v58 == v175 || v58 == v171 && (v59 = a9 + 1, v60 = v56, v56 > 0.0))
        {
          md::OverlayTileData::OverlayTileResource::RasterTile::setAlphaMultiplier(v55, v60);
          md::OverlayTileData::OverlayTileResource::RasterTile::updateWithContext(v55, *(v12 + 1), *(a3 + 56));
          v68 = ggl::FragmentedPool<ggl::RenderItem>::pop(*(*(a1 + 360) + 344));
          if (*v55)
          {
            v173 = v59;
            ggl::FragmentedPool<ggl::Textured::SRGBBlendColormappedPos2DUVPipelineSetup>::pop(*(*(a1 + 360) + 312), v61, v62, v63, v64, v65, v66, v67, v167);
            v71 = v70;
            v73 = *(v55 + 120);
            v72 = *(v55 + 128);
            if (v72)
            {
              atomic_fetch_add_explicit(&v72->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v74 = *(v55 + 16);
            v75 = *(v55 + 24);
            if (v75)
            {
              atomic_fetch_add_explicit(&v75->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v76 = *(a1 + 360);
            v78 = *(v76 + 248);
            v77 = *(v76 + 256);
            if (v77)
            {
              atomic_fetch_add_explicit(&v77->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(*(v70 + 136), *(v70 + 232), *(a3 + 224), *(a3 + 232));
            ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(*(v71 + 136), *(v71 + 232), *(a3 + 240), *(a3 + 248));
            ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setGlyphOptionsConstantData(*(v71 + 136), *(v71 + 232), v73, v72);
            **(v71 + 168) = v74;
            if (v77)
            {
              atomic_fetch_add_explicit(&v77->__shared_owners_, 1uLL, memory_order_relaxed);
              ggl::GlobeAtmosphere::BasePipelineSetup::setState(v71, v78, v77);
              std::__shared_weak_count::__release_shared[abi:nn200100](v77);
            }

            else
            {
              ggl::GlobeAtmosphere::BasePipelineSetup::setState(v71, v78, 0);
            }

            a4 = v169;
            a1 = v181;
            if (*(v181 + 394) == 1)
            {
              v82 = *(v71 + 136);
              *(v82 + 64) = *(*(v181 + 360) + v168);
              *(v82 + 72) = 0;
              v83 = *(v71 + 232);
              v84 = *(v83 + 72);
              *(v83 + 64) = 0;
              *(v83 + 72) = 0;
              if (v84)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v84);
              }
            }

            if (v77)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v77);
            }

            if (v75)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v75);
            }

            v17 = v172;
            if (v72)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v72);
            }

            *(*(v71 + 168) + 8) = *v55;
            TileScalar = md::COverlayRenderLayer::getTileScalar(*(*(v181 + 360) + 448), (a3 + 24), (v55 + 32));
            v86 = *(v71 + 136);
            *(v86 + 32) = TileScalar;
            *(v86 + 40) = 0;
            v87 = *(v71 + 232);
            v88 = *(v87 + 40);
            *(v87 + 32) = 0;
            *(v87 + 40) = 0;
            v12 = v170;
            if (v88)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v88);
            }

            v89 = *(v181 + 360);
            v90 = *(v89 + 96);
            v68[8] = *(v89 + 80);
            v68[3] = v90;
            v68[4] = v71;
            v68[6] = v173;
            *(v68 + 10) = v180;
          }

          else
          {
            v79 = *(*(a1 + 360) + 96);
            v80 = *(v55 + 128);
            *v187 = *(v55 + 120);
            *&v187[8] = v80;
            if (v80)
            {
              atomic_fetch_add_explicit(&v80->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v81 = *(v55 + 24);
            v183 = *(v55 + 16);
            v184 = v81;
            if (v81)
            {
              atomic_fetch_add_explicit(&v81->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            LOWORD(v182[0]) = 1;
            BYTE2(v182[0]) = md::CameraContext::isSplinedEnabled(v179, v69);
            md::COverlayRenderLayer::drapeOnTerrainIfNecessary(a1, *(v12 + 1), a9, a10, v180, v17 + 168, v55 + 32, v68, v79, v187, &v183, (a3 + 224), (a3 + 240), v182);
            if (v81)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v81);
            }

            if (v80)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v80);
            }

            *v187 = v68;
            std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((a4 + 72), v187);
          }

          *v187 = v68;
          result = std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((a4 + 72), v187);
        }

        v55 += 144;
      }

      while (v55 != v177);
    }

    return result;
  }

  v128 = a2[4].__vftable;
  if (!v128)
  {
    return result;
  }

  v129 = *(v17 + 24);
  if (v129 > 0x46)
  {
    if (v129 == 72)
    {
      v130 = 104;
    }

    else
    {
      if (v129 != 71)
      {
        return result;
      }

      v130 = 88;
    }
  }

  else if (v129 == 11)
  {
    v130 = 80;
  }

  else
  {
    if (v129 != 12)
    {
      return result;
    }

    v130 = 96;
  }

  v176 = *(a6 + v130);
  if (v176)
  {
    v136 = v128->~__shared_weak_count;
    if (v128->~__shared_weak_count_0 != v128->~__shared_weak_count)
    {
      v137 = 0;
      v174 = a2;
      while (1)
      {
        v178 = v137;
        v138 = *(a2[4].__shared_weak_owners_ + 4 * v137);
        *&v187[4] = *(v17 + 172);
        *v187 = *(v17 + 168);
        *&v187[16] = *(v17 + 184);
        v187[24] = *(v17 + 192);
        *&v187[32] = v138;
        result = std::__hash_table<std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>,std::__unordered_map_hasher<md::SurfaceKey,std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>,md::SurfaceKeyHash,md::SurfaceKeyEqual,true>,std::__unordered_map_equal<md::SurfaceKey,std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>,md::SurfaceKeyEqual,md::SurfaceKeyHash,true>,std::allocator<std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>>>::find<md::SurfaceKey>(v176, v187);
        if (result)
        {
          result = std::__hash_table<std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>,std::__unordered_map_hasher<md::SurfaceKey,std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>,md::SurfaceKeyHash,md::SurfaceKeyEqual,true>,std::__unordered_map_equal<md::SurfaceKey,std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>,md::SurfaceKeyEqual,md::SurfaceKeyHash,true>,std::allocator<std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>>>::find<md::SurfaceKey>(v176, v187);
          if (!result)
          {
            abort();
          }

          v139 = *(result + 9);
          if (v139)
          {
            break;
          }
        }

LABEL_134:
        v137 = v178 + 1;
        v17 = v172;
        a2 = v174;
        v165 = v174[4].__vftable;
        v136 = v165->~__shared_weak_count;
        if (v178 + 1 >= 0x8E38E38E38E38E39 * ((v165->~__shared_weak_count_0 - v165->~__shared_weak_count) >> 4))
        {
          return result;
        }
      }

      v140 = 0;
      v141 = (v136 + 144 * v178);
      while (v140 != *(v141 + 4))
      {
LABEL_130:
        v139 = *v139;
        ++v140;
        if (!v139)
        {
          goto LABEL_134;
        }
      }

      v142 = ggl::FragmentedPool<ggl::RenderItem>::pop(*(*(a1 + 360) + 344));
      ggl::FragmentedPool<ggl::Textured::SRGBBlendPos2DUVPipelineSetup>::pop(*(*(a1 + 360) + 304), v143, v144, v145, v146, v147, v148, v149, v167);
      v152 = v151;
      v183 = *(v141 + 14);
      v153 = *(v141 + 15);
      v184 = v153;
      if (v153)
      {
        atomic_fetch_add_explicit(&v153->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v154 = v139[4];
      *&v186[0] = v139[3];
      *(&v186[0] + 1) = v154;
      if (v154)
      {
        atomic_fetch_add_explicit(&v154->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      isSplinedEnabled = md::CameraContext::isSplinedEnabled(v179, v150);
      v156 = 200;
      if (isSplinedEnabled)
      {
        v156 = 216;
      }

      v157 = (*(v181 + 360) + v156);
      v158 = v157[1];
      v182[0] = *v157;
      v182[1] = v158;
      if (v158)
      {
        atomic_fetch_add_explicit(&v158->__shared_owners_, 1uLL, memory_order_relaxed);
        md::COverlayRenderLayer::setTexturePipeline<ggl::Textured::SRGBBlendPos2DUVPipelineSetup,ggl::Textured::SRGBBlendPos2DUVPipelineState>(v181, v152, *(a3 + 224), *(a3 + 232), (a3 + 240), &v183, v186, a10, v182);
        std::__shared_weak_count::__release_shared[abi:nn200100](v158);
        if (!v154)
        {
LABEL_125:
          if (v153)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v153);
          }

          a1 = v181;
          v159 = *(v181 + 360);
          v160 = *(v159 + 96);
          v142[8] = *(v159 + 80);
          v142[3] = v160;
          v142[4] = v152;
          v142[6] = a9;
          *(v142 + 10) = v180;
          v161 = md::COverlayRenderLayer::getTileScalar(*(v159 + 448), (a3 + 24), v141);
          v162 = *(v152 + 136);
          *(v162 + 32) = v161;
          *(v162 + 40) = 0;
          v163 = *(v152 + 232);
          v164 = *(v163 + 40);
          *(v163 + 32) = 0;
          *(v163 + 40) = 0;
          if (v164)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v164);
          }

          v183 = v142;
          result = std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((a4 + 72), &v183);
          goto LABEL_130;
        }
      }

      else
      {
        md::COverlayRenderLayer::setTexturePipeline<ggl::Textured::SRGBBlendPos2DUVPipelineSetup,ggl::Textured::SRGBBlendPos2DUVPipelineState>(v181, v152, *(a3 + 224), *(a3 + 232), (a3 + 240), &v183, v186, a10, v182);
        if (!v154)
        {
          goto LABEL_125;
        }
      }

      std::__shared_weak_count::__release_shared[abi:nn200100](v154);
      goto LABEL_125;
    }
  }

  return result;
}

void md::COverlayRenderLayer::layoutResource(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, md::LayoutContext *this, uint64_t a6, uint64_t a7, int a8, float a9, uint64_t a10, float *a11, char a12)
{
  v18 = a12;
  v479 = *MEMORY[0x1E69E9840];
  v424 = a4;
  v419 = *(a3 + 392);
  v19 = *(v419 + 169);
  md::LayoutContext::frameState(this);
  v20 = a2;
  a2[18] = *(v21 + 624);
  v414 = a2;
  if (*(a1 + 394) == 1)
  {
    v22 = (fminf(a9, 0.4) * -1.25) + 1.0;
    if (v18)
    {
      v23 = v22;
    }

    else
    {
      v23 = 1.0;
    }

    ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&__y, *(*(a1 + 360) + 176));
    *v436 = v23;
    ggl::BufferMemory::~BufferMemory(&__y);
    v20 = a2;
  }

  v421 = v19 + a8;
  *(a7 + 133) = v18;
  v422 = v18;
  v423 = a1;
  if (*v20)
  {
    v24 = ggl::FragmentedPool<ggl::RenderItem>::pop(*(*(a1 + 360) + 344));
    v25 = *(a1 + 360);
    if (v18)
    {
      v26 = *a2;
      v27 = (v25 + 8 * *(*a2 + 80) + 48);
    }

    else
    {
      v68 = *(a7 + 132) == 1 && *(a1 + 348) == 0;
      v26 = *a2;
      v27 = (v25 + 16 * v68 + 8 * *(*a2 + 80));
    }

    v69 = *v27;
    v70 = a10;
    v71 = *(v26 + 72);
    __y = *(v26 + 64);
    v432 = v71;
    v72 = v26;
    if (v71)
    {
      atomic_fetch_add_explicit(&v71->__shared_owners_, 1uLL, memory_order_relaxed);
      v72 = *a2;
    }

    v73 = *(v72 + 40);
    __p.__r_.__value_.__r.__words[0] = *(v72 + 32);
    __p.__r_.__value_.__l.__size_ = v73;
    if (v73)
    {
      atomic_fetch_add_explicit(&v73->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    LOWORD(v461) = 256;
    BYTE2(v461) = 0;
    md::COverlayRenderLayer::drapeOnTerrainIfNecessary(a1, *(this + 1), v70, v18, v421, v419 + 168, v26, v24, v69, &__y, &__p, (a3 + 224), (a3 + 240), &v461);
    if (v73)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v73);
    }

    if (v71)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v71);
    }

    __y = v24;
    std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v424 + 72), &__y);
    return;
  }

  if (v20[11])
  {
    LODWORD(v474) = *v20[14];
    __y = &v474;
    v28 = std::__hash_table<std::__hash_value_type<unsigned int,md::COverlayRenderLayer::KeyframeState>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,md::COverlayRenderLayer::KeyframeState>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,md::COverlayRenderLayer::KeyframeState>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,md::COverlayRenderLayer::KeyframeState>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((a1 + 400), v474, &__y);
    v29 = a2[11];
    v31 = *v29;
    v30 = v29[1];
    v32 = a1;
    if (*v29 == v30)
    {
      return;
    }

    v33 = *(v28 + 10);
    v415 = *(v28 + 11);
    v34 = *(v28 + 6);
    v35 = 168;
    if (v18)
    {
      v35 = 176;
    }

    *v411 = v35;
    while (1)
    {
      v36 = *(v31 + 64);
      if (v36 == v33)
      {
        break;
      }

      if (v36 == v415 && v34 > 0.0)
      {
        v37 = a10 + 1;
        v38 = v34;
        goto LABEL_19;
      }

LABEL_49:
      v31 += 144;
      if (v31 == v30)
      {
        return;
      }
    }

    v37 = a10;
    v38 = 1.0 - v34;
LABEL_19:
    md::OverlayTileData::OverlayTileResource::RasterTile::setAlphaMultiplier(v31, v38);
    v46 = ggl::FragmentedPool<ggl::RenderItem>::pop(*(*(v32 + 360) + 344));
    v49 = *(v423 + 360);
    if (v422)
    {
      v50 = (v49 + 8 * *(v31 + 140) + 48);
    }

    else
    {
      v50 = (v49 + 16 * *(a7 + 132) + 8 * *(v31 + 140));
    }

    v51 = *v50;
    if (*v31)
    {
      ggl::FragmentedPool<ggl::Textured::SRGBBlendColormappedPos2DUVPipelineSetup>::pop(*(v49 + 312), v39, v40, v41, v42, v43, v44, v45, v405);
      v53 = v52;
      v54 = *(v31 + 72);
      v55 = *(v31 + 80);
      if (v55)
      {
        atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
        v56 = (v52 + 136);
        v57 = (v52 + 232);
        ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(*(v52 + 136), *(v52 + 232), v54, v55);
        std::__shared_weak_count::__release_shared[abi:nn200100](v55);
      }

      else
      {
        v56 = (v52 + 136);
        v57 = (v52 + 232);
        ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(*(v52 + 136), *(v52 + 232), v54, 0);
      }

      ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(*v56, *v57, *(v31 + 88), *(v31 + 96));
      v61 = *(v31 + 120);
      v62 = *(v31 + 128);
      if (v62)
      {
        atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
        ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setGlyphOptionsConstantData(*v56, *v57, v61, v62);
        std::__shared_weak_count::__release_shared[abi:nn200100](v62);
      }

      else
      {
        ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setGlyphOptionsConstantData(*v56, *v57, v61, 0);
      }

      v64 = *(v31 + 16);
      v63 = *(v31 + 24);
      if (v63)
      {
        atomic_fetch_add_explicit(&v63->__shared_owners_, 1uLL, memory_order_relaxed);
        **(v53 + 168) = v64;
        std::__shared_weak_count::__release_shared[abi:nn200100](v63);
      }

      else
      {
        **(v53 + 168) = v64;
      }

      *(*(v53 + 168) + 8) = *v31;
      ggl::GlobeAtmosphere::BasePipelineSetup::setState(v53, *(*(v423 + 360) + 232), *(*(v423 + 360) + 240));
      if (*(v423 + 394) == 1)
      {
        v65 = *v56;
        *(v65 + 64) = *(*(v423 + 360) + *v411);
        *(v65 + 72) = 0;
        v66 = *v57;
        v67 = *(*v57 + 72);
        *(v66 + 64) = 0;
        *(v66 + 72) = 0;
        if (v67)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v67);
        }
      }

      v46[8] = *(*(v423 + 360) + 64);
      v46[3] = v51;
      v46[4] = v53;
      v46[6] = v37;
      *(v46 + 10) = v421;
    }

    else
    {
      gdc::Tiled::Tiled(&__y, (v31 + 32), v47, v48);
      v58 = *(v31 + 128);
      __p.__r_.__value_.__r.__words[0] = *(v31 + 120);
      __p.__r_.__value_.__l.__size_ = v58;
      if (v58)
      {
        atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v59 = *(v31 + 24);
      *&v461 = *(v31 + 16);
      *(&v461 + 1) = v59;
      if (v59)
      {
        atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v60 = *(v31 + 80);
      v477.__r_.__value_.__r.__words[0] = *(v31 + 72);
      v477.__r_.__value_.__l.__size_ = v60;
      if (v60)
      {
        atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      LOWORD(v473[0]) = 0;
      BYTE2(v473[0]) = 0;
      md::COverlayRenderLayer::drapeOnTerrainIfNecessary(v423, *(this + 1), v37, v422, v421, v419 + 168, v31 + 32, v46, v51, &__p, &v461, &v477, (v31 + 88), v473);
      if (v60)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v60);
      }

      if (v59)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v59);
      }

      if (v58)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v58);
      }
    }

    __y = v46;
    std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v424 + 72), &__y);
    v32 = v423;
    goto LABEL_49;
  }

  v74 = v20[12];
  if (!v74)
  {
    if (v20[1])
    {
      md::COverlayRenderLayer::layoutRibbon<md::Ribbons::PolylineOverlayRibbonDescriptor>(*(a1 + 368), v20 + 1, v424, a7, v421, a10, 0, 0, v18 ^ 1);
      return;
    }

    if (v20[2])
    {
      md::COverlayRenderLayer::layoutRibbon<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>(*(a1 + 368), v20 + 2, v424, a7, v421, a10, 0, 0, v18 ^ 1);
      return;
    }

    v95 = v20[9];
    if (v95)
    {
      v96 = *(this + 1);
      v97 = md::LayoutContext::get<md::ElevationContext>(v96);
      v98 = *(gdc::Context::get<md::StyleLogicContext>(v96) + 22) - 3;
      if (*(v97 + 4) <= 0.01)
      {
        v99 = *(v97 + 3);
      }

      else
      {
        v99 = 0;
      }

      md::COverlayRenderLayer::layoutRibbon<md::Ribbons::PolylineOverlayRibbonDescriptor>(*(a1 + 368), v95, v424, a7, v421, a10, v98 < 0xFFFFFFFE, v99 & 1, v18 ^ 1);
      return;
    }

    v100 = v20[10];
    if (v100)
    {
      v101 = *(this + 1);
      v102 = md::LayoutContext::get<md::ElevationContext>(v101);
      v103 = *(gdc::Context::get<md::StyleLogicContext>(v101) + 22) - 3;
      if (*(v102 + 4) <= 0.01)
      {
        v104 = *(v102 + 3);
      }

      else
      {
        v104 = 0;
      }

      md::COverlayRenderLayer::layoutRibbon<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>(*(a1 + 368), v100, v424, a7, v421, a10, v103 < 0xFFFFFFFE, v104 & 1, v18 ^ 1);
      return;
    }

    v105 = v20[3];
    if (v105)
    {
      v106 = a11;
      v108 = *v105;
      v107 = v105[1];
      if (v107)
      {
        atomic_fetch_add_explicit(&v107->__shared_owners_, 1uLL, memory_order_relaxed);
        v105 = v20[3];
      }

      v109 = *(v105 + 16) + *(a3 + 56);
      if (v18)
      {
        v110 = 256;
      }

      else
      {
        v110 = 0;
      }

      LOWORD(v473[0]) = v110 & 0xFF00 | v109;
      __y = v473;
      v111 = std::__hash_table<std::__hash_value_type<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>,std::__unordered_map_hasher<std::pair<signed char,BOOL>,std::__hash_value_type<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>,md::RenderedCirclePairHash,std::equal_to<std::pair<signed char,BOOL>>,true>,std::__unordered_map_equal<std::pair<signed char,BOOL>,std::__hash_value_type<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>,std::equal_to<std::pair<signed char,BOOL>>,md::RenderedCirclePairHash,true>,std::allocator<std::__hash_value_type<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>>>::__emplace_unique_key_args<std::pair<signed char,BOOL>,std::piecewise_construct_t const&,std::tuple<std::pair<signed char,BOOL> const&>,std::tuple<>>(v106, v109, HIBYTE(v110), &__y);
      v112 = 0x9DDFEA08EB382D69 * ((8 * (v108 & 0x1FFFFFFF) + 8) ^ HIDWORD(v108));
      v113 = 0x9DDFEA08EB382D69 * (HIDWORD(v108) ^ (v112 >> 47) ^ v112);
      v114 = 0x9DDFEA08EB382D69 * (v113 ^ (v113 >> 47));
      v115 = v111[4];
      if (v115)
      {
        v116 = vcnt_s8(v115);
        v116.i16[0] = vaddlv_u8(v116);
        if (v116.u32[0] > 1uLL)
        {
          v117 = v114;
          if (v114 >= *&v115)
          {
            v117 = v114 % *&v115;
          }
        }

        else
        {
          v117 = v114 & (*&v115 - 1);
        }

        v264 = v111[3][v117];
        if (v264)
        {
          for (i = *v264; i; i = *i)
          {
            v266 = i[1];
            if (v266 == v114)
            {
              if (i[2] == v108)
              {
                v274 = 0;
                goto LABEL_284;
              }
            }

            else
            {
              if (v116.u32[0] > 1uLL)
              {
                if (v266 >= *&v115)
                {
                  v266 %= *&v115;
                }
              }

              else
              {
                v266 &= *&v115 - 1;
              }

              if (v266 != v117)
              {
                break;
              }
            }
          }
        }
      }

      v274 = 1;
LABEL_284:
      __y = v473;
      std::__hash_table<std::__hash_value_type<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>,std::__unordered_map_hasher<std::pair<signed char,BOOL>,std::__hash_value_type<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>,md::RenderedCirclePairHash,std::equal_to<std::pair<signed char,BOOL>>,true>,std::__unordered_map_equal<std::pair<signed char,BOOL>,std::__hash_value_type<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>,std::equal_to<std::pair<signed char,BOOL>>,md::RenderedCirclePairHash,true>,std::allocator<std::__hash_value_type<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>>>::__emplace_unique_key_args<std::pair<signed char,BOOL>,std::piecewise_construct_t const&,std::tuple<std::pair<signed char,BOOL> const&>,std::tuple<>>(v106, v473[0], BYTE1(v473[0]), &__y);
      if (v274)
      {
        __y = v473;
        v267 = std::__hash_table<std::__hash_value_type<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>,std::__unordered_map_hasher<std::pair<signed char,BOOL>,std::__hash_value_type<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>,md::RenderedCirclePairHash,std::equal_to<std::pair<signed char,BOOL>>,true>,std::__unordered_map_equal<std::pair<signed char,BOOL>,std::__hash_value_type<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>,std::equal_to<std::pair<signed char,BOOL>>,md::RenderedCirclePairHash,true>,std::allocator<std::__hash_value_type<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>>>::__emplace_unique_key_args<std::pair<signed char,BOOL>,std::piecewise_construct_t const&,std::tuple<std::pair<signed char,BOOL> const&>,std::tuple<>>(v106, v473[0], BYTE1(v473[0]), &__y);
        v268 = v267[4];
        if (v268)
        {
          v269 = vcnt_s8(v268);
          v269.i16[0] = vaddlv_u8(v269);
          if (v269.u32[0] > 1uLL)
          {
            v270 = v114;
            if (v114 >= *&v268)
            {
              v270 = v114 % *&v268;
            }
          }

          else
          {
            v270 = v114 & (*&v268 - 1);
          }

          v271 = v267[3][v270];
          if (v271)
          {
            for (j = *v271; j; j = *j)
            {
              v273 = j[1];
              if (v273 == v114)
              {
                if (j[2] == v108)
                {
                  v275 = 0;
                  v276 = *(*(a1 + 360) + 320);
                  *(v108 + 56) = v276;
                  v277 = 1;
                  do
                  {
                    v278 = 0;
                    v279 = v277;
                    v280 = 1;
                    v281 = v108 + 104 + 16 * v275;
                    do
                    {
                      v282 = v280;
                      v283 = *(v281 + 8 * v278);
                      v284 = *(v276 + 8);
                      __y = *v276;
                      v432 = v284;
                      if (v284)
                      {
                        atomic_fetch_add_explicit(&v284->__shared_owners_, 1uLL, memory_order_relaxed);
                        ggl::PipelineSetup::setState(v283, &__y);
                        std::__shared_weak_count::__release_shared[abi:nn200100](v284);
                      }

                      else
                      {
                        ggl::PipelineSetup::setState(v283, &__y);
                      }

                      v280 = 0;
                      v278 = 1;
                    }

                    while ((v282 & 1) != 0);
                    v277 = 0;
                    v275 = 1;
                  }

                  while ((v279 & 1) != 0);
                  *(v108 + 48) = a8;
                  v285 = md::LayoutContext::get<md::CameraContext>(*(this + 1));
                  v286 = v285;
                  v287 = *(v108 + 8);
                  v288 = *(v108 + 24);
                  v289 = v109;
                  v290 = *v108 + v289;
                  v291 = *(v108 + 16) + v289;
                  if (v109)
                  {
                    v292 = v291;
                  }

                  else
                  {
                    v292 = *(v108 + 16);
                  }

                  if (v109)
                  {
                    v293 = v290;
                  }

                  else
                  {
                    v293 = *v108;
                  }

                  v294 = (v108 + 16 * (v109 != 0));
                  if (v422)
                  {
                    v295 = v294[18];
                    v296 = *(*(v108 + 56) + 32);
                  }

                  else
                  {
                    v297 = *(v423 + 348);
                    v298 = gdc::Camera::cameraFrame(v285);
                    v295 = v294[17];
                    v299 = *(v108 + 56);
                    if (*(v298 + 32) > 0.0 && v297 == 0)
                    {
                      v296 = *(v299 + 24);
                    }

                    else
                    {
                      v296 = *(v299 + 16);
                    }
                  }

                  *(v295 + 24) = v296;
                  v301 = 0;
                  v453 = 0u;
                  v302 = (v286 + 808);
                  v455 = 0;
                  v457 = 0;
                  v454 = 0u;
                  v452 = 0u;
                  *&__p.__r_.__value_.__r.__words[1] = 0u;
                  *&__p.__r_.__value_.__l.__data_ = v292 - v293;
                  *&v453 = v288 - v287;
                  v456 = v292 - v293;
                  v458 = v293;
                  v459 = v287;
                  v460 = xmmword_1B33B0740;
                  do
                  {
                    v303 = 0;
                    p_p = &__p;
                    do
                    {
                      v305 = 0;
                      v306 = 0.0;
                      v307 = v302;
                      do
                      {
                        v308 = *v307;
                        v307 += 4;
                        v306 = v306 + *(&p_p->__r_.__value_.__l.__data_ + v305) * v308;
                        v305 += 8;
                      }

                      while (v305 != 32);
                      *&(&(&__y)[4 * v303++])[v301] = v306;
                      p_p = (p_p + 32);
                    }

                    while (v303 != 4);
                    ++v301;
                    ++v302;
                  }

                  while (v301 != 4);
                  v309 = 0;
                  p_y = &__y;
                  do
                  {
                    v312 = *p_y;
                    v311 = *(p_y + 1);
                    p_y += 4;
                    *(&v461 + v309) = vcvt_hight_f32_f64(vcvt_f32_f64(v312), v311);
                    v309 += 16;
                  }

                  while (v309 != 64);
                  v313 = v294[9];
                  ggl::BufferMemory::BufferMemory(&__p);
                  ggl::ResourceAccessor::accessConstantData(&__y, 0, v313, 1);
                  ggl::BufferMemory::operator=(&__p, &__y);
                  ggl::BufferMemory::~BufferMemory(&__y);
                  v314 = v453;
                  *v453 = v461;
                  v314[1] = v462;
                  v314[2] = v463;
                  v314[3] = v464;
                  v315 = *(v108 + 32);
                  os_unfair_lock_lock((v315 + 44));
                  *&v477.__r_.__value_.__l.__data_ = *(v315 + 20);
                  os_unfair_lock_unlock((v315 + 44));
                  v316 = *(v108 + 32);
                  os_unfair_lock_lock((v316 + 44));
                  v474 = *(v316 + 4);
                  os_unfair_lock_unlock((v316 + 44));
                  v317 = *(v108 + 32);
                  os_unfair_lock_lock((v317 + 44));
                  v318 = *v317;
                  os_unfair_lock_unlock((v317 + 44));
                  if (v318 <= 0.0)
                  {
                    VKVectorOverlayAutomaticLineWidthForZoomLevel(fmaxf(*(v286 + 770) + *(v286 + 768), 1.0));
                  }

                  v319 = *(v108 + 32);
                  os_unfair_lock_lock(v319 + 11);
                  os_unfair_lock_unlock(v319 + 11);
                  v320 = *(v108 + 32);
                  os_unfair_lock_lock(v320 + 11);
                  os_unfair_lock_unlock(v320 + 11);
                  operator new();
                }
              }

              else
              {
                if (v269.u32[0] > 1uLL)
                {
                  if (v273 >= *&v268)
                  {
                    v273 %= *&v268;
                  }
                }

                else
                {
                  v273 &= *&v268 - 1;
                }

                if (v273 != v270)
                {
                  break;
                }
              }
            }
          }
        }

        operator new();
      }

      if (v107)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v107);
      }

      return;
    }

    v118 = v20[4];
    v408 = v20[5];
    if (v118 == v408)
    {
      return;
    }

    v119 = 168;
    if (v18)
    {
      v119 = 176;
    }

    v407 = v119;
    v406 = v18 ^ 1;
    v120 = 1.0;
    v121 = 0.000011921;
    v122 = 23.0;
    v123 = a1;
    while (1)
    {
      v124 = *v118;
      v125 = *(v123 + 360);
      v126 = *(v125 + 328);
      *(v124 + 12) = v126;
      v127 = *(v124 + 6);
      if (v127)
      {
        if (v126)
        {
          v126 = *(v126 + 16);
        }

        *(v127 + 232) = v126;
      }

      *v413 = v118;
      v128 = *(v124 + 39);
      if (v128)
      {
        *(v128 + 32) = *(v125 + 336);
      }

      *(v124 + 22) = v421;
      v129 = *(v123 + 348);
      v130 = *(v125 + v407);
      v131 = md::LayoutContext::get<md::CameraContext>(*(this + 1));
      *(v124 + 32) = 0;
      *(v124 + 262) = 0;
      v409 = v131;
      v133 = *(gdc::Camera::cameraFrame(v131) + 32) > 0.0 && v129 == 0;
      v134 = *(v124 + 7);
      os_unfair_lock_lock(v134 + 6);
      os_unfair_lock_unlock(v134 + 6);
      v470 = *&v134->_os_unfair_lock_opaque;
      v135 = *(v124 + 7);
      os_unfair_lock_lock((v135 + 24));
      v136 = *(v135 + 16);
      os_unfair_lock_unlock((v135 + 24));
      *(&v470 + 3) = *(&v470 + 3) * v136;
      v137 = vabds_f32(v120, *(&v470 + 3));
      v138 = v137 <= (fabsf(*(&v470 + 3) + v120) * v121);
      v410 = v138 || v137 < 1.1755e-38;
      v426 = v138 || v137 < 1.1755e-38;
      v139 = *(v124 + 39);
      v420 = v139 != 0;
      if (v139)
      {
        v140 = 0;
      }

      else
      {
        v140 = *(v124 + 4) != 0 && *(&v470 + 3) > 0.0;
      }

      v141 = *(v124 + 7);
      v143 = *(v141 + 32);
      v142 = *(v141 + 40);
      if (v142)
      {
        atomic_fetch_add_explicit(&v142->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      os_unfair_lock_lock((v143 + 196));
      v144 = *(v143 + 148);
      os_unfair_lock_unlock((v143 + 196));
      if (v142)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v142);
      }

      v145 = v130;
      v146 = vabds_f32(v120, v144);
      v147 = v146 > (fabsf(v144 + v120) * v121);
      v148 = v146 >= 1.1755e-38;
      if (*(v124 + 6))
      {
        v417 = v144 > 0.0 || v420;
      }

      else
      {
        v417 = 0;
      }

      v149 = *(v124 + 7);
      os_unfair_lock_lock(v149 + 6);
      os_unfair_lock_opaque = v149[5]._os_unfair_lock_opaque;
      os_unfair_lock_unlock(v149 + 6);
      if (os_unfair_lock_opaque == 13)
      {
        v152 = *(v124 + 7);
        os_unfair_lock_lock((v152 + 24));
        v153 = *(v152 + 48);
        os_unfair_lock_unlock((v152 + 24));
        if (v153)
        {
          os_unfair_lock_opaque = 18;
        }
      }

      v154 = v133;
      v425 = os_unfair_lock_opaque;
      *(v124 + 256) = v140 & v406;
      v155 = v145;
      if (v140)
      {
        v156 = *(v124 + 5);
        if (v156)
        {
          v157 = v147 && v148;
          LODWORD(v158) = v417;
          LODWORD(v156) = (v157 | ~v417) & v406;
          goto LABEL_159;
        }
      }

      else
      {
        LODWORD(v156) = 0;
      }

      LODWORD(v158) = v417;
LABEL_159:
      *(v124 + 257) = v156;
      *(v124 + 258) = 16843009 * (v158 & v406);
      *(v124 + 262) = 16843009 * (v158 & v420 & v406);
      *(v124 + 268) = v140 & v422;
      *(v124 + 266) = v158 & v422;
      *(v124 + 267) = v158 & v422;
      *(v124 + 269) = v420;
      *&v461 = &v426;
      *(&v461 + 1) = &v470;
      *&v462 = &v425;
      *(&v462 + 1) = v145;
      *&v463 = v124;
      if ((v140 & v406) != 0)
      {
        md::PolygonOverlayRenderable::updateWithContext(md::LayoutContext const&,BOOL,BOOL,ggl::ConstantDataTyped<ggl::OverlayOcclusion::AlphaTint> *,float)::$_0::operator()(&v461, *(**(v124 + 12) + 16 * v410 + 8 * v154 + 72), *(v124 + 18));
        if ((*(v124 + 257) & 1) == 0)
        {
          goto LABEL_194;
        }
      }

      else if (!v156)
      {
        goto LABEL_194;
      }

      v159 = *(**(v124 + 12) + 64);
      v160 = v159[1];
      if (v160 == *v159)
      {
        v162 = v159[11];
        if (!v162)
        {
          goto LABEL_413;
        }

        v151 = (*(*v162 + 48))(v162);
        v161 = v151;
      }

      else
      {
        v161 = *(v160 - 8);
        v159[1] = v160 - 8;
      }

      v164 = v159[5];
      v163 = v159[6];
      if (v164 >= v163)
      {
        v166 = v159[4];
        v167 = (v164 - v166) >> 3;
        if ((v167 + 1) >> 61)
        {
          goto LABEL_414;
        }

        v168 = v163 - v166;
        v169 = v168 >> 2;
        if (v168 >> 2 <= (v167 + 1))
        {
          v169 = v167 + 1;
        }

        if (v168 >= 0x7FFFFFFFFFFFFFF8)
        {
          v170 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v170 = v169;
        }

        v435 = v159 + 7;
        if (v170)
        {
          v171 = ggl::zone_mallocator::instance(v151);
          v172 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolygonOverlay::AntialiasPipelineSetup *>(v171, v170);
        }

        else
        {
          v172 = 0;
        }

        v158 = &v172[8 * v170];
        v173 = &v172[8 * v167];
        *v173 = v161;
        v165 = v173 + 1;
        v174 = v159[4];
        v175 = v159[5] - v174;
        v176 = v173 - v175;
        memcpy(v173 - v175, v174, v175);
        v177 = v159[4];
        v159[4] = v176;
        v159[5] = v165;
        v178 = v159[6];
        v159[6] = v158;
        v433 = v177;
        v434 = v178;
        __y = v177;
        v432 = v177;
        std::__split_buffer<ggl::PolygonOverlay::AntialiasPipelineSetup *,geo::allocator_adapter<ggl::PolygonOverlay::AntialiasPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(&__y);
        LOBYTE(v158) = v417;
      }

      else
      {
        *v164 = v161;
        v165 = v164 + 1;
      }

      v159[5] = v165;
      __y = v161;
      v179 = v159[15];
      if (!v179)
      {
        goto LABEL_413;
      }

      (*(*v179 + 48))(v179, &__y);
      v180 = *(v161 + 17);
      v180[1] = 0;
      v181 = *(v124 + 14);
      *v180 = v181;
      v182 = *(v161 + 29);
      v183 = *(v124 + 15);
      if (v183)
      {
        atomic_fetch_add_explicit((v183 + 8), 1uLL, memory_order_relaxed);
      }

      v184 = v182[1];
      *v182 = v181;
      v182[1] = v183;
      if (v184)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v184);
      }

      v185 = *(v161 + 17);
      *(v185 + 24) = 0;
      v186 = *(v124 + 16);
      *(v185 + 16) = v186;
      v187 = *(v161 + 29);
      v188 = *(v124 + 17);
      if (v188)
      {
        atomic_fetch_add_explicit((v188 + 8), 1uLL, memory_order_relaxed);
      }

      v189 = *(v187 + 24);
      *(v187 + 16) = v186;
      *(v187 + 24) = v188;
      if (v189)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v189);
      }

      **(v161 + 21) = *(*(v124 + 12) + 8);
      if (v155)
      {
        v190 = *(v161 + 17);
        *(v190 + 48) = v155;
        *(v190 + 56) = 0;
        v191 = *(v161 + 29);
        v192 = *(v191 + 56);
        *(v191 + 48) = 0;
        *(v191 + 56) = 0;
        if (v192)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v192);
        }
      }

      v193 = *(*(v161 + 17) + 32);
      v194 = *(v409 + 471);
      v195 = *(v409 + 171) * *(v124 + 13);
      ggl::BufferMemory::BufferMemory(&__p);
      ggl::ResourceAccessor::accessConstantData(&__y, 0, v193, 1);
      ggl::BufferMemory::operator=(&__p, &__y);
      ggl::BufferMemory::~BufferMemory(&__y);
      v196 = 0;
      v197 = v453;
      do
      {
        *(v197 + v196) = *(&v470 + v196);
        v196 += 4;
      }

      while (v196 != 16);
      v198 = v194 / v195;
      *(v197 + 16) = v198;
      *(v197 + 20) = v425;
      ggl::BufferMemory::~BufferMemory(&__p);
      v199 = *(v124 + 19);
      *(v199 + 24) = *(**(v124 + 12) + 8 * v154 + 104);
      *(v199 + 40) = *(v124 + 22);
      *(v199 + 32) = v161;
      *(v199 + 64) = *(v124 + 5);
LABEL_194:
      if (v158)
      {
        md::RibbonLayoutContext::RibbonLayoutContext(&__y, this);
        v441 = 0;
        v442 = 1065353216;
        v443 = 0;
        v446 = 0;
        v447 = 0;
        v444 = 0;
        v445 = 0;
        *v448 = 255;
        *&v448[8] = 0;
        *&v448[4] = 0;
        *&v448[16] = 0;
        v448[24] = 1;
        v437 = 0;
        v200 = +[VKDebugSettings sharedSettings];
        [v200 ribbonCrispness];
        v439 = v201;

        v202 = *(*(v124 + 12) + 16);
        v440 = *(*(v202 + 256) + 8);
        v441 = v202;
        v438 = *(v124 + 22);
        BYTE4(v444) = v154;
        BYTE5(v444) = v422;
        v443 = 1;
        LODWORD(v444) = v425;
        v204 = *(v124 + 9);
        v203 = *(v124 + 10);
        if (v203)
        {
          atomic_fetch_add_explicit(&v203->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v205 = v447;
        v446 = v204;
        v447 = v203;
        if (v205)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v205);
        }

        v445 = v420;
        v206 = *v124;
        *&v448[9] = *(v124 + 9);
        *v448 = v206;
        v449 = *(v124 + 328);
        v450 = *(v124 + 344);
        md::PolylineOverlayLayer<md::Ribbons::PolylineOverlayRibbonDescriptor>::layout(*(v124 + 6), &__y);
        if (v447)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v447);
        }
      }

      if (*(v124 + 268) == 1)
      {
        md::PolygonOverlayRenderable::updateWithContext(md::LayoutContext const&,BOOL,BOOL,ggl::ConstantDataTyped<ggl::OverlayOcclusion::AlphaTint> *,float)::$_0::operator()(&v461, *(**(v124 + 12) + 8 * v426 + 120), *(v124 + 30));
      }

      v123 = v423;
      if (*(v124 + 269) == 1)
      {
        v207 = *(v124 + 39);
        v208 = *(this + 1);
        v209 = md::LayoutContext::get<md::CameraContext>(v208);
        v210 = *(v209 + 3076);
        v211 = *(v209 + 3080);
        gdc::Context::get<md::StyleLogicContext>(v208);
        *(v207 + 184) = 0;
        *(v207 + 200) = 0;
        *(v207 + 192) = 0;
        v212 = *(v207 + 136);
        v213 = *(v207 + 144);
        if (v213)
        {
          atomic_fetch_add_explicit(&v213->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&__y, v212, v213);
        if (v213)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v213);
        }

        if (v435 != 1)
        {
          goto LABEL_230;
        }

        v214 = fmaxf(v211 + v210, v120);
        if (v214 >= 0x17)
        {
          v215 = 23;
        }

        else
        {
          v215 = v214;
        }

        v216 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(__y[3], 91, v215, 2u, 0);
        *(v207 + 200) = v216;
        if (v216)
        {
          memset(&__p, 0, sizeof(__p));
          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<std::string>(&v477, __y[3], 0x88u, v215, 2);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          __p = v477;
          size = HIBYTE(v477.__r_.__value_.__r.__words[2]);
          if ((v477.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            size = __p.__r_.__value_.__l.__size_;
          }

          if (size)
          {
            v218 = *md::LayoutContext::get<md::SharedResourcesContext>(*(this + 1));
            if (v218)
            {
              objc_msgSend_textureManager(v218);
            }

            else
            {
              v474 = 0uLL;
            }

            LODWORD(v469[0]) = 0;
            LODWORD(v468[0]) = 0;
            LODWORD(v467[0]) = 0x40000000;
            LODWORD(v466[0]) = 1;
            LODWORD(v465[0]) = 1;
            LODWORD(v427) = 1;
            std::allocate_shared[abi:nn200100]<ggl::SamplerState,std::allocator<ggl::SamplerState>,ggl::Wrap,ggl::Wrap,float,ggl::Filter,ggl::Filter,ggl::Filter,0>(v473, v469, v468, v467, v466, v465, &v427);
          }

          v219 = __y[3];
          v220 = fminf(v214, v122);
          v221 = *v219;
          if (!*v219 || (v222 = *v221, LODWORD(v221) = *v221 == v120, *(v219 + 10) != 1) || v222 == 0.0 || v222 == v120)
          {
            v223 = *(v219 + v221 + 11);
            if (v223 != 2)
            {
              gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(__y[3], 194, v223, 0, v220);
LABEL_228:
              *(v207 + 184) = v224;
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

LABEL_230:
              v225 = +[VKDebugSettings sharedSettings];
              [v225 maskingOverlayOpacityFactor];
              v227 = v226;

              *(v207 + 184) = *(v207 + 184) * v227;
              v123 = v423;
              goto LABEL_231;
            }

            v222 = 0.0;
          }

          v477.__r_.__value_.__s.__data_[0] = 1;
          LOBYTE(v474) = 1;
          gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v219, 194, 0, &v477, v220);
          v252 = v121;
          v254 = v253;
          gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v219, 194, 1, &v474, v220);
          v224 = v254 + ((v255 - v254) * v222);
          v122 = 23.0;
          v121 = v252;
          v120 = 1.0;
          goto LABEL_228;
        }

LABEL_231:
        if (v435 == 1)
        {
          (*(*__y + 56))(__y);
        }

        if (v434)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v434);
        }

        if (v432)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v432);
        }

        v228 = *(v124 + 39);
        if (*(v228 + 120))
        {
          if (*(v228 + 128))
          {
            v229 = *(v228 + 176);
            if (v229 < *(v228 + 168) && *(v124 + 4) && *(v228 + 200) == 1)
            {
              v230 = v229 + 1;
              *(v228 + 176) = v230;
              v231 = v230 >> 6;
              v232 = 1 << v230;
              *(*(v228 + 96) + 8 * (v230 >> 6)) &= ~(1 << v230);
              v233 = *(*(v228 + 72) + 8 * v230);
              v234 = *(*(v228 + 32) + 80);
              v235 = v234[1];
              if (v235 == *v234)
              {
                v237 = v234[11];
                if (!v237)
                {
                  goto LABEL_413;
                }

                v236 = (*(*v237 + 48))(v237);
                __p.__r_.__value_.__r.__words[0] = v236;
              }

              else
              {
                v236 = *(v235 - 8);
                __p.__r_.__value_.__r.__words[0] = v236;
                v234[1] = v235 - 8;
              }

              std::vector<ggl::MaskingOverlay::MaskingPipelineSetup *,geo::allocator_adapter<ggl::MaskingOverlay::MaskingPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v234 + 4), &__p);
              __y = v236;
              v238 = v234[15];
              if (!v238)
              {
                goto LABEL_413;
              }

              (*(*v238 + 48))(v238, &__y);
              v239 = *(v236 + 136);
              v239[1] = 0;
              v240 = *(v228 + 40);
              *v239 = v240;
              v241 = *(v236 + 232);
              v242 = *(v228 + 48);
              if (v242)
              {
                atomic_fetch_add_explicit((v242 + 8), 1uLL, memory_order_relaxed);
              }

              v243 = v241[1];
              *v241 = v240;
              v241[1] = v242;
              if (v243)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v243);
              }

              v244 = *(v236 + 136);
              *(v244 + 24) = 0;
              v245 = *(v228 + 56);
              *(v244 + 16) = v245;
              v246 = *(v236 + 232);
              v247 = *(v228 + 64);
              if (v247)
              {
                atomic_fetch_add_explicit((v247 + 8), 1uLL, memory_order_relaxed);
              }

              v248 = *(v246 + 24);
              *(v246 + 16) = v245;
              *(v246 + 24) = v247;
              if (v248)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v248);
              }

              v249 = *(v228 + 32);
              v250 = *(v249 + 64);
              __y = *(v249 + 56);
              v432 = v250;
              if (v250)
              {
                atomic_fetch_add_explicit(&v250->__shared_owners_, 1uLL, memory_order_relaxed);
                ggl::PipelineSetup::setState(v236, &__y);
                std::__shared_weak_count::__release_shared[abi:nn200100](v250);
              }

              else
              {
                ggl::PipelineSetup::setState(v236, &__y);
              }

              *(v233 + 24) = *(*(v228 + 32) + 72);
              *(v233 + 32) = v236;
              *(v233 + 40) = 127;
              v251 = *(v124 + 4);
              *(v233 + 64) = v251;
              *(v228 + 152) = *(**(v251 + 64) + 48) - *(**(v251 + 64) + 40);
              *(v228 + 160) = *(*(v251 + 96) + 48) - *(*(v251 + 96) + 40);
              *(*(v228 + 96) + 8 * v231) |= v232;
              v123 = v423;
            }
          }
        }
      }

      v118 = (*v413 + 8);
      if ((*v413 + 8) == v408)
      {
        v256 = v414;
        v257 = v414[7];
        if (v257)
        {
          v258 = *(*(v123 + 360) + 336);
          *(v257 + 32) = v258;
          **(v257 + 96) &= ~1uLL;
          if (*(v257 + 120))
          {
            if (*(v257 + 128))
            {
              v259 = md::LayoutContext::get<md::CameraContext>(*(this + 1));
              v256 = v414;
              if (*(v257 + 200) == 1)
              {
                if (*(v257 + 192))
                {
                  v260 = v259;
                  v261 = *(v258 + 48);
                  v262 = v261[1];
                  if (v262 != *v261)
                  {
                    v263 = *(v262 - 8);
                    __p.__r_.__value_.__r.__words[0] = v263;
                    v261[1] = v262 - 8;
                    goto LABEL_338;
                  }

                  v321 = v261[11];
                  if (!v321)
                  {
                    goto LABEL_413;
                  }

                  v263 = (*(*v321 + 48))(v321);
                  __p.__r_.__value_.__r.__words[0] = v263;
LABEL_338:
                  std::vector<ggl::MaskingOverlay::FillPipelineSetup *,geo::allocator_adapter<ggl::MaskingOverlay::FillPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v261 + 4), &__p);
                  __y = v263;
                  v322 = v261[15];
                  if (!v322)
                  {
LABEL_413:
                    std::__throw_bad_function_call[abi:nn200100]();
LABEL_414:
                    std::__throw_bad_array_new_length[abi:nn200100]();
                  }

                  (*(*v322 + 48))(v322, &__y);
                  v323 = *(v263 + 136);
                  v323[1] = 0;
                  v324 = *(v257 + 40);
                  *v323 = v324;
                  v325 = *(v263 + 232);
                  v326 = *(v257 + 48);
                  if (v326)
                  {
                    atomic_fetch_add_explicit((v326 + 8), 1uLL, memory_order_relaxed);
                  }

                  v327 = v325[1];
                  *v325 = v324;
                  v325[1] = v326;
                  if (v327)
                  {
                    std::__shared_weak_count::__release_shared[abi:nn200100](v327);
                  }

                  v328 = *(v263 + 136);
                  *(v328 + 24) = 0;
                  v329 = *(v257 + 56);
                  *(v328 + 16) = v329;
                  v330 = *(v263 + 232);
                  v331 = *(v257 + 64);
                  if (v331)
                  {
                    atomic_fetch_add_explicit((v331 + 8), 1uLL, memory_order_relaxed);
                  }

                  v332 = *(v330 + 24);
                  *(v330 + 16) = v329;
                  *(v330 + 24) = v331;
                  if (v332)
                  {
                    std::__shared_weak_count::__release_shared[abi:nn200100](v332);
                  }

                  v333 = *(v257 + 32);
                  v334 = *(v333 + 24);
                  __y = *(v333 + 16);
                  v432 = v334;
                  if (v334)
                  {
                    atomic_fetch_add_explicit(&v334->__shared_owners_, 1uLL, memory_order_relaxed);
                    ggl::PipelineSetup::setState(v263, &__y);
                    std::__shared_weak_count::__release_shared[abi:nn200100](v334);
                  }

                  else
                  {
                    ggl::PipelineSetup::setState(v263, &__y);
                  }

                  **(v263 + 168) = *(v257 + 192);
                  v335 = *(gdc::Context::get<md::StyleLogicContext>(*(this + 1)) + 27);
                  v336 = *(*(v263 + 136) + 32);
                  ggl::BufferMemory::BufferMemory(&__p);
                  ggl::ResourceAccessor::accessConstantData(&__y, 0, v336, 1);
                  ggl::BufferMemory::operator=(&__p, &__y);
                  ggl::BufferMemory::~BufferMemory(&__y);
                  v337 = v453;
                  *(v453 + 20) = 0;
                  v338 = *(v260 + 5592);
                  if (!v338)
                  {
                    v338 = v260;
                  }

                  v339 = v338[471];
                  v340 = v338[171];
                  *&v341 = v339 * v338[173];
                  v342 = *&v341 * (1 << *(v257 + 1));
                  v343 = *(v257 + 192);
                  LODWORD(v341) = *(v343 + 80);
                  LODWORD(v339) = *(v343 + 84);
                  v344 = v340 * v335 / v342;
                  v345 = v344 / v341;
                  v346 = v344 / *&v339;
                  v347 = modf(v345 * *(v257 + 8), &__y);
                  v348 = modf(v346 * *(v257 + 4), &__y);
                  v349 = v347;
                  *&v348 = v348;
                  *v337 = v349;
                  *(v337 + 4) = LODWORD(v348);
                  *&v348 = v345;
                  v350 = v346;
                  *(v337 + 8) = LODWORD(v348);
                  *(v337 + 12) = v350;
                  *(v337 + 16) = *(v257 + 184);
                  ggl::BufferMemory::~BufferMemory(&__p);
                  v351 = *(v257 + 32);
                  v352 = 5;
                  if (*(v257 + 120) == 1)
                  {
                    v352 = 4;
                  }

                  v353 = **(v257 + 72);
                  *(v353 + 24) = v351[v352];
                  *(v353 + 32) = v263;
                  *(v353 + 40) = v421;
                  *(v353 + 64) = *v351;
                  **(v257 + 96) |= 1uLL;
                  *(v257 + 176) = 0;
                  v256 = v414;
                }
              }
            }
          }
        }

        v354 = v256[4];
        if (v256[5] != v354)
        {
          v355 = 0;
          do
          {
            v356 = *(v354 + 8 * v355);
            v429[0] = &unk_1F2A197B8;
            v429[1] = &a10;
            v429[2] = &v424;
            v430 = v429;
            v357 = *(v356 + 48);
            if (v357 && (v422 & 1) == 0)
            {
              v358 = *(v357 + 8);
              v359 = *(v357 + 16);
              while (v358 != v359)
              {
                v360 = *v358++;
                ggl::Batcher::reset((v360 + 1296));
                md::RenderItemPool::reset((v360 + 1376));
              }
            }

            v361 = 0;
            v427 = 0;
            do
            {
              if (*(v356 + 256 + v361) == 1)
              {
                switch(v361)
                {
                  case 2:
                    v378 = *(v356 + 48);
                    __p.__r_.__value_.__r.__words[0] = &unk_1F2A46C80;
                    __p.__r_.__value_.__l.__size_ = &v427;
                    __p.__r_.__value_.__r.__words[2] = v429;
                    *&v452 = &__p;
                    v379 = *(v378 + 8);
                    v380 = *(v378 + 16);
                    while (v379 != v380)
                    {
                      v381 = *v379;
                      std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](&__y, &__p);
                      md::Ribbons::RibbonBatch<md::Ribbons::PolylineOverlayRibbonDescriptor>::collectRenderItemsForPassesNoReset(v381, 1u, &__y);
                      std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](&__y);
                      ++v379;
                    }

                    v403 = &__p;
                    goto LABEL_407;
                  case 3:
                    v366 = *(v356 + 48);
                    *&v461 = &unk_1F2A46CC8;
                    *(&v461 + 1) = &v427;
                    *&v462 = v429;
                    *(&v462 + 1) = &v461;
                    v367 = *(v366 + 8);
                    v368 = *(v366 + 16);
                    while (v367 != v368)
                    {
                      v369 = *v367;
                      std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](&__y, &v461);
                      md::Ribbons::RibbonBatch<md::Ribbons::PolylineOverlayRibbonDescriptor>::collectRenderItemsForPassesNoReset(v369, 2u, &__y);
                      std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](&__y);
                      ++v367;
                    }

                    v403 = &v461;
                    goto LABEL_407;
                  case 4:
                    v386 = *(v356 + 48);
                    v477.__r_.__value_.__r.__words[0] = &unk_1F2A46D10;
                    v477.__r_.__value_.__l.__size_ = &v427;
                    v477.__r_.__value_.__r.__words[2] = v429;
                    v478 = &v477;
                    v387 = *(v386 + 8);
                    v388 = *(v386 + 16);
                    while (v387 != v388)
                    {
                      v389 = *v387;
                      std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](&__y, &v477);
                      md::Ribbons::RibbonBatch<md::Ribbons::PolylineOverlayRibbonDescriptor>::collectRenderItemsForPassesNoReset(v389, 4u, &__y);
                      std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](&__y);
                      ++v387;
                    }

                    v403 = &v477;
                    goto LABEL_407;
                  case 5:
                    v391 = *(v356 + 48);
                    *&v474 = &unk_1F2A46D58;
                    *(&v474 + 1) = &v427;
                    v475 = v429;
                    v476 = &v474;
                    v392 = *(v391 + 8);
                    v393 = *(v391 + 16);
                    while (v392 != v393)
                    {
                      v394 = *v392;
                      std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](&__y, &v474);
                      md::Ribbons::RibbonBatch<md::Ribbons::PolylineOverlayRibbonDescriptor>::collectRenderItemsForPassesNoReset(v394, 8u, &__y);
                      std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](&__y);
                      ++v392;
                    }

                    v403 = &v474;
                    goto LABEL_407;
                  case 6:
                    v382 = *(v356 + 48);
                    v473[0] = &unk_1F2A46DA0;
                    v473[1] = &v427;
                    v473[2] = v429;
                    v473[3] = v473;
                    v383 = *(v382 + 8);
                    v384 = *(v382 + 16);
                    while (v383 != v384)
                    {
                      v385 = *v383;
                      std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](&__y, v473);
                      md::Ribbons::RibbonBatch<md::Ribbons::PolylineOverlayRibbonDescriptor>::collectRenderItemsForPassesNoReset(v385, 0x10u, &__y);
                      std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](&__y);
                      ++v383;
                    }

                    v403 = v473;
                    goto LABEL_407;
                  case 7:
                    v399 = *(v356 + 48);
                    *&v470 = &unk_1F2A46DE8;
                    *(&v470 + 1) = &v427;
                    v471 = v429;
                    v472 = &v470;
                    v400 = *(v399 + 8);
                    v401 = *(v399 + 16);
                    while (v400 != v401)
                    {
                      v402 = *v400;
                      std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](&__y, &v470);
                      md::Ribbons::RibbonBatch<md::Ribbons::PolylineOverlayRibbonDescriptor>::collectRenderItemsForPassesNoReset(v402, 0x20u, &__y);
                      std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](&__y);
                      ++v400;
                    }

                    v403 = &v470;
                    goto LABEL_407;
                  case 8:
                    v374 = *(v356 + 48);
                    v469[0] = &unk_1F2A46E30;
                    v469[1] = &v427;
                    v469[2] = v429;
                    v469[3] = v469;
                    v375 = *(v374 + 8);
                    v376 = *(v374 + 16);
                    while (v375 != v376)
                    {
                      v377 = *v375;
                      std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](&__y, v469);
                      md::Ribbons::RibbonBatch<md::Ribbons::PolylineOverlayRibbonDescriptor>::collectRenderItemsForPassesNoReset(v377, 0x40u, &__y);
                      std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](&__y);
                      ++v375;
                    }

                    v403 = v469;
                    goto LABEL_407;
                  case 9:
                    v395 = *(v356 + 48);
                    v468[0] = &unk_1F2A46E78;
                    v468[1] = &v427;
                    v468[2] = v429;
                    v468[3] = v468;
                    v396 = *(v395 + 8);
                    v397 = *(v395 + 16);
                    while (v396 != v397)
                    {
                      v398 = *v396;
                      std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](&__y, v468);
                      md::Ribbons::RibbonBatch<md::Ribbons::PolylineOverlayRibbonDescriptor>::collectRenderItemsForPassesNoReset(v398, 0x80u, &__y);
                      std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](&__y);
                      ++v396;
                    }

                    v403 = v468;
                    goto LABEL_407;
                  case 10:
                    v362 = *(v356 + 48);
                    v467[0] = &unk_1F2A46EC0;
                    v467[1] = &v427;
                    v467[2] = v429;
                    v467[3] = v467;
                    v363 = *(v362 + 8);
                    v364 = *(v362 + 16);
                    while (v363 != v364)
                    {
                      v365 = *v363;
                      std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](&__y, v467);
                      md::Ribbons::RibbonBatch<md::Ribbons::PolylineOverlayRibbonDescriptor>::collectRenderItemsForPassesNoReset(v365, 0x100u, &__y);
                      std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](&__y);
                      ++v363;
                    }

                    v403 = v467;
                    goto LABEL_407;
                  case 11:
                    v370 = *(v356 + 48);
                    v466[0] = &unk_1F2A46F08;
                    v466[1] = &v427;
                    v466[2] = v429;
                    v466[3] = v466;
                    v371 = *(v370 + 8);
                    v372 = *(v370 + 16);
                    while (v371 != v372)
                    {
                      v373 = *v371;
                      std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](&__y, v466);
                      md::Ribbons::RibbonBatch<md::Ribbons::PolylineOverlayRibbonDescriptor>::collectRenderItemsForPassesNoReset(v373, 0x200u, &__y);
                      std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](&__y);
                      ++v371;
                    }

                    v403 = v466;
LABEL_407:
                    std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v403);
                    break;
                  case 13:
                    v390 = *(v356 + 312);
                    v465[0] = &unk_1F2A46F50;
                    v465[1] = &v427;
                    v465[2] = v429;
                    v465[3] = v465;
                    md::MaskingOverlayRenderable::collectRenderItems(v390, 1, v465);
                    std::__function::__value_func<void ()(ggl::RenderItem *)>::~__value_func[abi:nn200100](v465);
                    break;
                  default:
                    std::function<void ()(md::PolygonOverlayRenderable::Pass,ggl::RenderItem *)>::operator()(v430, v361, *(v356 + 144 + 8 * v361));
                    break;
                }
              }

              v361 = v427 + 1;
              v427 = v361;
            }

            while (v361 < 0xE);
            std::__function::__value_func<void ()(md::PolygonOverlayRenderable::Pass,ggl::RenderItem *)>::~__value_func[abi:nn200100](v429);
            ++v355;
            v256 = v414;
            v354 = v414[4];
          }

          while (v355 < (v414[5] - v354) >> 3);
        }

        v404 = v256[7];
        if (v404)
        {
          v428[0] = &unk_1F2A19800;
          v428[1] = &a10;
          v428[2] = &v424;
          v428[3] = v428;
          md::MaskingOverlayRenderable::collectRenderItems(v404, 0, v428);
          std::__function::__value_func<void ()(ggl::RenderItem *)>::~__value_func[abi:nn200100](v428);
        }

        return;
      }
    }
  }

  v75 = *(v419 + 24);
  if (v75 > 0x46)
  {
    if (v75 == 72)
    {
      v76 = 104;
    }

    else
    {
      if (v75 != 71)
      {
        return;
      }

      v76 = 88;
    }
  }

  else if (v75 == 11)
  {
    v76 = 80;
  }

  else
  {
    if (v75 != 12)
    {
      return;
    }

    v76 = 96;
  }

  v412 = *(a6 + v76);
  if (v412)
  {
    v77 = *v74;
    if (v74[1] != *v74)
    {
      v78 = 0;
      do
      {
        v79 = *(v20[14] + 4 * v78);
        *(__p.__r_.__value_.__r.__words + 4) = *(v419 + 172);
        LOWORD(__p.__r_.__value_.__l.__data_) = *(v419 + 168);
        __p.__r_.__value_.__r.__words[2] = *(v419 + 184);
        LOBYTE(v452) = *(v419 + 192);
        DWORD2(v452) = v79;
        if (std::__hash_table<std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>,std::__unordered_map_hasher<md::SurfaceKey,std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>,md::SurfaceKeyHash,md::SurfaceKeyEqual,true>,std::__unordered_map_equal<md::SurfaceKey,std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>,md::SurfaceKeyEqual,md::SurfaceKeyHash,true>,std::allocator<std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>>>::find<md::SurfaceKey>(v412, &__p))
        {
          v80 = std::__hash_table<std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>,std::__unordered_map_hasher<md::SurfaceKey,std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>,md::SurfaceKeyHash,md::SurfaceKeyEqual,true>,std::__unordered_map_equal<md::SurfaceKey,std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>,md::SurfaceKeyEqual,md::SurfaceKeyHash,true>,std::allocator<std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>>>::find<md::SurfaceKey>(v412, &__p);
          if (!v80)
          {
            abort();
          }

          v81 = *(v80 + 9);
          if (v81)
          {
            v82 = 0;
            v83 = v77 + 144 * v78;
            do
            {
              if (v82 == *(v83 + 32))
              {
                v84 = ggl::FragmentedPool<ggl::RenderItem>::pop(*(*(a1 + 360) + 344));
                v87 = *(a1 + 360);
                if (v422)
                {
                  v88 = (v87 + 8 * *(v83 + 132) + 48);
                }

                else
                {
                  v88 = (v87 + 16 * *(a7 + 132) + 8 * *(v83 + 132));
                }

                v89 = *v88;
                gdc::Tiled::Tiled(&__y, v83, v85, v86);
                v90 = a10;
                *&v461 = *(v83 + 112);
                v91 = *(v83 + 120);
                *(&v461 + 1) = v91;
                if (v91)
                {
                  atomic_fetch_add_explicit(&v91->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v92 = v81[4];
                v477.__r_.__value_.__r.__words[0] = v81[3];
                v477.__r_.__value_.__l.__size_ = v92;
                if (v92)
                {
                  atomic_fetch_add_explicit(&v92->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                *&v474 = *(v83 + 64);
                v93 = *(v83 + 72);
                *(&v474 + 1) = v93;
                if (v93)
                {
                  atomic_fetch_add_explicit(&v93->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                LOWORD(v473[0]) = 0;
                BYTE2(v473[0]) = 0;
                md::COverlayRenderLayer::drapeOnTerrainIfNecessary(a1, *(this + 1), v90, v422, v421, v419 + 168, v83, v84, v89, &v461, &v477, &v474, (v83 + 80), v473);
                if (v93)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](v93);
                }

                if (v92)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](v92);
                }

                if (v91)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](v91);
                }

                *&v461 = v84;
                std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v424 + 72), &v461);
              }

              v81 = *v81;
              ++v82;
            }

            while (v81);
          }
        }

        ++v78;
        v20 = v414;
        v94 = v414[12];
        v77 = *v94;
      }

      while (v78 < 0x8E38E38E38E38E39 * ((v94[1] - *v94) >> 4));
    }
  }
}

void sub_1B2F69C24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26)
{
  v28 = v26[3];
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v28);
  }

  operator delete(v26);
  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a26);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>,std::__unordered_map_hasher<std::pair<signed char,BOOL>,std::__hash_value_type<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>,md::RenderedCirclePairHash,std::equal_to<std::pair<signed char,BOOL>>,true>,std::__unordered_map_equal<std::pair<signed char,BOOL>,std::__hash_value_type<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>,std::equal_to<std::pair<signed char,BOOL>>,md::RenderedCirclePairHash,true>,std::allocator<std::__hash_value_type<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__hash_table<std::shared_ptr<md::ARAssetOcclusionMeshData>,std::hash<std::shared_ptr<md::ARAssetOcclusionMeshData>>,std::equal_to<std::shared_ptr<md::ARAssetOcclusionMeshData>>,std::allocator<std::shared_ptr<md::ARAssetOcclusionMeshData>>>::~__hash_table((v2 + 3));
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

void md::COverlayRenderLayer::drapeOnTerrainIfNecessary(uint64_t a1, void *a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, void *a11, uint64_t *a12, uint64_t *a13, _BYTE *a14)
{
  v20 = gdc::Context::context<md::TerrainMeshProviderContext>(a2);
  if (v20)
  {
    v28 = v20;
    v29 = std::__hash_table<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>>>::find<geo::QuadTile>(v20 + 1, a6);
    if (v29)
    {
      v96 = v28 + 6;
      if (*(v29 + 6) != v28 + 6)
      {
        v30 = std::__hash_table<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>>>::find<geo::QuadTile>(v28 + 1, a6);
        if (v30)
        {
          v96 = *(v30 + 6);
        }

        v31 = *(*(a1 + 360) + 296);
        shared_owners = v31->__shared_owners_;
        if (shared_owners == v31->__vftable)
        {
          shared_weak_owners = v31[3].__shared_weak_owners_;
          if (!shared_weak_owners)
          {
            goto LABEL_74;
          }

          on_zero_shared_weak = (*(*shared_weak_owners + 48))(shared_weak_owners);
          v99 = on_zero_shared_weak;
        }

        else
        {
          on_zero_shared_weak = shared_owners[-1].__on_zero_shared_weak;
          v99 = on_zero_shared_weak;
          v31->__shared_owners_ = &shared_owners[-1].__on_zero_shared_weak;
        }

        v95 = a5;
        std::vector<ggl::Textured::SRGBBlendPos4DUVPipelineSetup *,geo::allocator_adapter<ggl::Textured::SRGBBlendPos4DUVPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](&v31[1].__shared_owners_, &v99);
        v100 = on_zero_shared_weak;
        v52 = v31[5].__vftable;
        if (v52)
        {
          (*(v52->~__shared_weak_count + 6))(v52, &v100);
          v53 = 264;
          if (a14[2])
          {
            v53 = 280;
          }

          v54 = (*(a1 + 360) + v53);
          v56 = *v54;
          v55 = v54[1];
          if (v55)
          {
            atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v57 = *(on_zero_shared_weak + 136);
          v57[1] = 0;
          v58 = *a12;
          *v57 = *a12;
          v59 = *(on_zero_shared_weak + 232);
          v60 = a12[1];
          if (v60)
          {
            atomic_fetch_add_explicit((v60 + 8), 1uLL, memory_order_relaxed);
          }

          v61 = v59[1];
          *v59 = v58;
          v59[1] = v60;
          if (v61)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v61);
          }

          v62 = *(on_zero_shared_weak + 136);
          *(v62 + 24) = 0;
          v63 = *a13;
          *(v62 + 16) = *a13;
          v64 = *(on_zero_shared_weak + 232);
          v65 = a13[1];
          if (v65)
          {
            atomic_fetch_add_explicit((v65 + 8), 1uLL, memory_order_relaxed);
          }

          v66 = *(v64 + 24);
          *(v64 + 16) = v63;
          *(v64 + 24) = v65;
          if (v66)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v66);
          }

          v67 = *(on_zero_shared_weak + 136);
          *(v67 + 56) = 0;
          v68 = *a10;
          *(v67 + 48) = *a10;
          v69 = *(on_zero_shared_weak + 232);
          v70 = a10[1];
          if (v70)
          {
            atomic_fetch_add_explicit((v70 + 8), 1uLL, memory_order_relaxed);
          }

          v71 = *(v69 + 56);
          *(v69 + 48) = v68;
          *(v69 + 56) = v70;
          if (v71)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v71);
          }

          **(on_zero_shared_weak + 168) = *a11;
          if (v55)
          {
            atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
            v100 = v56;
            v101 = v55;
            atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
            ggl::PipelineSetup::setState(on_zero_shared_weak, &v100);
            std::__shared_weak_count::__release_shared[abi:nn200100](v55);
            std::__shared_weak_count::__release_shared[abi:nn200100](v55);
          }

          else
          {
            v100 = v56;
            v101 = 0;
            ggl::PipelineSetup::setState(on_zero_shared_weak, &v100);
          }

          if (*(a1 + 394) == 1)
          {
            v72 = 168;
            if (a4)
            {
              v72 = 176;
            }

            v73 = *(*(a1 + 360) + v72);
            v74 = *(on_zero_shared_weak + 136);
            *(v74 + 64) = v73;
            *(v74 + 72) = 0;
            v75 = *(on_zero_shared_weak + 232);
            v76 = *(v75 + 72);
            *(v75 + 64) = 0;
            *(v75 + 72) = 0;
            if (v76)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v76);
            }
          }

          if (v55)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v55);
          }

          if (*(a1 + 394) == 1)
          {
            v77 = 168;
            if (a4)
            {
              v77 = 176;
            }

            v78 = *(*(a1 + 360) + v77);
            v79 = *(on_zero_shared_weak + 136);
            *(v79 + 64) = v78;
            *(v79 + 72) = 0;
            v80 = *(on_zero_shared_weak + 232);
            v81 = *(v80 + 72);
            *(v80 + 64) = 0;
            *(v80 + 72) = 0;
            if (v81)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v81);
            }
          }

          v82 = v96[6];
          *(a8 + 64) = v82;
          *(a8 + 24) = a9;
          *(a8 + 32) = on_zero_shared_weak;
          *(a8 + 48) = a3;
          *(a8 + 40) = v95;
          if (a14[1] == 1)
          {
            v83 = (*(*(v82 + 96) + 48) - *(*(v82 + 96) + 40)) / *(*(v82 + 96) + 8) - v96[12];
            *(a8 + 72) = 0;
            *(a8 + 80) = v83;
            *(a8 + 88) = 0;
            *(a8 + 96) = 1;
          }

          v84 = ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::Textured::TileScalar>>::pop(*(*(a1 + 360) + 448));
          ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v100, v84);
          if (*(a6 + 1) >= *(a7 + 1))
          {
            v88 = v102;
            *v102 = 15360;
            *(v88 + 2) = COERCE_UNSIGNED_INT(1.0);
            LOWORD(v89) = 0;
          }

          else
          {
            __powidf2();
            v86 = *(a6 + 8) * v85 - *(a7 + 8);
            v87 = *(a7 + 4) + ~*(a6 + 4) * v85 + 1;
            *&v85 = v85;
            v88 = v102;
            *v102 = LOWORD(v85);
            *(v88 + 1) = v86;
            *(v88 + 2) = LOWORD(v85);
            v89 = v87;
          }

          *(v88 + 3) = v89;
          ggl::BufferMemory::~BufferMemory(&v100);
          v90 = *(on_zero_shared_weak + 136);
          *(v90 + 32) = v84;
          *(v90 + 40) = 0;
          v91 = *(on_zero_shared_weak + 232);
          v92 = *(v91 + 40);
          *(v91 + 32) = 0;
          *(v91 + 40) = 0;
          if (v92)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v92);
          }

          return;
        }

LABEL_74:
        v93 = std::__throw_bad_function_call[abi:nn200100]();
        if ((a7 & 1) == 0)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v31);
        }

        _Unwind_Resume(v93);
      }
    }
  }

  ggl::FragmentedPool<ggl::Textured::SRGBBlendPos2DUVPipelineSetup>::pop(*(*(a1 + 360) + 304), v21, v22, v23, v24, v25, v26, v27, v94);
  v35 = v34;
  v97 = a7;
  if (*a14 == 1)
  {
    v36 = *(a1 + 360);
    if (a14[2] == 1)
    {
      v37 = v36[27];
      v38 = v36[28];
      if (!v38)
      {
        goto LABEL_15;
      }

LABEL_13:
      v40 = 0;
      atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
      v100 = v37;
      v101 = v38;
      atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
      goto LABEL_16;
    }

    v37 = v36[25];
    v38 = v36[26];
    if (v38)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v39 = *(a1 + 360);
    v37 = *(v39 + 184);
    v38 = *(v39 + 192);
    if (v38)
    {
      goto LABEL_13;
    }
  }

LABEL_15:
  v38 = 0;
  v100 = v37;
  v101 = 0;
  v40 = 1;
LABEL_16:
  md::COverlayRenderLayer::setTexturePipeline<ggl::Textured::SRGBBlendPos2DUVPipelineSetup,ggl::Textured::SRGBBlendPos2DUVPipelineState>(a1, v34, *a12, a12[1], a13, a10, a11, a4, &v100);
  if (v101)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v101);
  }

  if (*(a1 + 394) == 1)
  {
    v41 = 168;
    if (a4)
    {
      v41 = 176;
    }

    v42 = *(*(a1 + 360) + v41);
    v43 = *(v35 + 136);
    *(v43 + 64) = v42;
    *(v43 + 72) = 0;
    v44 = *(v35 + 232);
    v45 = *(v44 + 72);
    *(v44 + 64) = 0;
    *(v44 + 72) = 0;
    if (v45)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v45);
    }
  }

  v46 = *(a1 + 360);
  if ((*a14 & 1) == 0)
  {
    *(a8 + 64) = *(v46 + 64);
    *(a8 + 24) = a9;
    *(a8 + 32) = v35;
    *(a8 + 48) = a3;
    *(a8 + 40) = a5;
    if (v40)
    {
      return;
    }

    goto LABEL_29;
  }

  *(a8 + 64) = *(v46 + 80);
  *(a8 + 24) = a9;
  *(a8 + 32) = v35;
  *(a8 + 48) = a3;
  *(a8 + 40) = a5;
  TileScalar = md::COverlayRenderLayer::getTileScalar(*(v46 + 448), a6, v97);
  v48 = *(v35 + 136);
  *(v48 + 32) = TileScalar;
  *(v48 + 40) = 0;
  v49 = *(v35 + 232);
  v50 = *(v49 + 40);
  *(v49 + 32) = 0;
  *(v49 + 40) = 0;
  if (v50)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v50);
  }

  if ((v40 & 1) == 0)
  {
LABEL_29:

    std::__shared_weak_count::__release_shared[abi:nn200100](v38);
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,md::COverlayRenderLayer::KeyframeState>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,md::COverlayRenderLayer::KeyframeState>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,md::COverlayRenderLayer::KeyframeState>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,md::COverlayRenderLayer::KeyframeState>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(float *a1, unsigned int a2, _DWORD **a3)
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

void ggl::FragmentedPool<ggl::Textured::SRGBBlendColormappedPos2DUVPipelineSetup>::pop(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = a1[1];
  if (v10 == *a1)
  {
    v12 = a1[11];
    if (!v12)
    {
      goto LABEL_7;
    }

    v11 = (*(*v12 + 48))(v12, a2, a3, a4, a5, a6, a7, a8);
    v22 = v11;
  }

  else
  {
    v11 = *(v10 - 8);
    v22 = v11;
    a1[1] = v10 - 8;
  }

  std::vector<ggl::Textured::SRGBBlendColormappedPos2DUVPipelineSetup *,geo::allocator_adapter<ggl::Textured::SRGBBlendColormappedPos2DUVPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100]((a1 + 4), &v22);
  v23 = v11;
  v13 = a1[15];
  if (v13)
  {
    (*(*v13 + 48))(v13, &v23);
    return;
  }

LABEL_7:
  v14 = std::__throw_bad_function_call[abi:nn200100]();
  md::COverlayRenderLayer::layoutRibbon<md::Ribbons::PolylineOverlayRibbonDescriptor>(v14, v15, v16, v17, v18, v19, v20, v21, a9);
}

void md::COverlayRenderLayer::layoutRibbon<md::Ribbons::PolylineOverlayRibbonDescriptor>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, char a8, char a9)
{
  v47 = *MEMORY[0x1E69E9840];
  v41 = a6;
  v42 = a3;
  v11 = *a2;
  v12 = *(*a2 + 232);
  if (v12)
  {
    v13 = v12 == a1;
  }

  else
  {
    v13 = 0;
  }

  if (!v13)
  {
    *(v11 + 232) = a1;
  }

  *(a4 + 57) = a5;
  v14 = *(a4 + 80);
  v31[4] = *(a4 + 64);
  v31[5] = v14;
  v15 = *(a4 + 16);
  v31[0] = *a4;
  v31[1] = v15;
  v16 = *(a4 + 48);
  v31[2] = *(a4 + 32);
  v31[3] = v16;
  v17 = *(a4 + 112);
  v31[6] = *(a4 + 96);
  *v32 = v17;
  *&v32[9] = *(a4 + 121);
  v18 = *(a4 + 152);
  v33 = *(a4 + 144);
  v34 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    v11 = *a2;
  }

  v36 = *(a4 + 164);
  v35 = *(a4 + 160);
  v37 = *(a4 + 176);
  v38 = *(a4 + 184);
  v19 = *(a4 + 208);
  v39 = *(a4 + 192);
  v40 = v19;
  v32[22] = a7;
  v32[23] = a8;
  v20 = v32[21] | a7;
  v32[21] |= a7;
  *&v32[8] = 1065353216;
  md::PolylineOverlayLayer<md::Ribbons::PolylineOverlayRibbonDescriptor>::layout(v11, v31);
  if (v32[24])
  {
    v21 = 255;
  }

  else
  {
    v21 = 15;
  }

  if (v20)
  {
    v22 = v21 | 0x300;
  }

  else
  {
    v22 = v21;
  }

  v23 = *a2;
  if (a9)
  {
    v44[0] = &unk_1F2A196E0;
    v44[1] = &v41;
    v44[2] = &v42;
    v44[3] = v44;
    v24 = *(v23 + 8);
    v25 = *(v23 + 16);
    while (v24 != v25)
    {
      v26 = *v24;
      std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](v45, v44);
      if (*(v26 + 1424) == 1)
      {
        ggl::Batcher::reset((v26 + 1296));
        md::RenderItemPool::reset((v26 + 1376));
        std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](v46, v45);
        md::Ribbons::RibbonBatch<md::Ribbons::PolylineOverlayRibbonDescriptor>::collectRenderItemsForPassesNoReset(v26, v22, v46);
        std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v46);
      }

      std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v45);
      ++v24;
    }

    v30 = v44;
  }

  else
  {
    v43[0] = &unk_1F2A196E0;
    v43[1] = &v41;
    v43[2] = &v42;
    v43[3] = v43;
    v27 = *(v23 + 8);
    v28 = *(v23 + 16);
    while (v27 != v28)
    {
      v29 = *v27;
      std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](v46, v43);
      md::Ribbons::RibbonBatch<md::Ribbons::PolylineOverlayRibbonDescriptor>::collectRenderItemsForPassesNoReset(v29, v22, v46);
      std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v46);
      ++v27;
    }

    v30 = v43;
  }

  std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v30);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v18);
  }
}

void sub_1B2F6ACE8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void md::COverlayRenderLayer::layoutRibbon<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, char a8, char a9)
{
  v9 = a2;
  v139 = *MEMORY[0x1E69E9840];
  v128 = a6;
  v129 = a3;
  v10 = *a2;
  v11 = *(*a2 + 232);
  if (v11)
  {
    v12 = v11 == a1;
  }

  else
  {
    v12 = 0;
  }

  if (!v12)
  {
    *(v10 + 232) = a1;
    v11 = a1;
  }

  *(a4 + 57) = a5;
  v13 = *(a4 + 80);
  v116 = *(a4 + 64);
  v117 = v13;
  v14 = *(a4 + 16);
  *v112 = *a4;
  v113 = v14;
  v15 = *(a4 + 48);
  v114 = *(a4 + 32);
  v115 = v15;
  v16 = *(a4 + 112);
  v118 = *(a4 + 96);
  *v119 = v16;
  *&v119[9] = *(a4 + 121);
  v17 = *(a4 + 152);
  v120 = *(a4 + 144);
  v121 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    v10 = *a2;
    v11 = *(*a2 + 232);
  }

  v123 = *(a4 + 164);
  v122 = *(a4 + 160);
  v124 = *(a4 + 176);
  v125 = *(a4 + 184);
  v18 = *(a4 + 208);
  v126 = *(a4 + 192);
  v127 = v18;
  v119[22] = a7;
  v119[23] = a8;
  v19 = v119[21] | a7;
  v119[21] |= a7;
  *&v119[8] = 1065353216;
  if (*(v11 + 304) == 1)
  {
    v20 = *(v11 + 176);
    *(v10 + 56) = v20;
    if (v119[24] == 1)
    {
      *(v10 + 88) = v20;
    }
  }

  if (v119[20] == 1)
  {
    *(v10 + 64) = *(v11 + 200);
    *(v10 + 72) = *(v11 + 208);
    *(v10 + 80) = *(v11 + 240);
    v21 = v119[24];
    if (v119[24] == 1)
    {
      *(v10 + 96) = *(v11 + 200);
      *(v10 + 104) = *(v11 + 208);
      *(v10 + 112) = *(v11 + 240);
    }

    v22 = *(v11 + 248);
    *(v10 + 120) = v22;
    v23 = 128;
    goto LABEL_21;
  }

  v24 = BYTE8(v115);
  *(v10 + 64) = *(v11 + 184);
  *(v10 + 72) = *(v11 + 208);
  if (v24 == 1)
  {
    *(v10 + 80) = *(v11 + 232);
    v21 = v119[24];
    if (v119[24] == 1)
    {
      *(v10 + 96) = *(v11 + 184);
      *(v10 + 104) = *(v11 + 208);
      v22 = *(v11 + 232);
LABEL_20:
      v23 = 112;
LABEL_21:
      *(v10 + v23) = v22;
    }
  }

  else
  {
    *(v10 + 80) = *(v11 + 224);
    v21 = v119[24];
    if (v119[24] == 1)
    {
      *(v10 + 96) = *(v11 + 184);
      *(v10 + 104) = *(v11 + 208);
      v22 = *(v11 + 224);
      goto LABEL_20;
    }
  }

  v25 = *(v10 + 8);
  v108 = *(v10 + 16);
  if (v108 != v25 && (*(*v25 + 1456) & 1) == 0)
  {
    md::LayoutContext::frameState(v112[0]);
    if (*(v26 + 632))
    {
      v27 = *(v112[0] + 1);
      v110 = md::LayoutContext::get<md::CameraContext>(v27);
      v105 = v9;
      if (*(v110 + 3784))
      {
        v28 = *(v10 + 144);
        if (v28)
        {
          v29 = 0;
          v30 = 0;
          v31 = *(gdc::Camera::cameraFrame(v110) + 16);
          v109 = v28 + 1696;
          v32 = v28 + 32;
          do
          {
            for (i = 0; i != 4; ++i)
            {
              v34 = v29 | (4 * i);
              geo::Frustum<double>::transformed(v136, v110 + 984, v109 + 56 * v34);
              v35 = v32 + 104 * v34;
              v36 = *(v35 + 56);
              v37 = *(v35 + 88);
              v138[1] = *(v35 + 72);
              v138[2] = v37;
              v138[0] = v36;
              v132 = 0uLL;
              v133 = v31;
              gm::Box<double,3>::operator+=(v138, &v132);
              for (j = 0; j != 24; j += 4)
              {
                v39 = 0;
                v40 = v136[j + 2];
                v130 = *&v136[j];
                v131 = v40;
                do
                {
                  v41 = v138 + v39;
                  if (*(&v130 + v39) >= 0.0)
                  {
                    v41 = &v138[1] + v39 + 8;
                  }

                  *(&v132 + v39) = *v41;
                  v39 += 8;
                }

                while (v39 != 24);
                v42 = 0;
                v43 = 0.0;
                do
                {
                  v43 = v43 + *&v136[j + v42] * *(&v132 + v42 * 8);
                  ++v42;
                }

                while (v42 != 3);
                v44 = *&v136[j + 3] + v43;
                if (v44 < 0.0)
                {
                  break;
                }
              }

              v45 = 1 << (4 * i + v29);
              if (v44 < 0.0)
              {
                v45 = 0;
              }

              v30 |= v45;
            }

            ++v29;
          }

          while (v29 != 4);
          goto LABEL_50;
        }

        ggl::DataAccess<ggl::Tile::View>::DataAccess(v136, *(v10 + 192), 0);
        v47 = v137;
        v48 = 0.0;
      }

      else
      {
        v46 = 0.0;
        if (*md::LayoutContext::get<md::ElevationContext>(v27) == 1 && *(v10 + 184) == 1)
        {
          v46 = *(gdc::Camera::cameraFrame(v110) + 16) * 0.0000000249532021 * (1 << *(v10 + 153));
        }

        ggl::DataAccess<ggl::Tile::View>::DataAccess(v136, *(v10 + 192), 0);
        v47 = v137;
        v48 = v46;
      }

      v30 = ggl::CullingGrid::intersectedCellsForView(v47, v48);
      ggl::BufferMemory::~BufferMemory(v136);
LABEL_50:
      v108 = *(v10 + 16);
      if (*(v10 + 8) == v108)
      {
        v25 = *(v10 + 8);
        v9 = v105;
      }

      else
      {
        v49 = vdupq_n_s64(2uLL);
        v25 = *(v10 + 8);
        v50 = v25;
        v9 = v105;
        do
        {
          v51 = *v50;
          v52 = *(*v50 + 1400);
          v53 = *(*v50 + 1408);
          if (v52 == v53)
          {
            v54 = 0;
          }

          else
          {
            v54 = 0;
            do
            {
              v55 = *v52++;
              v56 = (*(v55 + 96) & v30) != 0;
              v54 |= v56;
              *(v55 + 48) = v56;
            }

            while (v52 != v53);
          }

          v57 = v54 & 1;
          v58 = (v51 + 264);
          v59 = 10;
          v60 = xmmword_1B33B0560;
          do
          {
            if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xAuLL), v60)).u8[0])
            {
              *(v58 - 128) = v57;
            }

            if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xAuLL), *&v60)).i32[1])
            {
              *v58 = v57;
            }

            v60 = vaddq_s64(v60, v49);
            v58 += 256;
            v59 -= 2;
          }

          while (v59);
          *(v51 + 1424) = v57;
          ++v50;
        }

        while (v50 != v108);
      }

      goto LABEL_66;
    }

    v25 = *(v10 + 8);
    v108 = *(v10 + 16);
  }

LABEL_66:
  if (v25 == v108)
  {
    goto LABEL_147;
  }

  v61 = v25;
  v106 = v9;
  v111 = vdupq_n_s64(2uLL);
  do
  {
    v62 = *v61;
    if (*(*v61 + 1424) == 1)
    {
      v107 = v61;
      md::PolylineOverlayStyle::layout(*(v62 + 1472), v112);
      v63 = *(v62 + 1472);
      os_unfair_lock_lock((v63 + 196));
      v64 = *(v63 + 152);
      v65 = *(v63 + 156);
      os_unfair_lock_unlock((v63 + 196));
      v66 = *(v62 + 1400);
      for (k = *(v62 + 1408); v66 != k; ++v66)
      {
        v68 = *v66;
        if (*(*v66 + 48) == 1)
        {
          v69 = *(v68 + 104) >= v64 && *(v68 + 100) <= v65;
          *(v68 + 48) = v69;
        }
      }

      v70 = **(v62 + 1472);
      v71 = (v62 + 264);
      v72 = 10;
      v73 = xmmword_1B33B0560;
      v61 = v107;
      do
      {
        if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xAuLL), v73)).u8[0])
        {
          *(v71 - 128) = v70;
        }

        if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xAuLL), *&v73)).i32[1])
        {
          *v71 = v70;
        }

        v73 = vaddq_s64(v73, v111);
        v71 += 256;
        v72 -= 2;
      }

      while (v72);
      *(v62 + 1424) = v70;
      if (v70)
      {
        v74 = 0;
        LOBYTE(v132) = *(v62 + 1464);
        BYTE1(v132) = BYTE8(v117);
        BYTE2(v132) = v119[23];
        BYTE3(v132) = v119[22];
        v75 = *(*(v62 + 8) + 232);
        while (1)
        {
          v76 = v62 + 16 + (v74 << 7);
          if (*(*(v62 + 1472) + v74 + 120) == 1)
          {
            break;
          }

          *(v76 + 120) = 0;
LABEL_143:
          if (++v74 == 10)
          {
            v61 = v107;
            goto LABEL_145;
          }
        }

        *(v76 + 120) = 1;
        *(v76 + 40) = BYTE9(v115);
        if (v74 > 9u)
        {
          v79 = 0;
        }

        else
        {
          if (((1 << v74) & 0x255) != 0)
          {
            v77 = v75[20];
            v78 = v77[1];
            if (v78 == *v77)
            {
              v84 = v77[11];
              if (!v84)
              {
                goto LABEL_167;
              }

              v79 = (*(*v84 + 48))(v84, v73);
              *&v138[0] = v79;
            }

            else
            {
              v79 = *(v78 - 8);
              *&v138[0] = v79;
              v77[1] = v78 - 8;
            }

            std::vector<ggl::GradientPolylineOverlayRibbon::AlphaFillPipelineSetup *,geo::allocator_adapter<ggl::GradientPolylineOverlayRibbon::AlphaFillPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v77 + 4), v138);
            v136[0] = v79;
            v85 = v77[15];
            if (!v85)
            {
              goto LABEL_167;
            }
          }

          else if (((1 << v74) & 0x122) != 0)
          {
            v80 = v75[19];
            v81 = v80[1];
            if (v81 == *v80)
            {
              v86 = v80[11];
              if (!v86)
              {
                goto LABEL_167;
              }

              v79 = (*(*v86 + 48))(v86, v73);
              *&v138[0] = v79;
            }

            else
            {
              v79 = *(v81 - 8);
              *&v138[0] = v79;
              v80[1] = v81 - 8;
            }

            std::vector<ggl::GradientPolylineOverlayRibbon::AlphaPipelineSetup *,geo::allocator_adapter<ggl::GradientPolylineOverlayRibbon::AlphaPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v80 + 4), v138);
            v136[0] = v79;
            v85 = v80[15];
            if (!v85)
            {
              goto LABEL_167;
            }
          }

          else
          {
            v82 = v75[21];
            v83 = v82[1];
            if (v83 == *v82)
            {
              v87 = v82[11];
              if (!v87)
              {
                goto LABEL_167;
              }

              v79 = (*(*v87 + 48))(v87, v73);
              *&v138[0] = v79;
            }

            else
            {
              v79 = *(v83 - 8);
              *&v138[0] = v79;
              v82[1] = v83 - 8;
            }

            std::vector<ggl::GradientPolylineOverlayRibbon::FillPipelineSetup *,geo::allocator_adapter<ggl::GradientPolylineOverlayRibbon::FillPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v82 + 4), v138);
            v136[0] = v79;
            v85 = v82[15];
            if (!v85)
            {
LABEL_167:
              std::__throw_bad_function_call[abi:nn200100]();
            }
          }

          (*(*v85 + 48))(v85, v136);
        }

        v88 = *(*(v62 + 8) + 232);
        if (v74 <= 4u)
        {
          if (v74 > 1u)
          {
            if (v74 != 2)
            {
              if (v74 != 3)
              {
                md::PolylinePipelineStateManager<md::Ribbons::GradientPolylineOverlayRibbonDescriptor,ggl::GradientPolylineOverlayRibbon::AlphaFillPipelineState,std::shared_ptr<ggl::GradientPolylineOverlayAlphaFillShader>>::pipelineStateForFunctionConstants(v136, v88[12], &v132);
                goto LABEL_128;
              }

              goto LABEL_127;
            }

LABEL_119:
            md::PolylinePipelineStateManager<md::Ribbons::GradientPolylineOverlayRibbonDescriptor,ggl::GradientPolylineOverlayRibbon::AlphaFillPipelineState,std::shared_ptr<ggl::GradientPolylineOverlayAlphaFillShader>>::pipelineStateForFunctionConstants(v136, v88[10], &v132);
            goto LABEL_128;
          }

          if (!v74)
          {
            md::PolylinePipelineStateManager<md::Ribbons::GradientPolylineOverlayRibbonDescriptor,ggl::GradientPolylineOverlayRibbon::AlphaFillPipelineState,std::shared_ptr<ggl::GradientPolylineOverlayAlphaFillShader>>::pipelineStateForFunctionConstants(v136, v88[8], &v132);
            goto LABEL_128;
          }
        }

        else
        {
          if (v74 <= 7u)
          {
            if (v74 == 5)
            {
              md::PolylinePipelineStateManager<md::Ribbons::GradientPolylineOverlayRibbonDescriptor,ggl::GradientPolylineOverlayRibbon::AlphaPipelineState,std::shared_ptr<ggl::GradientPolylineOverlayAlphaShader>>::pipelineStateForFunctionConstants(v136, v88[13], &v132);
              goto LABEL_128;
            }

            if (v74 == 6)
            {
              md::PolylinePipelineStateManager<md::Ribbons::GradientPolylineOverlayRibbonDescriptor,ggl::GradientPolylineOverlayRibbon::AlphaFillPipelineState,std::shared_ptr<ggl::GradientPolylineOverlayAlphaFillShader>>::pipelineStateForFunctionConstants(v136, v88[14], &v132);
LABEL_128:
              v138[0] = *v136;
LABEL_129:
              ggl::PipelineSetup::setState(v79, v138);
              if (*(&v138[0] + 1))
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](*(&v138[0] + 1));
              }

              **(v79 + 168) = *(v75[32] + 16);
              if (v79)
              {
                v89 = *(v62 + 1472);
                if (v89)
                {
                  os_unfair_lock_lock(v89 + 49);
                  os_unfair_lock_unlock(v89 + 49);
                  v90 = *(v62 + 1472);
                  os_unfair_lock_lock((v90 + 196));
                  os_unfair_lock_unlock((v90 + 196));
                  v92 = *(v90 + 168);
                  v91 = *(v90 + 176);
                  if (v92 != v91)
                  {
                    v93 = v92 + 20;
                    do
                    {
                      v94 = *(v93 - 8) < 1.0 || v93 == v91;
                      v93 += 20;
                    }

                    while (!v94);
                  }

                  operator new();
                }
              }

              *(v76 + 32) = v79;
              goto LABEL_143;
            }

LABEL_127:
            md::PolylinePipelineStateManager<md::Ribbons::GradientPolylineOverlayRibbonDescriptor,ggl::GradientPolylineOverlayRibbon::FillPipelineState,std::shared_ptr<ggl::GradientPolylineOverlayFillShader>>::pipelineStateForFunctionConstants(v136, v88[11], &v132);
            goto LABEL_128;
          }

          if (v74 != 8)
          {
            if (v74 != 9)
            {
              v138[0] = 0uLL;
              goto LABEL_129;
            }

            goto LABEL_119;
          }
        }

        md::PolylinePipelineStateManager<md::Ribbons::GradientPolylineOverlayRibbonDescriptor,ggl::GradientPolylineOverlayRibbon::AlphaPipelineState,std::shared_ptr<ggl::GradientPolylineOverlayAlphaShader>>::pipelineStateForFunctionConstants(v136, v88[9], &v132);
        goto LABEL_128;
      }
    }

LABEL_145:
    ++v61;
  }

  while (v61 != v108);
  v21 = v119[24];
  v19 = v119[21];
  v9 = v106;
LABEL_147:
  if (v21)
  {
    v95 = 255;
  }

  else
  {
    v95 = 15;
  }

  if (v19)
  {
    v96 = v95 | 0x300;
  }

  else
  {
    v96 = v95;
  }

  v97 = *v9;
  if (a9)
  {
    v135[0] = &unk_1F2A19728;
    v135[1] = &v128;
    v135[2] = &v129;
    v135[3] = v135;
    v98 = *(v97 + 8);
    v99 = *(v97 + 16);
    while (v98 != v99)
    {
      v100 = *v98;
      std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](v138, v135);
      if (*(v100 + 1424) == 1)
      {
        ggl::Batcher::reset((v100 + 1296));
        md::RenderItemPool::reset((v100 + 1376));
        std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](v136, v138);
        md::Ribbons::RibbonBatch<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>::collectRenderItemsForPassesNoReset(v100, v96, v136);
        std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v136);
      }

      std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v138);
      ++v98;
    }

    v104 = v135;
  }

  else
  {
    v134[0] = &unk_1F2A19728;
    v134[1] = &v128;
    v134[2] = &v129;
    v134[3] = v134;
    v101 = *(v97 + 8);
    v102 = *(v97 + 16);
    while (v101 != v102)
    {
      v103 = *v101;
      std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](v136, v134);
      md::Ribbons::RibbonBatch<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>::collectRenderItemsForPassesNoReset(v103, v96, v136);
      std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v136);
      ++v101;
    }

    v104 = v134;
  }

  std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v104);
  if (v121)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v121);
  }
}

void sub_1B2F6BD90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, std::__shared_weak_count *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v63 - 176);
  std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](&a63);
  if (a40)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a40);
  }

  _Unwind_Resume(a1);
}

uint64_t **std::__hash_table<std::__hash_value_type<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>,std::__unordered_map_hasher<std::pair<signed char,BOOL>,std::__hash_value_type<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>,md::RenderedCirclePairHash,std::equal_to<std::pair<signed char,BOOL>>,true>,std::__unordered_map_equal<std::pair<signed char,BOOL>,std::__hash_value_type<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>,std::equal_to<std::pair<signed char,BOOL>>,md::RenderedCirclePairHash,true>,std::allocator<std::__hash_value_type<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>>>::__emplace_unique_key_args<std::pair<signed char,BOOL>,std::piecewise_construct_t const&,std::tuple<std::pair<signed char,BOOL> const&>,std::tuple<>>(float *a1, char a2, unsigned __int8 a3, _WORD **a4)
{
  v4 = ((a2 << 6) + (a2 >> 2) + a3 - 0x61C8864680B583EBLL) ^ a2;
  v5 = *(a1 + 2);
  if (!*&v5)
  {
    goto LABEL_22;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = ((a2 << 6) + (a2 >> 2) + a3 - 0x61C8864680B583EBLL) ^ a2;
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

  if (*(v9 + 16) != a2 || *(v9 + 17) != a3)
  {
    goto LABEL_21;
  }

  return v9;
}

void sub_1B2F6C25C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::PolygonOverlayRenderable::Pass,ggl::RenderItem *)>::~__value_func[abi:nn200100](uint64_t a1)
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

ggl::zone_mallocator *std::__function::__func<md::COverlayRenderLayer::layoutResource(md::OverlayTileData::OverlayTileResource const&,md::MapTileDataRenderable<md::OverlayTileData> const*,ggl::CommandBuffer *,md::LayoutContext const&,md::OverlaysContext const*,md::PolylineOverlayLayoutContext &,unsigned int,unsigned long long,std::unordered_map<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>,md::RenderedCirclePairHash,std::equal_to<std::pair<signed char,BOOL>>,std::allocator<std::pair<std::pair<signed char,BOOL> const,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>>> &,float,float,BOOL)::$_2,std::allocator<md::COverlayRenderLayer::layoutResource(md::OverlayTileData::OverlayTileResource const&,md::MapTileDataRenderable<md::OverlayTileData> const*,ggl::CommandBuffer *,md::LayoutContext const&,md::OverlaysContext const*,md::PolylineOverlayLayoutContext &,unsigned int,unsigned long long,std::unordered_map<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>,md::RenderedCirclePairHash,std::equal_to<std::pair<signed char,BOOL>>,std::allocator<std::pair<std::pair<signed char,BOOL> const,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>>> &,float,float,BOOL)::$_2>,void ()(ggl::RenderItem *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 16);
  *(v2 + 48) = **(a1 + 8) + 8;
  v4 = *v3;
  v6 = v2;
  return std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v4 + 72), &v6);
}

__n128 std::__function::__func<md::COverlayRenderLayer::layoutResource(md::OverlayTileData::OverlayTileResource const&,md::MapTileDataRenderable<md::OverlayTileData> const*,ggl::CommandBuffer *,md::LayoutContext const&,md::OverlaysContext const*,md::PolylineOverlayLayoutContext &,unsigned int,unsigned long long,std::unordered_map<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>,md::RenderedCirclePairHash,std::equal_to<std::pair<signed char,BOOL>>,std::allocator<std::pair<std::pair<signed char,BOOL> const,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>>> &,float,float,BOOL)::$_2,std::allocator<md::COverlayRenderLayer::layoutResource(md::OverlayTileData::OverlayTileResource const&,md::MapTileDataRenderable<md::OverlayTileData> const*,ggl::CommandBuffer *,md::LayoutContext const&,md::OverlaysContext const*,md::PolylineOverlayLayoutContext &,unsigned int,unsigned long long,std::unordered_map<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>,md::RenderedCirclePairHash,std::equal_to<std::pair<signed char,BOOL>>,std::allocator<std::pair<std::pair<signed char,BOOL> const,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>>> &,float,float,BOOL)::$_2>,void ()(ggl::RenderItem *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A19800;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

ggl::zone_mallocator *std::__function::__func<md::COverlayRenderLayer::layoutResource(md::OverlayTileData::OverlayTileResource const&,md::MapTileDataRenderable<md::OverlayTileData> const*,ggl::CommandBuffer *,md::LayoutContext const&,md::OverlaysContext const*,md::PolylineOverlayLayoutContext &,unsigned int,unsigned long long,std::unordered_map<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>,md::RenderedCirclePairHash,std::equal_to<std::pair<signed char,BOOL>>,std::allocator<std::pair<std::pair<signed char,BOOL> const,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>>> &,float,float,BOOL)::$_1,std::allocator<md::COverlayRenderLayer::layoutResource(md::OverlayTileData::OverlayTileResource const&,md::MapTileDataRenderable<md::OverlayTileData> const*,ggl::CommandBuffer *,md::LayoutContext const&,md::OverlaysContext const*,md::PolylineOverlayLayoutContext &,unsigned int,unsigned long long,std::unordered_map<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>,md::RenderedCirclePairHash,std::equal_to<std::pair<signed char,BOOL>>,std::allocator<std::pair<std::pair<signed char,BOOL> const,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>>> &,float,float,BOOL)::$_1>,void ()(md::PolygonOverlayRenderable::Pass,ggl::RenderItem *)>::operator()(ggl::zone_mallocator *result, unsigned __int8 *a2, uint64_t *a3)
{
  v5 = *a2;
  v6 = *a3;
  if (v5 > 6)
  {
    if (*a2 <= 0xAu)
    {
      if (v5 - 8 < 2)
      {
        v7 = **(result + 1) + 6;
        goto LABEL_22;
      }

      if (v5 == 7)
      {
        v7 = **(result + 1) + 5;
        goto LABEL_22;
      }

      if (v5 != 10)
      {
        return result;
      }

      goto LABEL_11;
    }

    if (v5 == 11)
    {
LABEL_18:
      v7 = **(result + 1) + 3;
      goto LABEL_22;
    }

    if (v5 == 13)
    {
      v7 = **(result + 1) + 7;
      goto LABEL_22;
    }

    if (v5 != 12)
    {
      return result;
    }

LABEL_17:
    v7 = **(result + 1);
    goto LABEL_22;
  }

  if (*a2 <= 2u)
  {
    if (v5 >= 2)
    {
      v7 = **(result + 1) + 1;
      goto LABEL_22;
    }

    goto LABEL_17;
  }

  if (v5 - 4 < 2)
  {
    goto LABEL_18;
  }

  if (v5 != 3)
  {
    if (v5 != 6)
    {
      return result;
    }

    v7 = **(result + 1) + 4;
    goto LABEL_22;
  }

LABEL_11:
  v7 = **(result + 1) + 2;
LABEL_22:
  v9[1] = v3;
  v9[2] = v4;
  *(v6 + 48) = v7;
  v8 = **(result + 2);
  v9[0] = v6;
  return std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v8 + 72), v9);
}

__n128 std::__function::__func<md::COverlayRenderLayer::layoutResource(md::OverlayTileData::OverlayTileResource const&,md::MapTileDataRenderable<md::OverlayTileData> const*,ggl::CommandBuffer *,md::LayoutContext const&,md::OverlaysContext const*,md::PolylineOverlayLayoutContext &,unsigned int,unsigned long long,std::unordered_map<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>,md::RenderedCirclePairHash,std::equal_to<std::pair<signed char,BOOL>>,std::allocator<std::pair<std::pair<signed char,BOOL> const,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>>> &,float,float,BOOL)::$_1,std::allocator<md::COverlayRenderLayer::layoutResource(md::OverlayTileData::OverlayTileResource const&,md::MapTileDataRenderable<md::OverlayTileData> const*,ggl::CommandBuffer *,md::LayoutContext const&,md::OverlaysContext const*,md::PolylineOverlayLayoutContext &,unsigned int,unsigned long long,std::unordered_map<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>,md::RenderedCirclePairHash,std::equal_to<std::pair<signed char,BOOL>>,std::allocator<std::pair<std::pair<signed char,BOOL> const,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>>> &,float,float,BOOL)::$_1>,void ()(md::PolygonOverlayRenderable::Pass,ggl::RenderItem *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A197B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

ggl::zone_mallocator *std::__function::__func<md::COverlayRenderLayer::layoutResource(md::OverlayTileData::OverlayTileResource const&,md::MapTileDataRenderable<md::OverlayTileData> const*,ggl::CommandBuffer *,md::LayoutContext const&,md::OverlaysContext const*,md::PolylineOverlayLayoutContext &,unsigned int,unsigned long long,std::unordered_map<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>,md::RenderedCirclePairHash,std::equal_to<std::pair<signed char,BOOL>>,std::allocator<std::pair<std::pair<signed char,BOOL> const,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>>> &,float,float,BOOL)::$_0,std::allocator<md::COverlayRenderLayer::layoutResource(md::OverlayTileData::OverlayTileResource const&,md::MapTileDataRenderable<md::OverlayTileData> const*,ggl::CommandBuffer *,md::LayoutContext const&,md::OverlaysContext const*,md::PolylineOverlayLayoutContext &,unsigned int,unsigned long long,std::unordered_map<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>,md::RenderedCirclePairHash,std::equal_to<std::pair<signed char,BOOL>>,std::allocator<std::pair<std::pair<signed char,BOOL> const,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>>> &,float,float,BOOL)::$_0>,void ()(ggl::RenderItem *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 16);
  *(v2 + 48) = **(a1 + 8);
  v4 = *v3;
  v6 = v2;
  return std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v4 + 72), &v6);
}

__n128 std::__function::__func<md::COverlayRenderLayer::layoutResource(md::OverlayTileData::OverlayTileResource const&,md::MapTileDataRenderable<md::OverlayTileData> const*,ggl::CommandBuffer *,md::LayoutContext const&,md::OverlaysContext const*,md::PolylineOverlayLayoutContext &,unsigned int,unsigned long long,std::unordered_map<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>,md::RenderedCirclePairHash,std::equal_to<std::pair<signed char,BOOL>>,std::allocator<std::pair<std::pair<signed char,BOOL> const,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>>> &,float,float,BOOL)::$_0,std::allocator<md::COverlayRenderLayer::layoutResource(md::OverlayTileData::OverlayTileResource const&,md::MapTileDataRenderable<md::OverlayTileData> const*,ggl::CommandBuffer *,md::LayoutContext const&,md::OverlaysContext const*,md::PolylineOverlayLayoutContext &,unsigned int,unsigned long long,std::unordered_map<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>,md::RenderedCirclePairHash,std::equal_to<std::pair<signed char,BOOL>>,std::allocator<std::pair<std::pair<signed char,BOOL> const,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>>> &,float,float,BOOL)::$_0>,void ()(ggl::RenderItem *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A19770;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__hash_table<std::shared_ptr<md::ARAssetOcclusionMeshData>,std::hash<std::shared_ptr<md::ARAssetOcclusionMeshData>>,std::equal_to<std::shared_ptr<md::ARAssetOcclusionMeshData>>,std::allocator<std::shared_ptr<md::ARAssetOcclusionMeshData>>>::~__hash_table(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

void md::Ribbons::RibbonBatch<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>::collectRenderItemsForPassesNoReset(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (*(a1 + 1424) == 1)
  {
    memset(&v50, 0, sizeof(v50));
    std::vector<unsigned int>::reserve(&v50, 5uLL);
    v6 = 0;
    v7 = 0;
    v48 = a1 + 16;
    v8 = (a1 + 136);
    do
    {
      if (((a2 >> v6) & 1) != 0 && *v8 == 1)
      {
        LODWORD(v51) = v6;
        std::vector<unsigned int>::push_back[abi:nn200100](&v50, &v51);
        v9 = *(*(a1 + 8) + 8 * v6 + 56);
        *(v8 - 12) = v9;
        v7 |= *(v9 + 58) == 1;
      }

      ++v6;
      v8 += 128;
    }

    while (v6 != 10);
    begin = v50.__begin_;
    if (v50.__begin_ != v50.__end_)
    {
      v11 = *(a1 + 1400);
      v12 = *(a1 + 1408);
      if (v11 == v12)
      {
        v13 = 0;
      }

      else
      {
        v13 = 0;
        v14 = 16;
        if (v7)
        {
          v14 = 32;
        }

        v45 = *(a1 + 1408);
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
                v16 = ggl::Batcher::commit((a1 + 1296), 0xC8u, v5);
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
                      v22 = *(a1 + 1384);
                      v23 = v22[1];
                      if (v23 == *(a1 + 1392))
                      {
                        v22 = *v22;
                        if (!v22)
                        {
                          v22 = malloc_type_malloc(120 * v23 + 16, 0x1020040EDED9539uLL);
                          *v22 = 0;
                          v22[1] = 0;
                          **(a1 + 1384) = v22;
                        }

                        *(a1 + 1384) = v22;
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
                      std::function<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(*(a3 + 24), v20, (v24 + 2));
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

            ggl::Batcher::addRange(a1 + 1296, (v15 + v46));
          }

          ++v11;
        }

        while (v11 != v12);
        begin = v50.__begin_;
      }

      v31 = ggl::Batcher::commit((a1 + 1296), 0xC8u, v5);
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
            v36 = *(a1 + 1384);
            v37 = v36[1];
            if (v37 == *(a1 + 1392))
            {
              v36 = *v36;
              if (!v36)
              {
                v36 = malloc_type_malloc(120 * v37 + 16, 0x1020040EDED9539uLL);
                *v36 = 0;
                v36[1] = 0;
                **(a1 + 1384) = v36;
              }

              *(a1 + 1384) = v36;
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
            std::function<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(*(a3 + 24), v34, (v38 + 2));
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

void sub_1B2F6CC80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

ggl::zone_mallocator *std::function<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(uint64_t a1, char a2, uint64_t a3)
{
  v8 = a2;
  v7 = a3;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v8, &v7);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__func<void md::COverlayRenderLayer::layoutRibbon<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>(std::unique_ptr<md::PolylineOverlayLayer<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>> const&,ggl::CommandBuffer *,md::PolylineOverlayLayoutContext &,unsigned int,unsigned long long,BOOL,BOOL,BOOL,float)::{lambda(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)#1},std::allocator<void md::COverlayRenderLayer::layoutRibbon<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>(std::unique_ptr<md::PolylineOverlayLayer<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>> const&,ggl::CommandBuffer *,md::PolylineOverlayLayoutContext &,unsigned int,unsigned long long,BOOL,BOOL,BOOL,float)::{lambda(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)#1}>,void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(v4, v5, v6);
}

ggl::zone_mallocator *std::__function::__func<void md::COverlayRenderLayer::layoutRibbon<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>(std::unique_ptr<md::PolylineOverlayLayer<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>> const&,ggl::CommandBuffer *,md::PolylineOverlayLayoutContext &,unsigned int,unsigned long long,BOOL,BOOL,BOOL,float)::{lambda(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)#1},std::allocator<void md::COverlayRenderLayer::layoutRibbon<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>(std::unique_ptr<md::PolylineOverlayLayer<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>> const&,ggl::CommandBuffer *,md::PolylineOverlayLayoutContext &,unsigned int,unsigned long long,BOOL,BOOL,BOOL,float)::{lambda(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)#1}>,void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(ggl::zone_mallocator *result, _BYTE *a2, uint64_t *a3)
{
  v5 = *a2;
  v6 = *a3;
  if (v5 <= 4)
  {
    if (*a2 > 1u)
    {
      if (v5 - 2 < 2)
      {
        v7 = **(result + 1) + 2;
        goto LABEL_20;
      }

      if (v5 == 4)
      {
        v7 = **(result + 1) + 3;
        goto LABEL_20;
      }

LABEL_21:
      v9[1] = v3;
      v9[2] = v4;
      v8 = **(result + 2);
      v9[0] = v6;
      return std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v8 + 72), v9);
    }

    if (!*a2)
    {
      v7 = **(result + 1);
      goto LABEL_20;
    }

LABEL_13:
    v7 = **(result + 1) + 1;
    goto LABEL_20;
  }

  if (*a2 <= 7u)
  {
    if (v5 - 6 < 2)
    {
      v7 = **(result + 1) + 5;
LABEL_20:
      *(v6 + 48) = v7;
      goto LABEL_21;
    }

    if (v5 == 5)
    {
      v7 = **(result + 1) + 4;
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  if (v5 == 8)
  {
    goto LABEL_13;
  }

  if (v5 == 9)
  {
    v7 = **(result + 1) + 6;
    goto LABEL_20;
  }

  if (v5 != 10)
  {
    goto LABEL_21;
  }

  return result;
}

__n128 std::__function::__func<void md::COverlayRenderLayer::layoutRibbon<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>(std::unique_ptr<md::PolylineOverlayLayer<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>> const&,ggl::CommandBuffer *,md::PolylineOverlayLayoutContext &,unsigned int,unsigned long long,BOOL,BOOL,BOOL,float)::{lambda(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)#1},std::allocator<void md::COverlayRenderLayer::layoutRibbon<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>(std::unique_ptr<md::PolylineOverlayLayer<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>> const&,ggl::CommandBuffer *,md::PolylineOverlayLayoutContext &,unsigned int,unsigned long long,BOOL,BOOL,BOOL,float)::{lambda(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)#1}>,void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A19728;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void md::Ribbons::RibbonBatch<md::Ribbons::PolylineOverlayRibbonDescriptor>::collectRenderItemsForPassesNoReset(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (*(a1 + 1424) == 1)
  {
    memset(&v50, 0, sizeof(v50));
    std::vector<unsigned int>::reserve(&v50, 5uLL);
    v6 = 0;
    v7 = 0;
    v48 = a1 + 16;
    v8 = (a1 + 136);
    do
    {
      if (((a2 >> v6) & 1) != 0 && *v8 == 1)
      {
        LODWORD(v51) = v6;
        std::vector<unsigned int>::push_back[abi:nn200100](&v50, &v51);
        v9 = *(*(a1 + 8) + 8 * v6 + 56);
        *(v8 - 12) = v9;
        v7 |= *(v9 + 58) == 1;
      }

      ++v6;
      v8 += 128;
    }

    while (v6 != 10);
    begin = v50.__begin_;
    if (v50.__begin_ != v50.__end_)
    {
      v11 = *(a1 + 1400);
      v12 = *(a1 + 1408);
      if (v11 == v12)
      {
        v13 = 0;
      }

      else
      {
        v13 = 0;
        v14 = 16;
        if (v7)
        {
          v14 = 32;
        }

        v45 = *(a1 + 1408);
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
                v16 = ggl::Batcher::commit((a1 + 1296), 0xC8u, v5);
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
                      v22 = *(a1 + 1384);
                      v23 = v22[1];
                      if (v23 == *(a1 + 1392))
                      {
                        v22 = *v22;
                        if (!v22)
                        {
                          v22 = malloc_type_malloc(120 * v23 + 16, 0x1020040EDED9539uLL);
                          *v22 = 0;
                          v22[1] = 0;
                          **(a1 + 1384) = v22;
                        }

                        *(a1 + 1384) = v22;
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
                      std::function<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(*(a3 + 24), v20, (v24 + 2));
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

            ggl::Batcher::addRange(a1 + 1296, (v15 + v46));
          }

          ++v11;
        }

        while (v11 != v12);
        begin = v50.__begin_;
      }

      v31 = ggl::Batcher::commit((a1 + 1296), 0xC8u, v5);
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
            v36 = *(a1 + 1384);
            v37 = v36[1];
            if (v37 == *(a1 + 1392))
            {
              v36 = *v36;
              if (!v36)
              {
                v36 = malloc_type_malloc(120 * v37 + 16, 0x1020040EDED9539uLL);
                *v36 = 0;
                v36[1] = 0;
                **(a1 + 1384) = v36;
              }

              *(a1 + 1384) = v36;
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
            std::function<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(*(a3 + 24), v34, (v38 + 2));
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

void sub_1B2F6D340(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

ggl::zone_mallocator *std::__function::__func<void md::COverlayRenderLayer::layoutRibbon<md::Ribbons::PolylineOverlayRibbonDescriptor>(std::unique_ptr<md::PolylineOverlayLayer<md::Ribbons::PolylineOverlayRibbonDescriptor>> const&,ggl::CommandBuffer *,md::PolylineOverlayLayoutContext &,unsigned int,unsigned long long,BOOL,BOOL,BOOL,float)::{lambda(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)#1},std::allocator<void md::COverlayRenderLayer::layoutRibbon<md::Ribbons::PolylineOverlayRibbonDescriptor>(std::unique_ptr<md::PolylineOverlayLayer<md::Ribbons::PolylineOverlayRibbonDescriptor>> const&,ggl::CommandBuffer *,md::PolylineOverlayLayoutContext &,unsigned int,unsigned long long,BOOL,BOOL,BOOL,float)::{lambda(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)#1}>,void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(ggl::zone_mallocator *result, _BYTE *a2, uint64_t *a3)
{
  v5 = *a2;
  v6 = *a3;
  if (v5 <= 4)
  {
    if (*a2 > 1u)
    {
      if (v5 - 2 < 2)
      {
        v7 = **(result + 1) + 2;
        goto LABEL_20;
      }

      if (v5 == 4)
      {
        v7 = **(result + 1) + 3;
        goto LABEL_20;
      }

LABEL_21:
      v9[1] = v3;
      v9[2] = v4;
      v8 = **(result + 2);
      v9[0] = v6;
      return std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v8 + 72), v9);
    }

    if (!*a2)
    {
      v7 = **(result + 1);
      goto LABEL_20;
    }

LABEL_13:
    v7 = **(result + 1) + 1;
    goto LABEL_20;
  }

  if (*a2 <= 7u)
  {
    if (v5 - 6 < 2)
    {
      v7 = **(result + 1) + 5;
LABEL_20:
      *(v6 + 48) = v7;
      goto LABEL_21;
    }

    if (v5 == 5)
    {
      v7 = **(result + 1) + 4;
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  if (v5 == 8)
  {
    goto LABEL_13;
  }

  if (v5 == 9)
  {
    v7 = **(result + 1) + 6;
    goto LABEL_20;
  }

  if (v5 != 10)
  {
    goto LABEL_21;
  }

  return result;
}

__n128 std::__function::__func<void md::COverlayRenderLayer::layoutRibbon<md::Ribbons::PolylineOverlayRibbonDescriptor>(std::unique_ptr<md::PolylineOverlayLayer<md::Ribbons::PolylineOverlayRibbonDescriptor>> const&,ggl::CommandBuffer *,md::PolylineOverlayLayoutContext &,unsigned int,unsigned long long,BOOL,BOOL,BOOL,float)::{lambda(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)#1},std::allocator<void md::COverlayRenderLayer::layoutRibbon<md::Ribbons::PolylineOverlayRibbonDescriptor>(std::unique_ptr<md::PolylineOverlayLayer<md::Ribbons::PolylineOverlayRibbonDescriptor>> const&,ggl::CommandBuffer *,md::PolylineOverlayLayoutContext &,unsigned int,unsigned long long,BOOL,BOOL,BOOL,float)::{lambda(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)#1}>,void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A196E0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::Textured::SRGBBlendColormappedPos2DUVPipelineSetup *,geo::allocator_adapter<ggl::Textured::SRGBBlendColormappedPos2DUVPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Textured::SRGBBlendColormappedPos2DUVPipelineSetup *>(v11, v10);
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
    result = std::__split_buffer<ggl::Textured::SRGBBlendColormappedPos2DUVPipelineSetup *,geo::allocator_adapter<ggl::Textured::SRGBBlendColormappedPos2DUVPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Textured::SRGBBlendColormappedPos2DUVPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Textured::SRGBBlendColormappedPos2DUVPipelineSetup *>(uint64_t a1, void *a2)
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

void ggl::FragmentedPool<ggl::Textured::SRGBBlendPos2DUVPipelineSetup>::pop(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  v10 = a1[1];
  if (v10 == *a1)
  {
    v12 = a1[11];
    if (!v12)
    {
      goto LABEL_7;
    }

    v11 = (*(*v12 + 48))(v12, a2, a3, a4, a5, a6, a7, a8);
    v22 = v11;
  }

  else
  {
    v11 = *(v10 - 8);
    v22 = v11;
    a1[1] = v10 - 8;
  }

  std::vector<ggl::Textured::SRGBBlendPos2DUVPipelineSetup *,geo::allocator_adapter<ggl::Textured::SRGBBlendPos2DUVPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100]((a1 + 4), &v22);
  v23 = v11;
  v13 = a1[15];
  if (v13)
  {
    (*(*v13 + 48))(v13, &v23);
    return;
  }

LABEL_7:
  v14 = std::__throw_bad_function_call[abi:nn200100]();
  md::COverlayRenderLayer::setTexturePipeline<ggl::Textured::SRGBBlendPos2DUVPipelineSetup,ggl::Textured::SRGBBlendPos2DUVPipelineState>(v14, v15, v16, v17, v18, v19, v20, v21, a9);
}

void md::COverlayRenderLayer::setTexturePipeline<ggl::Textured::SRGBBlendPos2DUVPipelineSetup,ggl::Textured::SRGBBlendPos2DUVPipelineState>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void *a7, int a8, uint64_t *a9)
{
  v15 = *(a2 + 136);
  *v15 = a3;
  v15[1] = 0;
  v16 = *(a2 + 232);
  if (a4)
  {
    atomic_fetch_add_explicit((a4 + 8), 1uLL, memory_order_relaxed);
  }

  v17 = v16[1];
  *v16 = a3;
  v16[1] = a4;
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v17);
  }

  v18 = *(a2 + 136);
  v19 = *a5;
  v20 = a5[1];
  *(v18 + 16) = *a5;
  *(v18 + 24) = 0;
  v21 = *(a2 + 232);
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
  }

  v22 = *(v21 + 24);
  *(v21 + 16) = v19;
  *(v21 + 24) = v20;
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v22);
  }

  v23 = *(a2 + 136);
  v24 = *a6;
  v25 = a6[1];
  *(v23 + 48) = *a6;
  *(v23 + 56) = 0;
  v26 = *(a2 + 232);
  if (v25)
  {
    atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
  }

  v27 = *(v26 + 56);
  *(v26 + 48) = v24;
  *(v26 + 56) = v25;
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v27);
  }

  **(a2 + 168) = *a7;
  v28 = *a9;
  v29 = a9[1];
  if (v29)
  {
    atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
    v35 = v28;
    v36 = v29;
    atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
    ggl::PipelineSetup::setState(a2, &v35);
    std::__shared_weak_count::__release_shared[abi:nn200100](v29);
    std::__shared_weak_count::__release_shared[abi:nn200100](v29);
  }

  else
  {
    v35 = *a9;
    v36 = 0;
    ggl::PipelineSetup::setState(a2, &v35);
  }

  if (*(a1 + 394) == 1)
  {
    v30 = 168;
    if (a8)
    {
      v30 = 176;
    }

    v31 = *(*(a1 + 360) + v30);
    v32 = *(a2 + 136);
    *(v32 + 64) = v31;
    *(v32 + 72) = 0;
    v33 = *(a2 + 232);
    v34 = *(v33 + 72);
    *(v33 + 64) = 0;
    *(v33 + 72) = 0;
    if (v34)
    {

      std::__shared_weak_count::__release_shared[abi:nn200100](v34);
    }
  }
}

ggl::zone_mallocator *md::COverlayRenderLayer::getTileScalar(md::COverlayRenderLayer *this, const geo::QuadTile *a2, const geo::QuadTile *a3)
{
  v5 = ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::Textured::TileScalar>>::pop(this);
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v19, v5);
  if (*(a2 + 1) >= *(a3 + 1))
  {
    v15 = v20;
    *v20 = 15360;
    v15[2] = COERCE_UNSIGNED_INT(1.0);
    _H0 = 0;
  }

  else
  {
    __powidf2();
    v7 = _D0;
    *&_D0 = 1.0 / _D0;
    v8 = *(a3 + 2) - *(a2 + 2) * v7;
    v9 = ~*(a3 + 1) + v7 + *(a2 + 1) * v7;
    __asm { FCVT            H1, S0 }

    v15 = v20;
    *v20 = _H1;
    _S2 = *&_D0 * v8;
    __asm { FCVT            H2, S2 }

    v15[1] = LOWORD(_S2);
    v15[2] = _H1;
    *&_D0 = *&_D0 * v9;
    __asm { FCVT            H0, S0 }
  }

  v15[3] = _H0;
  ggl::BufferMemory::~BufferMemory(v19);
  return v5;
}

ggl::zone_mallocator *ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::Textured::TileScalar>>::pop(void *a1)
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

  std::vector<ggl::ConstantDataTyped<ggl::Textured::TileScalar> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::Textured::TileScalar> *,ggl::zone_mallocator>>::push_back[abi:nn200100]((a1 + 4), &v9);
  v10 = v3;
  v5 = a1[15];
  if (v5)
  {
    (*(*v5 + 48))(v5, &v10);
    return v3;
  }

LABEL_7:
  v7 = std::__throw_bad_function_call[abi:nn200100]();
  return std::vector<ggl::ConstantDataTyped<ggl::Textured::TileScalar> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::Textured::TileScalar> *,ggl::zone_mallocator>>::push_back[abi:nn200100](v7, v8);
}

ggl::zone_mallocator *std::vector<ggl::ConstantDataTyped<ggl::Textured::TileScalar> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::Textured::TileScalar> *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::Textured::TileScalar> *>(v11, v10);
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
    result = std::__split_buffer<ggl::ConstantDataTyped<ggl::Textured::TileScalar> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::Textured::TileScalar> *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::Textured::TileScalar> *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::Textured::TileScalar> *>(uint64_t a1, void *a2)
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

ggl::zone_mallocator *std::vector<ggl::Textured::SRGBBlendPos2DUVPipelineSetup *,geo::allocator_adapter<ggl::Textured::SRGBBlendPos2DUVPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Textured::SRGBBlendPos2DUVPipelineSetup *>(v11, v10);
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
    result = std::__split_buffer<ggl::Textured::SRGBBlendPos2DUVPipelineSetup *,geo::allocator_adapter<ggl::Textured::SRGBBlendPos2DUVPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Textured::SRGBBlendPos2DUVPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Textured::SRGBBlendPos2DUVPipelineSetup *>(uint64_t a1, void *a2)
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

ggl::zone_mallocator *std::vector<ggl::Textured::SRGBBlendPos4DUVPipelineSetup *,geo::allocator_adapter<ggl::Textured::SRGBBlendPos4DUVPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Textured::SRGBBlendPos4DUVPipelineSetup *>(v11, v10);
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
    result = std::__split_buffer<ggl::Textured::SRGBBlendPos4DUVPipelineSetup *,geo::allocator_adapter<ggl::Textured::SRGBBlendPos4DUVPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Textured::SRGBBlendPos4DUVPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Textured::SRGBBlendPos4DUVPipelineSetup *>(uint64_t a1, void *a2)
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

ggl::zone_mallocator *std::vector<ggl::Textured::PoleTexturedBlendPipelineSetup *,geo::allocator_adapter<ggl::Textured::PoleTexturedBlendPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Textured::PoleTexturedBlendPipelineSetup *>(v11, v10);
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
    result = std::__split_buffer<ggl::Textured::PoleTexturedBlendPipelineSetup *,geo::allocator_adapter<ggl::Textured::PoleTexturedBlendPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Textured::PoleTexturedBlendPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Textured::PoleTexturedBlendPipelineSetup *>(uint64_t a1, void *a2)
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

ggl::zone_mallocator *std::vector<ggl::PolygonSolidFill::MeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonSolidFill::MeshPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolygonSolidFill::MeshPipelineSetup *>(v11, v10);
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
    result = std::__split_buffer<ggl::PolygonSolidFill::MeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonSolidFill::MeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolygonSolidFill::MeshPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::PolygonSolidFill::MeshPipelineSetup *>(uint64_t a1, void *a2)
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

uint64_t *___ZN2md19COverlayRenderLayer24updateKeyframeAnimationsERKNSt3__16vectorIPNS_21MapTileDataRenderableINS_15OverlayTileDataEEENS1_9allocatorIS6_EEEEPKNS_15OverlaysContextE_block_invoke(uint64_t a1, float a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 68);
  v4 = v3 * a2;
  v5 = floorf(v4);
  v6 = roundf(v4);
  if (!*(a1 + 56))
  {
    v5 = v6;
  }

  v7 = v5 % v3;
  if (v7 + 1 == v3)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7 + 1;
  }

  v9 = v4 - v7;
  if (*(a1 + 70))
  {
    v10 = v9;
  }

  else
  {
    v10 = 0.0;
  }

  v11 = *(a1 + 64);
  v13 = (a1 + 64);
  result = std::__hash_table<std::__hash_value_type<unsigned int,md::COverlayRenderLayer::KeyframeState>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,md::COverlayRenderLayer::KeyframeState>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,md::COverlayRenderLayer::KeyframeState>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,md::COverlayRenderLayer::KeyframeState>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((v2 + 400), v11, &v13);
  *(result + 10) = v7;
  *(result + 11) = v8;
  *(result + 6) = v10;
  return result;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,void *>>>::operator()[abi:nn200100](char a1, uint64_t a2)
{
  if (a1)
  {
    *(a2 + 24) = &unk_1F2A4BA00;
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void std::__function::__func<md::COverlayRenderResources::resetPools(void)::$_0,std::allocator<md::COverlayRenderResources::resetPools(void)::$_0>,void ()(ggl::RenderItem *)>::operator()(uint64_t a1, void *a2)
{
  v2 = *a2;
  v2[9] = 0;
  v2[10] = 0;
  v2[11] = 0;
  v2[12] = 1;
}

void ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A194D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void sub_1B2F6EC28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  MEMORY[0x1B8C62190](v14, v15, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void ggl::ConstantDataTyped<ggl::PolygonSolidFill::SolidFill>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::PolygonSolidFill::SolidFill>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A2F088;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::PolygonSolidFill::MeshPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A2F018;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void sub_1B2F6F078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  MEMORY[0x1B8C62190](v14, v15, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<ggl::Textured::PoleTexturedBlendPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A192E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::Textured::SRGBBlendPos4DUVPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A192A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::Textured::SRGBBlendColormappedPos2DUVPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A19270;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::Textured::SRGBBlendPos2DUVPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A19238;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::DaVinci::RibbonPipelineState::~RibbonPipelineState(ggl::DaVinci::RibbonPipelineState *this)
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

void ggl::MeshTyped<ggl::DaVinci::RibbonVbo>::typedReflection()
{
  {
    {
      ggl::MeshTyped<ggl::DaVinci::RibbonVbo>::attributesReflection(void)::r = &ggl::DaVinci::ribbonVboReflection;
    }

    ggl::MeshTyped<ggl::DaVinci::RibbonVbo>::typedReflection(void)::r = &ggl::MeshTyped<ggl::DaVinci::RibbonVbo>::attributesReflection(void)::r;
    unk_1EB841D08 = 1;
  }
}

void ggl::DaVinci::RibbonPipelineSetup::~RibbonPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SliceAssignmentT<(md::SliceType)6>>()
{
  v0 = &unk_1EB83F000;
  {
    v0 = &unk_1EB83F000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SliceAssignmentT<(md::SliceType)6>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB83F000;
    }
  }

  return v0[2];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls16SliceAssignmentTILNS9_9SliceTypeE6EEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESH_E4typeEvEUlS2_E_vEERS4_OSH_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A19EA0;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls16SliceAssignmentTILNS6_9SliceTypeE6EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)6>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)6>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::SliceAssignmentT<(md::SliceType)6>>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)6>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)6>>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls16SliceAssignmentTILNS6_9SliceTypeE6EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A19EA0;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SliceAssignmentT<(md::SliceType)6>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A19E80;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SliceAssignmentT<(md::SliceType)6>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A19E80;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls16SliceAssignmentTILNS6_9SliceTypeE3EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)3>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)3>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::SliceAssignmentT<(md::SliceType)3>>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)3>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)3>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SliceAssignmentT<(md::SliceType)3>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A33778;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SliceAssignmentT<(md::SliceType)3>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A33778;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls30FinishedProcessingDepthPrePassEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A52EE0;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls30FinishedProcessingDepthPrePassEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FinishedProcessingDepthPrePass>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FinishedProcessingDepthPrePass>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::FinishedProcessingDepthPrePass>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FinishedProcessingDepthPrePass>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FinishedProcessingDepthPrePass>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls30FinishedProcessingDepthPrePassEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A52EE0;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::FinishedProcessingDepthPrePass,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A52EC0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::FinishedProcessingDepthPrePass,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A52EC0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FinishedProcessingDepthPrePass>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FinishedProcessingDepthPrePass>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[270];
}

uint64_t std::__function::__func<md::ita::UpdateProcessedStatusRenderables::operator()(ecs2::Query<md::ls::FinishedProcessing const&,md::ls::PendingProcessing const&>,ecs2::Query<md::ls::FinishedProcessingShadow const&,md::ls::PendingProcessingShadow const&>,ecs2::Query<md::ls::FinishedProcessingDepthPrePass const&,md::ls::PendingProcessingDepthPrePass const&>)::$_2,std::allocator<md::ita::UpdateProcessedStatusRenderables::operator()(ecs2::Query<md::ls::FinishedProcessing const&,md::ls::PendingProcessing const&>,ecs2::Query<md::ls::FinishedProcessingShadow const&,md::ls::PendingProcessingShadow const&>,ecs2::Query<md::ls::FinishedProcessingDepthPrePass const&,md::ls::PendingProcessingDepthPrePass const&>)::$_2>,void ()(md::ls::FinishedProcessingDepthPrePass const&,md::ls::PendingProcessingDepthPrePass const&)>::operator()(ecs2::ExecutionTaskContext *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = &unk_1F2A1A1F8;
  v4 = ecs2::ExecutionTaskContext::currentEntity(a1);
  v5 = &v3;
  v8 = &v6;
  v6 = &unk_1F2A1A1F8;
  v7 = v4;
  v9 = 2;
  ecs2::Runtime::queueCommand();
  if (v9 != -1)
  {
    (off_1F2A198D8[v9])(&v2, &v6);
  }

  v9 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v3);
}

uint64_t std::__function::__func<ecs2::RemoveComponent::RemoveComponent<md::ls::PendingProcessingDepthPrePass>(ecs2::Entity,std::type_identity<md::ls::PendingProcessingDepthPrePass>)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::RemoveComponent::RemoveComponent<md::ls::PendingProcessingDepthPrePass>(ecs2::Entity,std::type_identity<md::ls::PendingProcessingDepthPrePass>)::{lambda(ecs2::BasicRegistry<void> &)#1}>,void ()(ecs2::BasicRegistry<void> &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F2A1A1F8;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<md::ita::UpdateProcessedStatusRenderables::operator()(ecs2::Query<md::ls::FinishedProcessing const&,md::ls::PendingProcessing const&>,ecs2::Query<md::ls::FinishedProcessingShadow const&,md::ls::PendingProcessingShadow const&>,ecs2::Query<md::ls::FinishedProcessingDepthPrePass const&,md::ls::PendingProcessingDepthPrePass const&>)::$_2,std::allocator<md::ita::UpdateProcessedStatusRenderables::operator()(ecs2::Query<md::ls::FinishedProcessing const&,md::ls::PendingProcessing const&>,ecs2::Query<md::ls::FinishedProcessingShadow const&,md::ls::PendingProcessingShadow const&>,ecs2::Query<md::ls::FinishedProcessingDepthPrePass const&,md::ls::PendingProcessingDepthPrePass const&>)::$_2>,void ()(md::ls::FinishedProcessingDepthPrePass const&,md::ls::PendingProcessingDepthPrePass const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A1A1B0;
  a2[1] = v2;
  return result;
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls24FinishedProcessingShadowEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A531C0;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls24FinishedProcessingShadowEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FinishedProcessingShadow>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FinishedProcessingShadow>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::FinishedProcessingShadow>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FinishedProcessingShadow>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FinishedProcessingShadow>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls24FinishedProcessingShadowEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A531C0;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::FinishedProcessingShadow,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A531A0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::FinishedProcessingShadow,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A531A0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FinishedProcessingShadow>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FinishedProcessingShadow>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[382];
}

uint64_t std::__function::__func<md::ita::UpdateProcessedStatusRenderables::operator()(ecs2::Query<md::ls::FinishedProcessing const&,md::ls::PendingProcessing const&>,ecs2::Query<md::ls::FinishedProcessingShadow const&,md::ls::PendingProcessingShadow const&>,ecs2::Query<md::ls::FinishedProcessingDepthPrePass const&,md::ls::PendingProcessingDepthPrePass const&>)::$_1,std::allocator<md::ita::UpdateProcessedStatusRenderables::operator()(ecs2::Query<md::ls::FinishedProcessing const&,md::ls::PendingProcessing const&>,ecs2::Query<md::ls::FinishedProcessingShadow const&,md::ls::PendingProcessingShadow const&>,ecs2::Query<md::ls::FinishedProcessingDepthPrePass const&,md::ls::PendingProcessingDepthPrePass const&>)::$_1>,void ()(md::ls::FinishedProcessingShadow const&,md::ls::PendingProcessingShadow const&)>::operator()(ecs2::ExecutionTaskContext *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = &unk_1F2A1A168;
  v4 = ecs2::ExecutionTaskContext::currentEntity(a1);
  v5 = &v3;
  v8 = &v6;
  v6 = &unk_1F2A1A168;
  v7 = v4;
  v9 = 2;
  ecs2::Runtime::queueCommand();
  if (v9 != -1)
  {
    (off_1F2A198D8[v9])(&v2, &v6);
  }

  v9 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v3);
}

uint64_t std::__function::__func<ecs2::RemoveComponent::RemoveComponent<md::ls::PendingProcessingShadow>(ecs2::Entity,std::type_identity<md::ls::PendingProcessingShadow>)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::RemoveComponent::RemoveComponent<md::ls::PendingProcessingShadow>(ecs2::Entity,std::type_identity<md::ls::PendingProcessingShadow>)::{lambda(ecs2::BasicRegistry<void> &)#1}>,void ()(ecs2::BasicRegistry<void> &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F2A1A168;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<md::ita::UpdateProcessedStatusRenderables::operator()(ecs2::Query<md::ls::FinishedProcessing const&,md::ls::PendingProcessing const&>,ecs2::Query<md::ls::FinishedProcessingShadow const&,md::ls::PendingProcessingShadow const&>,ecs2::Query<md::ls::FinishedProcessingDepthPrePass const&,md::ls::PendingProcessingDepthPrePass const&>)::$_1,std::allocator<md::ita::UpdateProcessedStatusRenderables::operator()(ecs2::Query<md::ls::FinishedProcessing const&,md::ls::PendingProcessing const&>,ecs2::Query<md::ls::FinishedProcessingShadow const&,md::ls::PendingProcessingShadow const&>,ecs2::Query<md::ls::FinishedProcessingDepthPrePass const&,md::ls::PendingProcessingDepthPrePass const&>)::$_1>,void ()(md::ls::FinishedProcessingShadow const&,md::ls::PendingProcessingShadow const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A1A120;
  a2[1] = v2;
  return result;
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls18FinishedProcessingEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A4EFE8;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls18FinishedProcessingEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FinishedProcessing>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FinishedProcessing>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::FinishedProcessing>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FinishedProcessing>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FinishedProcessing>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls18FinishedProcessingEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A4EFE8;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::FinishedProcessing,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4EFC8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::FinishedProcessing,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4EFC8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FinishedProcessing>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FinishedProcessing>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[491];
}

uint64_t std::__function::__func<md::ita::UpdateProcessedStatusRenderables::operator()(ecs2::Query<md::ls::FinishedProcessing const&,md::ls::PendingProcessing const&>,ecs2::Query<md::ls::FinishedProcessingShadow const&,md::ls::PendingProcessingShadow const&>,ecs2::Query<md::ls::FinishedProcessingDepthPrePass const&,md::ls::PendingProcessingDepthPrePass const&>)::$_0,std::allocator<md::ita::UpdateProcessedStatusRenderables::operator()(ecs2::Query<md::ls::FinishedProcessing const&,md::ls::PendingProcessing const&>,ecs2::Query<md::ls::FinishedProcessingShadow const&,md::ls::PendingProcessingShadow const&>,ecs2::Query<md::ls::FinishedProcessingDepthPrePass const&,md::ls::PendingProcessingDepthPrePass const&>)::$_0>,void ()(md::ls::FinishedProcessing const&,md::ls::PendingProcessing const&)>::operator()(ecs2::ExecutionTaskContext *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = &unk_1F2A1A0D8;
  v4 = ecs2::ExecutionTaskContext::currentEntity(a1);
  v5 = &v3;
  v8 = &v6;
  v6 = &unk_1F2A1A0D8;
  v7 = v4;
  v9 = 2;
  ecs2::Runtime::queueCommand();
  if (v9 != -1)
  {
    (off_1F2A198D8[v9])(&v2, &v6);
  }

  v9 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v3);
}

uint64_t std::__function::__func<ecs2::RemoveComponent::RemoveComponent<md::ls::PendingProcessing>(ecs2::Entity,std::type_identity<md::ls::PendingProcessing>)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::RemoveComponent::RemoveComponent<md::ls::PendingProcessing>(ecs2::Entity,std::type_identity<md::ls::PendingProcessing>)::{lambda(ecs2::BasicRegistry<void> &)#1}>,void ()(ecs2::BasicRegistry<void> &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F2A1A0D8;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<md::ita::UpdateProcessedStatusRenderables::operator()(ecs2::Query<md::ls::FinishedProcessing const&,md::ls::PendingProcessing const&>,ecs2::Query<md::ls::FinishedProcessingShadow const&,md::ls::PendingProcessingShadow const&>,ecs2::Query<md::ls::FinishedProcessingDepthPrePass const&,md::ls::PendingProcessingDepthPrePass const&>)::$_0,std::allocator<md::ita::UpdateProcessedStatusRenderables::operator()(ecs2::Query<md::ls::FinishedProcessing const&,md::ls::PendingProcessing const&>,ecs2::Query<md::ls::FinishedProcessingShadow const&,md::ls::PendingProcessingShadow const&>,ecs2::Query<md::ls::FinishedProcessingDepthPrePass const&,md::ls::PendingProcessingDepthPrePass const&>)::$_0>,void ()(md::ls::FinishedProcessing const&,md::ls::PendingProcessing const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A1A090;
  a2[1] = v2;
  return result;
}

void std::__copy_impl::operator()[abi:nn200100]<std::ranges::transform_view[abi:llvm18_nua]<std::ranges::ref_view<std::vector<md::MeshRenderable *> const>,unsigned int md::MeshRenderable::*>::__iterator<false>,std::ranges::transform_view[abi:llvm18_nua]<std::ranges::ref_view<std::vector<md::MeshRenderable *> const>,unsigned int md::MeshRenderable::*>::__iterator<false>,std::back_insert_iterator<std::vector<unsigned long>>>(void *a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = a3;
  if (a3 != a5)
  {
    v10 = *(a6 + 8);
    do
    {
      v11 = *(*v7 + *a2);
      v12 = *(a6 + 16);
      if (v10 >= v12)
      {
        v13 = *a6;
        v14 = v10 - *a6;
        v15 = v14 >> 3;
        v16 = (v14 >> 3) + 1;
        if (v16 >> 61)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v17 = v12 - v13;
        if (v17 >> 2 > v16)
        {
          v16 = v17 >> 2;
        }

        if (v17 >= 0x7FFFFFFFFFFFFFF8)
        {
          v18 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v18 = v16;
        }

        if (v18)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v18);
        }

        *(8 * v15) = v11;
        v10 = (8 * v15 + 8);
        memcpy(0, v13, v14);
        v19 = *a6;
        *a6 = 0;
        *(a6 + 8) = v10;
        *(a6 + 16) = 0;
        if (v19)
        {
          operator delete(v19);
        }
      }

      else
      {
        *v10++ = v11;
      }

      *(a6 + 8) = v10;
      ++v7;
    }

    while (v7 != a5);
  }

  *a1 = a2;
  a1[1] = v7;
  a1[2] = a6;
}

uint64_t ecs2::addComponent<md::ls::EnteringView>(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F2A1A358;
  v6 = a3 | (a2 << 32);
  v7 = &v5;
  v8[3] = v8;
  v8[0] = &unk_1F2A1A358;
  v8[1] = v6;
  v9 = 0;
  ecs2::Runtime::queueCommand();
  if (v9 != -1)
  {
    (off_1F2A198D8[v9])(&v4, v8);
  }

  v9 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v5);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::EnteringView>(ecs2::Entity,md::ls::EnteringView &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 12);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::EnteringView>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::EnteringView>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::EnteringView>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    *(*(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + (v13 & 0x3F)) = *(a1 + 8);
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v56 = v5;
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

    *(4 * v19) = v4;
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
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v55 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
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

      goto LABEL_56;
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
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v55;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28);
  v5 = v56;
  *(v51 + (v27 & 0x3F)) = *(a1 + 8);
  v52 = *(v7 + 152);
  for (i = *(v7 + 160); v52 != i; v52 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v52 + 24), v4);
  }

LABEL_54:
  v54 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v54 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::EnteringView>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::EnteringView>(void)::metadata) = *(a2 + 4096);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::EnteringView>(ecs2::Entity,md::ls::EnteringView &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A1A358;
  a2[1] = *(result + 8);
  return result;
}

__n128 std::__function::__func<md::ita::CheckIfReadyToProcess::operator()(ecs2::Query<md::ls::RegisterHandle const&,md::ls::RenderablesCount &,md::ls::MapDataTypeV const&,md::ls::CheckIfReadyToProcess const&,md::ls::FlyoverOctileKey const*,md::ls::BaseMapTileHandle const*,md::ls::WillEnterView const*>)::$_1,std::allocator<md::ita::CheckIfReadyToProcess::operator()(ecs2::Query<md::ls::RegisterHandle const&,md::ls::RenderablesCount &,md::ls::MapDataTypeV const&,md::ls::CheckIfReadyToProcess const&,md::ls::FlyoverOctileKey const*,md::ls::BaseMapTileHandle const*,md::ls::WillEnterView const*>)::$_1>,void ()(md::ls::RegisterHandle const&,md::ls::RenderablesCount &,md::ls::MapDataTypeV const&,md::ls::CheckIfReadyToProcess const&,md::ls::FlyoverOctileKey const*,md::ls::BaseMapTileHandle const*,md::ls::WillEnterView const*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A1A310;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<md::ita::CheckIfReadyToProcess::operator()(ecs2::Query<md::ls::RegisterHandle const&,md::ls::RenderablesCount &,md::ls::MapDataTypeV const&,md::ls::CheckIfReadyToProcess const&,md::ls::FlyoverOctileKey const*,md::ls::BaseMapTileHandle const*,md::ls::WillEnterView const*>)::$_0,std::allocator<md::ita::CheckIfReadyToProcess::operator()(ecs2::Query<md::ls::RegisterHandle const&,md::ls::RenderablesCount &,md::ls::MapDataTypeV const&,md::ls::CheckIfReadyToProcess const&,md::ls::FlyoverOctileKey const*,md::ls::BaseMapTileHandle const*,md::ls::WillEnterView const*>)::$_0>,void ()(md::StyleManagerEvent)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A1A240;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<md::ita::CheckIfShouldDeleteUniqueMaterial::operator()(ecs2::Query<md::ls::RequestReset const&>,ecs2::Query<md::ls::UniqueMaterialData const&>)::$_0,std::allocator<md::ita::CheckIfShouldDeleteUniqueMaterial::operator()(ecs2::Query<md::ls::RequestReset const&>,ecs2::Query<md::ls::UniqueMaterialData const&>)::$_0>,void ()(md::ls::UniqueMaterialData const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A1A428;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t ecs2::removeComponent<md::ls::MeshRenderableID>(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = &unk_1F2A1A568;
  v5 = a2;
  v6 = &v4;
  v9 = &v7;
  v7 = &unk_1F2A1A568;
  v8 = a2;
  v10 = 2;
  ecs2::Runtime::queueCommand();
  if (v10 != -1)
  {
    (off_1F2A198D8[v10])(&v3, &v7);
  }

  v10 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v4);
}

uint64_t std::__function::__func<ecs2::RemoveComponent::RemoveComponent<md::ls::MeshRenderableID>(ecs2::Entity,std::type_identity<md::ls::MeshRenderableID>)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::RemoveComponent::RemoveComponent<md::ls::MeshRenderableID>(ecs2::Entity,std::type_identity<md::ls::MeshRenderableID>)::{lambda(ecs2::BasicRegistry<void> &)#1}>,void ()(ecs2::BasicRegistry<void> &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F2A1A568;
  *(a2 + 8) = *(result + 8);
  return result;
}

__n128 std::__function::__func<md::ita::CheckIfShouldDeleteRenderable::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::AssociationHandle const&>)::$_0,std::allocator<md::ita::CheckIfShouldDeleteRenderable::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::AssociationHandle const&>)::$_0>,void ()(md::ls::MeshRenderableID const&,md::ls::AssociationHandle const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A1A520;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void md::ita::DisconnectComponents::operator()(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v414[6] = *MEMORY[0x1E69E9840];
  v393 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(a1);
  v388 = ecs2::ExecutionTask<md::LayoutContextProvider *,md::MaterialResourceStore *>::service<md::MaterialResourceStore>(a1);
  v14 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *,md::MaterialResourceStore *,mre::GGLResourceStore *>::service<mre::GGLResourceStore>(a1);
  v392 = v14;
  v15 = ecs2::BasicRegistry<void>::storage<md::ls::RequestReset>(*(a2 + 8));
  v17 = *(v15 + 32);
  v16 = *(v15 + 40);
  *&v411 = &unk_1F2A1A5B0;
  *(&v411 + 1) = a1;
  *(&v412 + 1) = &v411;
  v18 = ecs2::BasicRegistry<void>::storage<md::ls::RequestReset>(*(a2 + 8));
  v377 = v17;
  v378 = v16;
  v19 = v18[4];
  v20 = v18[5];
  v21 = _ZTWN4ecs27Runtime11_localStateE();
  v22 = _ZTWN4ecs27Runtime11_stackIndexE();
  if (v19 != v20)
  {
    v23 = 0;
    while (1)
    {
      v24 = *(v18[7] + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8));
      *(v21 + 104 * *v22 + 24) = *v19;
      if (!*(&v412 + 1))
      {
        break;
      }

      (*(**(&v412 + 1) + 48))(*(&v412 + 1), v24 + (v23++ & 0x3F));
      if (++v19 == v20)
      {
        goto LABEL_7;
      }
    }

LABEL_309:
    std::__throw_bad_function_call[abi:nn200100]();
  }

  LODWORD(v23) = 0;
LABEL_7:
  *(v21 + 104 * *v22 + 24) = -65536;
  v25 = v21 + 104 * *v22;
  v26 = *(v25 + 92);
  *(v25 + 92) = v26 + 1;
  *(v25 + 4 * v26 + 28) = v23;
  v27 = v21 + 104 * *v22;
  v29 = *(v27 + 92);
  v28 = (v27 + 92);
  if (v29 >= 0x10)
  {
    *v28 = 0;
  }

  v380 = a3;
  std::__function::__value_func<void ()(md::ls::RequestReset const&)>::~__value_func[abi:nn200100](&v411);
  *&v411 = &unk_1F2A1A5F8;
  *(&v411 + 1) = &v393;
  *(&v412 + 1) = &v411;
  v30 = *(a4 + 8);
  v31 = ecs2::BasicRegistry<void>::storage<md::ls::PendingDeletion>(v30);
  v32 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueMaterialData>(v30);
  v383 = ecs2::BasicRegistry<void>::storage<md::ls::PlanarParametersCacheKeyHandle>(v30);
  v33 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueStyleEmissiveDataKeyHandle>(v30);
  v374 = a4;
  v379 = v14;
  if (v32[5] - v32[4] >= v31[5] - v31[4])
  {
    v34 = v31;
  }

  else
  {
    v34 = v32;
  }

  v35 = v34[4];
  v36 = v34[5];
  if (v35 != v36)
  {
    v37 = v31[1];
    v38 = v31[2];
    do
    {
      if (ecs2::ViewIterator<void,std::tuple<md::ls::MaterialPendingProcessing const&,md::ls::UniqueStyleEmissiveDataKeyHandle *,md::ls::UniqueMaterialData const&>,std::tuple<>>::containsAll<md::ls::MaterialPendingProcessing const,md::ls::UniqueMaterialData const>(v37, v38, v32, *v35, v35[1]))
      {
        break;
      }

      v35 += 2;
    }

    while (v35 != v36);
  }

  if (v35 != v36)
  {
    v39 = 0;
LABEL_18:
    v40 = v35[1];
    v41 = v40 >> 6;
    v42 = v40 & 0x3F;
    v43 = *v35;
    v44 = v383[1];
    if (v41 >= (v383[2] - v44) >> 3)
    {
      goto LABEL_22;
    }

    v45 = *(v44 + 8 * v41);
    if (!v45)
    {
      goto LABEL_23;
    }

    if (*(v45 + 4 * v42) == v43)
    {
      v46 = *(v45 + 4 * v42 + 2);
      v45 = *(v383[7] + ((v46 >> 3) & 0x1FF8)) + 8 * (v46 & 0x3F);
    }

    else
    {
LABEL_22:
      v45 = 0;
    }

LABEL_23:
    v47 = v33[1];
    if (v41 < (v33[2] - v47) >> 3 && (v48 = *(v47 + 8 * v41)) != 0 && *(v48 + 4 * v42) == v43)
    {
      v49 = *(v48 + 4 * v42 + 2);
      v50 = *(v33[7] + ((v49 >> 3) & 0x1FF8)) + 16 * (v49 & 0x3F);
    }

    else
    {
      v50 = 0;
    }

    v51 = v31[4];
    v52 = *(*(v31[1] + 8 * v41) + 4 * v42 + 2);
    v53 = *(*(v32[1] + 8 * v41) + 4 * v42 + 2);
    v54 = *(v32[7] + ((v53 >> 3) & 0x1FF8));
    *(v21 + 104 * *v22 + 24) = *v35;
    *&v403 = v45;
    *&v408 = v50;
    if (!*(&v412 + 1))
    {
      goto LABEL_309;
    }

    (*(**(&v412 + 1) + 48))(*(&v412 + 1), v51 + 4 * v52, v54 + 24 * (v53 & 0x3F), &v403, &v408);
    ++v39;
    v55 = v31[1];
    v56 = v31[2];
    v57 = v35 + 2;
    while (v57 != v36)
    {
      v35 = v57;
      v58 = ecs2::ViewIterator<void,std::tuple<md::ls::MaterialPendingProcessing const&,md::ls::UniqueStyleEmissiveDataKeyHandle *,md::ls::UniqueMaterialData const&>,std::tuple<>>::containsAll<md::ls::MaterialPendingProcessing const,md::ls::UniqueMaterialData const>(v55, v56, v32, *v57, v57[1]);
      v57 = v35 + 2;
      if (v58)
      {
        goto LABEL_18;
      }
    }

    v59 = *(v374 + 8);
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PlanarParametersCacheKeyHandle>();
    *(v59 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PlanarParametersCacheKeyHandle>(void)::metadata) = *(v59 + 4096);
    v60 = *(v374 + 8);
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueStyleEmissiveDataKeyHandle>();
    *(v60 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueStyleEmissiveDataKeyHandle>(void)::metadata) = *(v60 + 4096);
    goto LABEL_35;
  }

  v39 = 0;
LABEL_35:
  *(v21 + 104 * *v22 + 24) = -65536;
  v61 = v21 + 104 * *v22;
  v62 = *(v61 + 92);
  *(v61 + 92) = v62 + 1;
  *(v61 + 4 * v62 + 28) = v39;
  v63 = v21 + 104 * *v22;
  v65 = *(v63 + 92);
  v64 = (v63 + 92);
  if (v65 >= 0x10)
  {
    *v64 = 0;
  }

  std::__function::__value_func<void ()(md::ls::PendingDeletion const&,md::ls::UniqueMaterialData const&,md::ls::PlanarParametersCacheKeyHandle *,md::ls::UniqueStyleEmissiveDataKeyHandle *)>::~__value_func[abi:nn200100](&v411);
  *&v411 = &unk_1F2A1A640;
  *(&v411 + 1) = v388;
  *(&v412 + 1) = &v411;
  v66 = *(v380 + 8);
  v67 = ecs2::BasicRegistry<void>::storage<md::ls::PendingDeletion>(v66);
  v384 = ecs2::BasicRegistry<void>::storage<md::ls::RenderableMaterialData>(v66);
  v375 = ecs2::BasicRegistry<void>::storage<md::ls::RampMaterialData>(v66);
  v372 = ecs2::BasicRegistry<void>::storage<md::ls::ColorDataHandle>(v66);
  v370 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueMaterialVisibilityOptionsHandle>(v66);
  v368 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueMaterialZIndexHandle>(v66);
  v68 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueColorDataHandle>(v66);
  v69 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueGradientMaskDataHandle>(v66);
  v70 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueColorCorrectionDataHandle>(v66);
  v71 = v67[4];
  v72 = v67[5];
  if (v71 != v72)
  {
    v73 = v67[1];
    do
    {
      v74 = v71[1];
      if (v74 >> 6 < (v67[2] - v73) >> 3)
      {
        v75 = *(v73 + 8 * (v74 >> 6));
        if (v75)
        {
          if (*(v75 + 4 * (v74 & 0x3F)) == *v71)
          {
            break;
          }
        }
      }

      v71 += 2;
    }

    while (v71 != v72);
  }

  if (v71 != v72)
  {
    v76 = 0;
    while (1)
    {
      v77 = v71[1];
      v78 = v77 >> 6;
      v79 = v77 & 0x3F;
      v80 = *v71;
      v81 = v384[1];
      if (v78 >= (v384[2] - v81) >> 3)
      {
        goto LABEL_49;
      }

      v82 = *(v81 + 8 * v78);
      if (!v82)
      {
        goto LABEL_50;
      }

      if (*(v82 + 4 * v79) == v80)
      {
        v83 = *(v82 + 4 * v79 + 2);
        v82 = *(v384[7] + ((v83 >> 3) & 0x1FF8)) + 32 * (v83 & 0x3F);
      }

      else
      {
LABEL_49:
        v82 = 0;
      }

LABEL_50:
      v84 = v375[1];
      if (v78 >= (v375[2] - v84) >> 3)
      {
        goto LABEL_54;
      }

      v85 = *(v84 + 8 * v78);
      if (v85)
      {
        if (*(v85 + 4 * v79) != v80)
        {
LABEL_54:
          v85 = 0;
          goto LABEL_55;
        }

        v86 = *(v85 + 4 * v79 + 2);
        v85 = *(v375[7] + ((v86 >> 3) & 0x1FF8)) + 32 * (v86 & 0x3F);
      }

LABEL_55:
      v87 = v372[1];
      if (v78 >= (v372[2] - v87) >> 3)
      {
        goto LABEL_59;
      }

      v88 = *(v87 + 8 * v78);
      if (!v88)
      {
        goto LABEL_60;
      }

      if (*(v88 + 4 * v79) == v80)
      {
        v89 = *(v88 + 4 * v79 + 2);
        v88 = *(v372[7] + ((v89 >> 3) & 0x1FF8)) + 8 * (v89 & 0x3F);
      }

      else
      {
LABEL_59:
        v88 = 0;
      }

LABEL_60:
      v90 = v370[1];
      if (v78 >= (v370[2] - v90) >> 3)
      {
        goto LABEL_64;
      }

      v91 = *(v90 + 8 * v78);
      if (v91)
      {
        if (*(v91 + 4 * v79) != v80)
        {
LABEL_64:
          v91 = 0;
          goto LABEL_65;
        }

        v92 = *(v91 + 4 * v79 + 2);
        v91 = *(v370[7] + ((v92 >> 3) & 0x1FF8)) + 16 * (v92 & 0x3F);
      }

LABEL_65:
      v93 = v368[1];
      if (v78 >= (v368[2] - v93) >> 3)
      {
        goto LABEL_69;
      }

      v94 = *(v93 + 8 * v78);
      if (!v94)
      {
        goto LABEL_70;
      }

      if (*(v94 + 4 * v79) == v80)
      {
        v95 = *(v94 + 4 * v79 + 2);
        v94 = *(v368[7] + ((v95 >> 3) & 0x1FF8)) + 24 * (v95 & 0x3F);
      }

      else
      {
LABEL_69:
        v94 = 0;
      }

LABEL_70:
      v96 = v67[4];
      v97 = *(*(v67[1] + 8 * v78) + 4 * v79 + 2);
      v98 = v68[1];
      if (v78 >= (v68[2] - v98) >> 3)
      {
        goto LABEL_74;
      }

      v99 = *(v98 + 8 * v78);
      if (v99)
      {
        if (*(v99 + 4 * v79) != v80)
        {
LABEL_74:
          v99 = 0;
          goto LABEL_75;
        }

        v100 = *(v99 + 4 * v79 + 2);
        v99 = *(v68[7] + ((v100 >> 3) & 0x1FF8)) + 8 * (v100 & 0x3F);
      }

LABEL_75:
      v101 = v69[1];
      if (v78 >= (v69[2] - v101) >> 3)
      {
        goto LABEL_79;
      }

      v102 = *(v101 + 8 * v78);
      if (!v102)
      {
        goto LABEL_80;
      }

      if (*(v102 + 4 * v79) == v80)
      {
        v103 = *(v102 + 4 * v79 + 2);
        v102 = *(v69[7] + ((v103 >> 3) & 0x1FF8)) + 8 * (v103 & 0x3F);
      }

      else
      {
LABEL_79:
        v102 = 0;
      }

LABEL_80:
      v104 = v70[1];
      if (v78 < (v70[2] - v104) >> 3 && (v105 = *(v104 + 8 * v78)) != 0 && *(v105 + 4 * v79) == v80)
      {
        v106 = *(v105 + 4 * v79 + 2);
        v107 = *(v70[7] + ((v106 >> 3) & 0x1FF8)) + 8 * (v106 & 0x3F);
      }

      else
      {
        v107 = 0;
      }

      *(v21 + 104 * *v22 + 24) = *v71;
      v402 = v91;
      *&v403 = v82;
      *&v408 = v85;
      v406[0] = v88;
      v400 = v99;
      v401 = v94;
      v398 = v107;
      v399 = v102;
      if (!*(&v412 + 1))
      {
        goto LABEL_309;
      }

      (*(**(&v412 + 1) + 48))(*(&v412 + 1), v96 + 4 * v97, &v403, &v408, v406, &v402, &v401, &v400, &v399, &v398);
      ++v76;
      v71 += 2;
      if (v71 != v72)
      {
        v108 = v67[1];
        while (1)
        {
          v109 = v71[1];
          if (v109 >> 6 < (v67[2] - v108) >> 3)
          {
            v110 = *(v108 + 8 * (v109 >> 6));
            if (v110)
            {
              if (*(v110 + 4 * (v109 & 0x3F)) == *v71)
              {
                break;
              }
            }
          }

          v71 += 2;
          if (v71 == v72)
          {
            goto LABEL_94;
          }
        }

        if (v71 != v72)
        {
          continue;
        }
      }

LABEL_94:
      v111 = *(v380 + 8);
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableMaterialData>();
      *(v111 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableMaterialData>(void)::metadata) = *(v111 + 4096);
      v112 = *(v380 + 8);
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RampMaterialData>();
      *(v112 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RampMaterialData>(void)::metadata) = *(v112 + 4096);
      v113 = *(v380 + 8);
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ColorDataHandle>();
      *(v113 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ColorDataHandle>(void)::metadata) = *(v113 + 4096);
      v114 = *(v380 + 8);
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialVisibilityOptionsHandle>();
      *(v114 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialVisibilityOptionsHandle>(void)::metadata) = *(v114 + 4096);
      v115 = *(v380 + 8);
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialZIndexHandle>();
      *(v115 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialZIndexHandle>(void)::metadata) = *(v115 + 4096);
      v116 = *(v380 + 8);
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueColorDataHandle>();
      *(v116 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueColorDataHandle>(void)::metadata) = *(v116 + 4096);
      v117 = *(v380 + 8);
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueGradientMaskDataHandle>();
      *(v117 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueGradientMaskDataHandle>(void)::metadata) = *(v117 + 4096);
      v118 = *(v380 + 8);
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueColorCorrectionDataHandle>();
      *(v118 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueColorCorrectionDataHandle>(void)::metadata) = *(v118 + 4096);
      goto LABEL_96;
    }
  }

  v76 = 0;
LABEL_96:
  *(v21 + 104 * *v22 + 24) = -65536;
  v119 = v21 + 104 * *v22;
  v120 = *(v119 + 92);
  *(v119 + 92) = v120 + 1;
  *(v119 + 4 * v120 + 28) = v76;
  v121 = v21 + 104 * *v22;
  v123 = *(v121 + 92);
  v122 = (v121 + 92);
  if (v123 >= 0x10)
  {
    *v122 = 0;
  }

  std::__function::__value_func<void ()(md::ls::PendingDeletion const&,md::ls::RenderableMaterialData *,md::ls::RampMaterialData *,md::ls::ColorDataHandle *,md::ls::UniqueMaterialVisibilityOptionsHandle *,md::ls::UniqueMaterialZIndexHandle *,md::ls::UniqueColorDataHandle *,md::ls::UniqueGradientMaskDataHandle *,md::ls::UniqueColorCorrectionDataHandle *)>::~__value_func[abi:nn200100](&v411);
  *&v411 = &unk_1F2A1A688;
  *(&v411 + 1) = v393;
  *(&v412 + 1) = &v411;
  v124 = *(a5 + 8);
  v125 = ecs2::BasicRegistry<void>::storage<md::ls::PendingDeletion>(v124);
  v385 = ecs2::BasicRegistry<void>::storage<md::ls::PositionScaleInfoConstantDataHandle>(v124);
  v381 = ecs2::BasicRegistry<void>::storage<md::ls::StyleRouteLineMaskConstantDataHandle>(v124);
  v376 = ecs2::BasicRegistry<void>::storage<md::ls::StyleConstantHandle>(v124);
  v373 = ecs2::BasicRegistry<void>::storage<md::ls::LandCoverSettingsConstantDataHandle>(v124);
  v371 = ecs2::BasicRegistry<void>::storage<md::ls::StyleGroundOcclusionConstantDataHandle>(v124);
  v369 = ecs2::BasicRegistry<void>::storage<md::ls::NormalsHandle>(v124);
  v367 = ecs2::BasicRegistry<void>::storage<md::ls::UVsHandle>(v124);
  v366 = ecs2::BasicRegistry<void>::storage<md::ls::ElevationHandle>(v124);
  v126 = ecs2::BasicRegistry<void>::storage<md::ls::InstanceTransformHandle>(v124);
  v127 = ecs2::BasicRegistry<void>::storage<md::ls::StyleRouteLineMaskDataKeyHandle>(v124);
  v128 = ecs2::BasicRegistry<void>::storage<md::ls::ColorCorrectionDataKeyHandle>(v124);
  v129 = ecs2::BasicRegistry<void>::storage<md::ls::NeedsClimateTint>(v124);
  v131 = v125[4];
  v130 = v125[5];
  if (v131 != v130)
  {
    v132 = v125[1];
    do
    {
      v133 = v131[1];
      if (v133 >> 6 < (v125[2] - v132) >> 3)
      {
        v134 = *(v132 + 8 * (v133 >> 6));
        if (v134)
        {
          if (*(v134 + 4 * (v133 & 0x3F)) == *v131)
          {
            break;
          }
        }
      }

      v131 += 2;
    }

    while (v131 != v130);
  }

  if (v131 != v130)
  {
    v135 = 0;
    while (1)
    {
      v136 = v131[1];
      v137 = v136 >> 6;
      v138 = v136 & 0x3F;
      v139 = *v131;
      v140 = v385[1];
      if (v137 >= (v385[2] - v140) >> 3)
      {
        goto LABEL_110;
      }

      v141 = *(v140 + 8 * v137);
      if (!v141)
      {
        goto LABEL_111;
      }

      if (*(v141 + 4 * v138) == v139)
      {
        v142 = *(v141 + 4 * v138 + 2);
        v141 = *(v385[7] + ((v142 >> 3) & 0x1FF8)) + 16 * (v142 & 0x3F);
      }

      else
      {
LABEL_110:
        v141 = 0;
      }

LABEL_111:
      v143 = v381[1];
      if (v137 >= (v381[2] - v143) >> 3)
      {
        goto LABEL_115;
      }

      v144 = *(v143 + 8 * v137);
      if (v144)
      {
        if (*(v144 + 4 * v138) != v139)
        {
LABEL_115:
          v144 = 0;
          goto LABEL_116;
        }

        v145 = *(v144 + 4 * v138 + 2);
        v144 = *(v381[7] + ((v145 >> 3) & 0x1FF8)) + 8 * (v145 & 0x3F);
      }

LABEL_116:
      v146 = v376[1];
      if (v137 >= (v376[2] - v146) >> 3)
      {
        goto LABEL_120;
      }

      v147 = *(v146 + 8 * v137);
      if (!v147)
      {
        goto LABEL_121;
      }

      if (*(v147 + 4 * v138) == v139)
      {
        v148 = *(v147 + 4 * v138 + 2);
        v147 = *(v376[7] + ((v148 >> 3) & 0x1FF8)) + 8 * (v148 & 0x3F);
      }

      else
      {
LABEL_120:
        v147 = 0;
      }

LABEL_121:
      v149 = v373[1];
      if (v137 >= (v373[2] - v149) >> 3)
      {
        goto LABEL_125;
      }

      v150 = *(v149 + 8 * v137);
      if (v150)
      {
        if (*(v150 + 4 * v138) != v139)
        {
LABEL_125:
          v150 = 0;
          goto LABEL_126;
        }

        v151 = *(v150 + 4 * v138 + 2);
        v150 = *(v373[7] + ((v151 >> 3) & 0x1FF8)) + 8 * (v151 & 0x3F);
      }

LABEL_126:
      v152 = v371[1];
      if (v137 < (v371[2] - v152) >> 3 && (v153 = *(v152 + 8 * v137)) != 0 && *(v153 + 4 * v138) == v139)
      {
        v154 = *(v153 + 4 * v138 + 2);
        v155 = *(v371[7] + ((v154 >> 3) & 0x1FF8)) + 8 * (v154 & 0x3F);
      }

      else
      {
        v155 = 0;
      }

      v156 = v125[4];
      v157 = *(*(v125[1] + 8 * v137) + 4 * v138 + 2);
      v158 = v369[1];
      if (v137 >= (v369[2] - v158) >> 3)
      {
LABEL_135:
        v159 = 0;
        goto LABEL_136;
      }

      v159 = *(v158 + 8 * v137);
      if (v159)
      {
        if (*(v159 + 4 * v138) != v139)
        {
          goto LABEL_135;
        }

        v160 = *(v159 + 4 * v138 + 2);
        v159 = *(v369[7] + ((v160 >> 3) & 0x1FF8)) + 8 * (v160 & 0x3F);
      }

LABEL_136:
      v161 = v367[1];
      if (v137 >= (v367[2] - v161) >> 3)
      {
        goto LABEL_140;
      }

      v162 = *(v161 + 8 * v137);
      if (!v162)
      {
        goto LABEL_141;
      }

      if (*(v162 + 4 * v138) == v139)
      {
        v163 = *(v162 + 4 * v138 + 2);
        v162 = *(v367[7] + ((v163 >> 3) & 0x1FF8)) + 8 * (v163 & 0x3F);
      }

      else
      {
LABEL_140:
        v162 = 0;
      }

LABEL_141:
      v164 = v366[1];
      if (v137 >= (v366[2] - v164) >> 3)
      {
        goto LABEL_145;
      }

      v165 = *(v164 + 8 * v137);
      if (v165)
      {
        if (*(v165 + 4 * v138) != v139)
        {
LABEL_145:
          v165 = 0;
          goto LABEL_146;
        }

        v166 = *(v165 + 4 * v138 + 2);
        v165 = *(v366[7] + ((v166 >> 3) & 0x1FF8)) + 8 * (v166 & 0x3F);
      }

LABEL_146:
      v167 = v126[1];
      if (v137 >= (v126[2] - v167) >> 3)
      {
        goto LABEL_150;
      }

      v168 = *(v167 + 8 * v137);
      if (!v168)
      {
        goto LABEL_151;
      }

      if (*(v168 + 4 * v138) == v139)
      {
        v169 = *(v168 + 4 * v138 + 2);
        v168 = *(v126[7] + ((v169 >> 3) & 0x1FF8)) + 8 * (v169 & 0x3F);
      }

      else
      {
LABEL_150:
        v168 = 0;
      }

LABEL_151:
      v170 = v127[1];
      if (v137 >= (v127[2] - v170) >> 3)
      {
        goto LABEL_155;
      }

      v171 = *(v170 + 8 * v137);
      if (v171)
      {
        if (*(v171 + 4 * v138) != v139)
        {
LABEL_155:
          v171 = 0;
          goto LABEL_156;
        }

        v172 = *(v171 + 4 * v138 + 2);
        v171 = *(v127[7] + ((v172 >> 3) & 0x1FF8)) + 8 * (v172 & 0x3F);
      }

LABEL_156:
      v173 = v128[1];
      if (v137 >= (v128[2] - v173) >> 3)
      {
        goto LABEL_160;
      }

      v174 = *(v173 + 8 * v137);
      if (!v174)
      {
        goto LABEL_161;
      }

      if (*(v174 + 4 * v138) == v139)
      {
        v175 = *(v174 + 4 * v138 + 2);
        v174 = *(v128[7] + ((v175 >> 3) & 0x1FF8)) + 8 * (v175 & 0x3F);
      }

      else
      {
LABEL_160:
        v174 = 0;
      }

LABEL_161:
      v176 = v129[1];
      if (v137 < (v129[2] - v176) >> 3 && (v177 = *(v176 + 8 * v137)) != 0 && *(v177 + 4 * v138) == v139)
      {
        v178 = *(v177 + 4 * v138 + 2);
        v179 = *(v129[7] + ((v178 >> 3) & 0x1FF8)) + 8 * (v178 & 0x3F);
      }

      else
      {
        v179 = 0;
      }

      *(v21 + 104 * *v22 + 24) = *v131;
      v402 = v150;
      *&v403 = v141;
      *&v408 = v144;
      v406[0] = v147;
      v400 = v159;
      v401 = v155;
      v398 = v165;
      v399 = v162;
      v396 = v171;
      v397 = v168;
      v394 = v179;
      v395 = v174;
      if (!*(&v412 + 1))
      {
        goto LABEL_309;
      }

      (*(**(&v412 + 1) + 48))(*(&v412 + 1), v156 + 4 * v157, &v403, &v408, v406, &v402, &v401, &v400, &v399, &v398, &v397, &v396, &v395, &v394);
      ++v135;
      v131 += 2;
      if (v131 != v130)
      {
        v180 = v125[1];
        while (1)
        {
          v181 = v131[1];
          if (v181 >> 6 < (v125[2] - v180) >> 3)
          {
            v182 = *(v180 + 8 * (v181 >> 6));
            if (v182)
            {
              if (*(v182 + 4 * (v181 & 0x3F)) == *v131)
              {
                break;
              }
            }
          }

          v131 += 2;
          if (v131 == v130)
          {
            goto LABEL_175;
          }
        }

        if (v131 != v130)
        {
          continue;
        }
      }

LABEL_175:
      v183 = *(a5 + 8);
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PositionScaleInfoConstantDataHandle>();
      *(v183 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PositionScaleInfoConstantDataHandle>(void)::metadata) = *(v183 + 4096);
      v184 = *(a5 + 8);
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleRouteLineMaskConstantDataHandle>();
      *(v184 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleRouteLineMaskConstantDataHandle>(void)::metadata) = *(v184 + 4096);
      v185 = *(a5 + 8);
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleConstantHandle>();
      *(v185 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleConstantHandle>(void)::metadata) = *(v185 + 4096);
      v186 = *(a5 + 8);
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::LandCoverSettingsConstantDataHandle>();
      *(v186 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::LandCoverSettingsConstantDataHandle>(void)::metadata) = *(v186 + 4096);
      v187 = *(a5 + 8);
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleGroundOcclusionConstantDataHandle>();
      *(v187 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleGroundOcclusionConstantDataHandle>(void)::metadata) = *(v187 + 4096);
      v188 = *(a5 + 8);
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NormalsHandle>();
      *(v188 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NormalsHandle>(void)::metadata) = *(v188 + 4096);
      v189 = *(a5 + 8);
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UVsHandle>();
      *(v189 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UVsHandle>(void)::metadata) = *(v189 + 4096);
      v190 = *(a5 + 8);
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ElevationHandle>();
      *(v190 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ElevationHandle>(void)::metadata) = *(v190 + 4096);
      v191 = *(a5 + 8);
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InstanceTransformHandle>();
      *(v191 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InstanceTransformHandle>(void)::metadata) = *(v191 + 4096);
      v192 = *(a5 + 8);
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleRouteLineMaskDataKeyHandle>();
      *(v192 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleRouteLineMaskDataKeyHandle>(void)::metadata) = *(v192 + 4096);
      v193 = *(a5 + 8);
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ColorCorrectionDataKeyHandle>();
      *(v193 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ColorCorrectionDataKeyHandle>(void)::metadata) = *(v193 + 4096);
      v194 = *(a5 + 8);
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsClimateTint>();
      *(v194 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsClimateTint>(void)::metadata) = *(v194 + 4096);
      goto LABEL_177;
    }
  }

  v135 = 0;
LABEL_177:
  *(v21 + 104 * *v22 + 24) = -65536;
  v195 = v21 + 104 * *v22;
  v196 = *(v195 + 92);
  *(v195 + 92) = v196 + 1;
  *(v195 + 4 * v196 + 28) = v135;
  v197 = v21 + 104 * *v22;
  v199 = *(v197 + 92);
  v198 = (v197 + 92);
  if (v199 >= 0x10)
  {
    *v198 = 0;
  }

  std::__function::__value_func<void ()(md::ls::PendingDeletion const&,md::ls::PositionScaleInfoConstantDataHandle *,md::ls::StyleRouteLineMaskConstantDataHandle *,md::ls::StyleConstantHandle *,md::ls::LandCoverSettingsConstantDataHandle *,md::ls::StyleGroundOcclusionConstantDataHandle *,md::ls::NormalsHandle *,md::ls::UVsHandle *,md::ls::ElevationHandle *,md::ls::InstanceTransformHandle *,md::ls::StyleRouteLineMaskDataKeyHandle *,md::ls::ColorCorrectionDataKeyHandle *,md::ls::NeedsClimateTint *)>::~__value_func[abi:nn200100](&v411);
  *&v411 = &unk_1F2A1A7E0;
  *(&v411 + 1) = v379;
  *(&v412 + 1) = &v411;
  v200 = *(a6 + 8);
  v201 = ecs2::BasicRegistry<void>::storage<md::ls::PendingDeletion>(v200);
  v391 = ecs2::BasicRegistry<void>::storage<md::ls::RenderableAlbedoTexture>(v200);
  v386 = ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<Flyover::NightTexture>>(v200);
  v202 = ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<Flyover::DiffuseTexture>>(v200);
  v203 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueMaterialAlbedoTexture>(v200);
  v204 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueMaterialEmissiveTexture>(v200);
  v205 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueMaterialDiffuseTexture>(v200);
  v206 = v201[4];
  v207 = v201[5];
  if (v206 != v207)
  {
    v208 = v201[1];
    do
    {
      v209 = v206[1];
      if (v209 >> 6 < (v201[2] - v208) >> 3)
      {
        v210 = *(v208 + 8 * (v209 >> 6));
        if (v210)
        {
          if (*(v210 + 4 * (v209 & 0x3F)) == *v206)
          {
            break;
          }
        }
      }

      v206 += 2;
    }

    while (v206 != v207);
  }

  if (v206 != v207)
  {
    v211 = 0;
    while (1)
    {
      v212 = v206[1];
      v213 = v212 >> 6;
      v214 = v212 & 0x3F;
      v215 = *v206;
      v216 = v391[1];
      if (v213 >= (v391[2] - v216) >> 3)
      {
        goto LABEL_191;
      }

      v217 = *(v216 + 8 * v213);
      if (!v217)
      {
        goto LABEL_192;
      }

      if (*(v217 + 4 * v214) == v215)
      {
        v218 = *(v217 + 4 * v214 + 2);
        v217 = *(v391[7] + ((v218 >> 3) & 0x1FF8)) + 32 * (v218 & 0x3F);
      }

      else
      {
LABEL_191:
        v217 = 0;
      }

LABEL_192:
      v219 = v386[1];
      if (v213 >= (v386[2] - v219) >> 3)
      {
        goto LABEL_196;
      }

      v220 = *(v219 + 8 * v213);
      if (v220)
      {
        if (*(v220 + 4 * v214) != v215)
        {
LABEL_196:
          v220 = 0;
          goto LABEL_197;
        }

        v221 = *(v220 + 4 * v214 + 2);
        v220 = *(v386[7] + ((v221 >> 3) & 0x1FF8)) + 16 * (v221 & 0x3F);
      }

LABEL_197:
      v222 = v202[1];
      if (v213 >= (v202[2] - v222) >> 3)
      {
        goto LABEL_201;
      }

      v223 = *(v222 + 8 * v213);
      if (!v223)
      {
        goto LABEL_202;
      }

      if (*(v223 + 4 * v214) == v215)
      {
        v224 = *(v223 + 4 * v214 + 2);
        v223 = *(v202[7] + ((v224 >> 3) & 0x1FF8)) + 16 * (v224 & 0x3F);
      }

      else
      {
LABEL_201:
        v223 = 0;
      }

LABEL_202:
      v225 = v203[1];
      if (v213 >= (v203[2] - v225) >> 3)
      {
        goto LABEL_206;
      }

      v226 = *(v225 + 8 * v213);
      if (v226)
      {
        if (*(v226 + 4 * v214) != v215)
        {
LABEL_206:
          v226 = 0;
          goto LABEL_207;
        }

        v227 = *(v226 + 4 * v214 + 2);
        v226 = *(v203[7] + ((v227 >> 3) & 0x1FF8)) + 32 * (v227 & 0x3F);
      }

LABEL_207:
      v228 = v204[1];
      if (v213 >= (v204[2] - v228) >> 3)
      {
        goto LABEL_211;
      }

      v229 = *(v228 + 8 * v213);
      if (!v229)
      {
        goto LABEL_212;
      }

      if (*(v229 + 4 * v214) == v215)
      {
        v230 = *(v229 + 4 * v214 + 2);
        v229 = *(v204[7] + ((v230 >> 3) & 0x1FF8)) + 16 * (v230 & 0x3F);
      }

      else
      {
LABEL_211:
        v229 = 0;
      }

LABEL_212:
      v231 = v201[4];
      v232 = *(*(v201[1] + 8 * v213) + 4 * v214 + 2);
      v233 = v205[1];
      if (v213 < (v205[2] - v233) >> 3 && (v234 = *(v233 + 8 * v213)) != 0 && *(v234 + 4 * v214) == v215)
      {
        v235 = *(v234 + 4 * v214 + 2);
        v236 = *(v205[7] + ((v235 >> 3) & 0x1FF8)) + 16 * (v235 & 0x3F);
      }

      else
      {
        v236 = 0;
      }

      *(v21 + 104 * *v22 + 24) = *v206;
      v402 = v226;
      *&v403 = v217;
      *&v408 = v220;
      v406[0] = v223;
      v400 = v236;
      v401 = v229;
      if (!*(&v412 + 1))
      {
        goto LABEL_309;
      }

      (*(**(&v412 + 1) + 48))(*(&v412 + 1), v231 + 4 * v232, &v403, &v408, v406, &v402, &v401, &v400);
      ++v211;
      v206 += 2;
      if (v206 != v207)
      {
        v237 = v201[1];
        while (1)
        {
          v238 = v206[1];
          if (v238 >> 6 < (v201[2] - v237) >> 3)
          {
            v239 = *(v237 + 8 * (v238 >> 6));
            if (v239)
            {
              if (*(v239 + 4 * (v238 & 0x3F)) == *v206)
              {
                break;
              }
            }
          }

          v206 += 2;
          if (v206 == v207)
          {
            goto LABEL_226;
          }
        }

        if (v206 != v207)
        {
          continue;
        }
      }

LABEL_226:
      v240 = *(a6 + 8);
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableAlbedoTexture>();
      *(v240 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableAlbedoTexture>(void)::metadata) = *(v240 + 4096);
      v241 = *(a6 + 8);
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<Flyover::NightTexture>>();
      *(v241 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<Flyover::NightTexture>>(void)::metadata) = *(v241 + 4096);
      v242 = *(a6 + 8);
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<Flyover::DiffuseTexture>>();
      *(v242 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<Flyover::DiffuseTexture>>(void)::metadata) = *(v242 + 4096);
      v243 = *(a6 + 8);
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialAlbedoTexture>();
      *(v243 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialAlbedoTexture>(void)::metadata) = *(v243 + 4096);
      v244 = *(a6 + 8);
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialEmissiveTexture>();
      *(v244 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialEmissiveTexture>(void)::metadata) = *(v244 + 4096);
      v245 = *(a6 + 8);
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialDiffuseTexture>();
      *(v245 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialDiffuseTexture>(void)::metadata) = *(v245 + 4096);
      goto LABEL_228;
    }
  }

  v211 = 0;
LABEL_228:
  *(v21 + 104 * *v22 + 24) = -65536;
  v246 = v21 + 104 * *v22;
  v247 = *(v246 + 92);
  *(v246 + 92) = v247 + 1;
  *(v246 + 4 * v247 + 28) = v211;
  v248 = v21 + 104 * *v22;
  v250 = *(v248 + 92);
  v249 = (v248 + 92);
  if (v250 >= 0x10)
  {
    *v249 = 0;
  }

  std::__function::__value_func<void ()(md::ls::PendingDeletion const&,md::ls::RenderableAlbedoTexture *,md::ls::TextureHandleForType<Flyover::NightTexture> *,md::ls::TextureHandleForType<Flyover::DiffuseTexture> *,md::ls::UniqueMaterialAlbedoTexture *,md::ls::UniqueMaterialEmissiveTexture *,md::ls::UniqueMaterialDiffuseTexture *)>::~__value_func[abi:nn200100](&v411);
  v406[0] = &unk_1F2A1A8B0;
  v406[1] = &v392;
  v407 = v406;
  v251 = *(a7 + 8);
  v252 = ecs2::BasicRegistry<void>::storage<md::ls::PendingDeletion>(v251);
  v253 = ecs2::BasicRegistry<void>::storage<md::ls::TexturesToDisconnect>(v251);
  v254 = v253;
  if (*(v253 + 40) - *(v253 + 32) >= *(v252 + 40) - *(v252 + 32))
  {
    v255 = v252;
  }

  else
  {
    v255 = v253;
  }

  v256 = *(v255 + 40);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(&v411, *(v255 + 32), v256, v252, v253);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(&v403, v256, v256, v252, v254);
  v408 = v411;
  v409 = v412;
  v410 = v413;
  v257 = v403;
  v258 = v411;
  if (v411 == v403)
  {
    v259 = 0;
  }

  else
  {
    v259 = 0;
    v352 = v409;
    v353 = *(&v408 + 1);
    do
    {
      v354 = *(v352 + 32);
      v355 = v258[1];
      v356 = (v355 >> 3) & 0x1FF8;
      v357 = v355 & 0x3F;
      v358 = *(*(v352 + 8) + v356) + 4 * v357;
      v359 = *(*(*(*(&v352 + 1) + 8) + v356) + 4 * v357 + 2);
      v360 = *(*(*(&v352 + 1) + 56) + ((v359 >> 3) & 0x1FF8));
      v361 = *(v358 + 2);
      *(v21 + 104 * *v22 + 24) = *v258;
      if (!v407)
      {
        goto LABEL_309;
      }

      (*(*v407 + 48))(v407, v354 + 4 * v361, v360 + 24 * (v359 & 0x3F));
      ++v259;
      v362 = v258 + 2;
      while (1)
      {
        v258 = v362;
        *&v408 = v362;
        if (v362 == v353)
        {
          break;
        }

        v363 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::RenderableMaterialData const>(&v408, *v362, v362[1]);
        v362 = v258 + 2;
        if (v363)
        {
          v364 = v258;
          goto LABEL_307;
        }
      }

      v364 = v353;
LABEL_307:
      ;
    }

    while (v364 != v257);
    v365 = *(a7 + 8);
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TexturesToDisconnect>();
    *(v365 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TexturesToDisconnect>(void)::metadata) = *(v365 + 4096);
  }

  *(v21 + 104 * *v22 + 24) = -65536;
  v260 = v21 + 104 * *v22;
  v261 = *(v260 + 92);
  *(v260 + 92) = v261 + 1;
  *(v260 + 4 * v261 + 28) = v259;
  v262 = v21 + 104 * *v22;
  v264 = *(v262 + 92);
  v263 = (v262 + 92);
  if (v264 >= 0x10)
  {
    *v263 = 0;
  }

  std::__function::__value_func<void ()(md::ls::PendingDeletion const&,md::ls::TexturesToDisconnect &)>::~__value_func[abi:nn200100](v406);
  *&v411 = &unk_1F2A1A8F8;
  *(&v411 + 1) = v393;
  *(&v412 + 1) = &v411;
  v265 = *(a9 + 8);
  v266 = ecs2::BasicRegistry<void>::storage<md::ls::RenderItemPendingDeletion>(v265);
  v267 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineState>(v265);
  v268 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v265);
  v269 = v266[4];
  v270 = v266[5];
  if (v269 != v270)
  {
    v271 = v266[1];
    do
    {
      v272 = v269[1];
      if (v272 >> 6 < (v266[2] - v271) >> 3)
      {
        v273 = *(v271 + 8 * (v272 >> 6));
        if (v273)
        {
          if (*(v273 + 4 * (v272 & 0x3F)) == *v269)
          {
            break;
          }
        }
      }

      v269 += 2;
    }

    while (v269 != v270);
  }

  if (v269 == v270)
  {
    v274 = 0;
    goto LABEL_267;
  }

  v274 = 0;
  do
  {
    v275 = v269[1];
    v276 = v275 >> 6;
    v277 = v275 & 0x3F;
    v278 = *v269;
    v279 = v267[1];
    if (v276 >= (v267[2] - v279) >> 3)
    {
LABEL_249:
      v280 = 0;
      goto LABEL_250;
    }

    v280 = *(v279 + 8 * v276);
    if (v280)
    {
      if (*(v280 + 4 * v277) != v278)
      {
        goto LABEL_249;
      }

      v281 = *(v280 + 4 * v277 + 2);
      v280 = *(v267[7] + ((v281 >> 3) & 0x1FF8)) + 8 * (v281 & 0x3F);
    }

LABEL_250:
    v282 = v268[1];
    if (v276 < (v268[2] - v282) >> 3 && (v283 = *(v282 + 8 * v276)) != 0 && *(v283 + 4 * v277) == v278)
    {
      v284 = *(v283 + 4 * v277 + 2);
      v285 = *(v268[7] + ((v284 >> 3) & 0x1FF8)) + 8 * (v284 & 0x3F);
    }

    else
    {
      v285 = 0;
    }

    v286 = v266[4];
    v287 = *(*(v266[1] + 8 * v276) + 4 * v277 + 2);
    *(v21 + 104 * *v22 + 24) = *v269;
    *&v403 = v280;
    *&v408 = v285;
    if (!*(&v412 + 1))
    {
      goto LABEL_309;
    }

    (*(**(&v412 + 1) + 48))(*(&v412 + 1), v286 + 4 * v287, &v403, &v408);
    ++v274;
    v269 += 2;
    if (v269 == v270)
    {
      break;
    }

    v288 = v266[1];
    while (1)
    {
      v289 = v269[1];
      if (v289 >> 6 < (v266[2] - v288) >> 3)
      {
        v290 = *(v288 + 8 * (v289 >> 6));
        if (v290)
        {
          if (*(v290 + 4 * (v289 & 0x3F)) == *v269)
          {
            break;
          }
        }
      }

      v269 += 2;
      if (v269 == v270)
      {
        goto LABEL_264;
      }
    }
  }

  while (v269 != v270);
LABEL_264:
  v291 = *(a9 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineState>();
  *(v291 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineState>(void)::metadata) = *(v291 + 4096);
  v292 = *(a9 + 8);
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
    *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
    qword_1EB83D950 = "md::ls::PipelineSetup]";
    qword_1EB83D958 = 21;
  }

  *(v292 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v292 + 4096);
LABEL_267:
  *(v21 + 104 * *v22 + 24) = -65536;
  v293 = v21 + 104 * *v22;
  v294 = *(v293 + 92);
  *(v293 + 92) = v294 + 1;
  *(v293 + 4 * v294 + 28) = v274;
  v295 = v21 + 104 * *v22;
  v297 = *(v295 + 92);
  v296 = (v295 + 92);
  if (v297 >= 0x10)
  {
    *v296 = 0;
  }

  std::__function::__value_func<void ()(md::ls::RenderItemPendingDeletion const&,md::ls::PipelineState *,md::ls::PipelineSetup *)>::~__value_func[abi:nn200100](&v411);
  *&v408 = &unk_1F2A1AAB8;
  *(&v408 + 1) = &v393;
  *&v409 = &v392;
  *(&v409 + 1) = &v408;
  v298 = *(a8 + 8);
  v299 = ecs2::BasicRegistry<void>::storage<md::ls::PendingDeletion>(v298);
  v300 = ecs2::BasicRegistry<void>::storage<md::ls::ColorRampDataHandle>(v298);
  v301 = v300;
  if (*(v300 + 40) - *(v300 + 32) >= *(v299 + 40) - *(v299 + 32))
  {
    v302 = v299;
  }

  else
  {
    v302 = v300;
  }

  v303 = *(v302 + 40);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(&v403, *(v302 + 32), v303, v299, v300);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(v414, v303, v303, v299, v301);
  v304 = v403;
  v413 = v405;
  v411 = v403;
  v412 = v404;
  v305 = v414[0];
  if (v403 == v414[0])
  {
    v306 = 0;
  }

  else
  {
    v306 = 0;
    v307 = v404;
    v308 = *(&v403 + 1);
    do
    {
      v309 = *(v307 + 32);
      v310 = v304[1];
      v311 = (v310 >> 3) & 0x1FF8;
      v312 = v310 & 0x3F;
      v313 = *(*(v307 + 8) + v311) + 4 * v312;
      v314 = *(*(*(*(&v307 + 1) + 8) + v311) + 4 * v312 + 2);
      v315 = *(*(*(&v307 + 1) + 56) + ((v314 >> 3) & 0x1FF8));
      v316 = *(v313 + 2);
      *(v21 + 104 * *v22 + 24) = *v304;
      if (!*(&v409 + 1))
      {
        goto LABEL_309;
      }

      (*(**(&v409 + 1) + 48))(*(&v409 + 1), v309 + 4 * v316, v315 + 8 * (v314 & 0x3F));
      ++v306;
      v317 = v304 + 2;
      do
      {
        v304 = v317;
        *&v403 = v317;
        if (v317 == v308)
        {
          break;
        }

        v318 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::RenderableMaterialData const>(&v403, *v317, v317[1]);
        v317 = v304 + 2;
      }

      while (!v318);
    }

    while (v304 != v305);
    v319 = *(a8 + 8);
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ColorRampDataHandle>();
    *(v319 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ColorRampDataHandle>(void)::metadata) = *(v319 + 4096);
  }

  *(v21 + 104 * *v22 + 24) = -65536;
  v320 = v21 + 104 * *v22;
  v321 = *(v320 + 92);
  *(v320 + 92) = v321 + 1;
  *(v320 + 4 * v321 + 28) = v306;
  v322 = v21 + 104 * *v22;
  v324 = *(v322 + 92);
  v323 = (v322 + 92);
  if (v324 >= 0x10)
  {
    *v323 = 0;
  }

  std::__function::__value_func<void ()(md::ls::PendingDeletion const&,md::ls::ColorRampDataHandle &)>::~__value_func[abi:nn200100](&v408);
  *&v408 = &unk_1F2A1AB00;
  *(&v408 + 1) = &v393;
  *(&v409 + 1) = &v408;
  v325 = *(a10 + 8);
  v326 = ecs2::BasicRegistry<void>::storage<md::ls::PendingDeletion>(v325);
  v327 = ecs2::BasicRegistry<void>::storage<md::ls::StyleSSAODataKeyHandle>(v325);
  v328 = v327;
  if (*(v327 + 40) - *(v327 + 32) >= *(v326 + 40) - *(v326 + 32))
  {
    v329 = v326;
  }

  else
  {
    v329 = v327;
  }

  v330 = *(v329 + 40);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(&v403, *(v329 + 32), v330, v326, v327);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(v414, v330, v330, v326, v328);
  v331 = v403;
  v413 = v405;
  v411 = v403;
  v412 = v404;
  v332 = v414[0];
  if (v403 == v414[0])
  {
    v333 = 0;
  }

  else
  {
    v333 = 0;
    v334 = v404;
    v335 = *(&v403 + 1);
    do
    {
      v336 = *(v334 + 32);
      v337 = v331[1];
      v338 = (v337 >> 3) & 0x1FF8;
      v339 = v337 & 0x3F;
      v340 = *(*(v334 + 8) + v338) + 4 * v339;
      v341 = *(*(*(*(&v334 + 1) + 8) + v338) + 4 * v339 + 2);
      v342 = *(*(*(&v334 + 1) + 56) + ((v341 >> 3) & 0x1FF8));
      v343 = *(v340 + 2);
      *(v21 + 104 * *v22 + 24) = *v331;
      if (!*(&v409 + 1))
      {
        goto LABEL_309;
      }

      (*(**(&v409 + 1) + 48))(*(&v409 + 1), v336 + 4 * v343, v342 + 8 * (v341 & 0x3F));
      ++v333;
      v344 = v331 + 2;
      do
      {
        v331 = v344;
        *&v403 = v344;
        if (v344 == v335)
        {
          break;
        }

        v345 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::RenderableMaterialData const>(&v403, *v344, v344[1]);
        v344 = v331 + 2;
      }

      while (!v345);
    }

    while (v331 != v332);
    v346 = *(a10 + 8);
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleSSAODataKeyHandle>();
    *(v346 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleSSAODataKeyHandle>(void)::metadata) = *(v346 + 4096);
  }

  *(v21 + 104 * *v22 + 24) = -65536;
  v347 = v21 + 104 * *v22;
  v348 = *(v347 + 92);
  *(v347 + 92) = v348 + 1;
  *(v347 + 4 * v348 + 28) = v333;
  v349 = v21 + 104 * *v22;
  v351 = *(v349 + 92);
  v350 = (v349 + 92);
  if (v351 >= 0x10)
  {
    *v350 = 0;
  }

  std::__function::__value_func<void ()(md::ls::PendingDeletion const&,md::ls::StyleSSAODataKeyHandle &)>::~__value_func[abi:nn200100](&v408);
  if (v378 != v377)
  {
    md::MaterialResourceStore::reset(v388);
  }
}

void sub_1B2F74350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, ...)
{
  va_start(va, a48);
  std::__function::__value_func<void ()(md::ls::PendingDeletion const&,md::ls::TexturesToDisconnect &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::PendingDeletion const&,md::ls::UniqueMaterialData const&,md::ls::PlanarParametersCacheKeyHandle *,md::ls::UniqueStyleEmissiveDataKeyHandle *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(md::ls::PendingDeletion const&,md::ls::PositionScaleInfoConstantDataHandle *,md::ls::StyleRouteLineMaskConstantDataHandle *,md::ls::StyleConstantHandle *,md::ls::LandCoverSettingsConstantDataHandle *,md::ls::StyleGroundOcclusionConstantDataHandle *,md::ls::NormalsHandle *,md::ls::UVsHandle *,md::ls::ElevationHandle *,md::ls::InstanceTransformHandle *,md::ls::StyleRouteLineMaskDataKeyHandle *,md::ls::ColorCorrectionDataKeyHandle *,md::ls::NeedsClimateTint *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(md::ls::PendingDeletion const&,md::ls::StyleSSAODataKeyHandle &)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__func<md::ita::DisconnectComponents::operator()(ecs2::Query<md::ls::RequestReset const&>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableMaterialData *,md::ls::RampMaterialData *,md::ls::ColorDataHandle *,md::ls::UniqueMaterialVisibilityOptionsHandle *,md::ls::UniqueMaterialZIndexHandle *,md::ls::UniqueColorDataHandle *,md::ls::UniqueGradientMaskDataHandle *,md::ls::UniqueColorCorrectionDataHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::UniqueMaterialData const&,md::ls::PlanarParametersCacheKeyHandle *,md::ls::UniqueStyleEmissiveDataKeyHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::PositionScaleInfoConstantDataHandle *,md::ls::StyleRouteLineMaskConstantDataHandle *,md::ls::StyleConstantHandle *,md::ls::LandCoverSettingsConstantDataHandle *,md::ls::StyleGroundOcclusionConstantDataHandle *,md::ls::NormalsHandle *,md::ls::UVsHandle *,md::ls::ElevationHandle *,md::ls::InstanceTransformHandle *,md::ls::StyleRouteLineMaskDataKeyHandle *,md::ls::ColorCorrectionDataKeyHandle *,md::ls::NeedsClimateTint *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableAlbedoTexture *,md::ls::TextureHandleForType<Flyover::NightTexture> *,md::ls::TextureHandleForType<Flyover::DiffuseTexture> *,md::ls::UniqueMaterialAlbedoTexture *,md::ls::UniqueMaterialEmissiveTexture *,md::ls::UniqueMaterialDiffuseTexture *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::TexturesToDisconnect &>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::ColorRampDataHandle &>,ecs2::Query<md::ls::RenderItemPendingDeletion const&,md::ls::PipelineState *,md::ls::PipelineSetup *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::StyleSSAODataKeyHandle &>)::$_4,std::allocator<md::ita::DisconnectComponents::operator()(ecs2::Query<md::ls::RequestReset const&>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableMaterialData *,md::ls::RampMaterialData *,md::ls::ColorDataHandle *,md::ls::UniqueMaterialVisibilityOptionsHandle *,md::ls::UniqueMaterialZIndexHandle *,md::ls::UniqueColorDataHandle *,md::ls::UniqueGradientMaskDataHandle *,md::ls::UniqueColorCorrectionDataHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::UniqueMaterialData const&,md::ls::PlanarParametersCacheKeyHandle *,md::ls::UniqueStyleEmissiveDataKeyHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::PositionScaleInfoConstantDataHandle *,md::ls::StyleRouteLineMaskConstantDataHandle *,md::ls::StyleConstantHandle *,md::ls::LandCoverSettingsConstantDataHandle *,md::ls::StyleGroundOcclusionConstantDataHandle *,md::ls::NormalsHandle *,md::ls::UVsHandle *,md::ls::ElevationHandle *,md::ls::InstanceTransformHandle *,md::ls::StyleRouteLineMaskDataKeyHandle *,md::ls::ColorCorrectionDataKeyHandle *,md::ls::NeedsClimateTint *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableAlbedoTexture *,md::ls::TextureHandleForType<Flyover::NightTexture> *,md::ls::TextureHandleForType<Flyover::DiffuseTexture> *,md::ls::UniqueMaterialAlbedoTexture *,md::ls::UniqueMaterialEmissiveTexture *,md::ls::UniqueMaterialDiffuseTexture *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::TexturesToDisconnect &>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::ColorRampDataHandle &>,ecs2::Query<md::ls::RenderItemPendingDeletion const&,md::ls::PipelineState *,md::ls::PipelineSetup *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::StyleSSAODataKeyHandle &>)::$_4>,void ()(md::ls::PendingDeletion const&,md::ls::StyleSSAODataKeyHandle &)>::operator()(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v3 = **(a1 + 8);
  v4 = *a3;
  v5 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v3 + 285, *a3);
  if (v5 != v3[290])
  {
    v6 = (*(v3[292] + ((((v5 - v3[289]) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (((v5 - v3[289]) >> 3) & 0x3F));
    v7 = v6[1];
    if (!v7 || (v8 = v7 - 1, (v6[1] = v8) == 0))
    {
      *v6 = 0;
    }
  }

  result = md::getStorage<geo::handle<md::CachedKey<md::StyleSSAOKey>>,md::CachedKey<md::StyleSSAOKey>,md::CachedKey<md::StyleSSAOKey>*>(v3 + 285, v4);
  if (result)
  {
    v10 = std::__hash_table<std::__hash_value_type<md::StyleSSAOKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleSSAO>>>,std::__unordered_map_hasher<md::StyleSSAOKey,std::__hash_value_type<md::StyleSSAOKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleSSAO>>>,md::StyleSSAOKeyHasher,std::equal_to<md::StyleSSAOKey>,true>,std::__unordered_map_equal<md::StyleSSAOKey,std::__hash_value_type<md::StyleSSAOKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleSSAO>>>,std::equal_to<md::StyleSSAOKey>,md::StyleSSAOKeyHasher,true>,std::allocator<std::__hash_value_type<md::StyleSSAOKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleSSAO>>>>>::find<md::StyleSSAOKey>(v3 + 275, result);
    if (v10)
    {
      v11 = v10[6];
    }

    else
    {
      v11 = 0;
    }

    return md::updateRetainedCounter(v3 + 231, v11);
  }

  return result;
}

uint64_t std::__function::__func<md::ita::DisconnectComponents::operator()(ecs2::Query<md::ls::RequestReset const&>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableMaterialData *,md::ls::RampMaterialData *,md::ls::ColorDataHandle *,md::ls::UniqueMaterialVisibilityOptionsHandle *,md::ls::UniqueMaterialZIndexHandle *,md::ls::UniqueColorDataHandle *,md::ls::UniqueGradientMaskDataHandle *,md::ls::UniqueColorCorrectionDataHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::UniqueMaterialData const&,md::ls::PlanarParametersCacheKeyHandle *,md::ls::UniqueStyleEmissiveDataKeyHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::PositionScaleInfoConstantDataHandle *,md::ls::StyleRouteLineMaskConstantDataHandle *,md::ls::StyleConstantHandle *,md::ls::LandCoverSettingsConstantDataHandle *,md::ls::StyleGroundOcclusionConstantDataHandle *,md::ls::NormalsHandle *,md::ls::UVsHandle *,md::ls::ElevationHandle *,md::ls::InstanceTransformHandle *,md::ls::StyleRouteLineMaskDataKeyHandle *,md::ls::ColorCorrectionDataKeyHandle *,md::ls::NeedsClimateTint *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableAlbedoTexture *,md::ls::TextureHandleForType<Flyover::NightTexture> *,md::ls::TextureHandleForType<Flyover::DiffuseTexture> *,md::ls::UniqueMaterialAlbedoTexture *,md::ls::UniqueMaterialEmissiveTexture *,md::ls::UniqueMaterialDiffuseTexture *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::TexturesToDisconnect &>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::ColorRampDataHandle &>,ecs2::Query<md::ls::RenderItemPendingDeletion const&,md::ls::PipelineState *,md::ls::PipelineSetup *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::StyleSSAODataKeyHandle &>)::$_4,std::allocator<md::ita::DisconnectComponents::operator()(ecs2::Query<md::ls::RequestReset const&>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableMaterialData *,md::ls::RampMaterialData *,md::ls::ColorDataHandle *,md::ls::UniqueMaterialVisibilityOptionsHandle *,md::ls::UniqueMaterialZIndexHandle *,md::ls::UniqueColorDataHandle *,md::ls::UniqueGradientMaskDataHandle *,md::ls::UniqueColorCorrectionDataHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::UniqueMaterialData const&,md::ls::PlanarParametersCacheKeyHandle *,md::ls::UniqueStyleEmissiveDataKeyHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::PositionScaleInfoConstantDataHandle *,md::ls::StyleRouteLineMaskConstantDataHandle *,md::ls::StyleConstantHandle *,md::ls::LandCoverSettingsConstantDataHandle *,md::ls::StyleGroundOcclusionConstantDataHandle *,md::ls::NormalsHandle *,md::ls::UVsHandle *,md::ls::ElevationHandle *,md::ls::InstanceTransformHandle *,md::ls::StyleRouteLineMaskDataKeyHandle *,md::ls::ColorCorrectionDataKeyHandle *,md::ls::NeedsClimateTint *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableAlbedoTexture *,md::ls::TextureHandleForType<Flyover::NightTexture> *,md::ls::TextureHandleForType<Flyover::DiffuseTexture> *,md::ls::UniqueMaterialAlbedoTexture *,md::ls::UniqueMaterialEmissiveTexture *,md::ls::UniqueMaterialDiffuseTexture *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::TexturesToDisconnect &>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::ColorRampDataHandle &>,ecs2::Query<md::ls::RenderItemPendingDeletion const&,md::ls::PipelineState *,md::ls::PipelineSetup *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::StyleSSAODataKeyHandle &>)::$_4>,void ()(md::ls::PendingDeletion const&,md::ls::StyleSSAODataKeyHandle &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A1AB00;
  a2[1] = v2;
  return result;
}

void std::__function::__func<md::ita::DisconnectComponents::operator()(ecs2::Query<md::ls::RequestReset const&>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableMaterialData *,md::ls::RampMaterialData *,md::ls::ColorDataHandle *,md::ls::UniqueMaterialVisibilityOptionsHandle *,md::ls::UniqueMaterialZIndexHandle *,md::ls::UniqueColorDataHandle *,md::ls::UniqueGradientMaskDataHandle *,md::ls::UniqueColorCorrectionDataHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::UniqueMaterialData const&,md::ls::PlanarParametersCacheKeyHandle *,md::ls::UniqueStyleEmissiveDataKeyHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::PositionScaleInfoConstantDataHandle *,md::ls::StyleRouteLineMaskConstantDataHandle *,md::ls::StyleConstantHandle *,md::ls::LandCoverSettingsConstantDataHandle *,md::ls::StyleGroundOcclusionConstantDataHandle *,md::ls::NormalsHandle *,md::ls::UVsHandle *,md::ls::ElevationHandle *,md::ls::InstanceTransformHandle *,md::ls::StyleRouteLineMaskDataKeyHandle *,md::ls::ColorCorrectionDataKeyHandle *,md::ls::NeedsClimateTint *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableAlbedoTexture *,md::ls::TextureHandleForType<Flyover::NightTexture> *,md::ls::TextureHandleForType<Flyover::DiffuseTexture> *,md::ls::UniqueMaterialAlbedoTexture *,md::ls::UniqueMaterialEmissiveTexture *,md::ls::UniqueMaterialDiffuseTexture *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::TexturesToDisconnect &>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::ColorRampDataHandle &>,ecs2::Query<md::ls::RenderItemPendingDeletion const&,md::ls::PipelineState *,md::ls::PipelineSetup *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::StyleSSAODataKeyHandle &>)::$_3,std::allocator<md::ita::DisconnectComponents::operator()(ecs2::Query<md::ls::RequestReset const&>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableMaterialData *,md::ls::RampMaterialData *,md::ls::ColorDataHandle *,md::ls::UniqueMaterialVisibilityOptionsHandle *,md::ls::UniqueMaterialZIndexHandle *,md::ls::UniqueColorDataHandle *,md::ls::UniqueGradientMaskDataHandle *,md::ls::UniqueColorCorrectionDataHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::UniqueMaterialData const&,md::ls::PlanarParametersCacheKeyHandle *,md::ls::UniqueStyleEmissiveDataKeyHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::PositionScaleInfoConstantDataHandle *,md::ls::StyleRouteLineMaskConstantDataHandle *,md::ls::StyleConstantHandle *,md::ls::LandCoverSettingsConstantDataHandle *,md::ls::StyleGroundOcclusionConstantDataHandle *,md::ls::NormalsHandle *,md::ls::UVsHandle *,md::ls::ElevationHandle *,md::ls::InstanceTransformHandle *,md::ls::StyleRouteLineMaskDataKeyHandle *,md::ls::ColorCorrectionDataKeyHandle *,md::ls::NeedsClimateTint *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableAlbedoTexture *,md::ls::TextureHandleForType<Flyover::NightTexture> *,md::ls::TextureHandleForType<Flyover::DiffuseTexture> *,md::ls::UniqueMaterialAlbedoTexture *,md::ls::UniqueMaterialEmissiveTexture *,md::ls::UniqueMaterialDiffuseTexture *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::TexturesToDisconnect &>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::ColorRampDataHandle &>,ecs2::Query<md::ls::RenderItemPendingDeletion const&,md::ls::PipelineState *,md::ls::PipelineSetup *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::StyleSSAODataKeyHandle &>)::$_3>,void ()(md::ls::PendingDeletion const&,md::ls::ColorRampDataHandle &)>::operator()(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  ColorRampData = md::VKMRenderResourcesStore::getColorRampData(**(a1 + 8), *a3);
  if (ColorRampData)
  {
    v6 = ColorRampData;
    if (*(ColorRampData + 80) == 1)
    {
      for (i = 0; i != 32; i += 16)
      {
        (*(***(a1 + 16) + 56))(**(a1 + 16), *(v6 + i + 16), *(v6 + i + 24));
      }

      v23 = 0u;
      v24 = 0u;
      if ((*(v6 + 80) & 1) == 0)
      {
        goto LABEL_21;
      }

      v8 = 0;
      v9 = 0;
      v10 = &v23;
      do
      {
        v11 = v8;
        v12 = v6 + 48 + 16 * v9;
        v13 = *v10;
        *v10 = 0;
        *(v10 + 1) = 0;
        v14 = *(v12 + 8);
        *v12 = v13;
        if (v14)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v14);
        }

        v8 = 1;
        v10 = &v24;
        v9 = 1;
      }

      while ((v11 & 1) == 0);
      for (j = 24; j != -8; j -= 16)
      {
        v16 = *(&v23 + j);
        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v16);
        }
      }

      if (*(v6 + 80) & 1) != 0 && (md::VKMRenderResourcesStore::_disconnect<geo::handle<md::ConstantDataResource<ggl::DaVinci::GradientParameters>>>(**(a1 + 8), *v6), (*(v6 + 80)))
      {
        md::VKMRenderResourcesStore::_disconnect<geo::handle<md::ConstantDataResource<ggl::DaVinci::GradientParameters>>>(**(a1 + 8), *(v6 + 8));
        v17 = **(a1 + 8);
        v18 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v17 + 1638, *a3);
        if (v18 != v17[1643])
        {
          v19 = (*(v17[1645] + ((((v18 - v17[1642]) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (((v18 - v17[1642]) >> 3) & 0x3F));
          v20 = v19[1];
          if (!v20 || (v21 = v20 - 1, (v19[1] = v21) == 0))
          {
            *v19 = 0;
          }
        }
      }

      else
      {
LABEL_21:
        v22 = std::__throw_bad_optional_access[abi:nn200100]();
        std::__function::__func<md::ita::DisconnectComponents::operator()(ecs2::Query<md::ls::RequestReset const&>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableMaterialData *,md::ls::RampMaterialData *,md::ls::ColorDataHandle *,md::ls::UniqueMaterialVisibilityOptionsHandle *,md::ls::UniqueMaterialZIndexHandle *,md::ls::UniqueColorDataHandle *,md::ls::UniqueGradientMaskDataHandle *,md::ls::UniqueColorCorrectionDataHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::UniqueMaterialData const&,md::ls::PlanarParametersCacheKeyHandle *,md::ls::UniqueStyleEmissiveDataKeyHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::PositionScaleInfoConstantDataHandle *,md::ls::StyleRouteLineMaskConstantDataHandle *,md::ls::StyleConstantHandle *,md::ls::LandCoverSettingsConstantDataHandle *,md::ls::StyleGroundOcclusionConstantDataHandle *,md::ls::NormalsHandle *,md::ls::UVsHandle *,md::ls::ElevationHandle *,md::ls::InstanceTransformHandle *,md::ls::StyleRouteLineMaskDataKeyHandle *,md::ls::ColorCorrectionDataKeyHandle *,md::ls::NeedsClimateTint *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableAlbedoTexture *,md::ls::TextureHandleForType<Flyover::NightTexture> *,md::ls::TextureHandleForType<Flyover::DiffuseTexture> *,md::ls::UniqueMaterialAlbedoTexture *,md::ls::UniqueMaterialEmissiveTexture *,md::ls::UniqueMaterialDiffuseTexture *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::TexturesToDisconnect &>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::ColorRampDataHandle &>,ecs2::Query<md::ls::RenderItemPendingDeletion const&,md::ls::PipelineState *,md::ls::PipelineSetup *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::StyleSSAODataKeyHandle &>)::$_3,std::allocator<md::ita::DisconnectComponents::operator()(ecs2::Query<md::ls::RequestReset const&>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableMaterialData *,md::ls::RampMaterialData *,md::ls::ColorDataHandle *,md::ls::UniqueMaterialVisibilityOptionsHandle *,md::ls::UniqueMaterialZIndexHandle *,md::ls::UniqueColorDataHandle *,md::ls::UniqueGradientMaskDataHandle *,md::ls::UniqueColorCorrectionDataHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::UniqueMaterialData const&,md::ls::PlanarParametersCacheKeyHandle *,md::ls::UniqueStyleEmissiveDataKeyHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::PositionScaleInfoConstantDataHandle *,md::ls::StyleRouteLineMaskConstantDataHandle *,md::ls::StyleConstantHandle *,md::ls::LandCoverSettingsConstantDataHandle *,md::ls::StyleGroundOcclusionConstantDataHandle *,md::ls::NormalsHandle *,md::ls::UVsHandle *,md::ls::ElevationHandle *,md::ls::InstanceTransformHandle *,md::ls::StyleRouteLineMaskDataKeyHandle *,md::ls::ColorCorrectionDataKeyHandle *,md::ls::NeedsClimateTint *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableAlbedoTexture *,md::ls::TextureHandleForType<Flyover::NightTexture> *,md::ls::TextureHandleForType<Flyover::DiffuseTexture> *,md::ls::UniqueMaterialAlbedoTexture *,md::ls::UniqueMaterialEmissiveTexture *,md::ls::UniqueMaterialDiffuseTexture *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::TexturesToDisconnect &>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::ColorRampDataHandle &>,ecs2::Query<md::ls::RenderItemPendingDeletion const&,md::ls::PipelineState *,md::ls::PipelineSetup *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::StyleSSAODataKeyHandle &>)::$_3>,void ()(md::ls::PendingDeletion const&,md::ls::ColorRampDataHandle &)>::destroy_deallocate(v22);
      }
    }
  }
}

__n128 std::__function::__func<md::ita::DisconnectComponents::operator()(ecs2::Query<md::ls::RequestReset const&>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableMaterialData *,md::ls::RampMaterialData *,md::ls::ColorDataHandle *,md::ls::UniqueMaterialVisibilityOptionsHandle *,md::ls::UniqueMaterialZIndexHandle *,md::ls::UniqueColorDataHandle *,md::ls::UniqueGradientMaskDataHandle *,md::ls::UniqueColorCorrectionDataHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::UniqueMaterialData const&,md::ls::PlanarParametersCacheKeyHandle *,md::ls::UniqueStyleEmissiveDataKeyHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::PositionScaleInfoConstantDataHandle *,md::ls::StyleRouteLineMaskConstantDataHandle *,md::ls::StyleConstantHandle *,md::ls::LandCoverSettingsConstantDataHandle *,md::ls::StyleGroundOcclusionConstantDataHandle *,md::ls::NormalsHandle *,md::ls::UVsHandle *,md::ls::ElevationHandle *,md::ls::InstanceTransformHandle *,md::ls::StyleRouteLineMaskDataKeyHandle *,md::ls::ColorCorrectionDataKeyHandle *,md::ls::NeedsClimateTint *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableAlbedoTexture *,md::ls::TextureHandleForType<Flyover::NightTexture> *,md::ls::TextureHandleForType<Flyover::DiffuseTexture> *,md::ls::UniqueMaterialAlbedoTexture *,md::ls::UniqueMaterialEmissiveTexture *,md::ls::UniqueMaterialDiffuseTexture *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::TexturesToDisconnect &>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::ColorRampDataHandle &>,ecs2::Query<md::ls::RenderItemPendingDeletion const&,md::ls::PipelineState *,md::ls::PipelineSetup *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::StyleSSAODataKeyHandle &>)::$_3,std::allocator<md::ita::DisconnectComponents::operator()(ecs2::Query<md::ls::RequestReset const&>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableMaterialData *,md::ls::RampMaterialData *,md::ls::ColorDataHandle *,md::ls::UniqueMaterialVisibilityOptionsHandle *,md::ls::UniqueMaterialZIndexHandle *,md::ls::UniqueColorDataHandle *,md::ls::UniqueGradientMaskDataHandle *,md::ls::UniqueColorCorrectionDataHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::UniqueMaterialData const&,md::ls::PlanarParametersCacheKeyHandle *,md::ls::UniqueStyleEmissiveDataKeyHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::PositionScaleInfoConstantDataHandle *,md::ls::StyleRouteLineMaskConstantDataHandle *,md::ls::StyleConstantHandle *,md::ls::LandCoverSettingsConstantDataHandle *,md::ls::StyleGroundOcclusionConstantDataHandle *,md::ls::NormalsHandle *,md::ls::UVsHandle *,md::ls::ElevationHandle *,md::ls::InstanceTransformHandle *,md::ls::StyleRouteLineMaskDataKeyHandle *,md::ls::ColorCorrectionDataKeyHandle *,md::ls::NeedsClimateTint *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableAlbedoTexture *,md::ls::TextureHandleForType<Flyover::NightTexture> *,md::ls::TextureHandleForType<Flyover::DiffuseTexture> *,md::ls::UniqueMaterialAlbedoTexture *,md::ls::UniqueMaterialEmissiveTexture *,md::ls::UniqueMaterialDiffuseTexture *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::TexturesToDisconnect &>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::ColorRampDataHandle &>,ecs2::Query<md::ls::RenderItemPendingDeletion const&,md::ls::PipelineState *,md::ls::PipelineSetup *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::StyleSSAODataKeyHandle &>)::$_3>,void ()(md::ls::PendingDeletion const&,md::ls::ColorRampDataHandle &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A1AAB8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::function<void ()(md::ls::RenderItemPendingDeletion const&,md::ls::PipelineState,md::ls::PipelineSetup *)> md::ita::disconnect_render_item_components<md::VKMRenderResourcesStore,md::ls::PipelineState,md::ls::PipelineSetup>(md::VKMRenderResourcesStore *)::{lambda(md::ls::RenderItemPendingDeletion const&,md::ls::PipelineState*,md::ls::PipelineSetup*)#1},std::allocator<std::function<void ()(md::ls::RenderItemPendingDeletion const&,md::ls::PipelineState,md::ls::PipelineSetup *)> md::ita::disconnect_render_item_components<md::VKMRenderResourcesStore,md::ls::PipelineState,md::ls::PipelineSetup>(md::VKMRenderResourcesStore *)::{lambda(md::ls::RenderItemPendingDeletion const&,md::ls::PipelineState*,md::ls::PipelineSetup*)#1}>,void ()(md::ls::RenderItemPendingDeletion const&,md::ls::PipelineState*,md::ls::PipelineSetup*)>::operator()(uint64_t result, uint64_t a2, unint64_t **a3, unint64_t **a4)
{
  v4 = *a4;
  v5 = *(result + 8);
  if (*a3)
  {
    result = md::VKMRenderResourcesStore::_disconnect<geo::handle<md::PipelineStateItem>>(*(result + 8), **a3);
  }

  if (v4)
  {
    result = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v5 + 35, *v4);
    if (result != v5[40])
    {
      v6 = (*(v5[42] + ((((result - v5[39]) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (((result - v5[39]) >> 3) & 0x3F));
      v7 = v6[1];
      if (!v7 || (v8 = v7 - 1, (v6[1] = v8) == 0))
      {
        *v6 = 0;
      }
    }
  }

  return result;
}

uint64_t std::__function::__func<std::function<void ()(md::ls::RenderItemPendingDeletion const&,md::ls::PipelineState,md::ls::PipelineSetup *)> md::ita::disconnect_render_item_components<md::VKMRenderResourcesStore,md::ls::PipelineState,md::ls::PipelineSetup>(md::VKMRenderResourcesStore *)::{lambda(md::ls::RenderItemPendingDeletion const&,md::ls::PipelineState*,md::ls::PipelineSetup*)#1},std::allocator<std::function<void ()(md::ls::RenderItemPendingDeletion const&,md::ls::PipelineState,md::ls::PipelineSetup *)> md::ita::disconnect_render_item_components<md::VKMRenderResourcesStore,md::ls::PipelineState,md::ls::PipelineSetup>(md::VKMRenderResourcesStore *)::{lambda(md::ls::RenderItemPendingDeletion const&,md::ls::PipelineState*,md::ls::PipelineSetup*)#1}>,void ()(md::ls::RenderItemPendingDeletion const&,md::ls::PipelineState*,md::ls::PipelineSetup*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A1A8F8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<md::ita::DisconnectComponents::operator()(ecs2::Query<md::ls::RequestReset const&>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableMaterialData *,md::ls::RampMaterialData *,md::ls::ColorDataHandle *,md::ls::UniqueMaterialVisibilityOptionsHandle *,md::ls::UniqueMaterialZIndexHandle *,md::ls::UniqueColorDataHandle *,md::ls::UniqueGradientMaskDataHandle *,md::ls::UniqueColorCorrectionDataHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::UniqueMaterialData const&,md::ls::PlanarParametersCacheKeyHandle *,md::ls::UniqueStyleEmissiveDataKeyHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::PositionScaleInfoConstantDataHandle *,md::ls::StyleRouteLineMaskConstantDataHandle *,md::ls::StyleConstantHandle *,md::ls::LandCoverSettingsConstantDataHandle *,md::ls::StyleGroundOcclusionConstantDataHandle *,md::ls::NormalsHandle *,md::ls::UVsHandle *,md::ls::ElevationHandle *,md::ls::InstanceTransformHandle *,md::ls::StyleRouteLineMaskDataKeyHandle *,md::ls::ColorCorrectionDataKeyHandle *,md::ls::NeedsClimateTint *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableAlbedoTexture *,md::ls::TextureHandleForType<Flyover::NightTexture> *,md::ls::TextureHandleForType<Flyover::DiffuseTexture> *,md::ls::UniqueMaterialAlbedoTexture *,md::ls::UniqueMaterialEmissiveTexture *,md::ls::UniqueMaterialDiffuseTexture *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::TexturesToDisconnect &>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::ColorRampDataHandle &>,ecs2::Query<md::ls::RenderItemPendingDeletion const&,md::ls::PipelineState *,md::ls::PipelineSetup *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::StyleSSAODataKeyHandle &>)::$_2,std::allocator<md::ita::DisconnectComponents::operator()(ecs2::Query<md::ls::RequestReset const&>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableMaterialData *,md::ls::RampMaterialData *,md::ls::ColorDataHandle *,md::ls::UniqueMaterialVisibilityOptionsHandle *,md::ls::UniqueMaterialZIndexHandle *,md::ls::UniqueColorDataHandle *,md::ls::UniqueGradientMaskDataHandle *,md::ls::UniqueColorCorrectionDataHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::UniqueMaterialData const&,md::ls::PlanarParametersCacheKeyHandle *,md::ls::UniqueStyleEmissiveDataKeyHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::PositionScaleInfoConstantDataHandle *,md::ls::StyleRouteLineMaskConstantDataHandle *,md::ls::StyleConstantHandle *,md::ls::LandCoverSettingsConstantDataHandle *,md::ls::StyleGroundOcclusionConstantDataHandle *,md::ls::NormalsHandle *,md::ls::UVsHandle *,md::ls::ElevationHandle *,md::ls::InstanceTransformHandle *,md::ls::StyleRouteLineMaskDataKeyHandle *,md::ls::ColorCorrectionDataKeyHandle *,md::ls::NeedsClimateTint *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableAlbedoTexture *,md::ls::TextureHandleForType<Flyover::NightTexture> *,md::ls::TextureHandleForType<Flyover::DiffuseTexture> *,md::ls::UniqueMaterialAlbedoTexture *,md::ls::UniqueMaterialEmissiveTexture *,md::ls::UniqueMaterialDiffuseTexture *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::TexturesToDisconnect &>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::ColorRampDataHandle &>,ecs2::Query<md::ls::RenderItemPendingDeletion const&,md::ls::PipelineState *,md::ls::PipelineSetup *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::StyleSSAODataKeyHandle &>)::$_2>,void ()(md::ls::PendingDeletion const&,md::ls::TexturesToDisconnect &)>::operator()(uint64_t result, uint64_t a2, uint64_t **a3)
{
  v3 = *a3;
  v4 = a3[1];
  if (*a3 != v4)
  {
    v5 = result;
    do
    {
      v6 = *v3;
      v7 = v3[1];
      v3 += 2;
      result = (*(***(v5 + 8) + 56))(**(v5 + 8), v6, v7);
    }

    while (v3 != v4);
  }

  return result;
}

uint64_t std::__function::__func<md::ita::DisconnectComponents::operator()(ecs2::Query<md::ls::RequestReset const&>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableMaterialData *,md::ls::RampMaterialData *,md::ls::ColorDataHandle *,md::ls::UniqueMaterialVisibilityOptionsHandle *,md::ls::UniqueMaterialZIndexHandle *,md::ls::UniqueColorDataHandle *,md::ls::UniqueGradientMaskDataHandle *,md::ls::UniqueColorCorrectionDataHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::UniqueMaterialData const&,md::ls::PlanarParametersCacheKeyHandle *,md::ls::UniqueStyleEmissiveDataKeyHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::PositionScaleInfoConstantDataHandle *,md::ls::StyleRouteLineMaskConstantDataHandle *,md::ls::StyleConstantHandle *,md::ls::LandCoverSettingsConstantDataHandle *,md::ls::StyleGroundOcclusionConstantDataHandle *,md::ls::NormalsHandle *,md::ls::UVsHandle *,md::ls::ElevationHandle *,md::ls::InstanceTransformHandle *,md::ls::StyleRouteLineMaskDataKeyHandle *,md::ls::ColorCorrectionDataKeyHandle *,md::ls::NeedsClimateTint *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableAlbedoTexture *,md::ls::TextureHandleForType<Flyover::NightTexture> *,md::ls::TextureHandleForType<Flyover::DiffuseTexture> *,md::ls::UniqueMaterialAlbedoTexture *,md::ls::UniqueMaterialEmissiveTexture *,md::ls::UniqueMaterialDiffuseTexture *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::TexturesToDisconnect &>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::ColorRampDataHandle &>,ecs2::Query<md::ls::RenderItemPendingDeletion const&,md::ls::PipelineState *,md::ls::PipelineSetup *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::StyleSSAODataKeyHandle &>)::$_2,std::allocator<md::ita::DisconnectComponents::operator()(ecs2::Query<md::ls::RequestReset const&>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableMaterialData *,md::ls::RampMaterialData *,md::ls::ColorDataHandle *,md::ls::UniqueMaterialVisibilityOptionsHandle *,md::ls::UniqueMaterialZIndexHandle *,md::ls::UniqueColorDataHandle *,md::ls::UniqueGradientMaskDataHandle *,md::ls::UniqueColorCorrectionDataHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::UniqueMaterialData const&,md::ls::PlanarParametersCacheKeyHandle *,md::ls::UniqueStyleEmissiveDataKeyHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::PositionScaleInfoConstantDataHandle *,md::ls::StyleRouteLineMaskConstantDataHandle *,md::ls::StyleConstantHandle *,md::ls::LandCoverSettingsConstantDataHandle *,md::ls::StyleGroundOcclusionConstantDataHandle *,md::ls::NormalsHandle *,md::ls::UVsHandle *,md::ls::ElevationHandle *,md::ls::InstanceTransformHandle *,md::ls::StyleRouteLineMaskDataKeyHandle *,md::ls::ColorCorrectionDataKeyHandle *,md::ls::NeedsClimateTint *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableAlbedoTexture *,md::ls::TextureHandleForType<Flyover::NightTexture> *,md::ls::TextureHandleForType<Flyover::DiffuseTexture> *,md::ls::UniqueMaterialAlbedoTexture *,md::ls::UniqueMaterialEmissiveTexture *,md::ls::UniqueMaterialDiffuseTexture *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::TexturesToDisconnect &>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::ColorRampDataHandle &>,ecs2::Query<md::ls::RenderItemPendingDeletion const&,md::ls::PipelineState *,md::ls::PipelineSetup *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::StyleSSAODataKeyHandle &>)::$_2>,void ()(md::ls::PendingDeletion const&,md::ls::TexturesToDisconnect &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A1A8B0;
  a2[1] = v2;
  return result;
}

uint64_t mre::GGLResourceStore::disconnect(mre::GGLResourceStore *this, const TextureHandle *a2)
{
  result = ecs2::sparse_set<mre::TextureHandle,64ul>::find(this + 55, a2);
  if (result != *(this + 60))
  {
    v4 = *(*(this + 62) + ((((result - *(this + 59)) >> 4) >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (((result - *(this + 59)) >> 4) & 0x3F);
    --*(v4 + 8);
  }

  return result;
}

uint64_t std::__function::__func<std::function<void ()(md::ls::PendingDeletion const&,md::ls::RenderableAlbedoTexture,md::ls::TextureHandleForType<Flyover::NightTexture>,md::ls::TextureHandleForType<Flyover::DiffuseTexture>,md::ls::UniqueMaterialAlbedoTexture,md::ls::UniqueMaterialEmissiveTexture,md::ls::UniqueMaterialDiffuseTexture *)> md::ita::disconnect_components<mre::GGLResourceStore,md::ls::RenderableAlbedoTexture,md::ls::TextureHandleForType<Flyover::NightTexture>,md::ls::TextureHandleForType<Flyover::DiffuseTexture>,md::ls::UniqueMaterialAlbedoTexture,md::ls::UniqueMaterialEmissiveTexture,md::ls::UniqueMaterialDiffuseTexture>(mre::GGLResourceStore *)::{lambda(md::ls::PendingDeletion const&,md::ls::RenderableAlbedoTexture*,md::ls::TextureHandleForType<Flyover::NightTexture>*,md::ls::TextureHandleForType<Flyover::DiffuseTexture>*,md::ls::UniqueMaterialAlbedoTexture*,md::ls::UniqueMaterialEmissiveTexture*,md::ls::UniqueMaterialDiffuseTexture*)#1},std::allocator<std::function<void ()(md::ls::PendingDeletion const&,md::ls::RenderableAlbedoTexture,md::ls::TextureHandleForType<Flyover::NightTexture>,md::ls::TextureHandleForType<Flyover::DiffuseTexture>,md::ls::UniqueMaterialAlbedoTexture,md::ls::UniqueMaterialEmissiveTexture,md::ls::UniqueMaterialDiffuseTexture *)> md::ita::disconnect_components<mre::GGLResourceStore,md::ls::RenderableAlbedoTexture,md::ls::TextureHandleForType<Flyover::NightTexture>,md::ls::TextureHandleForType<Flyover::DiffuseTexture>,md::ls::UniqueMaterialAlbedoTexture,md::ls::UniqueMaterialEmissiveTexture,md::ls::UniqueMaterialDiffuseTexture>(mre::GGLResourceStore *)::{lambda(md::ls::PendingDeletion const&,md::ls::RenderableAlbedoTexture*,md::ls::TextureHandleForType<Flyover::NightTexture>*,md::ls::TextureHandleForType<Flyover::DiffuseTexture>*,md::ls::UniqueMaterialAlbedoTexture*,md::ls::UniqueMaterialEmissiveTexture*,md::ls::UniqueMaterialDiffuseTexture*)#1}>,void ()(md::ls::PendingDeletion const&,md::ls::RenderableAlbedoTexture*,md::ls::TextureHandleForType<Flyover::NightTexture>*,md::ls::TextureHandleForType<Flyover::DiffuseTexture>*,md::ls::UniqueMaterialAlbedoTexture*,md::ls::UniqueMaterialEmissiveTexture*,md::ls::UniqueMaterialDiffuseTexture*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A1A7E0;
  a2[1] = v2;
  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls19StyleConstantHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleConstantHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleConstantHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::StyleConstantHandle>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleConstantHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleConstantHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::StyleConstantHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1A758;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::StyleConstantHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::StyleConstantHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A1A778;
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

void ecs2::storage<ecs2::Entity,md::ls::StyleConstantHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::StyleConstantHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::StyleConstantHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1A758;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::StyleConstantHandle,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls36StyleRouteLineMaskConstantDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleRouteLineMaskConstantDataHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleRouteLineMaskConstantDataHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::StyleRouteLineMaskConstantDataHandle>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleRouteLineMaskConstantDataHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleRouteLineMaskConstantDataHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::StyleRouteLineMaskConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1A6D0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::StyleRouteLineMaskConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::StyleRouteLineMaskConstantDataHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A1A6F0;
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

void ecs2::storage<ecs2::Entity,md::ls::StyleRouteLineMaskConstantDataHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::StyleRouteLineMaskConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::StyleRouteLineMaskConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1A6D0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::StyleRouteLineMaskConstantDataHandle,64ul>::~storage(a1);
}

void std::__function::__func<std::function<void ()(md::ls::PendingDeletion const&,md::ls::PositionScaleInfoConstantDataHandle,md::ls::StyleRouteLineMaskConstantDataHandle,md::ls::StyleConstantHandle,md::ls::LandCoverSettingsConstantDataHandle,md::ls::StyleGroundOcclusionConstantDataHandle,md::ls::NormalsHandle,md::ls::UVsHandle,md::ls::ElevationHandle,md::ls::InstanceTransformHandle,md::ls::StyleRouteLineMaskDataKeyHandle,md::ls::ColorCorrectionDataKeyHandle,md::ls::NeedsClimateTint *)> md::ita::disconnect_components<md::VKMRenderResourcesStore,md::ls::PositionScaleInfoConstantDataHandle,md::ls::StyleRouteLineMaskConstantDataHandle,md::ls::StyleConstantHandle,md::ls::LandCoverSettingsConstantDataHandle,md::ls::StyleGroundOcclusionConstantDataHandle,md::ls::NormalsHandle,md::ls::UVsHandle,md::ls::ElevationHandle,md::ls::InstanceTransformHandle,md::ls::StyleRouteLineMaskDataKeyHandle,md::ls::ColorCorrectionDataKeyHandle,md::ls::NeedsClimateTint>(md::VKMRenderResourcesStore *)::{lambda(md::ls::PendingDeletion const&,md::ls::PositionScaleInfoConstantDataHandle*,md::ls::StyleRouteLineMaskConstantDataHandle*,md::ls::StyleConstantHandle*,md::ls::LandCoverSettingsConstantDataHandle*,md::ls::StyleGroundOcclusionConstantDataHandle*,md::ls::NormalsHandle*,md::ls::UVsHandle*,md::ls::ElevationHandle*,md::ls::InstanceTransformHandle*,md::ls::StyleRouteLineMaskDataKeyHandle*,md::ls::ColorCorrectionDataKeyHandle*,md::ls::NeedsClimateTint*)#1},std::allocator<std::function<void ()(md::ls::PendingDeletion const&,md::ls::PositionScaleInfoConstantDataHandle,md::ls::StyleRouteLineMaskConstantDataHandle,md::ls::StyleConstantHandle,md::ls::LandCoverSettingsConstantDataHandle,md::ls::StyleGroundOcclusionConstantDataHandle,md::ls::NormalsHandle,md::ls::UVsHandle,md::ls::ElevationHandle,md::ls::InstanceTransformHandle,md::ls::StyleRouteLineMaskDataKeyHandle,md::ls::ColorCorrectionDataKeyHandle,md::ls::NeedsClimateTint *)> md::ita::disconnect_components<md::VKMRenderResourcesStore,md::ls::PositionScaleInfoConstantDataHandle,md::ls::StyleRouteLineMaskConstantDataHandle,md::ls::StyleConstantHandle,md::ls::LandCoverSettingsConstantDataHandle,md::ls::StyleGroundOcclusionConstantDataHandle,md::ls::NormalsHandle,md::ls::UVsHandle,md::ls::ElevationHandle,md::ls::InstanceTransformHandle,md::ls::StyleRouteLineMaskDataKeyHandle,md::ls::ColorCorrectionDataKeyHandle,md::ls::NeedsClimateTint>(md::VKMRenderResourcesStore *)::{lambda(md::ls::PendingDeletion const&,md::ls::PositionScaleInfoConstantDataHandle*,md::ls::StyleRouteLineMaskConstantDataHandle*,md::ls::StyleConstantHandle*,md::ls::LandCoverSettingsConstantDataHandle*,md::ls::StyleGroundOcclusionConstantDataHandle*,md::ls::NormalsHandle*,md::ls::UVsHandle*,md::ls::ElevationHandle*,md::ls::InstanceTransformHandle*,md::ls::StyleRouteLineMaskDataKeyHandle*,md::ls::ColorCorrectionDataKeyHandle*,md::ls::NeedsClimateTint*)#1}>,void ()(md::ls::PendingDeletion const&,md::ls::PositionScaleInfoConstantDataHandle*,md::ls::StyleRouteLineMaskConstantDataHandle*,md::ls::StyleConstantHandle*,md::ls::LandCoverSettingsConstantDataHandle*,md::ls::StyleGroundOcclusionConstantDataHandle*,md::ls::NormalsHandle*,md::ls::UVsHandle*,md::ls::ElevationHandle*,md::ls::InstanceTransformHandle*,md::ls::StyleRouteLineMaskDataKeyHandle*,md::ls::ColorCorrectionDataKeyHandle*,md::ls::NeedsClimateTint*)>::operator()(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t **a4, unint64_t **a5, unint64_t **a6, unint64_t **a7, unint64_t **a8, unint64_t **a9, unint64_t **a10, unint64_t **a11, unint64_t **a12, unint64_t **a13, unint64_t **a14)
{
  v14 = *a3;
  v15 = *a4;
  v16 = *a5;
  v17 = *a6;
  v18 = *a7;
  v19 = *a8;
  v20 = *a9;
  v21 = *a10;
  v22 = *a11;
  v23 = *a12;
  v73 = *a13;
  v74 = *a14;
  v24 = *(a1 + 8);
  if (*a3)
  {
    if ((*(v14 + 8) & 1) == 0)
    {
      v25 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v24 + 1197, *v14);
      if (v25 != v24[1202])
      {
        v26 = (*(v24[1204] + ((((v25 - v24[1201]) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (((v25 - v24[1201]) >> 3) & 0x3F));
        v27 = v26[1];
        if (!v27 || (v28 = v27 - 1, (v26[1] = v28) == 0))
        {
          *v26 = 0;
        }
      }
    }
  }

  if (v15)
  {
    v29 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v24 + 339, *v15);
    if (v29 != v24[344])
    {
      v30 = (*(v24[346] + ((((v29 - v24[343]) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (((v29 - v24[343]) >> 3) & 0x3F));
      v31 = v30[1];
      if (!v31 || (v32 = v31 - 1, (v30[1] = v32) == 0))
      {
        *v30 = 0;
      }
    }
  }

  if (v16)
  {
    v33 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v24 + 123, *v16);
    if (v33 != v24[128])
    {
      v34 = (*(v24[130] + ((((v33 - v24[127]) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (((v33 - v24[127]) >> 3) & 0x3F));
      v35 = v34[1];
      if (!v35 || (v36 = v35 - 1, (v34[1] = v36) == 0))
      {
        *v34 = 0;
      }
    }
  }

  if (v17)
  {
    v37 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v24 + 771, *v17);
    if (v37 != v24[776])
    {
      v38 = (*(v24[778] + ((((v37 - v24[775]) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (((v37 - v24[775]) >> 3) & 0x3F));
      v39 = v38[1];
      if (!v39 || (v40 = v39 - 1, (v38[1] = v40) == 0))
      {
        *v38 = 0;
      }
    }
  }

  if (v18)
  {
    v41 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v24 + 1393, *v18);
    if (v41 != v24[1398])
    {
      v42 = (*(v24[1400] + ((((v41 - v24[1397]) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (((v41 - v24[1397]) >> 3) & 0x3F));
      v43 = v42[1];
      if (!v43 || (v44 = v43 - 1, (v42[1] = v44) == 0))
      {
        *v42 = 0;
      }
    }
  }

  if (v19)
  {
    v45 = *v19;
    v75 = v45;
    ecs2::group_storage<geo::handle<md::BaseMapTileDataRenderableItem>,md::Counter,md::BaseMapTileDataRenderableStorage>::erase(v24 + 1748, &v75);
    util::id_pool<geo::handle<md::AssociationItem>>::push((v24 + 1768), v45);
  }

  if (v20)
  {
    v75 = *v20;
    v46 = v75;
    ecs2::group_storage<geo::handle<md::BaseMapTileDataRenderableItem>,md::Counter,md::BaseMapTileDataRenderableStorage>::erase(v24 + 1748, &v75);
    util::id_pool<geo::handle<md::AssociationItem>>::push((v24 + 1768), v46);
  }

  if (v21)
  {
    v75 = *v21;
    v47 = v75;
    ecs2::group_storage<geo::handle<md::BaseMapTileDataRenderableItem>,md::Counter,md::BaseMapTileDataRenderableStorage>::erase(v24 + 1748, &v75);
    util::id_pool<geo::handle<md::AssociationItem>>::push((v24 + 1768), v47);
  }

  if (v22)
  {
    v75 = *v22;
    v48 = v75;
    ecs2::group_storage<geo::handle<md::BaseMapTileDataRenderableItem>,md::Counter,md::BaseMapTileDataRenderableStorage>::erase(v24 + 1748, &v75);
    util::id_pool<geo::handle<md::AssociationItem>>::push((v24 + 1768), v48);
  }

  if (v23)
  {
    v49 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v24 + 393, *v23);
    if (v49 != v24[398])
    {
      v50 = (*(v24[400] + ((((v49 - v24[397]) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (((v49 - v24[397]) >> 3) & 0x3F));
      v51 = v50[1];
      if (!v51 || (v52 = v51 - 1, (v50[1] = v52) == 0))
      {
        *v50 = 0;
      }
    }
  }

  if (v73)
  {
    v53 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v24 + 717, *v73);
    if (v53 != v24[722])
    {
      v54 = (*(v24[724] + ((((v53 - v24[721]) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (((v53 - v24[721]) >> 3) & 0x3F));
      v55 = v54[1];
      if (!v55 || (v56 = v55 - 1, (v54[1] = v56) == 0))
      {
        *v54 = 0;
      }
    }
  }

  if (v74)
  {
    v57 = v24[1743];
    if (v57)
    {
      v58 = *v74;
      v59 = vcnt_s8(v57);
      v59.i16[0] = vaddlv_u8(v59);
      if (v59.u32[0] > 1uLL)
      {
        v60 = *v74;
        if (v58 >= *&v57)
        {
          v60 = v58 % *&v57;
        }
      }

      else
      {
        v60 = (*&v57 - 1) & v58;
      }

      v61 = v24[1742];
      v62 = *(v61 + 8 * v60);
      if (v62)
      {
        v63 = *v62;
        if (*v62)
        {
          v64 = *&v57 - 1;
          do
          {
            v65 = v63[1];
            if (v65 == v58)
            {
              if (v63[2] == v58)
              {
                v66 = v63[1];
                if (v59.u32[0] > 1uLL)
                {
                  if (v66 >= *&v57)
                  {
                    v66 %= *&v57;
                  }
                }

                else
                {
                  v66 &= v64;
                }

                v67 = *(v61 + 8 * v66);
                do
                {
                  v68 = v67;
                  v67 = *v67;
                }

                while (v67 != v63);
                if (v68 == v24 + 1744)
                {
                  goto LABEL_81;
                }

                v69 = v68[1];
                if (v59.u32[0] > 1uLL)
                {
                  if (v69 >= *&v57)
                  {
                    v69 %= *&v57;
                  }
                }

                else
                {
                  v69 &= v64;
                }

                if (v69 != v66)
                {
LABEL_81:
                  if (!*v63)
                  {
                    goto LABEL_82;
                  }

                  v70 = *(*v63 + 8);
                  if (v59.u32[0] > 1uLL)
                  {
                    if (v70 >= *&v57)
                    {
                      v70 %= *&v57;
                    }
                  }

                  else
                  {
                    v70 &= v64;
                  }

                  if (v70 != v66)
                  {
LABEL_82:
                    *(v61 + 8 * v66) = 0;
                  }
                }

                v71 = *v63;
                if (*v63)
                {
                  v72 = *(v71 + 8);
                  if (v59.u32[0] > 1uLL)
                  {
                    if (v72 >= *&v57)
                    {
                      v72 %= *&v57;
                    }
                  }

                  else
                  {
                    v72 &= v64;
                  }

                  if (v72 != v66)
                  {
                    *(v24[1742] + 8 * v72) = v68;
                    v71 = *v63;
                  }
                }

                *v68 = v71;
                *v63 = 0;
                --v24[1745];

                operator delete(v63);
                return;
              }
            }

            else
            {
              if (v59.u32[0] > 1uLL)
              {
                if (v65 >= *&v57)
                {
                  v65 %= *&v57;
                }
              }

              else
              {
                v65 &= v64;
              }

              if (v65 != v60)
              {
                return;
              }
            }

            v63 = *v63;
          }

          while (v63);
        }
      }
    }
  }
}

uint64_t std::__function::__func<std::function<void ()(md::ls::PendingDeletion const&,md::ls::PositionScaleInfoConstantDataHandle,md::ls::StyleRouteLineMaskConstantDataHandle,md::ls::StyleConstantHandle,md::ls::LandCoverSettingsConstantDataHandle,md::ls::StyleGroundOcclusionConstantDataHandle,md::ls::NormalsHandle,md::ls::UVsHandle,md::ls::ElevationHandle,md::ls::InstanceTransformHandle,md::ls::StyleRouteLineMaskDataKeyHandle,md::ls::ColorCorrectionDataKeyHandle,md::ls::NeedsClimateTint *)> md::ita::disconnect_components<md::VKMRenderResourcesStore,md::ls::PositionScaleInfoConstantDataHandle,md::ls::StyleRouteLineMaskConstantDataHandle,md::ls::StyleConstantHandle,md::ls::LandCoverSettingsConstantDataHandle,md::ls::StyleGroundOcclusionConstantDataHandle,md::ls::NormalsHandle,md::ls::UVsHandle,md::ls::ElevationHandle,md::ls::InstanceTransformHandle,md::ls::StyleRouteLineMaskDataKeyHandle,md::ls::ColorCorrectionDataKeyHandle,md::ls::NeedsClimateTint>(md::VKMRenderResourcesStore *)::{lambda(md::ls::PendingDeletion const&,md::ls::PositionScaleInfoConstantDataHandle*,md::ls::StyleRouteLineMaskConstantDataHandle*,md::ls::StyleConstantHandle*,md::ls::LandCoverSettingsConstantDataHandle*,md::ls::StyleGroundOcclusionConstantDataHandle*,md::ls::NormalsHandle*,md::ls::UVsHandle*,md::ls::ElevationHandle*,md::ls::InstanceTransformHandle*,md::ls::StyleRouteLineMaskDataKeyHandle*,md::ls::ColorCorrectionDataKeyHandle*,md::ls::NeedsClimateTint*)#1},std::allocator<std::function<void ()(md::ls::PendingDeletion const&,md::ls::PositionScaleInfoConstantDataHandle,md::ls::StyleRouteLineMaskConstantDataHandle,md::ls::StyleConstantHandle,md::ls::LandCoverSettingsConstantDataHandle,md::ls::StyleGroundOcclusionConstantDataHandle,md::ls::NormalsHandle,md::ls::UVsHandle,md::ls::ElevationHandle,md::ls::InstanceTransformHandle,md::ls::StyleRouteLineMaskDataKeyHandle,md::ls::ColorCorrectionDataKeyHandle,md::ls::NeedsClimateTint *)> md::ita::disconnect_components<md::VKMRenderResourcesStore,md::ls::PositionScaleInfoConstantDataHandle,md::ls::StyleRouteLineMaskConstantDataHandle,md::ls::StyleConstantHandle,md::ls::LandCoverSettingsConstantDataHandle,md::ls::StyleGroundOcclusionConstantDataHandle,md::ls::NormalsHandle,md::ls::UVsHandle,md::ls::ElevationHandle,md::ls::InstanceTransformHandle,md::ls::StyleRouteLineMaskDataKeyHandle,md::ls::ColorCorrectionDataKeyHandle,md::ls::NeedsClimateTint>(md::VKMRenderResourcesStore *)::{lambda(md::ls::PendingDeletion const&,md::ls::PositionScaleInfoConstantDataHandle*,md::ls::StyleRouteLineMaskConstantDataHandle*,md::ls::StyleConstantHandle*,md::ls::LandCoverSettingsConstantDataHandle*,md::ls::StyleGroundOcclusionConstantDataHandle*,md::ls::NormalsHandle*,md::ls::UVsHandle*,md::ls::ElevationHandle*,md::ls::InstanceTransformHandle*,md::ls::StyleRouteLineMaskDataKeyHandle*,md::ls::ColorCorrectionDataKeyHandle*,md::ls::NeedsClimateTint*)#1}>,void ()(md::ls::PendingDeletion const&,md::ls::PositionScaleInfoConstantDataHandle*,md::ls::StyleRouteLineMaskConstantDataHandle*,md::ls::StyleConstantHandle*,md::ls::LandCoverSettingsConstantDataHandle*,md::ls::StyleGroundOcclusionConstantDataHandle*,md::ls::NormalsHandle*,md::ls::UVsHandle*,md::ls::ElevationHandle*,md::ls::InstanceTransformHandle*,md::ls::StyleRouteLineMaskDataKeyHandle*,md::ls::ColorCorrectionDataKeyHandle*,md::ls::NeedsClimateTint*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A1A688;
  a2[1] = v2;
  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls26UniqueMaterialZIndexHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialZIndexHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialZIndexHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueMaterialZIndexHandle>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 24 * (v13 & 0x3F);
        v18 = *(v17 + 16);
        v19 = *v17;
        v20 = *(v16 + 16);
        *v17 = *v16;
        *(v17 + 16) = v20;
        *v16 = v19;
        *(v16 + 16) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialZIndexHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialZIndexHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialZIndexHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41228;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialZIndexHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialZIndexHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A41248;
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

void ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialZIndexHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialZIndexHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialZIndexHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41228;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialZIndexHandle,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls37UniqueMaterialVisibilityOptionsHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialVisibilityOptionsHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialVisibilityOptionsHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueMaterialVisibilityOptionsHandle>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 16 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 16 * (v13 & 0x3F);
        v18 = *v17;
        LOBYTE(v15) = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v15;
        *v16 = v18;
        *(v16 + 8) = BYTE8(v18);
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialVisibilityOptionsHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialVisibilityOptionsHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialVisibilityOptionsHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41700;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialVisibilityOptionsHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialVisibilityOptionsHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A41720;
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

void ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialVisibilityOptionsHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialVisibilityOptionsHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialVisibilityOptionsHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41700;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialVisibilityOptionsHandle,64ul>::~storage(a1);
}

uint64_t std::__function::__func<std::function<void ()(md::ls::PendingDeletion const&,md::ls::RenderableMaterialData,md::ls::RampMaterialData,md::ls::ColorDataHandle,md::ls::UniqueMaterialVisibilityOptionsHandle,md::ls::UniqueMaterialZIndexHandle,md::ls::UniqueColorDataHandle,md::ls::UniqueGradientMaskDataHandle,md::ls::UniqueColorCorrectionDataHandle *)> md::ita::disconnect_components<md::MaterialResourceStore,md::ls::RenderableMaterialData,md::ls::RampMaterialData,md::ls::ColorDataHandle,md::ls::UniqueMaterialVisibilityOptionsHandle,md::ls::UniqueMaterialZIndexHandle,md::ls::UniqueColorDataHandle,md::ls::UniqueGradientMaskDataHandle,md::ls::UniqueColorCorrectionDataHandle>(md::MaterialResourceStore *)::{lambda(md::ls::PendingDeletion const&,md::ls::RenderableMaterialData*,md::ls::RampMaterialData*,md::ls::ColorDataHandle*,md::ls::UniqueMaterialVisibilityOptionsHandle*,md::ls::UniqueMaterialZIndexHandle*,md::ls::UniqueColorDataHandle*,md::ls::UniqueGradientMaskDataHandle*,md::ls::UniqueColorCorrectionDataHandle*)#1},std::allocator<std::function<void ()(md::ls::PendingDeletion const&,md::ls::RenderableMaterialData,md::ls::RampMaterialData,md::ls::ColorDataHandle,md::ls::UniqueMaterialVisibilityOptionsHandle,md::ls::UniqueMaterialZIndexHandle,md::ls::UniqueColorDataHandle,md::ls::UniqueGradientMaskDataHandle,md::ls::UniqueColorCorrectionDataHandle *)> md::ita::disconnect_components<md::MaterialResourceStore,md::ls::RenderableMaterialData,md::ls::RampMaterialData,md::ls::ColorDataHandle,md::ls::UniqueMaterialVisibilityOptionsHandle,md::ls::UniqueMaterialZIndexHandle,md::ls::UniqueColorDataHandle,md::ls::UniqueGradientMaskDataHandle,md::ls::UniqueColorCorrectionDataHandle>(md::MaterialResourceStore *)::{lambda(md::ls::PendingDeletion const&,md::ls::RenderableMaterialData*,md::ls::RampMaterialData*,md::ls::ColorDataHandle*,md::ls::UniqueMaterialVisibilityOptionsHandle*,md::ls::UniqueMaterialZIndexHandle*,md::ls::UniqueColorDataHandle*,md::ls::UniqueGradientMaskDataHandle*,md::ls::UniqueColorCorrectionDataHandle*)#1}>,void ()(md::ls::PendingDeletion const&,md::ls::RenderableMaterialData*,md::ls::RampMaterialData*,md::ls::ColorDataHandle*,md::ls::UniqueMaterialVisibilityOptionsHandle*,md::ls::UniqueMaterialZIndexHandle*,md::ls::UniqueColorDataHandle*,md::ls::UniqueGradientMaskDataHandle*,md::ls::UniqueColorCorrectionDataHandle*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A1A640;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<md::ita::DisconnectComponents::operator()(ecs2::Query<md::ls::RequestReset const&>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableMaterialData *,md::ls::RampMaterialData *,md::ls::ColorDataHandle *,md::ls::UniqueMaterialVisibilityOptionsHandle *,md::ls::UniqueMaterialZIndexHandle *,md::ls::UniqueColorDataHandle *,md::ls::UniqueGradientMaskDataHandle *,md::ls::UniqueColorCorrectionDataHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::UniqueMaterialData const&,md::ls::PlanarParametersCacheKeyHandle *,md::ls::UniqueStyleEmissiveDataKeyHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::PositionScaleInfoConstantDataHandle *,md::ls::StyleRouteLineMaskConstantDataHandle *,md::ls::StyleConstantHandle *,md::ls::LandCoverSettingsConstantDataHandle *,md::ls::StyleGroundOcclusionConstantDataHandle *,md::ls::NormalsHandle *,md::ls::UVsHandle *,md::ls::ElevationHandle *,md::ls::InstanceTransformHandle *,md::ls::StyleRouteLineMaskDataKeyHandle *,md::ls::ColorCorrectionDataKeyHandle *,md::ls::NeedsClimateTint *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableAlbedoTexture *,md::ls::TextureHandleForType<Flyover::NightTexture> *,md::ls::TextureHandleForType<Flyover::DiffuseTexture> *,md::ls::UniqueMaterialAlbedoTexture *,md::ls::UniqueMaterialEmissiveTexture *,md::ls::UniqueMaterialDiffuseTexture *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::TexturesToDisconnect &>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::ColorRampDataHandle &>,ecs2::Query<md::ls::RenderItemPendingDeletion const&,md::ls::PipelineState *,md::ls::PipelineSetup *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::StyleSSAODataKeyHandle &>)::$_1,std::allocator<md::ita::DisconnectComponents::operator()(ecs2::Query<md::ls::RequestReset const&>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableMaterialData *,md::ls::RampMaterialData *,md::ls::ColorDataHandle *,md::ls::UniqueMaterialVisibilityOptionsHandle *,md::ls::UniqueMaterialZIndexHandle *,md::ls::UniqueColorDataHandle *,md::ls::UniqueGradientMaskDataHandle *,md::ls::UniqueColorCorrectionDataHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::UniqueMaterialData const&,md::ls::PlanarParametersCacheKeyHandle *,md::ls::UniqueStyleEmissiveDataKeyHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::PositionScaleInfoConstantDataHandle *,md::ls::StyleRouteLineMaskConstantDataHandle *,md::ls::StyleConstantHandle *,md::ls::LandCoverSettingsConstantDataHandle *,md::ls::StyleGroundOcclusionConstantDataHandle *,md::ls::NormalsHandle *,md::ls::UVsHandle *,md::ls::ElevationHandle *,md::ls::InstanceTransformHandle *,md::ls::StyleRouteLineMaskDataKeyHandle *,md::ls::ColorCorrectionDataKeyHandle *,md::ls::NeedsClimateTint *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableAlbedoTexture *,md::ls::TextureHandleForType<Flyover::NightTexture> *,md::ls::TextureHandleForType<Flyover::DiffuseTexture> *,md::ls::UniqueMaterialAlbedoTexture *,md::ls::UniqueMaterialEmissiveTexture *,md::ls::UniqueMaterialDiffuseTexture *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::TexturesToDisconnect &>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::ColorRampDataHandle &>,ecs2::Query<md::ls::RenderItemPendingDeletion const&,md::ls::PipelineState *,md::ls::PipelineSetup *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::StyleSSAODataKeyHandle &>)::$_1>,void ()(md::ls::PendingDeletion const&,md::ls::UniqueMaterialData const&,md::ls::PlanarParametersCacheKeyHandle *,md::ls::UniqueStyleEmissiveDataKeyHandle *)>::operator()(uint64_t result, uint64_t a2, uint64_t a3, unint64_t **a4, unint64_t **a5)
{
  v5 = result;
  v6 = *a4;
  v7 = *a5;
  if (*a4)
  {
    v8 = **(result + 8);
    v9 = *v6;
    v10 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v8 + 609, *v6);
    if (v10 != v8[614])
    {
      v11 = (*(v8[616] + ((((v10 - v8[613]) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (((v10 - v8[613]) >> 3) & 0x3F));
      v12 = v11[1];
      if (!v12 || (v13 = v12 - 1, (v11[1] = v13) == 0))
      {
        *v11 = 0;
      }
    }

    result = md::getStorage<geo::handle<md::CachedKey<md::PlanarParametersCacheKey>>,md::CachedKey<md::PlanarParametersCacheKey>,md::CachedKey<md::PlanarParametersCacheKey>*>(v8 + 609, v9);
    if (result)
    {
      v14 = std::__hash_table<std::__hash_value_type<md::PlanarParametersCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::PlanarParameters>>>,std::__unordered_map_hasher<md::PlanarParametersCacheKey,std::__hash_value_type<md::PlanarParametersCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::PlanarParameters>>>,md::PlanarParametersCacheKeyHasher,std::equal_to<md::PlanarParametersCacheKey>,true>,std::__unordered_map_equal<md::PlanarParametersCacheKey,std::__hash_value_type<md::PlanarParametersCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::PlanarParameters>>>,std::equal_to<md::PlanarParametersCacheKey>,md::PlanarParametersCacheKeyHasher,true>,std::allocator<std::__hash_value_type<md::PlanarParametersCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::PlanarParameters>>>>>::find<md::PlanarParametersCacheKey>(v8 + 599, result);
      if (v14)
      {
        v15 = v14[4];
      }

      else
      {
        v15 = 0;
      }

      result = md::updateRetainedCounter(v8 + 555, v15);
    }
  }

  if (v7)
  {
    v16 = **(v5 + 8);
    v17 = *v7;
    md::updateRetainedCounter(v16 + 501, *v7);
    result = md::getStorage<geo::handle<md::ConstantDataResource<ggl::DaVinci::Style>>,md::ConstantDataStorage<ggl::DaVinci::Style>,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>(v16 + 501, v17);
    if (result)
    {
      v18 = std::__hash_table<std::__hash_value_type<md::StyleEmissiveColorCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>>,std::__unordered_map_hasher<md::StyleEmissiveColorCacheKey,std::__hash_value_type<md::StyleEmissiveColorCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>>,md::StyleEmissiveColorCacheKeyHasher,std::equal_to<md::StyleEmissiveColorCacheKey>,true>,std::__unordered_map_equal<md::StyleEmissiveColorCacheKey,std::__hash_value_type<md::StyleEmissiveColorCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>>,std::equal_to<md::StyleEmissiveColorCacheKey>,md::StyleEmissiveColorCacheKeyHasher,true>,std::allocator<std::__hash_value_type<md::StyleEmissiveColorCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>>>>::find<md::StyleEmissiveColorCacheKey>(v16 + 491, result);
      if (v18)
      {
        v19 = v18[5];
      }

      else
      {
        v19 = 0;
      }

      return md::updateRetainedCounter(v16 + 447, v19);
    }
  }

  return result;
}

uint64_t std::__function::__func<md::ita::DisconnectComponents::operator()(ecs2::Query<md::ls::RequestReset const&>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableMaterialData *,md::ls::RampMaterialData *,md::ls::ColorDataHandle *,md::ls::UniqueMaterialVisibilityOptionsHandle *,md::ls::UniqueMaterialZIndexHandle *,md::ls::UniqueColorDataHandle *,md::ls::UniqueGradientMaskDataHandle *,md::ls::UniqueColorCorrectionDataHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::UniqueMaterialData const&,md::ls::PlanarParametersCacheKeyHandle *,md::ls::UniqueStyleEmissiveDataKeyHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::PositionScaleInfoConstantDataHandle *,md::ls::StyleRouteLineMaskConstantDataHandle *,md::ls::StyleConstantHandle *,md::ls::LandCoverSettingsConstantDataHandle *,md::ls::StyleGroundOcclusionConstantDataHandle *,md::ls::NormalsHandle *,md::ls::UVsHandle *,md::ls::ElevationHandle *,md::ls::InstanceTransformHandle *,md::ls::StyleRouteLineMaskDataKeyHandle *,md::ls::ColorCorrectionDataKeyHandle *,md::ls::NeedsClimateTint *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableAlbedoTexture *,md::ls::TextureHandleForType<Flyover::NightTexture> *,md::ls::TextureHandleForType<Flyover::DiffuseTexture> *,md::ls::UniqueMaterialAlbedoTexture *,md::ls::UniqueMaterialEmissiveTexture *,md::ls::UniqueMaterialDiffuseTexture *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::TexturesToDisconnect &>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::ColorRampDataHandle &>,ecs2::Query<md::ls::RenderItemPendingDeletion const&,md::ls::PipelineState *,md::ls::PipelineSetup *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::StyleSSAODataKeyHandle &>)::$_1,std::allocator<md::ita::DisconnectComponents::operator()(ecs2::Query<md::ls::RequestReset const&>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableMaterialData *,md::ls::RampMaterialData *,md::ls::ColorDataHandle *,md::ls::UniqueMaterialVisibilityOptionsHandle *,md::ls::UniqueMaterialZIndexHandle *,md::ls::UniqueColorDataHandle *,md::ls::UniqueGradientMaskDataHandle *,md::ls::UniqueColorCorrectionDataHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::UniqueMaterialData const&,md::ls::PlanarParametersCacheKeyHandle *,md::ls::UniqueStyleEmissiveDataKeyHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::PositionScaleInfoConstantDataHandle *,md::ls::StyleRouteLineMaskConstantDataHandle *,md::ls::StyleConstantHandle *,md::ls::LandCoverSettingsConstantDataHandle *,md::ls::StyleGroundOcclusionConstantDataHandle *,md::ls::NormalsHandle *,md::ls::UVsHandle *,md::ls::ElevationHandle *,md::ls::InstanceTransformHandle *,md::ls::StyleRouteLineMaskDataKeyHandle *,md::ls::ColorCorrectionDataKeyHandle *,md::ls::NeedsClimateTint *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableAlbedoTexture *,md::ls::TextureHandleForType<Flyover::NightTexture> *,md::ls::TextureHandleForType<Flyover::DiffuseTexture> *,md::ls::UniqueMaterialAlbedoTexture *,md::ls::UniqueMaterialEmissiveTexture *,md::ls::UniqueMaterialDiffuseTexture *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::TexturesToDisconnect &>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::ColorRampDataHandle &>,ecs2::Query<md::ls::RenderItemPendingDeletion const&,md::ls::PipelineState *,md::ls::PipelineSetup *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::StyleSSAODataKeyHandle &>)::$_1>,void ()(md::ls::PendingDeletion const&,md::ls::UniqueMaterialData const&,md::ls::PlanarParametersCacheKeyHandle *,md::ls::UniqueStyleEmissiveDataKeyHandle *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A1A5F8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<md::ita::DisconnectComponents::operator()(ecs2::Query<md::ls::RequestReset const&>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableMaterialData *,md::ls::RampMaterialData *,md::ls::ColorDataHandle *,md::ls::UniqueMaterialVisibilityOptionsHandle *,md::ls::UniqueMaterialZIndexHandle *,md::ls::UniqueColorDataHandle *,md::ls::UniqueGradientMaskDataHandle *,md::ls::UniqueColorCorrectionDataHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::UniqueMaterialData const&,md::ls::PlanarParametersCacheKeyHandle *,md::ls::UniqueStyleEmissiveDataKeyHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::PositionScaleInfoConstantDataHandle *,md::ls::StyleRouteLineMaskConstantDataHandle *,md::ls::StyleConstantHandle *,md::ls::LandCoverSettingsConstantDataHandle *,md::ls::StyleGroundOcclusionConstantDataHandle *,md::ls::NormalsHandle *,md::ls::UVsHandle *,md::ls::ElevationHandle *,md::ls::InstanceTransformHandle *,md::ls::StyleRouteLineMaskDataKeyHandle *,md::ls::ColorCorrectionDataKeyHandle *,md::ls::NeedsClimateTint *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableAlbedoTexture *,md::ls::TextureHandleForType<Flyover::NightTexture> *,md::ls::TextureHandleForType<Flyover::DiffuseTexture> *,md::ls::UniqueMaterialAlbedoTexture *,md::ls::UniqueMaterialEmissiveTexture *,md::ls::UniqueMaterialDiffuseTexture *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::TexturesToDisconnect &>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::ColorRampDataHandle &>,ecs2::Query<md::ls::RenderItemPendingDeletion const&,md::ls::PipelineState *,md::ls::PipelineSetup *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::StyleSSAODataKeyHandle &>)::$_0,std::allocator<md::ita::DisconnectComponents::operator()(ecs2::Query<md::ls::RequestReset const&>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableMaterialData *,md::ls::RampMaterialData *,md::ls::ColorDataHandle *,md::ls::UniqueMaterialVisibilityOptionsHandle *,md::ls::UniqueMaterialZIndexHandle *,md::ls::UniqueColorDataHandle *,md::ls::UniqueGradientMaskDataHandle *,md::ls::UniqueColorCorrectionDataHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::UniqueMaterialData const&,md::ls::PlanarParametersCacheKeyHandle *,md::ls::UniqueStyleEmissiveDataKeyHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::PositionScaleInfoConstantDataHandle *,md::ls::StyleRouteLineMaskConstantDataHandle *,md::ls::StyleConstantHandle *,md::ls::LandCoverSettingsConstantDataHandle *,md::ls::StyleGroundOcclusionConstantDataHandle *,md::ls::NormalsHandle *,md::ls::UVsHandle *,md::ls::ElevationHandle *,md::ls::InstanceTransformHandle *,md::ls::StyleRouteLineMaskDataKeyHandle *,md::ls::ColorCorrectionDataKeyHandle *,md::ls::NeedsClimateTint *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableAlbedoTexture *,md::ls::TextureHandleForType<Flyover::NightTexture> *,md::ls::TextureHandleForType<Flyover::DiffuseTexture> *,md::ls::UniqueMaterialAlbedoTexture *,md::ls::UniqueMaterialEmissiveTexture *,md::ls::UniqueMaterialDiffuseTexture *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::TexturesToDisconnect &>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::ColorRampDataHandle &>,ecs2::Query<md::ls::RenderItemPendingDeletion const&,md::ls::PipelineState *,md::ls::PipelineSetup *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::StyleSSAODataKeyHandle &>)::$_0>,void ()(md::ls::RequestReset const&)>::operator()(ecs2::ExecutionTaskContext *a1)
{
  v1 = *(a1 + 1);
  v2 = ecs2::ExecutionTaskContext::currentEntity(a1);
  v3 = *v1;

  return ecs2::ExecutionTaskContext::destroyEntity(v3, v2);
}

uint64_t std::__function::__func<md::ita::DisconnectComponents::operator()(ecs2::Query<md::ls::RequestReset const&>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableMaterialData *,md::ls::RampMaterialData *,md::ls::ColorDataHandle *,md::ls::UniqueMaterialVisibilityOptionsHandle *,md::ls::UniqueMaterialZIndexHandle *,md::ls::UniqueColorDataHandle *,md::ls::UniqueGradientMaskDataHandle *,md::ls::UniqueColorCorrectionDataHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::UniqueMaterialData const&,md::ls::PlanarParametersCacheKeyHandle *,md::ls::UniqueStyleEmissiveDataKeyHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::PositionScaleInfoConstantDataHandle *,md::ls::StyleRouteLineMaskConstantDataHandle *,md::ls::StyleConstantHandle *,md::ls::LandCoverSettingsConstantDataHandle *,md::ls::StyleGroundOcclusionConstantDataHandle *,md::ls::NormalsHandle *,md::ls::UVsHandle *,md::ls::ElevationHandle *,md::ls::InstanceTransformHandle *,md::ls::StyleRouteLineMaskDataKeyHandle *,md::ls::ColorCorrectionDataKeyHandle *,md::ls::NeedsClimateTint *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableAlbedoTexture *,md::ls::TextureHandleForType<Flyover::NightTexture> *,md::ls::TextureHandleForType<Flyover::DiffuseTexture> *,md::ls::UniqueMaterialAlbedoTexture *,md::ls::UniqueMaterialEmissiveTexture *,md::ls::UniqueMaterialDiffuseTexture *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::TexturesToDisconnect &>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::ColorRampDataHandle &>,ecs2::Query<md::ls::RenderItemPendingDeletion const&,md::ls::PipelineState *,md::ls::PipelineSetup *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::StyleSSAODataKeyHandle &>)::$_0,std::allocator<md::ita::DisconnectComponents::operator()(ecs2::Query<md::ls::RequestReset const&>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableMaterialData *,md::ls::RampMaterialData *,md::ls::ColorDataHandle *,md::ls::UniqueMaterialVisibilityOptionsHandle *,md::ls::UniqueMaterialZIndexHandle *,md::ls::UniqueColorDataHandle *,md::ls::UniqueGradientMaskDataHandle *,md::ls::UniqueColorCorrectionDataHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::UniqueMaterialData const&,md::ls::PlanarParametersCacheKeyHandle *,md::ls::UniqueStyleEmissiveDataKeyHandle *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::PositionScaleInfoConstantDataHandle *,md::ls::StyleRouteLineMaskConstantDataHandle *,md::ls::StyleConstantHandle *,md::ls::LandCoverSettingsConstantDataHandle *,md::ls::StyleGroundOcclusionConstantDataHandle *,md::ls::NormalsHandle *,md::ls::UVsHandle *,md::ls::ElevationHandle *,md::ls::InstanceTransformHandle *,md::ls::StyleRouteLineMaskDataKeyHandle *,md::ls::ColorCorrectionDataKeyHandle *,md::ls::NeedsClimateTint *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::RenderableAlbedoTexture *,md::ls::TextureHandleForType<Flyover::NightTexture> *,md::ls::TextureHandleForType<Flyover::DiffuseTexture> *,md::ls::UniqueMaterialAlbedoTexture *,md::ls::UniqueMaterialEmissiveTexture *,md::ls::UniqueMaterialDiffuseTexture *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::TexturesToDisconnect &>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::ColorRampDataHandle &>,ecs2::Query<md::ls::RenderItemPendingDeletion const&,md::ls::PipelineState *,md::ls::PipelineSetup *>,ecs2::Query<md::ls::PendingDeletion const&,md::ls::StyleSSAODataKeyHandle &>)::$_0>,void ()(md::ls::RequestReset const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A1A5B0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<md::ita::DeletePendingDeletion::operator()(ecs2::Query<md::ls::PendingDeletion const&>,ecs2::Query<md::ls::RenderItemPendingDeletion const&>)::$_1,std::allocator<md::ita::DeletePendingDeletion::operator()(ecs2::Query<md::ls::PendingDeletion const&>,ecs2::Query<md::ls::RenderItemPendingDeletion const&>)::$_1>,void ()(md::ls::RenderItemPendingDeletion const&)>::operator()(ecs2::ExecutionTaskContext *a1)
{
  v1 = *(a1 + 1);
  v2 = ecs2::ExecutionTaskContext::currentEntity(a1);
  v3 = *v1;

  return ecs2::ExecutionTaskContext::destroyEntity(v3, v2);
}

uint64_t std::__function::__func<md::ita::DeletePendingDeletion::operator()(ecs2::Query<md::ls::PendingDeletion const&>,ecs2::Query<md::ls::RenderItemPendingDeletion const&>)::$_1,std::allocator<md::ita::DeletePendingDeletion::operator()(ecs2::Query<md::ls::PendingDeletion const&>,ecs2::Query<md::ls::RenderItemPendingDeletion const&>)::$_1>,void ()(md::ls::RenderItemPendingDeletion const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A1AB90;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<md::ita::DeletePendingDeletion::operator()(ecs2::Query<md::ls::PendingDeletion const&>,ecs2::Query<md::ls::RenderItemPendingDeletion const&>)::$_0,std::allocator<md::ita::DeletePendingDeletion::operator()(ecs2::Query<md::ls::PendingDeletion const&>,ecs2::Query<md::ls::RenderItemPendingDeletion const&>)::$_0>,void ()(md::ls::PendingDeletion const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A1AB48;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<md::ita::UpdateResourcesAfterRebuild::operator()(ecs2::Query<md::ls::SupportsRebuildingRenderables const&,md::ls::EnteringView const&,md::ls::AssociationTileHandle const&>,ecs2::Query<md::ls::UniqueMaterialData &>)::$_1,std::allocator<md::ita::UpdateResourcesAfterRebuild::operator()(ecs2::Query<md::ls::SupportsRebuildingRenderables const&,md::ls::EnteringView const&,md::ls::AssociationTileHandle const&>,ecs2::Query<md::ls::UniqueMaterialData &>)::$_1>,void ()(md::ls::UniqueMaterialData &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A1ACD0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<md::ita::UpdateResourcesAfterRebuild::operator()(ecs2::Query<md::ls::SupportsRebuildingRenderables const&,md::ls::EnteringView const&,md::ls::AssociationTileHandle const&>,ecs2::Query<md::ls::UniqueMaterialData &>)::$_0,std::allocator<md::ita::UpdateResourcesAfterRebuild::operator()(ecs2::Query<md::ls::SupportsRebuildingRenderables const&,md::ls::EnteringView const&,md::ls::AssociationTileHandle const&>,ecs2::Query<md::ls::UniqueMaterialData &>)::$_0>,void ()(md::ls::SupportsRebuildingRenderables const&,md::ls::EnteringView const&,md::ls::AssociationTileHandle const&)>::operator()(uint64_t result, uint64_t a2, _BYTE *a3, unint64_t *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*a3 == 1)
  {
    v4 = *(result + 16);
    AssociationItemStorage = md::VKMRenderResourcesStore::getAssociationItemStorage(**(result + 8), *a4, 1);
    v6 = AssociationItemStorage[4];
    v7 = AssociationItemStorage[5];
    while (v6 != v7)
    {
      v8 = *v6++;
      ecs2::addComponent<md::ls::PendingDeletion>(*v4, v8);
    }

    v9 = AssociationItemStorage[1];
    for (i = AssociationItemStorage[2]; v9 != i; ++v9)
    {
      v11 = *v9 << 32;
      v15[0] = &unk_1F2A1AC88;
      v15[1] = v11;
      v15[3] = v15;
      v16[0] = &unk_1F2A1AC88;
      v16[3] = v16;
      v16[1] = v11;
      v17 = 0;
      ecs2::Runtime::queueCommand();
      if (v17 != -1)
      {
        (off_1F2A198D8[v17])(&v14, v16);
      }

      v17 = -1;
      std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v15);
    }

    md::VKMRenderResourcesStore::clearRenderItemGroup(**(result + 8), a4, 0);
    AssociationItemStorage[2] = AssociationItemStorage[1];
    AssociationItemStorage[5] = AssociationItemStorage[4];
  }
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RenderItemPendingDeletion>(ecs2::Entity,md::ls::RenderItemPendingDeletion &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A1AC88;
  a2[1] = *(result + 8);
  return result;
}

__n128 std::__function::__func<md::ita::UpdateResourcesAfterRebuild::operator()(ecs2::Query<md::ls::SupportsRebuildingRenderables const&,md::ls::EnteringView const&,md::ls::AssociationTileHandle const&>,ecs2::Query<md::ls::UniqueMaterialData &>)::$_0,std::allocator<md::ita::UpdateResourcesAfterRebuild::operator()(ecs2::Query<md::ls::SupportsRebuildingRenderables const&,md::ls::EnteringView const&,md::ls::AssociationTileHandle const&>,ecs2::Query<md::ls::UniqueMaterialData &>)::$_0>,void ()(md::ls::SupportsRebuildingRenderables const&,md::ls::EnteringView const&,md::ls::AssociationTileHandle const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A1AC40;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void _registerStateCaptureCallbacks_17940()
{
  if (_registerStateCaptureCallbacks_onceToken_17941 != -1)
  {
    dispatch_once(&_registerStateCaptureCallbacks_onceToken_17941, &__block_literal_global_4_17942);
  }
}

void ggl::StandardPostchain::CompositePipelineSetup::~CompositePipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::StandardPostchain::DepthSplitPipelineSetup::~DepthSplitPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::StandardPostchain::DownsampleCoCPipelineSetup::~DownsampleCoCPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::StandardPostchain::FGBlurPipelineSetup::~FGBlurPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::StandardPostchain::BGBlurPipelineSetup::~BGBlurPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::StandardPostchain::TentBlurPipelineSetup::~TentBlurPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::StandardPostchain::DownsampleDepthPipelineSetup::~DownsampleDepthPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::StandardPostchain::SSAOBlurPipelineSetup::~SSAOBlurPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::StandardPostchain::SSAOUpsamplePipelineSetup::~SSAOUpsamplePipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::TrafficBase::BaseMesh::~BaseMesh(ggl::TrafficBase::BaseMesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void ggl::TrafficBase::BaseMesh::~BaseMesh(ggl::TrafficBase::BaseMesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::MeshTyped<ggl::TrafficBase::DefaultVbo>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::TrafficBase::DefaultVbo>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t **ggl::TrafficBase::BaseMesh::BaseMesh(uint64_t **a1, uint64_t *a2, uint64_t *a3, uint64_t **a4)
{
  v15 = *MEMORY[0x1E69E9840];
  ggl::MeshTyped<ggl::TrafficBase::DefaultVbo>::typedReflection();
  a1[1] = a2;
  ggl::RenderDataHolder::RenderDataHolder((a1 + 2));
  a1[7] = &ggl::MeshTyped<ggl::TrafficBase::DefaultVbo>::typedReflection(void)::r;
  a1[8] = 0;
  a1[9] = 0;
  a1[10] = 0;
  a1[12] = 0;
  a1[13] = 0;
  a1[15] = 0;
  a1[17] = 0;
  a1[14] = (a1 + 15);
  *a1 = &unk_1F2A1BBB0;
  a1[2] = &unk_1F2A1BBD0;
  v8 = a3[1];
  v13 = *a3;
  v14 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::__assign_with_size[abi:nn200100]<std::shared_ptr<ggl::VertexData> const*,std::shared_ptr<ggl::VertexData> const*>(a1 + 8, &v13, &v15, 1uLL);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }

  v10 = *a4;
  v9 = a4[1];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = a1[13];
  a1[12] = v10;
  a1[13] = v9;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  *a1 = &unk_1F2A1BB70;
  a1[2] = &unk_1F2A1BB90;
  return a1;
}