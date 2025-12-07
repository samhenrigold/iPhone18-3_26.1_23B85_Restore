void md::DebugRenderLayer::renderTileData(void *a1, md::LayoutContext *a2, _BYTE *a3, void *a4, int a5, uint64_t a6, float32x2_t *a7)
{
  v10 = +[VKDebugSettings sharedSettings];
  [v10 daVinciMetaTileOpacity];
  v12 = v11;

  v114 = a4 + 81;
  v13 = a4[81];
  if (a5 == 51)
  {
    if (!v13)
    {
      v125 = 1065353216;
      v126 = 0;
      v127 = v12;
      md::DebugRenderLayer::renderSolidQuadTile(a1, a2, (a4 + 21), &v125, a6, a7, "");
    }
  }

  else if (!v13)
  {
    return;
  }

  v113 = a1 + 7;
  if (!std::__hash_table<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>>>::find<gdc::Registry *>(a1 + 7, v13))
  {
    if (!std::__hash_table<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>>>::find<gdc::Registry *>(a1 + 12, v13))
    {
      operator new();
    }

    v125 = (a4 + 81);
    std::__hash_table<std::__hash_value_type<std::shared_ptr<geo::codec::VectorTile>,std::shared_ptr<md::ModelTileDebugData>>,std::__unordered_map_hasher<std::shared_ptr<geo::codec::VectorTile>,std::__hash_value_type<std::shared_ptr<geo::codec::VectorTile>,std::shared_ptr<md::ModelTileDebugData>>,std::hash<std::shared_ptr<geo::codec::VectorTile>>,std::equal_to<std::shared_ptr<geo::codec::VectorTile>>,true>,std::__unordered_map_equal<std::shared_ptr<geo::codec::VectorTile>,std::__hash_value_type<std::shared_ptr<geo::codec::VectorTile>,std::shared_ptr<md::ModelTileDebugData>>,std::equal_to<std::shared_ptr<geo::codec::VectorTile>>,std::hash<std::shared_ptr<geo::codec::VectorTile>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<geo::codec::VectorTile>,std::shared_ptr<md::ModelTileDebugData>>>>::__emplace_unique_key_args<std::shared_ptr<geo::codec::VectorTile>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<geo::codec::VectorTile> const&>,std::tuple<>>(a1 + 12, v13, &v125);
    v14 = 0x9DDFEA08EB382D69 * ((8 * (*v114 & 0x1FFFFFFF) + 8) ^ HIDWORD(*v114));
    v15 = 0x9DDFEA08EB382D69 * (HIDWORD(*v114) ^ (v14 >> 47) ^ v14);
    v16 = 0x9DDFEA08EB382D69 * (v15 ^ (v15 >> 47));
    v17 = a1[8];
    if (v17)
    {
      v18 = vcnt_s8(v17);
      v18.i16[0] = vaddlv_u8(v18);
      if (v18.u32[0] > 1uLL)
      {
        v19 = 0x9DDFEA08EB382D69 * (v15 ^ (v15 >> 47));
        if (v16 >= *&v17)
        {
          v19 = v16 % *&v17;
        }
      }

      else
      {
        v19 = v16 & (*&v17 - 1);
      }

      v20 = *(*v113 + 8 * v19);
      if (v20)
      {
        for (i = *v20; i; i = *i)
        {
          v22 = i[1];
          if (v22 == v16)
          {
            if (i[2] == *v114)
            {
              goto LABEL_26;
            }
          }

          else
          {
            if (v18.u32[0] > 1uLL)
            {
              if (v22 >= *&v17)
              {
                v22 %= *&v17;
              }
            }

            else
            {
              v22 &= *&v17 - 1;
            }

            if (v22 != v19)
            {
              break;
            }
          }
        }
      }
    }

    operator new();
  }

LABEL_26:
  v125 = (a4 + 81);
  v23 = std::__hash_table<std::__hash_value_type<std::shared_ptr<geo::codec::VectorTile>,std::shared_ptr<md::ModelTileDebugData>>,std::__unordered_map_hasher<std::shared_ptr<geo::codec::VectorTile>,std::__hash_value_type<std::shared_ptr<geo::codec::VectorTile>,std::shared_ptr<md::ModelTileDebugData>>,std::hash<std::shared_ptr<geo::codec::VectorTile>>,std::equal_to<std::shared_ptr<geo::codec::VectorTile>>,true>,std::__unordered_map_equal<std::shared_ptr<geo::codec::VectorTile>,std::__hash_value_type<std::shared_ptr<geo::codec::VectorTile>,std::shared_ptr<md::ModelTileDebugData>>,std::equal_to<std::shared_ptr<geo::codec::VectorTile>>,std::hash<std::shared_ptr<geo::codec::VectorTile>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<geo::codec::VectorTile>,std::shared_ptr<md::ModelTileDebugData>>>>::__emplace_unique_key_args<std::shared_ptr<geo::codec::VectorTile>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<geo::codec::VectorTile> const&>,std::tuple<>>(v113, *v114, &v125)[4];
  v24 = *(a2 + 1);
  v25 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v24, 0x1AF456233693CD46uLL);
  if (v25 && (v26 = v25[5], *(v26 + 8) == 0x1AF456233693CD46))
  {
    v27 = *(v26 + 32);
  }

  else
  {
    v27 = 0;
  }

  v28 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v24, 0x3070CB6B3C7F21D3uLL);
  if (v28 && (v29 = v28[5], *(v29 + 8) == 0x3070CB6B3C7F21D3))
  {
    v30 = *(v29 + 32);
  }

  else
  {
    v30 = 0;
  }

  v31 = *(*v114 + 800);
  v32 = 0.0;
  if (v31 && *(v31 + 24))
  {
    gdc::Tiled::unitsPerMeter((a4 + 21));
    v32 = (1.0 / v33);
  }

  v34 = md::LayoutContext::cameraType(a2);
  v35 = gdc::ToCoordinateSystem(v34);
  md::GeometryLogic::tileMatrix(&v125, v35, (a4 + 21), v32, v36);
  v37 = 0;
  v38 = (v27 + 808);
  do
  {
    v39 = 0;
    v40 = &v125;
    do
    {
      v41 = 0;
      v42 = 0.0;
      v43 = v38;
      do
      {
        v44 = *v43;
        v43 += 4;
        v42 = v42 + *&v40[v41++] * v44;
      }

      while (v41 != 4);
      *&v119[4 * v39++ + v37] = v42;
      v40 += 4;
    }

    while (v39 != 4);
    ++v37;
    ++v38;
  }

  while (v37 != 4);
  v45 = 0;
  v46 = v119;
  do
  {
    v48 = *v46;
    v47 = *(v46 + 1);
    v46 += 4;
    *(&v121 + v45) = vcvt_hight_f32_f64(vcvt_f32_f64(v48), v47);
    v45 += 16;
  }

  while (v45 != 64);
  if (a3[2] == 1)
  {
    v49 = v23[16];
    if (v49 && *(**(v49 + 64) + 8) <= *(**(v49 + 64) + 48) - *(**(v49 + 64) + 40))
    {
      v50 = ggl::FragmentedPool<ggl::Debug::BasePipelineSetup>::pop(*(a1[6] + 112));
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v119, *(*(v50 + 136) + 16));
      v51 = v120;
      v52 = v122;
      *v120 = v121;
      v51[1] = v52;
      v53 = v124;
      v51[2] = v123;
      v51[3] = v53;
      ggl::BufferMemory::~BufferMemory(v119);
      md::GeometryContext::transformConstantData(v119, v30, a4 + 168, *(v27 + 3784), -1, 0.0, v32);
    }

    v54 = v23[17];
    if (v54 && *(**(v54 + 64) + 8) <= *(**(v54 + 64) + 48) - *(**(v54 + 64) + 40))
    {
      v55 = ggl::FragmentedPool<ggl::Debug::BasePipelineSetup>::pop(*(a1[6] + 112));
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v119, *(*(v55 + 136) + 16));
      v56 = v120;
      v57 = v122;
      *v120 = v121;
      v56[1] = v57;
      v58 = v124;
      v56[2] = v123;
      v56[3] = v58;
      ggl::BufferMemory::~BufferMemory(v119);
      md::GeometryContext::transformConstantData(v119, v30, a4 + 168, *(v27 + 3784), -1, 0.0, v32);
    }
  }

  if (a3[3] == 1)
  {
    v59 = v23[22];
    if (v59)
    {
      if (*(**(v59 + 64) + 8) <= *(**(v59 + 64) + 48) - *(**(v59 + 64) + 40))
      {
        v60 = ggl::FragmentedPool<ggl::Point::PipelineSetup>::pop(*(a1[6] + 136));
        ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v119, **(v60 + 136));
        v61 = v120;
        v62 = v122;
        *v120 = v121;
        v61[1] = v62;
        v63 = v124;
        v61[2] = v123;
        v61[3] = v63;
        ggl::BufferMemory::~BufferMemory(v119);
        ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v119, **(v60 + 136));
        v120[5] = xmmword_1B33B1150;
        ggl::BufferMemory::~BufferMemory(v119);
        md::GeometryContext::transformConstantData(v119, v30, a4 + 168, *(v27 + 3784), -1, 0.0, 0.0);
      }
    }
  }

  if ((a3[4] & 1) != 0 || (a3[8] & 1) != 0 || (a3[6] & 1) != 0 || a3[7] == 1)
  {
    v64 = v23[18];
    if (v64)
    {
      if (*(**(v64 + 64) + 8) <= *(**(v64 + 64) + 48) - *(**(v64 + 64) + 40))
      {
        v65 = ggl::FragmentedPool<ggl::Debug::BasePipelineSetup>::pop(*(a1[6] + 112));
        ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v119, *(*(v65 + 136) + 16));
        v66 = v120;
        v67 = v122;
        *v120 = v121;
        v66[1] = v67;
        v68 = v124;
        v66[2] = v123;
        v66[3] = v68;
        ggl::BufferMemory::~BufferMemory(v119);
        md::GeometryContext::transformConstantData(v119, v30, a4 + 168, *(v27 + 3784), -1, 0.0, 0.0);
      }
    }
  }

  if (a3[6] == 1)
  {
    v69 = v23[19];
    if (v69 && *(**(v69 + 64) + 8) <= *(**(v69 + 64) + 48) - *(**(v69 + 64) + 40))
    {
      v70 = ggl::FragmentedPool<ggl::Debug::BasePipelineSetup>::pop(*(a1[6] + 112));
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v119, *(*(v70 + 136) + 16));
      v71 = v120;
      v72 = v122;
      *v120 = v121;
      v71[1] = v72;
      v73 = v124;
      v71[2] = v123;
      v71[3] = v73;
      ggl::BufferMemory::~BufferMemory(v119);
      md::GeometryContext::transformConstantData(v119, v30, a4 + 168, *(v27 + 3784), -1, 0.0, 0.0);
    }

    v74 = v23[20];
    if (v74 && *(**(v74 + 64) + 8) <= *(**(v74 + 64) + 48) - *(**(v74 + 64) + 40))
    {
      v75 = ggl::FragmentedPool<ggl::Debug::BasePipelineSetup>::pop(*(a1[6] + 112));
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v119, *(*(v75 + 136) + 16));
      v76 = v120;
      v77 = v122;
      *v120 = v121;
      v76[1] = v77;
      v78 = v124;
      v76[2] = v123;
      v76[3] = v78;
      ggl::BufferMemory::~BufferMemory(v119);
      md::GeometryContext::transformConstantData(v119, v30, a4 + 168, *(v27 + 3784), -1, 0.0, 0.0);
    }
  }

  if (a3[9] == 1)
  {
    v79 = v23[23];
    if (v79)
    {
      if (*(**(v79 + 64) + 8) <= *(**(v79 + 64) + 48) - *(**(v79 + 64) + 40))
      {
        v80 = ggl::FragmentedPool<ggl::Point::PipelineSetup>::pop(*(a1[6] + 136));
        ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v119, **(v80 + 136));
        v81 = v120;
        v82 = v122;
        *v120 = v121;
        v81[1] = v82;
        v83 = v124;
        v81[2] = v123;
        v81[3] = v83;
        ggl::BufferMemory::~BufferMemory(v119);
        ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v119, **(v80 + 136));
        v120[5] = xmmword_1B33B1150;
        ggl::BufferMemory::~BufferMemory(v119);
        md::GeometryContext::transformConstantData(v119, v30, a4 + 168, *(v27 + 3784), -1, 0.0, 0.0);
      }
    }
  }

  if (a3[10] == 1)
  {
    v84 = v23[24];
    if (v84 && *(**(v84 + 64) + 8) <= *(**(v84 + 64) + 48) - *(**(v84 + 64) + 40))
    {
      v85 = ggl::FragmentedPool<ggl::Point::PipelineSetup>::pop(*(a1[6] + 136));
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v119, **(v85 + 136));
      v86 = v120;
      v87 = v122;
      *v120 = v121;
      v86[1] = v87;
      v88 = v124;
      v86[2] = v123;
      v86[3] = v88;
      ggl::BufferMemory::~BufferMemory(v119);
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v119, **(v85 + 136));
      v120[5] = xmmword_1B33B0720;
      ggl::BufferMemory::~BufferMemory(v119);
      md::GeometryContext::transformConstantData(v119, v30, a4 + 168, *(v27 + 3784), -1, 0.0, 0.0);
    }

    v89 = v23[26];
    if (v89 && *(**(v89 + 64) + 8) <= *(**(v89 + 64) + 48) - *(**(v89 + 64) + 40))
    {
      v90 = ggl::FragmentedPool<ggl::Point::PipelineSetup>::pop(*(a1[6] + 136));
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v119, **(v90 + 136));
      v91 = v120;
      v92 = v122;
      *v120 = v121;
      v91[1] = v92;
      v93 = v124;
      v91[2] = v123;
      v91[3] = v93;
      ggl::BufferMemory::~BufferMemory(v119);
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v119, **(v90 + 136));
      v120[5] = xmmword_1B33AFEE0;
      ggl::BufferMemory::~BufferMemory(v119);
      md::GeometryContext::transformConstantData(v119, v30, a4 + 168, *(v27 + 3784), -1, 0.0, 0.0);
    }

    v94 = v23[25];
    if (v94 && *(**(v94 + 64) + 8) <= *(**(v94 + 64) + 48) - *(**(v94 + 64) + 40))
    {
      v95 = ggl::FragmentedPool<ggl::Point::PipelineSetup>::pop(*(a1[6] + 136));
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v119, **(v95 + 136));
      v96 = v120;
      v97 = v122;
      *v120 = v121;
      v96[1] = v97;
      v98 = v124;
      v96[2] = v123;
      v96[3] = v98;
      ggl::BufferMemory::~BufferMemory(v119);
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v119, **(v95 + 136));
      v120[5] = xmmword_1B33B06F0;
      ggl::BufferMemory::~BufferMemory(v119);
      md::GeometryContext::transformConstantData(v119, v30, a4 + 168, *(v27 + 3784), -1, 0.0, 0.0);
    }
  }

  if (a3[11] == 1)
  {
    v99 = v23[21];
    if (v99)
    {
      if (*(**(v99 + 64) + 8) <= *(**(v99 + 64) + 48) - *(**(v99 + 64) + 40))
      {
        v100 = ggl::FragmentedPool<ggl::Debug::BasePipelineSetup>::pop(*(a1[6] + 112));
        ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v119, *(*(v100 + 136) + 16));
        v101 = v120;
        v102 = v122;
        *v120 = v121;
        v101[1] = v102;
        v103 = v124;
        v101[2] = v123;
        v101[3] = v103;
        ggl::BufferMemory::~BufferMemory(v119);
        md::GeometryContext::transformConstantData(v119, v30, a4 + 168, *(v27 + 3784), -1, 0.0, 0.0);
      }
    }
  }

  if (a3[12] == 1)
  {
    v104 = v23[27];
    if (v104)
    {
      if (*(**(v104 + 64) + 8) <= *(**(v104 + 64) + 48) - *(**(v104 + 64) + 40))
      {
        v105 = ggl::FragmentedPool<ggl::Point::PipelineSetup>::pop(*(a1[6] + 136));
        ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v119, **(v105 + 136));
        v106 = v120;
        v107 = v122;
        *v120 = v121;
        v106[1] = v107;
        v108 = v124;
        v106[2] = v123;
        v106[3] = v108;
        ggl::BufferMemory::~BufferMemory(v119);
        ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v119, **(v105 + 136));
        v120[5] = xmmword_1B33B0720;
        ggl::BufferMemory::~BufferMemory(v119);
        md::GeometryContext::transformConstantData(v119, v30, a4 + 168, *(v27 + 3784), -1, 0.0, 0.0);
      }
    }
  }

  if ((a3[1] & 1) != 0 || (*a3 & 1) != 0 || (a3[2] & 1) != 0 || (a3[3] & 1) != 0 || (a3[4] & 1) != 0 || (a3[8] & 1) != 0 || (a3[6] & 1) != 0 || (a3[7] & 1) != 0 || (a3[9] & 1) != 0 || (a3[10] & 1) != 0 || (a3[11] & 1) != 0 || (a3[14] & 1) != 0 || a3[5] == 1)
  {
    v109 = ggl::FragmentedPool<ggl::Debug::BasePipelineSetup>::pop(*(a1[6] + 112));
    ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v119, *(*(v109 + 136) + 16));
    v110 = v120;
    v111 = v122;
    *v120 = v121;
    v110[1] = v111;
    v112 = v124;
    v110[2] = v123;
    v110[3] = v112;
    ggl::BufferMemory::~BufferMemory(v119);
    md::GeometryContext::transformConstantData(v119, v30, a4 + 168, *(v27 + 3784), -1, 0.0, 0.0);
  }
}

uint64_t ggl::FragmentedPool<ggl::Point::PipelineSetup>::pop(void *a1)
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

  std::vector<ggl::Point::PipelineSetup *,geo::allocator_adapter<ggl::Point::PipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100]((a1 + 4), &v9);
  v10 = v3;
  v5 = a1[15];
  if (v5)
  {
    (*(*v5 + 48))(v5, &v10);
    return v3;
  }

LABEL_7:
  v7 = std::__throw_bad_function_call[abi:nn200100]();
  return md::TrafficDynamicTileResource::QuadTileFromResourceKey(v7, v8);
}

uint64_t md::TrafficDynamicTileResource::QuadTileFromResourceKey(md::TrafficDynamicTileResource *this, const gdc::ResourceKey *a2)
{
  Int32 = gdc::ResourceKey::getInt32(a2, 2u);
  v5 = gdc::ResourceKey::getInt32(a2, 1u);
  result = gdc::ResourceKey::getInt32(a2, 0);
  *this = -1;
  *(this + 1) = Int32;
  *(this + 1) = v5;
  *(this + 2) = result;
  *(this + 2) = 0;
  *(this + 24) = 1;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::Point::PipelineSetup *,geo::allocator_adapter<ggl::Point::PipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Point::PipelineSetup *>(v11, v10);
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
    result = std::__split_buffer<ggl::Point::PipelineSetup *,geo::allocator_adapter<ggl::Point::PipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Point::PipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Point::PipelineSetup *>(uint64_t a1, void *a2)
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

void *std::__hash_table<std::__hash_value_type<std::shared_ptr<geo::codec::VectorTile>,std::shared_ptr<md::ModelTileDebugData>>,std::__unordered_map_hasher<std::shared_ptr<geo::codec::VectorTile>,std::__hash_value_type<std::shared_ptr<geo::codec::VectorTile>,std::shared_ptr<md::ModelTileDebugData>>,std::hash<std::shared_ptr<geo::codec::VectorTile>>,std::equal_to<std::shared_ptr<geo::codec::VectorTile>>,true>,std::__unordered_map_equal<std::shared_ptr<geo::codec::VectorTile>,std::__hash_value_type<std::shared_ptr<geo::codec::VectorTile>,std::shared_ptr<md::ModelTileDebugData>>,std::equal_to<std::shared_ptr<geo::codec::VectorTile>>,std::hash<std::shared_ptr<geo::codec::VectorTile>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<geo::codec::VectorTile>,std::shared_ptr<md::ModelTileDebugData>>>>::__emplace_unique_key_args<std::shared_ptr<geo::codec::VectorTile>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<geo::codec::VectorTile> const&>,std::tuple<>>(void *a1, unint64_t a2, void **a3)
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

void sub_1B2E1D690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<md::ModelTileDebugData>::__on_zero_shared(void *a1)
{
  v2 = a1[31];
  a1[31] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[30];
  a1[30] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[29];
  a1[29] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = a1[28];
  a1[28] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = a1[27];
  a1[27] = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = a1[26];
  a1[26] = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = a1[25];
  a1[25] = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = a1[24];
  a1[24] = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = a1[23];
  a1[23] = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = a1[22];
  a1[22] = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = a1[21];
  a1[21] = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = a1[20];
  a1[20] = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = a1[19];
  a1[19] = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15 = a1[18];
  if (v15)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
  }
}

void std::__shared_ptr_emplace<md::ModelTileDebugData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A03D28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t gm::Matrix<double,4,4>::affineTranslated<int,void>(uint64_t result, double *a2, __int128 *a3)
{
  v3 = 0;
  v15 = 0;
  v14 = 0u;
  v12 = 0u;
  v11 = 0u;
  v10 = 0x3FF0000000000000;
  v13 = 0x3FF0000000000000uLL;
  v16 = 0x3FF0000000000000;
  v17 = 0;
  v18 = *a3;
  v19 = *(a3 + 2);
  v20 = 0x3FF0000000000000;
  do
  {
    v4 = 0;
    v5 = &v10;
    do
    {
      v6 = 0;
      v7 = 0.0;
      v8 = a2;
      do
      {
        v9 = *v8;
        v8 += 4;
        v7 = v7 + *&v5[v6++] * v9;
      }

      while (v6 != 4);
      *(result + 8 * (4 * v4++ + v3)) = v7;
      v5 += 4;
    }

    while (v4 != 4);
    ++v3;
    ++a2;
  }

  while (v3 != 4);
  return result;
}

uint64_t md::DebugLayerRenderResources::unitBoxMesh(md::DebugLayerRenderResources *this)
{
  if (!*(this + 38))
  {
    operator new();
  }

  return this + 304;
}

void sub_1B2E1DD64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  ggl::BufferMemory::~BufferMemory(&a9);
  ggl::BufferMemory::~BufferMemory(va);
  std::__shared_weak_count::__release_shared[abi:nn200100](v15);
  std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  _Unwind_Resume(a1);
}

uint64_t drawStringAt(void *a1, float32x2_t *a2, uint64_t a3, float32x4_t *a4, const char *a5)
{
  v8 = 0;
  v25 = xmmword_1B33B11C0;
  do
  {
    v9 = 0;
    v10 = 0.0;
    do
    {
      v10 = v10 + (*(&v25 + v9) * *(a3 + 4 * v9));
      v9 += 4;
    }

    while (v9 != 16);
    *&v26.i32[v8++] = v10;
    a3 += 4;
  }

  while (v8 != 4);
  v23 = *v26.i8;
  v24 = vdupq_laneq_s32(v26, 3).u64[0];
  [a1 sizeInPixels];
  a2[12].i32[0] = vuzp1_s8(vmovn_s32(vcvtq_s32_f32(vmulq_f32(*a4, vdupq_n_s32(0x437F0000u)))), *&v11.f64[0]).u32[0];
  v12 = vdiv_f32(v23, v24);
  __asm { FMOV            V3.2S, #1.0 }

  v18.i32[0] = vadd_f32(v12, _D3).u32[0];
  v18.i32[1] = vsub_f32(_D3, v12).i32[1];
  v11.f64[1] = v19;
  __asm { FMOV            V1.2D, #0.5 }

  a2[1] = vcvt_f32_f64(vmulq_f64(vmulq_f64(v11, _Q1), vcvtq_f64_f32(v18)));
  a2[5] = 0x100000001;
  v21 = strlen(a5);

  return ggl::DebugConsole::drawString(a2, a5, v21);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::CommonMesh::BufferPos4>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A208F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__split_buffer<std::pair<geo::Coordinate3D<geo::Radians,double>,geo::Coordinate3D<geo::Radians,double>> *,std::allocator<std::pair<geo::Coordinate3D<geo::Radians,double>,geo::Coordinate3D<geo::Radians,double>> *>>::emplace_front<std::pair<geo::Coordinate3D<geo::Radians,double>,geo::Coordinate3D<geo::Radians,double>> *&>(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

double std::__function::__func<md::DebugRenderLayer::layout(md::LayoutContext const&)::$_10,std::allocator<md::DebugRenderLayer::layout(md::LayoutContext const&)::$_10>,geo::QuadTile ()(unsigned char const&,geo::Coordinate3D<geo::Radians,double> const&)>::operator()@<D0>(char *a1@<X1>, double *a2@<X2>, uint64_t a3@<X8>)
{
  v5 = a2[1];
  v6 = tan(*a2 * 0.5 + 0.785398163);
  v7 = log(v6);
  v8 = *a1;
  v9 = 1 << *a1;
  v10 = vcvtmd_s64_f64((v7 * 0.159154943 + 0.5) * v9);
  result = (v5 * 0.159154943 + 0.5) * v9;
  *a3 = -1;
  *(a3 + 1) = v8;
  *(a3 + 4) = v9 + ~v10;
  *(a3 + 8) = vcvtmd_s64_f64(result);
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::Debug::BasePipelineSetup *,geo::allocator_adapter<ggl::Debug::BasePipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Debug::BasePipelineSetup *>(v11, v10);
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
    result = std::__split_buffer<ggl::Debug::BasePipelineSetup *,geo::allocator_adapter<ggl::Debug::BasePipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Debug::BasePipelineSetup *>(uint64_t a1, uint64_t a2)
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

uint64_t gdc::Registry::storage<md::components::Decal>(uint64_t a1)
{
  v3 = 0x43A96E24B5C6AF5;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x43A96E24B5C6AF5uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<md::components::Decal>::remove(void *a1, uint64_t a2)
{
  v12 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10];
    v7 = (v3 - a1[7]) >> 1;
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v8 = a1[11];
    *(v6 + v7) = *(v8 - 4);
    a1[11] = v8 - 4;
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

void gdc::ComponentStorageWrapper<md::components::Decal>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<md::components::Decal>::~ComponentStorageWrapper(uint64_t a1)
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

void md::DebugRenderLayer::renderInstancedMesh(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, void *a7, void *a8, uint64_t *a9)
{
  if (*a7 != a7[1])
  {
    std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x1AF456233693CD46uLL);
    operator new();
  }
}

ggl::zone_mallocator *std::vector<ggl::Debug::InstancedBasePipelineSetup *,geo::allocator_adapter<ggl::Debug::InstancedBasePipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Debug::InstancedBasePipelineSetup *>(v11, v10);
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
    result = std::__split_buffer<ggl::Debug::InstancedBasePipelineSetup *,geo::allocator_adapter<ggl::Debug::InstancedBasePipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Debug::InstancedBasePipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Debug::InstancedBasePipelineSetup *>(uint64_t a1, void *a2)
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

void ggl::DeviceDataTyped<ggl::Debug::InstanceTransform>::~DeviceDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::DeviceDataTyped<ggl::Debug::InstanceTransform>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A03C88;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::DebugLayerRenderResources::unitTexturedMesh(md::DebugLayerRenderResources *this)
{
  if (!*(this + 32))
  {
    operator new();
  }

  return this + 256;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Textured::ScreenTexturedQuadPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Textured::ScreenTexturedQuadPipelineSetup *>(uint64_t a1, void *a2)
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

ggl::zone_mallocator *std::vector<ggl::Textured::Pos2DUVExtendedPipelineSetup *,geo::allocator_adapter<ggl::Textured::Pos2DUVExtendedPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Textured::Pos2DUVExtendedPipelineSetup *>(v11, v10);
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
    result = std::__split_buffer<ggl::Textured::Pos2DUVExtendedPipelineSetup *,geo::allocator_adapter<ggl::Textured::Pos2DUVExtendedPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Textured::Pos2DUVExtendedPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Textured::Pos2DUVExtendedPipelineSetup *>(uint64_t a1, void *a2)
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

uint64_t md::DebugLayerRenderResources::unitQuadMesh(md::DebugLayerRenderResources *this)
{
  if (!*(this + 36))
  {
    operator new();
  }

  return this + 288;
}

void std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<md::DebugRenderLayer::layout(md::LayoutContext const&)::$_6,md::DebugRenderLayer::layout(md::LayoutContext const&)::$_7,md::DebugRenderLayer::layout(md::LayoutContext const&)::$_8,md::DebugRenderLayer::layout(md::LayoutContext const&)::$_9>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,gm::Box<double,3>,std::__variant_detail::_Trait::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>> const&>(uint64_t *a1, __int128 *a2)
{
  v2 = *a1;
  geo::OrientedBox<double,3u,double,double>::toMatrix(v5, a2);
  v3.i32[0] = **(v2 + 64);
  v4 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(v3))), vdupq_n_s32(0x3B808081u));
  operator new();
}

void std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<md::DebugRenderLayer::layout(md::LayoutContext const&)::$_6,md::DebugRenderLayer::layout(md::LayoutContext const&)::$_7,md::DebugRenderLayer::layout(md::LayoutContext const&)::$_8,md::DebugRenderLayer::layout(md::LayoutContext const&)::$_9>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,gm::Box<double,3>,std::__variant_detail::_Trait::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>> const&>(uint64_t *a1, __int128 *a2)
{
  v2 = *a1;
  v3 = *(a2 + 3);
  v7 = *a2;
  v8 = *(a2 + 2);
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0x3FF0000000000000;
  v13 = v3;
  v14 = v3;
  v15 = v3;
  geo::Transform<double>::toMatrix(v6, &v7);
  v4.i32[0] = **(v2 + 112);
  v5 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(v4))), vdupq_n_s32(0x3B808081u));
  operator new();
}

uint64_t md::DebugLayerRenderResources::icoSphere(md::DebugLayerRenderResources *this)
{
  if (!*(this + 44))
  {
    v10 = 0u;
    v11 = 0u;
    v12 = 1065353216;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    md::GeometryLogic::createIcoSphere(&v7, &v4, 1);
    v3[0] = 0xAAAAAAAAAAAAAAABLL * ((v8 - v7) >> 2);
    v3[1] = (v5 - v4) >> 2;
    std::allocate_shared[abi:nn200100]<ggl::VertexDataTyped<ggl::CommonMesh::BufferPos4>,std::allocator<ggl::VertexDataTyped<ggl::CommonMesh::BufferPos4>>,char const(&)[28],unsigned long const&,0>(&v2, "/Debug/IcoSphere/VertexData", v3);
  }

  return this + 352;
}

void sub_1B2E1F964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, std::__shared_weak_count *a26)
{
  ggl::BufferMemory::~BufferMemory(&a11);
  ggl::BufferMemory::~BufferMemory(&a17);
  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a24);
  }

  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a26);
  }

  if (v26)
  {
    operator delete(v26);
  }

  v29 = *(v27 - 120);
  if (v29)
  {
    *(v27 - 112) = v29;
    operator delete(v29);
  }

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v27 - 96);
  _Unwind_Resume(a1);
}

void std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<md::DebugRenderLayer::layout(md::LayoutContext const&)::$_6,md::DebugRenderLayer::layout(md::LayoutContext const&)::$_7,md::DebugRenderLayer::layout(md::LayoutContext const&)::$_8,md::DebugRenderLayer::layout(md::LayoutContext const&)::$_9>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,gm::Box<double,3>,std::__variant_detail::_Trait::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>> const&>(uint64_t **a1, double *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  v14 = 0;
  v16 = 0;
  v11 = 0u;
  v12 = 0u;
  v15 = 0u;
  v18 = 0;
  v22 = 0x3FF0000000000000;
  v10 = v6 - v3;
  v13 = v7 - v4;
  v17 = v8 - v5;
  v19 = v3;
  v20 = v4;
  v21 = v5;
  LODWORD(v3) = **(v2 + 16);
  v9 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*&v3))), vdupq_n_s32(0x3B808081u));
  operator new();
}

void std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<md::DebugRenderLayer::layout(md::LayoutContext const&)::$_1,md::DebugRenderLayer::layout(md::LayoutContext const&)::$_2,md::DebugRenderLayer::layout(md::LayoutContext const&)::$_3,md::DebugRenderLayer::layout(md::LayoutContext const&)::$_4,md::DebugRenderLayer::layout(md::LayoutContext const&)::$_5>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,gm::Box<float,3>,std::__variant_detail::_Trait::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo<float,2u,float,float>> const&>(__int128 ****a1, float *a2)
{
  v3 = **a1;
  memset(v33, 0, 24);
  v32 = 0u;
  v31 = 0u;
  v33[1] = 1065353216;
  v33[6] = 1065353216;
  v4 = a2[9] - a2[7];
  v5 = a2[10] - a2[8];
  *&v33[3] = *(a2 + 7);
  v30 = v4;
  *&v32 = v5;
  gm::Quaternion<float>::toMatrix(&v25, a2 + 3);
  gm::Matrix<float,4,4>::Matrix<4,void>(v29, &v25, a2);
  gm::operator*<float,4,4,4>(&v25, v29, &v30);
  v6 = v3[1];
  v7 = v3[2];
  if (v6 >= v7)
  {
    v11 = (v6 - *v3) >> 6;
    v12 = v11 + 1;
    if ((v11 + 1) >> 58)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v13 = v7 - *v3;
    if (v13 >> 5 > v12)
    {
      v12 = v13 >> 5;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFC0)
    {
      v14 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<ecs2::EntityArchetype<512ul>>>(v14);
    }

    v15 = (v11 << 6);
    v16 = v26;
    *v15 = v25;
    v15[1] = v16;
    v17 = v28;
    v15[2] = v27;
    v15[3] = v17;
    v10 = (v11 << 6) + 64;
    v18 = *v3;
    v19 = v3[1];
    v20 = (v15 + *v3 - v19);
    if (*v3 != v19)
    {
      v21 = v20;
      do
      {
        v22 = *v18;
        v23 = v18[1];
        v24 = v18[3];
        v21[2] = v18[2];
        v21[3] = v24;
        *v21 = v22;
        v21[1] = v23;
        v21 += 4;
        v18 += 4;
      }

      while (v18 != v19);
      v18 = *v3;
    }

    *v3 = v20;
    v3[1] = v10;
    v3[2] = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v8 = v26;
    *v6 = v25;
    *(v6 + 1) = v8;
    v9 = v28;
    *(v6 + 2) = v27;
    *(v6 + 3) = v9;
    v10 = (v6 + 64);
  }

  v3[1] = v10;
}

void std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<md::DebugRenderLayer::layout(md::LayoutContext const&)::$_1,md::DebugRenderLayer::layout(md::LayoutContext const&)::$_2,md::DebugRenderLayer::layout(md::LayoutContext const&)::$_3,md::DebugRenderLayer::layout(md::LayoutContext const&)::$_4,md::DebugRenderLayer::layout(md::LayoutContext const&)::$_5>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,gm::Box<float,3>,std::__variant_detail::_Trait::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo<float,2u,float,float>> const&>(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(*a1 + 16);
  memset(v31, 0, sizeof(v31));
  v30 = 0u;
  v34 = 1065353216;
  do
  {
    *&v28[v3] = *(a2 + v3 * 4 + 40) - *(a2 + v3 * 4 + 28);
    ++v3;
  }

  while (v3 != 3);
  v32 = *(a2 + 28);
  v33 = *(a2 + 36);
  v29 = v28[0];
  v31[0] = v28[1];
  v31[5] = v28[2];
  gm::Quaternion<float>::toMatrix(&v24, (a2 + 12));
  gm::Matrix<float,4,4>::Matrix<4,void>(v28, &v24, a2);
  gm::operator*<float,4,4,4>(&v24, v28, &v29);
  v5 = v4[1];
  v6 = v4[2];
  if (v5 >= v6)
  {
    v10 = (v5 - *v4) >> 6;
    v11 = v10 + 1;
    if ((v10 + 1) >> 58)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v12 = v6 - *v4;
    if (v12 >> 5 > v11)
    {
      v11 = v12 >> 5;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFC0)
    {
      v13 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<ecs2::EntityArchetype<512ul>>>(v13);
    }

    v14 = (v10 << 6);
    v15 = v25;
    *v14 = v24;
    v14[1] = v15;
    v16 = v27;
    v14[2] = v26;
    v14[3] = v16;
    v9 = (v10 << 6) + 64;
    v17 = *v4;
    v18 = v4[1];
    v19 = (v14 + *v4 - v18);
    if (*v4 != v18)
    {
      v20 = v19;
      do
      {
        v21 = *v17;
        v22 = v17[1];
        v23 = v17[3];
        v20[2] = v17[2];
        v20[3] = v23;
        *v20 = v21;
        v20[1] = v22;
        v20 += 4;
        v17 += 4;
      }

      while (v17 != v18);
      v17 = *v4;
    }

    *v4 = v19;
    v4[1] = v9;
    v4[2] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    v7 = v25;
    *v5 = v24;
    *(v5 + 1) = v7;
    v8 = v27;
    *(v5 + 2) = v26;
    *(v5 + 3) = v8;
    v9 = (v5 + 64);
  }

  v4[1] = v9;
}

void std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<md::DebugRenderLayer::layout(md::LayoutContext const&)::$_1,md::DebugRenderLayer::layout(md::LayoutContext const&)::$_2,md::DebugRenderLayer::layout(md::LayoutContext const&)::$_3,md::DebugRenderLayer::layout(md::LayoutContext const&)::$_4,md::DebugRenderLayer::layout(md::LayoutContext const&)::$_5>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,gm::Box<float,3>,std::__variant_detail::_Trait::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo<float,2u,float,float>> const&>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v28 = *a2;
  v29 = *(a2 + 2);
  v3 = *(a2 + 3);
  v30 = xmmword_1B33B0710;
  v31 = v3;
  v32 = v3;
  v33 = v3;
  v4 = *(v2 + 24);
  geo::Transform<float>::toMatrix(&v24, &v28);
  v5 = v4[1];
  v6 = v4[2];
  if (v5 >= v6)
  {
    v10 = (v5 - *v4) >> 6;
    v11 = v10 + 1;
    if ((v10 + 1) >> 58)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v12 = v6 - *v4;
    if (v12 >> 5 > v11)
    {
      v11 = v12 >> 5;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFC0)
    {
      v13 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<ecs2::EntityArchetype<512ul>>>(v13);
    }

    v14 = (v10 << 6);
    v15 = v25;
    *v14 = v24;
    v14[1] = v15;
    v16 = v27;
    v14[2] = v26;
    v14[3] = v16;
    v9 = (v10 << 6) + 64;
    v17 = *v4;
    v18 = v4[1];
    v19 = (v14 + *v4 - v18);
    if (*v4 != v18)
    {
      v20 = v19;
      do
      {
        v21 = *v17;
        v22 = v17[1];
        v23 = v17[3];
        v20[2] = v17[2];
        v20[3] = v23;
        *v20 = v21;
        v20[1] = v22;
        v20 += 4;
        v17 += 4;
      }

      while (v17 != v18);
      v17 = *v4;
    }

    *v4 = v19;
    v4[1] = v9;
    v4[2] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    v7 = v25;
    *v5 = v24;
    *(v5 + 1) = v7;
    v8 = v27;
    *(v5 + 2) = v26;
    *(v5 + 3) = v8;
    v9 = (v5 + 64);
  }

  v4[1] = v9;
}

void std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<md::DebugRenderLayer::layout(md::LayoutContext const&)::$_1,md::DebugRenderLayer::layout(md::LayoutContext const&)::$_2,md::DebugRenderLayer::layout(md::LayoutContext const&)::$_3,md::DebugRenderLayer::layout(md::LayoutContext const&)::$_4,md::DebugRenderLayer::layout(md::LayoutContext const&)::$_5>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,gm::Box<float,3>,std::__variant_detail::_Trait::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo<float,2u,float,float>> const&>(uint64_t a1, float *a2)
{
  v2 = *(*a1 + 8);
  v4 = *a2;
  v3 = a2[1];
  v5 = a2[2];
  v6 = a2[3] - *a2;
  v7 = a2[4] - v3;
  v8 = a2[5] - v5;
  v9 = v2[1];
  v10 = v2[2];
  if (v9 >= v10)
  {
    v12 = (v9 - *v2) >> 6;
    v13 = v12 + 1;
    if ((v12 + 1) >> 58)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v14 = v10 - *v2;
    if (v14 >> 5 > v13)
    {
      v13 = v14 >> 5;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFC0)
    {
      v15 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<ecs2::EntityArchetype<512ul>>>(v15);
    }

    v16 = v12 << 6;
    *v16 = v6;
    *(v16 + 12) = 0;
    *(v16 + 4) = 0;
    *(v16 + 20) = v7;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0;
    *(v16 + 40) = v8;
    *(v16 + 44) = 0;
    *(v16 + 48) = v4;
    *(v16 + 52) = v3;
    *(v16 + 56) = v5;
    *(v16 + 60) = 1065353216;
    v11 = (v12 << 6) + 64;
    v17 = *v2;
    v18 = v2[1];
    v19 = (v16 + *v2 - v18);
    if (v18 != *v2)
    {
      v20 = v19;
      do
      {
        v21 = *v17;
        v22 = v17[1];
        v23 = v17[3];
        v20[2] = v17[2];
        v20[3] = v23;
        *v20 = v21;
        v20[1] = v22;
        v20 += 4;
        v17 += 4;
      }

      while (v17 != v18);
      v17 = *v2;
    }

    *v2 = v19;
    v2[1] = v11;
    v2[2] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v9 = v6;
    *(v9 + 12) = 0;
    *(v9 + 4) = 0;
    *(v9 + 20) = v7;
    *(v9 + 24) = 0;
    *(v9 + 32) = 0;
    *(v9 + 40) = v8;
    *(v9 + 44) = 0;
    *(v9 + 48) = v4;
    *(v9 + 52) = v3;
    *(v9 + 56) = v5;
    v11 = v9 + 64;
    *(v9 + 60) = 1065353216;
  }

  v2[1] = v11;
}

ggl::zone_mallocator *ggl::FragmentedPool<ggl::CommonMesh::Pos4Mesh>::pop(void *a1)
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

  std::vector<ggl::CommonMesh::Pos4Mesh *,geo::allocator_adapter<ggl::CommonMesh::Pos4Mesh *,ggl::zone_mallocator>>::push_back[abi:nn200100]((a1 + 4), &v9);
  v10 = v3;
  v5 = a1[15];
  if (v5)
  {
    (*(*v5 + 48))(v5, &v10);
    return v3;
  }

LABEL_7:
  v7 = std::__throw_bad_function_call[abi:nn200100]();
  return std::vector<ggl::CommonMesh::Pos4Mesh *,geo::allocator_adapter<ggl::CommonMesh::Pos4Mesh *,ggl::zone_mallocator>>::push_back[abi:nn200100](v7, v8);
}

ggl::zone_mallocator *std::vector<ggl::CommonMesh::Pos4Mesh *,geo::allocator_adapter<ggl::CommonMesh::Pos4Mesh *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::CommonMesh::Pos4Mesh *>(v11, v10);
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
    result = std::__split_buffer<ggl::CommonMesh::Pos4Mesh *,geo::allocator_adapter<ggl::CommonMesh::Pos4Mesh *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::CommonMesh::Pos4Mesh *>(uint64_t a1, uint64_t a2)
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

ggl::zone_mallocator *std::vector<ggl::Debug::LinePipelineSetup *,geo::allocator_adapter<ggl::Debug::LinePipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Debug::LinePipelineSetup *>(v11, v10);
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
    result = std::__split_buffer<ggl::Debug::LinePipelineSetup *,geo::allocator_adapter<ggl::Debug::LinePipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Debug::LinePipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Debug::LinePipelineSetup *>(uint64_t a1, void *a2)
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

ggl::zone_mallocator *std::vector<ggl::Debug::LineMesh *,geo::allocator_adapter<ggl::Debug::LineMesh *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Debug::LineMesh *>(v11, v10);
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
    result = std::__split_buffer<ggl::Debug::LineMesh *,geo::allocator_adapter<ggl::Debug::LineMesh *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Debug::LineMesh *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Debug::LineMesh *>(uint64_t a1, void *a2)
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

void ggl::ConstantDataTyped<ggl::Textured::ScreenTexturedQuad>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::Textured::ScreenTexturedQuad>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A03BA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void sub_1B2E20D30(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void ggl::ConstantDataTyped<ggl::Textured::Style>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::Textured::Style>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A39F70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::Point::View>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::Point::View>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A20898;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void sub_1B2E213D4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void ggl::ConstantDataTyped<ggl::Debug::View>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::Debug::View>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A37148;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::Debug::Style>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::Debug::Style>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A370F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void sub_1B2E21DCC(_Unwind_Exception *exception_object)
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

void ggl::ConstantDataTyped<ggl::Debug::Viewport>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::Debug::Viewport>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A03830;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void sub_1B2E2213C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<ggl::Textured::ScreenTexturedQuadPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A03768;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::Textured::Pos2DUVExtendedPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A39E90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::Point::PipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A03730;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::Debug::InstancedBasePipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A036F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::Debug::LinePipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A036C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::Debug::BasePipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A372C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::VertexDataTyped<ggl::Venue3DStroke::HorizontalDefaultVbo>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::Venue3DStroke::HorizontalDefaultVbo>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::Venue3DStroke::HorizontalVenue3DStrokeMesh::~HorizontalVenue3DStrokeMesh(ggl::Venue3DStroke::HorizontalVenue3DStrokeMesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void ggl::Venue3DStroke::HorizontalVenue3DStrokeMesh::~HorizontalVenue3DStrokeMesh(ggl::Venue3DStroke::HorizontalVenue3DStrokeMesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::MeshTyped<ggl::Venue3DStroke::HorizontalDefaultVbo>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::Venue3DStroke::HorizontalDefaultVbo>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::VertexDataTyped<ggl::Venue3DStroke::VerticalDefaultVbo>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::Venue3DStroke::VerticalDefaultVbo>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::Venue3DStroke::VerticalVenue3DStrokeMesh::~VerticalVenue3DStrokeMesh(ggl::Venue3DStroke::VerticalVenue3DStrokeMesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void ggl::Venue3DStroke::VerticalVenue3DStrokeMesh::~VerticalVenue3DStrokeMesh(ggl::Venue3DStroke::VerticalVenue3DStrokeMesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::MeshTyped<ggl::Venue3DStroke::VerticalDefaultVbo>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::Venue3DStroke::VerticalDefaultVbo>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::Venue3DStroke::HorizontalVenue3DStrokePipelineSetup::~HorizontalVenue3DStrokePipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::Venue3DStroke::VerticalVenue3DStrokePipelineSetup::~VerticalVenue3DStrokePipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void md::MuninCrossFadeRenderLayer::layout(md::MuninCrossFadeRenderLayer *this, const md::LayoutContext *a2)
{
  v4 = gdc::Context::context<md::MuninSceneContext>(*(a2 + 1))[4];
  if (v4)
  {
    if (*(this + 17) != v4)
    {
      v5 = *(v4 + 4);
      if (!v5)
      {
        std::__throw_bad_function_call[abi:nn200100]();
        goto LABEL_39;
      }

      (*(*v5 + 48))(v5);
      std::unique_ptr<ggl::Drawable>::reset[abi:nn200100](this + 16, 0);
    }

    v6 = *(*(*(this + 5) + 24) + 8);
    v7 = *(v6 + 3);
    v8 = *(v6 + 4);
    __asm { FMOV            V8.2S, #1.0 }

    v14 = v8 - v7;
    if (v8 != v7)
    {
      v15 = 0;
      v16 = v14 >> 3;
      while (1)
      {
        v17 = *(v7 + 8 * v15);
        if (*v17 == 4)
        {
          v18 = *(v17 + 8);
          v19 = *(v6 + 18);
          if (v18 < (*(v6 + 19) - v19) >> 3)
          {
            break;
          }
        }

        if (++v15 >= v16)
        {
          goto LABEL_21;
        }
      }

      v20 = *(v19 + 8 * v18);
      if (v20)
      {
        v21 = *(v20 + 72);
        v55[0] = *(v20 + 56);
        v55[1] = v21;
        v22 = v21;
        if (v21 != *(this + 4))
        {
          goto LABEL_18;
        }

        if (v21)
        {
          v23 = v55;
          v24 = (this + 48);
          while (1)
          {
            v26 = *v23++;
            v25 = v26;
            v27 = *v24++;
            if (v25 != v27)
            {
              break;
            }

            if (!--v22)
            {
              goto LABEL_17;
            }
          }

LABEL_18:
          v28 = *(v20 + 72);
          *(this + 3) = *(v20 + 56);
          *(this + 4) = v28;
          v29 = *md::LayoutContext::get<md::SharedResourcesContext>(*(a2 + 1));
          v30 = *([v29 shaderLibrary] + 80);
          v31 = *(v30 + 2872);
          v56[0] = *(v30 + 2864);
          v56[1] = v31;
          if (v31)
          {
            atomic_fetch_add_explicit((v31 + 8), 1uLL, memory_order_relaxed);
          }

          v57[0] = 1;
          *&v57[4] = xmmword_1B33B11E0;
          *&v57[20] = 1;
          v58 = 0;
          v59 = 0;
          LODWORD(v60) = 0;
          BYTE4(v60) = 15;
          std::allocate_shared[abi:nn200100]<ggl::Textured::Pos2DUVExtendedPipelineState,std::allocator<ggl::Textured::Pos2DUVExtendedPipelineState>,std::shared_ptr<ggl::TexturedExtendedShader>,ggl::ColorBufferOperation,ggl::RenderTargetFormat const&,BOOL const&,0>(&v61, v56, v57, this + 3, ([v29 gglDevice] + 20));
        }

LABEL_17:
        if (!*(this + 16))
        {
          goto LABEL_18;
        }
      }
    }

LABEL_21:
    v32 = md::FrameGraph::renderQueueForPass(v6, 4);
    if (v32)
    {
      v33 = **(v32 + 16);
    }

    else
    {
      v33 = 0;
    }

    ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v57, *(this + 10));
    v34 = *v4;
    v35 = v60;
    *v60 = _D8;
    *(v35 + 2) = 1065353216;
    *(v35 + 3) = v34;
    ggl::BufferMemory::~BufferMemory(v57);
    v37 = **(this + 16);
    v39 = v33[10];
    v38 = v33[11];
    if (v39 < v38)
    {
      *v39 = v37;
      v40 = v39 + 1;
LABEL_35:
      v33[10] = v40;
      goto LABEL_36;
    }

    v41 = v33[9];
    v42 = (v39 - v41) >> 3;
    if (!((v42 + 1) >> 61))
    {
      v43 = v38 - v41;
      v44 = v43 >> 2;
      if (v43 >> 2 <= (v42 + 1))
      {
        v44 = v42 + 1;
      }

      if (v43 >= 0x7FFFFFFFFFFFFFF8)
      {
        v45 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v45 = v44;
      }

      v59 = v33 + 12;
      if (v45)
      {
        v46 = ggl::zone_mallocator::instance(v36);
        v47 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::RenderItem *>(v46, v45);
      }

      else
      {
        v47 = 0;
      }

      v49 = &v47[8 * v45];
      v48 = &v47[8 * v42];
      *v48 = v37;
      v40 = v48 + 8;
      v50 = v33[9];
      v51 = v33[10] - v50;
      v52 = &v48[-v51];
      memcpy(&v48[-v51], v50, v51);
      v53 = v33[9];
      v33[9] = v52;
      v33[10] = v40;
      v54 = v33[11];
      v33[11] = v49;
      *&v57[16] = v53;
      v58 = v54;
      *v57 = v53;
      *&v57[8] = v53;
      std::__split_buffer<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator> &>::~__split_buffer(v57);
      goto LABEL_35;
    }

LABEL_39:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

LABEL_36:
  *(this + 17) = v4;
}

void sub_1B2E231A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v25 = va_arg(va1, void);
  v27 = va_arg(va1, void);
  v28 = va_arg(va1, void);
  v29 = va_arg(va1, void);
  v30 = va_arg(va1, void);
  v31 = va_arg(va1, void);
  v32 = va_arg(va1, void);
  v33 = va_arg(va1, std::__shared_weak_count *);
  (*(*v16 + 8))(v16, a2, a3, a4, a5, a6, a7, a8);
  std::__shared_weak_count::__release_shared[abi:nn200100](v21);
  ggl::BufferMemory::~BufferMemory(va);
  ggl::BufferMemory::~BufferMemory(va1);
  std::__shared_weak_count::__release_shared[abi:nn200100](v20);
  std::__shared_weak_count::__release_shared[abi:nn200100](v19);
  (*(*v18 + 8))(v18);
  std::__shared_weak_count::__release_shared[abi:nn200100](v17);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v33);
  }

  v24 = *(v22 - 144);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v24);
  }

  _Unwind_Resume(a1);
}

void sub_1B2E23290()
{
  if (v0)
  {
    JUMPOUT(0x1B2E23274);
  }

  JUMPOUT(0x1B2E23278);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::CommonMesh::BufferPos2UV>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A18FC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::Textured::TileScalar>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::Textured::TileScalar>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A03F80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::MuninCrossFadeRenderLayer::~MuninCrossFadeRenderLayer(uint64_t **this)
{
  md::MuninCrossFadeRenderLayer::~MuninCrossFadeRenderLayer(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A03F10;
  std::unique_ptr<ggl::Drawable>::reset[abi:nn200100](this + 16, 0);
  v2 = this[15];
  this[15] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = this[14];
  this[14] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = this[13];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = this[11];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  *this = &unk_1F2A16858;
  v6 = this[1];
  if (v6)
  {
    this[2] = v6;
    operator delete(v6);
  }
}

void md::SequentialGEOResourceDataRequester::createDebugNode(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v35 = *MEMORY[0x1E69E9840];
  a2[4] = 0u;
  a2[5] = 0u;
  a2[2] = 0u;
  a2[3] = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  ActiveResourceType = md::SequentialGEOResourceDataRequester::getActiveResourceType(a1);
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = (*(*v5 + 24))(v5, ActiveResourceType);
    if (v7)
    {
      v8 = v6;
      std::string::basic_string[abi:nn200100]<0>(&v31, "Download Range");
      gdc::DebugTreeValue::DebugTreeValue(&v32, v8);
      gdc::DebugTreeValue::DebugTreeValue(&v34, HIDWORD(v8));
      memset(v30, 0, sizeof(v30));
      std::vector<gdc::DebugTreeValue>::__init_with_size[abi:nn200100]<gdc::DebugTreeValue const*,gdc::DebugTreeValue const*>(v30, &v32, &v35, 2uLL);
    }
  }

  std::string::basic_string[abi:nn200100]<0>(&v32, "Download Range");
  gdc::DebugTreeValue::DebugTreeValue(v27, "None");
  gdc::DebugTreeNode::addProperty(a2, &v32, v27);
  if (v29 < 0)
  {
    operator delete(__p);
  }

  if (v33 < 0)
  {
    operator delete(v32);
  }

  if (*(a1 + 32) == 1)
  {
    std::string::basic_string[abi:nn200100]<0>(&v32, "Visible Range Min");
    if ((*(a1 + 32) & 1) == 0)
    {
      goto LABEL_34;
    }

    gdc::DebugTreeValue::DebugTreeValue(v24, *(a1 + 28));
    gdc::DebugTreeNode::addProperty(a2, &v32, v24);
    if ((v26 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    v9 = v25;
  }

  else
  {
    std::string::basic_string[abi:nn200100]<0>(&v32, "Visible Range Min");
    gdc::DebugTreeValue::DebugTreeValue(v21, "None");
    gdc::DebugTreeNode::addProperty(a2, &v32, v21);
    if ((v23 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    v9 = v22;
  }

  operator delete(v9);
LABEL_15:
  if (v33 < 0)
  {
    operator delete(v32);
  }

  if (*(a1 + 40) == 1)
  {
    std::string::basic_string[abi:nn200100]<0>(&v32, "Visible Range Max");
    if (*(a1 + 40))
    {
      gdc::DebugTreeValue::DebugTreeValue(v18, *(a1 + 36));
      gdc::DebugTreeNode::addProperty(a2, &v32, v18);
      if ((v20 & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

      v10 = v19;
      goto LABEL_23;
    }

LABEL_34:
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  std::string::basic_string[abi:nn200100]<0>(&v32, "Visible Range Max");
  gdc::DebugTreeValue::DebugTreeValue(v15, "None");
  gdc::DebugTreeNode::addProperty(a2, &v32, v15);
  if ((v17 & 0x80000000) == 0)
  {
    goto LABEL_24;
  }

  v10 = v16;
LABEL_23:
  operator delete(v10);
LABEL_24:
  if (v33 < 0)
  {
    operator delete(v32);
  }

  std::string::basic_string[abi:nn200100]<0>(&v32, "gdc::ResourceType");
  if (ActiveResourceType > 0x35)
  {
    v11 = "<Invalid>";
  }

  else
  {
    v11 = off_1E7B3C1A8[ActiveResourceType];
  }

  gdc::DebugTreeValue::DebugTreeValue(v12, v11);
  gdc::DebugTreeNode::addProperty(a2, &v32, v12);
  if (v14 < 0)
  {
    operator delete(v13);
  }

  if (v33 < 0)
  {
    operator delete(v32);
  }
}

void sub_1B2E23864(_Unwind_Exception *a1)
{
  v5 = 0;
  while (1)
  {
    if (*(v2 + v5 + 119) < 0)
    {
      operator delete(*(v2 + v5 + 96));
    }

    v5 -= 64;
    if (v5 == -128)
    {
      if (*(v3 - 193) < 0)
      {
        operator delete(*(v3 - 216));
      }

      *(v3 - 184) = v1 + 72;
      std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100]((v3 - 184));
      *(v3 - 184) = v1 + 48;
      std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100]((v3 - 184));
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
  }
}

void md::SequentialGEOResourceDataRequester::requestDataKeys(md::SequentialGEOResourceDataRequester *this, const gdc::SelectionContext *a2, char a3)
{
  v5 = *(a2 + 1);
  ActiveResourceType = md::SequentialGEOResourceDataRequester::getActiveResourceType(this);
  v7 = *(this + 1);
  if (v7)
  {
    v8 = (*(*v7 + 32))(v7, ActiveResourceType);
    if ((v8 & 0x100000000) != 0)
    {
      v9 = v8;
      v10 = (*(**(this + 1) + 24))(*(this + 1), ActiveResourceType);
      if (v11)
      {
        v12 = v10;
        v33 = HIDWORD(v10);
        if (*(this + 32) == 1)
        {
          v12 = *(this + 7);
        }

        if (*(this + 40) == 1)
        {
          LODWORD(v33) = *(this + 9);
        }

        v13 = *(a2 + 8);
        v14 = *v13;
        v15 = v9;
        if (v9)
        {
          v16 = v14 == 0;
        }

        else
        {
          v16 = 1;
        }

        if (v16)
        {
          v17 = 0;
        }

        else
        {
          if (v9 >= v14)
          {
            v17 = 0;
          }

          else
          {
            v17 = 0;
            do
            {
              ++v17;
              v15 *= 2;
            }

            while (v15 < v14);
          }

          if (v15 > v14)
          {
            do
            {
              --v17;
              v18 = v15 > 2 * v14;
              v14 *= 2;
            }

            while (v18);
          }
        }

        v47 = 0;
        v48 = 0;
        v49 = 0;
        v19 = *(v13 + 3);
        if (v19)
        {
          v32 = -v17 & ~(-v17 >> 31);
          do
          {
            v20 = *(v19 + 17);
            v21 = 1 << v20;
            v22 = *(v19 + 6);
            v23 = (*(v19 + 5) % v21 + v21) % v21;
            v42[0] = *(v19 + 16);
            v42[1] = v20;
            v43 = v23;
            v44 = (v22 % v21 + v21) % v21;
            v45 = 0;
            v46 = 1;
            if (v20)
            {
              v24 = v20 >= v32;
              LODWORD(v20) = v20 - v32;
              if (!v24)
              {
                LODWORD(v20) = 0;
              }
            }

            if (v12 <= v20 && v33 >= v20)
            {
              v48 = v47;
              v25 = **(a2 + 8);
              v26 = (*(**(this + 1) + 32))(*(this + 1), ActiveResourceType);
              if ((v26 & 0x100000000) == 0)
              {
                v31 = std::__throw_bad_optional_access[abi:nn200100]();
                if (v47)
                {
                  v48 = v47;
                  operator delete(v47);
                }

                _Unwind_Resume(v31);
              }

              v9 = v9 & 0xFFFFFFFFFF000000 | *(this + 22) | (*(this + 46) << 16);
              md::TileAdjustmentHelpers::adjustTileForSizeAndResourceType(v25, v26, ActiveResourceType, *(this + 1), v42, v9, &v47);
              v28 = v47;
              v27 = v48;
              while (v28 != v27)
              {
                (*(*this + 80))(v41, this, v28);
                if (a3)
                {
                  v29 = 1;
                }

                else
                {
                  v29 = *(this + 4);
                }

                gdc::Tiled::mapDataKeyFromTile(v38, 0, v41, *(this + 11), v29);
                gdc::LayerDataCollector::addDataKey(v5, v38, (v19 + 2));
                if (geo::codec::VectorTile::hasComputedJunctions(*(this + 20)))
                {
                  v30 = (a3 & 1) != 0 ? 1 : *(this + 4);
                  gdc::Tiled::mapDataKeyFromTile(v35, 1u, v41, *(this + 11), v30);
                  gdc::LayerDataCollector::addDataKey(v5, v35, (v19 + 2));
                  if (v36 != v37)
                  {
                    free(v36);
                  }
                }

                if (v39 != v40)
                {
                  free(v39);
                }

                v28 += 32;
              }
            }

            v19 = *v19;
          }

          while (v19);
          if (v47)
          {
            v48 = v47;
            operator delete(v47);
          }
        }
      }
    }
  }
}

void md::SequentialGEOResourceDataRequester::~SequentialGEOResourceDataRequester(md::SequentialGEOResourceDataRequester *this)
{
  *this = &unk_1F2A03FF0;
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  *this = &unk_1F2A2DC50;
  std::__function::__value_func<BOOL ()(geo::QuadTile const&)>::~__value_func[abi:nn200100](this + 48);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A03FF0;
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  *this = &unk_1F2A2DC50;
  std::__function::__value_func<BOOL ()(geo::QuadTile const&)>::~__value_func[abi:nn200100](this + 48);
}

void generateRoadSignPath(CGContext *a1, const RoadSignMetrics *a2, const md::RoadSignPartMetrics *a3)
{
  CGContextSaveGState(a1);
  CGContextBeginPath(a1);
  v6 = *a3;
  if (v6 > 5)
  {
    if (v6 <= 0xF)
    {
      if (((1 << v6) & 0xC00) != 0)
      {
        v118 = *(a3 + 11);
        v119 = md::RoadSignPartMetrics::signMin(a3);
        v10 = v120;
        v121 = md::RoadSignPartMetrics::signMax(a3);
        v123 = v122;
        v124 = round(a2->_scale * a2->_cornerRadius * a2->_contentScale);
        v148 = *(a3 + 18);
        xb = *(a3 + 17);
        v125 = v119 - v118;
        v126 = 112;
        v127 = 104;
        if (*a3 == 10)
        {
          v127 = 120;
          v126 = 128;
          v128 = v124 + v119;
        }

        else
        {
          v119 = v121;
          v128 = v121 - v124;
        }

        if (*a3 == 10)
        {
          v129 = v121 + v118;
        }

        else
        {
          v129 = v125;
        }

        v130 = *(a3 + v126);
        v131 = *(a3 + v127);
        v132 = v123 - v124;
        CGContextMoveToPoint(a1, v129, v10);
        CGContextAddLineToPoint(a1, v129, v123);
        CGContextAddLineToPoint(a1, v128, v123);
        CGContextAddQuadCurveToPoint(a1, v119, v123, v119, v132);
        CGContextAddArcToPoint(a1, xb, v148, v131, v130, round(a2->_scale * a2->_arrowTipCornerRadius * a2->_contentScale));
        CGContextAddArcToPoint(a1, v131, v130, v129, v10, round(a2->_scale * a2->_arrowJoinCornerRadius * a2->_contentScale));
        v26 = a1;
        v27 = v129;
LABEL_75:
        v74 = v10;
        goto LABEL_76;
      }

      if (((1 << v6) & 0x3000) != 0)
      {
        v100 = *(a3 + 11);
        v101 = md::RoadSignPartMetrics::signMin(a3);
        v103 = v102;
        v104 = md::RoadSignPartMetrics::signMax(a3);
        v106 = v105;
        v107 = round(a2->_scale * a2->_cornerRadius * a2->_contentScale);
        v108 = 112;
        v109 = 104;
        v110 = 128;
        v111 = 120;
        if (*a3 == 12)
        {
          v111 = 104;
          v110 = 112;
          v109 = 120;
          v108 = 128;
          v112 = v101;
        }

        else
        {
          v112 = v104;
        }

        if (*a3 == 12)
        {
          v113 = v107 + v101;
        }

        else
        {
          v113 = v104 - v107;
        }

        if (*a3 == 12)
        {
          v114 = v104 + v100;
        }

        else
        {
          v114 = v101 - v100;
        }

        v137 = *(a3 + v111);
        v142 = *(a3 + v110);
        v115 = *(a3 + 17);
        v116 = *(a3 + 18);
        v147 = *(a3 + v109);
        xd = *(a3 + v108);
        v117 = v106 - v107;
        CGContextMoveToPoint(a1, v114, v103);
        CGContextAddLineToPoint(a1, v114, v106);
        CGContextAddLineToPoint(a1, v113, v106);
        CGContextAddQuadCurveToPoint(a1, v112, v106, v112, v117);
        CGContextAddArcToPoint(a1, v137, v142, v115, v116, round(a2->_scale * a2->_arrowJoinCornerRadius * a2->_contentScale));
        CGContextAddArcToPoint(a1, v115, v116, v147, xd, round(a2->_scale * a2->_arrowTipCornerRadius * a2->_contentScale));
        CGContextAddArcToPoint(a1, v147, xd, v114, v103, round(a2->_scale * a2->_arrowJoinCornerRadius * a2->_contentScale));
        v26 = a1;
        v27 = v114;
        v74 = v103;
        goto LABEL_76;
      }

      if (((1 << v6) & 0xC000) != 0)
      {
        v7 = *(a3 + 11);
        v8 = md::RoadSignPartMetrics::signMin(a3);
        v10 = v9;
        v11 = md::RoadSignPartMetrics::signMax(a3);
        v13 = round(a2->_scale * a2->_cornerRadius * a2->_contentScale);
        v14 = v8 - v7;
        v15 = (a3 + 104);
        v16 = (a3 + 112);
        v17 = v11 - v13;
        if (*a3 == 14)
        {
          v14 = v11 + v7;
          v17 = v13 + v8;
        }

        v143 = v14;
        x = v17;
        if (*a3 == 14)
        {
          v18 = (a3 + 104);
        }

        else
        {
          v8 = v11;
          v18 = (a3 + 120);
        }

        if (*a3 == 14)
        {
          v19 = (a3 + 112);
        }

        else
        {
          v19 = (a3 + 128);
        }

        if (*a3 == 14)
        {
          v15 = (a3 + 120);
          v16 = (a3 + 128);
        }

        v20 = *v16;
        v21 = *v15;
        v23 = *(a3 + 17);
        v22 = *(a3 + 18);
        v24 = *v19;
        v25 = *v18;
        v138 = v13 + v10;
        CGContextMoveToPoint(a1, v14, v12);
        CGContextAddArcToPoint(a1, v21, v20, v23, v22, round(a2->_scale * a2->_arrowJoinCornerRadius * a2->_contentScale));
        CGContextAddArcToPoint(a1, v23, v22, v25, v24, round(a2->_scale * a2->_arrowTipCornerRadius * a2->_contentScale));
        CGContextAddArcToPoint(a1, v25, v24, v8, v138, round(a2->_scale * a2->_arrowJoinCornerRadius * a2->_contentScale));
        CGContextAddLineToPoint(a1, v8, v138);
        CGContextAddQuadCurveToPoint(a1, v8, v10, x, v10);
        v26 = a1;
        v27 = v143;
        goto LABEL_75;
      }
    }

    if (v6 - 6 < 2)
    {
      v82 = *(a3 + 11);
      v83 = md::RoadSignPartMetrics::signMin(a3);
      v10 = v84;
      v85 = md::RoadSignPartMetrics::signMax(a3);
      v87 = v86;
      v88 = round(a2->_scale * a2->_cornerRadius * a2->_contentScale);
      v89 = v83 - v82;
      v90 = 112;
      v91 = 104;
      v92 = 128;
      v93 = 120;
      v94 = v85 + v82;
      if (*a3 == 6)
      {
        v93 = 104;
        v92 = 112;
        v91 = 120;
        v90 = 128;
        v95 = v88 + v83;
      }

      else
      {
        v95 = v85 - v88;
      }

      if (*a3 == 6)
      {
        v96 = v83;
      }

      else
      {
        v96 = v85;
      }

      if (*a3 == 6)
      {
        v57 = v94;
      }

      else
      {
        v57 = v89;
      }

      v97 = *(a3 + v93);
      v134 = *(a3 + v92);
      v136 = *(a3 + 17);
      xc = *(a3 + v90);
      v141 = *(a3 + 18);
      v146 = *(a3 + v91);
      v98 = v87 - v88;
      v99 = v88 + v10;
      CGContextMoveToPoint(a1, v57, v10);
      CGContextAddLineToPoint(a1, v57, v87);
      CGContextAddLineToPoint(a1, v95, v87);
      CGContextAddQuadCurveToPoint(a1, v96, v87, v96, v98);
      CGContextAddLineToPoint(a1, v96, v99);
      CGContextAddQuadCurveToPoint(a1, v96, v10, v95, v10);
      CGContextAddLineToPoint(a1, v97, v134);
      CGContextAddArcToPoint(a1, v97, v134, v136, v141, round(a2->_scale * a2->_arrowJoinCornerRadius * a2->_contentScale));
      CGContextAddArcToPoint(a1, v136, v141, v146, xc, round(a2->_scale * a2->_arrowTipCornerRadius * a2->_contentScale));
      CGContextAddArcToPoint(a1, v146, xc, v57, v10, round(a2->_scale * a2->_arrowJoinCornerRadius * a2->_contentScale));
    }

    else
    {
      if (v6 - 8 >= 2)
      {
        goto LABEL_77;
      }

      v43 = *(a3 + 11);
      v44 = md::RoadSignPartMetrics::signMin(a3);
      v10 = v45;
      v46 = md::RoadSignPartMetrics::signMax(a3);
      v48 = v47;
      v49 = *a3;
      v50 = round(a2->_scale * a2->_cornerRadius * a2->_contentScale);
      v52 = *(a3 + 15);
      v51 = *(a3 + 16);
      v133 = *(a3 + 17);
      v135 = *(a3 + 18);
      v139 = *(a3 + 14);
      v144 = *(a3 + 13);
      v53 = v46 + v43;
      v54 = v44 - v43;
      if (v49 == 8)
      {
        v55 = v50 + v44;
      }

      else
      {
        v55 = v46 - v50;
      }

      if (v49 == 8)
      {
        v56 = v44;
      }

      else
      {
        v56 = v46;
      }

      if (v49 == 8)
      {
        v57 = v53;
      }

      else
      {
        v57 = v54;
      }

      v58 = v48 - v50;
      xa = v50 + v10;
      CGContextMoveToPoint(a1, v57, v10);
      CGContextAddLineToPoint(a1, v57, v48);
      CGContextAddLineToPoint(a1, v55, v48);
      CGContextAddQuadCurveToPoint(a1, v56, v48, v56, v58);
      CGContextAddLineToPoint(a1, v52, v51);
      v59 = round(a2->_scale * a2->_arrowTipCornerRadius * a2->_contentScale);
      if (v59 <= 0.0)
      {
        CGContextAddLineToPoint(a1, v133, v135);
        v61 = v139;
        v60 = v144;
      }

      else
      {
        CGContextAddArcToPoint(a1, v133, v135, v144, v139, v59);
        v60 = v144;
        v61 = v139;
      }

      CGContextAddLineToPoint(a1, v60, v61);
      CGContextAddLineToPoint(a1, v56, xa);
      CGContextAddQuadCurveToPoint(a1, v56, v10, v55, v10);
    }

    v26 = a1;
    v27 = v57;
    goto LABEL_75;
  }

  if (v6 - 2 < 2)
  {
    v62 = *(a3 + 11);
    v63 = md::RoadSignPartMetrics::signMin(a3) - v62;
    md::RoadSignPartMetrics::signMin(a3);
    v65 = v64;
    v66 = md::RoadSignPartMetrics::signMax(a3) + v62;
    md::RoadSignPartMetrics::signMax(a3);
    v68 = v67;
    v70 = *(a3 + 17);
    v69 = *(a3 + 18);
    v140 = *(a3 + 13);
    v145 = *(a3 + 14);
    v71 = *(a3 + 15);
    v72 = *(a3 + 16);
    v73 = *a3;
    CGContextMoveToPoint(a1, v63, v65);
    CGContextAddLineToPoint(a1, v63, v68);
    if (v73 == 2)
    {
      CGContextAddLineToPoint(a1, v66, v68);
      CGContextAddLineToPoint(a1, v66, v65);
      CGContextAddArcToPoint(a1, v71, v72, v70, v69, round(a2->_scale * a2->_arrowJoinCornerRadius * a2->_contentScale));
      CGContextAddArcToPoint(a1, v70, v69, v140, v145, round(a2->_scale * a2->_arrowTipCornerRadius * a2->_contentScale));
      CGContextAddArcToPoint(a1, v140, v145, v63, v65, round(a2->_scale * a2->_arrowJoinCornerRadius * a2->_contentScale));
      v26 = a1;
      v27 = v63;
    }

    else
    {
      CGContextAddArcToPoint(a1, v140, v145, v70, v69, round(a2->_scale * a2->_arrowJoinCornerRadius * a2->_contentScale));
      CGContextAddArcToPoint(a1, v70, v69, v71, v72, round(a2->_scale * a2->_arrowTipCornerRadius * a2->_contentScale));
      CGContextAddArcToPoint(a1, v71, v72, v66, v68, round(a2->_scale * a2->_arrowJoinCornerRadius * a2->_contentScale));
      CGContextAddLineToPoint(a1, v66, v68);
      v26 = a1;
      v27 = v66;
    }

    v74 = v65;
    goto LABEL_76;
  }

  if (v6 - 4 < 2)
  {
    v28 = *(a3 + 11);
    v29 = md::RoadSignPartMetrics::signMin(a3);
    v31 = v30;
    v32 = md::RoadSignPartMetrics::signMax(a3);
    v34 = v33;
    v35 = *a3;
    v36 = round(a2->_scale * a2->_cornerRadius * a2->_contentScale);
    v37 = v32 + v28;
    v38 = v29 - v28;
    if (v35 == 4)
    {
      v39 = v36 + v29;
    }

    else
    {
      v39 = v32 - v36;
    }

    if (v35 == 4)
    {
      v40 = v37;
    }

    else
    {
      v29 = v32;
      v40 = v38;
    }

    v41 = v34 - v36;
    v42 = v36 + v31;
    CGContextMoveToPoint(a1, v40, v31);
    CGContextAddLineToPoint(a1, v40, v34);
    CGContextAddLineToPoint(a1, v39, v34);
    CGContextAddQuadCurveToPoint(a1, v29, v34, v29, v41);
    CGContextAddLineToPoint(a1, v29, v42);
    CGContextAddQuadCurveToPoint(a1, v29, v31, v39, v31);
    goto LABEL_77;
  }

  if (v6 == 1)
  {
    v75 = *(a3 + 11);
    v76 = md::RoadSignPartMetrics::signMin(a3) - v75;
    md::RoadSignPartMetrics::signMin(a3);
    v78 = v77;
    v79 = md::RoadSignPartMetrics::signMax(a3) + v75;
    md::RoadSignPartMetrics::signMax(a3);
    v81 = v80;
    CGContextMoveToPoint(a1, v76, v78);
    CGContextAddLineToPoint(a1, v76, v81);
    CGContextAddLineToPoint(a1, v79, v81);
    v26 = a1;
    v27 = v79;
    v74 = v78;
LABEL_76:
    CGContextAddLineToPoint(v26, v27, v74);
  }

LABEL_77:
  CGContextClosePath(a1);

  CGContextRestoreGState(a1);
}

void md::Logic<md::TransitLogic,md::TransitContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::SceneContext>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2, v3);
}

void md::TransitLogic::runBeforeLayout(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = a1;
  v154 = *MEMORY[0x1E69E9840];
  v6 = *a3;
  v7 = a3[1];
  v123 = (a1 + 232);
  if (a1 + 232 == a4)
  {
    *(a4 + 224) = *(a1 + 456);
  }

  else
  {
    *(a4 + 48) = *(a1 + 280);
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<unsigned long long,void *> *>>(a4, *(a1 + 256));
    *(a4 + 104) = *(a1 + 336);
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<unsigned long long,void *> *>>((a4 + 56), *(a1 + 312));
    *(a4 + 160) = *(a1 + 392);
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<unsigned long long,void *> *>>((a4 + 112), *(a1 + 368));
    *(a4 + 216) = *(a1 + 448);
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<unsigned long long,void *> *>>((a4 + 168), *(a1 + 424));
    *(a4 + 224) = *(a1 + 456);
    *(a4 + 264) = *(a1 + 496);
    std::__hash_table<std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>,void *> *>>((a4 + 232), *(a1 + 480));
    *(a4 + 304) = *(a1 + 536);
    std::__hash_table<std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>,void *> *>>((a4 + 272), *(a1 + 520));
    v5 = a1;
  }

  *(a4 + 312) = *(v5 + 544);
  *(v5 + 552) = v6[365];
  *(v5 + 560) = v6[366];
  *(v5 + 568) = v6[367];
  *(v5 + 576) = v6[368];
  v8 = md::SceneContext::layerDataInView(v7, 16);
  v9 = md::SceneContext::layerDataInView(v7, 17);
  v131 = 0;
  v132 = 0;
  v129[1] = 0;
  v130 = &v131;
  v128 = v129;
  v129[0] = 0;
  v10 = v8 + 1;
  v12 = *(v5 + 120);
  v11 = v5 + 120;
  v147[0] = *v8;
  *&v142 = v8 + 1;
  *&v138 = v12;
  *&v133 = v11 + 8;
  v148[0].n128_u64[0] = &v130;
  v148[0].n128_u64[1] = &v131;
  std::__set_difference[abi:nn200100]<std::__less<void,void>,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::insert_iterator<std::set<gdc::LayerDataWithWorld>> &>(&v149, v147, &v142, &v138, &v133, v148);
  v14 = a1 + 144;
  v13 = *(a1 + 144);
  v147[0] = *v9;
  *&v142 = v9 + 1;
  *&v138 = v13;
  *&v133 = a1 + 152;
  v148[0].n128_u64[0] = &v128;
  v148[0].n128_u64[1] = v129;
  std::__set_difference[abi:nn200100]<std::__less<void,void>,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::insert_iterator<std::set<gdc::LayerDataWithWorld>> &>(&v149, v147, &v142, &v138, &v133, v148);
  if (v11 != v8)
  {
    std::__tree<gdc::LayerDataWithWorld>::__assign_multi<std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long>>(v11, *v8, v8 + 1);
  }

  if (v14 != v9)
  {
    std::__tree<gdc::LayerDataWithWorld>::__assign_multi<std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long>>(v14, *v9, v9 + 1);
  }

  v15 = (a1 + 168);
  *(a1 + 176) = *(a1 + 168);
  std::vector<md::Label *>::reserve((a1 + 168), v8[2]);
  v16 = *v8;
  v17 = a1;
  if (*v8 != v10)
  {
    v18 = *(a1 + 176);
    do
    {
      v19 = v16[4];
      v20 = *(v17 + 184);
      if (v18 >= v20)
      {
        v21 = (v18 - *v15) >> 3;
        if ((v21 + 1) >> 61)
        {
LABEL_165:
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v22 = v20 - *v15;
        v23 = v22 >> 2;
        if (v22 >> 2 <= (v21 + 1))
        {
          v23 = v21 + 1;
        }

        if (v22 >= 0x7FFFFFFFFFFFFFF8)
        {
          v24 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v24 = v23;
        }

        if (v24)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v24);
        }

        *(8 * v21) = v19;
        v18 = (8 * v21 + 8);
        v25 = *(a1 + 168);
        v26 = *(a1 + 176) - v25;
        v27 = (8 * v21 - v26);
        memcpy(v27, v25, v26);
        v28 = *(a1 + 168);
        *(a1 + 168) = v27;
        *(a1 + 176) = v18;
        *(a1 + 184) = 0;
        if (v28)
        {
          operator delete(v28);
        }

        v17 = a1;
      }

      else
      {
        *v18++ = v19;
      }

      *(v17 + 176) = v18;
      v29 = v16[1];
      if (v29)
      {
        do
        {
          v30 = v29;
          v29 = *v29;
        }

        while (v29);
      }

      else
      {
        do
        {
          v30 = v16[2];
          v31 = *v30 == v16;
          v16 = v30;
        }

        while (!v31);
      }

      v16 = v30;
    }

    while (v30 != v10);
  }

  __p = 0;
  v126 = 0;
  v127 = 0;
  std::vector<md::Label *>::reserve(&__p, v132);
  v32 = v130;
  v33 = a1;
  if (v130 != &v131)
  {
    v34 = v126;
    do
    {
      v35 = v32[4];
      if (v34 >= v127)
      {
        v36 = __p;
        v37 = v34 - __p;
        v38 = (v34 - __p) >> 3;
        v39 = v38 + 1;
        if ((v38 + 1) >> 61)
        {
          goto LABEL_165;
        }

        v40 = v127 - __p;
        if ((v127 - __p) >> 2 > v39)
        {
          v39 = v40 >> 2;
        }

        if (v40 >= 0x7FFFFFFFFFFFFFF8)
        {
          v41 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v41 = v39;
        }

        if (v41)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v41);
        }

        v42 = (8 * v38);
        *v42 = v35;
        v34 = (v42 + 1);
        memcpy(0, v36, v37);
        __p = 0;
        v127 = 0;
        if (v36)
        {
          operator delete(v36);
        }

        v33 = a1;
      }

      else
      {
        *v34 = v35;
        v34 += 8;
      }

      v126 = v34;
      v43 = v32[1];
      if (v43)
      {
        do
        {
          v44 = v43;
          v43 = *v43;
        }

        while (v43);
      }

      else
      {
        do
        {
          v44 = v32[2];
          v31 = *v44 == v32;
          v32 = v44;
        }

        while (!v31);
      }

      v32 = v44;
    }

    while (v44 != &v131);
  }

  v45 = v128;
  if (v128 == v129)
  {
    v46 = v126;
  }

  else
  {
    v46 = v126;
    do
    {
      v47 = v45[4];
      if (v46 >= v127)
      {
        v48 = __p;
        v49 = v46 - __p;
        v50 = (v46 - __p) >> 3;
        v51 = v50 + 1;
        if ((v50 + 1) >> 61)
        {
          goto LABEL_165;
        }

        v52 = v127 - __p;
        if ((v127 - __p) >> 2 > v51)
        {
          v51 = v52 >> 2;
        }

        if (v52 >= 0x7FFFFFFFFFFFFFF8)
        {
          v53 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v53 = v51;
        }

        if (v53)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v53);
        }

        v54 = (8 * v50);
        *v54 = v47;
        v46 = (v54 + 1);
        memcpy(0, v48, v49);
        __p = 0;
        v127 = 0;
        if (v48)
        {
          operator delete(v48);
        }

        v33 = a1;
      }

      else
      {
        *v46 = v47;
        v46 += 8;
      }

      v126 = v46;
      v55 = v45[1];
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
          v56 = v45[2];
          v31 = *v56 == v45;
          v45 = v56;
        }

        while (!v31);
      }

      v45 = v56;
    }

    while (v56 != v129);
  }

  *(v33 + 456) = 0;
  v57 = __p;
  if (__p != v46)
  {
    do
    {
      v58 = *v57;
      if (*(v33 + 272))
      {
        v59 = *(v33 + 440);
        md::TransitTileData::appendNodesAttachedToLines(*v57, *(v33 + 256), (v33 + 400));
        md::TransitTileData::setSelectedLines(v58, v123);
        md::TransitTileData::setSelectedNodes(*&v58[122], *&v58[123], (a1 + 400));
        v33 = a1;
        if (*(a1 + 440) > v59)
        {
          *(a1 + 456) = 1;
        }
      }

      else
      {
        v149 = 0;
        v150 = 0;
        v152 = 0;
        memset(v151, 0, sizeof(v151));
        v153 = 1065353216;
        md::TransitTileData::setSelectedLines(v58, &v149);
        std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__deallocate_node(0);
        v60 = v58[122];
        v61 = v58[123];
        v149 = 0;
        v150 = 0;
        v152 = 0;
        memset(v151, 0, sizeof(v151));
        v153 = 1065353216;
        md::TransitTileData::setSelectedNodes(v60, v61, &v149);
        std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__deallocate_node(*&v151[7]);
        v63 = v149;
        if (v149)
        {
          v64 = mdm::zone_mallocator::instance(v62);
          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *>(v64, v63);
        }

        v33 = a1;
      }

      ++v57;
    }

    while (v57 != v46);
  }

  if (*(v33 + 216) == 1)
  {
    v66 = *(v33 + 504);
    v65 = *(v33 + 512);
    *(v33 + 504) = *(v33 + 464);
    v67 = (v33 + 480);
    v68 = *(v33 + 520);
    v70 = *(v33 + 480);
    v69 = *(v33 + 488);
    v71 = *(v33 + 528);
    v72 = *(v33 + 496);
    v73 = *(v33 + 536);
    *(v33 + 464) = v66;
    *(v33 + 472) = v65;
    *(v33 + 520) = v70;
    *(v33 + 480) = v68;
    *(v33 + 488) = v71;
    *(v33 + 528) = v69;
    *(v33 + 496) = v73;
    *(v33 + 536) = v72;
    if (v71)
    {
      v74 = *(v68 + 8);
      if ((v65 & (v65 - 1)) != 0)
      {
        if (v74 >= v65)
        {
          v74 %= v65;
        }
      }

      else
      {
        v74 &= v65 - 1;
      }

      *(v66 + 8 * v74) = v67;
    }

    if (v69)
    {
      v75 = *(*(v33 + 520) + 8);
      v76 = *(v33 + 512);
      if ((v76 & (v76 - 1)) != 0)
      {
        if (v75 >= v76)
        {
          v75 %= v76;
        }
      }

      else
      {
        v75 &= v76 - 1;
      }

      *(*(v33 + 504) + 8 * v75) = v33 + 520;
    }

    if (v71)
    {
      v77 = *v67;
      if (*v67)
      {
        do
        {
          v78 = *v77;
          operator delete(v77);
          v77 = v78;
        }

        while (v78);
        v33 = a1;
        v65 = *(a1 + 472);
      }

      else
      {
        v33 = a1;
      }

      *v67 = 0;
      if (v65)
      {
        for (i = 0; i != v65; ++i)
        {
          *(*(v33 + 464) + 8 * i) = 0;
        }
      }

      *(v33 + 488) = 0;
    }

    *(v33 + 544) = 1;
    v80 = *(v33 + 200);
    v81 = [v80 routeInfo];
    v124 = [v81 route];

    v119 = [v124 stations];
    v144 = 0u;
    v145 = 0u;
    v142 = 0u;
    v143 = 0u;
    obj = [v124 segments];
    v115 = [obj countByEnumeratingWithState:&v142 objects:&v149 count:16];
    if (v115)
    {
      v114 = *v143;
      do
      {
        for (j = 0; j != v115; ++j)
        {
          if (*v143 != v114)
          {
            objc_enumerationMutation(obj);
          }

          v82 = *(*(&v142 + 1) + 8 * j);
          if ([v82 type] == 6)
          {
            v83 = [v82 stepCount];
            v140 = 0u;
            v141 = 0u;
            v138 = 0u;
            v139 = 0u;
            v122 = [v82 steps];
            v84 = [v122 countByEnumeratingWithState:&v138 objects:v148 count:16];
            if (!v84)
            {
              goto LABEL_158;
            }

            v85 = *v139;
            v86 = 1;
            v117 = v83 - 2;
            v118 = -1;
            while (1)
            {
              v87 = 0;
              v120 = v117 - v118;
              v118 += v84;
              do
              {
                if (*v139 != v85)
                {
                  objc_enumerationMutation(v122);
                }

                v88 = *(*(&v138 + 1) + 8 * v87);
                v89 = [v88 transitStep];
                v90 = [v88 originStop];
                v91 = [v124 getStationForStop:v90];
                if ([v91 hasMuid])
                {
                  if ([v89 vehicleInfosCount])
                  {
                    v92 = [v89 vehicleInfos];
                    v93 = [v92 objectAtIndexedSubscript:0];

                    v94 = [v93 pickupDropoffType] == 100;
                    if (!v90)
                    {
                      goto LABEL_134;
                    }
                  }

                  else
                  {
                    v94 = 0;
                    if (!v90)
                    {
                      goto LABEL_134;
                    }
                  }

                  if (v94)
                  {
                    goto LABEL_134;
                  }

                  v137 = [v91 muid];
                  v146 = &v137;
                  v95 = std::__hash_table<std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>((a1 + 464), v137, &v146);
                  v96 = v95;
                  if (v86 & 1 | (v120 == v87))
                  {
                    v97 = 1;
                    goto LABEL_124;
                  }

                  if (*(v95 + 28) != 1)
                  {
                    v97 = 2;
LABEL_124:
                    *(v95 + 28) = v97;
                  }

                  v98 = [v88 destinationStop];
                  v99 = v98;
                  if (v98 && md::AreTransitStopIndicesEqual(v98, v90) && [v89 hasSignificanceForEndNode])
                  {
                    if (*(v96 + 29) == 1)
                    {
                      v100 = [v89 significanceForEndNode];
                      v101 = *(v96 + 6);
                      if (v101 <= v100)
                      {
                        v101 = v100;
                      }

                      *(v96 + 6) = v101;
                    }

                    else
                    {
                      *(v96 + 6) = [v89 significanceForEndNode];
                      *(v96 + 29) = 1;
                    }
                  }

                  v86 = 0;
                }

LABEL_134:

                ++v87;
              }

              while (v84 != v87);
              v84 = [v122 countByEnumeratingWithState:&v138 objects:v148 count:16];
              if (!v84)
              {
                goto LABEL_158;
              }
            }
          }

          if ([v82 type] == 5)
          {
            v135 = 0u;
            v136 = 0u;
            v133 = 0u;
            v134 = 0u;
            v122 = [v82 steps];
            v102 = [v122 countByEnumeratingWithState:&v133 objects:v147 count:16];
            if (v102)
            {
              v103 = *v134;
              do
              {
                for (k = 0; k != v102; ++k)
                {
                  if (*v134 != v103)
                  {
                    objc_enumerationMutation(v122);
                  }

                  v105 = *(*(&v133 + 1) + 8 * k);
                  v106 = [v105 transitStep];
                  if ([v106 maneuverType] == 7 || objc_msgSend(v106, "maneuverType") == 8)
                  {
                    v107 = [v105 accessPoint];
                    v108 = v107;
                    if (v107 && [v107 hasStationIndex])
                    {
                      v109 = [v119 objectAtIndexedSubscript:{objc_msgSend(v108, "stationIndex")}];
                      if ([v109 hasMuid])
                      {
                        v137 = [v109 muid];
                        v146 = &v137;
                        v110 = std::__hash_table<std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>((a1 + 464), v137, &v146);
                        *(v110 + 28) = 1;
                        if ([v106 hasSignificanceForEndNode])
                        {
                          if (*(v110 + 29) == 1)
                          {
                            v111 = [v106 significanceForEndNode];
                            v112 = *(v110 + 6);
                            if (v112 <= v111)
                            {
                              v112 = v111;
                            }

                            *(v110 + 6) = v112;
                          }

                          else
                          {
                            *(v110 + 6) = [v106 significanceForEndNode];
                            *(v110 + 29) = 1;
                          }
                        }
                      }
                    }
                  }
                }

                v102 = [v122 countByEnumeratingWithState:&v133 objects:v147 count:16];
              }

              while (v102);
            }

LABEL_158:
          }
        }

        v115 = [obj countByEnumeratingWithState:&v142 objects:&v149 count:16];
      }

      while (v115);
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  std::__tree<gdc::LayerDataWithWorld>::destroy(v129[0]);
  std::__tree<gdc::LayerDataWithWorld>::destroy(v131);
}

void sub_1B2E255C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__tree<gdc::LayerDataWithWorld>::destroy(a24);
  std::__tree<gdc::LayerDataWithWorld>::destroy(a27);
  _Unwind_Resume(a1);
}

__n128 std::__set_difference[abi:nn200100]<std::__less<void,void>,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::insert_iterator<std::set<gdc::LayerDataWithWorld>> &>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, __n128 *a6)
{
  v8 = *a2;
  v9 = *a3;
  if (*a2 == *a3)
  {
LABEL_43:
    v35 = *a6;
    goto LABEL_44;
  }

  for (i = *a4; *a4 != *a5; i = *a4)
  {
    v15 = v8[4];
    v16 = *(v8 + 48);
    v17 = v16;
    v18 = *(i + 48);
    v19 = i[4];
    if (v16 == v18 ? v15 < v19 : v16 < v18)
    {
      std::insert_iterator<SceneComponents::LayerDataEnteringView<(md::MapDataType)33>>::operator=[abi:nn200100](a6, (v8 + 4));
      v21 = *a2;
      v22 = *(*a2 + 8);
      if (v22)
      {
        do
        {
          v23 = v22;
          v22 = *v22;
        }

        while (v22);
      }

      else
      {
        do
        {
          v23 = v21[2];
          v24 = *v23 == v21;
          v21 = v23;
        }

        while (!v24);
      }

      *a2 = v23;
    }

    else
    {
      v25 = v19 < v15;
      if (v17 != v18)
      {
        v25 = v18 < v17;
      }

      if (v25)
      {
        v26 = i[1];
        if (v26)
        {
          do
          {
            v27 = v26;
            v26 = *v26;
          }

          while (v26);
        }

        else
        {
          do
          {
            v27 = i[2];
            v24 = *v27 == i;
            i = v27;
          }

          while (!v24);
        }
      }

      else
      {
        v28 = v8[1];
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
            v29 = v8[2];
            v24 = *v29 == v8;
            v8 = v29;
          }

          while (!v24);
        }

        *a2 = v29;
        v30 = *a4;
        v31 = *(*a4 + 8);
        if (v31)
        {
          do
          {
            v27 = v31;
            v31 = *v31;
          }

          while (v31);
        }

        else
        {
          do
          {
            v27 = v30[2];
            v24 = *v27 == v30;
            v30 = v27;
          }

          while (!v24);
        }
      }

      *a4 = v27;
    }

    v8 = *a2;
    v9 = *a3;
    if (*a2 == *a3)
    {
      goto LABEL_43;
    }
  }

  v35 = *a6;
  if (v8 != v9)
  {
    do
    {
      std::insert_iterator<SceneComponents::LayerDataEnteringView<(md::MapDataType)33>>::operator=[abi:nn200100](&v35, (v8 + 4));
      v32 = v8[1];
      if (v32)
      {
        do
        {
          v33 = v32;
          v32 = *v32;
        }

        while (v32);
      }

      else
      {
        do
        {
          v33 = v8[2];
          v24 = *v33 == v8;
          v8 = v33;
        }

        while (!v24);
      }

      v8 = v33;
    }

    while (v33 != v9);
    v8 = v9;
  }

LABEL_44:
  result = v35;
  *a1 = v8;
  *(a1 + 8) = result;
  return result;
}

void std::__tree<gdc::LayerDataWithWorld>::__assign_multi<std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long>>(uint64_t a1, void *a2, void *a3)
{
  if (!*(a1 + 16))
  {
    goto LABEL_38;
  }

  v6 = *a1;
  v8 = (a1 + 8);
  v7 = *(a1 + 8);
  *a1 = a1 + 8;
  *(v7 + 16) = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  if (v6[1])
  {
    v9 = v6[1];
  }

  else
  {
    v9 = v6;
  }

  if (!v9)
  {
    v12 = 0;
LABEL_37:
    std::__tree<gdc::LayerDataWithWorld>::destroy(v12);
    goto LABEL_38;
  }

  v10 = std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::_DetachedTreeCache::__detach_next(v9);
  if (a2 == a3)
  {
    v11 = v9;
  }

  else
  {
    v13 = a2;
    do
    {
      v11 = v10;
      v15 = v13[4];
      v14 = v13[5];
      if (v14)
      {
        atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
      }

      v16 = *(v9 + 40);
      *(v9 + 32) = v15;
      *(v9 + 40) = v14;
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v16);
      }

      v17 = *(v13 + 48);
      *(v9 + 48) = *(v13 + 48);
      v18 = *v8;
      v19 = (a1 + 8);
      v20 = (a1 + 8);
      if (*v8)
      {
        do
        {
          while (1)
          {
            v19 = v18;
            v21 = *(v18 + 48);
            if (!(v17 == v21 ? *(v9 + 32) < v19[4] : v17 < v21))
            {
              break;
            }

            v18 = *v19;
            v20 = v19;
            if (!*v19)
            {
              goto LABEL_23;
            }
          }

          v18 = v19[1];
        }

        while (v18);
        v20 = v19 + 1;
      }

LABEL_23:
      std::__tree<unsigned short>::__insert_node_at(a1, v19, v20, v9);
      if (v10)
      {
        v10 = std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::_DetachedTreeCache::__detach_next(v10);
      }

      else
      {
        v10 = 0;
      }

      v23 = v13[1];
      if (v23)
      {
        do
        {
          a2 = v23;
          v23 = *v23;
        }

        while (v23);
      }

      else
      {
        do
        {
          a2 = v13[2];
          v24 = *a2 == v13;
          v13 = a2;
        }

        while (!v24);
      }

      if (!v11)
      {
        break;
      }

      v9 = v11;
      v13 = a2;
    }

    while (a2 != a3);
  }

  std::__tree<gdc::LayerDataWithWorld>::destroy(v11);
  if (v10)
  {
    for (i = v10[2]; i; i = i[2])
    {
      v10 = i;
    }

    v12 = v10;
    goto LABEL_37;
  }

LABEL_38:
  if (a2 != a3)
  {
    operator new();
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(float *a1, unint64_t a2, void **a3)
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

void std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<unsigned long long,void *> *>>(mdm::zone_mallocator **result, void *a2)
{
  v2 = a2;
  v3 = result;
  v4 = result[1];
  if (v4)
  {
    for (i = 0; i != v4; i = (i + 1))
    {
      *(*result + i) = 0;
    }

    result[5] = 0;
    v6 = result[3];
    result[3] = 0;
    if (v6)
    {
      v7 = a2 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v8 = v6;
    }

    else
    {
      do
      {
        v9 = v2[2];
        *(v6 + 2) = v9;
        v8 = *v6;
        *(v6 + 1) = v9;
        inserted = std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__node_insert_multi_prepare(v3, v9, v6 + 2);
        std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__node_insert_multi_perform(v3, v6, inserted);
        v2 = *v2;
        if (v8)
        {
          v11 = v2 == 0;
        }

        else
        {
          v11 = 1;
        }

        v6 = v8;
      }

      while (!v11);
    }

    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__deallocate_node(v8);
  }

  for (; v2; v2 = *v2)
  {
    v12 = mdm::zone_mallocator::instance(result);
    v13 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__hash_node<unsigned long long,void *>>(v12);
    *v13 = 0;
    v13[1] = 0;
    v14 = v2[2];
    v13[2] = v14;
    v13[1] = v14;
    v15 = std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__node_insert_multi_prepare(v3, v14, v13 + 2);
    result = std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__node_insert_multi_perform(v3, v13, v15);
  }
}

void sub_1B2E26120(mdm::zone_mallocator *a1)
{
  v3 = mdm::zone_mallocator::instance(a1);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<unsigned long long,void *>>(v3, v1);
  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>,void *> *>>(void *a1, uint64_t *a2)
{
  v4 = a1[1];
  if (!v4)
  {
    goto LABEL_7;
  }

  for (i = 0; i != v4; ++i)
  {
    *(*a1 + 8 * i) = 0;
  }

  v6 = a1[2];
  a1[2] = 0;
  a1[3] = 0;
  if (v6)
  {
    while (a2)
    {
      v7 = a2[2];
      v6[2] = v7;
      v8 = *(a2 + 6);
      *(v6 + 14) = *(a2 + 14);
      *(v6 + 6) = v8;
      v9 = *v6;
      v6[1] = v7;
      inserted = std::__hash_table<std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>>>::__node_insert_multi_prepare(a1, v7, v6 + 2);
      std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::__node_insert_multi_perform(a1, v6, inserted);
      a2 = *a2;
      v6 = v9;
      if (!v9)
      {
        goto LABEL_7;
      }
    }

    do
    {
      v11 = *v6;
      operator delete(v6);
      v6 = v11;
    }

    while (v11);
  }

  else
  {
LABEL_7:
    if (a2)
    {
      operator new();
    }
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>>>::__node_insert_multi_prepare(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 1;
    if (v6 >= 3)
    {
      v9 = (v6 & (v6 - 1)) != 0;
    }

    v10 = v9 | (2 * v6);
    v11 = vcvtps_u32_f32(v7 / v8);
    if (v10 <= v11)
    {
      prime = v11;
    }

    else
    {
      prime = v10;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v6 = *(a1 + 8);
    }

    if (prime > v6)
    {
LABEL_13:
      if (!(prime >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    if (prime < v6)
    {
      v13 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v6 < 3 || (v14 = vcnt_s8(v6), v14.i16[0] = vaddlv_u8(v14), v14.u32[0] > 1uLL))
      {
        v13 = std::__next_prime(v13);
      }

      else
      {
        v15 = 1 << -__clz(v13 - 1);
        if (v13 >= 2)
        {
          v13 = v15;
        }
      }

      if (prime <= v13)
      {
        prime = v13;
      }

      if (prime >= v6)
      {
        v6 = *(a1 + 8);
      }

      else
      {
        if (prime)
        {
          goto LABEL_13;
        }

        v26 = *a1;
        *a1 = 0;
        if (v26)
        {
          operator delete(v26);
        }

        v6 = 0;
        *(a1 + 8) = 0;
      }
    }
  }

  v16 = vcnt_s8(v6);
  v16.i16[0] = vaddlv_u8(v16);
  if (v16.u32[0] > 1uLL)
  {
    v17 = a2;
    if (v6 <= a2)
    {
      v17 = a2 % v6;
    }
  }

  else
  {
    v17 = (v6 - 1) & a2;
  }

  v18 = *(*a1 + 8 * v17);
  if (!v18)
  {
    return 0;
  }

  v19 = 0;
  do
  {
    result = v18;
    v18 = *v18;
    if (!v18)
    {
      break;
    }

    v21 = v18[1];
    if (v16.u32[0] > 1uLL)
    {
      v22 = v18[1];
      if (v21 >= v6)
      {
        v22 = v21 % v6;
      }
    }

    else
    {
      v22 = v21 & (v6 - 1);
    }

    if (v22 != v17)
    {
      break;
    }

    v23 = v21 == a2 && v18[2] == *a3;
    v24 = v23 != (v19 & 1);
    v25 = v19 & v24;
    v19 |= v24;
  }

  while (v25 != 1);
  return result;
}

void *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__node_insert_multi_prepare(unint64_t prime, unint64_t a2, void *a3)
{
  v5 = prime;
  v6 = *(prime + 8);
  v7 = (*(prime + 40) + 1);
  v8 = *(prime + 48);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 1;
    if (v6 >= 3)
    {
      v9 = (v6 & (v6 - 1)) != 0;
    }

    v10 = v9 | (2 * v6);
    v11 = vcvtps_u32_f32(v7 / v8);
    if (v10 <= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    if (*&v12 == 1)
    {
      v12 = 2;
    }

    else if ((*&v12 & (*&v12 - 1)) != 0)
    {
      prime = std::__next_prime(*&v12);
      v12 = prime;
      v6 = *(v5 + 8);
    }

    if (*&v12 <= v6)
    {
      if (*&v12 >= v6)
      {
        goto LABEL_40;
      }

      prime = vcvtps_u32_f32(*(v5 + 40) / *(v5 + 48));
      if (v6 < 3 || (v19 = vcnt_s8(v6), v19.i16[0] = vaddlv_u8(v19), v19.u32[0] > 1uLL))
      {
        prime = std::__next_prime(prime);
      }

      else
      {
        v20 = 1 << -__clz(prime - 1);
        if (prime >= 2)
        {
          prime = v20;
        }
      }

      if (*&v12 <= prime)
      {
        v12 = prime;
      }

      if (*&v12 >= v6)
      {
        v6 = *(v5 + 8);
        goto LABEL_40;
      }

      if (!*&v12)
      {
        std::unique_ptr<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> **,0>(v5, 0);
        v6 = 0;
        *(v5 + 8) = 0;
        goto LABEL_40;
      }
    }

    v13 = mdm::zone_mallocator::instance(prime);
    v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *>(v13, *&v12);
    std::unique_ptr<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> **,0>(v5, v14);
    v15 = 0;
    *(v5 + 8) = v12;
    do
    {
      *(*v5 + 8 * v15++) = 0;
    }

    while (*&v12 != v15);
    v16 = *(v5 + 24);
    if (v16)
    {
      v17 = v16[1];
      v18 = vcnt_s8(v12);
      v18.i16[0] = vaddlv_u8(v18);
      if (v18.u32[0] > 1uLL)
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

      *(*v5 + 8 * v17) = v5 + 24;
      for (i = *v16; *v16; i = *v16)
      {
        v22 = i[1];
        if (v18.u32[0] > 1uLL)
        {
          if (v22 >= *&v12)
          {
            v22 %= *&v12;
          }
        }

        else
        {
          v22 &= *&v12 - 1;
        }

        if (v22 == v17)
        {
          v16 = i;
        }

        else
        {
          v23 = *v5;
          v24 = i;
          if (*(*v5 + 8 * v22))
          {
            do
            {
              v25 = v24;
              v24 = *v24;
            }

            while (v24 && i[2] == v24[2]);
            *v16 = v24;
            *v25 = **(v23 + 8 * v22);
            **(v23 + 8 * v22) = i;
          }

          else
          {
            *(v23 + 8 * v22) = v16;
            v16 = i;
            v17 = v22;
          }
        }
      }
    }

    v6 = v12;
  }

LABEL_40:
  v26 = vcnt_s8(v6);
  v26.i16[0] = vaddlv_u8(v26);
  if (v26.u32[0] > 1uLL)
  {
    v27 = a2;
    if (v6 <= a2)
    {
      v27 = a2 % v6;
    }
  }

  else
  {
    v27 = (v6 - 1) & a2;
  }

  v28 = *(*v5 + 8 * v27);
  if (!v28)
  {
    return 0;
  }

  v29 = 0;
  do
  {
    result = v28;
    v28 = *v28;
    if (!v28)
    {
      break;
    }

    v31 = v28[1];
    if (v26.u32[0] > 1uLL)
    {
      v32 = v28[1];
      if (v31 >= v6)
      {
        v32 = v31 % v6;
      }
    }

    else
    {
      v32 = v31 & (v6 - 1);
    }

    if (v32 != v27)
    {
      break;
    }

    v33 = v31 == a2 && v28[2] == *a3;
    v34 = v33 != (v29 & 1);
    v35 = v29 & v34;
    v29 |= v34;
  }

  while (v35 != 1);
  return result;
}

void *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__node_insert_multi_perform(void *result, void *a2, void *a3)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  if (!a3)
  {
    *a2 = result[3];
    result[3] = a2;
    *(*result + 8 * v4) = result + 3;
    if (!*a2)
    {
      goto LABEL_19;
    }

    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

LABEL_18:
    *(*result + 8 * v6) = a2;
    goto LABEL_19;
  }

  *a2 = *a3;
  *a3 = a2;
  if (*a2)
  {
    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

    if (v6 != v4)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  ++result[5];
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__hash_node<unsigned long long,void *>>(uint64_t a1)
{
  v2 = pthread_rwlock_rdlock((a1 + 32));
  if (v2)
  {
    geo::read_write_lock::logFailure(v2, "read lock", v3);
  }

  v4 = malloc_type_zone_malloc(*a1, 0x18uLL, 0x102004024DAA5DEuLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v4;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *>(uint64_t a1, uint64_t a2)
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

void std::unique_ptr<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> **,0>(mdm::zone_mallocator *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *>(v3, v2);
  }
}

uint64_t md::Logic<md::TransitLogic,md::TransitContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::SceneContext>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xFD5D5EC7C4E1E43ELL && (v4 = *(a3 + 32)) != 0)
  {
    v6 = result;
    v8[0] = md::LogicDependencies<gdc::TypeList<md::CameraContext,md::SceneContext>,gdc::TypeList<>>::buildRequiredTuple<md::CameraContext,md::SceneContext>(*(a2 + 8));
    v8[1] = v7;
    return (*(*v6 + 160))(v6, a2, v8, v4);
  }

  else
  {
    a4[23] = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t md::Logic<md::TransitLogic,md::TransitContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::SceneContext>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xFD5D5EC7C4E1E43ELL)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7[0] = md::LogicDependencies<gdc::TypeList<md::CameraContext,md::SceneContext>,gdc::TypeList<>>::buildRequiredTuple<md::CameraContext,md::SceneContext>(*(a2 + 8));
      v7[1] = v6;
      return (*(*v5 + 152))(v5, a2, v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::TransitLogic,md::TransitContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::SceneContext>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xFD5D5EC7C4E1E43ELL)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7[0] = md::LogicDependencies<gdc::TypeList<md::CameraContext,md::SceneContext>,gdc::TypeList<>>::buildRequiredTuple<md::CameraContext,md::SceneContext>(*(a2 + 8));
      v7[1] = v6;
      return (*(*v5 + 144))(v5, a2, v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::TransitLogic,md::TransitContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::SceneContext>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xFD5D5EC7C4E1E43ELL)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7[0] = md::LogicDependencies<gdc::TypeList<md::CameraContext,md::SceneContext>,gdc::TypeList<>>::buildRequiredTuple<md::CameraContext,md::SceneContext>(*(a2 + 8));
      v7[1] = v6;
      return (*(*v5 + 136))(v5, a2, v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::TransitLogic,md::TransitContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::SceneContext>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xFD5D5EC7C4E1E43ELL)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7[0] = md::LogicDependencies<gdc::TypeList<md::CameraContext,md::SceneContext>,gdc::TypeList<>>::buildRequiredTuple<md::CameraContext,md::SceneContext>(*(a2 + 8));
      v7[1] = v6;
      return (*(*v5 + 128))(v5, a2, v7, v3);
    }
  }

  return result;
}

void sub_1B2E2713C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, mdm::zone_mallocator *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, mdm::zone_mallocator *a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, mdm::zone_mallocator *a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, mdm::zone_mallocator *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&a44);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&a39);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__deallocate_node(a34);
  if (a31)
  {
    v48 = mdm::zone_mallocator::instance(v47);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *>(v48, a31);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__deallocate_node(a27);
  if (a24)
  {
    v50 = mdm::zone_mallocator::instance(v49);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *>(v50, a24);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__deallocate_node(a20);
  if (a17)
  {
    v52 = mdm::zone_mallocator::instance(v51);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *>(v52, a17);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__deallocate_node(a13);
  if (a10)
  {
    v54 = mdm::zone_mallocator::instance(v53);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *>(v54, a10);
  }

  MEMORY[0x1B8C62190](v44, v45);
  _Unwind_Resume(a1);
}

uint64_t gdc::ObjectHolder<md::TransitContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::TransitContext>::~ManagedObjectHolder(void *a1)
{
  gdc::ManagedObjectHolder<md::TransitContext>::~ManagedObjectHolder(a1);

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::TransitContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A041C8;
  v2 = a1[4];
  if (v2)
  {
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((v2 + 34));
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((v2 + 29));
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__deallocate_node(v2[24]);
    std::unique_ptr<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100]((v2 + 21));
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__deallocate_node(v2[17]);
    std::unique_ptr<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100]((v2 + 14));
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__deallocate_node(v2[10]);
    std::unique_ptr<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100]((v2 + 7));
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__deallocate_node(v2[3]);
    v3 = std::unique_ptr<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100](v2);
    MEMORY[0x1B8C62190](v3, 0x10A0C406878C016);
  }

  return a1;
}

void md::TransitLogic::didBecomeInactive(md::TransitLogic *this)
{
  v1 = this;
  *(this + 22) = *(this + 21);
  v2 = (this + 128);
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(this + 16));
  v3 = *(v1 + 19);
  v1 = (v1 + 152);
  *(v1 - 4) = v2;
  *v2 = 0;
  *(v1 - 2) = 0;
  std::__tree<gdc::LayerDataWithWorld>::destroy(v3);
  *v1 = 0;
  *(v1 + 1) = 0;
  *(v1 - 1) = v1;
}

void md::TransitLogic::~TransitLogic(md::TransitLogic *this)
{
  md::TransitLogic::~TransitLogic(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A04058;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 504);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 464);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__deallocate_node(*(this + 53));
  std::unique_ptr<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100]((this + 400));
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__deallocate_node(*(this + 46));
  std::unique_ptr<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100]((this + 344));
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__deallocate_node(*(this + 39));
  std::unique_ptr<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100]((this + 288));
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__deallocate_node(*(this + 32));
  std::unique_ptr<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100]((this + 232));
  *(this + 24) = &unk_1F2A580E8;

  v2 = *(this + 21);
  if (v2)
  {
    *(this + 22) = v2;
    operator delete(v2);
  }

  std::__tree<gdc::LayerDataWithWorld>::destroy(*(this + 19));
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(this + 16));
  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

void std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__rehash<true>(mdm::zone_mallocator *result, size_t __n)
{
  v2 = result;
  if (__n == 1)
  {
    v3 = 2;
  }

  else
  {
    v3 = __n;
    if ((__n & (__n - 1)) != 0)
    {
      result = std::__next_prime(__n);
      v3 = result;
    }
  }

  v4 = *(v2 + 8);
  if (v3 <= *&v4)
  {
    if (v3 >= *&v4)
    {
      return;
    }

    result = vcvtps_u32_f32(*(v2 + 5) / *(v2 + 12));
    if (*&v4 < 3uLL || (v11 = vcnt_s8(v4), v11.i16[0] = vaddlv_u8(v11), v11.u32[0] > 1uLL))
    {
      result = std::__next_prime(result);
    }

    else
    {
      v12 = (1 << -__clz(result - 1));
      if (result >= 2)
      {
        result = v12;
      }
    }

    if (v3 <= result)
    {
      v3 = result;
    }

    if (v3 >= *&v4)
    {
      return;
    }

    if (!v3)
    {
      std::unique_ptr<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> **,0>(v2, 0);
      *(v2 + 1) = 0;
      return;
    }
  }

  v5 = mdm::zone_mallocator::instance(result);
  v6 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *>(v5, v3);
  std::unique_ptr<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> **,0>(v2, v6);
  v7 = 0;
  *(v2 + 1) = v3;
  do
  {
    *(*v2 + 8 * v7++) = 0;
  }

  while (v3 != v7);
  v8 = *(v2 + 3);
  if (v8)
  {
    v9 = v8[1];
    v10 = vcnt_s8(v3);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      if (v9 >= v3)
      {
        v9 %= v3;
      }
    }

    else
    {
      v9 &= v3 - 1;
    }

    *(*v2 + 8 * v9) = v2 + 24;
    v13 = *v8;
    if (*v8)
    {
      do
      {
        v14 = v13[1];
        if (v10.u32[0] > 1uLL)
        {
          if (v14 >= v3)
          {
            v14 %= v3;
          }
        }

        else
        {
          v14 &= v3 - 1;
        }

        if (v14 != v9)
        {
          v15 = *v2;
          if (!*(*v2 + 8 * v14))
          {
            *(v15 + 8 * v14) = v8;
            goto LABEL_28;
          }

          *v8 = *v13;
          *v13 = **(v15 + 8 * v14);
          **(v15 + 8 * v14) = v13;
          v13 = v8;
        }

        v14 = v9;
LABEL_28:
        v8 = v13;
        v13 = *v13;
        v9 = v14;
      }

      while (v13);
    }
  }
}

void md::TransitLogic::setSelectedLines(md::TransitLogic *this, VKTransitLineMarker *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  v29[0] = 0;
  v29[1] = 0;
  v30[0] = 0;
  v31 = 0;
  *(v30 + 7) = 0;
  v32 = 1065353216;
  if (v3 && [(VKTransitLineMarker *)v3 featureID])
  {
    v28 = [(VKTransitLineMarker *)v4 featureID];
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__emplace_unique_key_args<unsigned long long,unsigned long long>(v29, v28, &v28);
  }

  if ((this + 232) != v29)
  {
    *(this + 70) = v32;
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<unsigned long long,void *> *>>(this + 29, *(v30 + 7));
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::clear(this + 50);
  v5 = *(this + 21);
  v6 = *(this + 22);
  if (v5 != v6)
  {
    do
    {
      md::TransitTileData::appendNodesAttachedToLines(*v5++, *(this + 32), (this + 400));
    }

    while (v5 != v6);
    v5 = *(this + 21);
    v6 = *(this + 22);
  }

  while (v5 != v6)
  {
    v7 = *v5;
    md::TransitTileData::setSelectedLines(*v5, this + 29);
    md::TransitTileData::setSelectedNodes(*&v7[122], *&v7[123], this + 50);
    ++v5;
  }

  v8 = *(this + 28);
  v9 = *(v8 + 32);
  v10 = *(v8 + 40);
  while (v9 != v10)
  {
    if (*v9 == 17)
    {
      if (v9 != v10)
      {
        v11 = *(v9 + 8);
        if (v11)
        {
          if (v31)
          {
            v12 = [(VKTransitLineMarker *)v4 identifier];
            v13 = v12;
            if (!v31 || (v14 = *(this + 21), v15 = *(this + 22), v14 == v15))
            {
              v23 = -1;
            }

            else
            {
              v27 = v12;
              v16 = 3.4028e38;
              do
              {
                v17 = *(*v14 + 896);
                v18 = *(*v14 + 904);
                v19 = 3.4028e38;
                while (v17 != v18)
                {
                  v20 = *(v17 + 80);
                  v21 = *(v17 + 88);
                  while (v20 != v21)
                  {
                    v22 = *(*(*v20 + 8) + 16);
                    if (std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(v29, *(v22 + 40)))
                    {
                      v19 = fminf(*(v22 + 84), v19);
                    }

                    v20 += 8;
                  }

                  v17 += 248;
                }

                v16 = fminf(v19, v16);
                v14 += 8;
              }

              while (v14 != v15);
              if (v16 >= 4295000000.0)
              {
                v23 = -1;
              }

              else
              {
                v23 = vcvtms_u32_f32(v16);
              }

              v13 = v27;
            }

            md::SelectedTransitLayerDataSource::setSelectedLine(v11, v13, v23);
          }

          else
          {
            md::SelectedTransitLayerDataSource::setSelectedLine(v11, 0, -1);
          }
        }
      }

      break;
    }

    v9 += 16;
  }

  *(this + 456) = 1;
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__deallocate_node(*(v30 + 7));
  v25 = v29[0];
  v29[0] = 0;
  if (v25)
  {
    v26 = mdm::zone_mallocator::instance(v24);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *>(v26, v25);
  }
}

void sub_1B2E27904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, mdm::zone_mallocator *a14)
{
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__deallocate_node(a14);
  if (a11)
  {
    v18 = mdm::zone_mallocator::instance(v17);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *>(v18, a11);
  }

  _Unwind_Resume(a1);
}

void std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__emplace_unique_key_args<unsigned long long,unsigned long long>(mdm::zone_mallocator *result, unint64_t a2, void *a3)
{
  v7 = *(result + 1);
  if (v7)
  {
    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v3 = a2;
      if (v7 <= a2)
      {
        v3 = a2 % v7;
      }
    }

    else
    {
      v3 = (v7 - 1) & a2;
    }

    v9 = *(*result + 8 * v3);
    if (v9)
    {
      for (i = *v9; i; i = *i)
      {
        v11 = i[1];
        if (v11 == a2)
        {
          if (i[2] == a2)
          {
            return;
          }
        }

        else
        {
          if (v8.u32[0] > 1uLL)
          {
            if (v11 >= v7)
            {
              v11 %= v7;
            }
          }

          else
          {
            v11 &= v7 - 1;
          }

          if (v11 != v3)
          {
            break;
          }
        }
      }
    }
  }

  v12 = mdm::zone_mallocator::instance(result);
  v13 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__hash_node<unsigned long long,void *>>(v12);
  *v13 = 0;
  v13[1] = a2;
  v13[2] = *a3;
  v14 = (*(result + 5) + 1);
  v15 = *(result + 12);
  if (!v7 || (v15 * v7) < v14)
  {
    v16 = 1;
    if (v7 >= 3)
    {
      v16 = (v7 & (v7 - 1)) != 0;
    }

    v17 = v16 | (2 * v7);
    v18 = vcvtps_u32_f32(v14 / v15);
    if (v17 <= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v17;
    }

    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__rehash<true>(result, v19);
    v7 = *(result + 1);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v7 <= a2)
      {
        v3 = a2 % v7;
      }

      else
      {
        v3 = a2;
      }
    }

    else
    {
      v3 = (v7 - 1) & a2;
    }
  }

  v20 = *result;
  v21 = *(*result + 8 * v3);
  if (v21)
  {
    *v13 = *v21;
LABEL_38:
    *v21 = v13;
    goto LABEL_39;
  }

  *v13 = *(result + 3);
  *(result + 3) = v13;
  *(v20 + 8 * v3) = result + 24;
  if (*v13)
  {
    v22 = *(*v13 + 8);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v22 >= v7)
      {
        v22 %= v7;
      }
    }

    else
    {
      v22 &= v7 - 1;
    }

    v21 = (*result + 8 * v22);
    goto LABEL_38;
  }

LABEL_39:
  ++*(result + 5);
}

void sub_1B2E27B50(mdm::zone_mallocator *a1)
{
  v3 = mdm::zone_mallocator::instance(a1);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<unsigned long long,void *>>(v3, v1);
  _Unwind_Resume(a1);
}

void std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::clear(mdm::zone_mallocator **result)
{
  if (result[5])
  {
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__deallocate_node(result[3]);
    result[3] = 0;
    v2 = result[1];
    if (v2)
    {
      for (i = 0; i != v2; i = (i + 1))
      {
        *(*result + i) = 0;
      }
    }

    result[5] = 0;
  }
}

void *std::vector<VKTransitLineMarker * {__strong}>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<VKARWalkingFeature * {__strong}>>(a2);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return result;
}

void *std::vector<VKTransitLineMarker * {__strong}>::push_back[abi:nn200100](void *result, uint64_t *a2)
{
  v2 = result;
  v4 = result[1];
  v3 = result[2];
  if (v4 >= v3)
  {
    v7 = (v4 - *result) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v3 - *result;
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

    v12[4] = v2;
    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<VKARWalkingFeature * {__strong}>>(v10);
    }

    v12[0] = 0;
    v12[1] = 8 * v7;
    v12[3] = 0;
    v11 = *a2;
    *a2 = 0;
    *(8 * v7) = v11;
    v12[2] = 8 * v7 + 8;
    std::vector<VKTrafficFeature * {__strong},geo::allocator_adapter<VKTrafficFeature * {__strong},mdm::zone_mallocator>>::__swap_out_circular_buffer(v2, v12);
    v6 = v2[1];
    result = std::__split_buffer<GEOComposedRouteSection * {__strong}>::~__split_buffer(v12);
  }

  else
  {
    v5 = *a2;
    *a2 = 0;
    *v4 = v5;
    v6 = v4 + 1;
  }

  v2[1] = v6;
  return result;
}

float std::__introsort<std::_ClassicAlgPolicy,md::TransitLogic::getTransitLineMarkersForSelectionAtGroundPoint(gm::Matrix<double,3,1> const&)::$_0 &,std::pair<md::TransitLineWithLink,float> *,false>(float *a1, float *a2, uint64_t a3, char a4, float result)
{
LABEL_1:
  v9 = a2 - 6;
  v10 = a2 - 2;
  v139 = a2 - 12;
  v140 = a2 - 8;
  v138 = a2 - 18;
  v11 = a2 - 14;
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v12) >> 3);
    if (v14 > 2)
    {
      switch(v14)
      {
        case 3:
          v91 = v12 + 10;
          result = v12[10];
          v92 = (v12 + 6);
          v93 = v12 + 4;
          v94 = v12[4];
          v95 = *v10;
          if (result >= v94)
          {
            if (v95 >= result)
            {
              return result;
            }

            v131 = *v92;
            *v92 = *v9;
            *v9 = v131;
            *&v131 = *v91;
            *v91 = *v10;
            *v10 = v131;
            result = *v91;
            if (*v91 >= *v93)
            {
              return result;
            }

            v171 = *v12;
            *v12 = *v92;
            *v92 = v171;
          }

          else
          {
            if (v95 >= result)
            {
              v173 = *v12;
              *v12 = *v92;
              *v92 = v173;
              v12[4] = result;
              v12[10] = v94;
              result = *v10;
              if (*v10 >= v94)
              {
                return result;
              }

              v137 = *v92;
              *v92 = *v9;
              *v9 = v137;
              v93 = v12 + 10;
            }

            else
            {
              v167 = *v12;
              *v12 = *v9;
              *v9 = v167;
            }

            v91 = a2 - 2;
          }

          result = *v93;
          *v93 = *v91;
          *v91 = result;
          return result;
        case 4:

          return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitLogic::getTransitLineMarkersForSelectionAtGroundPoint(gm::Matrix<double,3,1> const&)::$_0 &,std::pair<md::TransitLineWithLink,float> *,0>(v12, v12 + 6, v12 + 12, a2 - 6);
        case 5:
          std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitLogic::getTransitLineMarkersForSelectionAtGroundPoint(gm::Matrix<double,3,1> const&)::$_0 &,std::pair<md::TransitLineWithLink,float> *,0>(v12, v12 + 6, v12 + 12, v12 + 18);
          result = *v10;
          if (*v10 < v12[22])
          {
            v85 = *(v12 + 18);
            *(v12 + 18) = *v9;
            *v9 = v85;
            *&v85 = v12[22];
            v12[22] = *v10;
            *v10 = v85;
            result = v12[22];
            v86 = v12[16];
            if (result < v86)
            {
              v87 = *(v12 + 3);
              *(v12 + 3) = *(v12 + 18);
              *(v12 + 18) = v87;
              v12[16] = result;
              v12[22] = v86;
              v88 = v12[10];
              if (result < v88)
              {
                v89 = *(v12 + 6);
                *(v12 + 6) = *(v12 + 3);
                *(v12 + 3) = v89;
                v12[10] = result;
                v12[16] = v88;
                v90 = v12[4];
                if (result < v90)
                {
                  v165 = *v12;
                  *v12 = *(v12 + 6);
                  *(v12 + 6) = v165;
                  v12[4] = result;
                  v12[10] = v90;
                }
              }
            }
          }

          return result;
      }
    }

    else
    {
      if (v14 < 2)
      {
        return result;
      }

      if (v14 == 2)
      {
        result = *v10;
        if (*v10 < v12[4])
        {
          v166 = *v12;
          *v12 = *v9;
          *v9 = v166;
          result = v12[4];
          v12[4] = *v10;
          *v10 = result;
        }

        return result;
      }
    }

    if (v13 <= 575)
    {
      break;
    }

    if (!a3)
    {
      if (v12 == a2)
      {
        return result;
      }

      v105 = (v14 - 2) >> 1;
      v106 = v105;
      do
      {
        v107 = v106;
        if (v105 >= v106)
        {
          v108 = (2 * v106) | 1;
          v109 = &v12[6 * v108];
          if (2 * v107 + 2 < v14 && v109[4] < v109[10])
          {
            v109 += 6;
            v108 = 2 * v107 + 2;
          }

          v110 = &v12[6 * v107];
          v111 = v110[4];
          if (v109[4] >= v111)
          {
            v169 = *v110;
            do
            {
              v112 = v110;
              v110 = v109;
              *v112 = *v109;
              v112[4] = v109[4];
              if (v105 < v108)
              {
                break;
              }

              v113 = 2 * v108;
              v108 = (2 * v108) | 1;
              v109 = &v12[6 * v108];
              v114 = v113 + 2;
              if (v114 < v14 && v109[4] < v109[10])
              {
                v109 += 6;
                v108 = v114;
              }
            }

            while (v109[4] >= v111);
            *v110 = v169;
            v110[4] = v111;
          }
        }

        v106 = v107 - 1;
      }

      while (v107);
      v115 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
      while (2)
      {
        v116 = 0;
        v117 = a2;
        v143 = *v12;
        result = v12[4];
        v118 = v12;
        do
        {
          v119 = &v118[6 * v116];
          v120 = v119 + 6;
          v121 = (2 * v116) | 1;
          v116 = 2 * v116 + 2;
          if (v116 >= v115)
          {
            v116 = v121;
          }

          else
          {
            v122 = v119[10];
            v123 = v119[16];
            v124 = v119 + 12;
            if (v122 >= v123)
            {
              v116 = v121;
            }

            else
            {
              v120 = v124;
            }
          }

          *v118 = *v120;
          v118[4] = v120[4];
          v118 = v120;
        }

        while (v116 <= ((v115 - 2) >> 1));
        a2 -= 6;
        if (v120 != v117 - 6)
        {
          *v120 = *a2;
          v120[4] = *(v117 - 2);
          *a2 = v143;
          *(v117 - 2) = result;
          v125 = v120 - v12 + 24;
          if (v125 >= 25)
          {
            v126 = (-2 - 0x5555555555555555 * (v125 >> 3)) >> 1;
            v127 = &v12[6 * v126];
            result = v120[4];
            if (v127[4] < result)
            {
              v170 = *v120;
              do
              {
                v128 = v120;
                v120 = v127;
                *v128 = *v127;
                v128[4] = v127[4];
                if (!v126)
                {
                  break;
                }

                v126 = (v126 - 1) >> 1;
                v127 = &v12[6 * v126];
              }

              while (v127[4] < result);
              v129 = v170;
LABEL_169:
              *v120 = v129;
              v120[4] = result;
            }
          }

          if (v115-- <= 2)
          {
            return result;
          }

          continue;
        }

        break;
      }

      v129 = v143;
      goto LABEL_169;
    }

    v15 = v14 >> 1;
    v16 = &v12[6 * (v14 >> 1)];
    v17 = *v10;
    if (v13 >= 0xC01)
    {
      v18 = v16 + 4;
      v19 = v16[4];
      v20 = v12 + 4;
      v21 = v12[4];
      if (v19 >= v21)
      {
        if (v17 < v19)
        {
          v146 = *v16;
          *v16 = *v9;
          *v9 = v146;
          v24 = *(v16 + 4);
          v16[4] = *v10;
          *v10 = v24;
          if (v16[4] < *v20)
          {
            v147 = *v12;
            *v12 = *v16;
            *v16 = v147;
            v22 = (v12 + 4);
            v25 = v16 + 4;
            goto LABEL_27;
          }
        }
      }

      else
      {
        if (v17 < v19)
        {
          v144 = *v12;
          *v12 = *v9;
          *v9 = v144;
          v22 = (v12 + 4);
          goto LABEL_26;
        }

        v150 = *v12;
        *v12 = *v16;
        *v16 = v150;
        v12[4] = v16[4];
        v16[4] = v21;
        if (*v10 < v21)
        {
          v151 = *v16;
          *v16 = *v9;
          *v9 = v151;
          v22 = (v16 + 4);
LABEL_26:
          v25 = a2 - 2;
LABEL_27:
          v27 = *v22;
          *v22 = *v25;
          *v25 = v27;
        }
      }

      v28 = &v12[6 * v15];
      v30 = *(v28 - 2);
      v29 = v28 - 2;
      v31 = v30;
      v32 = v29 - 4;
      v33 = v12 + 10;
      v34 = *v140;
      if (v30 >= v12[10])
      {
        if (v34 < v31)
        {
          v152 = *v32;
          *v32 = *v139;
          *v139 = v152;
          v36 = *v29;
          *v29 = *v140;
          *v140 = v36;
          if (*v29 < *v33)
          {
            v37 = *(v12 + 6);
            *(v12 + 6) = *v32;
            *v32 = v37;
            v38 = v29;
            goto LABEL_40;
          }
        }
      }

      else
      {
        if (v34 < v31)
        {
          v35 = *(v12 + 6);
          *(v12 + 6) = *v139;
          *v139 = v35;
          goto LABEL_39;
        }

        v40 = *(v12 + 6);
        *(v12 + 6) = *v32;
        *v32 = v40;
        *&v40 = *v33;
        *v33 = *v29;
        *v29 = v40;
        if (*v140 < *&v40)
        {
          v155 = *v32;
          *v32 = *v139;
          *v139 = v155;
          v33 = v29;
LABEL_39:
          v38 = a2 - 8;
LABEL_40:
          v41 = *v33;
          *v33 = *v38;
          *v38 = v41;
        }
      }

      v42 = &v12[6 * v15];
      v44 = v42[10];
      v43 = v42 + 10;
      v45 = v44;
      v46 = v43 - 4;
      v47 = v12 + 16;
      v48 = *v11;
      if (v44 >= v12[16])
      {
        if (v48 < v45)
        {
          v156 = *v46;
          *v46 = *v138;
          *v138 = v156;
          v50 = *v43;
          *v43 = *v11;
          *v11 = v50;
          v45 = *v43;
          if (*v43 < *v47)
          {
            v51 = *(v12 + 3);
            *(v12 + 3) = *v46;
            *v46 = v51;
            v52 = v43;
            goto LABEL_50;
          }
        }
      }

      else
      {
        if (v48 < v45)
        {
          v49 = *(v12 + 3);
          *(v12 + 3) = *v138;
          *v138 = v49;
          goto LABEL_49;
        }

        v53 = *(v12 + 3);
        *(v12 + 3) = *v46;
        *v46 = v53;
        v45 = *v47;
        *v47 = *v43;
        *v43 = v45;
        if (*v11 < v45)
        {
          v157 = *v46;
          *v46 = *v138;
          *v138 = v157;
          v47 = v43;
LABEL_49:
          v52 = a2 - 14;
LABEL_50:
          v54 = *v47;
          *v47 = *v52;
          *v52 = v54;
          v45 = *v43;
        }
      }

      v55 = *v18;
      if (*v18 >= *v29)
      {
        if (v45 < v55)
        {
          v159 = *v16;
          *v16 = *v46;
          *v46 = v159;
          v56 = *(v16 + 4);
          v57 = *v43;
          v16[4] = *v43;
          *v43 = v56;
          if (v57 < *v29)
          {
            v160 = *v32;
            *v32 = *v16;
            *v16 = v160;
            v43 = v16 + 4;
            goto LABEL_59;
          }
        }
      }

      else
      {
        if (v45 < v55)
        {
          v158 = *v32;
          *v32 = *v46;
          *v46 = v158;
          goto LABEL_59;
        }

        v161 = *v32;
        *v32 = *v16;
        *v16 = v161;
        v58 = *v29;
        *v29 = v16[4];
        v16[4] = v58;
        if (*v43 < v58)
        {
          v162 = *v16;
          *v16 = *v46;
          *v46 = v162;
          v29 = v16 + 4;
LABEL_59:
          v59 = *v29;
          *v29 = *v43;
          *v43 = v59;
        }
      }

      v163 = *v12;
      *v12 = *v16;
      *v16 = v163;
      goto LABEL_61;
    }

    v18 = v12 + 4;
    v23 = v12[4];
    v20 = v16 + 4;
    if (v23 >= v16[4])
    {
      if (v17 >= v23)
      {
        goto LABEL_62;
      }

      v148 = *v12;
      *v12 = *v9;
      *v9 = v148;
      v26 = *(v12 + 4);
      v12[4] = *v10;
      *v10 = v26;
      if (v12[4] >= *v20)
      {
        goto LABEL_62;
      }

      v149 = *v16;
      *v16 = *v12;
      *v12 = v149;
      goto LABEL_61;
    }

    if (v17 < v23)
    {
      v145 = *v16;
      *v16 = *v9;
      *v9 = v145;
      goto LABEL_36;
    }

    v153 = *v16;
    *v16 = *v12;
    *v12 = v153;
    v39 = v16[4];
    v16[4] = v23;
    v12[4] = v39;
    if (*v10 < v39)
    {
      v154 = *v12;
      *v12 = *v9;
      *v9 = v154;
      v20 = v12 + 4;
LABEL_36:
      v18 = a2 - 2;
LABEL_61:
      v60 = *v20;
      *v20 = *v18;
      *v18 = v60;
    }

LABEL_62:
    --a3;
    if (a4)
    {
      result = v12[4];
LABEL_65:
      v141 = *v12;
      v61 = v12;
      do
      {
        v62 = v61;
        v61 += 6;
      }

      while (v62[10] < result);
      v63 = a2;
      if (v62 == v12)
      {
        v66 = a2;
        while (v61 < v66)
        {
          v64 = v66 - 6;
          v67 = *(v66 - 2);
          v66 -= 6;
          if (v67 < result)
          {
            goto LABEL_75;
          }
        }

        v64 = v66;
      }

      else
      {
        do
        {
          v64 = v63 - 6;
          v65 = *(v63 - 2);
          v63 -= 6;
        }

        while (v65 >= result);
      }

LABEL_75:
      v12 = v61;
      if (v61 < v64)
      {
        v68 = v64;
        do
        {
          v69 = *v12;
          *v12 = *v68;
          *v68 = v69;
          *&v69 = v12[4];
          v12[4] = *(v68 + 16);
          *(v68 + 16) = v69;
          do
          {
            v70 = v12[10];
            v12 += 6;
          }

          while (v70 < result);
          do
          {
            v71 = *(v68 - 8);
            v68 -= 24;
          }

          while (v71 >= result);
        }

        while (v12 < v68);
      }

      v72 = v12 - 6;
      if (v12 - 6 != a1)
      {
        *a1 = *v72;
        a1[4] = *(v12 - 2);
      }

      *v72 = v141;
      *(v12 - 2) = result;
      if (v61 < v64)
      {
        goto LABEL_86;
      }

      v73 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitLogic::getTransitLineMarkersForSelectionAtGroundPoint(gm::Matrix<double,3,1> const&)::$_0 &,std::pair<md::TransitLineWithLink,float> *>(a1, (v12 - 6));
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitLogic::getTransitLineMarkersForSelectionAtGroundPoint(gm::Matrix<double,3,1> const&)::$_0 &,std::pair<md::TransitLineWithLink,float> *>(v12, a2))
      {
        a2 = v12 - 6;
        if (v73)
        {
          return result;
        }

        goto LABEL_1;
      }

      if (!v73)
      {
LABEL_86:
        result = std::__introsort<std::_ClassicAlgPolicy,md::TransitLogic::getTransitLineMarkersForSelectionAtGroundPoint(gm::Matrix<double,3,1> const&)::$_0 &,std::pair<md::TransitLineWithLink,float> *,false>(a1, v12 - 6, a3, a4 & 1, result);
        a4 = 0;
      }
    }

    else
    {
      result = v12[4];
      if (*(v12 - 2) < result)
      {
        goto LABEL_65;
      }

      v142 = *v12;
      if (result >= *v10)
      {
        v76 = (v12 + 6);
        do
        {
          v12 = v76;
          if (v76 >= a2)
          {
            break;
          }

          v77 = *(v76 + 16);
          v76 += 24;
        }

        while (result >= v77);
      }

      else
      {
        v74 = v12;
        do
        {
          v12 = v74 + 6;
          v75 = v74[10];
          v74 += 6;
        }

        while (result >= v75);
      }

      v78 = a2;
      if (v12 < a2)
      {
        v79 = a2;
        do
        {
          v78 = v79 - 6;
          v80 = *(v79 - 2);
          v79 -= 6;
        }

        while (result < v80);
      }

      while (v12 < v78)
      {
        v164 = *v12;
        *v12 = *v78;
        *v78 = v164;
        v81 = *(v12 + 4);
        v12[4] = v78[4];
        *(v78 + 4) = v81;
        do
        {
          v82 = v12[10];
          v12 += 6;
        }

        while (result >= v82);
        do
        {
          v83 = *(v78 - 2);
          v78 -= 6;
        }

        while (result < v83);
      }

      v84 = v12 - 6;
      if (v12 - 6 != a1)
      {
        *a1 = *v84;
        a1[4] = *(v12 - 2);
      }

      a4 = 0;
      *v84 = v142;
      *(v12 - 2) = result;
    }
  }

  v96 = v12 + 6;
  v98 = v12 == a2 || v96 == a2;
  if (a4)
  {
    if (!v98)
    {
      v99 = 0;
      v100 = v12;
      do
      {
        result = v100[10];
        v101 = v100[4];
        v100 = v96;
        if (result < v101)
        {
          v168 = *v96;
          v102 = v99;
          while (1)
          {
            v103 = v12 + v102;
            *(v103 + 24) = *(v12 + v102);
            *(v103 + 10) = *(v12 + v102 + 16);
            if (!v102)
            {
              break;
            }

            v102 -= 24;
            if (result >= *(v103 - 2))
            {
              v104 = v12 + v102 + 24;
              goto LABEL_135;
            }
          }

          v104 = v12;
LABEL_135:
          *v104 = v168;
          *(v104 + 16) = result;
        }

        v96 = v100 + 6;
        v99 += 24;
      }

      while (v100 + 6 != a2);
    }
  }

  else if (!v98)
  {
    v132 = v12 + 4;
    do
    {
      result = a1[10];
      v133 = a1[4];
      a1 = v96;
      if (result < v133)
      {
        v172 = *v96;
        v134 = v132;
        do
        {
          v135 = v134;
          *(v134 + 8) = *(v134 - 1);
          *(v134 + 6) = *v134;
          v136 = *(v134 - 6);
          v134 = (v134 - 24);
        }

        while (result < v136);
        *(v135 - 1) = v172;
        *v135 = result;
      }

      v96 = a1 + 6;
      v132 = (v132 + 24);
    }

    while (a1 + 6 != a2);
  }

  return result;
}

float std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitLogic::getTransitLineMarkersForSelectionAtGroundPoint(gm::Matrix<double,3,1> const&)::$_0 &,std::pair<md::TransitLineWithLink,float> *,0>(float *a1, float *a2, float *a3, float *a4)
{
  v4 = a2[4];
  v5 = a1 + 4;
  v6 = a3 + 4;
  result = a3[4];
  if (v4 >= a1[4])
  {
    if (result < v4)
    {
      v10 = *a2;
      *a2 = *a3;
      *a3 = v10;
      result = a2[4];
      a2[4] = a3[4];
      a3[4] = result;
      if (a2[4] < *v5)
      {
        v11 = *a1;
        *a1 = *a2;
        *a2 = v11;
        v9 = a1 + 4;
        v12 = a2 + 4;
LABEL_10:
        v16 = *v9;
        *v9 = *v12;
        *v12 = v16;
        result = *v6;
      }
    }
  }

  else
  {
    if (result < v4)
    {
      v8 = *a1;
      *a1 = *a3;
      *a3 = v8;
      v9 = a1 + 4;
LABEL_9:
      v12 = a3 + 4;
      goto LABEL_10;
    }

    v13 = *a1;
    *a1 = *a2;
    *a2 = v13;
    v14 = a1[4];
    a1[4] = a2[4];
    a2[4] = v14;
    result = *v6;
    if (*v6 < v14)
    {
      v15 = *a2;
      *a2 = *a3;
      *a3 = v15;
      v9 = a2 + 4;
      goto LABEL_9;
    }
  }

  if (a4[4] < result)
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    *&v17 = a3[4];
    a3[4] = a4[4];
    *(a4 + 4) = v17;
    result = a3[4];
    if (result < a2[4])
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      *&v18 = a2[4];
      a2[4] = a3[4];
      *(a3 + 4) = v18;
      result = a2[4];
      if (result < *v5)
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
        result = a1[4];
        a1[4] = a2[4];
        a2[4] = result;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitLogic::getTransitLineMarkersForSelectionAtGroundPoint(gm::Matrix<double,3,1> const&)::$_0 &,std::pair<md::TransitLineWithLink,float> *>(__int128 *a1, __int128 *a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v14 = a1 + 10;
      v15 = *(a1 + 10);
      v16 = a2 - 2;
      v17 = *(a2 - 2);
      v18 = (a1 + 24);
      v19 = (a2 - 24);
      v20 = (a1 + 1);
      v21 = *(a1 + 4);
      if (v15 >= v21)
      {
        if (v17 >= v15)
        {
          return 1;
        }

        v31 = *v18;
        *v18 = *v19;
        *v19 = v31;
        LODWORD(v31) = *v14;
        *v14 = *v16;
        *v16 = v31;
        if (*v14 >= *v20)
        {
          return 1;
        }

        v32 = *a1;
        *a1 = *v18;
        *v18 = v32;
      }

      else
      {
        if (v17 >= v15)
        {
          v35 = *a1;
          *a1 = *v18;
          *v18 = v35;
          *(a1 + 4) = v15;
          *(a1 + 10) = v21;
          if (*v16 >= v21)
          {
            return 1;
          }

          v36 = *v18;
          *v18 = *v19;
          *v19 = v36;
          v20 = a1 + 10;
        }

        else
        {
          v22 = *a1;
          *a1 = *v19;
          *v19 = v22;
        }

        v14 = a2 - 2;
      }

      v37 = *v20;
      *v20 = *v14;
      *v14 = v37;
      return 1;
    }

    if (v4 != 4)
    {
      if (v4 == 5)
      {
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitLogic::getTransitLineMarkersForSelectionAtGroundPoint(gm::Matrix<double,3,1> const&)::$_0 &,std::pair<md::TransitLineWithLink,float> *,0>(a1, a1 + 6, a1 + 12, a1 + 18);
        if (*(a2 - 2) < *(a1 + 22))
        {
          v6 = *(a1 + 72);
          *(a1 + 72) = *(a2 - 24);
          *(a2 - 24) = v6;
          LODWORD(v6) = *(a1 + 22);
          *(a1 + 22) = *(a2 - 2);
          *(a2 - 2) = v6;
          v7 = *(a1 + 22);
          v8 = *(a1 + 16);
          if (v7 < v8)
          {
            v9 = a1[3];
            a1[3] = *(a1 + 72);
            *(a1 + 72) = v9;
            *(a1 + 16) = v7;
            *(a1 + 22) = v8;
            v10 = *(a1 + 10);
            if (v7 < v10)
            {
              v11 = *(a1 + 24);
              *(a1 + 24) = a1[3];
              a1[3] = v11;
              *(a1 + 10) = v7;
              *(a1 + 16) = v10;
              v12 = *(a1 + 4);
              if (v7 < v12)
              {
                v13 = *a1;
                *a1 = *(a1 + 24);
                *(a1 + 24) = v13;
                *(a1 + 4) = v7;
                *(a1 + 10) = v12;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitLogic::getTransitLineMarkersForSelectionAtGroundPoint(gm::Matrix<double,3,1> const&)::$_0 &,std::pair<md::TransitLineWithLink,float> *,0>(a1, a1 + 6, a1 + 12, a2 - 6);
    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if (*(a2 - 2) < *(a1 + 4))
    {
      v5 = *a1;
      *a1 = *(a2 - 24);
      *(a2 - 24) = v5;
      LODWORD(v5) = *(a1 + 4);
      *(a1 + 4) = *(a2 - 2);
      *(a2 - 2) = v5;
    }

    return 1;
  }

LABEL_17:
  v23 = a1 + 10;
  v24 = *(a1 + 10);
  v25 = (a1 + 3);
  v26 = (a1 + 24);
  v27 = (a1 + 1);
  v28 = *(a1 + 4);
  v29 = *(a1 + 16);
  if (v24 < v28)
  {
    if (v29 >= v24)
    {
      v38 = *a1;
      *a1 = *v26;
      *v26 = v38;
      *(a1 + 4) = v24;
      *(a1 + 10) = v28;
      if (v29 >= v28)
      {
        goto LABEL_35;
      }

      v39 = *v26;
      *v26 = *v25;
      *v25 = v39;
      v27 = a1 + 10;
    }

    else
    {
      v30 = *a1;
      *a1 = *v25;
      *v25 = v30;
    }

    v23 = (a1 + 4);
    goto LABEL_34;
  }

  if (v29 < v24)
  {
    v33 = *v26;
    *v26 = *v25;
    *v25 = v33;
    *v23 = v29;
    *(a1 + 16) = v24;
    if (v29 < v28)
    {
      v34 = *a1;
      *a1 = *v26;
      *v26 = v34;
LABEL_34:
      *v27 = v29;
      *v23 = v28;
    }
  }

LABEL_35:
  v40 = (a1 + 72);
  if ((a1 + 72) == a2)
  {
    return 1;
  }

  v41 = 0;
  v42 = 0;
  while (1)
  {
    v43 = *(v40 + 4);
    if (v43 < v25[4])
    {
      v48 = *v40;
      v44 = v41;
      while (1)
      {
        v45 = a1 + v44;
        *(v45 + 72) = *(a1 + v44 + 48);
        *(v45 + 88) = *(a1 + v44 + 64);
        if (v44 == -48)
        {
          break;
        }

        v44 -= 24;
        if (v43 >= *(v45 + 40))
        {
          v46 = a1 + v44 + 72;
          goto LABEL_43;
        }
      }

      v46 = a1;
LABEL_43:
      *v46 = v48;
      *(v46 + 16) = v43;
      if (++v42 == 8)
      {
        return (v40 + 24) == a2;
      }
    }

    v25 = v40;
    v41 += 24;
    v40 = (v40 + 24);
    if (v40 == a2)
    {
      return 1;
    }
  }
}

void std::vector<geo::PolylineCoordinate>::resize(const void **a1, unint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (v2 - *a1) >> 3;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      a1[1] = &v3[8 * a2];
    }
  }

  else
  {
    v5 = a2 - v4;
    v6 = a1[2];
    if (v5 > (v6 - v2) >> 3)
    {
      if (!(a2 >> 61))
      {
        v7 = v6 - v3;
        v8 = (v6 - v3) >> 2;
        if (v8 <= a2)
        {
          v8 = a2;
        }

        if (v7 >= 0x7FFFFFFFFFFFFFF8)
        {
          v9 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v9 = v8;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v9);
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = &v2[8 * v5];
    do
    {
      *v2 = 0xBF80000000000000;
      v2 += 8;
    }

    while (v2 != v10);
    a1[1] = v10;
  }
}

uint64_t non-virtual thunk tomd::MuninRoadLabel::collidesWithObject(md::MuninRoadLabel *this, const md::CollisionObject *a2)
{
  result = *(this + 4);
  if (result)
  {
    return (*(*result + 472))(result, a2);
  }

  return result;
}

void non-virtual thunk tomd::MuninRoadLabel::~MuninRoadLabel(md::MuninRoadLabel *this)
{
  md::MuninRoadLabel::~MuninRoadLabel((this - 40));

  JUMPOUT(0x1B8C62190);
}

{
  md::MuninRoadLabel::~MuninRoadLabel((this - 40));
}

void md::MuninRoadLabel::~MuninRoadLabel(md::MuninRoadLabel *this)
{
  *this = &unk_1F2A041F0;
  *(this + 5) = &unk_1F2A04230;
  if (*(this + 355) == 1)
  {
    *(*(this + 41) + 285) = 1;
  }

  atomic_fetch_add(md::MuninRoadLabel::_totalLabels, 0xFFFFFFFF);
  v2 = *(this + 71);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 69);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(this + 63);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = *(this + 42);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = *(this + 39);
  *(this + 39) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 13);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  v8 = *(this + 11);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  v9 = *(this + 8);
  *(this + 8) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(this + 7);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  *this = &unk_1F2A3C020;
  v11 = *(this + 2);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }
}

{
  md::MuninRoadLabel::~MuninRoadLabel(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::MuninRoadLabel::collidesWithObject(md::MuninRoadLabel *this, const md::CollisionObject *a2)
{
  result = *(this + 9);
  if (result)
  {
    return (*(*result + 472))(result, a2);
  }

  return result;
}

uint64_t md::MuninRoadLabel::setCollisionResult(uint64_t a1, unsigned __int8 *a2)
{
  *(a1 + 320) = *(a2 + 1);
  v3 = a2[1];
  v4 = v3 ^ 1;
  result = *(a1 + 24);
  if (result)
  {
    if (!a2[1])
    {
      result = (*(*result + 32))(result, a1, *(a1 + 36));
      v6 = (a1 + 300);
      if (*(a1 + 300) == v4)
      {
        goto LABEL_25;
      }

      *v6 = v4;
      goto LABEL_16;
    }

    if (*a2 == 1)
    {
      *(a1 + 494) = 21;
    }
  }

  v6 = (a1 + 300);
  if (*(a1 + 300) == v4)
  {
    goto LABEL_25;
  }

  *v6 = v4;
  if ((v3 & 1) == 0)
  {
LABEL_16:
    if (*(a1 + 299) != 1 || (v3 & 1) != 0)
    {
      goto LABEL_25;
    }

    v9 = byte_1B3417E90[*(a1 + 493) + 12];
    atomic_load((a1 + 298));
    if (v9 == 255)
    {
      v9 = *(a1 + 493);
    }

    else
    {
      *(a1 + 493) = v9;
      *(a1 + 494) = 37;
    }

    if (v9 == 2)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v7 = *a2;
  if ((v7 & 1) == 0)
  {
    *(a1 + 301) = 1;
  }

  if (*(a1 + 493) == 2)
  {
    atomic_load((a1 + 298));
    if (v7)
    {
      v8 = 21;
    }

    else
    {
      v8 = 20;
    }

    *(a1 + 493) = 1;
    *(a1 + 494) = v8;
LABEL_22:
    *(a1 + 299) = 0;
LABEL_23:
    v10 = atomic_load((a1 + 353));
    if ((v10 & 1) == 0)
    {
      *(a1 + 356) = 2 * (*(a1 + 493) == 2);
    }
  }

LABEL_25:
  if (*v6 == 1)
  {
    result = *(a1 + 72);
    if (result)
    {
      v11 = *(*result + 456);

      return v11();
    }
  }

  return result;
}

uint64_t md::MuninRoadLabelCollisionItem::placementCandidate(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = *(v1 + 72);
  if (v2)
  {
    (*(*v2 + 448))(v2);
  }

  return v1 + 40;
}

uint64_t md::MuninRoadLabelCollisionItem::collidesWithObject(md::MuninRoadLabelCollisionItem *this, const md::CollisionObject *a2)
{
  result = *(*(this + 7) + 72);
  if (result)
  {
    return (*(*result + 472))(result, a2);
  }

  return result;
}

int32x2_t *md::MuninRoadLabel::setActive(int32x2_t *this, int a2)
{
  if (this[38].u8[0] != a2)
  {
    v2 = this;
    this[38].i8[0] = a2;
    if ((a2 & 1) == 0)
    {
      this = this[3];
      if (this)
      {
        this = md::LabelDedupingGroup::removeLabel(this, v2);
        v2[3] = 0;
      }

      v2[43] = vdup_n_s32(0xC2C80000);
      if (v2[44].i8[3] == 1)
      {
        *(*&v2[41] + 285) = 1;
        v2[44].i8[3] = 0;
      }
    }
  }

  return this;
}

_BYTE *md::MuninRoadLabel::failForStaging(_BYTE *result, char a2)
{
  v2 = byte_1B3417E90[result[493] + 6];
  atomic_load(result + 298);
  if (v2 == 255)
  {
    v2 = result[493];
  }

  else
  {
    result[493] = v2;
    result[494] = a2;
  }

  if (v2 != 2)
  {
    result[299] = 0;
  }

  v3 = atomic_load(result + 353);
  if ((v3 & 1) == 0)
  {
    result[356] = 2 * (result[493] == 2);
  }

  return result;
}

void md::MuninRoadLabel::updateStateMachineForDisplay(uint64_t a1, int a2, char a3, uint64_t a4)
{
  if (a4)
  {
    v5 = ((0x27u >> (a2 - 3)) & 1) != 0 ? 0x80808050508uLL >> (8 * ((a2 - 3) & 0x1Fu)) : a2;
    v6 = (a2 - 3) <= 5 ? v5 : a2;
    if ((*(a4 + 3416) & 1) == 0)
    {
      LOBYTE(a2) = v6;
    }
  }

  v7 = byte_1B3417EAE[4 * a2 + *(a1 + 538)];
  atomic_load((a1 + 298));
  if (v7 == 255)
  {
    v7 = *(a1 + 538);
  }

  else
  {
    *(a1 + 538) = v7;
    *(a1 + 539) = a3;
  }

  if (v7 == 3)
  {
    v8 = 1.0;
    v9 = 280;
  }

  else
  {
    if (v7)
    {
      goto LABEL_18;
    }

    v8 = 0.0;
    v9 = 288;
  }

  *(a1 + 264) = v8;
  *(a1 + 268) = (*(a1 + v9))();
LABEL_18:
  v10 = *(a1 + 538);
  if (v10 == 1)
  {
    v14 = *(a1 + 560);
    v15 = 0.4;
    if (v14 && *(v14 + 8) != 0.0)
    {
      v15 = *(v14 + 8);
    }

    md::LabelValueAnimation::setShowAnimation(a1 + 264, 0, 3, 0, v15);
    v13 = 280;
  }

  else
  {
    if (v10 != 2)
    {
      return;
    }

    v11 = *(a1 + 560);
    v12 = 0.4;
    if (v11)
    {
      if (*(v11 + 12) != 0.0)
      {
        v12 = *(v11 + 12);
      }
    }

    md::LabelValueAnimation::setHideAnimation(a1 + 264, 0, 3, 0, v12);
    v13 = 288;
  }

  *(a1 + 268) = (*(a1 + v13))(*(a1 + 264));
}

void std::__shared_ptr_emplace<md::OcclusionQuery>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A47FC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::MuninRoadLabel::debugString(md::MuninRoadLabel *this, md::LabelManager *a2, uint64_t a3)
{
  v62 = *MEMORY[0x1E69E9840];
  std::ostringstream::basic_ostringstream[abi:nn200100](&v50);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, "RoadLabel:\n", 11);
  if (*(a2 + 120) != 0.0 || *(a2 + 121) != 0.0)
  {
    v6 = v50;
    *(&v50 + *(v50 - 24) + 8) = *(&v50 + *(v50 - 24) + 8) & 0xFFFFFEFB | 4;
    *(&v52[0].__locale_ + *(v6 - 24)) = 1;
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, "  Offset: elev=", 15);
    v7 = std::ostream::operator<<();
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v7, " nrml=", 6);
    v8 = std::ostream::operator<<();
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v8, "\n", 1);
  }

  *(&v52[0].__locale_ + *(v50 - 24)) = 2;
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, "  Zoom: Cur=", 12);
  v9 = std::ostream::operator<<();
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v9, " Min=", 5);
  v10 = std::ostream::operator<<();
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v10, " Max=", 5);
  std::ostream::operator<<();
  *(&v52[0].__locale_ + *(v50 - 24)) = 1;
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, ", Dist=", 7);
  v11 = std::ostream::operator<<();
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v11, "\n", 1);
  if (*(a2 + 540))
  {
    *(&v52[0].__locale_ + *(v50 - 24)) = 1;
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, "  PerspScale: Mode=", 19);
    v12 = MEMORY[0x1B8C61C80](&v50, *(a2 + 540));
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v12, " Value=", 7);
    v13 = std::ostream::operator<<();
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v13, "\n", 1);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, "  Staging: State=", 17);
  v14 = *(a2 + 493);
  if (v14 > 2)
  {
    v15 = "<NONE>";
  }

  else
  {
    v15 = off_1E7B39578[v14];
  }

  v16 = strlen(v15);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, v15, v16);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, " Outcome=", 9);
  md::stringFromLabelOutcome(&v59, *(a2 + 494));
  if ((v61 & 0x80u) == 0)
  {
    v17 = &v59;
  }

  else
  {
    v17 = v59;
  }

  if ((v61 & 0x80u) == 0)
  {
    v18 = v61;
  }

  else
  {
    v18 = v60;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, v17, v18);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, "\n", 1);
  if (v61 < 0)
  {
    operator delete(v59);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, "  Display: State=", 17);
  v19 = *(a2 + 538);
  if (v19 > 3)
  {
    v20 = "<NONE>";
  }

  else
  {
    v20 = off_1E7B39590[v19];
  }

  v21 = strlen(v20);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, v20, v21);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, " Outcome=", 9);
  md::stringFromLabelOutcome(&v59, *(a2 + 539));
  if ((v61 & 0x80u) == 0)
  {
    v22 = &v59;
  }

  else
  {
    v22 = v59;
  }

  if ((v61 & 0x80u) == 0)
  {
    v23 = v61;
  }

  else
  {
    v23 = v60;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, v22, v23);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, " isDisplayLabel=", 16);
  v24 = MEMORY[0x1B8C61C80](&v50, *(a2 + 302));
  v25 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v24, " isActiveForDisplay=", 20);
  v26 = MEMORY[0x1B8C61C80](v25, *(a2 + 303));
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v26, "\n", 1);
  if (v61 < 0)
  {
    operator delete(v59);
  }

  v27 = *(a2 + 10);
  if (v27 && *(v27 + 125) == 1 && *(v27 + 136) != 255)
  {
    v28 = md::LabelStyle::textStyleGroup(v27, 0);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, "  Style: ", 9);
    v29 = *(v28 + 95);
    if (v29 >= 0)
    {
      v30 = v28 + 72;
    }

    else
    {
      v30 = *(v28 + 72);
    }

    if (v29 >= 0)
    {
      v31 = *(v28 + 95);
    }

    else
    {
      v31 = *(v28 + 80);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, v30, v31);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, "/", 1);
    *(&v52[0].__locale_ + *(v50 - 24)) = 2;
    std::ostream::operator<<();
    if (*(v28 + 96) != 0.0)
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, "/", 1);
      std::ostream::operator<<();
    }

    if (*(v28 + 109) == 1)
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, "/up", 3);
    }

    if (*(v28 + 110) == 1)
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, "/down", 5);
    }

    if (*(v28 + 111) == 1)
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, "/title", 6);
    }

    if (*(v28 + 108) == 1)
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, "/ri", 3);
    }

    if (*(v28 + 112) == 1)
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, "/sc", 3);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, "\n", 1);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, "    font:", 9);
    md::FontOptions::debugString(&v59, (v28 + 72), *[*(a3 + 96) grlFontManager]);
    if ((v61 & 0x80u) == 0)
    {
      v32 = &v59;
    }

    else
    {
      v32 = v59;
    }

    if ((v61 & 0x80u) == 0)
    {
      v33 = v61;
    }

    else
    {
      v33 = v60;
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, v32, v33);
    v34 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, "\n", 1);
    if (v61 < 0)
    {
      v35 = v59;
      v36 = mdm::zone_mallocator::instance(v34);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v36, v35);
    }
  }

  else
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, "No Style\n", 9);
  }

  v37 = *(a2 + 40);
  if (v37 && *(v37 + 52) == 4)
  {
    v38 = *(v37 + 56);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, "  Collided with '", 17);
    md::LabelFeature::debugName(&v59, *(v38 + 8));
    v39 = (v61 & 0x80u) == 0 ? &v59 : v59;
    v40 = (v61 & 0x80u) == 0 ? v61 : v60;
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, v39, v40);
    v41 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, "'\n", 2);
    if (v61 < 0)
    {
      v42 = v59;
      v43 = mdm::zone_mallocator::instance(v41);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v43, v42);
    }
  }

  if (*(a2 + 8))
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, "\n", 1);
    (*(**(a2 + 8) + 800))(&v59);
    v44 = (v61 & 0x80u) == 0 ? &v59 : v59;
    v45 = (v61 & 0x80u) == 0 ? v61 : v60;
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, v44, v45);
    if (v61 < 0)
    {
      operator delete(v59);
    }
  }

  if ((v57 & 0x10) != 0)
  {
    v47 = v56;
    if (v56 < v53)
    {
      v56 = v53;
      v47 = v53;
    }

    locale = v52[4].__locale_;
  }

  else
  {
    if ((v57 & 8) == 0)
    {
      v46 = 0;
      *(this + 23) = 0;
      goto LABEL_90;
    }

    locale = v52[1].__locale_;
    v47 = v52[3].__locale_;
  }

  v46 = v47 - locale;
  if ((v47 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v46 >= 0x17)
  {
    operator new();
  }

  *(this + 23) = v46;
  if (v46)
  {
    memmove(this, locale, v46);
  }

LABEL_90:
  *(this + v46) = 0;
  v50 = *MEMORY[0x1E69E54E8];
  *(&v50 + *(v50 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v51 = MEMORY[0x1E69E5548] + 16;
  if (v55 < 0)
  {
    operator delete(__p);
  }

  v51 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v52);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v58);
}

void sub_1B2E2B49C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  a9 = *MEMORY[0x1E69E54E8];
  *(&a9 + *(a9 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  a10 = MEMORY[0x1E69E5548] + 16;
  if (a23 < 0)
  {
    operator delete(__p);
  }

  a10 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a11);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&a26);
  _Unwind_Resume(a1);
}

uint64_t md::MuninRoadLabel::debugDraw(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 72);
  if (result)
  {
    v5 = (*(*result + 256))(result);
    *(a2 + 8) = *v5;
    *(a2 + 12) = *(v5 + 4);
    v6.n128_f32[0] = ggl::DebugConsole::drawRectangle(a2, (v5 + 8));
    v7 = *(**(a1 + 72) + 776);

    return v7(v6);
  }

  return result;
}

uint64_t md::ARSceneLogic::runBeforeLayout(uint64_t a1, md::LayoutContext *a2, gdc::Camera **a3, md::SceneContext *a4)
{
  v5 = *a3;
  md::SceneStateManager::clear(*(a1 + 536));
  v6 = gdc::Camera::cameraFrame(v5);
  v7 = *(a1 + 320);
  v8 = *(a1 + 160);
  v103 = *(a1 + 400);
  v101 = a1;
  v9 = *(a1 + 240);
  v10 = *v6;
  v11 = v6[1];
  v12 = *v6 * 0.5;
  v13 = tan(v12 + 0.785398163);
  v14 = v11 * 0.159154943 + 0.5;
  v15 = log(v13) * 0.159154943 + 0.5;
  v16 = cos(v10 + v10) * -559.82 + 111132.92;
  v17 = v16 + cos(v10 * 4.0) * 1.175;
  v18 = v17 + cos(v10 * 6.0) * -0.0023;
  v19 = tan(v12 + 0.78103484);
  v20 = log(v19);
  v21 = tan(v12 + 0.789761487);
  *&v22 = fabs((log(v21) - v20) * 0.159154943) / v18;
  v120.f64[0] = v14;
  v120.f64[1] = v15;
  v121 = *&v22 * v7;
  *&v22 = *&v22 * v8;
  v23 = 1 << v9;
  v24 = (1 << v9);
  v25 = vcvtmd_s64_f64((v15 - *&v22) * v24);
  v26 = v23 + ~vcvtmd_s64_f64((*&v22 + v15) * v23);
  memset(v105, 0, sizeof(v105));
  v106 = 1065353216;
  v118 = 0u;
  v119 = 0u;
  v117 = 0u;
  if (v26 <= ((1 << v9) + ~v25))
  {
    v27 = 0;
    v28 = 0;
    v29 = vcvtmd_s64_f64((v14 - *&v22) * v24);
    v30 = vcvtmd_s64_f64((*&v22 + v14) * v24);
    v31 = v23 - v25;
    do
    {
      v32 = v29;
      if (v29 <= v30)
      {
        do
        {
          *(&v22 + 1) = v118;
          v33 = *(&v117 + 1);
          if (v118 == *(&v117 + 1))
          {
            v34 = 0;
          }

          else
          {
            v34 = 16 * (v118 - *(&v117 + 1)) - 1;
          }

          v35 = v27 + v28;
          if (v34 == v35)
          {
            std::deque<geo::QuadTile>::__add_back_capacity(&v117);
            v28 = v119;
            v33 = *(&v117 + 1);
            v35 = *(&v119 + 1) + v119;
          }

          v36 = *(v33 + ((v35 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v35 & 0x7F);
          *v36 = -1;
          *(v36 + 1) = v9;
          *(v36 + 4) = v26;
          *(v36 + 8) = v32;
          *(v36 + 16) = 0;
          *(v36 + 24) = 1;
          v27 = ++*(&v119 + 1);
          ++v32;
        }

        while (v30 + 1 != v32);
      }

      ++v26;
    }

    while (v26 != v31);
    if (v27)
    {
      do
      {
        v37 = (*(*(&v117 + 1) + ((v119 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v119 & 0x7F));
        v38 = v37[1];
        *&v22 = *(v37 + 4);
        v104 = v22;
        v39 = *v37;
        v40 = *(v37 + 2);
        v41 = v37[24];
        *&v119 = v119 + 1;
        *(&v119 + 1) = v27 - 1;
        if (v119 >= 0x100)
        {
          operator delete(**(&v117 + 1));
          *(&v117 + 1) += 8;
          *&v119 = v119 - 128;
        }

        if (v38 >= v103 || (v42 = 1.0 / (1 << v38), v122.f64[0] = v42 * SDWORD1(v104), v122.f64[1] = v42 * ((1 << v38) + ~v104), *&v123 = v122.f64[0] + v42, v124 = v122.f64[1] + v42, !gm::Box<double,2>::intersects<int,void>(&v122, &v120)))
        {
          if (v41)
          {
            v52 = (((v39 - 0x61C8864680B583EBLL) << 6) - 0x61C8864680B583EBLL + ((v39 - 0x61C8864680B583EBLL) >> 2) + v38) ^ (v39 - 0x61C8864680B583EBLL);
            v53 = (v104 - 0x61C8864680B583EBLL + (v52 << 6) + (v52 >> 2)) ^ v52;
            v40 = (SDWORD1(v104) - 0x61C8864680B583EBLL + (v53 << 6) + (v53 >> 2)) ^ v53;
          }

          v54 = *(&v105[0] + 1);
          if (!*(&v105[0] + 1))
          {
            goto LABEL_49;
          }

          v55 = vcnt_s8(*(v105 + 8));
          v55.i16[0] = vaddlv_u8(v55);
          v56 = v55.u32[0];
          if (v55.u32[0] > 1uLL)
          {
            v57 = v40;
            if (v40 >= *(&v105[0] + 1))
            {
              v57 = v40 % *(&v105[0] + 1);
            }
          }

          else
          {
            v57 = (*(&v105[0] + 1) - 1) & v40;
          }

          v58 = *(*&v105[0] + 8 * v57);
          if (!v58 || (v59 = *v58) == 0)
          {
LABEL_49:
            operator new();
          }

          v60 = *(&v105[0] + 1) - 1;
          v61 = (((v39 - 0x61C8864680B583EBLL) << 6) - 0x61C8864680B583EBLL + ((v39 - 0x61C8864680B583EBLL) >> 2) + v38) ^ (v39 - 0x61C8864680B583EBLL);
          *(&v22 + 1) = *(&v104 + 1);
          v62 = v104;
          v63 = DWORD1(v104);
          v64 = (v104 - 0x61C8864680B583EBLL + (v61 << 6) + (v61 >> 2)) ^ v61;
          v65 = (SDWORD1(v104) - 0x61C8864680B583EBLL + (v64 << 6) + (v64 >> 2)) ^ v64;
          while (1)
          {
            v66 = *(v59 + 1);
            if (v66 == v40)
            {
              if (v59[40] == 1)
              {
                v98 = v60;
                v96 = v63;
                v97 = v62;
                v95 = v65;
                geo::QuadTile::computeHash(v59 + 16);
                v65 = v95;
                v63 = v96;
                v62 = v97;
                v60 = v98;
                v59[40] = 0;
              }

              if (*(v59 + 4) == v40 && v59[16] == v39 && v59[17] == v38 && *(v59 + 5) == v62 && *(v59 + 6) == v63)
              {
                goto LABEL_50;
              }
            }

            else
            {
              if (v56 > 1)
              {
                if (v66 >= v54)
                {
                  v66 %= v54;
                }
              }

              else
              {
                v66 &= v60;
              }

              if (v66 != v57)
              {
                goto LABEL_49;
              }
            }

            v59 = *v59;
            if (!v59)
            {
              goto LABEL_49;
            }
          }
        }

        BYTE1(v122.f64[0]) = v38;
        *(v122.f64 + 4) = v104;
        LOBYTE(v122.f64[0]) = v39;
        v123 = v40;
        LOBYTE(v124) = v41;
        LOBYTE(v125) = 1;
        v126 = 0;
        *&v128[12] = 0;
        LOBYTE(v127) = v39;
        BYTE1(v127) = v38 + 1;
        *v128 = vadd_s32(*&v104, *&v104);
        while (1)
        {
          v129 = 1;
          BYTE1(v107) = v38;
          *(&v107 + 4) = v104;
          LOBYTE(v107) = v39;
          v108 = v40;
          v109 = v41;
          v110 = 1;
          v111 = 4;
          v112 = 255;
          v113 = 0;
          v114 = 0;
          v115 = 0;
          v116 = 1;
          if (!geo::QuadTileIterator::operator!=(&v122, &v107))
          {
            break;
          }

          v43 = *(&v117 + 1);
          v44 = 16 * (v118 - *(&v117 + 1)) - 1;
          v45 = BYTE1(v127);
          v46 = *v128;
          v47 = v127;
          v48 = *&v128[12];
          v49 = v129;
          if (v118 == *(&v117 + 1))
          {
            v44 = 0;
          }

          v50 = *(&v119 + 1) + v119;
          if (v44 == *(&v119 + 1) + v119)
          {
            std::deque<geo::QuadTile>::__add_back_capacity(&v117);
            v43 = *(&v117 + 1);
            v50 = *(&v119 + 1) + v119;
          }

          v51 = *(v43 + ((v50 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v50 & 0x7F);
          *(v51 + 1) = v45;
          *(v51 + 4) = v46;
          *v51 = v47;
          *(v51 + 16) = v48;
          *(v51 + 24) = v49;
          ++*(&v119 + 1);
          ++v126;
          LOBYTE(v127) = LOBYTE(v122.f64[0]);
          BYTE1(v127) = BYTE1(v122.f64[0]) + v125;
          *v128 = (HIDWORD(v122.f64[0]) << v125) + v126 / (1 << v125);
          *&v128[4] = (LODWORD(v122.f64[1]) << v125) + v126 % (1 << v125);
          *&v128[12] = 0;
        }

LABEL_50:
        v27 = *(&v119 + 1);
      }

      while (*(&v119 + 1));
    }
  }

  std::deque<geo::QuadTile>::~deque[abi:nn200100](&v117);
  v67 = v101[67];
  v68 = *(v67 + 112);
  v69 = *(v67 + 120);
  while (v68 != v69)
  {
    if (!*v68)
    {
      v69 = v68;
      break;
    }

    v68 += 56;
  }

  LODWORD(v122.f64[0]) = 512;
  std::unordered_set<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::unordered_set(&v122.f64[1], v105);
  *(v69 + 14) = LODWORD(v122.f64[0]);
  std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::__move_assign((v69 + 32), &v122.f64[1]);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&v122.f64[1]);
  v71 = v101[58];
  v70 = v101[59];
  while (v71 != v70)
  {
    if (!*v71)
    {
      v70 = v71;
      break;
    }

    v71 += 16;
  }

  v72 = *(*(v70 + 2) + 16);
  if (v72)
  {
    gdc::TileSetSelectionContext::TileSetSelectionContext(&v122, (v69 + 8), (v69 + 28), *(v69 + 13));
    *(v72 + 8) = v122.f64[1];
    if (v72 != &v122)
    {
      *(v72 + 48) = v127;
      std::__hash_table<unsigned short,std::hash<unsigned short>,std::equal_to<unsigned short>,std::allocator<unsigned short>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<unsigned short,void *> *>>((v72 + 16), v125);
    }

    *(v72 + 56) = *&v128[4];
    *&v122.f64[0] = &unk_1F2A61128;
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&v123);
    md::World::layerDataTypesForSelectionSetType(&v122, *(v101[15] + 152), 0);
    gdc::SelectionContext::setLayerDataTypes(v72, &v122);
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&v122);
  }

  v73 = *(v101[15] + 24);
  v102 = v69;
  v74 = *(v69 + 13);
  md::LayoutContext::frameState(a2);
  v76 = (*(v75 + 88) * 1000.0);
  gdc::LayerDataManager::requestLayerDataKeys(v73, v101[58], v101[59], 0);
  v107 = 0uLL;
  v108 = 0;
  gdc::LayerDataManager::createDataRequests(v73, v101 + 58, &v107, v76);
  gdc::LayerDataManager::getData(v73, v101[58], v101[59]);
  gdc::LayerDataManager::getFallbackData(v73, v101[58], v101[59]);
  gdc::LayerDataCollector::sortIndexList(v74);
  grl::LayerMetrics::anchor(*v74);
  if (v77 == v78)
  {
    v79 = 0;
    v80 = 1;
    v81 = 1;
  }

  else
  {
    v82 = v77;
    v83 = v78;
    v79 = 0;
    v81 = 1;
    v80 = 1;
    do
    {
      v84 = gdc::LayerDataCollector::status(v74[3], v74[4], *(v82 + 8), *(v82 + 144));
      if (v84 == 2)
      {
        v79 = 1;
      }

      else
      {
        v85 = *(v82 + 8);
        if (v84 > 1)
        {
          v92 = *(gdc::LayerDataCollector::getData(v74[3], v74[4], v85, *(v82 + 144)) + 8);
          if (v92)
          {
            atomic_fetch_add_explicit((v92 + 8), 1uLL, memory_order_relaxed);
          }

          gdc::LayerDataRequestKey::LayerDataRequestKey(&v122, v82);
          v93 = *(v82 + 112);
          v131 = *(v82 + 116);
          v130 = v93;
          v132 = *(v82 + 128);
          v133 = *(v82 + 136);
          geo::linear_map<unsigned short,std::set<gdc::LayerDataWithWorld>,std::equal_to<unsigned short>,std::allocator<std::pair<unsigned short,std::set<gdc::LayerDataWithWorld>>>,std::vector<std::pair<unsigned short,std::set<gdc::LayerDataWithWorld>>>>::operator[]((v101[67] + 48), *(v82 + 8));
          operator new();
        }

        v86 = v101[61];
        v87 = v101[62];
        if (v86 != v87)
        {
          while (1)
          {
            v88 = *v86;
            if (v88 == v85)
            {
              break;
            }

            ++v86;
            if (v85 < v88 || v86 == v87)
            {
              v86 = v101[62];
              break;
            }
          }
        }

        v90 = v86 == v87;
        v91 = !v90;
        v80 &= v91;
        v81 &= v90;
      }

      v82 += 152;
    }

    while (v82 != v83);
  }

  v102[10] = v79 & 1;
  v102[8] = v81 & 1;
  v102[9] = v81 & 1 & v80;
  *&v122.f64[0] = &v107;
  std::vector<std::pair<unsigned short,std::unordered_set<gdc::LayerDataRequestKey,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<gdc::LayerDataRequestKey>>>>::__destroy_vector::operator()[abi:nn200100](&v122);
  md::RegistryManager::update(v101[16], v101[16] + 696, a4, 0);
  return std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v105);
}

void sub_1B2E2C274(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51)
{
  a47 = &unk_1F2A61128;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&a49);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&a21);
  _Unwind_Resume(a1);
}

BOOL gm::Box<double,2>::intersects<int,void>(float64x2_t *a1, float64x2_t *a2)
{
  v2 = 0;
  v3 = 0;
  do
  {
    v4 = a1[1].f64[v3];
    v5 = a1->f64[v3];
    if (v2)
    {
      break;
    }

    v2 = 1;
    v3 = 1;
  }

  while (v4 >= v5);
  if (v4 < v5)
  {
    return 0;
  }

  v6 = a2[1].f64[0];
  if (v6 == 0.0)
  {
    return 0;
  }

  v7 = vmaxnmq_f64(vsubq_f64(*a2, a1[1]), vsubq_f64(*a1, *a2));
  if (v7.f64[0] >= v6 || v7.f64[1] >= v6)
  {
    return 0;
  }

  result = 1;
  if (v7.f64[0] > 0.0 && v7.f64[1] > 0.0)
  {
    return vaddvq_f64(vmulq_f64(v7, v7)) < v6 * v6;
  }

  return result;
}

void std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<gdc::LayerDataWithWorld,void *>>>::operator()[abi:nn200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[5];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *std::set<gdc::LayerDataWithWorld>::set[abi:nn200100](void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a1 + 1;
  std::set<gdc::LayerDataWithWorld>::insert[abi:nn200100]<std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::__split_buffer<std::pair<unsigned short,std::set<gdc::LayerDataWithWorld>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    std::__tree<gdc::LayerDataWithWorld>::destroy(*(i - 16));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<geo::QuadTile *>::emplace_front<geo::QuadTile *>(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      if (!(v9 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

void md::ARSceneLogic::allocateContext(md::ARSceneLogic *this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 67);
  v3 = *(this + 68);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    *a2 = v2;
    a2[1] = v3;
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);

    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  else
  {
    *a2 = v2;
    a2[1] = 0;
  }
}

uint64_t md::Logic<md::ARSceneLogic,md::ARSceneContext,md::LogicDependencies<gdc::TypeList<md::CameraContext>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x29BDA47DB65B52C8 && (v4 = *(a3 + 32)) != 0)
  {
    v6 = result;
    v8 = md::LogicDependencies<gdc::TypeList<md::CameraContext>,gdc::TypeList<>>::resolveDependencies(**(a2 + 8), *(*(a2 + 8) + 8));
    v9 = v7;
    return (*(*v6 + 160))(v6, a2, &v8, v4);
  }

  else
  {
    a4[23] = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t md::LogicDependencies<gdc::TypeList<md::CameraContext>,gdc::TypeList<>>::resolveDependencies(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = vcnt_s8(a2);
  v2.i16[0] = vaddlv_u8(v2);
  if (v2.u32[0] > 1uLL)
  {
    v3 = 0x1AF456233693CD46;
    if (a2 <= 0x1AF456233693CD46)
    {
      v3 = 0x1AF456233693CD46 % a2;
    }
  }

  else
  {
    v3 = (a2 - 1) & 0x1AF456233693CD46;
  }

  v4 = *(a1 + 8 * v3);
  if (!v4)
  {
    return 0;
  }

  v5 = *v4;
  if (!v5)
  {
    return 0;
  }

  while (1)
  {
    v6 = v5[1];
    if (v6 == 0x1AF456233693CD46)
    {
      break;
    }

    if (v2.u32[0] > 1uLL)
    {
      if (v6 >= a2)
      {
        v6 %= a2;
      }
    }

    else
    {
      v6 &= a2 - 1;
    }

    if (v6 != v3)
    {
      return 0;
    }

LABEL_16:
    result = 0;
    v5 = *v5;
    if (!v5)
    {
      return result;
    }
  }

  if (v5[2] != 0x1AF456233693CD46)
  {
    goto LABEL_16;
  }

  v8 = v5[5];
  if (*(v8 + 8) == 0x1AF456233693CD46)
  {
    return *(v8 + 32);
  }

  return 0;
}

uint64_t md::Logic<md::ARSceneLogic,md::ARSceneContext,md::LogicDependencies<gdc::TypeList<md::CameraContext>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x29BDA47DB65B52C8)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7 = md::LogicDependencies<gdc::TypeList<md::CameraContext>,gdc::TypeList<>>::resolveDependencies(**(a2 + 8), *(*(a2 + 8) + 8));
      v8 = v6;
      return (*(*v5 + 152))(v5, a2, &v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARSceneLogic,md::ARSceneContext,md::LogicDependencies<gdc::TypeList<md::CameraContext>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x29BDA47DB65B52C8)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7 = md::LogicDependencies<gdc::TypeList<md::CameraContext>,gdc::TypeList<>>::resolveDependencies(**(a2 + 8), *(*(a2 + 8) + 8));
      v8 = v6;
      return (*(*v5 + 144))(v5, a2, &v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARSceneLogic,md::ARSceneContext,md::LogicDependencies<gdc::TypeList<md::CameraContext>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x29BDA47DB65B52C8)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7 = md::LogicDependencies<gdc::TypeList<md::CameraContext>,gdc::TypeList<>>::resolveDependencies(**(a2 + 8), *(*(a2 + 8) + 8));
      v8 = v6;
      return (*(*v5 + 136))(v5, a2, &v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARSceneLogic,md::ARSceneContext,md::LogicDependencies<gdc::TypeList<md::CameraContext>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x29BDA47DB65B52C8)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7 = md::LogicDependencies<gdc::TypeList<md::CameraContext>,gdc::TypeList<>>::resolveDependencies(**(a2 + 8), *(*(a2 + 8) + 8));
      v8 = v6;
      return (*(*v5 + 128))(v5, a2, &v7, v3);
    }
  }

  return result;
}

void sub_1B2E2CCC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  MEMORY[0x1B8C62190](v10, v11, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t gdc::ObjectHolder<md::ARSceneContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::ARSceneContext>::~ManagedObjectHolder(void *a1)
{
  gdc::ManagedObjectHolder<md::ARSceneContext>::~ManagedObjectHolder(a1);

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::ARSceneContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A04468;
  v2 = a1[4];
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    MEMORY[0x1B8C62190](v2, 0x20C40A4A59CD2);
  }

  return a1;
}

void md::ARSceneLogic::~ARSceneLogic(md::ARSceneLogic *this)
{
  md::ARSceneLogic::~ARSceneLogic(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A042F8;
  v2 = *(this + 68);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 61);
  if (v3 != *(this + 63))
  {
    free(v3);
  }

  v9 = (this + 464);
  std::vector<std::pair<unsigned short,std::list<std::unique_ptr<gdc::SelectionContext>>>>::__destroy_vector::operator()[abi:nn200100](&v9);
  md::Monitorable<md::ConfigValue<GEOConfigKeyUInteger,unsigned int>>::~Monitorable(this + 384, v4);
  md::Monitorable<md::ConfigValue<GEOConfigKeyDouble,double>>::~Monitorable(this + 304, v5);
  md::Monitorable<md::ConfigValue<GEOConfigKeyUInteger,unsigned int>>::~Monitorable(this + 224, v6);
  md::Monitorable<md::ConfigValue<GEOConfigKeyDouble,double>>::~Monitorable(this + 144, v7);
  v8 = *(this + 17);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

uint64_t md::Monitorable<md::ConfigValue<GEOConfigKeyUInteger,unsigned int>>::~Monitorable(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    GEOConfigRemoveBlockListener();
    v3 = *(a1 + 24);
    *(a1 + 24) = 0;
  }

  atomic_store(0, *(a1 + 32));
  std::__function::__value_func<void ()>::~__value_func[abi:nn200100](a1 + 48);
  v4 = *(a1 + 40);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  return a1;
}

void sub_1B2E2CF14(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()>::~__value_func[abi:nn200100](v1 + 48);
  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  _Unwind_Resume(a1);
}

uint64_t md::Monitorable<md::ConfigValue<GEOConfigKeyDouble,double>>::~Monitorable(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    GEOConfigRemoveBlockListener();
    v3 = *(a1 + 24);
    *(a1 + 24) = 0;
  }

  atomic_store(0, *(a1 + 32));
  std::__function::__value_func<void ()(double)>::~__value_func[abi:nn200100](a1 + 48);
  v4 = *(a1 + 40);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  return a1;
}

void sub_1B2E2CF9C(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(double)>::~__value_func[abi:nn200100](v1 + 48);
  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  _Unwind_Resume(a1);
}

void *___ZN2md11MonitorableINS_11ConfigValueI20GEOConfigKeyUIntegerjEEE16setCallbackQueueEPU28objcproto17OS_dispatch_queue8NSObjectNSt3__18functionIFvjEEE_block_invoke(void *result)
{
  v1 = result[5];
  if (v1)
  {
    v2 = result[4];
    if (*v1)
    {
      v3 = *(v2 + 16);
      if (*v2)
      {
        v4 = *(v2 + 8) == 0;
      }

      else
      {
        v4 = 1;
      }

      if (!v4)
      {
        *(v2 + 16) = GEOConfigGetUInteger();
      }

      result = *(v2 + 72);
      if (result)
      {
        v5 = v3;
        return (*(*result + 48))(result, &v5);
      }
    }
  }

  return result;
}

uint64_t ___ZN2md11MonitorableINS_11ConfigValueI18GEOConfigKeyDoubledEEE16setCallbackQueueEPU28objcproto17OS_dispatch_queue8NSObjectNSt3__18functionIFvdEEE_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    v2 = *(result + 32);
    if (*v1)
    {
      v3 = v2[2];
      v4 = *(v2 + 1);
      if (*v2)
      {
        v5 = v4 == 0;
      }

      else
      {
        v5 = 1;
      }

      if (!v5)
      {
        GEOConfigGetDouble();
        *(v2 + 2) = v6;
      }

      result = *(v2 + 9);
      if (result)
      {

        return std::function<void ()(double)>::operator()(result, v4, v3);
      }
    }
  }

  return result;
}

void md::Logic<md::ARSceneLogic,md::ARSceneContext,md::LogicDependencies<gdc::TypeList<md::CameraContext>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2, v3);
}

mdm::zone_mallocator *md::RouteAnnotationLabelFeature::populateStyleQueries(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v8 = 0;
  if ((*(*a1 + 496))(a1) && (*(*a1 + 488))(a1, 0))
  {
    operator new();
  }

  std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](a1 + 41);
  v4 = a1[37];
  if (v4 != a1[38])
  {
    v5 = *v4;
    if (v5)
    {
      objc_msgSend_attributes(v5);
    }

    else
    {
      memset(v9, 0, sizeof(v9));
    }

    (*(*a1 + 560))(a1, v9);
    _ZNSt3__115allocate_sharedB8nn200100I22FeatureStyleAttributesNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(&v7);
  }

  return std::unique_ptr<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>::reset[abi:nn200100](&v8, 0);
}

void sub_1B2E2D528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  MEMORY[0x1B8C62190](v17, 0x1012C40B602C572, a3, a4, a5, a6, a7, a8);
  std::unique_ptr<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>::reset[abi:nn200100](va, 0);
  _Unwind_Resume(a1);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<FeatureStyleAttributes>>(uint64_t a1, void *a2)
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

void sub_1B2E2D9B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  v53 = 0;
  while (1)
  {
    if (*(v51 + v53 + 119) < 0)
    {
      operator delete(*(v51 + v53 + 96));
    }

    v53 -= 64;
    if (v53 == -128)
    {
      if (a35 < 0)
      {
        operator delete(__p);
      }

      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t md::RouteAnnotationLabelFeature::debugString@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v5 = a4;
  std::ostringstream::basic_ostringstream[abi:nn200100](&v44);
  md::LabelFeature::debugString(a1, a2, a3, v5, __p);
  if (v43 >= 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if (v43 >= 0)
  {
    v11 = HIBYTE(v43);
  }

  else
  {
    v11 = __p[1];
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v44, v10, v11);
  if (SHIBYTE(v43) < 0)
  {
    operator delete(__p[0]);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v44, "RouteAnnotation:\n", 17);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v44, "  CollisionPriority:", 20);
  v12 = MEMORY[0x1B8C61C80](&v44, *(a1 + 396));
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v12, "\n", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v44, "  RouteOffsetInMeters:", 22);
  v13 = MEMORY[0x1B8C61C60](&v44, *(a1 + 368));
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v13, "\n", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v44, "  DistanceFromUser:", 19);
  v14 = (*(**(*(a2 + 168) + 32) + 72))(*(*(a2 + 168) + 32));
  v15 = MEMORY[0x1B8C61C60](&v44, vabdd_f64(v14, *(a1 + 368)));
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v15, "\n", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v44, "  facingAzimuth:", 16);
  v40 = a5;
  v16 = std::ostream::operator<<();
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v16, "\n", 1);
  v18 = *(a1 + 296);
  v17 = *(a1 + 304);
  if (v18 != v17)
  {
    v19 = 1;
    do
    {
      v20 = *v18;
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v44, "  TrafficFeature ", 17);
      v21 = MEMORY[0x1B8C61CB0](&v44, v19);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v21, "\n", 1);
      v22 = [v20 trafficFeatureType];
      switch(v22)
      {
        case 1:
          v23 = v20;
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v44, "    CameraType: ", 16);
          v24 = +[VKTrafficCameraFeature stringForTrafficCameraType:](VKTrafficCameraFeature, "stringForTrafficCameraType:", [v23 type]);
          std::string::basic_string[abi:nn200100]<0>(&v41, [v24 UTF8String]);
          v31 = std::string::append(&v41, "\n", 1uLL);
          v32 = v31->__r_.__value_.__r.__words[2];
          *__p = *&v31->__r_.__value_.__l.__data_;
          v43 = v32;
          v31->__r_.__value_.__l.__size_ = 0;
          v31->__r_.__value_.__r.__words[2] = 0;
          v31->__r_.__value_.__r.__words[0] = 0;
          if (v43 >= 0)
          {
            v27 = __p;
          }

          else
          {
            v27 = __p[0];
          }

          if (v43 >= 0)
          {
            v28 = HIBYTE(v43);
          }

          else
          {
            v28 = __p[1];
          }

          break;
        case 2:
          v23 = v20;
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v44, "    SignalType: ", 16);
          v24 = +[VKTrafficSignalFeature stringForTrafficSignalType:](VKTrafficSignalFeature, "stringForTrafficSignalType:", [v23 type]);
          std::string::basic_string[abi:nn200100]<0>(&v41, [v24 UTF8String]);
          v29 = std::string::append(&v41, "\n", 1uLL);
          v30 = v29->__r_.__value_.__r.__words[2];
          *__p = *&v29->__r_.__value_.__l.__data_;
          v43 = v30;
          v29->__r_.__value_.__l.__size_ = 0;
          v29->__r_.__value_.__r.__words[2] = 0;
          v29->__r_.__value_.__r.__words[0] = 0;
          if (v43 >= 0)
          {
            v27 = __p;
          }

          else
          {
            v27 = __p[0];
          }

          if (v43 >= 0)
          {
            v28 = HIBYTE(v43);
          }

          else
          {
            v28 = __p[1];
          }

          break;
        case 4:
          v23 = v20;
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v44, "    UserReportedIncidentType: ", 30);
          v24 = +[VKTrafficIncidentFeature stringForIncidentType:](VKTrafficIncidentFeature, "stringForIncidentType:", [v23 type]);
          std::string::basic_string[abi:nn200100]<0>(&v41, [v24 UTF8String]);
          v25 = std::string::append(&v41, "\n", 1uLL);
          v26 = v25->__r_.__value_.__r.__words[2];
          *__p = *&v25->__r_.__value_.__l.__data_;
          v43 = v26;
          v25->__r_.__value_.__l.__size_ = 0;
          v25->__r_.__value_.__r.__words[2] = 0;
          v25->__r_.__value_.__r.__words[0] = 0;
          if (v43 >= 0)
          {
            v27 = __p;
          }

          else
          {
            v27 = __p[0];
          }

          if (v43 >= 0)
          {
            v28 = HIBYTE(v43);
          }

          else
          {
            v28 = __p[1];
          }

          break;
        default:
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v44, "    Type: ", 10);
          v23 = +[VKTrafficFeature stringForFeatureType:](VKTrafficFeature, "stringForFeatureType:", [v20 trafficFeatureType]);
          std::string::basic_string[abi:nn200100]<0>(&v41, [v23 UTF8String]);
          v35 = std::string::append(&v41, "\n", 1uLL);
          v36 = v35->__r_.__value_.__r.__words[2];
          *__p = *&v35->__r_.__value_.__l.__data_;
          v43 = v36;
          v35->__r_.__value_.__l.__size_ = 0;
          v35->__r_.__value_.__r.__words[2] = 0;
          v35->__r_.__value_.__r.__words[0] = 0;
          if (v43 >= 0)
          {
            v37 = __p;
          }

          else
          {
            v37 = __p[0];
          }

          if (v43 >= 0)
          {
            v38 = HIBYTE(v43);
          }

          else
          {
            v38 = __p[1];
          }

          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v44, v37, v38);
          if (SHIBYTE(v43) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v41.__r_.__value_.__l.__data_);
          }

          goto LABEL_37;
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v44, v27, v28);
      if (SHIBYTE(v43) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v41.__r_.__value_.__l.__data_);
      }

LABEL_37:
      if ([v20 isGrouped])
      {
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v44, "    GroupItemVerticalDisplayOrder: ", 35);
        v33 = MEMORY[0x1B8C61C90](&v44, [v20 groupItemVerticalDisplayOrder]);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v33, "\n", 1);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v44, "    GroupItemHorizontalDisplayOrder: ", 37);
        v34 = MEMORY[0x1B8C61C90](&v44, [v20 groupItemHorizontalDisplayOrder]);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v34, "\n", 1);
      }

      ++v18;
      ++v19;
    }

    while (v18 != v17);
  }

  std::ostringstream::str[abi:nn200100](v40, &v44);
  v44 = *MEMORY[0x1E69E54E8];
  *(&v44 + *(v44 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v45 = MEMORY[0x1E69E5548] + 16;
  if (v47 < 0)
  {
    operator delete(v46[7].__locale_);
  }

  v45 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v46);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v48);
}

void sub_1B2E2E1C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  a23 = *MEMORY[0x1E69E54E8];
  *(&a23 + *(a23 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  a24 = MEMORY[0x1E69E5548] + 16;
  if (a37 < 0)
  {
    operator delete(__p);
  }

  a24 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a25);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&a40);
  _Unwind_Resume(a1);
}

void md::RouteAnnotationLabelFeature::~RouteAnnotationLabelFeature(md::RouteAnnotationLabelFeature *this)
{
  *this = &unk_1F2A04490;
  v3 = (this + 328);
  std::vector<std::shared_ptr<FeatureStyleAttributes>,geo::allocator_adapter<std::shared_ptr<FeatureStyleAttributes>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v3 = (this + 296);
  std::vector<VKTrafficFeature * {__strong},geo::allocator_adapter<VKTrafficFeature * {__strong},mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v3 = (this + 264);
  std::vector<geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(this + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::LabelFeature::~LabelFeature(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A04490;
  v3 = (this + 328);
  std::vector<std::shared_ptr<FeatureStyleAttributes>,geo::allocator_adapter<std::shared_ptr<FeatureStyleAttributes>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v3 = (this + 296);
  std::vector<VKTrafficFeature * {__strong},geo::allocator_adapter<VKTrafficFeature * {__strong},mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v3 = (this + 264);
  std::vector<geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(this + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::LabelFeature::~LabelFeature(this);
}

void std::vector<std::shared_ptr<FeatureStyleAttributes>,geo::allocator_adapter<std::shared_ptr<FeatureStyleAttributes>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](v2);
    v3 = **a1;
    v5 = mdm::zone_mallocator::instance(v4);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<FeatureStyleAttributes>>(v5, v3);
  }
}

void std::vector<geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](void ***result)
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
      v6 = v3 - 3;
      v7 = v3 - 3;
      v8 = v3 - 3;
      do
      {
        v9 = *v8;
        v8 -= 3;
        result = (*v9)(v7);
        v6 -= 3;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v4 = **v5;
    }

    v1[1] = v2;
    v11 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>(v11, v4);
  }
}