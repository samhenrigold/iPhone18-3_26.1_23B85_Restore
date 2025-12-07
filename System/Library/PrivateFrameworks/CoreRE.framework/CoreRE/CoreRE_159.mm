uint64_t re::anonymous namespace::removeThinFeaturesByVoxelization(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = v361;
  v380 = *MEMORY[0x1E69E9840];
  v338 = 0;
  memset(v337, 0, sizeof(v337));
  v336 = 0u;
  v339 = 0x7FFFFFFFLL;
  v6 = *v5;
  v270 = v5;
  v7 = v5[2];
  re::GeomMesh::GeomMesh(v326, 0);
  re::computeOrientedBoundingBox(v3, &v374);
  v8 = 0;
  v9 = 0;
  v329 = xmmword_1E3047670;
  v330 = xmmword_1E3047680;
  v331 = xmmword_1E30476A0;
  v332 = xmmword_1E30474D0;
  v10 = vdup_n_s32(0x3A83126Fu);
  do
  {
    v11 = *(&v374 + v8);
    v12 = vmulq_f32(v11, v11);
    v13 = vadd_f32(*v12.i8, *&vextq_s8(v12, v12, 8uLL));
    if (vaddv_f32(v13) > 0.0)
    {
      v14 = vadd_f32(v13, vdup_lane_s32(v13, 1)).u32[0];
      v15 = vrsqrte_f32(v14);
      v16 = vmul_f32(v15, vrsqrts_f32(v14, vmul_f32(v15, v15)));
      v11 = vmulq_n_f32(v11, vmul_f32(v16, vrsqrts_f32(v14, vmul_f32(v16, v16))).f32[0]);
    }

    v17 = vcgt_f32(v10, vabs_f32(*v11.f32));
    v18 = (v17.i8[0] & 1) - v17.i32[1];
    if (fabsf(v11.f32[2]) < 0.001)
    {
      ++v18;
    }

    v9 |= v18 < 2;
    *(&v329 + v8) = v11;
    v8 += 16;
  }

  while (v8 != 48);
  v19 = v3 + 56;
  v20 = v377;
  v20.i32[3] = HIDWORD(v332);
  v332 = v20;
  v271 = (v3 + 40);
  if (v9)
  {
    v21 = vmulq_f32(v329, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v331, v331, 0xCuLL), v331, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v330, v330), v330, 0xCuLL))), vextq_s8(vuzp1q_s32(v331, v331), v331, 0xCuLL), vextq_s8(vextq_s8(v330, v330, 0xCuLL), v330, 8uLL)));
    v22 = v21.f32[2] + vaddv_f32(*v21.f32);
    if (v22 == 1.0 || (v284 = (v3 + 40), v23 = v3, fabsf(v22 + -1.0) < (((fabsf(v22) + 1.0) + 1.0) * 0.00001)))
    {
      v23 = v326;
      v295 = v331;
      v298 = v20;
      v291 = v330;
      re::GeomMesh::copy(v3, v326);
      v381.columns[0] = v329;
      v381.columns[1] = v291;
      v381.columns[2] = v295;
      v381.columns[3] = v298;
      v382 = __invert_f4(v381);
      v374 = v382.columns[0];
      v375 = v382.columns[1];
      v376 = v382.columns[2];
      v377 = v382.columns[3];
      re::transform(v326, &v374);
      v284 = &v327;
      v19 = &v328;
    }
  }

  else
  {
    v284 = (v3 + 40);
    v23 = v3;
  }

  v313 = 0;
  v307 = 0;
  v309 = 0;
  v311 = 0;
  v310 = 0;
  v312 = 0;
  re::GeomMeshBVHTree::init(&v307, v23);
  v341 = re::GeomMesh::accessVertexPositions(v23);
  LODWORD(v342) = v24;
  *&v354[24] = re::globalAllocators(v341)[2];
  v25 = (*(**&v354[24] + 32))(*&v354[24], 32, 0);
  *v25 = &unk_1F5D021F8;
  v25[1] = v23;
  v25[2] = &v341;
  v25[3] = v354;
  *&v354[32] = v25;
  re::computeAABB(&v374, v23);
  v26 = vsubq_f32(v375, v374);
  *v27.i32 = (v6 + 0.000001) + (v6 + 0.000001);
  v28 = vaddq_f32(vdupq_lane_s32(v27, 0), v26);
  v29 = v6 / 10.0;
  v335 = v6;
  if ((v6 / 10.0) >= v26.f32[0])
  {
    v30 = 1;
  }

  else
  {
    v30 = ((v28.f32[0] / v6) + 0.5);
  }

  LOWORD(v333) = v30;
  if (v29 >= v26.f32[1])
  {
    v31 = 1;
  }

  else
  {
    v31 = ((v28.f32[1] / v6) + 0.5);
  }

  HIWORD(v333) = v31;
  if (v29 >= v26.f32[2])
  {
    v32 = 1;
  }

  else
  {
    v32 = ((v28.f32[2] / v6) + 0.5);
  }

  v334 = v32;
  v33.i64[0] = 0x3F0000003F000000;
  v33.i64[1] = 0x3F0000003F000000;
  v34 = vmulq_f32(vaddq_f32(v375, v374), v33);
  v336.f32[0] = v34.f32[0] - (v6 * vcvts_n_f32_u32(v30, 1uLL));
  v336.f32[1] = v34.f32[1] - (v6 * vcvts_n_f32_u32(v31, 1uLL));
  v336.f32[2] = v34.f32[2] - (v6 * vcvts_n_f32_u32(v32, 1uLL));
  v272 = v3;
  v273 = v23;
  if (v30)
  {
    v35 = 0;
    v36 = v6 * v6;
    v37 = 3;
    v38 = v371;
    v4 = &v355;
    v39 = v32;
    v40 = v31;
    while (!v40)
    {
      v40 = 0;
LABEL_56:
      v35 = (v35 + 1);
      if (v35 >= v30)
      {
        v268 = v32;
        v269 = v31;
        v1 = v30 - 1;
        v4 = v361;
        goto LABEL_63;
      }
    }

    v41 = 0;
    while (!v39)
    {
      v39 = 0;
LABEL_53:
      v41 = (v41 + 1);
      if (v41 >= v31)
      {
        LOWORD(v30) = v333;
        v40 = v31;
        goto LABEL_56;
      }
    }

    v42 = 0;
    v299.i32[0] = v41;
    while (1)
    {
      LOWORD(v318[0]) = v35;
      WORD1(v318[0]) = v41;
      WORD2(v318[0]) = v42;
      v305 = 0;
      v302 = 0;
      v303 = 0;
      v301 = 0;
      v304 = 0;
      v306 = 0.0;
      v34.i32[0] = LODWORD(v318[0]) << 16;
      v34.i32[1] = v318[0];
      v33.f32[0] = v335;
      v43 = vdupq_lane_s32(*v33.f32, 0);
      *v34.f32 = vmul_f32(*v43.f32, vcvt_f32_s32(vshr_n_s32(*v34.f32, 0x10uLL)));
      v34.f32[2] = v335 * v42;
      v346 = vaddq_f32(v336, v34);
      v347 = vaddq_f32(v43, v346);
      if (!v311)
      {
        goto LABEL_416;
      }

      (*(**&v354[32] + 16))(*&v354[32], &v346, v313, &v301);
      if (v303)
      {
        break;
      }

LABEL_47:
      if (v301 && v305)
      {
        (*(v301->i64[0] + 40))();
      }

      v42 = (v42 + 1);
      LOWORD(v32) = v334;
      if (v334 <= v42)
      {
        LOWORD(v31) = HIWORD(v333);
        v39 = v334;
        goto LABEL_53;
      }
    }

    v356 = 0;
    v355 = 0;
    v357 = 0;
    v306 = 0.0;
    v44 = v305;
    v1 = &v305[v303];
LABEL_30:
    v3 = *v44;
    v45 = 0uLL;
    v362[0] = 0u;
    memset(v361, 0, sizeof(v361));
    v46 = *v284;
    if (*v284 <= v3)
    {
      goto LABEL_332;
    }

    v47 = 0;
    *v371 = *(*v19 + 16 * v3);
    v3 = v342;
    v48 = v341;
    if (*&v371[12] == -1)
    {
      v49 = 3;
    }

    else
    {
      v49 = 4;
    }

    v50 = v361;
    while (1)
    {
      v51 = *&v371[4 * v47];
      if (v3 <= v51)
      {
        break;
      }

      *v50++ = *(v48 + v51);
      if (v49 == ++v47)
      {
        re::internal::VoxelGrid::accumulateAreaProjectionsOfFaceInBox(v49, v361, &v346, &v355);
        if (++v44 == v1)
        {
          v52 = &v355;
          v53 = *&v355;
          for (i = 4; i != 24; i += 4)
          {
            if (v53 < *(&v355 + i))
            {
              v53 = *(&v355 + i);
              v52 = (&v355 + i);
            }
          }

          v55 = *v52 / v36;
          if (v55 > 1.0)
          {
            v55 = 1.0;
          }

          v306 = v55;
          v41 = v299.u32[0];
          if (v55 > 0.0)
          {
            v374 = 0uLL;
            v375.i64[0] = 0;
            re::HashTable<re::internal::Voxel,re::internal::VoxelGrid::VoxelEntry,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::findEntry<re::internal::Voxel>(&v374, v337, v318);
            if (v374.i32[3] == 0x7FFFFFFF)
            {
              v3 = re::HashTable<re::internal::Voxel,re::internal::VoxelGrid::VoxelEntry,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::allocEntry(v337, v374.u32[2], v374.u64[0]);
              *(v3 + 4) = v318[0];
              *(v3 + 8) = WORD2(v318[0]);
              re::DynamicArray<float>::DynamicArray(v3 + 16, &v301);
              *(v3 + 56) = v306;
              ++HIDWORD(v339);
            }
          }

          goto LABEL_47;
        }

        goto LABEL_30;
      }
    }

    v322[0] = 0;
    v377 = 0u;
    v378 = 0u;
    v375 = 0u;
    v376 = 0u;
    v374 = 0u;
    v56 = MEMORY[0x1E69E9C10];
    v57 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v379 = 136315906;
    *&v379[4] = "operator[]";
    *&v379[12] = 1024;
    if (v57)
    {
      v58 = 3;
    }

    else
    {
      v58 = 2;
    }

    *&v379[14] = 613;
    *&v379[18] = 2048;
    *&v379[20] = v51;
    *&v379[28] = 2048;
    *&v379[30] = v3;
    _os_log_send_and_compose_impl(v58, v322, &v374, 80, &dword_1E1C61000, v56, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v379, 38, v266, v267);
    _os_crash_msg();
    __break(1u);
  }

  v268 = v32;
  v269 = v31;
  v1 = 0xFFFFFFFFLL;
LABEL_63:
  if (*&v354[32])
  {
    (***&v354[32])(*&v354[32]);
    if (*&v354[32] != v354)
    {
      (*(**&v354[24] + 40))(*&v354[24]);
    }
  }

  if (v309 && v313)
  {
    (*(*v309 + 40))();
  }

  v325 = 0;
  v323 = 0;
  v322[0] = 0;
  v322[1] = 0;
  v321 = 0;
  v319 = 0;
  v318[0] = 0;
  v318[1] = 0;
  v361[2].i32[0] = 0;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 36) = 0x7FFFFFFFLL;
  v324 = 1;
  v320 = 1;
  *&v354[32] = 0;
  memset(v354, 0, 28);
  re::internal::VoxelGrid::fetchVoxelsWithOccupancyRange(&v333, v354, 0.0, v7);
  *&v379[32] = 0;
  memset(v379, 0, 28);
  re::DynamicArray<re::internal::Voxel>::setCapacity(v379, 0x1BuLL);
  if (*&v354[16])
  {
    v59 = *&v354[32];
    v274 = *&v354[32] + 6 * *&v354[16];
    v60 = *&v379[24];
    v277 = v1;
    do
    {
      v374.i32[0] = *v59;
      v281 = v59;
      v374.i16[2] = *(v59 + 4);
      v61 = v374.i16[0] - (v374.i16[0] > 0);
      v300 = v374.i16[0];
      if (v1 <= v374.i16[0])
      {
        v62 = v374.i16[0];
      }

      else
      {
        v62 = v374.i16[0] + 1;
      }

      if (v269 - 1 <= v374.i16[1])
      {
        v63 = v374.i16[1];
      }

      else
      {
        v63 = v374.i16[1] + 1;
      }

      if (v374.i16[2] <= 0)
      {
        v64 = 0;
      }

      else
      {
        v64 = -1;
      }

      v296 = v64;
      if (v268 - 1 <= v374.i16[2])
      {
        v65 = v374.i16[2];
      }

      else
      {
        v65 = v374.i16[2] + 1;
      }

      *&v379[16] = 0;
      *&v379[24] = ++v60;
      v289 = v62;
      if (v61 <= v62)
      {
        v66 = 0;
        v292 = v374.i16[1];
        LODWORD(v3) = v374.i16[1] - (v374.i16[1] > 0);
        v67 = v374.i16[2] - (v374.i16[2] > 0);
        v286 = v3;
        do
        {
          while (v3 <= v63)
          {
            if (v67 <= v65)
            {
              v68 = v61 == v300 && v3 == v292;
              v69 = v68;
              v70 = v296;
              v71 = v67;
              do
              {
                if (v70)
                {
                  v72 = 0;
                }

                else
                {
                  v72 = v69;
                }

                if ((v72 & 1) == 0)
                {
                  if (v66 >= *&v379[8])
                  {
                    re::DynamicArray<re::internal::Voxel>::growCapacity(v379, v66 + 1);
                    v66 = *&v379[16];
                    v60 = *&v379[24];
                  }

                  v73 = (*&v379[32] + 6 * v66);
                  *v73 = v61;
                  v73[1] = v3;
                  v73[2] = v71;
                  *&v379[16] = ++v66;
                  *&v379[24] = ++v60;
                }

                ++v71;
                ++v70;
              }

              while (v71 <= v65);
            }

            LODWORD(v3) = v3 + 1;
          }

          ++v61;
          v3 = v286;
        }

        while (v61 <= v289);
      }

      else
      {
        v66 = 0;
      }

      v74 = *&v379[32];
      v75 = v66 + 1;
      v1 = v277;
      v76 = v278;
      while (--v75)
      {
        v77 = (v74 + 6);
        v76 = v76 & 0xFFFF000000000000 | *v74 | (*(v74 + 2) << 32);
        v78 = re::internal::VoxelGrid::occupancy(&v333, v76);
        v74 = v77;
        if (v78 > v7)
        {
          LOBYTE(v307) = 0;
          goto LABEL_110;
        }
      }

      LOBYTE(v307) = 1;
LABEL_110:
      re::HashTable<re::internal::Voxel,BOOL,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::add(v361, &v374, &v307);
      v278 = v76;
      v59 = v281 + 6;
    }

    while (v281 + 6 != v274);
    v79 = v361[2].i32[0];
    if (v361[2].i32[0])
    {
      v80 = 0;
      v81 = v361[1].i64[0];
      while (1)
      {
        v82 = *v81;
        v81 += 6;
        if (v82 < 0)
        {
          break;
        }

        if (v361[2].u32[0] == ++v80)
        {
          LODWORD(v80) = v361[2].i32[0];
          break;
        }
      }
    }

    else
    {
      LODWORD(v80) = 0;
    }

    v4 = v361;
    if (v80 != v361[2].i32[0])
    {
      v83 = v361[1].i64[0];
      while (1)
      {
        v84 = v83 + 24 * v80;
        LODWORD(v307) = *(v84 + 4);
        WORD2(v307) = *(v84 + 8);
        if (*(v84 + 10) != 1)
        {
LABEL_138:
          v88 = v318;
          goto LABEL_139;
        }

        v85 = WORD2(v307);
        v86 = v307;
        v87 = v307 | (WORD2(v307) << 32);
        v3 = v3 & 0xFFFF000000000000 | v87;
        if (re::internal::VoxelGrid::occupancy(&v333, v3) < 0.05)
        {
          break;
        }

        LOWORD(v301) = v86 - 1;
        v89 = v87 >> 16;
        WORD1(v301) = v89;
        WORD2(v301) = v85;
        re::HashTable<re::internal::Voxel,BOOL,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::findEntry<re::internal::Voxel>(&v374, v361, &v301);
        if (v374.i32[3] != 0x7FFFFFFF && *(v83 + 24 * v374.u32[3] + 10) != 1 || (LOWORD(v301) = v86 + 1, WORD1(v301) = v89, WORD2(v301) = v85, re::HashTable<re::internal::Voxel,BOOL,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::findEntry<re::internal::Voxel>(&v374, v361, &v301), v374.i32[3] != 0x7FFFFFFF) && *(v83 + 24 * v374.u32[3] + 10) != 1 || (LOWORD(v301) = v86, WORD1(v301) = v89 - 1, WORD2(v301) = v85, re::HashTable<re::internal::Voxel,BOOL,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::findEntry<re::internal::Voxel>(&v374, v361, &v301), v374.i32[3] != 0x7FFFFFFF) && *(v83 + 24 * v374.u32[3] + 10) != 1 || (LOWORD(v301) = v86, WORD1(v301) = v89 + 1, WORD2(v301) = v85, re::HashTable<re::internal::Voxel,BOOL,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::findEntry<re::internal::Voxel>(&v374, v361, &v301), v374.i32[3] != 0x7FFFFFFF) && *(v83 + 24 * v374.u32[3] + 10) != 1 || (LOWORD(v301) = v86, WORD1(v301) = v89, WORD2(v301) = v85 - 1, re::HashTable<re::internal::Voxel,BOOL,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::findEntry<re::internal::Voxel>(&v374, v361, &v301), v374.i32[3] != 0x7FFFFFFF) && *(v83 + 24 * v374.u32[3] + 10) != 1)
        {
          v88 = v318;
          goto LABEL_135;
        }

        LOWORD(v301) = v86;
        WORD1(v301) = v89;
        WORD2(v301) = v85 + 1;
        re::HashTable<re::internal::Voxel,BOOL,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::findEntry<re::internal::Voxel>(&v374, v361, &v301);
        if (v374.i32[3] == 0x7FFFFFFF)
        {
          v4 = v361;
        }

        else
        {
          v4 = v361;
          if (*(v83 + 24 * v374.u32[3] + 10) != 1)
          {
            goto LABEL_138;
          }
        }

        v88 = v322;
LABEL_139:
        re::DynamicArray<re::internal::Voxel>::add(v88, &v307);
        if (v361[2].i32[0] <= (v80 + 1))
        {
          v90 = v80 + 1;
        }

        else
        {
          v90 = v361[2].i32[0];
        }

        while (v90 - 1 != v80)
        {
          LODWORD(v80) = v80 + 1;
          if ((*(v83 + 24 * v80) & 0x80000000) != 0)
          {
            goto LABEL_146;
          }
        }

        LODWORD(v80) = v90;
LABEL_146:
        if (v80 == v79)
        {
          goto LABEL_147;
        }
      }

      v88 = v322;
LABEL_135:
      v4 = v361;
      goto LABEL_139;
    }
  }

LABEL_147:
  re::internal::VoxelGrid::fetchVoxelsWithOccupancyRange(&v333, v354, v7, 1.0);
  v91 = *&v354[32];
  if (*&v354[16])
  {
    v92 = 6 * *&v354[16];
    v93 = *&v354[32];
    do
    {
      v374.i32[0] = *v93;
      v374.i16[2] = *(v93 + 4);
      re::DynamicArray<re::internal::Voxel>::add(v318, &v374);
      v93 += 6;
      v92 -= 6;
    }

    while (v92);
  }

  v376.i32[0] = 0;
  v374 = 0u;
  v375 = 0u;
  *(v376.i64 + 4) = 0x7FFFFFFFLL;
  v94 = v325;
  v3 = v323;
  v38 = v379;
  if (!v323)
  {
    v128 = 0;
    v124 = 0;
    v311 = 0;
    goto LABEL_227;
  }

  v290 = (v325 + 6 * v323);
  v95 = 6 * v323;
  v96 = v325;
  do
  {
    LODWORD(v307) = *v96;
    WORD2(v307) = *(v96 + 2);
    LOBYTE(v301) = 0;
    re::HashTable<re::internal::Voxel,BOOL,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::addOrReplace(&v374, &v307, &v301);
    v96 = (v96 + 6);
    v95 -= 6;
  }

  while (v95);
  v311 = 0;
  v309 = 0;
  v307 = 0;
  v308 = 0;
  LODWORD(v310) = 0;
  v305 = 0;
  v302 = 0;
  v303 = 0;
  v301 = 0;
  v304 = 0;
  if (!v3)
  {
    v128 = 0;
    v124 = 0;
    v38 = v379;
    goto LABEL_227;
  }

  v275 = 6 * v3;
  v282 = v91;
  re::DynamicArray<re::internal::Voxel>::setCapacity(&v307, v3);
  v279 = v3;
  re::DynamicArray<re::internal::Voxel>::setCapacity(&v301, v3);
  v293 = 0;
  v97 = 0;
  v3 = 0x7FFFFFFFLL;
  v98 = &v355;
  v99 = v94;
  v100 = v290;
  do
  {
    LODWORD(v341) = *v99;
    WORD2(v341) = *(v99 + 2);
    re::HashTable<re::internal::Voxel,BOOL,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::findEntry<re::internal::Voxel>(&v346, &v374, &v341);
    v101 = v375.i64[0];
    if ((*(v375.i64[0] + 24 * v346.u32[3] + 10) & 1) == 0)
    {
      v309 = 0;
      LODWORD(v310) = v310 + 1;
      v303 = 0;
      ++v304;
      re::HashTable<re::internal::Voxel,BOOL,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::findEntry<re::internal::Voxel>(&v346, &v374, &v341);
      if (v346.i32[3] == 0x7FFFFFFF || (*(v101 + 24 * v346.u32[3] + 10) & 1) != 0 || (v346.i8[0] = 1, re::HashTable<re::internal::Voxel,BOOL,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::addOrReplace(&v374, &v341, &v346), re::DynamicArray<re::internal::Voxel>::add(&v301, &v341), (v102 = v303) == 0))
      {
        v107 = 0;
      }

      else
      {
        v287 = v97;
        do
        {
          v103 = v305 + 6 * v102;
          LODWORD(v355) = *(v103 - 6);
          WORD2(v355) = *(v103 - 1);
          v303 = v102 - 1;
          ++v304;
          re::DynamicArray<re::internal::Voxel>::add(&v307, &v355);
          v104 = v355;
          v105 = SWORD1(v355);
          v106 = SWORD2(v355);
          if (v355 >= 1)
          {
            *v371 = v355 - 1;
            *&v371[2] = *(&v355 + 2);
            re::HashTable<re::internal::Voxel,BOOL,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::findEntry<re::internal::Voxel>(&v346, &v374, v371);
            if (v346.i32[3] != 0x7FFFFFFF && (*(v375.i64[0] + 24 * v346.u32[3] + 10) & 1) == 0)
            {
              v346.i8[0] = 1;
              re::HashTable<re::internal::Voxel,BOOL,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::addOrReplace(&v374, v371, &v346);
              re::DynamicArray<re::internal::Voxel>::add(&v301, v371);
            }
          }

          if (v105 >= 1)
          {
            *v371 = v104;
            *&v371[2] = v105 - 1;
            *&v371[4] = v106;
            re::HashTable<re::internal::Voxel,BOOL,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::findEntry<re::internal::Voxel>(&v346, &v374, v371);
            if (v346.i32[3] != 0x7FFFFFFF && (*(v375.i64[0] + 24 * v346.u32[3] + 10) & 1) == 0)
            {
              v346.i8[0] = 1;
              re::HashTable<re::internal::Voxel,BOOL,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::addOrReplace(&v374, v371, &v346);
              re::DynamicArray<re::internal::Voxel>::add(&v301, v371);
            }
          }

          if (v106 >= 1)
          {
            *v371 = v104;
            *&v371[2] = v105;
            *&v371[4] = v106 - 1;
            re::HashTable<re::internal::Voxel,BOOL,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::findEntry<re::internal::Voxel>(&v346, &v374, v371);
            if (v346.i32[3] != 0x7FFFFFFF && (*(v375.i64[0] + 24 * v346.u32[3] + 10) & 1) == 0)
            {
              v346.i8[0] = 1;
              re::HashTable<re::internal::Voxel,BOOL,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::addOrReplace(&v374, v371, &v346);
              re::DynamicArray<re::internal::Voxel>::add(&v301, v371);
            }
          }

          if (v1 > v104)
          {
            *v371 = v104 + 1;
            *&v371[2] = v105;
            *&v371[4] = v106;
            re::HashTable<re::internal::Voxel,BOOL,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::findEntry<re::internal::Voxel>(&v346, &v374, v371);
            if (v346.i32[3] != 0x7FFFFFFF && (*(v375.i64[0] + 24 * v346.u32[3] + 10) & 1) == 0)
            {
              v346.i8[0] = 1;
              re::HashTable<re::internal::Voxel,BOOL,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::addOrReplace(&v374, v371, &v346);
              re::DynamicArray<re::internal::Voxel>::add(&v301, v371);
            }
          }

          if (v269 - 1 > v105)
          {
            *v371 = v104;
            *&v371[2] = v105 + 1;
            *&v371[4] = v106;
            re::HashTable<re::internal::Voxel,BOOL,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::findEntry<re::internal::Voxel>(&v346, &v374, v371);
            if (v346.i32[3] != 0x7FFFFFFF && (*(v375.i64[0] + 24 * v346.u32[3] + 10) & 1) == 0)
            {
              v346.i8[0] = 1;
              re::HashTable<re::internal::Voxel,BOOL,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::addOrReplace(&v374, v371, &v346);
              re::DynamicArray<re::internal::Voxel>::add(&v301, v371);
            }
          }

          if (v268 - 1 > v106)
          {
            *v371 = v104;
            *&v371[2] = v105;
            *&v371[4] = v106 + 1;
            re::HashTable<re::internal::Voxel,BOOL,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::findEntry<re::internal::Voxel>(&v346, &v374, v371);
            if (v346.i32[3] != 0x7FFFFFFF && (*(v375.i64[0] + 24 * v346.u32[3] + 10) & 1) == 0)
            {
              v346.i8[0] = 1;
              re::HashTable<re::internal::Voxel,BOOL,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::addOrReplace(&v374, v371, &v346);
              re::DynamicArray<re::internal::Voxel>::add(&v301, v371);
            }
          }

          v102 = v303;
        }

        while (v303);
        v107 = v309;
        v100 = v290;
        v97 = v287;
      }

      v108 = 0x7FFF;
      v346.i16[2] = 0x7FFF;
      v346.i32[0] = 2147450879;
      v109 = -32767;
      WORD2(v355) = -32767;
      LODWORD(v355) = -2147385343;
      if (v107)
      {
        v110 = v311;
        v111 = &v311[3 * v107];
        v112 = 0x7FFF;
        v113 = -32767;
        v114 = -32767;
        v115 = 0x7FFF;
        v108 = 0x7FFF;
        do
        {
          v116 = *v110;
          if (v108 >= v116)
          {
            v108 = *v110;
          }

          v117 = v110[1];
          if (v115 >= v117)
          {
            v115 = v110[1];
          }

          v118 = v110[2];
          if (v112 >= v118)
          {
            v112 = v110[2];
          }

          if (v116 > v109)
          {
            v109 = *v110;
          }

          if (v117 > v114)
          {
            v114 = v110[1];
          }

          if (v118 > v113)
          {
            v113 = v110[2];
          }

          v110 += 3;
        }

        while (v110 != v111);
        v346.i16[1] = v115;
        v346.i16[2] = v112;
        WORD1(v355) = v114;
        WORD2(v355) = v113;
      }

      v119 = 0;
      v120 = 0;
      ++v293;
      v346.i16[0] = v108;
      LOWORD(v355) = v109;
      do
      {
        if ((*(&v355 + v119 * 2) - v346.i16[v119] - 2) < 0xFFFDu)
        {
          ++v120;
        }

        ++v119;
      }

      while (v119 != 3);
      v97 |= v120 > 1u;
      if ((v97 & 1) != 0 && v293 >= 2)
      {
        v38 = v379;
        v4 = v361;
        goto LABEL_222;
      }
    }

    v99 = (v99 + 6);
  }

  while (v99 != v100);
  v3 = v275;
  if ((v97 & (v293 == 1)) != 1)
  {
    v38 = v379;
    v4 = v361;
    v124 = v279;
    if ((v97 & 1) == 0)
    {
      goto LABEL_223;
    }

    goto LABEL_222;
  }

  v121 = 0.0;
  v122 = v94;
  v123 = 0.0;
  v38 = v379;
  v4 = v361;
  v124 = v279;
  do
  {
    v125 = *(v122 + 2);
    v126 = *v122;
    v122 = (v122 + 6);
    v98 = v98 & 0xFFFF000000000000 | v126 | (v125 << 32);
    v127 = re::internal::VoxelGrid::occupancy(&v333, v98);
    if (v123 < v127)
    {
      v123 = v127;
    }

    v121 = v121 + v127;
    v3 -= 6;
  }

  while (v3);
  if (v123 > 0.4 || v121 > (v279 * 0.2))
  {
LABEL_222:
    v124 = 0;
    v323 = 0;
    ++v324;
  }

LABEL_223:
  v91 = v282;
  if (v301 && v305)
  {
    (*(v301->i64[0] + 40))();
  }

  v128 = v307;
LABEL_227:
  if (v128 && v311)
  {
    (*(v128->i64[0] + 40))(v128);
  }

  v129.n128_f64[0] = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(&v374);
  if (*v379 && *&v379[32])
  {
    (*(**v379 + 40))(v129.n128_f64[0]);
  }

  if (*v354 && v91)
  {
    (*(**v354 + 40))(v129);
  }

  v130.n128_f64[0] = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(v361);
  if (!v124)
  {
    v152 = 0;
    goto LABEL_405;
  }

  v317 = 0;
  v315 = 0;
  v314[0] = 0;
  v314[1] = 0;
  v316 = 0;
  v356 = 0;
  v355 = 0;
  LODWORD(v357) = 1;
  v359 = 0;
  v358 = 0;
  v360 = 0;
  *v131.i32 = v335;
  v299 = v131;
  v132 = v335 * (v335 * 0.125);
  v346.i64[0] = v273;
  v346.i64[1] = re::GeomMesh::accessVertexPositions(v273);
  v347.i32[0] = v133;
  v311 = 0;
  v309 = 0;
  v307 = 0;
  v308 = 0;
  LODWORD(v310) = 0;
  v134 = *v284;
  v374.i32[0] = 0;
  re::DynamicArray<float>::resize(&v307, v134, &v374, v135);
  v136 = (v94 + 6 * v124);
  v137 = vdupq_lane_s32(v299, 0);
  v294 = v137;
  v297 = v336;
  while (2)
  {
    v138 = *(v94 + 2);
    v139 = *v94;
    v137.i32[0] = v139 << 16;
    v137.i32[1] = *v94;
    *v137.f32 = vmul_f32(*v294.f32, vcvt_f32_s32(vshr_n_s32(*v137.f32, 0x10uLL)));
    v137.f32[2] = *v299.i32 * v138;
    *v379 = vaddq_f32(v297, v137);
    *&v379[16] = vaddq_f32(v294, *v379);
    v3 = v3 & 0xFFFF000000000000 | v139 | (v138 << 32);
    re::internal::VoxelGrid::faces(&v301, &v333, v3);
    if (v303)
    {
      v140 = v305;
      v141 = 4 * v303;
      while (1)
      {
        v142 = *v140;
        *(v4 + 32) = 0u;
        *(v4 + 48) = 0u;
        *v4 = 0u;
        *(v4 + 16) = 0u;
        v143 = re::internal::FaceEvaluator::faceVertexPositions(&v346, v142, v361);
        re::internal::computeFractionOfFaceInBox(v143, v361, v379);
        v37 = v309;
        if (v309 <= v142)
        {
          break;
        }

        *&v311[2 * v142] = v137.f32[0] + *&v311[2 * v142];
        ++v140;
        v141 -= 4;
        if (!v141)
        {
          goto LABEL_242;
        }
      }

      v341 = 0;
      v377 = 0u;
      v378 = 0u;
      v375 = 0u;
      v376 = 0u;
      v374 = 0u;
      v46 = MEMORY[0x1E69E9C10];
      v191 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v354 = 136315906;
      *&v354[4] = "operator[]";
      *&v354[12] = 1024;
      if (v191)
      {
        v192 = 3;
      }

      else
      {
        v192 = 2;
      }

      *&v354[14] = 789;
      *&v354[18] = 2048;
      *&v354[20] = v142;
      *&v354[28] = 2048;
      *&v354[30] = v37;
      _os_log_send_and_compose_impl(v192, &v341, &v374, 80, &dword_1E1C61000, v46, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v354, 38, v266, v267);
      _os_crash_msg();
      __break(1u);
LABEL_331:
      re::internal::assertLog(6, v177, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v46, v46);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v262, v264);
      __break(1u);
LABEL_332:
      *v371 = 0;
      v377 = v45;
      v378 = v45;
      v375 = v45;
      v376 = v45;
      v374 = v45;
      v179 = MEMORY[0x1E69E9C10];
      v193 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v379 = 136315906;
      *&v379[4] = "operator[]";
      *&v379[12] = 1024;
      if (v193)
      {
        v194 = 3;
      }

      else
      {
        v194 = 2;
      }

      *&v379[14] = 797;
      *&v379[18] = 2048;
      *&v379[20] = v3;
      *&v379[28] = 2048;
      *&v379[30] = v46;
      _os_log_send_and_compose_impl(v194, v371, &v374, 80, &dword_1E1C61000, v179, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v379, 38, v266, v267);
      _os_crash_msg();
      __break(1u);
LABEL_336:
      v361[0].i32[2] = v190;
      v363 = v190;
      if (v364)
      {
        v195 = v365;
        v196 = 8 * v364;
        do
        {
          v197 = *v195++;
          (*(*v197 + 80))(v197, v363);
          v196 -= 8;
        }

        while (v196);
      }

      v41 = v347.i64[0];
      if ((v347.i64[0] & 0x3FFFFFFFCLL) != 0)
      {
        v42 = 0;
        do
        {
          v3 = 4 * v42;
          if (v41 <= 4 * v42)
          {
            goto LABEL_437;
          }

          v38 = v3 | 1;
          if (v41 <= (v3 | 1))
          {
            goto LABEL_441;
          }

          v4 = v3 | 2;
          if (v41 <= (v3 | 2))
          {
            goto LABEL_445;
          }

          v1 = v3 | 3;
          if (v41 <= (v3 | 3))
          {
            goto LABEL_449;
          }

          v198 = *(v348 + 16 * v42);
          v38 = *(v348 + 4 * v38);
          v4 = *(v348 + 4 * v4);
          v199 = *(v348 + 4 * v1);
          v41 = v361[2].u64[0];
          if (v199 == -1)
          {
            if (v361[2].i64[0] <= v42)
            {
              goto LABEL_461;
            }

            v207 = (*&v362[0] + 16 * v42);
            v208 = *v207;
            v209 = v207[3];
            if (v208 != -1 && v209 == -1)
            {
              v211 = v370;
              if (v370)
              {
                v212 = 0;
                do
                {
                  v213 = re::internal::GeomAttributeContainer::attributeByIndex(v369, v212);
                  re::internal::accessFaceVaryingAttributeSubmesh(v213, v214);
                  ++v212;
                }

                while (v211 != v212);
                v41 = v361[2].u64[0];
              }
            }

            if (v41 <= v42)
            {
              goto LABEL_465;
            }

            v199 = -1;
          }

          else
          {
            if (v361[2].i64[0] <= v42)
            {
              goto LABEL_453;
            }

            v200 = (*&v362[0] + 16 * v42);
            v201 = *v200;
            v202 = v200[3];
            if (v201 != -1 && v202 != -1)
            {
              v1 = v370;
              if (v370)
              {
                v204 = 0;
                do
                {
                  v205 = re::internal::GeomAttributeContainer::attributeByIndex(v369, v204);
                  re::internal::accessFaceVaryingAttributeSubmesh(v205, v206);
                  ++v204;
                }

                while (v1 != v204);
                v41 = v361[2].u64[0];
              }
            }

            if (v41 <= v42)
            {
              goto LABEL_457;
            }
          }

          v215 = (*&v362[0] + 16 * v42);
          *v215 = v198;
          v215[1] = v38;
          v215[2] = v4;
          v215[3] = v199;
          ++v42;
          v41 = v347.i64[0];
          v37 = v379;
        }

        while (v42 < (v347.i64[0] >> 2));
      }

      re::GeomMesh::GeomMesh(&v374, 0);
      re::GeomMesh::operator=(&v374, &v361[0].i64[1]);
      re::GeomMesh::setName(&v374, v361[0].i64[0]);
      re::GeomMesh::freeName(v361);
      v216 = re::GeomMesh::modifyVertexPositions(&v374);
      v42 = *(&v349 + 1);
      if (DWORD2(v349))
      {
        v41 = 0;
        v3 = v217;
        while (v42 > v41)
        {
          if (v41 == v217)
          {
            goto LABEL_433;
          }

          *(v216 + 16 * v41) = *(v351 + 16 * v41);
          ++v41;
          v42 = *(&v349 + 1);
          if (v41 >= DWORD2(v349))
          {
            goto LABEL_375;
          }
        }

        goto LABEL_429;
      }

LABEL_375:
      re::GeomMesh::freeName(v361);
      re::internal::GeomAttributeManager::~GeomAttributeManager(&v179[3].u32[2]);
      if (v361[1].i64[0] && *&v362[0])
      {
        (*(*v361[1].i64[0] + 40))();
      }

      *v37 = 1;
      *(v37 + 1) = 0;
      *(v37 + 12) = xmmword_1E30A0560;
      *&v379[32] = 0;
      *&v379[8] = *v299.i32 * 0.001;
      *&v373[2] = 0;
      memset(v371, 0, sizeof(v371));
      re::mergeVertices(&v374, v354, v371, v379);
      *&v340[3] = 0;
      v218.i32[0] = v299.i32[0];
      v340[5] = 0;
      v340[0] = 1056964608;
      v218.f32[1] = v218.f32[0] * v218.f32[0];
      *&v340[1] = vmul_f32(v218, 0x3F0000003E800000);
      re::internal::simplifyPlanarRegions(v354, v340, v361);
      re::GeomMesh::operator=(v354, v361);
      re::GeomMesh::~GeomMesh(v361);
      if (*v371 && *&v373[2])
      {
        (*(**v371 + 40))();
      }

      re::GeomMesh::~GeomMesh(&v374);
      goto LABEL_382;
    }

LABEL_242:
    if (v301 && v305)
    {
      (*(v301->i64[0] + 40))();
    }

    v94 = (v94 + 6);
    if (v94 != v136)
    {
      continue;
    }

    break;
  }

  v144 = *v284;
  v145 = v360;
  if ((*v284 & 0x3F) != 0)
  {
    v146 = (*v284 >> 6) + 1;
  }

  else
  {
    v146 = *v284 >> 6;
  }

  v360 = *v284;
  v374.i64[0] = 0;
  re::DynamicOverflowArray<unsigned long long,3ul>::resize(&v355, v146, &v374);
  if (!v144 || v145 <= v144)
  {
    v151 = v356;
    v42 = v272;
    v37 = v273;
    v35 = v371;
    v38 = &v329;
    v3 = &v358;
    if (!v356)
    {
      goto LABEL_265;
    }

    goto LABEL_260;
  }

  v147 = 63;
  v148 = v360 & 0x3F;
  v42 = v272;
  v35 = v371;
  v3 = &v358;
  if ((v360 & 0x3F) != 0)
  {
    v68 = v148 == 63;
    v149 = -1 << v148;
    if (!v68)
    {
      v147 = ~v149;
    }
  }

  v37 = v273;
  v38 = &v329;
  v150 = v359;
  if (v357)
  {
    v150 = &v358;
  }

  v151 = v356;
  *&v150[v356 - 1] &= v147;
  if (v151)
  {
LABEL_260:
    v153 = v359;
    if (v357)
    {
      v153 = &v358;
    }

    do
    {
      *v153++ = 0;
      v154 = v359;
      if (v357)
      {
        v154 = &v358;
      }
    }

    while (v153 != &v154[v151]);
  }

LABEL_265:
  v315 = 0;
  ++v316;
  *v354 = 0;
  if (*v284)
  {
    v155 = 0;
    do
    {
      re::internal::FaceEvaluator::computeFaceAreaWeightedNormal(&v346, v155);
      v41 = *v354;
      v19 = v309;
      if (v309 <= *v354)
      {
        v301 = 0;
        v377 = 0u;
        v378 = 0u;
        v375 = 0u;
        v376 = 0u;
        v374 = 0u;
        v221 = MEMORY[0x1E69E9C10];
        v222 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v361[0].i32[0] = 136315906;
        *(v4 + 4) = "operator[]";
        v361[0].i16[6] = 1024;
        if (v222)
        {
          v223 = 3;
        }

        else
        {
          v223 = 2;
        }

        *(v4 + 14) = 789;
        v361[1].i16[1] = 2048;
        *(v4 + 20) = v41;
        v361[1].i16[6] = 2048;
        *(v4 + 30) = v19;
        _os_log_send_and_compose_impl(v223, &v301, &v374, 80, &dword_1E1C61000, v221, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v361, 38, v266, v267);
        _os_crash_msg();
        __break(1u);
LABEL_416:
        *v379 = 0;
        v377 = 0u;
        v378 = 0u;
        v375 = 0u;
        v376 = 0u;
        v374 = 0u;
        v46 = MEMORY[0x1E69E9C10];
        v224 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v361[0].i32[0] = 136315906;
        *(v361[0].i64 + 4) = "operator[]";
        v361[0].i16[6] = 1024;
        if (v224)
        {
          v225 = 3;
        }

        else
        {
          v225 = 2;
        }

        *(&v361[0].i32[3] + 2) = 797;
        v361[1].i16[1] = 2048;
        *(v361[1].i64 + 4) = 0;
        v361[1].i16[6] = 2048;
        *(&v361[1].i64[1] + 6) = 0;
        _os_log_send_and_compose_impl(v225, v379, &v374, 80, &dword_1E1C61000, v46, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v361, 38, v266, v267);
        _os_crash_msg();
        __break(1u);
LABEL_420:
        re::internal::assertLog(6, v177, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v19, v46);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v263, v265);
        __break(1u);
LABEL_421:
        v301 = 0;
        *(v35 + 96) = 0u;
        *(v35 + 112) = 0u;
        *(v35 + 64) = 0u;
        *(v35 + 80) = 0u;
        *(v35 + 48) = 0u;
        v226 = MEMORY[0x1E69E9C10];
        v227 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v361[0].i32[0] = 136315906;
        *(v4 + 4) = "operator[]";
        v361[0].i16[6] = 1024;
        if (v227)
        {
          v228 = 3;
        }

        else
        {
          v228 = 2;
        }

        *(v4 + 14) = 858;
        v361[1].i16[1] = 2048;
        *(v4 + 20) = v19;
        v361[1].i16[6] = 2048;
        *(v4 + 30) = v3;
        _os_log_send_and_compose_impl(v228, &v301, &v374, 80, &dword_1E1C61000, v226, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v361, 38, v266, v267);
        _os_crash_msg();
        __break(1u);
LABEL_425:
        *v371 = 0;
        v377 = 0u;
        v378 = 0u;
        v375 = 0u;
        v376 = 0u;
        v374 = 0u;
        v229 = MEMORY[0x1E69E9C10];
        v230 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v354 = 136315906;
        *&v354[4] = "operator[]";
        *&v354[12] = 1024;
        if (v230)
        {
          v231 = 3;
        }

        else
        {
          v231 = 2;
        }

        *&v354[14] = 866;
        *&v354[18] = 2048;
        *&v354[20] = v19;
        *&v354[28] = 2048;
        *&v354[30] = v3;
        _os_log_send_and_compose_impl(v231, v371, &v374, 80, &dword_1E1C61000, v229, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v354, 38, v266, v267);
        _os_crash_msg();
        __break(1u);
LABEL_429:
        *v340 = 0;
        *(v37 + 48) = 0u;
        *(v37 + 64) = 0u;
        *(v37 + 16) = 0u;
        *(v37 + 32) = 0u;
        *v37 = 0u;
        v232 = MEMORY[0x1E69E9C10];
        v233 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v371 = 136315906;
        *&v371[4] = "operator[]";
        *&v371[12] = 1024;
        if (v233)
        {
          v234 = 3;
        }

        else
        {
          v234 = 2;
        }

        *&v371[14] = 797;
        *&v371[18] = 2048;
        *&v371[20] = v41;
        v372 = 2048;
        *v373 = v42;
        _os_log_send_and_compose_impl(v234, v340, v379, 80, &dword_1E1C61000, v232, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v371, 38, v266, v267);
        _os_crash_msg();
        __break(1u);
LABEL_433:
        *v340 = 0;
        *(v37 + 48) = 0u;
        *(v37 + 64) = 0u;
        *(v37 + 16) = 0u;
        *(v37 + 32) = 0u;
        *v37 = 0u;
        v235 = MEMORY[0x1E69E9C10];
        v236 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v371 = 136315906;
        *&v371[4] = "operator[]";
        *&v371[12] = 1024;
        if (v236)
        {
          v237 = 3;
        }

        else
        {
          v237 = 2;
        }

        *&v371[14] = 621;
        *&v371[18] = 2048;
        *&v371[20] = v3;
        v372 = 2048;
        *v373 = v3;
        _os_log_send_and_compose_impl(v237, v340, v379, 80, &dword_1E1C61000, v235, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v371, 38, v266, v267);
        _os_crash_msg();
        __break(1u);
LABEL_437:
        *v371 = 0;
        v377 = 0u;
        v378 = 0u;
        v375 = 0u;
        v376 = 0u;
        v374 = 0u;
        v238 = MEMORY[0x1E69E9C10];
        v239 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v379 = 136315906;
        *(v37 + 4) = "operator[]";
        *&v379[12] = 1024;
        if (v239)
        {
          v240 = 3;
        }

        else
        {
          v240 = 2;
        }

        *(v37 + 14) = 797;
        *&v379[18] = 2048;
        *(v37 + 20) = v3;
        *&v379[28] = 2048;
        *(v37 + 30) = v41;
        _os_log_send_and_compose_impl(v240, v371, &v374, 80, &dword_1E1C61000, v238, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v379, 38, v266, v267);
        _os_crash_msg();
        __break(1u);
LABEL_441:
        *v371 = 0;
        v377 = 0u;
        v378 = 0u;
        v375 = 0u;
        v376 = 0u;
        v374 = 0u;
        v241 = MEMORY[0x1E69E9C10];
        v242 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v379 = 136315906;
        *&v379[4] = "operator[]";
        *&v379[12] = 1024;
        if (v242)
        {
          v243 = 3;
        }

        else
        {
          v243 = 2;
        }

        *&v379[14] = 797;
        *&v379[18] = 2048;
        *&v379[20] = v38;
        *&v379[28] = 2048;
        *&v379[30] = v41;
        _os_log_send_and_compose_impl(v243, v371, &v374, 80, &dword_1E1C61000, v241, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v379, 38, v266, v267);
        _os_crash_msg();
        __break(1u);
LABEL_445:
        *v371 = 0;
        v377 = 0u;
        v378 = 0u;
        v375 = 0u;
        v376 = 0u;
        v374 = 0u;
        v244 = MEMORY[0x1E69E9C10];
        v245 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v379 = 136315906;
        *&v379[4] = "operator[]";
        *&v379[12] = 1024;
        if (v245)
        {
          v246 = 3;
        }

        else
        {
          v246 = 2;
        }

        *&v379[14] = 797;
        *&v379[18] = 2048;
        *&v379[20] = v4;
        *&v379[28] = 2048;
        *&v379[30] = v41;
        _os_log_send_and_compose_impl(v246, v371, &v374, 80, &dword_1E1C61000, v244, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v379, 38, v266, v267);
        _os_crash_msg();
        __break(1u);
LABEL_449:
        *v371 = 0;
        v377 = 0u;
        v378 = 0u;
        v375 = 0u;
        v376 = 0u;
        v374 = 0u;
        v247 = MEMORY[0x1E69E9C10];
        v248 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v379 = 136315906;
        *&v379[4] = "operator[]";
        *&v379[12] = 1024;
        if (v248)
        {
          v249 = 3;
        }

        else
        {
          v249 = 2;
        }

        *&v379[14] = 797;
        *&v379[18] = 2048;
        *&v379[20] = v1;
        *&v379[28] = 2048;
        *&v379[30] = v41;
        _os_log_send_and_compose_impl(v249, v371, &v374, 80, &dword_1E1C61000, v247, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v379, 38, v266, v267);
        _os_crash_msg();
        __break(1u);
LABEL_453:
        *v371 = 0;
        v377 = 0u;
        v378 = 0u;
        v375 = 0u;
        v376 = 0u;
        v374 = 0u;
        v250 = MEMORY[0x1E69E9C10];
        v251 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v379 = 136315906;
        *&v379[4] = "operator[]";
        *&v379[12] = 1024;
        if (v251)
        {
          v252 = 3;
        }

        else
        {
          v252 = 2;
        }

        *&v379[14] = 797;
        *&v379[18] = 2048;
        *&v379[20] = v42;
        *&v379[28] = 2048;
        *&v379[30] = v41;
        _os_log_send_and_compose_impl(v252, v371, &v374, 80, &dword_1E1C61000, v250, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v379, 38, v266, v267);
        _os_crash_msg();
        __break(1u);
LABEL_457:
        *v371 = 0;
        v377 = 0u;
        v378 = 0u;
        v375 = 0u;
        v376 = 0u;
        v374 = 0u;
        v253 = MEMORY[0x1E69E9C10];
        v254 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v379 = 136315906;
        *&v379[4] = "operator[]";
        *&v379[12] = 1024;
        if (v254)
        {
          v255 = 3;
        }

        else
        {
          v255 = 2;
        }

        *&v379[14] = 789;
        *&v379[18] = 2048;
        *&v379[20] = v42;
        *&v379[28] = 2048;
        *&v379[30] = v41;
        _os_log_send_and_compose_impl(v255, v371, &v374, 80, &dword_1E1C61000, v253, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v379, 38, v266, v267);
        _os_crash_msg();
        __break(1u);
LABEL_461:
        *v371 = 0;
        v377 = 0u;
        v378 = 0u;
        v375 = 0u;
        v376 = 0u;
        v374 = 0u;
        v256 = MEMORY[0x1E69E9C10];
        v257 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v379 = 136315906;
        *&v379[4] = "operator[]";
        *&v379[12] = 1024;
        if (v257)
        {
          v258 = 3;
        }

        else
        {
          v258 = 2;
        }

        *&v379[14] = 797;
        *&v379[18] = 2048;
        *&v379[20] = v42;
        *&v379[28] = 2048;
        *&v379[30] = v41;
        _os_log_send_and_compose_impl(v258, v371, &v374, 80, &dword_1E1C61000, v256, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v379, 38, v266, v267);
        _os_crash_msg();
        __break(1u);
LABEL_465:
        *v371 = 0;
        v377 = 0u;
        v378 = 0u;
        v375 = 0u;
        v376 = 0u;
        v374 = 0u;
        v259 = MEMORY[0x1E69E9C10];
        v260 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v379 = 136315906;
        *&v379[4] = "operator[]";
        *&v379[12] = 1024;
        if (v260)
        {
          v261 = 3;
        }

        else
        {
          v261 = 2;
        }

        *&v379[14] = 789;
        *&v379[18] = 2048;
        *&v379[20] = v42;
        *&v379[28] = 2048;
        *&v379[30] = v41;
        _os_log_send_and_compose_impl(v261, v371, &v374, 80, &dword_1E1C61000, v259, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v379, 38, v266, v267);
        _os_crash_msg();
        __break(1u);
      }

      v158.i64[0] = v156;
      v158.i64[1] = v157;
      v130 = vmulq_f32(v158, v158);
      v159 = sqrtf(v130.n128_f32[2] + vaddv_f32(v130.n128_u64[0]));
      v130.n128_u32[0] = *&v311[2 * *v354];
      if ((v159 * v130.n128_f32[0]) >= v132)
      {
        if ((v159 - (v159 * v130.n128_f32[0])) > v132)
        {
          if (v130.n128_f32[0] > 0.5)
          {
            v19 = *v354 >> 6;
            v3 = v356;
            if (v356 <= v19)
            {
              goto LABEL_421;
            }

            v3 = &v358;
            if (v357)
            {
              v160 = &v358;
            }

            else
            {
              v160 = v359;
            }

            *&v160[v19] |= 1 << v354[0];
            goto LABEL_279;
          }

LABEL_278:
          re::DynamicArray<int>::add(v314, v354);
        }
      }

      else if (v130.n128_f32[0] < 0.5)
      {
        goto LABEL_278;
      }

LABEL_279:
      v155 = *v354 + 1;
      *v354 = v155;
    }

    while (v155 < *v284);
  }

  if (v307 && v311)
  {
    (*(v307->i64[0] + 40))();
  }

  v161 = *v271;
  v152 = v315 != v161;
  if (v315 != v161)
  {
    re::GeomMesh::GeomMesh(&v307, 0);
    if (v315)
    {
      re::internal::extractMeshFromFaceSubset(v37, v317, v315, *(v270 + 3), &v374);
      re::GeomMesh::operator=(&v307, &v374);
      re::GeomMesh::~GeomMesh(&v374);
    }

    re::GeomMesh::GeomMesh(&v301, 0);
    v162 = v359;
    if (v357)
    {
      v162 = &v358;
    }

    if (v356)
    {
      v163 = 0;
      v164 = 8 * v356;
      do
      {
        v165 = *v162++;
        v166 = vcnt_s8(v165);
        v166.i16[0] = vaddlv_u8(v166);
        v163 += v166.u32[0];
        v164 -= 8;
      }

      while (v164);
      if (v163)
      {
        v277 = v152;
        v167 = v321;
        v168 = v319;
        v352[0] = v37;
        v352[1] = re::GeomMesh::accessVertexPositions(v37);
        v353 = v170;
        v346 = 0uLL;
        v347.i64[0] = 0;
        v351 = 0;
        v171.n128_u32[3] = 0;
        v348 = 0u;
        v349 = 0u;
        v347.i32[2] = 0;
        v350 = 0;
        v345 = 0;
        v343 = 0;
        v341 = 0;
        v342 = 0;
        v344 = 0;
        if (v168)
        {
          v276 = v167 + 6 * v168;
          v38 = &v346;
          v41 = &re::kInvalidMeshIndex;
          while (1)
          {
            v172 = *(v167 + 2);
            v283 = v167;
            v173 = *v167;
            v171.n128_u32[0] = v173 << 16;
            v171.n128_u32[1] = *v167;
            v171.n128_u64[0] = vmul_f32(*v294.f32, vcvt_f32_s32(vshr_n_s32(v171.n128_u64[0], 0x10uLL)));
            v171.n128_f32[2] = *v299.i32 * v172;
            *v379 = vaddq_f32(v297, v171);
            *&v379[16] = vaddq_f32(v294, *v379);
            v280 = v169 & 0xFFFF000000000000 | v173 | (v172 << 32);
            re::internal::VoxelGrid::faces(v361, &v333, v280);
            if (v361[1].i64[0])
            {
              break;
            }

LABEL_311:
            if (v361[0].i64[0] && v361[2].i64[0])
            {
              (*(*v361[0].i64[0] + 40))();
            }

            v169 = v280;
            v167 = (v283 + 6);
            if (v283 + 6 == v276)
            {
              goto LABEL_315;
            }
          }

          v174 = v361[2].i64[0];
          v285 = v361[2].i64[0] + 4 * v361[1].i64[0];
          while (1)
          {
            v175 = *v174;
            v19 = v175 >> 6;
            v3 = v356;
            if (v356 <= v175 >> 6)
            {
              goto LABEL_425;
            }

            v176 = v359;
            if (v357)
            {
              v176 = &v358;
            }

            if ((*&v176[v19] >> v175))
            {
              v288 = v174;
              v376 = 0u;
              v377 = 0u;
              v374 = 0u;
              v375 = 0u;
              v3 = re::internal::FaceEvaluator::faceVertexPositions(v352, v175, &v374);
              v42 = 2;
              do
              {
                if (re::internal::triangleIntersectsAABB(&v374, &v374 + v42 - 1, &v374 + v42, v379, &v341))
                {
                  v37 = v345;
                  v46 = v343;
                  *v354 = DWORD2(v349);
                  v19 = v343 - 2;
                  if (v343 != 2)
                  {
                    v4 = 0;
                    v178 = v345;
                    do
                    {
                      if (v46 == v4)
                      {
                        goto LABEL_331;
                      }

                      re::DynamicArray<re::Vector3<float>>::add((&v348 + 8), v178);
                      re::DynamicArray<int>::add(&v346, v354);
                      *v371 = v4 + *v354 + 1;
                      re::DynamicArray<int>::add(&v346, v371);
                      *v371 = v4 + *v354 + 2;
                      re::DynamicArray<int>::add(&v346, v371);
                      re::DynamicArray<int>::add(&v346, &re::kInvalidMeshIndex);
                      ++v178;
                      v1 = ++v4;
                    }

                    while (v19 != v4);
                    v35 = &v374;
                    if (v46 <= 1)
                    {
                      goto LABEL_420;
                    }
                  }

                  re::DynamicArray<re::Vector3<float>>::add((&v348 + 8), (v37 + 16 * v19));
                  v171 = re::DynamicArray<re::Vector3<float>>::add((&v348 + 8), (v37 + 16 * v46 - 16));
                }

                ++v42;
              }

              while (v42 != v3);
              v174 = v288;
            }

            if (++v174 == v285)
            {
              goto LABEL_311;
            }
          }
        }

LABEL_315:
        re::GeomMesh::GeomMesh(v354, 0);
        if ((v347.i64[0] & 0x3FFFFFFFCLL) != 0)
        {
          v179 = v361;
          bzero(v361, 0x2D0uLL);
          re::DynamicArray<re::BlendNode>::setCapacity(v361[1].i64, 1uLL);
          ++v361[2].i32[2];
          re::internal::GeomAttributeManager::GeomAttributeManager((v362 + 8));
          re::internal::GeomAttributeManager::addAttribute((v362 + 8), "vertexPosition", 1, 7);
          v181 = v347.i64[0];
          v182 = v347.i64[0] >> 2;
          if (v361[2].i32[0] > (v347.i64[0] >> 2))
          {
            v183 = v370;
            if (v370)
            {
              v184 = 0;
              do
              {
                v185 = re::internal::GeomAttributeContainer::attributeByIndex(v369, v184);
                re::internal::accessFaceVaryingAttributeSubmesh(v185, v186);
                ++v184;
              }

              while (v183 != v184);
            }
          }

          re::DynamicArray<re::GeomCell4>::resize(v361[1].i64, (v181 >> 2));
          v366 = v182;
          v37 = v379;
          if (v367)
          {
            v187 = v368;
            v188 = 8 * v367;
            do
            {
              v189 = *v187++;
              (*(*v189 + 80))(v189, v366);
              v188 -= 8;
            }

            while (v188);
          }

          v190 = DWORD2(v349);
          if (v361[0].i32[2] > DWORD2(v349) && v361[2].i32[0] && (v361[2].i32[0] - 1) > v361[2].i64[0])
          {
              ;
            }
          }

          goto LABEL_336;
        }

LABEL_382:
        if (v341 && v345)
        {
          (*(*v341 + 40))();
        }

        v42 = v272;
        v37 = v273;
        if (*(&v348 + 1))
        {
          if (v351)
          {
            (*(**(&v348 + 1) + 40))();
          }

          v351 = 0;
          v349 = 0uLL;
          *(&v348 + 1) = 0;
          ++v350;
        }

        if (v346.i64[0] && v348)
        {
          (*(*v346.i64[0] + 40))();
        }

        re::GeomMesh::operator=(&v301, v354);
        re::GeomMesh::~GeomMesh(v354);
        bzero(&v374, 0x2D0uLL);
        v375.i64[0] = v46;
        re::DynamicArray<re::BlendNode>::setCapacity(&v375, 1uLL);
        ++v376.i32[2];
        re::internal::GeomAttributeManager::GeomAttributeManager(&v377.u32[2]);
        re::internal::GeomAttributeManager::addAttribute(&v377.u32[2], "vertexPosition", 1, 7);
        re::GeomMeshBuilder::appendMesh(&v374, &v307);
        re::GeomMeshBuilder::appendMesh(&v374, &v301);
        re::GeomMesh::operator=(&v307, &v374.i64[1]);
        re::GeomMesh::setName(&v307, v374.i64[0]);
        re::GeomMesh::freeName(&v374);
        re::GeomMesh::freeName(&v374);
        re::internal::GeomAttributeManager::~GeomAttributeManager(&v377.u32[2]);
        if (v375.i64[0] && v377.i64[0])
        {
          (*(*v375.i64[0] + 40))();
        }

        v152 = v277;
      }
    }

    if (v37 == v326)
    {
      re::transform(&v307, &v329);
    }

    re::GeomMesh::copy(&v307, v42);
    re::GeomMesh::~GeomMesh(&v301);
    re::GeomMesh::~GeomMesh(&v307);
  }

  if (v355 && (v357 & 1) == 0)
  {
    (*(*v355 + 40))();
  }

  if (v314[0] && v317)
  {
    (*(*v314[0] + 40))();
  }

LABEL_405:
  if (v318[0] && v321)
  {
    (*(*v318[0] + 40))(v130);
  }

  if (v322[0] && v325)
  {
    (*(*v322[0] + 40))(v130);
  }

  re::GeomMesh::~GeomMesh(v326);
  re::HashTable<re::internal::Voxel,re::internal::VoxelGrid::VoxelEntry,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::deinit(v337);
  return v152;
}

uint64_t re::internal::VoxelGrid::accumulateAreaProjectionsOfFaceInBox(int a1, float32x4_t *a2, float32x4_t *a3, float *a4)
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = *a2;
  v7 = *a2;
  v7.i32[3] = 0;
  v8 = vminnmq_f32(v7, xmmword_1E306D4A0);
  v9 = a2[1];
  v8.i32[3] = 0;
  v10 = v9;
  v10.i32[3] = 0;
  v11 = vmaxnmq_f32(v7, xmmword_1E306D4B0);
  v11.i32[3] = 0;
  v12 = a2 + 2;
  v13 = a2[2];
  v14 = vminnmq_f32(v8, v10);
  v14.i32[3] = 0;
  v15 = v13;
  v15.i32[3] = 0;
  v16 = vmaxnmq_f32(v11, v10);
  v17 = vminnmq_f32(v14, v15);
  v16.i32[3] = 0;
  v18 = vmaxnmq_f32(v16, v15);
  if (a1 == 4)
  {
    v19 = a2[3];
    v17.i32[3] = 0;
    v19.i32[3] = 0;
    v17 = vminnmq_f32(v17, v19);
    v18.i32[3] = 0;
    v18 = vmaxnmq_f32(v18, v19);
  }

  v42 = 0;
  v39[1] = 0;
  v40 = 0;
  v39[0] = 0;
  v41 = 0;
  v20 = vcgtq_f32(*a3, v17);
  v20.i32[3] = v20.i32[2];
  if ((vmaxvq_u32(v20) & 0x80000000) != 0 || (v21 = a3[1], v22 = vcgtq_f32(v17, v21), v22.i32[3] = v22.i32[2], (vmaxvq_u32(v22) & 0x80000000) != 0) || (v23 = vcgtq_f32(*a3, v18), v23.i32[3] = v23.i32[2], (vmaxvq_u32(v23) & 0x80000000) != 0) || (v24 = vcgtq_f32(v18, v21), v24.i32[3] = v24.i32[2], (vmaxvq_u32(v24) & 0x80000000) != 0))
  {
    if (a1 == 4)
    {
      v30 = *v12;
      v43[0] = *a2;
      v43[1] = v30;
      v43[2] = a2[3];
      v44 = 0;
      v45 = 0;
      re::internal::VoxelGrid::accumulateAreaProjectionsOfFaceInBox(3, a2, a3, a4);
      re::internal::VoxelGrid::accumulateAreaProjectionsOfFaceInBox(3, v43, a3, a4);
    }

    else if (re::internal::triangleIntersectsAABB(a2, a2 + 1, v12, a3, v39) && v40 >= 3)
    {
      v31 = v42;
      v32 = v42 + 2;
      v33 = v40 - 2;
      v34.i64[0] = 0x3F0000003F000000;
      v34.i64[1] = 0x3F0000003F000000;
      do
      {
        v35 = vsubq_f32(v32[-1], *v31);
        v36 = vsubq_f32(*v32, *v31);
        v37 = vmulq_f32(vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v36, v36), v36, 0xCuLL), vnegq_f32(v35)), v36, vextq_s8(vuzp1q_s32(v35, v35), v35, 0xCuLL)), v34);
        if (v37.f32[2] <= 0.0)
        {
          a4[1] = a4[1] - v37.f32[2];
        }

        else
        {
          *a4 = v37.f32[2] + *a4;
        }

        if (v37.f32[0] <= 0.0)
        {
          a4[3] = a4[3] - v37.f32[0];
        }

        else
        {
          a4[2] = v37.f32[0] + a4[2];
        }

        if (v37.f32[1] <= 0.0)
        {
          a4[5] = a4[5] - v37.f32[1];
        }

        else
        {
          a4[4] = v37.f32[1] + a4[4];
        }

        ++v32;
        --v33;
      }

      while (v33);
    }
  }

  else
  {
    v25 = v6;
    if (a1 != 3)
    {
      v25 = a2[3];
    }

    v26 = vsubq_f32(v13, v6);
    v27 = vsubq_f32(v9, v25);
    v28 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL), vnegq_f32(v27)), v26, vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL));
    v26.i64[0] = 0x3F0000003F000000;
    v26.i64[1] = 0x3F0000003F000000;
    v29 = vmulq_f32(v28, v26);
    if (v29.f32[2] <= 0.0)
    {
      a4[1] = a4[1] - v29.f32[2];
    }

    else
    {
      *a4 = v29.f32[2] + *a4;
    }

    if (v29.f32[0] <= 0.0)
    {
      a4[3] = a4[3] - v29.f32[0];
    }

    else
    {
      a4[2] = v29.f32[0] + a4[2];
    }

    if (v29.f32[1] <= 0.0)
    {
      a4[5] = a4[5] - v29.f32[1];
    }

    else
    {
      a4[4] = v29.f32[1] + a4[4];
    }
  }

  result = v39[0];
  if (v39[0])
  {
    if (v42)
    {
      return (*(*v39[0] + 40))();
    }
  }

  return result;
}

_anonymous_namespace_ *re::internal::Callable<re::internal::VoxelGrid::build(re::GeomMesh const&,re::GeomMeshBVHTree const&,float,re::internal::VoxelGrid&)::{lambda(re::AABB const&,re::GeomMeshBVHTree::Node const&,re::DynamicArray<unsigned int> &)#1},void ()(re::AABB const&,re::GeomMeshBVHTree::Node const&,re::DynamicArray<unsigned int> &)>::operator()(_anonymous_namespace_ *result, float32x4_t *a2, float32x4_t *a3, _anonymous_namespace_ *a4, double a5, double a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10)
{
  v72 = *MEMORY[0x1E69E9840];
  v12 = vcgtq_f32(*a2, a3[2]);
  v12.i32[3] = v12.i32[2];
  if ((vmaxvq_u32(v12) & 0x80000000) != 0)
  {
    return result;
  }

  v15 = a2 + 1;
  v16 = vcgtq_f32(a3[1], a2[1]);
  v16.i32[3] = v16.i32[2];
  if ((vmaxvq_u32(v16) & 0x80000000) != 0)
  {
    return result;
  }

  v18 = result;
  v19 = a3->i64[1];
  if (v19)
  {
    (*(**(*(result + 3) + 32) + 16))(*(*(result + 3) + 32), a2, v19, a4);
    v20 = *(**(*(v18 + 3) + 32) + 16);

    return v20();
  }

  v21 = a3->u32[0];
  HIDWORD(v57) = v21;
  v22 = *(result + 1);
  v23 = *(v22 + 40);
  if (v23 <= v21)
  {
    v58 = 0;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v67 = 0u;
    v42 = MEMORY[0x1E69E9C10];
    v59 = 136315906;
    v60 = "operator[]";
    v61 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v43 = 3;
    }

    else
    {
      v43 = 2;
    }

    v62 = 797;
    v63 = 2048;
    v64 = v21;
    v65 = 2048;
    v66 = v23;
    _os_log_send_and_compose_impl(v43, &v58, &v67, 80, &dword_1E1C61000, v42, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v59, 38, v57);
    _os_crash_msg();
    __break(1u);
    goto LABEL_25;
  }

  v24 = (*(v22 + 56) + 16 * v21);
  v23 = *v24;
  v25 = *(result + 2);
  v21 = *(v25 + 8);
  if (v21 <= v23)
  {
LABEL_25:
    v58 = 0;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v67 = 0u;
    v44 = MEMORY[0x1E69E9C10];
    v45 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v59 = 136315906;
    v60 = "operator[]";
    v61 = 1024;
    if (v45)
    {
      v46 = 3;
    }

    else
    {
      v46 = 2;
    }

    v62 = 613;
    v63 = 2048;
    v64 = v23;
    v65 = 2048;
    v66 = v21;
    _os_log_send_and_compose_impl(v46, &v58, &v67, 80, &dword_1E1C61000, v44, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v59, 38, v57);
    _os_crash_msg();
    __break(1u);
    goto LABEL_29;
  }

  v10 = v24[1];
  if (v21 <= v10)
  {
LABEL_29:
    v58 = 0;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v67 = 0u;
    v47 = MEMORY[0x1E69E9C10];
    v48 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v59 = 136315906;
    v60 = "operator[]";
    v61 = 1024;
    if (v48)
    {
      v49 = 3;
    }

    else
    {
      v49 = 2;
    }

    v62 = 613;
    v63 = 2048;
    v64 = v10;
    v65 = 2048;
    v66 = v21;
    _os_log_send_and_compose_impl(v49, &v58, &v67, 80, &dword_1E1C61000, v47, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v59, 38, v57);
    _os_crash_msg();
    __break(1u);
    goto LABEL_33;
  }

  v26 = v24[2];
  if (v21 <= v26)
  {
LABEL_33:
    v58 = 0;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v67 = 0u;
    v50 = MEMORY[0x1E69E9C10];
    v51 = v26;
    v52 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v59 = 136315906;
    v60 = "operator[]";
    v61 = 1024;
    if (v52)
    {
      v53 = 3;
    }

    else
    {
      v53 = 2;
    }

    v62 = 613;
    v63 = 2048;
    v64 = v51;
    v65 = 2048;
    v66 = v21;
    _os_log_send_and_compose_impl(v53, &v58, &v67, 80, &dword_1E1C61000, v50, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v59, 38, v57);
    _os_crash_msg();
    __break(1u);
    goto LABEL_37;
  }

  v11 = v24[3];
  v27 = (*v25 + 16 * v23);
  v28 = (*v25 + 16 * v10);
  v29 = (*v25 + 16 * v26);
  result = re::triangleOverlapsBox(v27, v28, v29, a2, v15);
  if (result)
  {
    return re::DynamicArray<int>::add(a4, &v57 + 1);
  }

  if (v11 != -1)
  {
    v30 = *(v18 + 2);
    v18 = *(v30 + 8);
    if (v18 > v11)
    {
      result = re::triangleOverlapsBox(v28, v29, (*v30 + 16 * v11), a2, v15);
      if ((result & 1) == 0)
      {
        goto LABEL_15;
      }

      return re::DynamicArray<int>::add(a4, &v57 + 1);
    }

LABEL_37:
    v58 = 0;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v67 = 0u;
    v54 = MEMORY[0x1E69E9C10];
    v55 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v59 = 136315906;
    v60 = "operator[]";
    v61 = 1024;
    if (v55)
    {
      v56 = 3;
    }

    else
    {
      v56 = 2;
    }

    v62 = 613;
    v63 = 2048;
    v64 = v11;
    v65 = 2048;
    v66 = v18;
    _os_log_send_and_compose_impl(v56, &v58, &v67, 80, &dword_1E1C61000, v54, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v59, 38, v57);
    _os_crash_msg();
    __break(1u);
  }

LABEL_15:
  v31 = vsubq_f32(*v28, *v27);
  v32 = vsubq_f32(*v29, *v27);
  v33 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v32, v32), v32, 0xCuLL), vnegq_f32(v31)), v32, vextq_s8(vuzp1q_s32(v31, v31), v31, 0xCuLL));
  v34 = vmulq_f32(v33, v33);
  v35 = v34.f32[1] + (v34.f32[2] + v34.f32[0]);
  if (v35 > 0.0)
  {
    v36 = v35;
    v37 = vrsqrte_f32(LODWORD(v35));
    v38 = vmul_f32(v37, vrsqrts_f32(LODWORD(v36), vmul_f32(v37, v37)));
    v39 = vmulq_n_f32(vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL), vmul_f32(v38, vrsqrts_f32(LODWORD(v36), vmul_f32(v38, v38))).f32[0]);
    v40 = vcgt_f32(vdup_n_s32(0x3A83126Fu), vabs_f32(*v39.f32));
    v41 = (v40.i8[0] & 1) - v40.i32[1];
    if (fabsf(v39.f32[2]) < 0.001)
    {
      ++v41;
    }

    if (v41 == 2)
    {
      return re::DynamicArray<int>::add(a4, &v57 + 1);
    }
  }

  return result;
}

uint64_t re::internal::Callable<re::internal::VoxelGrid::build(re::GeomMesh const&,re::GeomMeshBVHTree const&,float,re::internal::VoxelGrid&)::{lambda(re::AABB const&,re::GeomMeshBVHTree::Node const&,re::DynamicArray<unsigned int> &)#1},void ()(re::AABB const&,re::GeomMeshBVHTree::Node const&,re::DynamicArray<unsigned int> &)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D021F8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::Callable<re::internal::VoxelGrid::build(re::GeomMesh const&,re::GeomMeshBVHTree const&,float,re::internal::VoxelGrid&)::{lambda(re::AABB const&,re::GeomMeshBVHTree::Node const&,re::DynamicArray<unsigned int> &)#1},void ()(re::AABB const&,re::GeomMeshBVHTree::Node const&,re::DynamicArray<unsigned int> &)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D021F8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::HashTable<re::internal::Voxel,re::internal::VoxelGrid::VoxelEntry,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::findEntry<re::internal::Voxel>(uint64_t result, uint64_t a2, __int16 *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = a3[2];
  v6 = 0xBF58476D1CE4E5B9 * (((v4 << 16) | (v3 << 32) | v5) ^ (((v4 << 16) | (v3 << 32) | v5) >> 30));
  v7 = (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31);
  v8 = *a2;
  v9 = 0x7FFFFFFF;
  if (*a2 && (v8 = v7 % *(a2 + 24), v10 = *(*(a2 + 8) + 4 * v8), v10 != 0x7FFFFFFF))
  {
    v12 = v4;
    v13 = *(a2 + 16);
    v9 = 0x7FFFFFFF;
    v11 = 0x7FFFFFFF;
    while (1)
    {
      v14 = v10;
      v15 = v13 + 72 * v10;
      v17 = *(v15 + 4);
      v16 = v15 + 4;
      if (v17 == v3 && *(v16 + 2) == v12 && *(v16 + 4) == v5)
      {
        break;
      }

      v10 = *(v13 + 72 * v10) & 0x7FFFFFFF;
      v11 = v14;
      if (v10 == 0x7FFFFFFF)
      {
        v11 = v14;
        goto LABEL_11;
      }
    }

    v9 = v10;
  }

  else
  {
    v11 = 0x7FFFFFFF;
  }

LABEL_11:
  *result = v7;
  *(result + 8) = v8;
  *(result + 12) = v9;
  *(result + 16) = v11;
  return result;
}

uint64_t re::HashTable<re::internal::Voxel,re::internal::VoxelGrid::VoxelEntry,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v5 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v29, 0, 36);
          *&v29[36] = 0x7FFFFFFFLL;
          re::HashTable<char const*,re::AssetLoadRequest::LoadStatistics::AssetTypeStats,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::init(v29, v9, v8);
          v11 = *v29;
          *v29 = *a1;
          *a1 = v11;
          v12 = *&v29[16];
          v13 = *(a1 + 16);
          *&v29[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v29[24];
          *&v29[24] = *(a1 + 24);
          v14 = *&v29[32];
          *(a1 + 24) = v15;
          ++*&v29[40];
          v16 = v14;
          if (v14)
          {
            v17 = v13 + 32;
            do
            {
              if ((*(v17 - 32) & 0x80000000) != 0)
              {
                v18 = re::HashTable<re::internal::Voxel,re::internal::VoxelGrid::VoxelEntry,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::allocEntry(a1, *(v17 + 32) % *(a1 + 24), *(v17 + 32));
                v19 = *(v17 - 28);
                *(v18 + 8) = *(v17 - 24);
                *(v18 + 4) = v19;
                *(v18 + 48) = 0;
                *(v18 + 40) = 0;
                *(v18 + 24) = 0;
                *(v18 + 32) = 0;
                *(v18 + 16) = 0;
                v20 = *(v17 - 8);
                *(v18 + 16) = *(v17 - 16);
                *(v18 + 24) = v20;
                *(v17 - 16) = 0;
                *(v17 - 8) = 0;
                v21 = *(v18 + 32);
                *(v18 + 32) = *v17;
                *v17 = v21;
                v22 = *(v18 + 48);
                *(v18 + 48) = *(v17 + 16);
                *(v17 + 16) = v22;
                ++*(v17 + 8);
                ++*(v18 + 40);
                *(v18 + 56) = *(v17 + 24);
              }

              v17 += 72;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::internal::Voxel,re::internal::VoxelGrid::VoxelEntry,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::deinit(v29);
        }
      }

      else
      {
        if (v8)
        {
          v25 = 2 * v7;
        }

        else
        {
          v25 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v23 = *(a1 + 16);
    v24 = *(v23 + 72 * v5);
  }

  else
  {
    v23 = *(a1 + 16);
    v24 = *(v23 + 72 * v5);
    *(a1 + 36) = v24 & 0x7FFFFFFF;
  }

  v26 = v23 + 72 * v5;
  *v26 = v24 | 0x80000000;
  v27 = *(a1 + 8);
  *v26 = *(v27 + 4 * a2) | 0x80000000;
  *(v27 + 4 * a2) = v5;
  *(v26 + 64) = a3;
  ++*(a1 + 28);
  return v23 + 72 * v5;
}

double re::HashTable<re::internal::Voxel,re::internal::VoxelGrid::VoxelEntry,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = a1[2];
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          re::DynamicArray<unsigned long>::deinit(v6 + v4 + 16);
          v3 = *(a1 + 8);
        }

        v4 += 72;
      }

      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

unsigned int *re::internal::VoxelGrid::fetchVoxelsWithOccupancyRange(unsigned int *result, _anonymous_namespace_ *this, float a3, float a4)
{
  v7 = result;
  *(this + 2) = 0;
  ++*(this + 6);
  v8 = result[15];
  if (*(this + 1) < v8)
  {
    result = re::DynamicArray<re::internal::Voxel>::setCapacity(this, v8);
  }

  v9 = *(v7 + 64);
  if (v9)
  {
    v10 = 0;
    v11 = *(v7 + 48);
    while (1)
    {
      v12 = *v11;
      v11 += 18;
      if (v12 < 0)
      {
        break;
      }

      if (v9 == ++v10)
      {
        LODWORD(v10) = *(v7 + 64);
        break;
      }
    }
  }

  else
  {
    LODWORD(v10) = 0;
  }

  while (v10 != v9)
  {
    v13 = *(v7 + 48);
    v14 = *(v13 + 72 * v10 + 56);
    if (v14 > a3 && v14 <= a4)
    {
      result = re::DynamicArray<re::internal::Voxel>::add(this, (v13 + 72 * v10 + 4));
      LODWORD(v9) = *(v7 + 64);
    }

    if (v9 <= v10 + 1)
    {
      v16 = v10 + 1;
    }

    else
    {
      v16 = v9;
    }

    while (v16 - 1 != v10)
    {
      LODWORD(v10) = v10 + 1;
      if ((*(*(v7 + 48) + 72 * v10) & 0x80000000) != 0)
      {
        goto LABEL_22;
      }
    }

    LODWORD(v10) = v16;
LABEL_22:
    ;
  }

  return result;
}

float re::internal::VoxelGrid::occupancy(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v5 = WORD2(a2);
  re::HashTable<re::internal::Voxel,re::internal::VoxelGrid::VoxelEntry,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::findEntry<re::internal::Voxel>(v6, a1 + 32, &v4);
  result = 0.0;
  if (v7 != 0x7FFFFFFF)
  {
    return *(*(a1 + 48) + 72 * v7 + 56);
  }

  return result;
}

uint64_t re::HashTable<re::internal::Voxel,BOOL,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::add(uint64_t a1, __int16 *a2, _BYTE *a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  result = re::HashTable<re::internal::Voxel,BOOL,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::findEntry<re::internal::Voxel>(&v8, a1, a2);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    result = re::HashTable<re::internal::Voxel,BOOL,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::allocEntry(a1, v9, v8);
    v7 = *a2;
    *(result + 8) = a2[2];
    *(result + 4) = v7;
    *(result + 10) = *a3;
    ++*(a1 + 40);
  }

  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::internal::Voxel>::add(_anonymous_namespace_ *this, int *a2)
{
  v3 = this;
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    this = re::DynamicArray<re::internal::Voxel>::growCapacity(this, v4 + 1);
    v4 = *(v3 + 2);
  }

  v5 = *(v3 + 4) + 6 * v4;
  v6 = *a2;
  *(v5 + 4) = *(a2 + 2);
  *v5 = v6;
  ++*(v3 + 2);
  ++*(v3 + 6);
  return this;
}

void *re::DynamicArray<re::internal::Voxel>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (*v5)
      {
        if (!a2)
        {
          v7 = 0;
          if (!v3)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }

        if (is_mul_ok(a2, 6uLL))
        {
          v2 = 6 * a2;
          result = (*(*result + 32))(result, 6 * a2, 2);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
LABEL_9:
              v5[4] = v7;
              v5[1] = a2;
              return result;
            }

LABEL_8:
            memcpy(v7, v5[4], 6 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 6, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v8, v10);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v9, v11);
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::internal::Voxel>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::internal::Voxel>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::internal::Voxel>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::internal::Voxel>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

uint64_t re::HashTable<re::internal::Voxel,BOOL,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::findEntry<re::internal::Voxel>(uint64_t result, uint64_t a2, __int16 *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = a3[2];
  v6 = 0xBF58476D1CE4E5B9 * (((v4 << 16) | (v3 << 32) | v5) ^ (((v4 << 16) | (v3 << 32) | v5) >> 30));
  v7 = (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31);
  v8 = *a2;
  v9 = 0x7FFFFFFF;
  if (*a2 && (v8 = v7 % *(a2 + 24), v10 = *(*(a2 + 8) + 4 * v8), v10 != 0x7FFFFFFF))
  {
    v12 = v4;
    v13 = *(a2 + 16);
    v9 = 0x7FFFFFFF;
    v11 = 0x7FFFFFFF;
    while (1)
    {
      v14 = v10;
      v15 = v13 + 24 * v10;
      v17 = *(v15 + 4);
      v16 = v15 + 4;
      if (v17 == v3 && *(v16 + 2) == v12 && *(v16 + 4) == v5)
      {
        break;
      }

      v10 = *(v13 + 24 * v10) & 0x7FFFFFFF;
      v11 = v14;
      if (v10 == 0x7FFFFFFF)
      {
        v11 = v14;
        goto LABEL_11;
      }
    }

    v9 = v10;
  }

  else
  {
    v11 = 0x7FFFFFFF;
  }

LABEL_11:
  *result = v7;
  *(result + 8) = v8;
  *(result + 12) = v9;
  *(result + 16) = v11;
  return result;
}

uint64_t re::HashTable<re::internal::Voxel,BOOL,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v5 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v26, 0, 36);
          *&v26[36] = 0x7FFFFFFFLL;
          re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::init(v26, v9, v8);
          v11 = *v26;
          *v26 = *a1;
          *a1 = v11;
          v12 = *&v26[16];
          v13 = *(a1 + 16);
          *&v26[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v26[24];
          *&v26[24] = *(a1 + 24);
          v14 = *&v26[32];
          *(a1 + 24) = v15;
          ++*&v26[40];
          v16 = v14;
          if (v14)
          {
            v17 = v13 + 10;
            do
            {
              if ((*(v17 - 10) & 0x80000000) != 0)
              {
                v18 = re::HashTable<re::internal::Voxel,BOOL,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::allocEntry(a1, *(v17 + 6) % *(a1 + 24), *(v17 + 6));
                v19 = *(v17 - 6);
                *(v18 + 8) = *(v17 - 2);
                *(v18 + 4) = v19;
                *(v18 + 10) = *v17;
              }

              v17 += 24;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(v26);
        }
      }

      else
      {
        if (v8)
        {
          v22 = 2 * v7;
        }

        else
        {
          v22 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v20 = *(a1 + 16);
    v21 = *(v20 + 24 * v5);
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + 24 * v5);
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  v23 = v20 + 24 * v5;
  *v23 = v21 | 0x80000000;
  v24 = *(a1 + 8);
  *v23 = *(v24 + 4 * a2) | 0x80000000;
  *(v24 + 4 * a2) = v5;
  *(v23 + 16) = a3;
  ++*(a1 + 28);
  return v20 + 24 * v5;
}

uint64_t re::HashTable<re::internal::Voxel,BOOL,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::addOrReplace(uint64_t a1, __int16 *a2, _BYTE *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  result = re::HashTable<re::internal::Voxel,BOOL,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::findEntry<re::internal::Voxel>(&v9, a1, a2);
  v7 = HIDWORD(v10);
  if (HIDWORD(v10) == 0x7FFFFFFF)
  {
    result = re::HashTable<re::internal::Voxel,BOOL,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::allocEntry(a1, v10, v9);
    v8 = *a2;
    *(result + 8) = a2[2];
    *(result + 4) = v8;
    *(result + 10) = *a3;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    *(*(a1 + 16) + 24 * v7 + 10) = *a3;
  }

  return result;
}

uint64_t re::internal::VoxelGrid::faces(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a3;
  v8 = WORD2(a3);
  result = re::HashTable<re::internal::Voxel,re::internal::VoxelGrid::VoxelEntry,re::internal::VoxelHash,re::internal::VoxelHash,true,false>::findEntry<re::internal::Voxel>(v9, a2 + 32, &v7);
  if (v10 == 0x7FFFFFFF)
  {
    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    *(a1 + 24) = 0;
  }

  else
  {
    v6 = (*(a2 + 48) + 72 * v10 + 16);

    return re::DynamicArray<float>::DynamicArray(a1, v6);
  }

  return result;
}

uint64_t re::internal::FaceEvaluator::faceVertexPositions(uint64_t a1, unsigned int a2, _OWORD *a3)
{
  v3 = &v26;
  v31 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = *(*a1 + 40);
  if (v5 <= a2)
  {
    goto LABEL_11;
  }

  v6 = 0;
  v17 = *(*(*a1 + 56) + 16 * a2);
  v7 = 3;
  if (HIDWORD(v17) != -1)
  {
    v7 = 4;
  }

  do
  {
    v4 = *(&v17 + v6);
    v5 = *(a1 + 16);
    if (v5 <= v4)
    {
      v16 = 0;
      v30 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v9 = MEMORY[0x1E69E9C10];
      v10 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v18 = 136315906;
      v19 = "operator[]";
      v20 = 1024;
      if (v10)
      {
        v11 = 3;
      }

      else
      {
        v11 = 2;
      }

      v21 = 613;
      v22 = 2048;
      v23 = v4;
      v24 = 2048;
      v25 = v5;
      _os_log_send_and_compose_impl(v11, &v16, &v26, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v15);
      _os_crash_msg();
      __break(1u);
LABEL_11:
      *&v17 = 0;
      v3[4] = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v12 = MEMORY[0x1E69E9C10];
      v13 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v18 = 136315906;
      v19 = "operator[]";
      v20 = 1024;
      if (v13)
      {
        v14 = 3;
      }

      else
      {
        v14 = 2;
      }

      v21 = 797;
      v22 = 2048;
      v23 = v4;
      v24 = 2048;
      v25 = v5;
      _os_log_send_and_compose_impl(v14, &v17, &v26, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v15, v16);
      _os_crash_msg();
      __break(1u);
    }

    *a3++ = *(*(a1 + 8) + 16 * v4);
    ++v6;
  }

  while (v7 != v6);
  return v7;
}

uint64_t re::internal::simplifyPlanarRegions@<X0>(unsigned int *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v550 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 16);
  v423 = 0;
  v421 = 0;
  v420[0] = 0;
  v420[1] = 0;
  v422 = 0;
  v419 = 0;
  v416[1] = 0;
  v417 = 0;
  v416[0] = 0;
  v418 = 0;
  v415 = 0;
  memset(v414, 0, 44);
  v413 = 0;
  v410[1] = 0;
  v411 = 0;
  v410[0] = 0;
  v412 = 0;
  re::GeomConnectivityManifold::GeomConnectivityManifold(&v443);
  v473 = 0;
  v472 = 0;
  v475 = 0;
  v474 = 0;
  v494 = 0;
  v476 = 0u;
  v477 = 0u;
  v478 = 0;
  v479 = 0u;
  v480 = 0u;
  v481 = 0;
  v482 = 0u;
  v483 = 0u;
  v484 = 0;
  v485 = 0u;
  v486 = 0u;
  v487 = 0;
  v488 = 0u;
  v489 = 0u;
  v490 = 0;
  v491 = 0u;
  v492 = 0u;
  v493 = 0;
  v8 = re::GeomMesh::accessVertexPositions(a1);
  v10 = v9;
  v11 = a1[10];
  LODWORD(v431[0]) = 0;
  re::DynamicArray<float>::resize(&v476 + 1, v11, v431, v12);
  v431[0] = 0uLL;
  re::DynamicArray<re::Vector3<float>>::resize(&v482 + 1, v11, v431);
  v431[0] = 0uLL;
  re::DynamicArray<re::Vector3<float>>::resize(&v485 + 1, v11, v431);
  re::DynamicArray<unsigned int>::resize(&v472, v11, &re::kInvalidMeshIndex);
  v392 = a1;
  v387 = v7;
  if (v7)
  {
    v13 = re::internal::GeomAttributeManager::attributeByName((a1 + 16), v7);
    v14 = 0xFFFFFFFFLL;
    if (v13)
    {
      i = re::GeomAttribute::accessValues<int>(v13);
      v4 = v16;
      LODWORD(v431[0]) = -1;
      re::DynamicArray<unsigned int>::resize(&v479 + 1, v11, v431);
      v17 = 0;
      v14 = v4;
    }

    else
    {
      i = 0;
      v17 = 1;
    }

    v18 = a1;
    if (v11)
    {
LABEL_8:
      v19 = 0;
      v20 = 0;
      __asm { FMOV            V0.4S, #3.0 }

      v25.i64[0] = 0x3F0000003F000000;
      v25.i64[1] = 0x3F0000003F000000;
      __asm { FMOV            V2.4S, #0.25 }

      while (1)
      {
        v7 = *(v18 + 5);
        if (v7 <= v20)
        {
          goto LABEL_545;
        }

        v27 = (*(v18 + 7) + v19);
        v4 = *v27;
        if (v4 >= v10)
        {
          break;
        }

        v5 = v27[1];
        if (v5 >= v10)
        {
          goto LABEL_553;
        }

        v28 = v27[2];
        if (v28 >= v10)
        {
          goto LABEL_557;
        }

        v7 = v27[3];
        if (v7 == -1)
        {
          v7 = *(&v486 + 1);
          if (*(&v486 + 1) <= v20)
          {
            goto LABEL_635;
          }

          *(v488 + 16 * v20) = vdivq_f32(vaddq_f32(vaddq_f32(*(v8 + 16 * v4), *(v8 + 16 * v5)), *(v8 + 16 * v28)), _Q0);
          v31 = *(v8 + 16 * v4);
          v29 = vsubq_f32(*(v8 + 16 * v5), v31);
          v30 = vsubq_f32(*(v8 + 16 * v28), v31);
        }

        else
        {
          if (v7 >= v10)
          {
            goto LABEL_590;
          }

          v3 = *(&v486 + 1);
          if (*(&v486 + 1) <= v20)
          {
            goto LABEL_594;
          }

          *(v488 + 16 * v20) = vmulq_f32(vaddq_f32(vaddq_f32(vaddq_f32(*(v8 + 16 * v4), *(v8 + 16 * v5)), *(v8 + 16 * v28)), *(v8 + 16 * v7)), _Q2);
          v29 = vsubq_f32(*(v8 + 16 * v5), *(v8 + 16 * v7));
          v30 = vsubq_f32(*(v8 + 16 * v28), *(v8 + 16 * v4));
        }

        v7 = *(&v477 + 1);
        if (*(&v477 + 1) <= v20)
        {
          goto LABEL_573;
        }

        v32 = vmulq_f32(vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL), vnegq_f32(v29)), v30, vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL)), v25);
        v33 = vmulq_f32(v32, v32);
        v34 = v33.f32[1] + (v33.f32[2] + v33.f32[0]);
        v35 = sqrtf(v34);
        *(v479 + 4 * v20) = v35;
        if (v35 > 0.0)
        {
          v7 = *(&v483 + 1);
          if (*(&v483 + 1) <= v20)
          {
            goto LABEL_603;
          }

          v36 = v34;
          v37 = vrsqrte_f32(LODWORD(v34));
          v38 = vmul_f32(v37, vrsqrts_f32(LODWORD(v36), vmul_f32(v37, v37)));
          *(v485 + 16 * v20) = vmulq_n_f32(vextq_s8(vuzp1q_s32(v32, v32), v32, 0xCuLL), vmul_f32(v38, vrsqrts_f32(LODWORD(v36), vmul_f32(v38, v38))).f32[0]);
        }

        if ((v17 & 1) == 0)
        {
          if (v14 <= v20)
          {
            goto LABEL_607;
          }

          v7 = *(&v480 + 1);
          if (*(&v480 + 1) <= v20)
          {
LABEL_611:
            *v434 = 0;
            v432 = 0u;
            v433 = 0u;
            memset(v431, 0, sizeof(v431));
            v263 = MEMORY[0x1E69E9C10];
            v264 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v502 = 136315906;
            *&v502[4] = "operator[]";
            *&v502[12] = 1024;
            if (v264)
            {
              v265 = 3;
            }

            else
            {
              v265 = 2;
            }

            *&v502[14] = 789;
            *&v502[18] = 2048;
            *&v502[20] = v20;
            *&v502[28] = 2048;
            *&v502[30] = v7;
            _os_log_send_and_compose_impl(v265, v434, v431, 80, &dword_1E1C61000, v263, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v502, 38, v375, v376);
            _os_crash_msg();
            __break(1u);
LABEL_615:
            *v495 = 0;
            v447 = 0u;
            v446 = 0u;
            v445 = 0u;
            v444 = 0u;
            v443 = 0u;
            v266 = MEMORY[0x1E69E9C10];
            v267 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v440 = 136315906;
            *&v440[4] = "operator[]";
            *&v440[12] = 1024;
            if (v267)
            {
              v268 = 3;
            }

            else
            {
              v268 = 2;
            }

            *&v440[14] = 789;
            *&v440[18] = 2048;
            *&v440[20] = v3;
            v441 = 2048;
            *v442 = v7;
            _os_log_send_and_compose_impl(v268, v495, &v443, 80, &dword_1E1C61000, v266, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v440, 38, v375, v376);
            _os_crash_msg();
            __break(1u);
LABEL_619:
            *v495 = 0;
            v447 = 0u;
            v446 = 0u;
            v445 = 0u;
            v444 = 0u;
            v443 = 0u;
            v269 = MEMORY[0x1E69E9C10];
            v270 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v440 = 136315906;
            *&v440[4] = "operator[]";
            *&v440[12] = 1024;
            if (v270)
            {
              v271 = 3;
            }

            else
            {
              v271 = 2;
            }

            *&v440[14] = 789;
            *&v440[18] = 2048;
            *&v440[20] = v7;
            v441 = 2048;
            *v442 = i;
            _os_log_send_and_compose_impl(v271, v495, &v443, 80, &dword_1E1C61000, v269, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v440, 38, v375, v376);
            _os_crash_msg();
            __break(1u);
LABEL_623:
            *v495 = 0;
            v447 = 0u;
            v446 = 0u;
            v445 = 0u;
            v444 = 0u;
            v443 = 0u;
            v272 = MEMORY[0x1E69E9C10];
            v273 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v440 = 136315906;
            *&v440[4] = "operator[]";
            *&v440[12] = 1024;
            if (v273)
            {
              v274 = 3;
            }

            else
            {
              v274 = 2;
            }

            *&v440[14] = 789;
            *&v440[18] = 2048;
            *&v440[20] = v11;
            v441 = 2048;
            *v442 = i;
            _os_log_send_and_compose_impl(v274, v495, &v443, 80, &dword_1E1C61000, v272, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v440, 38, v375, v376);
            _os_crash_msg();
            __break(1u);
LABEL_627:
            *v434 = 0;
            v432 = 0u;
            v433 = 0u;
            memset(v431, 0, sizeof(v431));
            v275 = MEMORY[0x1E69E9C10];
            v276 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v502 = 136315906;
            *&v502[4] = "operator[]";
            *&v502[12] = 1024;
            if (v276)
            {
              v277 = 3;
            }

            else
            {
              v277 = 2;
            }

            *&v502[14] = 613;
            *&v502[18] = 2048;
            *&v502[20] = v20;
            *&v502[28] = 2048;
            *&v502[30] = v20;
            _os_log_send_and_compose_impl(v277, v434, v431, 80, &dword_1E1C61000, v275, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v502, 38, v375, v376);
            _os_crash_msg();
            __break(1u);
LABEL_631:
            *v434 = 0;
            v432 = 0u;
            v433 = 0u;
            memset(v431, 0, sizeof(v431));
            v278 = MEMORY[0x1E69E9C10];
            v279 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v502 = 136315906;
            *&v502[4] = "operator[]";
            *&v502[12] = 1024;
            if (v279)
            {
              v280 = 3;
            }

            else
            {
              v280 = 2;
            }

            *&v502[14] = 789;
            *&v502[18] = 2048;
            *&v502[20] = v7;
            *&v502[28] = 2048;
            *&v502[30] = v3;
            _os_log_send_and_compose_impl(v280, v434, v431, 80, &dword_1E1C61000, v278, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v502, 38, v375, v376);
            _os_crash_msg();
            __break(1u);
LABEL_635:
            *v434 = 0;
            v432 = 0u;
            v433 = 0u;
            memset(v431, 0, sizeof(v431));
            v281 = MEMORY[0x1E69E9C10];
            v282 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v502 = 136315906;
            *&v502[4] = "operator[]";
            *&v502[12] = 1024;
            if (v282)
            {
              v283 = 3;
            }

            else
            {
              v283 = 2;
            }

            *&v502[14] = 789;
            *&v502[18] = 2048;
            *&v502[20] = v20;
            *&v502[28] = 2048;
            *&v502[30] = v7;
            _os_log_send_and_compose_impl(v283, v434, v431, 80, &dword_1E1C61000, v281, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v502, 38, v375, v376);
            _os_crash_msg();
            __break(1u);
LABEL_639:
            *v434 = 0;
            v432 = 0u;
            v433 = 0u;
            memset(v431, 0, sizeof(v431));
            v284 = MEMORY[0x1E69E9C10];
            v285 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v502 = 136315906;
            *&v502[4] = "operator[]";
            *&v502[12] = 1024;
            if (v285)
            {
              v286 = 3;
            }

            else
            {
              v286 = 2;
            }

            *&v502[14] = 613;
            *&v502[18] = 2048;
            *&v502[20] = v20;
            *&v502[28] = 2048;
            *&v502[30] = v10;
            _os_log_send_and_compose_impl(v286, v434, v431, 80, &dword_1E1C61000, v284, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v502, 38, v375, v376);
            _os_crash_msg();
            __break(1u);
LABEL_643:
            *v434 = 0;
            v432 = 0u;
            v433 = 0u;
            memset(v431, 0, sizeof(v431));
            v287 = MEMORY[0x1E69E9C10];
            v288 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v502 = 136315906;
            *&v502[4] = "operator[]";
            *&v502[12] = 1024;
            if (v288)
            {
              v289 = 3;
            }

            else
            {
              v289 = 2;
            }

            *&v502[14] = 789;
            *&v502[18] = 2048;
            *&v502[20] = v7;
            *&v502[28] = 2048;
            *&v502[30] = v3;
            _os_log_send_and_compose_impl(v289, v434, v431, 80, &dword_1E1C61000, v287, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v502, 38, v375, v376);
            _os_crash_msg();
            __break(1u);
LABEL_647:
            *v434 = 0;
            v432 = 0u;
            v433 = 0u;
            memset(v431, 0, sizeof(v431));
            v290 = MEMORY[0x1E69E9C10];
            v291 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v502 = 136315906;
            *&v502[4] = "operator[]";
            *&v502[12] = 1024;
            if (v291)
            {
              v292 = 3;
            }

            else
            {
              v292 = 2;
            }

            *&v502[14] = 797;
            *&v502[18] = 2048;
            *&v502[20] = v7;
            *&v502[28] = 2048;
            *&v502[30] = v20;
            _os_log_send_and_compose_impl(v292, v434, v431, 80, &dword_1E1C61000, v290, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v502, 38, v375, v376);
            _os_crash_msg();
            __break(1u);
LABEL_651:
            v426 = 0;
            v447 = 0u;
            v446 = 0u;
            v445 = 0u;
            v444 = 0u;
            v443 = 0u;
            v293 = MEMORY[0x1E69E9C10];
            v294 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v502 = 136315906;
            *&v502[4] = "operator[]";
            *&v502[12] = 1024;
            if (v294)
            {
              v295 = 3;
            }

            else
            {
              v295 = 2;
            }

            *&v502[14] = 797;
            *&v502[18] = 2048;
            *&v502[20] = v7;
            *&v502[28] = 2048;
            *&v502[30] = v11;
            _os_log_send_and_compose_impl(v295, &v426, &v443, 80, &dword_1E1C61000, v293, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v502, 38, v375, v376);
            _os_crash_msg();
            __break(1u);
LABEL_655:
            v426 = 0;
            v447 = 0u;
            v446 = 0u;
            v445 = 0u;
            v444 = 0u;
            v443 = 0u;
            v296 = MEMORY[0x1E69E9C10];
            v297 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v502 = 136315906;
            *&v502[4] = "operator[]";
            *&v502[12] = 1024;
            if (v297)
            {
              v298 = 3;
            }

            else
            {
              v298 = 2;
            }

            *&v502[14] = 613;
            *&v502[18] = 2048;
            *&v502[20] = v10;
            *&v502[28] = 2048;
            *&v502[30] = v4;
            _os_log_send_and_compose_impl(v298, &v426, &v443, 80, &dword_1E1C61000, v296, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v502, 38, v375, v376);
            _os_crash_msg();
            __break(1u);
LABEL_659:
            v426 = 0;
            v447 = 0u;
            v446 = 0u;
            v445 = 0u;
            v444 = 0u;
            v443 = 0u;
            v299 = MEMORY[0x1E69E9C10];
            v300 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v502 = 136315906;
            *&v502[4] = "operator[]";
            *&v502[12] = 1024;
            if (v300)
            {
              v301 = 3;
            }

            else
            {
              v301 = 2;
            }

            *&v502[14] = 613;
            *&v502[18] = 2048;
            *&v502[20] = v7;
            *&v502[28] = 2048;
            *&v502[30] = v4;
            _os_log_send_and_compose_impl(v301, &v426, &v443, 80, &dword_1E1C61000, v299, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v502, 38, v375, v376);
            _os_crash_msg();
            __break(1u);
LABEL_663:
            v426 = 0;
            v447 = 0u;
            v446 = 0u;
            v445 = 0u;
            v444 = 0u;
            v443 = 0u;
            v302 = MEMORY[0x1E69E9C10];
            v303 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v502 = 136315906;
            *&v502[4] = "operator[]";
            *&v502[12] = 1024;
            if (v303)
            {
              v304 = 3;
            }

            else
            {
              v304 = 2;
            }

            *&v502[14] = 613;
            *&v502[18] = 2048;
            *&v502[20] = i;
            *&v502[28] = 2048;
            *&v502[30] = v4;
            _os_log_send_and_compose_impl(v304, &v426, &v443, 80, &dword_1E1C61000, v302, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v502, 38, v375, v376);
            _os_crash_msg();
            __break(1u);
LABEL_667:
            *v539 = 0;
            v447 = 0u;
            v446 = 0u;
            v445 = 0u;
            v444 = 0u;
            v443 = 0u;
            v305 = MEMORY[0x1E69E9C10];
            v306 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v542 = 136315906;
            *&v542[4] = "operator[]";
            *&v542[12] = 1024;
            if (v306)
            {
              v307 = 3;
            }

            else
            {
              v307 = 2;
            }

            *&v542[14] = 797;
            *&v542[18] = 2048;
            *&v542[20] = v20;
            v543 = 2048;
            *v544 = v7;
            _os_log_send_and_compose_impl(v307, v539, &v443, 80, &dword_1E1C61000, v305, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v542, 38, v375, v376);
            _os_crash_msg();
            __break(1u);
LABEL_671:
            v426 = 0;
            v447 = 0u;
            v446 = 0u;
            v445 = 0u;
            v444 = 0u;
            v443 = 0u;
            v308 = MEMORY[0x1E69E9C10];
            v309 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v502 = 136315906;
            *&v502[4] = "operator[]";
            *&v502[12] = 1024;
            if (v309)
            {
              v310 = 3;
            }

            else
            {
              v310 = 2;
            }

            *&v502[14] = 613;
            *&v502[18] = 2048;
            *&v502[20] = v5;
            *&v502[28] = 2048;
            *&v502[30] = v4;
            _os_log_send_and_compose_impl(v310, &v426, &v443, 80, &dword_1E1C61000, v308, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v502, 38, v375, v376);
            _os_crash_msg();
            __break(1u);
LABEL_675:
            v425 = 0;
            v548 = 0u;
            v549 = 0u;
            v546 = 0u;
            v547 = 0u;
            v545 = 0u;
            v311 = MEMORY[0x1E69E9C10];
            v312 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v495 = 136315906;
            *&v495[4] = "operator[]";
            v496 = 1024;
            if (v312)
            {
              v313 = 3;
            }

            else
            {
              v313 = 2;
            }

            v497 = 789;
            v498 = 2048;
            v499 = v7;
            v500 = 2048;
            v501 = v20;
            _os_log_send_and_compose_impl(v313, &v425, &v545, 80, &dword_1E1C61000, v311, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v495, 38, v375, v376);
            _os_crash_msg();
            __break(1u);
LABEL_679:
            v425 = 0;
            v548 = 0u;
            v549 = 0u;
            v546 = 0u;
            v547 = 0u;
            v545 = 0u;
            v314 = MEMORY[0x1E69E9C10];
            v315 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v495 = 136315906;
            *&v495[4] = "operator[]";
            v496 = 1024;
            if (v315)
            {
              v316 = 3;
            }

            else
            {
              v316 = 2;
            }

            v497 = 613;
            v498 = 2048;
            v499 = v7;
            v500 = 2048;
            v501 = v8;
            _os_log_send_and_compose_impl(v316, &v425, &v545, 80, &dword_1E1C61000, v314, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v495, 38, v375, v376);
            _os_crash_msg();
            __break(1u);
LABEL_683:
            *v440 = 0;
            v548 = 0u;
            v549 = 0u;
            v546 = 0u;
            v547 = 0u;
            v545 = 0u;
            v317 = MEMORY[0x1E69E9C10];
            v318 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v536[0] = 136315906;
            *&v536[1] = "operator[]";
            LOWORD(v536[3]) = 1024;
            if (v318)
            {
              v319 = 3;
            }

            else
            {
              v319 = 2;
            }

            *(&v536[3] + 2) = 789;
            HIWORD(v536[4]) = 2048;
            *&v536[5] = v7;
            v537 = 2048;
            *v538 = v10;
            _os_log_send_and_compose_impl(v319, v440, &v545, 80, &dword_1E1C61000, v317, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v536, 38, v375, v376);
            _os_crash_msg();
            __break(1u);
LABEL_687:
            *v440 = 0;
            v548 = 0u;
            v549 = 0u;
            v546 = 0u;
            v547 = 0u;
            v545 = 0u;
            v320 = MEMORY[0x1E69E9C10];
            v321 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v536[0] = 136315906;
            *&v536[1] = "operator[]";
            LOWORD(v536[3]) = 1024;
            if (v321)
            {
              v322 = 3;
            }

            else
            {
              v322 = 2;
            }

            *(&v536[3] + 2) = 789;
            HIWORD(v536[4]) = 2048;
            *&v536[5] = v3;
            v537 = 2048;
            *v538 = v10;
            _os_log_send_and_compose_impl(v322, v440, &v545, 80, &dword_1E1C61000, v320, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v536, 38, v375, v376);
            _os_crash_msg();
            __break(1u);
LABEL_691:
            *v440 = 0;
            v548 = 0u;
            v549 = 0u;
            v546 = 0u;
            v547 = 0u;
            v545 = 0u;
            v323 = MEMORY[0x1E69E9C10];
            v324 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v536[0] = 136315906;
            *&v536[1] = "operator[]";
            LOWORD(v536[3]) = 1024;
            if (v324)
            {
              v325 = 3;
            }

            else
            {
              v325 = 2;
            }

            *(&v536[3] + 2) = 789;
            HIWORD(v536[4]) = 2048;
            *&v536[5] = v5;
            v537 = 2048;
            *v538 = v10;
            _os_log_send_and_compose_impl(v325, v440, &v545, 80, &dword_1E1C61000, v323, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v536, 38, v375, v376);
            _os_crash_msg();
            __break(1u);
LABEL_695:
            *v440 = 0;
            v548 = 0u;
            v549 = 0u;
            v546 = 0u;
            v547 = 0u;
            v545 = 0u;
            v326 = MEMORY[0x1E69E9C10];
            v327 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v536[0] = 136315906;
            *&v536[1] = "operator[]";
            LOWORD(v536[3]) = 1024;
            if (v327)
            {
              v328 = 3;
            }

            else
            {
              v328 = 2;
            }

            *(&v536[3] + 2) = 797;
            HIWORD(v536[4]) = 2048;
            *&v536[5] = v11;
            v537 = 2048;
            *v538 = v10;
            _os_log_send_and_compose_impl(v328, v440, &v545, 80, &dword_1E1C61000, v326, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v536, 38, v375, v376);
            _os_crash_msg();
            __break(1u);
LABEL_699:
            *v440 = 0;
            v548 = 0u;
            v549 = 0u;
            v546 = 0u;
            v547 = 0u;
            v545 = 0u;
            v329 = MEMORY[0x1E69E9C10];
            v330 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v536[0] = 136315906;
            *&v536[1] = "operator[]";
            LOWORD(v536[3]) = 1024;
            if (v330)
            {
              v331 = 3;
            }

            else
            {
              v331 = 2;
            }

            *(&v536[3] + 2) = 789;
            HIWORD(v536[4]) = 2048;
            *&v536[5] = v11;
            v537 = 2048;
            *v538 = v10;
            _os_log_send_and_compose_impl(v331, v440, &v545, 80, &dword_1E1C61000, v329, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v536, 38, v375, v376);
            _os_crash_msg();
            __break(1u);
LABEL_703:
            v425 = 0;
            v548 = 0u;
            v549 = 0u;
            v546 = 0u;
            v547 = 0u;
            v545 = 0u;
            v332 = MEMORY[0x1E69E9C10];
            v333 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v495 = 136315906;
            *&v495[4] = "operator[]";
            v496 = 1024;
            if (v333)
            {
              v334 = 3;
            }

            else
            {
              v334 = 2;
            }

            v497 = 613;
            v498 = 2048;
            v499 = v7;
            v500 = 2048;
            v501 = v8;
            _os_log_send_and_compose_impl(v334, &v425, &v545, 80, &dword_1E1C61000, v332, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v495, 38, v375, v376);
            _os_crash_msg();
            __break(1u);
            goto LABEL_707;
          }

          *(v482 + 4 * v20) = *(i + 4 * v20);
        }

        ++v20;
        v19 += 16;
        if (v11 == v20)
        {
          goto LABEL_28;
        }
      }

LABEL_549:
      *v434 = 0;
      v432 = 0u;
      v433 = 0u;
      memset(v431, 0, sizeof(v431));
      v220 = MEMORY[0x1E69E9C10];
      v221 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v502 = 136315906;
      *&v502[4] = "operator[]";
      *&v502[12] = 1024;
      if (v221)
      {
        v222 = 3;
      }

      else
      {
        v222 = 2;
      }

      *&v502[14] = 613;
      *&v502[18] = 2048;
      *&v502[20] = v4;
      *&v502[28] = 2048;
      *&v502[30] = v10;
      _os_log_send_and_compose_impl(v222, v434, v431, 80, &dword_1E1C61000, v220, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v502, 38, v375, v376);
      _os_crash_msg();
      __break(1u);
LABEL_553:
      *v434 = 0;
      v432 = 0u;
      v433 = 0u;
      memset(v431, 0, sizeof(v431));
      v28 = MEMORY[0x1E69E9C10];
      v223 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v502 = 136315906;
      *&v502[4] = "operator[]";
      *&v502[12] = 1024;
      if (v223)
      {
        v224 = 3;
      }

      else
      {
        v224 = 2;
      }

      *&v502[14] = 613;
      *&v502[18] = 2048;
      *&v502[20] = v5;
      *&v502[28] = 2048;
      *&v502[30] = v10;
      _os_log_send_and_compose_impl(v224, v434, v431, 80, &dword_1E1C61000, v28, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v502, 38, v375, v376);
      _os_crash_msg();
      __break(1u);
LABEL_557:
      *v434 = 0;
      v432 = 0u;
      v433 = 0u;
      memset(v431, 0, sizeof(v431));
      v7 = MEMORY[0x1E69E9C10];
      v225 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v502 = 136315906;
      *&v502[4] = "operator[]";
      *&v502[12] = 1024;
      if (v225)
      {
        v226 = 3;
      }

      else
      {
        v226 = 2;
      }

      *&v502[14] = 613;
      *&v502[18] = 2048;
      *&v502[20] = v28;
      *&v502[28] = 2048;
      *&v502[30] = v10;
      _os_log_send_and_compose_impl(v226, v434, v431, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v502, 38, v375, v376);
      _os_crash_msg();
      __break(1u);
      goto LABEL_561;
    }
  }

  else
  {
    i = 0;
    v17 = 1;
    v14 = 0xFFFFFFFFLL;
    v18 = a1;
    if (v11)
    {
      goto LABEL_8;
    }
  }

LABEL_28:
  v11 = &v488 + 8;
  i = &v491 + 8;
  v39 = v18;
  re::GeomConnectivityManifold::buildAndMakeManifold((v18 + 4), &v443, &v491 + 8);
  v4 = DWORD2(v492);
  if (DWORD2(v492))
  {
    re::DynamicArray<re::Vector3<float>>::resize(&v488 + 8, DWORD2(v492));
    v20 = 0;
    while (1)
    {
      v7 = *(&v492 + 1);
      if (*(&v492 + 1) <= v20)
      {
        break;
      }

      v7 = *(v494 + 4 * v20);
      if (v7 >= v10)
      {
        goto LABEL_565;
      }

      v3 = *(&v489 + 1);
      if (*(&v489 + 1) <= v20)
      {
        goto LABEL_569;
      }

      *(v491 + 16 * v20++) = *(v8 + 16 * v7);
      if (v20 == v4)
      {
        goto LABEL_40;
      }
    }

LABEL_561:
    *v434 = 0;
    v432 = 0u;
    v433 = 0u;
    memset(v431, 0, sizeof(v431));
    v227 = MEMORY[0x1E69E9C10];
    v228 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v502 = 136315906;
    *&v502[4] = "operator[]";
    *&v502[12] = 1024;
    if (v228)
    {
      v229 = 3;
    }

    else
    {
      v229 = 2;
    }

    *&v502[14] = 789;
    *&v502[18] = 2048;
    *&v502[20] = v20;
    *&v502[28] = 2048;
    *&v502[30] = v7;
    _os_log_send_and_compose_impl(v229, v434, v431, 80, &dword_1E1C61000, v227, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v502, 38, v375, v376);
    _os_crash_msg();
    __break(1u);
LABEL_565:
    *v434 = 0;
    v432 = 0u;
    v433 = 0u;
    memset(v431, 0, sizeof(v431));
    v230 = MEMORY[0x1E69E9C10];
    v231 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v502 = 136315906;
    *&v502[4] = "operator[]";
    *&v502[12] = 1024;
    if (v231)
    {
      v232 = 3;
    }

    else
    {
      v232 = 2;
    }

    *&v502[14] = 613;
    *&v502[18] = 2048;
    *&v502[20] = v7;
    *&v502[28] = 2048;
    *&v502[30] = v10;
    _os_log_send_and_compose_impl(v232, v434, v431, 80, &dword_1E1C61000, v230, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v502, 38, v375, v376);
    _os_crash_msg();
    __break(1u);
LABEL_569:
    *v434 = 0;
    v432 = 0u;
    v433 = 0u;
    memset(v431, 0, sizeof(v431));
    v233 = MEMORY[0x1E69E9C10];
    v234 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v502 = 136315906;
    *&v502[4] = "operator[]";
    *&v502[12] = 1024;
    if (v234)
    {
      v235 = 3;
    }

    else
    {
      v235 = 2;
    }

    *&v502[14] = 789;
    *&v502[18] = 2048;
    *&v502[20] = v20;
    *&v502[28] = 2048;
    *&v502[30] = v3;
    _os_log_send_and_compose_impl(v235, v434, v431, 80, &dword_1E1C61000, v233, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v502, 38, v375, v376);
    _os_crash_msg();
    __break(1u);
LABEL_573:
    *v434 = 0;
    v432 = 0u;
    v433 = 0u;
    memset(v431, 0, sizeof(v431));
    v236 = MEMORY[0x1E69E9C10];
    v237 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v502 = 136315906;
    *&v502[4] = "operator[]";
    *&v502[12] = 1024;
    if (v237)
    {
      v238 = 3;
    }

    else
    {
      v238 = 2;
    }

    *&v502[14] = 789;
    *&v502[18] = 2048;
    *&v502[20] = v20;
    *&v502[28] = 2048;
    *&v502[30] = v7;
    _os_log_send_and_compose_impl(v238, v434, v431, 80, &dword_1E1C61000, v236, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v502, 38, v375, v376);
    _os_crash_msg();
    __break(1u);
    goto LABEL_577;
  }

  re::DynamicArray<re::Vector3<float>>::resize(&v488 + 8, v39[4]);
  if (v39[4])
  {
    v7 = 0;
    v20 = v10;
    while (v7 != v10)
    {
      v3 = *(&v489 + 1);
      if (*(&v489 + 1) <= v7)
      {
        goto LABEL_631;
      }

      *(v491 + 16 * v7) = *(v8 + 16 * v7);
      if (++v7 >= v39[4])
      {
        goto LABEL_40;
      }
    }

    goto LABEL_627;
  }

LABEL_40:
  *&v547 = 0;
  *&v546 = 0;
  v545 = 0uLL;
  DWORD2(v546) = 0;
  v40 = v547;
  v20 = v546;
  *&v502[32] = 0;
  memset(v502, 0, 28);
  v10 = v546;
  if (v546)
  {
    v8 = *&v502[32];
    v42 = v20 > *&v502[16] && v20 > *&v502[16];
    if (v42)
    {
      bzero((*&v502[32] + 8 * *&v502[16]), 8 * (v20 - *&v502[16]));
    }

    *&v502[16] = v20;
    ++*&v502[24];
    if (v20)
    {
      v43 = 0;
      v44 = (v8 + 4);
      while (1)
      {
        *(v44 - 1) = v43;
        if (v20 == v43)
        {
          break;
        }

        *v44 = *(v40 + 4 * v43);
        v44 += 2;
        if (v20 == ++v43)
        {
          goto LABEL_53;
        }
      }

LABEL_577:
      re::internal::assertLog(6, v41, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v20, v20);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v366, v371);
      __break(1u);
LABEL_578:
      *v495 = 0;
      v447 = 0u;
      v446 = 0u;
      v445 = 0u;
      v444 = 0u;
      v443 = 0u;
      v239 = MEMORY[0x1E69E9C10];
      v240 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v440 = 136315906;
      *&v440[4] = "operator[]";
      *&v440[12] = 1024;
      if (v240)
      {
        v241 = 3;
      }

      else
      {
        v241 = 2;
      }

      *&v440[14] = 789;
      *&v440[18] = 2048;
      *&v440[20] = v7;
      v441 = 2048;
      *v442 = v20;
      _os_log_send_and_compose_impl(v241, v495, &v443, 80, &dword_1E1C61000, v239, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v440, 38, v375, v376);
      _os_crash_msg();
      __break(1u);
LABEL_582:
      *&v545 = 0;
      v447 = 0u;
      v446 = 0u;
      v445 = 0u;
      v444 = 0u;
      v443 = 0u;
      v242 = MEMORY[0x1E69E9C10];
      v243 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v502 = 136315906;
      *&v502[4] = "operator[]";
      *&v502[12] = 1024;
      if (v243)
      {
        v244 = 3;
      }

      else
      {
        v244 = 2;
      }

      *&v502[14] = 789;
      *&v502[18] = 2048;
      *&v502[20] = v7;
      *&v502[28] = 2048;
      *&v502[30] = v20;
      _os_log_send_and_compose_impl(v244, &v545, &v443, 80, &dword_1E1C61000, v242, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v502, 38, v375, v376);
      _os_crash_msg();
      __break(1u);
      goto LABEL_586;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_53:
  v45 = 126 - 2 * __clz(v20);
  if (v20)
  {
    v46 = v45;
  }

  else
  {
    v46 = 0;
  }

  v421 = 0;
  ++v422;
  re::DynamicArray<unsigned int>::resize(v416, v20, &re::kInvalidMeshIndex);
  *v539 = 0;
  if (v20)
  {
    v47 = 0;
    v3 = v434;
    while (1)
    {
      v7 = v47;
      if (v20 <= v47)
      {
        break;
      }

      v48 = *(v8 + 8 * v47 + 4);
      v49 = v417;
      v50 = v419;
      do
      {
        v4 = v47;
        if (v20 <= v47)
        {
          *v542 = 0;
          v432 = 0u;
          v433 = 0u;
          memset(v431, 0, sizeof(v431));
          v71 = MEMORY[0x1E69E9C10];
          v72 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v434 = 136315906;
          *&v434[4] = "operator[]";
          *&v434[12] = 1024;
          if (v72)
          {
            v73 = 3;
          }

          else
          {
            v73 = 2;
          }

          *&v434[14] = 789;
          *&v434[18] = 2048;
          *&v434[20] = v4;
          v435 = 2048;
          *v436 = v20;
          _os_log_send_and_compose_impl(v73, v542, v431, 80, &dword_1E1C61000, v71, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v434, 38, v375, v376);
          _os_crash_msg();
          __break(1u);
LABEL_181:
          *v542 = 0;
          v432 = 0u;
          v433 = 0u;
          memset(v431, 0, sizeof(v431));
          v74 = MEMORY[0x1E69E9C10];
          v75 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v434 = 136315906;
          *&v434[4] = "operator[]";
          *&v434[12] = 1024;
          if (v75)
          {
            v76 = 3;
          }

          else
          {
            v76 = 2;
          }

          *&v434[14] = 789;
          *&v434[18] = 2048;
          *&v434[20] = v4;
          v435 = 2048;
          *v436 = v49;
          _os_log_send_and_compose_impl(v76, v542, v431, 80, &dword_1E1C61000, v74, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v434, 38, v375, v376);
          _os_crash_msg();
          __break(1u);
          goto LABEL_185;
        }

        v51 = (v8 + 8 * v47);
        if (v51[1] != v48)
        {
          break;
        }

        if (v49 <= v4)
        {
          goto LABEL_181;
        }

        *(v50 + 4 * v4) = *v51;
        v47 = *v539 + 1;
        *v539 = v47;
      }

      while (v47 < v20);
      re::DynamicArray<int>::add(v420, v539);
      v47 = *v539;
      if (*v539 >= v20)
      {
        goto LABEL_65;
      }
    }

LABEL_586:
    *v542 = 0;
    v432 = 0u;
    v433 = 0u;
    memset(v431, 0, sizeof(v431));
    v245 = MEMORY[0x1E69E9C10];
    v246 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v434 = 136315906;
    *(v3 + 4) = "operator[]";
    *&v434[12] = 1024;
    if (v246)
    {
      v247 = 3;
    }

    else
    {
      v247 = 2;
    }

    *(v3 + 14) = 789;
    *&v434[18] = 2048;
    *(v3 + 20) = v7;
    v435 = 2048;
    *(v3 + 30) = v10;
    _os_log_send_and_compose_impl(v247, v542, v431, 80, &dword_1E1C61000, v245, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v434, 38, v375, v376);
    _os_crash_msg();
    __break(1u);
LABEL_590:
    *v434 = 0;
    v432 = 0u;
    v433 = 0u;
    memset(v431, 0, sizeof(v431));
    v248 = MEMORY[0x1E69E9C10];
    v249 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v502 = 136315906;
    *&v502[4] = "operator[]";
    *&v502[12] = 1024;
    if (v249)
    {
      v250 = 3;
    }

    else
    {
      v250 = 2;
    }

    *&v502[14] = 613;
    *&v502[18] = 2048;
    *&v502[20] = v7;
    *&v502[28] = 2048;
    *&v502[30] = v10;
    _os_log_send_and_compose_impl(v250, v434, v431, 80, &dword_1E1C61000, v248, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v502, 38, v375, v376);
    _os_crash_msg();
    __break(1u);
LABEL_594:
    *v434 = 0;
    v432 = 0u;
    v433 = 0u;
    memset(v431, 0, sizeof(v431));
    v251 = MEMORY[0x1E69E9C10];
    v252 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v502 = 136315906;
    *&v502[4] = "operator[]";
    *&v502[12] = 1024;
    if (v252)
    {
      v253 = 3;
    }

    else
    {
      v253 = 2;
    }

    *&v502[14] = 789;
    *&v502[18] = 2048;
    *&v502[20] = v20;
    *&v502[28] = 2048;
    *&v502[30] = v3;
    _os_log_send_and_compose_impl(v253, v434, v431, 80, &dword_1E1C61000, v251, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v502, 38, v375, v376);
    _os_crash_msg();
    __break(1u);
    goto LABEL_598;
  }

LABEL_65:
  if (*v502 && v8)
  {
    (*(**v502 + 40))();
  }

  v8 = v536;
  *&v544[2] = 0;
  memset(v542, 0, 24);
  *&v542[24] = 1;
  v20 = v443;
  v536[0] = 0;
  if (!v443)
  {
    goto LABEL_92;
  }

  v52 = 0;
LABEL_70:
  *&v502[32] = 0;
  memset(v502, 0, 28);
  re::GeomConnectivityManifold::fetchVertexIncidentFaces(&v443, v52, v502);
  *&v436[2] = 0;
  memset(v434, 0, sizeof(v434));
  if (!*&v502[16])
  {
    goto LABEL_88;
  }

  v53 = *&v502[32];
  v7 = *&v502[32] + 4 * *&v502[16];
LABEL_72:
  v3 = *v53;
  v54 = *&v434[16];
  v55 = *&v436[2];
  v10 = v474;
  v56 = (v476 + 4 * v3);
  while (1)
  {
    if (!v54)
    {
      if (v474 <= v3)
      {
        goto LABEL_541;
      }

      re::DynamicArray<int>::add(v434, v56);
LABEL_80:
      if (++v53 != v7)
      {
        goto LABEL_72;
      }

      if (*&v434[16] > 2uLL || *&v434[16] == 2 && re::GeomConnectivityManifold::isBoundaryVertex(&v443, v536[0]))
      {
        re::DynamicArray<int>::add(v542, v536);
      }

      if (*v434 && *&v436[2])
      {
        (*(**v434 + 40))();
      }

LABEL_88:
      if (*v502 && *&v502[32])
      {
        (*(**v502 + 40))();
      }

      v52 = v536[0] + 1;
      v536[0] = v52;
      if (v52 >= v20)
      {
LABEL_92:
        v20 = *(&v492 + 1);
        if (*(&v492 + 1))
        {
          v58 = *&v542[16];
          if (*&v542[16])
          {
            v59 = *&v544[2];
            v60 = v494;
            do
            {
              v7 = *v59;
              if (v20 <= v7)
              {
                goto LABEL_647;
              }

              *v59++ = *(v60 + 4 * v7);
            }

            while (--v58);
          }
        }

        v8 = re::GeomMesh::accessVertexPositions(v392);
        v10 = v61;
        re::DynamicArray<re::Vector3<float>>::resize(v410, *&v542[16]);
        if (*&v542[16])
        {
          v62 = 0;
          v7 = 0;
          do
          {
            v20 = *(*&v544[2] + 4 * v7);
            if (v20 >= v10)
            {
              goto LABEL_639;
            }

            v3 = v411;
            if (v411 <= v7)
            {
              goto LABEL_643;
            }

            *(v413 + v62) = *(v8 + 16 * v20);
            ++v7;
            v62 += 16;
          }

          while (v7 < *&v542[16]);
        }

        if (v411)
        {
          v63 = v413;
        }

        else
        {
          v63 = 0;
        }

        re::internal::GeomKDTree<re::Vector3<float>>::build(v414, v411, v63);
        if (*v542 && *&v544[2])
        {
          (*(**v542 + 40))();
        }

        if (v545 && v547)
        {
          (*(*v545 + 40))();
        }

        if (*(&v491 + 1))
        {
          if (v494)
          {
            (*(**(&v491 + 1) + 40))();
          }

          v494 = 0;
          v492 = 0uLL;
          *(&v491 + 1) = 0;
          ++v493;
        }

        if (*(&v488 + 1))
        {
          if (v491)
          {
            (*(**(&v488 + 1) + 40))();
          }

          *&v491 = 0;
          v489 = 0uLL;
          *(&v488 + 1) = 0;
          ++v490;
        }

        if (*(&v485 + 1))
        {
          if (v488)
          {
            (*(**(&v485 + 1) + 40))();
          }

          *&v488 = 0;
          v486 = 0uLL;
          *(&v485 + 1) = 0;
          ++v487;
        }

        if (*(&v482 + 1))
        {
          if (v485)
          {
            (*(**(&v482 + 1) + 40))();
          }

          *&v485 = 0;
          v483 = 0uLL;
          *(&v482 + 1) = 0;
          ++v484;
        }

        if (*(&v479 + 1))
        {
          if (v482)
          {
            (*(**(&v479 + 1) + 40))();
          }

          *&v482 = 0;
          v480 = 0uLL;
          *(&v479 + 1) = 0;
          ++v481;
        }

        if (*(&v476 + 1))
        {
          if (v479)
          {
            (*(**(&v476 + 1) + 40))();
          }

          *&v479 = 0;
          v477 = 0uLL;
          *(&v476 + 1) = 0;
          ++v478;
        }

        if (v472)
        {
          if (v476)
          {
            (*(*v472 + 40))();
          }

          *&v476 = 0;
          v473 = 0;
          v474 = 0;
          v472 = 0;
          ++v475;
        }

        if (v469)
        {
          v64 = v471;
          if ((v471 & 1) == 0)
          {
            (*(*v469 + 40))();
            v64 = v471;
          }

          v469 = 0;
          v470 = 0;
          v471 = (v64 | 1) + 2;
        }

        if (v464)
        {
          if (v468)
          {
            (*(*v464 + 40))();
          }

          v468 = 0;
          v465 = 0;
          v466 = 0;
          v464 = 0;
          ++v467;
        }

        if (v459)
        {
          if (v463)
          {
            (*(*v459 + 40))();
          }

          v463 = 0;
          v460 = 0;
          v461 = 0;
          v459 = 0;
          ++v462;
        }

        if (v454)
        {
          if (v458)
          {
            (*(*v454 + 40))();
          }

          v458 = 0;
          v455 = 0;
          v456 = 0;
          v454 = 0;
          ++v457;
        }

        if (v449)
        {
          if (v453)
          {
            (*(*v449 + 40))();
          }

          v453 = 0;
          v450 = 0;
          v451 = 0;
          v449 = 0;
          ++v452;
        }

        if (v446)
        {
          if (v448)
          {
            (*(*v446 + 40))();
          }

          v448 = 0;
          *&v447 = 0;
          v446 = 0uLL;
          ++DWORD2(v447);
        }

        if (*(&v443 + 1) && *(&v445 + 1))
        {
          (*(**(&v443 + 1) + 40))();
        }

        v20 = v434;
        bzero(v434, 0x2D0uLL);
        re::DynamicArray<re::BlendNode>::setCapacity(&v434[16], 1uLL);
        ++v437;
        re::internal::GeomAttributeManager::GeomAttributeManager(v439);
        re::internal::GeomAttributeManager::addAttribute(v439, "vertexPosition", 1, 7);
        v3 = v421;
        v409 = 0;
        v406[1] = 0;
        v407 = 0;
        v406[0] = 0;
        v408 = 0;
        v7 = v392;
        if (*(v392 + 10))
        {
          re::DynamicArray<int>::setCapacity(v406, *(v392 + 10));
          v7 = v392;
        }

        v405 = 0;
        v402[1] = 0;
        v403 = 0;
        v402[0] = 0;
        v404 = 0;
        if (!v387)
        {
          goto LABEL_175;
        }

        v66 = re::internal::GeomAttributeManager::attributeByName((v7 + 64), v387);
        if (v66)
        {
          v378 = re::GeomAttribute::accessValues<int>(v66);
          v379 = v67;
          v381 = 0;
          goto LABEL_186;
        }

LABEL_185:
        v378 = 0;
        v379 = -1;
        v381 = 1;
LABEL_186:
        v7 = v392;
        if (!v3)
        {
          goto LABEL_493;
        }

        goto LABEL_187;
      }

      goto LABEL_70;
    }

    if (v474 <= v3)
    {
      break;
    }

    v57 = *v55++;
    --v54;
    if (v57 == *v56)
    {
      goto LABEL_80;
    }
  }

  v426 = 0;
  v432 = 0u;
  v433 = 0u;
  memset(v431, 0, sizeof(v431));
  v68 = MEMORY[0x1E69E9C10];
  v69 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  *v539 = 136315906;
  *&v539[4] = "operator[]";
  *&v539[12] = 1024;
  if (v69)
  {
    v70 = 3;
  }

  else
  {
    v70 = 2;
  }

  *&v539[14] = 797;
  *&v539[18] = 2048;
  *&v539[20] = v3;
  v540 = 2048;
  *v541 = v10;
  _os_log_send_and_compose_impl(v70, &v426, v431, 80, &dword_1E1C61000, v68, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v539, 38, v375, v376);
  _os_crash_msg();
  __break(1u);
LABEL_175:
  v378 = 0;
  v379 = -1;
  v381 = 1;
  if (!v3)
  {
    goto LABEL_493;
  }

LABEL_187:
  i = 0;
  v377 = v3;
  while (2)
  {
    v11 = v421;
    if (i)
    {
      v7 = i - 1;
      if (v421 <= i - 1)
      {
        goto LABEL_731;
      }

      v77 = *(v423 + 4 * v7);
    }

    else
    {
      v77 = 0;
    }

    if (v421 <= i)
    {
      goto LABEL_719;
    }

    v10 = *(v423 + 4 * i) - v77;
    re::DynamicArray<float>::resize(v402, v10);
    re::DynamicArray<float>::copy(v402, 0, (v419 + 4 * v77), v10);
    re::GeomMesh::GeomMesh(v431, 0);
    if (v10 < 2)
    {
      goto LABEL_487;
    }

    v380 = i;
    v78 = *(a2 + 12);
    v79 = *(a2 + 4);
    v3 = v405;
    v7 = v403;
    v5 = re::GeomMesh::accessVertexPositions(v392);
    v4 = v80;
    *&v502[8] = 0;
    *v502 = 0;
    *&v502[16] = 1;
    *&v502[24] = 0;
    *&v502[32] = 0;
    *&v547 = 0;
    *&v546 = 0;
    v545 = 0uLL;
    v8 = 4 * v7;
    DWORD2(v546) = 0;
    if (4 * v7)
    {
      re::DynamicArray<re::Quaternion<float>>::setCapacity(&v545, 4 * v7);
    }

    v81 = *(v392 + 4);
    if ((v81 & 0x3F) != 0)
    {
      v82 = (v81 >> 6) + 1;
    }

    else
    {
      v82 = v81 >> 6;
    }

    v504 = *(v392 + 4);
    *&v443 = 0;
    re::DynamicOverflowArray<unsigned long long,3ul>::resize(v502, v82, &v443);
    v83 = *&v502[8];
    if (*&v502[8])
    {
      v84 = *&v502[32];
      if (v502[16])
      {
        v84 = &v502[24];
      }

      do
      {
        *v84++ = 0;
        v85 = *&v502[32];
        if (v502[16])
        {
          v85 = &v502[24];
        }
      }

      while (v84 != &v85[8 * v83]);
    }

    v384 = v7;
    if (v7)
    {
      v389 = v3 + 4 * v7;
      for (i = v3; i != v389; i += 4)
      {
        v20 = *i;
        v7 = *(v392 + 5);
        if (v7 <= v20)
        {
          goto LABEL_667;
        }

        v7 = 0;
        *v539 = *(*(v392 + 7) + 16 * v20);
        if (*&v539[12] == -1)
        {
          v86 = 3;
        }

        else
        {
          v86 = 4;
        }

        do
        {
          v10 = *&v539[4 * v7];
          if ((re::DynamicBitset<unsigned long long,64ul>::getBit(v502, v10) & 1) == 0)
          {
            v20 = v10 >> 6;
            v11 = *&v502[8];
            if (*&v502[8] <= v10 >> 6)
            {
              v426 = 0;
              v447 = 0u;
              v446 = 0u;
              v445 = 0u;
              v444 = 0u;
              v443 = 0u;
              v205 = MEMORY[0x1E69E9C10];
              v206 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v542 = 136315906;
              *&v542[4] = "operator[]";
              *&v542[12] = 1024;
              if (v206)
              {
                v207 = 3;
              }

              else
              {
                v207 = 2;
              }

              *&v542[14] = 858;
              *&v542[18] = 2048;
              *&v542[20] = v10 >> 6;
              v543 = 2048;
              *v544 = v11;
              _os_log_send_and_compose_impl(v207, &v426, &v443, 80, &dword_1E1C61000, v205, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v542, 38, v375, v376);
              _os_crash_msg();
              __break(1u);
LABEL_532:
              v426 = 0;
              v447 = 0u;
              v446 = 0u;
              v445 = 0u;
              v444 = 0u;
              v443 = 0u;
              v208 = MEMORY[0x1E69E9C10];
              v209 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v542 = 136315906;
              *&v542[4] = "operator[]";
              *&v542[12] = 1024;
              if (v209)
              {
                v210 = 3;
              }

              else
              {
                v210 = 2;
              }

              *&v542[14] = 613;
              *&v542[18] = 2048;
              *&v542[20] = v10;
              v543 = 2048;
              *v544 = v4;
              _os_log_send_and_compose_impl(v210, &v426, &v443, 80, &dword_1E1C61000, v208, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v542, 38, v375, v376);
              _os_crash_msg();
              __break(1u);
LABEL_536:
              re::internal::assertLog(6, v105, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v116, v114);
              _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v365, v370);
              __break(1u);
LABEL_537:
              *v495 = 0;
              v447 = 0u;
              v446 = 0u;
              v445 = 0u;
              v444 = 0u;
              v443 = 0u;
              v211 = MEMORY[0x1E69E9C10];
              v212 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v440 = 136315906;
              *&v440[4] = "operator[]";
              *&v440[12] = 1024;
              if (v212)
              {
                v213 = 3;
              }

              else
              {
                v213 = 2;
              }

              *&v440[14] = 789;
              *&v440[18] = 2048;
              *&v440[20] = 0;
              v441 = 2048;
              *v442 = 0;
              _os_log_send_and_compose_impl(v213, v495, &v443, 80, &dword_1E1C61000, v211, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v440, 38, v375, v376);
              _os_crash_msg();
              __break(1u);
LABEL_541:
              v426 = 0;
              v432 = 0u;
              v433 = 0u;
              memset(v431, 0, sizeof(v431));
              v214 = MEMORY[0x1E69E9C10];
              v215 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v539 = 136315906;
              *(v8 + 52) = "operator[]";
              *&v539[12] = 1024;
              if (v215)
              {
                v216 = 3;
              }

              else
              {
                v216 = 2;
              }

              *(v8 + 62) = 797;
              *&v539[18] = 2048;
              *(v8 + 68) = v3;
              v540 = 2048;
              *(v8 + 78) = v10;
              _os_log_send_and_compose_impl(v216, &v426, v431, 80, &dword_1E1C61000, v214, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v539, 38, v375, v376);
              _os_crash_msg();
              __break(1u);
LABEL_545:
              *v434 = 0;
              v432 = 0u;
              v433 = 0u;
              memset(v431, 0, sizeof(v431));
              v217 = MEMORY[0x1E69E9C10];
              v218 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v502 = 136315906;
              *&v502[4] = "operator[]";
              *&v502[12] = 1024;
              if (v218)
              {
                v219 = 3;
              }

              else
              {
                v219 = 2;
              }

              *&v502[14] = 797;
              *&v502[18] = 2048;
              *&v502[20] = v20;
              *&v502[28] = 2048;
              *&v502[30] = v7;
              _os_log_send_and_compose_impl(v219, v434, v431, 80, &dword_1E1C61000, v217, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v502, 38, v375, v376);
              _os_crash_msg();
              __break(1u);
              goto LABEL_549;
            }

            v87 = &v502[24];
            if ((v502[16] & 1) == 0)
            {
              v87 = *&v502[32];
            }

            *&v87[8 * v20] &= ~(1 << v10);
            if (v10 >= v4)
            {
              goto LABEL_532;
            }

            re::DynamicArray<re::Vector3<float>>::add(&v545, (v5 + 16 * v10));
          }

          ++v7;
        }

        while (v86 != v7);
      }
    }

    if (*v502 && (v502[16] & 1) == 0)
    {
      (*(**v502 + 40))();
    }

    *v539 = 0u;
    *v542 = 0u;
    re::computeBestFitPlane(v547, v546, v539, v542);
    v88 = re::GeomMesh::accessVertexPositions(v392);
    if (v384)
    {
      LODWORD(v4) = v89;
      v11 = *(v392 + 5);
      v90 = 0.0;
      v91 = 0.0;
      do
      {
        v7 = *v3;
        if (v11 <= v7)
        {
          goto LABEL_651;
        }

        v92 = (*(v392 + 7) + 16 * v7);
        v10 = *v92;
        if (v10 >= v89)
        {
          goto LABEL_655;
        }

        v7 = v92[1];
        if (v7 >= v89)
        {
          goto LABEL_659;
        }

        i = v92[2];
        if (i >= v89)
        {
          goto LABEL_663;
        }

        v5 = v92[3];
        if (v5 == -1)
        {
          v95 = *(v88 + 16 * v10);
          v93 = vsubq_f32(*(v88 + 16 * v7), v95);
          v94 = vsubq_f32(*(v88 + 16 * i), v95);
        }

        else
        {
          if (v5 >= v89)
          {
            goto LABEL_671;
          }

          v93 = vsubq_f32(*(v88 + 16 * v7), *(v88 + 16 * v5));
          v94 = vsubq_f32(*(v88 + 16 * i), *(v88 + 16 * v10));
        }

        v96 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v94, v94), v94, 0xCuLL), vnegq_f32(v93)), v94, vextq_s8(vuzp1q_s32(v93, v93), v93, 0xCuLL));
        v97.i64[0] = 0x3F0000003F000000;
        v97.i64[1] = 0x3F0000003F000000;
        v98 = vaddq_f32(vmulq_f32(v96, v97), 0);
        v99 = vmulq_f32(*v542, vextq_s8(vuzp1q_s32(v98, v98), v98, 0xCuLL));
        v100 = v99.f32[2] + vaddv_f32(*v99.f32);
        if (v100 > 0.0)
        {
          v90 = v90 + v100;
        }

        else
        {
          v91 = v91 - v100;
        }

        v3 += 4;
        v8 -= 4;
      }

      while (v8);
      if (v91 > v90)
      {
        *v542 = vnegq_f32(*v542);
      }
    }

    if (v545 && v547)
    {
      (*(*v545 + 40))();
    }

    v401 = *v542;
    v400 = 0;
    v397[1] = 0;
    v398 = 0;
    v396 = 0;
    v397[0] = 0;
    v393[1] = 0;
    v394 = 0;
    v393[0] = 0;
    v399 = 1;
    v395 = 1;
    if (!v403)
    {
      v382 = 0;
      v383.i64[0] = 0;
      v4 = 0;
      v390 = 0;
      goto LABEL_337;
    }

    v430 = 0;
    v428 = 0;
    v426 = 0;
    v427 = 0;
    v429 = 0;
    *&v538[2] = 0;
    memset(v536, 0, sizeof(v536));
    *&v442[2] = 0;
    memset(v440, 0, sizeof(v440));
    re::internal::extractMeshFromFaceSubset(v392, v405, v403, 0, &v443);
    re::computeAABB(v424, &v443);
    v383 = v424[0];
    v385 = v424[1];
    *&v544[2] = 0;
    memset(v542, 0, sizeof(v542));
    re::GeomConnectivityManifold::GeomConnectivityManifold(v502);
    re::GeomConnectivityManifold::buildAndMakeManifold(&v444, v502, v542);
    *&v541[2] = 0;
    memset(v539, 0, sizeof(v539));
    re::findBoundaryLoops(v502, &v426, v539);
    *&v536[4] = 0;
    ++v536[6];
    if (*&v536[2] < *&v539[16])
    {
      re::DynamicArray<re::Quaternion<float>>::setCapacity(v536, *&v539[16]);
    }

    v4 = re::GeomMesh::accessVertexPositions(&v443);
    v8 = v101;
    v11 = *&v541[2];
    if (!*&v542[16])
    {
      if (!*&v539[16])
      {
        goto LABEL_256;
      }

      v103 = 4 * *&v539[16];
      while (1)
      {
        v7 = *v11;
        if (v7 >= v8)
        {
          goto LABEL_703;
        }

        re::DynamicArray<re::Vector3<float>>::add(v536, (v4 + 16 * v7));
        v11 += 4;
        v103 -= 4;
        if (!v103)
        {
          goto LABEL_256;
        }
      }
    }

    if (*&v539[16])
    {
      v102 = 4 * *&v539[16];
      do
      {
        v7 = *v11;
        v20 = *&v542[16];
        if (*&v542[16] <= v7)
        {
          goto LABEL_675;
        }

        v7 = *(*&v544[2] + 4 * v7);
        if (v7 >= v8)
        {
          goto LABEL_679;
        }

        re::DynamicArray<re::Vector3<float>>::add(v536, (v4 + 16 * v7));
        v11 += 4;
        v102 -= 4;
      }

      while (v102);
    }

LABEL_256:
    if (*v539 && *&v541[2])
    {
      (*(**v539 + 40))();
    }

    if (v528)
    {
      v104 = v530;
      if ((v530 & 1) == 0)
      {
        (*(*v528 + 40))();
        v104 = v530;
      }

      v528 = 0;
      v529 = 0;
      v530 = (v104 | 1) + 2;
    }

    if (v523)
    {
      if (v527)
      {
        (*(*v523 + 40))();
      }

      v527 = 0;
      v524 = 0;
      v525 = 0;
      v523 = 0;
      ++v526;
    }

    if (v518)
    {
      if (v522)
      {
        (*(*v518 + 40))();
      }

      v522 = 0;
      v519 = 0;
      v520 = 0;
      v518 = 0;
      LODWORD(v521) = v521 + 1;
    }

    if (v513)
    {
      if (v517)
      {
        (*(*v513 + 40))();
      }

      v517 = 0;
      v514 = 0;
      v515 = 0;
      v513 = 0;
      ++v516;
    }

    if (v508)
    {
      if (v512)
      {
        (*(*v508 + 40))();
      }

      v512 = 0;
      v509 = 0;
      v510 = 0;
      v508 = 0;
      ++v511;
    }

    if (v504)
    {
      if (v507)
      {
        (*(*v504 + 40))();
      }

      v507 = 0;
      v505[0] = 0;
      v505[1] = 0;
      v504 = 0;
      ++v506;
    }

    if (*&v502[8] && v503)
    {
      (*(**&v502[8] + 40))();
    }

    if (*v542 && *&v544[2])
    {
      (*(**v542 + 40))();
    }

    re::GeomMesh::~GeomMesh(&v443);
    if (v428)
    {
      i = 0;
      v106 = 0.0;
      v107 = 0.0;
      do
      {
        if (i)
        {
          v108 = 16 * *(v430 + 4 * i - 4);
        }

        else
        {
          v108 = 0;
        }

        v109 = 16 * *(v430 + 4 * i);
        if (v109 == v108)
        {
          v110.i64[0] = 0x7F0000007FLL;
          v110.i64[1] = 0x7F0000007FLL;
          v111 = 0.0;
        }

        else
        {
          v112 = 0;
          v113 = (*&v538[2] + v108);
          v114 = (v109 - v108) >> 4;
          v115 = 0.0;
          do
          {
            if (v114 - 1 == v112)
            {
              v116 = 0;
            }

            else
            {
              v116 = v112 + 1;
            }

            if (v114 <= v116)
            {
              goto LABEL_536;
            }

            v117 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v113[v116], v113[v116]), v113[v116], 0xCuLL), vnegq_f32(v113[v112])), v113[v116], vextq_s8(vuzp1q_s32(v113[v112], v113[v112]), v113[v112], 0xCuLL));
            v118 = vmulq_f32(v401, vextq_s8(vuzp1q_s32(v117, v117), v117, 0xCuLL));
            v115 = v115 + (v118.f32[2] + vaddv_f32(*v118.f32));
            ++v112;
          }

          while (v114 != v112);
          v119 = v108 - v109;
          v120.i64[0] = 0x7F0000007FLL;
          v120.i64[1] = 0x7F0000007FLL;
          v121 = vnegq_f32(v120);
          do
          {
            v122 = *v113++;
            v123 = v122;
            v121.i32[3] = 0;
            v123.i32[3] = 0;
            v121 = vminnmq_f32(v121, v123);
            v120.i32[3] = 0;
            v120 = vmaxnmq_f32(v120, v123);
            v119 += 16;
          }

          while (v119);
          v111 = v115 * 0.5;
          v110 = vsubq_f32(v120, v121);
        }

        v124 = fabsf(v111);
        if (v124 >= v78)
        {
          v391 = v110;
          LODWORD(v443) = i;
          re::DynamicArray<int>::add(v440, &v443);
          if (v124 > v106)
          {
            v125 = v391;
            v125.i32[3] = 0;
            v126 = vmaxnmq_f32(v125, 0);
            v127 = vmulq_f32(v126, v126);
            v107 = sqrtf(v127.f32[2] + vaddv_f32(*v127.f32)) * 0.5;
            if (*&v440[16] >= 2uLL)
            {
              v128 = *&v442[2] + 4 * *&v440[16];
              v129 = **&v442[2];
              **&v442[2] = *(v128 - 4);
              *(v128 - 4) = v129;
            }

            v106 = v124;
          }
        }

        ++i;
      }

      while (i < v428);
    }

    else
    {
      v107 = 0.0;
    }

    v130 = vsubq_f32(v385, v383);
    v130.i32[3] = 0;
    v131 = vmaxnmq_f32(v130, 0);
    v132 = vmulq_f32(v131, v131);
    if (v107 >= ((sqrtf(v132.f32[2] + vaddv_f32(*v132.f32)) * 0.5) * 0.66667))
    {
      *v542 = 0;
      if (!*&v440[16])
      {
        goto LABEL_327;
      }

      i = 0;
      while (1)
      {
        v7 = *(*&v442[2] + 4 * i);
        v11 = v428;
        if (v7)
        {
          v20 = v7 - 1;
          if (v428 <= v7 - 1)
          {
            goto LABEL_723;
          }

          v133 = *(v430 + 4 * v20);
        }

        else
        {
          v133 = 0;
        }

        if (v428 <= v7)
        {
          goto LABEL_715;
        }

        v3 = *(v430 + 4 * v7);
        if (v133 < v3)
        {
          break;
        }

LABEL_326:
        *v542 += v3 - v133;
        re::DynamicArray<int>::add(v397, v542);
        if (++i >= *&v440[16])
        {
          goto LABEL_327;
        }
      }

      v11 = 16 * v133;
      v7 = v133;
      while (1)
      {
        v20 = *&v536[4];
        if (*&v536[4] <= v7)
        {
          goto LABEL_582;
        }

        re::DynamicArray<re::Vector3<float>>::add(v393, (*&v538[2] + v11));
        ++v7;
        v11 += 16;
        if (v3 == v7)
        {
          goto LABEL_326;
        }
      }
    }

    v398 = 0;
    ++v399;
    v394 = 0;
    ++v395;
LABEL_327:
    if (*v440 && *&v442[2])
    {
      (*(**v440 + 40))();
    }

    if (*v536 && *&v538[2])
    {
      (*(**v536 + 40))();
    }

    if (v426 && v430)
    {
      (*(*v426 + 40))();
    }

    v390 = v400;
    v4 = v398;
    v382 = v396;
    v383.i64[0] = v394;
LABEL_337:
    v424[0].i32[0] = 0;
    *&v541[2] = 0;
    memset(v539, 0, sizeof(v539));
    v430 = 0;
    v428 = 0;
    v426 = 0;
    v427 = 0;
    v429 = 0;
    if (!v4)
    {
      *&v544[2] = 0;
      memset(v542, 0, sizeof(v542));
      goto LABEL_424;
    }

    v8 = 0;
    while (2)
    {
      if (v8)
      {
        v7 = *(v390 - 4 + 4 * v8);
      }

      else
      {
        v7 = 0;
      }

      v134 = *(v390 + 4 * v8);
      *&v538[2] = 0;
      memset(v536, 0, sizeof(v536));
      re::DynamicArray<re::Vector3<float>>::resize(v536, (v134 - v7));
      if (v134 > v7)
      {
        v136 = 0;
        v11 = 0;
        v137 = v383.i64[0];
        if (v383.i64[0] <= v7)
        {
          v137 = v7;
        }

        v138 = v382 + 16 * v7;
        v139 = v134 - v7;
        v140 = v137 - v7;
        while (v140 != v11)
        {
          v7 = *&v536[4];
          if (*&v536[4] <= v11)
          {
            goto LABEL_599;
          }

          *(*&v538[2] + v136) = *(v138 + v136);
          ++v11;
          v136 += 16;
          if (v139 == v11)
          {
            goto LABEL_349;
          }
        }

LABEL_598:
        re::internal::assertLog(6, v135, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v137, v383.i64[0]);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v367, v372);
        __break(1u);
LABEL_599:
        *&v545 = 0;
        v447 = 0u;
        v446 = 0u;
        v445 = 0u;
        v444 = 0u;
        v443 = 0u;
        v254 = MEMORY[0x1E69E9C10];
        v255 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v502 = 136315906;
        *&v502[4] = "operator[]";
        *&v502[12] = 1024;
        if (v255)
        {
          v256 = 3;
        }

        else
        {
          v256 = 2;
        }

        *&v502[14] = 789;
        *&v502[18] = 2048;
        *&v502[20] = v11;
        *&v502[28] = 2048;
        *&v502[30] = v7;
        _os_log_send_and_compose_impl(v256, &v545, &v443, 80, &dword_1E1C61000, v254, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v502, 38, v375, v376);
        _os_crash_msg();
        __break(1u);
LABEL_603:
        *v434 = 0;
        v432 = 0u;
        v433 = 0u;
        memset(v431, 0, sizeof(v431));
        v257 = MEMORY[0x1E69E9C10];
        v258 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v502 = 136315906;
        *&v502[4] = "operator[]";
        *&v502[12] = 1024;
        if (v258)
        {
          v259 = 3;
        }

        else
        {
          v259 = 2;
        }

        *&v502[14] = 789;
        *&v502[18] = 2048;
        *&v502[20] = v20;
        *&v502[28] = 2048;
        *&v502[30] = v7;
        _os_log_send_and_compose_impl(v259, v434, v431, 80, &dword_1E1C61000, v257, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v502, 38, v375, v376);
        _os_crash_msg();
        __break(1u);
LABEL_607:
        *v434 = 0;
        v432 = 0u;
        v433 = 0u;
        memset(v431, 0, sizeof(v431));
        v260 = MEMORY[0x1E69E9C10];
        v7 = v14;
        v261 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v502 = 136315906;
        *&v502[4] = "operator[]";
        *&v502[12] = 1024;
        if (v261)
        {
          v262 = 3;
        }

        else
        {
          v262 = 2;
        }

        *&v502[14] = 613;
        *&v502[18] = 2048;
        *&v502[20] = v20;
        *&v502[28] = 2048;
        *&v502[30] = v7;
        _os_log_send_and_compose_impl(v262, v434, v431, 80, &dword_1E1C61000, v260, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v502, 38, v375, v376);
        _os_crash_msg();
        __break(1u);
        goto LABEL_611;
      }

LABEL_349:
      *&v502[32] = 0;
      memset(v502, 0, 24);
      v5 = *&v538[2];
      i = *&v536[4];
      *&v502[24] = 1;
      *&v445 = 0;
      *&v444 = 0;
      v443 = 0uLL;
      DWORD2(v444) = 0;
      if (!*&v536[4])
      {
        goto LABEL_748;
      }

      v7 = 0;
      v10 = *&v538[2];
      do
      {
        *&v444 = 0;
        ++DWORD2(v444);
        if (*&v414[2])
        {
          re::internal::GeomKDTree<re::Vector3<float>>::findWithinRadiusHelper(v414, v415, v10, &v443, 0.000000999999997);
          if (v444)
          {
            LODWORD(v545) = v7;
            re::DynamicArray<int>::add(v502, &v545);
          }
        }

        ++v7;
        v10 += 16;
      }

      while (i != v7);
      v141 = *&v502[16];
      if (!*&v502[16])
      {
        if (i == 1)
        {
          v142 = 0;
        }

        else
        {
          v143 = 1;
          v144 = *v5;
          do
          {
            v145 = *(v5 + 16 * v143);
            v144.i32[3] = 0;
            v145.i32[3] = 0;
            v144 = vminnmq_f32(v144, v145);
            ++v143;
          }

          while (i != v143);
          v142 = 0;
          v146 = vsubq_f32(*v5, v144);
          v147 = vmulq_f32(v146, v146);
          v148 = v147.f32[2] + vaddv_f32(*v147.f32);
          for (j = 1; j != i; ++j)
          {
            v150 = vsubq_f32(*(v5 + 16 * j), v144);
            v151 = vmulq_f32(v150, v150);
            v152 = vaddv_f32(*v151.f32);
            if ((v151.f32[2] + v152) < v148)
            {
              v148 = v151.f32[2] + v152;
              v142 = j;
            }
          }
        }

        LODWORD(v545) = v142;
        re::DynamicArray<int>::add(v502, &v545);
        v141 = *&v502[16];
      }

      if (v141 == 1)
      {
        v153 = **&v502[32];
        if (i <= v153)
        {
          goto LABEL_739;
        }

        v154 = 0;
        v155 = 0.0;
        v156 = **&v502[32];
        do
        {
          v157 = vsubq_f32(*(v5 + 16 * v154), *(v5 + 16 * v153));
          v158 = vmulq_f32(v157, v157);
          v159 = vaddv_f32(*v158.f32);
          if ((v158.f32[2] + v159) >= v155)
          {
            v156 = v154;
            v155 = v158.f32[2] + v159;
          }

          ++v154;
        }

        while (i != v154);
        if (v156 >= v153)
        {
          LODWORD(v545) = v156;
        }

        else
        {
          **&v502[32] = v156;
          LODWORD(v545) = v153;
        }

        re::DynamicArray<int>::add(v502, &v545);
      }

      if (v443 && v445)
      {
        (*(*v443 + 40))();
      }

      *&v547 = 0;
      *&v546 = 0;
      v545 = 0uLL;
      DWORD2(v546) = 0;
      if (*&v536[4])
      {
        re::DynamicArray<re::Quaternion<float>>::setCapacity(&v545, *&v536[4]);
      }

      *&v544[2] = 0;
      memset(v542, 0, sizeof(v542));
      i = *&v502[16];
      if (*&v502[16] != 1)
      {
        v11 = 0;
        v160 = 0;
        while (1)
        {
          v7 = v11;
          if (i <= v11)
          {
            goto LABEL_619;
          }

          v11 = (v160 + 1);
          if (i <= v11)
          {
            goto LABEL_623;
          }

          v161 = *(*&v502[32] + 4 * v7);
          v10 = (*(*&v502[32] + 4 * v11) - v161 + 1);
          re::DynamicArray<re::Vector3<float>>::resize(v542, v10);
          re::DynamicArray<re::Vector3<float>>::copy(v542, 0, (*&v538[2] + 16 * v161), v10);
          re::internal::simplifyPolyLine(v542, v79);
          v7 = *&v542[16];
          if (*&v542[16] != 1)
          {
            break;
          }

LABEL_389:
          i = *&v502[16];
          v7 = *&v502[16] - 1;
          v160 = v11;
          if (*&v502[16] - 1 <= v11)
          {
            *&v542[16] = 0;
            ++*&v542[24];
            if (*&v502[16])
            {
              goto LABEL_391;
            }

LABEL_727:
            *v495 = 0;
            v447 = 0u;
            v446 = 0u;
            v445 = 0u;
            v444 = 0u;
            v443 = 0u;
            v350 = MEMORY[0x1E69E9C10];
            v351 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v440 = 136315906;
            *&v440[4] = "operator[]";
            *&v440[12] = 1024;
            if (v351)
            {
              v352 = 3;
            }

            else
            {
              v352 = 2;
            }

            *&v440[14] = 789;
            *&v440[18] = 2048;
            *&v440[20] = v7;
            v441 = 2048;
            *v442 = 0;
            _os_log_send_and_compose_impl(v352, v495, &v443, 80, &dword_1E1C61000, v350, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v440, 38, v375, v376);
            _os_crash_msg();
            __break(1u);
LABEL_731:
            *v502 = 0;
            v447 = 0u;
            v446 = 0u;
            v445 = 0u;
            v444 = 0u;
            v443 = 0u;
            v353 = MEMORY[0x1E69E9C10];
            v354 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v431[0]) = 136315906;
            *(v431 + 4) = "operator[]";
            WORD6(v431[0]) = 1024;
            if (v354)
            {
              v355 = 3;
            }

            else
            {
              v355 = 2;
            }

            *(v431 + 14) = 789;
            WORD1(v431[1]) = 2048;
            *(&v431[1] + 4) = v7;
            WORD6(v431[1]) = 2048;
            *(&v431[1] + 14) = v11;
            _os_log_send_and_compose_impl(v355, v502, &v443, 80, &dword_1E1C61000, v353, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v431, 38, v375, v376);
            _os_crash_msg();
            __break(1u);
LABEL_735:
            *&v545 = 0;
            v447 = 0u;
            v446 = 0u;
            v445 = 0u;
            v444 = 0u;
            v443 = 0u;
            v356 = MEMORY[0x1E69E9C10];
            v357 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v502 = 136315906;
            *&v502[4] = "operator[]";
            *&v502[12] = 1024;
            if (v357)
            {
              v358 = 3;
            }

            else
            {
              v358 = 2;
            }

            *&v502[14] = 621;
            *&v502[18] = 2048;
            *&v502[20] = v7;
            *&v502[28] = 2048;
            *&v502[30] = v7;
            _os_log_send_and_compose_impl(v358, &v545, &v443, 80, &dword_1E1C61000, v356, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v502, 38, v375, v376);
            _os_crash_msg();
            __break(1u);
LABEL_739:
            re::internal::assertLog(6, v135, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v153, i);
            _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v368, v373);
            __break(1u);
LABEL_740:
            *&v545 = 0;
            v447 = 0u;
            v446 = 0u;
            v445 = 0u;
            v444 = 0u;
            v443 = 0u;
            v359 = MEMORY[0x1E69E9C10];
            v360 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v502 = 136315906;
            *&v502[4] = "operator[]";
            *&v502[12] = 1024;
            if (v360)
            {
              v361 = 3;
            }

            else
            {
              v361 = 2;
            }

            *&v502[14] = 789;
            *&v502[18] = 2048;
            *&v502[20] = 0;
            *&v502[28] = 2048;
            *&v502[30] = 0;
            _os_log_send_and_compose_impl(v361, &v545, &v443, 80, &dword_1E1C61000, v359, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v502, 38, v375, v376);
            _os_crash_msg();
            __break(1u);
LABEL_744:
            *&v545 = 0;
            v447 = 0u;
            v446 = 0u;
            v445 = 0u;
            v444 = 0u;
            v443 = 0u;
            v362 = MEMORY[0x1E69E9C10];
            v363 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v502 = 136315906;
            *&v502[4] = "operator[]";
            if (v363)
            {
              v364 = 3;
            }

            else
            {
              v364 = 2;
            }

            *&v502[12] = 1024;
            *&v502[14] = 613;
            *&v502[18] = 2048;
            *&v502[20] = v7;
            *&v502[28] = 2048;
            *&v502[30] = v379;
            _os_log_send_and_compose_impl(v364, &v545, &v443, 80, &dword_1E1C61000, v362, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v502, 38, v375, v376);
            _os_crash_msg();
            __break(1u);
LABEL_748:
            re::internal::assertLog(6, v135, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
            _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v369, v374);
            __break(1u);
          }
        }

        v162 = 0;
        v3 = 0;
        while (v7 > v3)
        {
          re::DynamicArray<re::Vector3<float>>::add(&v545, (*&v544[2] + v162));
          ++v3;
          v7 = *&v542[16];
          v162 += 16;
          if (v3 >= *&v542[16] - 1)
          {
            goto LABEL_389;
          }
        }

        *v495 = 0;
        v447 = 0u;
        v446 = 0u;
        v445 = 0u;
        v444 = 0u;
        v443 = 0u;
        v201 = MEMORY[0x1E69E9C10];
        v202 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v440 = 136315906;
        *&v440[4] = "operator[]";
        *&v440[12] = 1024;
        if (v202)
        {
          v203 = 3;
        }

        else
        {
          v203 = 2;
        }

        *&v440[14] = 789;
        *&v440[18] = 2048;
        *&v440[20] = v3;
        v441 = 2048;
        *v442 = v7;
        _os_log_send_and_compose_impl(v203, v495, &v443, 80, &dword_1E1C61000, v201, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v440, 38, v375, v376);
        _os_crash_msg();
        __break(1u);
        goto LABEL_504;
      }

      v7 = 0;
      *&v542[24] = 1;
LABEL_391:
      v163 = *(*&v502[32] + 4 * v7);
      if (*&v536[4] > v163)
      {
        v164 = v163 + 1;
        do
        {
          re::DynamicArray<re::Vector3<float>>::add(v542, (*&v538[2] + 16 * v163));
          v163 = v164;
          v42 = *&v536[4] > v164++;
        }

        while (v42);
        if (!*&v502[16])
        {
          goto LABEL_537;
        }
      }

      v165 = 0;
      while (v165 <= **&v502[32])
      {
        v7 = v165;
        v20 = *&v536[4];
        if (*&v536[4] <= v165)
        {
          goto LABEL_578;
        }

        re::DynamicArray<re::Vector3<float>>::add(v542, (*&v538[2] + 16 * v165++));
        if (!*&v502[16])
        {
          goto LABEL_537;
        }
      }

      re::internal::simplifyPolyLine(v542, v79);
      v7 = *&v542[16];
      if (*&v542[16] != 1)
      {
        v166 = 0;
        v3 = 0;
        while (v7 > v3)
        {
          re::DynamicArray<re::Vector3<float>>::add(&v545, (*&v544[2] + v166));
          ++v3;
          v7 = *&v542[16];
          v166 += 16;
          if (v3 >= *&v542[16] - 1)
          {
            goto LABEL_404;
          }
        }

        goto LABEL_615;
      }

LABEL_404:
      re::DynamicArray<re::RigComponentConstraint>::operator=(v536, &v545);
      if (*v542 && *&v544[2])
      {
        (*(**v542 + 40))();
      }

      if (v545 && v547)
      {
        (*(*v545 + 40))();
      }

      if (*v502 && *&v502[32])
      {
        (*(**v502 + 40))();
      }

      if (*&v536[4] > 2uLL)
      {
        v424[0].i32[0] += v536[4];
        re::DynamicArray<int>::add(v539, v424);
        if (*&v536[4])
        {
          v10 = *&v538[2];
          v167 = 16 * *&v536[4];
          do
          {
            re::DynamicArray<re::Vector3<float>>::add(&v426, v10);
            v10 += 16;
            v167 -= 16;
          }

          while (v167);
        }
      }

      if (*v536 && *&v538[2])
      {
        (*(**v536 + 40))();
      }

      if (++v8 != v4)
      {
        continue;
      }

      break;
    }

    *&v544[2] = 0;
    memset(v542, 0, sizeof(v542));
    if (*&v539[16])
    {
      re::internal::triangulatePolygonWithHoles(*&v541[2], *&v539[16], v430, v428, &v401, v542);
    }

LABEL_424:
    re::GeomMesh::GeomMesh(&v443, 0);
    v168 = *&v542[16] / 3uLL;
    i = v380;
    v7 = v502;
    if ((*&v542[16] / 3uLL))
    {
      i = v428;
      bzero(v502, 0x2D0uLL);
      re::DynamicArray<re::BlendNode>::setCapacity(&v502[16], 1uLL);
      LODWORD(v503) = v503 + 1;
      re::internal::GeomAttributeManager::GeomAttributeManager(v505);
      re::internal::GeomAttributeManager::addAttribute(v505, "vertexPosition", 1, 7);
      if (*&v502[32] > v168)
      {
        v170 = v535;
        if (v535)
        {
          v171 = 0;
          do
          {
            v172 = re::internal::GeomAttributeContainer::attributeByIndex(v534, v171);
            re::internal::accessFaceVaryingAttributeSubmesh(v172, v173);
            ++v171;
          }

          while (v170 != v171);
        }
      }

      v8 = v168;
      re::DynamicArray<re::GeomCell4>::resize(&v502[16], v168);
      LODWORD(v531) = v168;
      if (v532)
      {
        v174 = v533;
        v175 = 8 * v532;
        do
        {
          v176 = *v174++;
          (*(*v176 + 80))(v176, v531);
          v175 -= 8;
        }

        while (v175);
      }

      if (*&v502[8] > i && *&v502[32] && (*&v502[32] - 1) > *&v502[32])
      {
          ;
        }
      }

      v20 = v502;
      *&v502[8] = i;
      LODWORD(v518) = i;
      if (v521)
      {
        v177 = v523;
        v178 = 8 * v521;
        do
        {
          v179 = *v177++;
          (*(*v179 + 80))(v179, v518);
          v178 -= 8;
        }

        while (v178);
      }

      v11 = 0;
      do
      {
        v7 = (3 * v11);
        v10 = *&v542[16];
        if (*&v542[16] <= v7)
        {
          goto LABEL_683;
        }

        v3 = (v7 + 1);
        if (*&v542[16] <= v3)
        {
          goto LABEL_687;
        }

        v5 = (v7 + 2);
        if (*&v542[16] <= v5)
        {
          goto LABEL_691;
        }

        v10 = *&v502[32];
        if (*&v502[32] <= v11)
        {
          goto LABEL_695;
        }

        v7 = *(*&v544[2] + 4 * v7);
        v3 = *(*&v544[2] + 4 * v3);
        v5 = *(*&v544[2] + 4 * v5);
        v180 = (v504 + 16 * v11);
        v181 = *v180;
        v182 = v180[3];
        if (v181 != -1 && v182 == -1)
        {
          v184 = v535;
          if (v535)
          {
            v185 = 0;
            do
            {
              v186 = re::internal::GeomAttributeContainer::attributeByIndex(v534, v185);
              re::internal::accessFaceVaryingAttributeSubmesh(v186, v187);
              ++v185;
            }

            while (v184 != v185);
            v20 = v502;
            v10 = *&v502[32];
          }
        }

        if (v10 <= v11)
        {
          goto LABEL_699;
        }

        v188 = (v504 + 16 * v11);
        *v188 = v7;
        v188[1] = v3;
        v188[2] = v5;
        v188[3] = -1;
        ++v11;
      }

      while (v11 != v8);
      re::GeomMesh::operator=(&v443, &v502[8]);
      re::GeomMesh::setName(&v443, *v502);
      re::GeomMesh::freeName(v502);
      v189 = re::GeomMesh::modifyVertexPositions(&v443);
      if (i)
      {
        v7 = 0;
        v3 = v190;
        while (1)
        {
          v20 = v428;
          if (v428 <= v7)
          {
            break;
          }

          if (v7 == v190)
          {
            goto LABEL_711;
          }

          *(v189 + 16 * v7) = *(v430 + 16 * v7);
          if (++v7 == i)
          {
            goto LABEL_459;
          }
        }

LABEL_707:
        *v440 = 0;
        v548 = 0u;
        v549 = 0u;
        v546 = 0u;
        v547 = 0u;
        v545 = 0u;
        v335 = MEMORY[0x1E69E9C10];
        v336 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v536[0] = 136315906;
        *&v536[1] = "operator[]";
        LOWORD(v536[3]) = 1024;
        if (v336)
        {
          v337 = 3;
        }

        else
        {
          v337 = 2;
        }

        *(&v536[3] + 2) = 789;
        HIWORD(v536[4]) = 2048;
        *&v536[5] = v7;
        v537 = 2048;
        *v538 = v20;
        _os_log_send_and_compose_impl(v337, v440, &v545, 80, &dword_1E1C61000, v335, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v536, 38, v375, v376);
        _os_crash_msg();
        __break(1u);
LABEL_711:
        *v440 = 0;
        v548 = 0u;
        v549 = 0u;
        v546 = 0u;
        v547 = 0u;
        v545 = 0u;
        v338 = MEMORY[0x1E69E9C10];
        v339 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v536[0] = 136315906;
        *&v536[1] = "operator[]";
        LOWORD(v536[3]) = 1024;
        if (v339)
        {
          v340 = 3;
        }

        else
        {
          v340 = 2;
        }

        *(&v536[3] + 2) = 621;
        HIWORD(v536[4]) = 2048;
        *&v536[5] = v3;
        v537 = 2048;
        *v538 = v3;
        _os_log_send_and_compose_impl(v340, v440, &v545, 80, &dword_1E1C61000, v338, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v536, 38, v375, v376);
        _os_crash_msg();
        __break(1u);
LABEL_715:
        *&v545 = 0;
        v447 = 0u;
        v446 = 0u;
        v445 = 0u;
        v444 = 0u;
        v443 = 0u;
        v341 = MEMORY[0x1E69E9C10];
        v342 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v502 = 136315906;
        *&v502[4] = "operator[]";
        *&v502[12] = 1024;
        if (v342)
        {
          v343 = 3;
        }

        else
        {
          v343 = 2;
        }

        *&v502[14] = 789;
        *&v502[18] = 2048;
        *&v502[20] = v7;
        *&v502[28] = 2048;
        *&v502[30] = v11;
        _os_log_send_and_compose_impl(v343, &v545, &v443, 80, &dword_1E1C61000, v341, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v502, 38, v375, v376);
        _os_crash_msg();
        __break(1u);
LABEL_719:
        *v502 = 0;
        v447 = 0u;
        v446 = 0u;
        v445 = 0u;
        v444 = 0u;
        v443 = 0u;
        v344 = MEMORY[0x1E69E9C10];
        v345 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v431[0]) = 136315906;
        *(v431 + 4) = "operator[]";
        WORD6(v431[0]) = 1024;
        if (v345)
        {
          v346 = 3;
        }

        else
        {
          v346 = 2;
        }

        *(v431 + 14) = 789;
        WORD1(v431[1]) = 2048;
        *(&v431[1] + 4) = i;
        WORD6(v431[1]) = 2048;
        *(&v431[1] + 14) = v11;
        _os_log_send_and_compose_impl(v346, v502, &v443, 80, &dword_1E1C61000, v344, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v431, 38, v375, v376);
        _os_crash_msg();
        __break(1u);
LABEL_723:
        *&v545 = 0;
        v447 = 0u;
        v446 = 0u;
        v445 = 0u;
        v444 = 0u;
        v443 = 0u;
        v347 = MEMORY[0x1E69E9C10];
        v348 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v502 = 136315906;
        *&v502[4] = "operator[]";
        *&v502[12] = 1024;
        if (v348)
        {
          v349 = 3;
        }

        else
        {
          v349 = 2;
        }

        *&v502[14] = 789;
        *&v502[18] = 2048;
        *&v502[20] = v20;
        *&v502[28] = 2048;
        *&v502[30] = v11;
        _os_log_send_and_compose_impl(v349, &v545, &v443, 80, &dword_1E1C61000, v347, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v502, 38, v375, v376);
        _os_crash_msg();
        __break(1u);
        goto LABEL_727;
      }

LABEL_459:
      re::GeomMesh::freeName(v502);
      re::internal::GeomAttributeManager::~GeomAttributeManager(v505);
      if (*&v502[16] && v504)
      {
        (*(**&v502[16] + 40))();
      }

      i = v380;
    }

    if (*v542 && *&v544[2])
    {
      (*(**v542 + 40))();
    }

    if (v426 && v430)
    {
      (*(*v426 + 40))();
    }

    if (*v539 && *&v541[2])
    {
      (*(**v539 + 40))();
    }

    re::GeomMesh::operator=(v431, &v443);
    re::GeomMesh::~GeomMesh(&v443);
    if ((v381 & 1) == 0)
    {
      if (!v403)
      {
        goto LABEL_740;
      }

      v7 = *v405;
      if (v379 <= v7)
      {
        goto LABEL_744;
      }

      if (v387)
      {
        v191 = *(v378 + 4 * v7);
        v192 = re::GeomMesh::addAttribute(v431, v387, 2, 2);
        if (v192)
        {
          v193 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v192);
          v195 = DWORD2(v431[2]);
          if (DWORD2(v431[2]))
          {
            v7 = v194;
            v196 = v194;
            while (v196)
            {
              *v193++ = v191;
              --v196;
              if (!--v195)
              {
                goto LABEL_481;
              }
            }

            goto LABEL_735;
          }
        }
      }
    }

LABEL_481:
    if (v393[0] && v396)
    {
      (*(*v393[0] + 40))();
    }

    v20 = v434;
    v3 = v377;
    if (v397[0] && v400)
    {
      (*(*v397[0] + 40))();
    }

LABEL_487:
    if (DWORD2(v431[2]))
    {
      re::GeomMeshBuilder::appendMesh(v434, v431);
    }

    else if (v403)
    {
      v197 = v405;
      v198 = 4 * v403;
      do
      {
        v199 = *v197;
        v197 = (v197 + 4);
        LODWORD(v443) = v199;
        re::DynamicArray<int>::add(v406, &v443);
        v198 -= 4;
      }

      while (v198);
    }

    re::GeomMesh::~GeomMesh(v431);
    ++i;
    v7 = v392;
    if (i != v3)
    {
      continue;
    }

    break;
  }

LABEL_493:
  if (v407 != *(v7 + 40))
  {
    re::GeomMesh::GeomMesh(&v443, 0);
    if (v407)
    {
      re::internal::extractMeshFromFaceSubset(v7, v409, v407, 0, v431);
      re::GeomMeshBuilder::appendMesh(v434, v431);
      re::GeomMesh::~GeomMesh(v431);
    }

    re::GeomMesh::operator=(&v443, &v434[8]);
    re::GeomMesh::setName(&v443, *v434);
    re::GeomMesh::freeName(v434);
    if (DWORD2(v443) + 2 * (DWORD2(v445) - DWORD2(v443)) < (*(v7 + 8) + 2 * (*(v7 + 40) - *(v7 + 8))))
    {
      *(&v431[0] + 1) = v387;
      v200 = *(a2 + 4);
      *v431 = *a2 * 0.5;
      DWORD1(v431[0]) = v200;
      re::internal::mergePlanarRegions(&v443, v431, a3);
LABEL_505:
      re::GeomMesh::~GeomMesh(&v443);
      goto LABEL_506;
    }

LABEL_504:
    *a3 = 0;
    *(a3 + 8) = 0;
    bzero((a3 + 16), 0x2C8uLL);
    re::internal::GeomBaseMesh::GeomBaseMesh((a3 + 16));
    *(a3 + 728) = 0;
    re::GeomMesh::copy(v7, a3);
    goto LABEL_505;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  bzero((a3 + 16), 0x2C8uLL);
  re::internal::GeomBaseMesh::GeomBaseMesh((a3 + 16));
  *(a3 + 728) = 0;
  re::GeomMesh::copy(v7, a3);
LABEL_506:
  if (v402[0] && v405)
  {
    (*(*v402[0] + 40))();
  }

  if (v406[0] && v409)
  {
    (*(*v406[0] + 40))();
  }

  re::GeomMesh::freeName(v434);
  re::internal::GeomAttributeManager::~GeomAttributeManager((v20 + 56));
  if (*&v434[16] && v438)
  {
    (*(**&v434[16] + 40))();
  }

  if (v410[0] && v413)
  {
    (*(*v410[0] + 40))();
  }

  if (*&v414[1] && v415)
  {
    (*(**&v414[1] + 40))();
  }

  if (v416[0] && v419)
  {
    (*(*v416[0] + 40))();
  }

  result = v420[0];
  if (v420[0])
  {
    if (v423)
    {
      return (*(*v420[0] + 40))();
    }
  }

  return result;
}

uint64_t *re::anonymous namespace::segmentIntoPlanarRegions(unsigned int *a1, uint64_t a2, unint64_t a3)
{
  v11 = a1;
  v415 = *MEMORY[0x1E69E9840];
  v373 = 0;
  v370 = 0;
  v371 = 0;
  v369 = 0;
  v372 = 0;
  *&v402[2] = 0;
  memset(v400, 0, sizeof(v400));
  v12 = a1[6];
  re::DynamicArray<float>::resize(v400, v12);
  v360 = a2;
  if (v12)
  {
    v13 = 0;
    v14 = *&v400[16];
    v15 = *&v402[2];
    do
    {
      if (v14 == v13)
      {
        goto LABEL_293;
      }

      *(v15 + 4 * v13) = v13;
      ++v13;
    }

    while (v12 != v13);
  }

  else
  {
    v15 = *&v402[2];
    v14 = *&v400[16];
  }

  *&v406 = v11;
  v16 = 126 - 2 * __clz(v14);
  if (v14)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = *(v11 + 3);
  v14 = v18;
  v387[0] = 0;
  v387[1] = 0;
  v387[2].i32[0] = 1;
  v387[3] = 0;
  v387[4] = 0;
  if ((v18 & 0x3F) != 0)
  {
    v19 = (v18 >> 6) + 1;
  }

  else
  {
    v19 = v18 >> 6;
  }

  v387[6] = v18;
  *&v406 = 0;
  re::DynamicOverflowArray<unsigned long long,3ul>::resize(v387, v19, &v406);
  v20 = v387[1];
  if (v387[1])
  {
    v21 = v387[4];
    if (v387[2].i8[0])
    {
      v21 = &v387[3];
    }

    do
    {
      *v21++ = 0;
      v22 = v387[4];
      if (v387[2].i8[0])
      {
        v22 = &v387[3];
      }
    }

    while (v21 != &v22[*&v20]);
  }

  *&v386[2] = 0;
  memset(v384, 0, sizeof(v384));
  v23.n128_f32[0] = cosf((*a3 * 3.1416) / 180.0);
  v381 = 0;
  memset(v379, 0, sizeof(v379));
  v380 = 0;
  if (!v14)
  {
    goto LABEL_97;
  }

  v9 = v23.n128_f32[0];
  v5 = 0;
  i = 0;
  v361 = v14;
  do
  {
    v12 = *&v400[16];
    if (*&v400[16] <= v5)
    {
      goto LABEL_459;
    }

    v12 = *(*&v402[2] + 4 * v5);
    if (re::DynamicBitset<unsigned long long,64ul>::getBit(v387, v12))
    {
      goto LABEL_84;
    }

    *&v384[16] = 0;
    ++*&v384[24];
    v378 = 0;
    v375[1] = 0;
    v376 = 0;
    v375[0] = 0;
    v377 = 0;
    LODWORD(v406) = v12;
    re::DynamicArray<int>::add(v375, &v406);
    v14 = *(v11 + 60);
    if (v14 <= v12)
    {
      goto LABEL_499;
    }

    *v403 = *(*(v11 + 62) + 16 * v12);
    v14 = *(v11 + 55);
    if (v14 <= v12)
    {
LABEL_503:
      *&v388 = 0;
      v409 = 0u;
      v410 = 0u;
      v407 = 0u;
      v408 = 0u;
      v406 = 0u;
      v272 = MEMORY[0x1E69E9C10];
      v273 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v394[0].n128_u32[0] = 136315906;
      *(v394[0].n128_u64 + 4) = "operator[]";
      v394[0].n128_u16[6] = 1024;
      if (v273)
      {
        v274 = 3;
      }

      else
      {
        v274 = 2;
      }

      *(&v394[0].n128_u32[3] + 2) = 797;
      v394[1].n128_u16[1] = 2048;
      *(v394[1].n128_u64 + 4) = v12;
      v394[1].n128_u16[6] = 2048;
      *(&v394[1].n128_u64[1] + 6) = v14;
      _os_log_send_and_compose_impl(v274, &v388, &v406, 80, &dword_1E1C61000, v272, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v394, 38, v356, v357);
      _os_crash_msg();
      __break(1u);
LABEL_507:
      *&v388 = 0;
      v409 = 0u;
      v410 = 0u;
      v407 = 0u;
      v408 = 0u;
      v406 = 0u;
      v275 = MEMORY[0x1E69E9C10];
      v276 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v394[0].n128_u32[0] = 136315906;
      *(v394[0].n128_u64 + 4) = "operator[]";
      v394[0].n128_u16[6] = 1024;
      if (v276)
      {
        v277 = 3;
      }

      else
      {
        v277 = 2;
      }

      *(&v394[0].n128_u32[3] + 2) = 797;
      v394[1].n128_u16[1] = 2048;
      *(v394[1].n128_u64 + 4) = v12;
      v394[1].n128_u16[6] = 2048;
      *(&v394[1].n128_u64[1] + 6) = v14;
      _os_log_send_and_compose_impl(v277, &v388, &v406, 80, &dword_1E1C61000, v275, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v394, 38, v356, v357);
      _os_crash_msg();
      __break(1u);
      goto LABEL_511;
    }

    v26 = (*(v11 + 57) + 16 * v12);
    v28 = *v26;
    v27 = v26[1];
    *v389 = v28;
    *&v389[8] = v27;
    v14 = *(v11 + 45);
    if (v14 <= v12)
    {
      goto LABEL_507;
    }

    v29 = *(*(v11 + 47) + 4 * v12);
    v14 = *(v11 + 50);
    if (v14)
    {
      if (v14 <= v12)
      {
        goto LABEL_523;
      }

      v8 = *(*(v11 + 52) + 4 * v12);
      *(&v413 + 1) = 0;
      v406 = 0u;
      v407 = 0u;
      v408 = 0u;
      v409 = 0u;
      v410 = 0u;
      v411 = 0u;
      v412 = 0u;
    }

    else
    {
      *(&v413 + 1) = 0;
      v406 = 0u;
      v407 = 0u;
      v408 = 0u;
      v409 = 0u;
      v410 = 0u;
      v411 = 0u;
      v412 = 0u;
      v8 = 0xFFFFFFFFLL;
    }

    LODWORD(v413) = v8;
    while (v376)
    {
      v374 = re::internal::Stack<unsigned int>::pop(v375);
      if ((re::DynamicBitset<unsigned long long,64ul>::getBit(v387, v374) & 1) == 0)
      {
        v3 = *(v11 + 55);
        if (v3 <= v12)
        {
          *v389 = 0;
          v395 = 0u;
          v396 = 0u;
          memset(v394, 0, sizeof(v394));
          v149 = MEMORY[0x1E69E9C10];
          v150 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v403 = 136315906;
          *&v403[4] = "operator[]";
          *&v403[12] = 1024;
          if (v150)
          {
            v151 = 3;
          }

          else
          {
            v151 = 2;
          }

          *&v403[14] = 797;
          *&v403[18] = 2048;
          *&v403[20] = v12;
          *&v403[28] = 2048;
          *&v403[30] = v3;
          _os_log_send_and_compose_impl(v151, v389, v394, 80, &dword_1E1C61000, v149, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v403, 38, v356, v357);
          _os_crash_msg();
          __break(1u);
LABEL_261:
          *v389 = 0;
          v395 = 0u;
          v396 = 0u;
          memset(v394, 0, sizeof(v394));
          v152 = MEMORY[0x1E69E9C10];
          v153 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v403 = 136315906;
          *&v403[4] = "operator[]";
          *&v403[12] = 1024;
          if (v153)
          {
            v154 = 3;
          }

          else
          {
            v154 = 2;
          }

          *&v403[14] = 797;
          *&v403[18] = 2048;
          *&v403[20] = v14;
          *&v403[28] = 2048;
          *&v403[30] = v3;
          _os_log_send_and_compose_impl(v154, v389, v394, 80, &dword_1E1C61000, v152, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v403, 38, v356, v357);
          _os_crash_msg();
          __break(1u);
LABEL_265:
          *v389 = 0;
          v395 = 0u;
          v396 = 0u;
          memset(v394, 0, sizeof(v394));
          v155 = MEMORY[0x1E69E9C10];
          v156 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v403 = 136315906;
          *&v403[4] = "operator[]";
          *&v403[12] = 1024;
          if (v156)
          {
            v157 = 3;
          }

          else
          {
            v157 = 2;
          }

          *&v403[14] = 797;
          *&v403[18] = 2048;
          *&v403[20] = v14;
          *&v403[28] = 2048;
          *&v403[30] = v3;
          _os_log_send_and_compose_impl(v157, v389, v394, 80, &dword_1E1C61000, v155, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v403, 38, v356, v357);
          _os_crash_msg();
          __break(1u);
LABEL_269:
          *&v388 = 0;
          v395 = 0u;
          v396 = 0u;
          memset(v394, 0, sizeof(v394));
          v158 = MEMORY[0x1E69E9C10];
          v159 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v403 = 136315906;
          *&v403[4] = "operator[]";
          *&v403[12] = 1024;
          if (v159)
          {
            v160 = 3;
          }

          else
          {
            v160 = 2;
          }

          *&v403[14] = 797;
          *&v403[18] = 2048;
          *&v403[20] = v14;
          *&v403[28] = 2048;
          *&v403[30] = v3;
          _os_log_send_and_compose_impl(v160, &v388, v394, 80, &dword_1E1C61000, v158, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v403, 38, v356, v357);
          _os_crash_msg();
          __break(1u);
          goto LABEL_273;
        }

        v14 = v374;
        if (v3 <= v374)
        {
          goto LABEL_261;
        }

        v33 = *(v11 + 57);
        v34 = *(v33 + 16 * v12);
        v35 = (v33 + 16 * v374);
        v37 = *v35;
        v36 = v35[1];
        v382[0] = v37;
        v382[1] = v36;
        if ((v34.f32[0] == v37.f32[0] || (*v32.f64 = fabsf(v34.f32[0]), *v31.i32 = ((*v32.f64 + fabsf(v37.f32[0])) + 1.0) * 0.00001, vabds_f32(v37.f32[0], v34.f32[0]) < *v31.i32)) && ((v31.i32[0] = v34.i32[1], v34.f32[1] == v37.f32[1]) || (*v32.f64 = ((fabsf(v34.f32[1]) + fabsf(v37.f32[1])) + 1.0) * 0.00001, vabds_f32(v37.f32[1], v34.f32[1]) < *v32.f64)) && ((v30.i32[0] = v36.i32[0], v31.i32[0] = v34.i32[2], v34.f32[2] == v36.f32[0]) || (*v32.f64 = ((fabsf(v34.f32[2]) + fabsf(v36.f32[0])) + 1.0) * 0.00001, v30.f32[0] = vabds_f32(v36.f32[0], v34.f32[2]), v30.f32[0] < *v32.f64)) || (*v30.f32 = v37, *&v30.u32[2] = v36, v38 = vmulq_f32(v34, v30), v30.f32[0] = vaddv_f32(*v38.f32), (v38.f32[2] + v30.f32[0]) >= v9))
        {
          v3 = *(v11 + 60);
          if (v3 <= v374)
          {
            goto LABEL_265;
          }

          v54 = (*(v11 + 62) + 16 * v374);
          v56 = *v54;
          v55 = v54[1];
          *v389 = v56;
          *&v389[8] = v55;
          v3 = *(v11 + 45);
          if (v3 <= v374)
          {
            goto LABEL_269;
          }

          v52 = *(*(v11 + 47) + 4 * v374);
          v53 = v389;
LABEL_57:
LABEL_58:
          re::DynamicBitset<unsigned long long,64ul>::setBit(v387, v14);
          re::DynamicArray<int>::add(v384, &v374);
          FaceIncidentFaces = re::GeomConnectivityManifold::fetchFaceIncidentFaces(v11, v374, v389);
          if (FaceIncidentFaces)
          {
            v3 = FaceIncidentFaces;
            v7 = v389;
            do
            {
              v58 = *v7;
              v7 += 4;
              v14 = v58;
              if ((re::DynamicBitset<unsigned long long,64ul>::getBit(v387, v58) & 1) == 0)
              {
                v4 = *(v11 + 50);
                if (v4)
                {
                  if (v4 <= v14)
                  {
                    goto LABEL_184;
                  }

                  v59 = *(*(v11 + 52) + 4 * v14);
                }

                else
                {
                  v59 = -1;
                }

                if (v59 == v8)
                {
                  v394[0].n128_u32[0] = v14;
                  re::DynamicArray<int>::add(v375, v394);
                }
              }

              --v3;
            }

            while (v3);
          }
        }

        else
        {
          v39 = 0uLL;
          memset(v403, 0, 64);
          v3 = *(v11 + 3);
          if (v3 <= v374)
          {
            goto LABEL_455;
          }

          v40 = 0;
          v388 = *(*(v11 + 5) + 16 * v374);
          v41 = 3;
          if (HIDWORD(v388) != -1)
          {
            v41 = 4;
          }

          v3 = *(v11 + 65);
          v42 = *(v11 + 67);
          v43 = v403;
          do
          {
            v4 = *&v389[4 * v40 - 16];
            if (v3 <= v4)
            {
              goto LABEL_176;
            }

            *v43++ = *(v42 + 16 * v4);
            ++v40;
          }

          while (v41 != v40);
          v44 = 0;
          v45 = &v403[8];
          v30.i32[0] = *(a3 + 4);
          v46 = 1;
          v47 = v41;
          while (1)
          {
            v48.i64[0] = *(v45 - 1);
            v48.i32[2] = *v45;
            v48.i32[3] = 1.0;
            v31 = vmulq_f32(v412, v48);
            v32 = vextq_s8(v31, v31, 8uLL);
            *v31.i8 = vadd_f32(*v31.i8, *&v32.f64[0]);
            *v31.i32 = fabsf(vaddv_f32(*v31.i8));
            if (*v31.i32 > v30.f32[0])
            {
              break;
            }

            v44 = v46 >= v41;
            v45 += 4;
            ++v46;
            if (!--v47)
            {
              v3 = *(v11 + 60);
              if (v3 > v14)
              {
                v49 = (*(v11 + 62) + 16 * v14);
                v51 = *v49;
                v50 = v49[1];
                *&v388 = v51;
                *(&v388 + 1) = v50;
                v3 = *(v11 + 45);
                if (v3 > v14)
                {
                  v52 = *(*(v11 + 47) + 4 * v14);
                  v53 = &v388;
                  goto LABEL_57;
                }

LABEL_515:
                v383 = 0;
                v395 = 0u;
                v396 = 0u;
                memset(v394, 0, sizeof(v394));
                v281 = MEMORY[0x1E69E9C10];
                v282 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v389 = 136315906;
                *&v389[4] = "operator[]";
                *&v389[12] = 1024;
                if (v282)
                {
                  v283 = 3;
                }

                else
                {
                  v283 = 2;
                }

                *&v389[14] = 797;
                v390 = 2048;
                v391 = v14;
                v392 = 2048;
                v393 = v3;
                _os_log_send_and_compose_impl(v283, &v383, v394, 80, &dword_1E1C61000, v281, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v389, 38, v356, v357);
                _os_crash_msg();
                __break(1u);
LABEL_519:
                v387[0] = 0;
                v409 = 0u;
                v410 = 0u;
                v407 = 0u;
                v408 = 0u;
                v406 = 0u;
                v284 = MEMORY[0x1E69E9C10];
                v285 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v403 = 136315906;
                *&v403[4] = "operator[]";
                *&v403[12] = 1024;
                if (v285)
                {
                  v286 = 3;
                }

                else
                {
                  v286 = 2;
                }

                *&v403[14] = 789;
                *&v403[18] = 2048;
                *&v403[20] = v4;
                *&v403[28] = 2048;
                *&v403[30] = v3;
                _os_log_send_and_compose_impl(v286, v387, &v406, 80, &dword_1E1C61000, v284, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v403, 38, v356, v357);
                _os_crash_msg();
                __break(1u);
LABEL_523:
                *&v388 = 0;
                v409 = 0u;
                v410 = 0u;
                v407 = 0u;
                v408 = 0u;
                v406 = 0u;
                v287 = MEMORY[0x1E69E9C10];
                v288 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                v394[0].n128_u32[0] = 136315906;
                *(v394[0].n128_u64 + 4) = "operator[]";
                v394[0].n128_u16[6] = 1024;
                if (v288)
                {
                  v289 = 3;
                }

                else
                {
                  v289 = 2;
                }

                *(&v394[0].n128_u32[3] + 2) = 789;
                v394[1].n128_u16[1] = 2048;
                *(v394[1].n128_u64 + 4) = v12;
                v394[1].n128_u16[6] = 2048;
                *(&v394[1].n128_u64[1] + 6) = v14;
                _os_log_send_and_compose_impl(v289, &v388, &v406, 80, &dword_1E1C61000, v287, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v394, 38, v356, v357);
                _os_crash_msg();
                __break(1u);
                goto LABEL_527;
              }

LABEL_511:
              *&v388 = 0;
              v395 = 0u;
              v396 = 0u;
              memset(v394, 0, sizeof(v394));
              v278 = MEMORY[0x1E69E9C10];
              v279 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v389 = 136315906;
              *&v389[4] = "operator[]";
              *&v389[12] = 1024;
              if (v279)
              {
                v280 = 3;
              }

              else
              {
                v280 = 2;
              }

              *&v389[14] = 797;
              v390 = 2048;
              v391 = v14;
              v392 = 2048;
              v393 = v3;
              _os_log_send_and_compose_impl(v280, &v388, v394, 80, &dword_1E1C61000, v278, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v389, 38, v356, v357);
              _os_crash_msg();
              __break(1u);
              goto LABEL_515;
            }
          }

          if (v44)
          {
            goto LABEL_58;
          }
        }
      }
    }

    v394[0] = v412;
    re::DynamicArray<re::Vector4<float>>::add(v379, v394);
    if (*&v384[16])
    {
      v61 = *&v386[2];
      v12 = *(v11 + 40);
      v62 = 4 * *&v384[16];
      v63 = *(v11 + 42);
      while (1)
      {
        v14 = *v61;
        if (v12 <= v14)
        {
          break;
        }

        *(v63 + 4 * v14) = i;
        ++v61;
        v62 -= 4;
        if (!v62)
        {
          goto LABEL_75;
        }
      }

LABEL_188:
      *v389 = 0;
      v395 = 0u;
      v396 = 0u;
      memset(v394, 0, sizeof(v394));
      v123 = MEMORY[0x1E69E9C10];
      v124 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v403 = 136315906;
      *&v403[4] = "operator[]";
      *&v403[12] = 1024;
      if (v124)
      {
        v125 = 3;
      }

      else
      {
        v125 = 2;
      }

      *&v403[14] = 789;
      *&v403[18] = 2048;
      *&v403[20] = v14;
      *&v403[28] = 2048;
      *&v403[30] = v12;
      _os_log_send_and_compose_impl(v125, v389, v394, 80, &dword_1E1C61000, v123, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v403, 38, v356, v357);
      _os_crash_msg();
      __break(1u);
      goto LABEL_192;
    }

LABEL_75:
    v64 = v371 + 1;
    v65 = v371 < v370 || v370 >= v64;
    v14 = v361;
    if (!v65)
    {
      if (v369)
      {
        v68 = 8;
        if (v370)
        {
          v68 = 2 * v370;
        }

        if (v68 <= v64)
        {
          v69 = v371 + 1;
        }

        else
        {
          v69 = v68;
        }
      }

      else
      {
        ++v372;
      }
    }

    v66 = v371;
    v67 = v373 + (v371 << 7);
    *(v67 + 64) = v410;
    *(v67 + 80) = v411;
    *(v67 + 96) = v412;
    *(v67 + 112) = v413;
    *v67 = v406;
    *(v67 + 16) = v407;
    *(v67 + 32) = v408;
    v23 = v409;
    *(v67 + 48) = v409;
    v371 = v66 + 1;
    ++v372;
    if (v375[0] && v378)
    {
      (*(*v375[0] + 40))();
    }

    i = (i + 1);
LABEL_84:
    ++v5;
  }

  while (v5 != v14);
  if (v379[0] && v381)
  {
    (*(*v379[0] + 40))();
  }

LABEL_97:
  if (*v384 && *&v386[2])
  {
    (*(**v384 + 40))(v23);
  }

  if (*v387 && (v387[2].i8[0] & 1) == 0)
  {
    (*(**v387 + 40))(v23);
  }

  if (*v400 && *&v402[2])
  {
    (*(**v400 + 40))(v23);
  }

  v70 = 0;
  v14 = v371;
  v12 = v373;
  v362 = v371 << 7;
  i = v387;
  v9 = 1.0;
  v7 = v400;
  do
  {
    v365 = v70;
    v8 = v11[6];
    v394[2].n128_u64[0] = 0;
    memset(v394, 0, 28);
    re::DynamicArray<float>::operator=(v394, v11 + 38);
    if (!v8)
    {
      v98 = 1;
      v79 = 0uLL;
      goto LABEL_143;
    }

    v4 = 0;
    v5 = 0;
    do
    {
      v74 = re::GeomConnectivityManifold::fetchFaceIncidentFaces(v11, v4, v387);
      if (!v74)
      {
        v79 = 0uLL;
        goto LABEL_136;
      }

      v75 = 0;
      v76 = 0;
      v77 = *(v11 + 40);
      v78 = *(v11 + 42);
      v79 = 0uLL;
      do
      {
        v3 = v387[0].u32[v75];
        if (v77 <= v3)
        {
          *v384 = 0;
          v409 = 0u;
          v410 = 0u;
          v407 = 0u;
          v408 = 0u;
          v406 = 0u;
          v110 = MEMORY[0x1E69E9C10];
          v111 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v403 = 136315906;
          *&v403[4] = "operator[]";
          *&v403[12] = 1024;
          if (v111)
          {
            v112 = 3;
          }

          else
          {
            v112 = 2;
          }

          *&v403[14] = 789;
          *&v403[18] = 2048;
          *&v403[20] = v3;
          *&v403[28] = 2048;
          *&v403[30] = v77;
          _os_log_send_and_compose_impl(v112, v384, &v406, 80, &dword_1E1C61000, v110, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v403, 38, v356, v357);
          _os_crash_msg();
          __break(1u);
LABEL_172:
          *v384 = 0;
          v409 = 0u;
          v410 = 0u;
          v407 = 0u;
          v408 = 0u;
          v406 = 0u;
          v113 = MEMORY[0x1E69E9C10];
          v114 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v403 = 136315906;
          *&v403[4] = "operator[]";
          *&v403[12] = 1024;
          if (v114)
          {
            v115 = 3;
          }

          else
          {
            v115 = 2;
          }

          *&v403[14] = 789;
          *&v403[18] = 2048;
          *&v403[20] = v4;
          *&v403[28] = 2048;
          *&v403[30] = v77;
          _os_log_send_and_compose_impl(v115, v384, &v406, 80, &dword_1E1C61000, v113, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v403, 38, v356, v357);
          _os_crash_msg();
          __break(1u);
LABEL_176:
          v383 = 0;
          v395 = 0u;
          v396 = 0u;
          memset(v394, 0, sizeof(v394));
          v92 = MEMORY[0x1E69E9C10];
          v116 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v389 = 136315906;
          *&v389[4] = "operator[]";
          *&v389[12] = 1024;
          if (v116)
          {
            v117 = 3;
          }

          else
          {
            v117 = 2;
          }

          *&v389[14] = 789;
          v390 = 2048;
          v391 = v4;
          v392 = 2048;
          v393 = v3;
          _os_log_send_and_compose_impl(v117, &v383, v394, 80, &dword_1E1C61000, v92, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v389, 38, v356, v357);
          _os_crash_msg();
          __break(1u);
LABEL_180:
          v387[0] = 0;
          v409 = 0u;
          v410 = 0u;
          v407 = 0u;
          v408 = 0u;
          v406 = 0u;
          v11 = MEMORY[0x1E69E9C10];
          v118 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v403 = 136315906;
          *&v403[4] = "operator[]";
          *&v403[12] = 1024;
          if (v118)
          {
            v119 = 3;
          }

          else
          {
            v119 = 2;
          }

          *&v403[14] = 789;
          *&v403[18] = 2048;
          *&v403[20] = v92;
          *&v403[28] = 2048;
          *&v403[30] = v14;
          _os_log_send_and_compose_impl(v119, v387, &v406, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v403, 38, v356, v357);
          _os_crash_msg();
          __break(1u);
LABEL_184:
          *&v388 = 0;
          v395 = 0u;
          v396 = 0u;
          memset(v394, 0, sizeof(v394));
          v120 = MEMORY[0x1E69E9C10];
          v121 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v403 = 136315906;
          *&v403[4] = "operator[]";
          *&v403[12] = 1024;
          if (v121)
          {
            v122 = 3;
          }

          else
          {
            v122 = 2;
          }

          *&v403[14] = 789;
          *&v403[18] = 2048;
          *&v403[20] = v14;
          *&v403[28] = 2048;
          *&v403[30] = v4;
          _os_log_send_and_compose_impl(v122, &v388, v394, 80, &dword_1E1C61000, v120, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v403, 38, v356, v357);
          _os_crash_msg();
          __break(1u);
          goto LABEL_188;
        }

        if (v77 <= v4)
        {
          goto LABEL_172;
        }

        v80 = *(v78 + 4 * v3);
        v3 = *(v78 + 4 * v4);
        if (v80 != v3)
        {
          if (v76)
          {
            v81 = v76;
            v82 = v400;
            v83 = v76;
            while (1)
            {
              v84 = *v82++;
              if (v80 == v84)
              {
                break;
              }

              if (!--v83)
              {
                goto LABEL_120;
              }
            }
          }

          else
          {
            v81 = 0;
LABEL_120:
            ++v76;
            *&v400[4 * v81] = v80;
          }
        }

        ++v75;
      }

      while (v75 != v74);
      if (!v76)
      {
        goto LABEL_136;
      }

      if (v14 <= v3)
      {
        goto LABEL_463;
      }

      v85 = *(v11 + 55);
      if (v85 <= v4)
      {
LABEL_467:
        v387[0] = 0;
        v409 = 0u;
        v410 = 0u;
        v407 = 0u;
        v408 = 0u;
        v406 = 0u;
        v245 = MEMORY[0x1E69E9C10];
        v246 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v403 = 136315906;
        *&v403[4] = "operator[]";
        *&v403[12] = 1024;
        if (v246)
        {
          v247 = 3;
        }

        else
        {
          v247 = 2;
        }

        *&v403[14] = 797;
        *&v403[18] = 2048;
        *&v403[20] = v4;
        *&v403[28] = 2048;
        *&v403[30] = v85;
        _os_log_send_and_compose_impl(v247, v387, &v406, 80, &dword_1E1C61000, v245, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v403, 38, v356, v357);
        _os_crash_msg();
        __break(1u);
LABEL_471:
        *v400 = 0;
        v395 = 0u;
        v396 = 0u;
        memset(v394, 0, sizeof(v394));
        v248 = MEMORY[0x1E69E9C10];
        v249 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v403 = 136315906;
        *&v403[4] = "operator[]";
        *&v403[12] = 1024;
        if (v249)
        {
          v250 = 3;
        }

        else
        {
          v250 = 2;
        }

        *&v403[14] = 789;
        *&v403[18] = 2048;
        *&v403[20] = v3;
        *&v403[28] = 2048;
        *&v403[30] = v5;
        _os_log_send_and_compose_impl(v250, v400, v394, 80, &dword_1E1C61000, v248, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v403, 38, v356, v357);
        _os_crash_msg();
        __break(1u);
LABEL_475:
        *v400 = 0;
        v395 = 0u;
        v396 = 0u;
        memset(v394, 0, sizeof(v394));
        v251 = MEMORY[0x1E69E9C10];
        v252 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v403 = 136315906;
        *&v403[4] = "operator[]";
        *&v403[12] = 1024;
        if (v252)
        {
          v253 = 3;
        }

        else
        {
          v253 = 2;
        }

        *&v403[14] = 789;
        *&v403[18] = 2048;
        *&v403[20] = i;
        *&v403[28] = 2048;
        *&v403[30] = v5;
        _os_log_send_and_compose_impl(v253, v400, v394, 80, &dword_1E1C61000, v251, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v403, 38, v356, v357);
        _os_crash_msg();
        __break(1u);
LABEL_479:
        *v384 = 0;
        v395 = 0u;
        v396 = 0u;
        memset(v394, 0, sizeof(v394));
        v254 = MEMORY[0x1E69E9C10];
        v255 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v387[0].i32[0] = 136315906;
        *(v387 + 4) = "operator[]";
        v387[1].i16[2] = 1024;
        if (v255)
        {
          v256 = 3;
        }

        else
        {
          v256 = 2;
        }

        *(&v387[1].i32[1] + 2) = 789;
        v387[2].i16[1] = 2048;
        *(&v387[2] + 4) = v3;
        v387[3].i16[2] = 2048;
        *(&v387[3] + 6) = v14;
        _os_log_send_and_compose_impl(v256, v384, v394, 80, &dword_1E1C61000, v254, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v387, 38, v356, v357);
        _os_crash_msg();
        __break(1u);
LABEL_483:
        *v400 = 0;
        v395 = 0u;
        v396 = 0u;
        memset(v394, 0, sizeof(v394));
        v257 = MEMORY[0x1E69E9C10];
        v258 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v387[0].i32[0] = 136315906;
        *(v387 + 4) = "operator[]";
        v387[1].i16[2] = 1024;
        if (v258)
        {
          v259 = 3;
        }

        else
        {
          v259 = 2;
        }

        *(&v387[1].i32[1] + 2) = 789;
        v387[2].i16[1] = 2048;
        *(&v387[2] + 4) = v3;
        v387[3].i16[2] = 2048;
        *(&v387[3] + 6) = v8;
        _os_log_send_and_compose_impl(v259, v400, v394, 80, &dword_1E1C61000, v257, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v387, 38, v356, v357);
        _os_crash_msg();
        __break(1u);
LABEL_487:
        *v400 = 0;
        v395 = 0u;
        v396 = 0u;
        memset(v394, 0, sizeof(v394));
        v260 = MEMORY[0x1E69E9C10];
        v261 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v387[0].i32[0] = 136315906;
        *(v387 + 4) = "operator[]";
        v387[1].i16[2] = 1024;
        if (v261)
        {
          v262 = 3;
        }

        else
        {
          v262 = 2;
        }

        *(&v387[1].i32[1] + 2) = 789;
        v387[2].i16[1] = 2048;
        *(&v387[2] + 4) = v3;
        v387[3].i16[2] = 2048;
        *(&v387[3] + 6) = v8;
        _os_log_send_and_compose_impl(v262, v400, v394, 80, &dword_1E1C61000, v260, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v387, 38, v356, v357);
        _os_crash_msg();
        __break(1u);
LABEL_491:
        *v400 = 0;
        v395 = 0u;
        v396 = 0u;
        memset(v394, 0, sizeof(v394));
        v263 = MEMORY[0x1E69E9C10];
        v264 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v387[0].i32[0] = 136315906;
        *(v387 + 4) = "operator[]";
        v387[1].i16[2] = 1024;
        if (v264)
        {
          v265 = 3;
        }

        else
        {
          v265 = 2;
        }

        *(&v387[1].i32[1] + 2) = 789;
        v387[2].i16[1] = 2048;
        *(&v387[2] + 4) = v4;
        v387[3].i16[2] = 2048;
        *(&v387[3] + 6) = v8;
        _os_log_send_and_compose_impl(v265, v400, v394, 80, &dword_1E1C61000, v263, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v387, 38, v356, v357);
        _os_crash_msg();
        __break(1u);
LABEL_495:
        *v400 = 0;
        v395 = 0u;
        v396 = 0u;
        memset(v394, 0, sizeof(v394));
        v266 = MEMORY[0x1E69E9C10];
        v267 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v387[0].i32[0] = 136315906;
        *(v387 + 4) = "operator[]";
        v387[1].i16[2] = 1024;
        if (v267)
        {
          v268 = 3;
        }

        else
        {
          v268 = 2;
        }

        *(&v387[1].i32[1] + 2) = 789;
        v387[2].i16[1] = 2048;
        *(&v387[2] + 4) = v4;
        v387[3].i16[2] = 2048;
        *(&v387[3] + 6) = v8;
        _os_log_send_and_compose_impl(v268, v400, v394, 80, &dword_1E1C61000, v266, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v387, 38, v356, v357);
        _os_crash_msg();
        __break(1u);
LABEL_499:
        *v389 = 0;
        v409 = 0u;
        v410 = 0u;
        v407 = 0u;
        v408 = 0u;
        v406 = 0u;
        v269 = MEMORY[0x1E69E9C10];
        v270 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v394[0].n128_u32[0] = 136315906;
        *(v394[0].n128_u64 + 4) = "operator[]";
        v394[0].n128_u16[6] = 1024;
        if (v270)
        {
          v271 = 3;
        }

        else
        {
          v271 = 2;
        }

        *(&v394[0].n128_u32[3] + 2) = 797;
        v394[1].n128_u16[1] = 2048;
        *(v394[1].n128_u64 + 4) = v12;
        v394[1].n128_u16[6] = 2048;
        *(&v394[1].n128_u64[1] + 6) = v14;
        _os_log_send_and_compose_impl(v271, v389, &v406, 80, &dword_1E1C61000, v269, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v394, 38, v356, v357);
        _os_crash_msg();
        __break(1u);
        goto LABEL_503;
      }

      v86 = (v12 + (v3 << 7));
      v87 = v86[7].i32[0];
      v88 = *(*(v11 + 57) + 16 * v4);
      v71 = vmulq_f32(v86[6], v88);
      v71.f32[0] = 1.0 - fminf(v71.f32[2] + vaddv_f32(*v71.f32), 1.0);
      v72.f64[0] = *(a3 + 8);
      v89 = v76;
      v90 = v400;
      v91 = v3;
      do
      {
        v93 = *v90++;
        v92 = v93;
        if (v14 <= v93)
        {
          goto LABEL_180;
        }

        v94 = (v12 + (v92 << 7));
        *&v73.f64[0] = v94[7].i64[1];
        if (v73.f64[0] >= v72.f64[0] && v94[7].i32[0] == v87)
        {
          v73 = vmulq_f32(v88, v94[6]);
          *v73.f64 = 1.0 - fminf(*&v73.f64[1] + vaddv_f32(*&v73.f64[0]), 1.0);
          if (*v73.f64 < v71.f32[0])
          {
            v91 = v92;
            v71.f32[0] = *v73.f64;
          }
        }

        --v89;
      }

      while (v89);
      if (v91 != v3)
      {
        v3 = v394[1].n128_u64[0];
        if (v394[1].n128_u64[0] <= v4)
        {
          goto LABEL_519;
        }

        *(v394[2].n128_u64[0] + 4 * v4) = v91;
        v5 = (v5 + 1);
      }

LABEL_136:
      ++v4;
    }

    while (v4 != v8);
    v95 = 0;
    v3 = *(v11 + 40);
    v4 = v394[1].n128_u64[0];
    v96 = v394[2].n128_u64[0];
    v97 = *(v11 + 42);
    do
    {
      if (v4 == v95)
      {
        goto LABEL_439;
      }

      if (v3 == v95)
      {
LABEL_443:
        v387[0] = 0;
        v409 = 0u;
        v410 = 0u;
        v407 = 0u;
        v408 = 0u;
        v406 = 0u;
        v228 = MEMORY[0x1E69E9C10];
        v229 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v403 = 136315906;
        *&v403[4] = "operator[]";
        *&v403[12] = 1024;
        if (v229)
        {
          v230 = 3;
        }

        else
        {
          v230 = 2;
        }

        *&v403[14] = 789;
        *&v403[18] = 2048;
        *&v403[20] = v3;
        *&v403[28] = 2048;
        *&v403[30] = v3;
        _os_log_send_and_compose_impl(v230, v387, &v406, 80, &dword_1E1C61000, v228, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v403, 38, v356, v357);
        _os_crash_msg();
        __break(1u);
        goto LABEL_447;
      }

      *(v97 + 4 * v95) = *(v96 + 4 * v95);
      ++v95;
    }

    while (v8 != v95);
    v98 = v5 == 0;
LABEL_143:
    v8 = v365;
    if (v394[0].n128_u64[0] && v394[2].n128_u64[0])
    {
      (*(*v394[0].n128_u64[0] + 40))();
      v79 = 0uLL;
    }

    v99 = v365 == 9 || v98;
    if (v99)
    {
      break;
    }

    v100 = v362;
    v101 = v12;
    if (v14)
    {
      do
      {
        *(v101 + 120) = 0;
        *v101 = v79;
        *(v101 + 16) = v79;
        *(v101 + 32) = v79;
        *(v101 + 48) = v79;
        *(v101 + 64) = v79;
        *(v101 + 80) = v79;
        *(v101 + 96) = v79;
        v101 += 128;
        v100 -= 128;
      }

      while (v100);
    }

    v102 = v11[6];
    if (v11[6])
    {
      v4 = 0;
      while (1)
      {
        v3 = *(v11 + 40);
        if (v3 <= v4)
        {
          break;
        }

        v3 = *(*(v11 + 42) + 4 * v4);
        if (v14 <= v3)
        {
          goto LABEL_277;
        }

        v5 = *(v11 + 60);
        if (v5 <= v4)
        {
          goto LABEL_281;
        }

        *v403 = *(*(v11 + 62) + 16 * v4);
        v5 = *(v11 + 55);
        if (v5 <= v4)
        {
          goto LABEL_285;
        }

        v103 = (*(v11 + 57) + 16 * v4);
        v105 = *v103;
        v104 = v103[1];
        v387[0] = v105;
        v387[1] = v104;
        v5 = *(v11 + 45);
        if (v5 <= v4)
        {
          goto LABEL_289;
        }

        if (v102 == v4)
        {
          goto LABEL_160;
        }
      }

LABEL_273:
      *v403 = 0;
      v409 = 0u;
      v410 = 0u;
      v407 = 0u;
      v408 = 0u;
      v406 = 0u;
      v161 = MEMORY[0x1E69E9C10];
      v162 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v394[0].n128_u32[0] = 136315906;
      *(v394[0].n128_u64 + 4) = "operator[]";
      v394[0].n128_u16[6] = 1024;
      if (v162)
      {
        v163 = 3;
      }

      else
      {
        v163 = 2;
      }

      *(&v394[0].n128_u32[3] + 2) = 797;
      v394[1].n128_u16[1] = 2048;
      *(v394[1].n128_u64 + 4) = v4;
      v394[1].n128_u16[6] = 2048;
      *(&v394[1].n128_u64[1] + 6) = v3;
      _os_log_send_and_compose_impl(v163, v403, &v406, 80, &dword_1E1C61000, v161, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v394, 38, v356, v357);
      _os_crash_msg();
      __break(1u);
LABEL_277:
      *v403 = 0;
      v409 = 0u;
      v410 = 0u;
      v407 = 0u;
      v408 = 0u;
      v406 = 0u;
      v164 = MEMORY[0x1E69E9C10];
      v165 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v394[0].n128_u32[0] = 136315906;
      *(v394[0].n128_u64 + 4) = "operator[]";
      v394[0].n128_u16[6] = 1024;
      if (v165)
      {
        v166 = 3;
      }

      else
      {
        v166 = 2;
      }

      *(&v394[0].n128_u32[3] + 2) = 789;
      v394[1].n128_u16[1] = 2048;
      *(v394[1].n128_u64 + 4) = v3;
      v394[1].n128_u16[6] = 2048;
      *(&v394[1].n128_u64[1] + 6) = v14;
      _os_log_send_and_compose_impl(v166, v403, &v406, 80, &dword_1E1C61000, v164, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v394, 38, v356, v357);
      _os_crash_msg();
      __break(1u);
LABEL_281:
      *v403 = 0;
      v409 = 0u;
      v410 = 0u;
      v407 = 0u;
      v408 = 0u;
      v406 = 0u;
      v167 = MEMORY[0x1E69E9C10];
      v168 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v394[0].n128_u32[0] = 136315906;
      *(v394[0].n128_u64 + 4) = "operator[]";
      v394[0].n128_u16[6] = 1024;
      if (v168)
      {
        v169 = 3;
      }

      else
      {
        v169 = 2;
      }

      *(&v394[0].n128_u32[3] + 2) = 797;
      v394[1].n128_u16[1] = 2048;
      *(v394[1].n128_u64 + 4) = v4;
      v394[1].n128_u16[6] = 2048;
      *(&v394[1].n128_u64[1] + 6) = v5;
      _os_log_send_and_compose_impl(v169, v403, &v406, 80, &dword_1E1C61000, v167, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v394, 38, v356, v357);
      _os_crash_msg();
      __break(1u);
LABEL_285:
      v387[0] = 0;
      v409 = 0u;
      v410 = 0u;
      v407 = 0u;
      v408 = 0u;
      v406 = 0u;
      v170 = MEMORY[0x1E69E9C10];
      v171 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v394[0].n128_u32[0] = 136315906;
      *(v394[0].n128_u64 + 4) = "operator[]";
      v394[0].n128_u16[6] = 1024;
      if (v171)
      {
        v172 = 3;
      }

      else
      {
        v172 = 2;
      }

      *(&v394[0].n128_u32[3] + 2) = 797;
      v394[1].n128_u16[1] = 2048;
      *(v394[1].n128_u64 + 4) = v4;
      v394[1].n128_u16[6] = 2048;
      *(&v394[1].n128_u64[1] + 6) = v5;
      _os_log_send_and_compose_impl(v172, v387, &v406, 80, &dword_1E1C61000, v170, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v394, 38, v356, v357);
      _os_crash_msg();
      __break(1u);
LABEL_289:
      *v400 = 0;
      v409 = 0u;
      v410 = 0u;
      v407 = 0u;
      v408 = 0u;
      v406 = 0u;
      v173 = MEMORY[0x1E69E9C10];
      v174 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v394[0].n128_u32[0] = 136315906;
      *(v394[0].n128_u64 + 4) = "operator[]";
      v394[0].n128_u16[6] = 1024;
      if (v174)
      {
        v175 = 3;
      }

      else
      {
        v175 = 2;
      }

      *(&v394[0].n128_u32[3] + 2) = 797;
      v394[1].n128_u16[1] = 2048;
      *(v394[1].n128_u64 + 4) = v4;
      v394[1].n128_u16[6] = 2048;
      *(&v394[1].n128_u64[1] + 6) = v5;
      _os_log_send_and_compose_impl(v175, v400, &v406, 80, &dword_1E1C61000, v173, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v394, 38, v356, v357);
      _os_crash_msg();
      __break(1u);
LABEL_293:
      *v403 = 0;
      v409 = 0u;
      v410 = 0u;
      v407 = 0u;
      v408 = 0u;
      v406 = 0u;
      v11 = v384;
      v176 = MEMORY[0x1E69E9C10];
      v177 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v394[0].n128_u32[0] = 136315906;
      *(v394[0].n128_u64 + 4) = "operator[]";
      v394[0].n128_u16[6] = 1024;
      if (v177)
      {
        v178 = 3;
      }

      else
      {
        v178 = 2;
      }

      *(&v394[0].n128_u32[3] + 2) = 789;
      v394[1].n128_u16[1] = 2048;
      *(v394[1].n128_u64 + 4) = v14;
      v394[1].n128_u16[6] = 2048;
      *(&v394[1].n128_u64[1] + 6) = v14;
      _os_log_send_and_compose_impl(v178, v403, &v406, 80, &dword_1E1C61000, v176, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v394, 38, v356, v357);
      _os_crash_msg();
      __break(1u);
LABEL_297:
      v364 = v146 + 48;
      re::DynamicArray<unsigned int>::resize(v146 + 6, 0, v403);
      goto LABEL_298;
    }

LABEL_160:
    v70 = v365 + 1;
  }

  while (v365 < 9);
  v9 = *(a3 + 8);
  v406 = 0uLL;
  DWORD2(v407) = 0;
  *&v407 = 0;
  v408 = 0u;
  v409 = 0u;
  LODWORD(v410) = 0;
  v411 = 0uLL;
  *(&v410 + 1) = 0;
  v412.i32[0] = 1;
  v412.i64[1] = 0;
  *&v413 = 0;
  v4 = v14;
  v414 = 0;
  re::DynamicArray<float>::resize(&v406, v14);
  v106 = v409.n128_u64[1];
  if (v409.n128_u64[1] < v14)
  {
    if (v409.n128_u64[0] < v14)
    {
      re::DynamicArray<re::DynamicBitset<unsigned long long,128ul>>::setCapacity(&v408 + 1, v14);
      v106 = v409.n128_u64[1];
    }

    v107 = v14 - v106;
    if (v14 > v106)
    {
      v108 = 56 * v106;
      do
      {
        v109 = *(&v410 + 1) + v108;
        *v109 = 0;
        *(v109 + 8) = 0;
        *(v109 + 16) = 1;
        *(v109 + 24) = 0;
        *(v109 + 32) = 0;
        *(v109 + 48) = 0;
        v108 += 56;
        --v107;
      }

      while (v107);
    }

LABEL_195:
    v409.n128_u64[1] = v4;
    LODWORD(v410) = v410 + 1;
    goto LABEL_196;
  }

LABEL_192:
  if (v106 > v4)
  {
    v126 = 56 * v4;
    v127 = v4;
    do
    {
      re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(*(&v410 + 1) + v126);
      ++v127;
      v126 += 56;
    }

    while (v127 < v409.n128_u64[1]);
    goto LABEL_195;
  }

LABEL_196:
  v359 = &v412.i64[1];
  v128 = v414;
  if ((v14 & 0x3F) != 0)
  {
    v5 = (v4 >> 6) + 1;
  }

  else
  {
    v5 = v4 >> 6;
  }

  v414 = v4;
  v394[0].n128_u64[0] = 0;
  re::DynamicOverflowArray<unsigned long long,3ul>::resize(&v411, v5, v394);
  a3 = v4;
  if (v14 && v128 > v4)
  {
    v129 = 63;
    v130 = v414 & 0x3F;
    if ((v414 & 0x3F) != 0 && v130 != 63)
    {
      v129 = ~(-1 << v130);
    }

    v131 = &v412.i64[1];
    if ((v412.i8[0] & 1) == 0)
    {
      v131 = v413;
    }

    v131[*(&v411 + 1) - 1] &= v129;
    goto LABEL_208;
  }

  if (v14)
  {
LABEL_208:
    v3 = 0;
    v7 = -1;
    v8 = v4;
    while (1)
    {
      v4 = v409.n128_u64[1];
      if (v409.n128_u64[1] <= v3)
      {
        goto LABEL_531;
      }

      i = *(&v410 + 1) + 56 * v3;
      v132 = *(i + 48);
      *(i + 48) = a3;
      v394[0].n128_u64[0] = 0;
      re::DynamicOverflowArray<unsigned long long,3ul>::resize(i, v5, v394);
      if (v132 > a3)
      {
        v133 = *(i + 48) & 0x3FLL;
        if (v133)
        {
          v145 = v133 == 63;
          v134 = -1 << v133;
          if (v145)
          {
            v135 = 63;
          }

          else
          {
            v135 = ~v134;
          }
        }

        else
        {
          v135 = 63;
        }

        if (*(i + 16))
        {
          v136 = i + 24;
        }

        else
        {
          v136 = *(i + 32);
        }

        *(v136 + 8 * *(i + 8) - 8) &= v135;
      }

      v4 = v409.n128_u64[1];
      if (v409.n128_u64[1] <= v3)
      {
        break;
      }

      v137 = *(&v410 + 1) + 56 * v3;
      v138 = *(v137 + 16);
      if (v138)
      {
        v139 = (v137 + 24);
      }

      else
      {
        v139 = *(v137 + 32);
      }

      v140 = *(v137 + 8);
      while (1)
      {
        v141 = v137 + 24;
        if ((v138 & 1) == 0)
        {
          v141 = *(v137 + 32);
        }

        if (v139 == (v141 + 8 * v140))
        {
          break;
        }

        *v139++ = 0;
        v138 = *(v137 + 16);
      }

      re::DynamicBitset<unsigned long long,64ul>::setBit(&v411, v3++);
      if (v3 == a3)
      {
        goto LABEL_230;
      }
    }

LABEL_535:
    v387[0] = 0;
    v395 = 0u;
    v396 = 0u;
    memset(v394, 0, sizeof(v394));
    v296 = MEMORY[0x1E69E9C10];
    v297 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v403 = 136315906;
    *&v403[4] = "operator[]";
    *&v403[12] = 1024;
    if (v297)
    {
      v298 = 3;
    }

    else
    {
      v298 = 2;
    }

    *&v403[14] = 789;
    *&v403[18] = 2048;
    *&v403[20] = v3;
    *&v403[28] = 2048;
    *&v403[30] = v4;
    _os_log_send_and_compose_impl(v298, v387, v394, 80, &dword_1E1C61000, v296, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v403, 38, v356, v357);
    _os_crash_msg();
    __break(1u);
LABEL_539:
    *v400 = 0;
    v395 = 0u;
    v396 = 0u;
    memset(v394, 0, sizeof(v394));
    v299 = MEMORY[0x1E69E9C10];
    v300 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v387[0].i32[0] = 136315906;
    *(v387 + 4) = "operator[]";
    v387[1].i16[2] = 1024;
    if (v300)
    {
      v301 = 3;
    }

    else
    {
      v301 = 2;
    }

    *(&v387[1].i32[1] + 2) = 789;
    v387[2].i16[1] = 2048;
    *(&v387[2] + 4) = v14;
    v387[3].i16[2] = 2048;
    *(&v387[3] + 6) = v14;
    _os_log_send_and_compose_impl(v301, v400, v394, 80, &dword_1E1C61000, v299, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v387, 38, v356, v357);
    _os_crash_msg();
    __break(1u);
LABEL_543:
    *v400 = 0;
    v395 = 0u;
    v396 = 0u;
    memset(v394, 0, sizeof(v394));
    v302 = MEMORY[0x1E69E9C10];
    v303 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v403 = 136315906;
    *&v403[4] = "operator[]";
    *&v403[12] = 1024;
    if (v303)
    {
      v304 = 3;
    }

    else
    {
      v304 = 2;
    }

    *&v403[14] = 797;
    *&v403[18] = 2048;
    *&v403[20] = v4;
    *&v403[28] = 2048;
    *&v403[30] = v3;
    _os_log_send_and_compose_impl(v304, v400, v394, 80, &dword_1E1C61000, v302, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v403, 38, v356, v357);
    _os_crash_msg();
    __break(1u);
LABEL_547:
    *v400 = 0;
    v395 = 0u;
    v396 = 0u;
    memset(v394, 0, sizeof(v394));
    v305 = MEMORY[0x1E69E9C10];
    v306 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v403 = 136315906;
    *&v403[4] = "operator[]";
    *&v403[12] = 1024;
    if (v306)
    {
      v307 = 3;
    }

    else
    {
      v307 = 2;
    }

    *&v403[14] = 789;
    *&v403[18] = 2048;
    *&v403[20] = v3;
    *&v403[28] = 2048;
    *&v403[30] = v14;
    _os_log_send_and_compose_impl(v307, v400, v394, 80, &dword_1E1C61000, v305, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v403, 38, v356, v357);
    _os_crash_msg();
    __break(1u);
LABEL_551:
    *v400 = 0;
    v395 = 0u;
    v396 = 0u;
    memset(v394, 0, sizeof(v394));
    v308 = MEMORY[0x1E69E9C10];
    v309 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v387[0].i32[0] = 136315906;
    *(v387 + 4) = "operator[]";
    v387[1].i16[2] = 1024;
    if (v309)
    {
      v310 = 3;
    }

    else
    {
      v310 = 2;
    }

    *(&v387[1].i32[1] + 2) = 789;
    v387[2].i16[1] = 2048;
    *(&v387[2] + 4) = v5;
    v387[3].i16[2] = 2048;
    *(&v387[3] + 6) = v3;
    _os_log_send_and_compose_impl(v310, v400, v394, 80, &dword_1E1C61000, v308, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v387, 38, v356, v357);
    _os_crash_msg();
    __break(1u);
LABEL_555:
    v379[0] = 0;
    v395 = 0u;
    v396 = 0u;
    memset(v394, 0, sizeof(v394));
    v311 = MEMORY[0x1E69E9C10];
    v312 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v384 = 136315906;
    *&v384[4] = "operator[]";
    *&v384[12] = 1024;
    if (v312)
    {
      v313 = 3;
    }

    else
    {
      v313 = 2;
    }

    *&v384[14] = 789;
    *&v384[18] = 2048;
    *&v384[20] = v5;
    v385 = 2048;
    *v386 = v3;
    _os_log_send_and_compose_impl(v313, v379, v394, 80, &dword_1E1C61000, v311, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v384, 38, v356, v357);
    _os_crash_msg();
    __break(1u);
LABEL_559:
    v379[0] = 0;
    v395 = 0u;
    v396 = 0u;
    memset(v394, 0, sizeof(v394));
    v314 = MEMORY[0x1E69E9C10];
    v315 = v193;
    v316 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v384 = 136315906;
    *&v384[4] = "operator[]";
    *&v384[12] = 1024;
    if (v316)
    {
      v317 = 3;
    }

    else
    {
      v317 = 2;
    }

    *&v384[14] = 789;
    *&v384[18] = 2048;
    *&v384[20] = v5;
    v385 = 2048;
    *v386 = v315;
    _os_log_send_and_compose_impl(v317, v379, v394, 80, &dword_1E1C61000, v314, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v384, 38, v356, v357);
    _os_crash_msg();
    __break(1u);
LABEL_563:
    v379[0] = 0;
    v395 = 0u;
    v396 = 0u;
    memset(v394, 0, sizeof(v394));
    v318 = MEMORY[0x1E69E9C10];
    v319 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v384 = 136315906;
    *&v384[4] = "operator[]";
    *&v384[12] = 1024;
    if (v319)
    {
      v320 = 3;
    }

    else
    {
      v320 = 2;
    }

    *&v384[14] = 858;
    *&v384[18] = 2048;
    *&v384[20] = a3;
    v385 = 2048;
    *v386 = v7;
    _os_log_send_and_compose_impl(v320, v379, v394, 80, &dword_1E1C61000, v318, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v384, 38, v356, v357);
    _os_crash_msg();
    __break(1u);
LABEL_567:
    v379[0] = 0;
    v395 = 0u;
    v396 = 0u;
    memset(v394, 0, sizeof(v394));
    v321 = MEMORY[0x1E69E9C10];
    v322 = v197;
    v323 = v193;
    v324 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v384 = 136315906;
    *&v384[4] = "operator[]";
    *&v384[12] = 1024;
    if (v324)
    {
      v325 = 3;
    }

    else
    {
      v325 = 2;
    }

    *&v384[14] = 789;
    *&v384[18] = 2048;
    *&v384[20] = v322;
    v385 = 2048;
    *v386 = v323;
    _os_log_send_and_compose_impl(v325, v379, v394, 80, &dword_1E1C61000, v321, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v384, 38, v356, v357);
    _os_crash_msg();
    __break(1u);
LABEL_571:
    *v400 = 0;
    v395 = 0u;
    v396 = 0u;
    memset(v394, 0, sizeof(v394));
    v326 = MEMORY[0x1E69E9C10];
    v327 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v387[0].i32[0] = 136315906;
    *(v387 + 4) = "operator[]";
    v387[1].i16[2] = 1024;
    if (v327)
    {
      v328 = 3;
    }

    else
    {
      v328 = 2;
    }

    *(&v387[1].i32[1] + 2) = 789;
    v387[2].i16[1] = 2048;
    *(&v387[2] + 4) = i;
    v387[3].i16[2] = 2048;
    *(&v387[3] + 6) = v3;
    _os_log_send_and_compose_impl(v328, v400, v394, 80, &dword_1E1C61000, v326, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v387, 38, v356, v357);
    _os_crash_msg();
    __break(1u);
LABEL_575:
    *v400 = 0;
    v395 = 0u;
    v396 = 0u;
    memset(v394, 0, sizeof(v394));
    v329 = MEMORY[0x1E69E9C10];
    v330 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v387[0].i32[0] = 136315906;
    *(v387 + 4) = "operator[]";
    v387[1].i16[2] = 1024;
    if (v330)
    {
      v331 = 3;
    }

    else
    {
      v331 = 2;
    }

    *(&v387[1].i32[1] + 2) = 789;
    v387[2].i16[1] = 2048;
    *(&v387[2] + 4) = 0;
    v387[3].i16[2] = 2048;
    *(&v387[3] + 6) = 0;
    _os_log_send_and_compose_impl(v331, v400, v394, 80, &dword_1E1C61000, v329, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v387, 38, v356, v357);
    _os_crash_msg();
    __break(1u);
LABEL_579:
    *v400 = 0;
    v395 = 0u;
    v396 = 0u;
    memset(v394, 0, sizeof(v394));
    v332 = MEMORY[0x1E69E9C10];
    v333 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v387[0].i32[0] = 136315906;
    *(v387 + 4) = "operator[]";
    v387[1].i16[2] = 1024;
    if (v333)
    {
      v334 = 3;
    }

    else
    {
      v334 = 2;
    }

    *(&v387[1].i32[1] + 2) = 789;
    v387[2].i16[1] = 2048;
    *(&v387[2] + 4) = v3;
    v387[3].i16[2] = 2048;
    *(&v387[3] + 6) = v4;
    _os_log_send_and_compose_impl(v334, v400, v394, 80, &dword_1E1C61000, v332, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v387, 38, v356, v357);
    _os_crash_msg();
    __break(1u);
LABEL_583:
    *v384 = 0;
    v395 = 0u;
    v396 = 0u;
    memset(v394, 0, sizeof(v394));
    v335 = MEMORY[0x1E69E9C10];
    v336 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v387[0].i32[0] = 136315906;
    *(v387 + 4) = "operator[]";
    v387[1].i16[2] = 1024;
    if (v336)
    {
      v337 = 3;
    }

    else
    {
      v337 = 2;
    }

    *(&v387[1].i32[1] + 2) = 789;
    v387[2].i16[1] = 2048;
    *(&v387[2] + 4) = v5;
    v387[3].i16[2] = 2048;
    *(&v387[3] + 6) = v14;
    _os_log_send_and_compose_impl(v337, v384, v394, 80, &dword_1E1C61000, v335, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v387, 38, v356, v357);
    _os_crash_msg();
    __break(1u);
LABEL_587:
    *v384 = 0;
    v409 = 0u;
    v410 = 0u;
    v407 = 0u;
    v408 = 0u;
    v406 = 0u;
    v338 = MEMORY[0x1E69E9C10];
    v339 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v400 = 136315906;
    *&v400[4] = "operator[]";
    *&v400[12] = 1024;
    if (v339)
    {
      v340 = 3;
    }

    else
    {
      v340 = 2;
    }

    *&v400[14] = 789;
    *&v400[18] = 2048;
    *&v400[20] = v14;
    v401 = 2048;
    *v402 = v4;
    _os_log_send_and_compose_impl(v340, v384, &v406, 80, &dword_1E1C61000, v338, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v400, 38, v356, v357);
    _os_crash_msg();
    __break(1u);
LABEL_591:
    *v384 = 0;
    v395 = 0u;
    v396 = 0u;
    memset(v394, 0, sizeof(v394));
    v341 = MEMORY[0x1E69E9C10];
    v342 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v387[0].i32[0] = 136315906;
    *(v387 + 4) = "operator[]";
    v387[1].i16[2] = 1024;
    if (v342)
    {
      v343 = 3;
    }

    else
    {
      v343 = 2;
    }

    *(&v387[1].i32[1] + 2) = 789;
    v387[2].i16[1] = 2048;
    *(&v387[2] + 4) = v3;
    v387[3].i16[2] = 2048;
    *(&v387[3] + 6) = v4;
    _os_log_send_and_compose_impl(v343, v384, v394, 80, &dword_1E1C61000, v341, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v387, 38, v356, v357);
    _os_crash_msg();
    __break(1u);
LABEL_595:
    *v384 = 0;
    v395 = 0u;
    v396 = 0u;
    memset(v394, 0, sizeof(v394));
    v344 = MEMORY[0x1E69E9C10];
    v345 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v387[0].i32[0] = 136315906;
    *(v387 + 4) = "operator[]";
    v387[1].i16[2] = 1024;
    if (v345)
    {
      v346 = 3;
    }

    else
    {
      v346 = 2;
    }

    *(&v387[1].i32[1] + 2) = 789;
    v387[2].i16[1] = 2048;
    *(&v387[2] + 4) = v3;
    v387[3].i16[2] = 2048;
    *(&v387[3] + 6) = v14;
    _os_log_send_and_compose_impl(v346, v384, v394, 80, &dword_1E1C61000, v344, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v387, 38, v356, v357);
    _os_crash_msg();
    __break(1u);
LABEL_599:
    *v384 = 0;
    v395 = 0u;
    v396 = 0u;
    memset(v394, 0, sizeof(v394));
    v347 = MEMORY[0x1E69E9C10];
    v348 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v387[0].i32[0] = 136315906;
    *(v387 + 4) = "operator[]";
    v387[1].i16[2] = 1024;
    if (v348)
    {
      v349 = 3;
    }

    else
    {
      v349 = 2;
    }

    *(&v387[1].i32[1] + 2) = 789;
    v387[2].i16[1] = 2048;
    *(&v387[2] + 4) = v4;
    v387[3].i16[2] = 2048;
    *(&v387[3] + 6) = v14;
    _os_log_send_and_compose_impl(v349, v384, v394, 80, &dword_1E1C61000, v347, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v387, 38, v356, v357);
    _os_crash_msg();
    __break(1u);
LABEL_603:
    v379[0] = 0;
    v395 = 0u;
    v396 = 0u;
    memset(v394, 0, sizeof(v394));
    v350 = MEMORY[0x1E69E9C10];
    v351 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v384 = 136315906;
    *&v384[4] = "operator[]";
    *&v384[12] = 1024;
    if (v351)
    {
      v352 = 3;
    }

    else
    {
      v352 = 2;
    }

    *&v384[14] = 789;
    *&v384[18] = 2048;
    *&v384[20] = v5;
    v385 = 2048;
    *v386 = v3;
    _os_log_send_and_compose_impl(v352, v379, v394, 80, &dword_1E1C61000, v350, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v384, 38, v356, v357);
    _os_crash_msg();
    __break(1u);
LABEL_607:
    v379[0] = 0;
    v395 = 0u;
    v396 = 0u;
    memset(v394, 0, sizeof(v394));
    v353 = MEMORY[0x1E69E9C10];
    v354 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v384 = 136315906;
    *&v384[4] = "operator[]";
    *&v384[12] = 1024;
    if (v354)
    {
      v355 = 3;
    }

    else
    {
      v355 = 2;
    }

    *&v384[14] = 858;
    *&v384[18] = 2048;
    *&v384[20] = v3;
    v385 = 2048;
    *v386 = v4;
    _os_log_send_and_compose_impl(v355, v379, v394, 80, &dword_1E1C61000, v353, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v384, 38, v356, v357);
    _os_crash_msg();
    __break(1u);
  }

LABEL_230:
  v363 = v11[6];
  if (v11[6])
  {
    v4 = 0;
    v7 = 56;
    while (1)
    {
      v142 = re::GeomConnectivityManifold::fetchFaceIncidentFaces(v11, v4, v387);
      v3 = *(v11 + 40);
      if (v3 <= v4)
      {
        goto LABEL_543;
      }

      v3 = *(*(v11 + 42) + 4 * v4);
      if (v14 <= v3)
      {
        goto LABEL_547;
      }

      v366 = v4;
      if (v142)
      {
        break;
      }

LABEL_247:
      v4 = v366 + 1;
      if (v366 + 1 == v363)
      {
        *v403 = -1;
        memset(&v403[8], 0, 28);
        v405 = 0;
        memset(&v403[40], 0, 32);
        v404 = 0;
        v5 = a3;
        goto LABEL_250;
      }
    }

    v8 = *(v12 + (v3 << 7) + 112);
    v143 = v142;
    v4 = v387;
    while (1)
    {
      v144 = *v4;
      v4 += 4;
      i = v144;
      v5 = *(v11 + 40);
      if (v5 <= v144)
      {
        break;
      }

      i = *(*(v11 + 42) + 4 * i);
      if (v14 <= i)
      {
        goto LABEL_451;
      }

      v145 = i != v3 && *(v12 + (i << 7) + 112) == v8;
      if (v145)
      {
        v5 = v409.n128_u64[1];
        if (v409.n128_u64[1] <= v3)
        {
          goto LABEL_471;
        }

        re::DynamicBitset<unsigned long long,64ul>::setBit(*(&v410 + 1) + 56 * v3, i);
        v5 = v409.n128_u64[1];
        if (v409.n128_u64[1] <= i)
        {
          goto LABEL_475;
        }

        re::DynamicBitset<unsigned long long,64ul>::setBit(*(&v410 + 1) + 56 * i, v3);
      }

      if (!--v143)
      {
        goto LABEL_247;
      }
    }

LABEL_447:
    *v400 = 0;
    v395 = 0u;
    v396 = 0u;
    memset(v394, 0, sizeof(v394));
    v231 = MEMORY[0x1E69E9C10];
    v232 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v403 = 136315906;
    *&v403[4] = "operator[]";
    *&v403[12] = 1024;
    if (v232)
    {
      v233 = 3;
    }

    else
    {
      v233 = 2;
    }

    *&v403[14] = 797;
    *&v403[18] = 2048;
    *&v403[20] = i;
    *&v403[28] = 2048;
    *&v403[30] = v5;
    _os_log_send_and_compose_impl(v233, v400, v394, 80, &dword_1E1C61000, v231, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v403, 38, v356, v357);
    _os_crash_msg();
    __break(1u);
LABEL_451:
    *v400 = 0;
    v395 = 0u;
    v396 = 0u;
    memset(v394, 0, sizeof(v394));
    v234 = MEMORY[0x1E69E9C10];
    v235 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v403 = 136315906;
    *&v403[4] = "operator[]";
    *&v403[12] = 1024;
    if (v235)
    {
      v236 = 3;
    }

    else
    {
      v236 = 2;
    }

    *&v403[14] = 789;
    *&v403[18] = 2048;
    *&v403[20] = i;
    *&v403[28] = 2048;
    *&v403[30] = v14;
    _os_log_send_and_compose_impl(v236, v400, v394, 80, &dword_1E1C61000, v234, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v403, 38, v356, v357);
    _os_crash_msg();
    __break(1u);
LABEL_455:
    *&v388 = 0;
    v395 = v39;
    v396 = v39;
    v394[1] = v39;
    v394[2] = v39;
    v394[0] = v39;
    v237 = MEMORY[0x1E69E9C10];
    v238 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v389 = 136315906;
    *&v389[4] = "operator[]";
    *&v389[12] = 1024;
    if (v238)
    {
      v239 = 3;
    }

    else
    {
      v239 = 2;
    }

    *&v389[14] = 797;
    v390 = 2048;
    v391 = v14;
    v392 = 2048;
    v393 = v3;
    _os_log_send_and_compose_impl(v239, &v388, v394, 80, &dword_1E1C61000, v237, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v389, 38, v356, v357);
    _os_crash_msg();
    __break(1u);
LABEL_459:
    *v403 = 0;
    v409 = 0u;
    v410 = 0u;
    v407 = 0u;
    v408 = 0u;
    v406 = 0u;
    v240 = MEMORY[0x1E69E9C10];
    v241 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v394[0].n128_u32[0] = 136315906;
    *(v394[0].n128_u64 + 4) = "operator[]";
    v394[0].n128_u16[6] = 1024;
    if (v241)
    {
      v242 = 3;
    }

    else
    {
      v242 = 2;
    }

    *(&v394[0].n128_u32[3] + 2) = 789;
    v394[1].n128_u16[1] = 2048;
    *(v394[1].n128_u64 + 4) = v5;
    v394[1].n128_u16[6] = 2048;
    *(&v394[1].n128_u64[1] + 6) = v12;
    _os_log_send_and_compose_impl(v242, v403, &v406, 80, &dword_1E1C61000, v240, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v394, 38, v356, v357);
    _os_crash_msg();
    __break(1u);
LABEL_463:
    v387[0] = 0;
    v409 = 0u;
    v410 = 0u;
    v407 = 0u;
    v408 = 0u;
    v406 = 0u;
    v85 = MEMORY[0x1E69E9C10];
    v243 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v403 = 136315906;
    *&v403[4] = "operator[]";
    *&v403[12] = 1024;
    if (v243)
    {
      v244 = 3;
    }

    else
    {
      v244 = 2;
    }

    *&v403[14] = 789;
    *&v403[18] = 2048;
    *&v403[20] = v3;
    *&v403[28] = 2048;
    *&v403[30] = v14;
    _os_log_send_and_compose_impl(v244, v387, &v406, 80, &dword_1E1C61000, v85, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v403, 38, v356, v357);
    _os_crash_msg();
    __break(1u);
    goto LABEL_467;
  }

  *v403 = -1;
  v146 = v403;
  memset(&v403[8], 0, 28);
  v405 = 0;
  memset(&v403[40], 0, 32);
  v404 = 0;
  v5 = a3;
  if (!v14)
  {
    goto LABEL_297;
  }

LABEL_250:
  re::DynamicArray<re::MeshAssetLoader::addProceduralVertexAttributes(re::MeshAssetData &)::MeshModelPartWithOpenSubDiv>::setCapacity(&v403[8], v14);
  v4 = &v403[48];
  re::DynamicArray<unsigned int>::resize(&v403[48], v14, v403);
  v364 = &v403[48];
  if (v5)
  {
    v147 = 0;
    v3 = v12 + 120;
    while (v14 != v147)
    {
      v148 = *v3;
      if (v9 > v148)
      {
        v394[0].n128_u64[0] = __PAIR64__(LODWORD(v148), v147);
        re::internal::PriorityQueue::push(v403, v394);
      }

      ++v147;
      v3 += 128;
      if (v5 == v147)
      {
        goto LABEL_298;
      }
    }

    goto LABEL_539;
  }

LABEL_298:
  v3 = *&v403[24];
  if (*&v403[24])
  {
    v179 = v9;
    v7 = 56;
    while (1)
    {
      i = **&v403[40];
      v5 = **&v403[40];
      if (v3 == 1)
      {
        *&v403[24] = 0;
        ++*&v403[32];
        v3 = *&v403[64];
        if (*&v403[64] <= v5)
        {
          goto LABEL_551;
        }

        goto LABEL_325;
      }

      v180 = **&v403[40];
      i = v3 - 1;
      if (v3 <= i)
      {
        goto LABEL_571;
      }

      **&v403[40] = *(*&v403[40] + 8 * i);
      v8 = *&v403[24];
      if (!*&v403[24])
      {
        goto LABEL_575;
      }

      v4 = *&v403[64];
      v3 = **&v403[40];
      if (*&v403[64] <= v3)
      {
        goto LABEL_579;
      }

      *(v405 + 4 * v3) = 0;
      if (v8 < i)
      {
        break;
      }

      if (v8 > i)
      {
        goto LABEL_310;
      }

LABEL_311:
      v181 = 0;
      for (i = 0; ; v181 = i)
      {
        v3 = (2 * v181) | 1u;
        if (v3 < v8)
        {
          if (v8 <= v3)
          {
            goto LABEL_483;
          }

          v4 = v181;
          if (v8 <= v181)
          {
            goto LABEL_491;
          }

          i = v181;
          if (*(*&v403[40] + 8 * v3 + 4) < *(*&v403[40] + 8 * v181 + 4))
          {
            i = (2 * v181) | 1u;
          }
        }

        v3 = (2 * v181 + 2);
        if (v3 < v8)
        {
          if (v8 <= v3)
          {
            goto LABEL_487;
          }

          v4 = i;
          if (v8 <= i)
          {
            goto LABEL_495;
          }

          if (*(*&v403[40] + 8 * v3 + 4) < *(*&v403[40] + 8 * i + 4))
          {
            i = (2 * v181 + 2);
          }
        }

        if (i == v181)
        {
          break;
        }

        re::internal::PriorityQueue::swap(v403, v181, i);
        v8 = *&v403[24];
      }

      v3 = *&v403[64];
      i = v180;
      if (*&v403[64] <= v5)
      {
        goto LABEL_551;
      }

LABEL_325:
      *(v405 + 4 * v5) = *v403;
      if (re::DynamicBitset<unsigned long long,64ul>::getBit(&v411, v5))
      {
        *&v402[2] = 0;
        memset(v400, 0, sizeof(v400));
        re::internal::Graph<unsigned int>::nodeNeighbors(&v406, i, v400);
        if (v14 <= v5)
        {
          goto LABEL_583;
        }

        if (*&v400[16])
        {
          v182 = *&v402[2];
          v183 = (v12 + (v5 << 7));
          *&v184 = v183[5].f64[0];
          *v185.f32 = vcvt_f32_f64(v183[4]);
          v185.i64[1] = __PAIR64__(1.0, v184);
          v186 = 4 * *&v400[16];
          v187 = INFINITY;
          LODWORD(v188) = i;
          do
          {
            v3 = *v182;
            if (v14 <= v3)
            {
              goto LABEL_479;
            }

            v190 = vmulq_f32(v185, *(v12 + (v3 << 7) + 96));
            v189 = vextq_s8(v190, v190, 8uLL);
            *v190.i8 = vadd_f32(*v190.i8, *&v189.f64[0]);
            *v190.i32 = fabsf(vaddv_f32(*v190.i8));
            if (*v190.i32 >= v187)
            {
              v188 = v188;
            }

            else
            {
              v188 = v3;
            }

            if (*v190.i32 < v187)
            {
              v187 = *v190.i32;
            }

            ++v182;
            v186 -= 4;
          }

          while (v186);
          v191 = i;
          v8 = v188;
          if (v188 != i)
          {
            do
            {
              v5 = v8;
              v8 = v191;
              v191 = v5;
            }

            while (v8 > v5);
            if (v8 != v5)
            {
              v387[4] = 0;
              memset(v387, 0, 28);
              re::internal::Graph<unsigned int>::nodeNeighbors(&v406, v5, v387);
              if (v387[2])
              {
                v4 = v387[4];
                v192 = v8;
                v367 = ~(1 << v5);
                v357 = v5;
                v358 = i;
                a3 = v5 >> 6;
                i = 4 * *&v387[2];
                do
                {
                  v5 = *v4;
                  if (v5 != v8)
                  {
                    v3 = v409.n128_u64[1];
                    if (v409.n128_u64[1] <= v5)
                    {
                      goto LABEL_555;
                    }

                    v3 = v192;
                    re::DynamicBitset<unsigned long long,64ul>::setBit(*(&v410 + 1) + 56 * v5, v192);
                    v193 = v409.n128_u64[1];
                    if (v409.n128_u64[1] <= v5)
                    {
                      goto LABEL_559;
                    }

                    v194 = *(&v410 + 1);
                    v195 = *(&v410 + 1) + 56 * v5;
                    v7 = *(v195 + 8);
                    if (v7 <= a3)
                    {
                      goto LABEL_563;
                    }

                    if (*(v195 + 16))
                    {
                      v196 = v195 + 24;
                    }

                    else
                    {
                      v196 = *(v195 + 32);
                    }

                    v7 = 56;
                    v197 = v3;
                    *(v196 + 8 * a3) &= v367;
                    if (v193 <= v3)
                    {
                      goto LABEL_567;
                    }

                    re::DynamicBitset<unsigned long long,64ul>::setBit(v194 + 56 * v3, v5);
                    v192 = v3;
                  }

                  v4 += 4;
                  i -= 4;
                }

                while (i);
                v5 = v357;
                i = v358;
              }

              else
              {
                v5 = v5;
              }

              v3 = v409.n128_u64[1];
              if (v409.n128_u64[1] <= v5)
              {
                goto LABEL_603;
              }

              v198 = (*(&v410 + 1) + 56 * v5);
              *(v198 + 6) = 0;
              v394[0].n128_u64[0] = 0;
              re::DynamicOverflowArray<unsigned long long,3ul>::resize(v198, 0, v394);
              v3 = v5 >> 6;
              v4 = *(&v411 + 1);
              if (*(&v411 + 1) <= v5 >> 6)
              {
                goto LABEL_607;
              }

              v199 = v359;
              if ((v412.i8[0] & 1) == 0)
              {
                v199 = v413;
              }

              v199[v3] &= ~(1 << v5);
              if (*v387 && *&v387[4])
              {
                (*(**v387 + 40))();
              }
            }

            v3 = v8;
            v4 = v407;
            if (v407 <= v8)
            {
              goto LABEL_591;
            }

            *(v408 + 4 * v8) = 1;
            if (v8 == i)
            {
              v3 = i;
            }

            else
            {
              v3 = v188;
            }

            if (v8 == i)
            {
              v4 = v188;
            }

            else
            {
              v4 = i;
            }

            if (v14 <= v3)
            {
              goto LABEL_595;
            }

            if (v14 <= v4)
            {
              goto LABEL_599;
            }

            v200 = v12 + (v3 << 7);
            *(&v399 + 1) = 0;
            memset(v394, 0, sizeof(v394));
            v395 = 0u;
            v396 = 0u;
            v397 = 0u;
            v398 = 0u;
            v201 = *(v200 + 64);
            *&v201.f64[0] = vcvt_f32_f64(v201);
            v202 = *(v200 + 80);
            *&v202 = v202;
            LODWORD(v201.f64[1]) = LODWORD(v202);
            v5 = v12 + (v4 << 7);
            *v387[0].f32 = v201;
            *v384 = *(v200 + 96);
            *v201.f64 = *(v200 + 120);
            v203 = *(v5 + 64);
            *&v203.f64[0] = vcvt_f32_f64(v203);
            v204 = *(v5 + 80);
            *&v204 = v204;
            LODWORD(v203.f64[1]) = LODWORD(v204);
            *v387[0].f32 = v203;
            *v384 = *(v5 + 96);
            *v203.f64 = *(v5 + 120);
            LODWORD(v399) = *(v200 + 112);
            *(v200 + 64) = v396;
            *(v200 + 80) = v397;
            *(v200 + 96) = v398;
            *v200 = v394[0];
            *(v200 + 16) = v394[1];
            *(v200 + 32) = v394[2];
            *(v200 + 48) = v395;
            *(v200 + 112) = v399;
            *(v5 + 120) = 0;
            *v5 = 0u;
            *(v5 + 16) = 0u;
            *(v5 + 32) = 0u;
            *(v5 + 48) = 0u;
            *(v5 + 64) = 0u;
            *(v5 + 80) = 0u;
            *(v5 + 96) = 0u;
            v207 = *(v11 + 40);
            if (v207)
            {
              v208 = *(v11 + 42);
              do
              {
                if (*v208 == v4)
                {
                  *v208 = v3;
                }

                ++v208;
                --v207;
              }

              while (v207);
            }

            v209 = *(v200 + 120);
            if (v209 < v179)
            {
              *&v210 = v209;
              v394[0].n128_u64[0] = __PAIR64__(v210, v3);
              re::internal::PriorityQueue::push(v403, v394);
            }
          }
        }

        if (*v400 && *&v402[2])
        {
          (*(**v400 + 40))();
        }
      }

      v3 = *&v403[24];
      if (!*&v403[24])
      {
        goto LABEL_380;
      }
    }

    if (*&v403[16] < i)
    {
      re::DynamicArray<re::MeshAssetLoader::addProceduralVertexAttributes(re::MeshAssetData &)::MeshModelPartWithOpenSubDiv>::setCapacity(&v403[8], i);
    }

LABEL_310:
    *&v403[24] = i;
    ++*&v403[32];
    v8 = i;
    goto LABEL_311;
  }

LABEL_380:
  if (*&v403[48])
  {
    if (v405)
    {
      (*(**&v403[48] + 40))();
    }

    v405 = 0;
    v364[1] = 0;
    v364[2] = 0;
    *v364 = 0;
    ++v404;
  }

  if (*&v403[8] && *&v403[40])
  {
    (*(**&v403[8] + 40))();
  }

  if (v411)
  {
    v211 = v412.i32[0];
    if ((v412.i8[0] & 1) == 0)
    {
      (*(*v411 + 40))();
      v211 = v412.i32[0];
    }

    v411 = 0uLL;
    v412.i32[0] = (v211 | 1) + 2;
  }

  v212 = *(&v408 + 1);
  if (*(&v408 + 1))
  {
    v213 = *(&v410 + 1);
    if (*(&v410 + 1))
    {
      if (v409.n128_u64[1])
      {
        v214 = 56 * v409.n128_u64[1];
        do
        {
          re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v213);
          v213 += 56;
          v214 -= 56;
        }

        while (v214);
        v212 = *(&v408 + 1);
        v213 = *(&v410 + 1);
      }

      (*(*v212 + 40))(v212, v213);
    }

    *(&v410 + 1) = 0;
    v409 = 0uLL;
    *(&v408 + 1) = 0;
    LODWORD(v410) = v410 + 1;
  }

  if (v406 && v408)
  {
    (*(*v406 + 40))();
  }

  v215 = *(v11 + 3);
  v394[0] = 0uLL;
  v394[1].n128_u32[0] = 1;
  v394[1].n128_u64[1] = 0;
  v394[2].n128_u64[0] = 0;
  if ((v215 & 0x3F) != 0)
  {
    v216 = (v215 >> 6) + 1;
  }

  else
  {
    v216 = v215 >> 6;
  }

  v395.n128_u64[0] = v215;
  *&v406 = 0;
  re::DynamicOverflowArray<unsigned long long,3ul>::resize(v394, v216, &v406);
  *&v403[32] = 0;
  memset(v403, 0, 28);
  re::DynamicArray<unsigned int>::resize(v403, v215, &re::kInvalidMeshIndex);
  v387[4] = 0;
  memset(v387, 0, 28);
  LODWORD(v375[0]) = 0;
  if (v215)
  {
    v3 = 0;
    v217 = 0;
    do
    {
      if ((re::DynamicBitset<unsigned long long,64ul>::getBit(v394, v217) & 1) == 0)
      {
        re::DynamicArray<int>::add(v387, v375);
        re::DynamicBitset<unsigned long long,64ul>::setBit(v394, LODWORD(v375[0]));
        v14 = LODWORD(v375[0]);
        v4 = *(v11 + 40);
        if (v4 <= LODWORD(v375[0]))
        {
          goto LABEL_587;
        }

        v218 = v387[2];
        if (v387[2])
        {
          v4 = *(*(v11 + 42) + 4 * LODWORD(v375[0]));
          while (1)
          {
            v14 = *(*&v387[4] + 4 * (*&v218 - 1));
            re::DynamicArray<float>::resize(v387, *&v218 - 1);
            v5 = *&v403[16];
            if (*&v403[16] <= v14)
            {
              break;
            }

            *(*&v403[32] + 4 * v14) = v3;
            v219 = re::GeomConnectivityManifold::fetchFaceIncidentFaces(v11, v14, v384);
            if (v219)
            {
              v5 = v219;
              i = v384;
              do
              {
                v220 = *i;
                i += 4;
                *v389 = v220;
                if ((re::DynamicBitset<unsigned long long,64ul>::getBit(v394, v220) & 1) == 0)
                {
                  v14 = *v389;
                  v7 = *(v11 + 40);
                  if (v7 <= *v389)
                  {
                    v379[0] = 0;
                    v409 = 0u;
                    v410 = 0u;
                    v407 = 0u;
                    v408 = 0u;
                    v406 = 0u;
                    v222 = MEMORY[0x1E69E9C10];
                    v223 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v400 = 136315906;
                    *&v400[4] = "operator[]";
                    *&v400[12] = 1024;
                    if (v223)
                    {
                      v224 = 3;
                    }

                    else
                    {
                      v224 = 2;
                    }

                    *&v400[14] = 789;
                    *&v400[18] = 2048;
                    *&v400[20] = v14;
                    v401 = 2048;
                    *v402 = v7;
                    _os_log_send_and_compose_impl(v224, v379, &v406, 80, &dword_1E1C61000, v222, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v400, 38, v356, v357);
                    _os_crash_msg();
                    __break(1u);
LABEL_439:
                    v387[0] = 0;
                    v409 = 0u;
                    v410 = 0u;
                    v407 = 0u;
                    v408 = 0u;
                    v406 = 0u;
                    v225 = MEMORY[0x1E69E9C10];
                    v226 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v403 = 136315906;
                    *&v403[4] = "operator[]";
                    *&v403[12] = 1024;
                    if (v226)
                    {
                      v227 = 3;
                    }

                    else
                    {
                      v227 = 2;
                    }

                    *&v403[14] = 789;
                    *&v403[18] = 2048;
                    *&v403[20] = v4;
                    *&v403[28] = 2048;
                    *&v403[30] = v4;
                    _os_log_send_and_compose_impl(v227, v387, &v406, 80, &dword_1E1C61000, v225, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v403, 38, v356, v357);
                    _os_crash_msg();
                    __break(1u);
                    goto LABEL_443;
                  }

                  if (v4 == *(*(v11 + 42) + 4 * *v389))
                  {
                    re::DynamicBitset<unsigned long long,64ul>::setBit(v394, *v389);
                    re::DynamicArray<int>::add(v387, v389);
                  }
                }

                --v5;
              }

              while (v5);
            }

            v218 = v387[2];
            if (!*&v387[2])
            {
              goto LABEL_420;
            }
          }

LABEL_527:
          *v384 = 0;
          v409 = 0u;
          v410 = 0u;
          v407 = 0u;
          v408 = 0u;
          v406 = 0u;
          v290 = MEMORY[0x1E69E9C10];
          v291 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v400 = 136315906;
          *&v400[4] = "operator[]";
          *&v400[12] = 1024;
          if (v291)
          {
            v292 = 3;
          }

          else
          {
            v292 = 2;
          }

          *&v400[14] = 789;
          *&v400[18] = 2048;
          *&v400[20] = v14;
          v401 = 2048;
          *v402 = v5;
          _os_log_send_and_compose_impl(v292, v384, &v406, 80, &dword_1E1C61000, v290, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v400, 38, v356, v357);
          _os_crash_msg();
          __break(1u);
LABEL_531:
          v387[0] = 0;
          v395 = 0u;
          v396 = 0u;
          memset(v394, 0, sizeof(v394));
          v293 = MEMORY[0x1E69E9C10];
          v294 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v403 = 136315906;
          *&v403[4] = "operator[]";
          *&v403[12] = 1024;
          if (v294)
          {
            v295 = 3;
          }

          else
          {
            v295 = 2;
          }

          *&v403[14] = 789;
          *&v403[18] = 2048;
          *&v403[20] = v3;
          *&v403[28] = 2048;
          *&v403[30] = v4;
          _os_log_send_and_compose_impl(v295, v387, v394, 80, &dword_1E1C61000, v293, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v403, 38, v356, v357);
          _os_crash_msg();
          __break(1u);
          goto LABEL_535;
        }

LABEL_420:
        v3 = (v3 + 1);
      }

      v217 = LODWORD(v375[0]) + 1;
      LODWORD(v375[0]) = v217;
    }

    while (v217 < v215);
  }

  re::DynamicArray<float>::operator=((v11 + 76), v403);
  if (*v387 && *&v387[4])
  {
    (*(**v387 + 40))();
  }

  if (*v403 && *&v403[32])
  {
    (*(**v403 + 40))();
  }

  if (v394[0].n128_u64[0] && (v394[1].n128_u8[0] & 1) == 0)
  {
    (*(*v394[0].n128_u64[0] + 40))();
  }

  re::DynamicArray<float>::operator=(v360, v11 + 38);
  result = v369;
  if (v369 && v12)
  {
    return (*(*v369 + 40))();
  }

  return result;
}