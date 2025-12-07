void *re::addPortalDrawcallByEntityId(uint64_t a1, uint64_t a2, re::Allocator **a3, char *a4, uint64_t a5, int a6, unsigned int a7, unsigned int a8, __int128 a9)
{
  v151 = __PAIR64__(a8, a7);
  *(&v153 + 1) = a5;
  v150 = a4;
  *(&v154 + 1) = a2;
  v247[6] = *MEMORY[0x1E69E9840];
  *(&v158 + 1) = a1;
  v10 = re::RenderGraphDataStore::tryGet<re::SceneScope>(a3[146], *(a3[5] + 6));
  v11 = re::RenderGraphDataStore::get<re::CameraData>(a3[146], *(a3[5] + 6));
  WORD3(v158) = 256;
  result = re::buildCullingFrustum((v11 + 64), (v11 + 144), *(v11 + 890), &v158 + 6, v204, v12, v13);
  if (v10)
  {
    if (*(v10 + 16))
    {
      v15 = *(v10 + 24);
    }

    else
    {
      v15 = (v10 + 17);
    }

    v16 = strlen(v15);
    if (v16)
    {
      MurmurHash3_x64_128(v15, v16, 0, &v229);
      v16 = ((&v230[8 * v229 - 0xC3910C8D016B07DLL] + (v229 >> 2) - 1) ^ v229);
    }

    result = re::RenderGraphContext::tryGetRenderGraphDataPipe(a3, v16);
    if (result)
    {
      result = (*(*result + 832))(result);
      v18 = result[5];
      if (v18)
      {
        v19 = result;
        v20 = 0;
        *&v152 = a9;
        v144 = &v245;
        v145 = v242;
        v137 = &v234;
        v138 = &v237;
        v149 = a3 + 169;
        *&v154 = &v159 + 9;
        v133 = &v160;
        v134 = &v199;
        *&v17 = 16842752;
        *v143 = v17;
        *&v17 = 134217472;
        *v142 = v17;
        *&v17 = 50364417;
        *v135 = v17;
        v140 = result;
        v141 = v11;
        v139 = result[5];
        do
        {
          result = re::BucketArray<re::SmallHashTable<unsigned long long,re::StencilPortal,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>,4ul>::operator[](v19, v20);
          v21 = result;
          if (*(result + 1743))
          {
            v22 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*(&v158 + 1) ^ (*(&v158 + 1) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*(&v158 + 1) ^ (*(&v158 + 1) >> 30))) >> 27));
            result = re::HashTable<unsigned long long,re::StencilPortal,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::findEntry<unsigned long long>((result + 868), &v158 + 1, v22 ^ (v22 >> 31), &v229);
            if (HIDWORD(v230) == 0x7FFFFFFF)
            {
              goto LABEL_155;
            }

            v23 = (v21[870] + 864 * HIDWORD(v230) + 16);
          }

          else
          {
            v32 = result[2];
            if (!v32)
            {
              goto LABEL_155;
            }

            v33 = 864 * v32;
            v23 = result + 6;
            while (*(v23 - 2) != *(&v158 + 1))
            {
              v23 += 108;
              v33 -= 864;
              if (!v33)
              {
                goto LABEL_155;
              }
            }
          }

          if ((*(v23 + 139) & *(v11 + 904)) != 0)
          {
            LOBYTE(v155) = 1;
            BYTE1(v155) = BYTE4(v151);
            *(&v155 + 2) = v143[0];
            BYTE6(v155) = 0;
            BYTE7(v155) = v151;
            *(&v155 + 1) = 0;
            v156 = 0;
            LOBYTE(v157) = *v152;
            if (v157 == 1)
            {
              BYTE1(v157) = *(v152 + 1);
            }

            WORD1(v157) = 0;
            re::CameraData::CameraData(&v229, *(*a3 + 4));
            v24 = v23[1];
            v25 = *(*a3 + 4);
            *(&v152 + 1) = &unk_1F5D06A20;
            v178 = &unk_1F5D06A20;
            re::DynamicString::DynamicString(&v179, v24, v25);
            v175 = &unk_1F5D03570;
            *&v176 = LODWORD(v142[0]);
            *(&v176 + 1) = LODWORD(v142[0]);
            v26 = strlen(v23[1]);
            v27 = 0x9E3779B97F4A7C17;
            if (v26)
            {
              MurmurHash3_x64_128(v23[1], v26, 0, v208);
              v27 = ((*&v208[8] - 0x61C8864680B583E9 + (*v208 << 6) + (*v208 >> 2)) ^ *v208) - 0x61C8864680B583E9;
            }

            *&v153 = v27;
            v28 = re::RenderGraphDataStore::get<re::CameraData>(a3[146], *(a3[5] + 6));
            re::DynamicString::operator=(&v230, (v28 + 8));
            re::DynamicInlineArray<re::RenderCamera,2ul>::operator=(&v232, (v28 + 48));
            if (&v229 != v28)
            {
              re::DynamicInlineArray<re::Projection,2ul>::copy(&v235, (v28 + 128));
              ++v236;
            }

            re::DynamicInlineArray<re::Matrix4x4<float>,2ul>::operator=(&v238, (v28 + 624));
            re::DynamicInlineArray<re::Vector4<float>,2ul>::operator=(&v240, (v28 + 768));
            v30 = *(v28 + 832);
            v29 = *(v28 + 848);
            v31 = *(v28 + 816);
            *(v145 + 42) = *(v28 + 858);
            v145[1] = v30;
            v145[2] = v29;
            *v145 = v31;
            if (v243)
            {
              if ((*(v28 + 876) & 1) == 0)
              {
                v243 = 0;
                goto LABEL_31;
              }

LABEL_30:
              v244 = *(v28 + 880);
            }

            else if (*(v28 + 876))
            {
              v243 = 1;
              goto LABEL_30;
            }

LABEL_31:
            v34 = *(v28 + 884);
            *(v144 + 13) = *(v28 + 897);
            *v144 = v34;
            re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::operator=<24ul>(v247, v28 + 920);
            v35 = strlen(*(&v153 + 1));
            *v208 = *(&v153 + 1);
            *&v208[8] = v35;
            re::DynamicString::operator=(&v230, v208);
            if ((atomic_load_explicit(&qword_1EE1C1118, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1118))
            {
              qword_1EE1C1110 = re::hashString("MeshScenes", v104);
              __cxa_guard_release(&qword_1EE1C1118);
            }

            v36 = re::RenderGraphDataStore::tryGet<re::RenderGraphDataStoreWrapper<re::MeshSceneArrays>>(a3[146], (v153 + (qword_1EE1C1110 << 6) + (qword_1EE1C1110 >> 2)) ^ qword_1EE1C1110);
            v37 = v36 + 8;
            if (!v36)
            {
              v37 = 0;
            }

            v242[3] = v37;
            MurmurHash3_x64_128("VFXScenes", 9uLL, 0, v208);
            v38 = (*&v208[8] - 0x61C8864680B583E9 + (*v208 << 6) + (*v208 >> 2)) ^ *v208;
            v39 = re::RenderGraphDataStore::tryGet<re::RenderGraphDataStoreWrapper<re::BucketArray<re::DynamicArray<re::VFXScene>,4ul>>>(a3[146], (v153 + (v38 << 6) + (v38 >> 2)) ^ v38);
            v40 = v39 + 8;
            if (!v39)
            {
              v40 = 0;
            }

            v242[4] = v40;
            if (BYTE4(v155) == 1)
            {
              *&v176 = LODWORD(v135[0]);
              *(&v176 + 1) = LODWORD(v135[0]);
              v177 = 0x80;
            }

            else
            {
              v177 = 0;
              v176 = xmmword_1E3108696;
            }

            v224 = &unk_1F5D12920;
            v225 = 0;
            if (*(v23 + 784) == 1)
            {
              v225 = 1;
              v41 = *(v23 + 51);
              v226 = *(v23 + 50);
              v227 = v41;
            }

            v228 = *(v23 + 208);
            if ((atomic_load_explicit(&qword_1EE1C1128, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1128))
            {
              qword_1EE1C1120 = re::hashString("SceneIndex", v105);
              __cxa_guard_release(&qword_1EE1C1128);
            }

            v174[0] = re::RenderGraphContext::tryGetPipelineCompilationData(a3, *(a3[5] + 6));
            v174[1] = &v178;
            v174[2] = re::RenderGraphDataStore::tryGet<re::SceneIndexData>(a3[146], (v153 + (qword_1EE1C1120 << 6) + (qword_1EE1C1120 >> 2)) ^ qword_1EE1C1120);
            v174[3] = &v175;
            v174[4] = re::RenderGraphDataStore::tryGet<re::ViewportData>(a3[146], *(a3[5] + 6));
            v174[5] = re::RenderGraphDataStore::tryGet<re::ViewportPercentData>(a3[146], *(a3[5] + 6));
            v174[6] = re::RenderGraphDataStore::tryGet<re::TintContextData>(a3[146], *(a3[5] + 6));
            v174[7] = re::RenderGraphDataStore::tryGet<re::VRRData>(a3[146], *(a3[5] + 6));
            v174[8] = re::RenderGraphDataStore::tryGet<re::TriangleFillModeData>(a3[146], *(a3[5] + 6));
            v174[9] = &v224;
            v172 = &unk_1F5D10F80;
            v173 = 0;
            re::CameraMatrices::CameraMatrices(v213, *(*a3 + 4), v246);
            if ((atomic_load_explicit(&qword_1EE1C1138, memory_order_acquire) & 1) == 0)
            {
              v106 = __cxa_guard_acquire(&qword_1EE1C1138);
              if (v106)
              {
                qword_1EE1C1130 = re::getCombinedScopeHash(v106, v107, v108);
                __cxa_guard_release(&qword_1EE1C1138);
              }
            }

            v42 = re::RenderGraphDataStore::get<re::RendererGlobals>(a3[146], qword_1EE1C1130);
            if ((atomic_load_explicit(&qword_1EE1C1148, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1148))
            {
              qword_1EE1C1140 = re::hashString("DynamicFunctionConstants", v109);
              __cxa_guard_release(&qword_1EE1C1148);
            }

            v43 = qword_1EE1C1140;
            v44 = strlen(*(&v153 + 1));
            v45 = 0x9E3779B97F4A7C17;
            if (v44)
            {
              MurmurHash3_x64_128(*(&v153 + 1), v44, 0, v208);
              v45 = ((*&v208[8] - 0x61C8864680B583E9 + (*v208 << 6) + (*v208 >> 2)) ^ *v208) - 0x61C8864680B583E9;
            }

            v46 = re::RenderGraphDataStore::tryGet<re::DynamicFunctionConstantsData>(a3[146], ((v43 >> 2) + (v43 << 6) + v45) ^ v43);
            if (v46)
            {
              v47 = v46 + 8;
            }

            else
            {
              v47 = 0;
            }

            v48 = re::RenderGraphDataStore::get<re::MeshLodSelectInputData>(a3[146], *(a3[5] + 6));
            v49 = (*(**(*a3 + 4) + 32))(*(*a3 + 4), 48, 8);
            v50 = *(*a3 + 4);
            *(v49 + 32) = 0;
            *v49 = 0u;
            *(v49 + 16) = 0u;
            *(v49 + 36) = 0x7FFFFFFFLL;
            re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::init(v49, v50, 3);
            v173 = v49;
            if (v246)
            {
              v52 = 0;
              v54 = v137;
              v53 = v138;
              do
              {
                if (v235 <= v52)
                {
                  re::internal::assertLog(6, v51, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v52, v235);
                  _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v122, v126);
                  __break(1u);
LABEL_197:
                  re::internal::assertLog(6, v57, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v52, v58);
                  _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v123, v127);
                  __break(1u);
LABEL_198:
                  re::internal::assertLog(6, v59, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v52, v60);
                  _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v124, v128);
                  __break(1u);
                }

                if (*(v53 + 80) == 1)
                {
                  v55 = *(v53 + 7);
                  *v208 = *(v53 + 6);
                  *&v208[16] = v55;
                  v56 = *(v53 + 9);
                  *&v208[32] = *(v53 + 8);
                  *&v208[48] = v56;
                }

                else
                {
                  re::Projection::cullingProjectionMatrix(v208, v53);
                }

                re::DynamicArray<re::Matrix4x4<float>>::add(v216, v208);
                v58 = v235;
                if (v235 <= v52)
                {
                  goto LABEL_197;
                }

                re::Projection::cullingProjectionMatrix(v208, v53);
                re::DynamicArray<re::Matrix4x4<float>>::add(v220, v208);
                v60 = v232;
                if (v232 <= v52)
                {
                  goto LABEL_198;
                }

                re::RenderCamera::computeInverseTransform(v208, v54);
                re::DynamicArray<re::Matrix4x4<float>>::add(v214, v208);
                ++v52;
                v54 += 2;
                v53 += 30;
              }

              while (v52 < v246);
            }

            v61 = *(*a3 + 4);
            v159 = 0u;
            v160 = 0u;
            LODWORD(v161) = 0;
            *(&v161 + 4) = 0x7FFFFFFFLL;
            re::HashTable<unsigned long long,re::ecs2::CARESortingManagerV2::SorterCollection,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(&v159, v61, 3);
            *v208 = a3;
            *&v208[8] = &v229;
            *&v208[16] = v213;
            *&v208[24] = &v178;
            *&v208[32] = v42;
            *&v208[40] = &v172;
            *&v208[48] = v48;
            *&v208[56] = &v159;
            v208[64] = v155;
            *&v208[65] = 0;
            v208[68] = 0;
            v210 = v47;
            re::RenderGraphCameraSetupNode::setupDrawCallsForCamera(v208, v62, v63, v64, v65, v66);
            re::HashTable<unsigned long long,re::MeshShadowPlaneData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v159);
            if ((atomic_load_explicit(&qword_1EE1C1150, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1150))
            {
              qword_1EE1C11D0 = 0x2476C06B76;
              qword_1EE1C11D8 = "VCABlur";
              unk_1EE1C11E0 = 5231452;
              qword_1EE1C11E8 = "True";
              __cxa_guard_release(&qword_1EE1C1150);
            }

            if ((atomic_load_explicit(&qword_1EE1C1158, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1158))
            {
              qword_1EE1C11F0 = 0x4CB6D3AA6EABE92CLL;
              qword_1EE1C11F8 = "Transparent_BackCompat";
              unk_1EE1C1200 = 5231452;
              qword_1EE1C1208 = "True";
              __cxa_guard_release(&qword_1EE1C1158);
            }

            if ((atomic_load_explicit(&qword_1EE1C1160, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1160))
            {
              re::StringID::StringID(v208, &qword_1EE1C11D0);
              re::StringID::StringID(&v208[16], &unk_1EE1C11E0);
              qword_1EE1C1210 = *v208;
              unk_1EE1C1218 = *&v208[8];
              *&v208[8] = &str_67;
              *v208 = 0;
              qword_1EE1C1228 = *&v208[24];
              *&v208[24] = &str_67;
              *&v208[16] = 0;
              re::StringID::destroyString(&v208[16]);
              re::StringID::destroyString(v208);
              __cxa_guard_release(&qword_1EE1C1160);
            }

            if ((atomic_load_explicit(&qword_1EE1C1168, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1168))
            {
              re::StringID::StringID(v208, &qword_1EE1C11F0);
              re::StringID::StringID(&v208[16], &unk_1EE1C1200);
              re::StringID::StringID(&v208[32], &qword_1EE1C11D0);
              re::StringID::StringID(&v208[48], &unk_1EE1C11E0);
              qword_1EE1C1240 = *&v208[16];
              xmmword_1EE1C1230 = *v208;
              *&v208[8] = &str_67;
              *v208 = 0;
              unk_1EE1C1248 = *&v208[24];
              *&v208[24] = &str_67;
              *&v208[16] = 0;
              unk_1EE1C1258 = *&v208[40];
              *&v208[40] = &str_67;
              *&v208[32] = 0;
              qword_1EE1C1268 = *&v208[56];
              v110 = 64;
              *&v208[56] = &str_67;
              *&v208[48] = 0;
              do
              {
                re::StringID::destroyString(&v207[v110 + 288]);
                re::StringID::destroyString(&v207[v110 + 272]);
                v110 -= 32;
              }

              while (v110);
              __cxa_guard_release(&qword_1EE1C1168);
            }

            if (BYTE5(v155) == 1)
            {
              *v208 = &xmmword_1EE1C1230;
              *&v208[8] = 2;
              v67 = re::Slice<re::TechniqueTagFilter>::range(v208, 0, 1uLL);
              v146.n128_u64[0] = v68;
              v146.n128_u64[1] = v67;
              v69 = 0;
              v70 = 0;
            }

            else
            {
              v70 = &qword_1EE1C1210;
              v69 = 1;
              v146.n128_u64[0] = 2;
              v146.n128_u64[1] = &xmmword_1EE1C1230;
            }

            if ((BYTE1(v155) & 1) == 0 && BYTE6(v155) == 1)
            {
              if ((atomic_load_explicit(&qword_1EE1C11C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C11C8))
              {
                qword_1EE1C11C0 = re::hashString("PlattersOnly", v112);
                __cxa_guard_release(&qword_1EE1C11C8);
              }

              MeshPartBucket = re::MeshPassInfoData::getMeshPartBucket(&v172, qword_1EE1C11C0);
              v72 = *(*a3 + 4);
              v203 = 0;
              v201 = 0;
              v200[0] = 0;
              v200[1] = 0;
              v202 = 0;
              v197 = 0;
              v198 = 0;
              if (MeshPartBucket)
              {
                *v208 = MeshPartBucket;
                v208[8] = 0;
                *&v208[14] = 65280;
                v208[18] = 0;
                MeshPartBucket = re::DynamicInlineArray<re::FilteredMeshPass,2ul>::add(&v197, v208);
                v73 = v197;
              }

              else
              {
                v73 = 0;
              }

              v196[0] = v134;
              v196[1] = v73;
              if (*v149)
              {
                MeshPartBucket = re::DrawCallRecorder::allocateDrawCallRecorderGroup(v149, *(&v155 + 1), "BlurPlatterMeshDraw");
                v74 = MeshPartBucket;
              }

              else
              {
                v74 = 0;
              }

              *v208 = 0;
              *&v208[8] = v70;
              *&v208[16] = v69;
              memset(&v208[24], 0, 48);
              v209 = re::globalAllocators(MeshPartBucket)[2];
              v210 = 0;
              LOWORD(v211) = 1;
              BYTE4(v211) = 0;
              v212 = 0;
              re::RenderGraphMeshNodeBase::sortMeshParts(0, v134, v73, a3, v74, v208, v72, &v182, v121, v125, SHIDWORD(v125), v129, v130, v131, v132, v133, v134, v135[0], v135[1], v136, v137, v138, v139, v140, v141, v142[0], v142[1], v143[0], v143[1], v144, v145, v146, v147, v149, v150, v151, v152, v153, v154, v155, *(&v155 + 1), v156, SBYTE4(v156), SBYTE5(v156), SBYTE6(v156), SHIBYTE(v156), v157, SHIDWORD(v157), v158, v159, v160, v161, v162, *(&v162 + 1), v163, *(&v163 + 1), v164, SWORD4(v164), v165, v166, v167, v168, v169);
              re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v200, &v182);
              if (v182)
              {
                if (v185)
                {
                  (*(*v182 + 40))();
                }

                v185 = 0;
                v182 = 0;
                v183 = 0uLL;
                LODWORD(v184) = v184 + 1;
              }

              re::FunctionBase<32ul,BOOL ()(re::MeshPartDrawContext const&)>::destroyCallable(&v208[40]);
              if (v201)
              {
                v75 = (*(*v72 + 32))(v72, 328, 8);
                v195 = re::DrawTable::DrawTable(v75, v72, (v201 + 127) >> 7);
                v194 = re::RenderGraphDataStore::tryGet<re::VCARenderData>(a3[146], *(a3[5] + 6));
                if (*(v75 + 320) != 1)
                {
                  (**(v75 + 280))(v75 + 280);
                }

                *(v75 + 280) = &unk_1F5D15320;
                *(v75 + 288) = &v155;
                *(v75 + 296) = &v194;
                *(v75 + 304) = &v195;
                *(v75 + 320) = 0;
                LOBYTE(v159) = 0;
                BYTE4(v160) = 0;
                DWORD1(v162) = 0;
                LOBYTE(v163) = 0;
                v161 = 0uLL;
                LOBYTE(v162) = 0;
                re::RenderGraphMeshNodeBase::makeDrawCallsFromMeshParts(v196, v203, v201, a3, v75, v217, v213, 0, v74, &v159);
                if (*(v195 + 5))
                {
                  re::DrawTableSlice::DrawTableSlice(v208, v195);
                  v76 = 0;
                  v182 = "StencilBlurSetStencil";
                  *&v183 = v208;
                  *(&v183 + 1) = v215;
                  v184 = v219;
                  v185 = 0;
                  v186 = v223;
                  v187 = 2;
                  v188 = 256;
                  v189 = __const__ZN2re20FeatureStencilStates18getStencilBlurInfoENS0_16StencilBlurUsageE_kWriteStInfo;
                  v190 = 0;
                  v191 = 0;
                  if (*v149)
                  {
                    v76 = re::DrawCallRecorder::allocateDrawCallRecorderGroup(v149, *(&v155 + 1), "StencilBlurSetStencil");
                  }

                  v192 = v76;
                  v193 = 0;
                  re::RenderGraphContext::getDefaultEncodeDrawCallDataStoreArgs(a3, v181);
                  re::RenderGraphContext::encodeDrawCalls(a3, v181, &v182, v77, v78, v79, v80, v81, v121, v125, v129, v130, v131, v132, v133, v134, v135[0], v135[1], v136, v137, v138, v139, v140, v141, v142[0], v142[1], v143[0], v143[1], v144, v145, *&v146, v148, v149, v150, v151, v152, *(&v152 + 1), v153, v154, v155, v156, SBYTE1(v156), SBYTE2(v156), SBYTE3(v156), SBYTE4(v156), v157, v158, v159, *(&v159 + 1), v160, *(&v160 + 1), v161, *(&v161 + 1), v162, v163, v164, v165, v166, v167, v168, v169, v170, v171);
                }
              }

              else
              {
                re::RenderGraphContext::acquireManagedRenderCommandEncoder(a3, 0, v208);
                re::mtl::RenderCommandEncoder::~RenderCommandEncoder(v208);
              }

              if (v200[0] && v203)
              {
                (*(*v200[0] + 40))();
              }
            }

            if (*v149)
            {
              v82 = re::DrawCallRecorder::allocateDrawCallRecorderGroup(v149, "Portal", "makePortalDrawcalls");
            }

            else
            {
              v82 = 0;
            }

            v83 = strlen(v150);
            if (v83)
            {
              MurmurHash3_x64_128(v150, v83, 0, v208);
              v84 = (*&v208[8] - 0x61C8864680B583E9 + (*v208 << 6) + (*v208 >> 2)) ^ *v208;
            }

            else
            {
              v84 = 0;
            }

            v85 = strlen(*(&v153 + 1));
            v86 = 0x9E3779B97F4A7C17;
            if (v85)
            {
              MurmurHash3_x64_128(*(&v153 + 1), v85, 0, v208);
              v86 = ((*&v208[8] - 0x61C8864680B583E9 + (*v208 << 6) + (*v208 >> 2)) ^ *v208) - 0x61C8864680B583E9;
            }

            v87 = re::RenderGraphDataStore::get<re::SceneScope>(a3[146], ((v84 >> 2) + (v84 << 6) + v86) ^ v84);
            if (BYTE4(v155) == 1)
            {
              if ((atomic_load_explicit(&qword_1EE1C1178, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1178))
              {
                qword_1EE1C1170 = re::hashString("StencilIncrement", v111);
                __cxa_guard_release(&qword_1EE1C1178);
              }

              *v208 = v23;
              *&v208[8] = v87;
              *&v208[16] = *(&v153 + 1);
              *&v208[24] = "StencilIncrement";
              *&v208[32] = qword_1EE1C1170;
              *&v208[40] = __const__ZN2re20FeatureStencilStates13getPortalInfoENS0_11PortalUsageEhh_kIncrementStInfo;
              v208[56] = BYTE3(v157) | 0x80;
              v208[41] = BYTE2(v157);
              v208[49] = BYTE2(v157);
              *&v208[64] = a3;
              LOBYTE(v209) = BYTE7(v155);
              re::makePortalSurfaceDrawcall(v208, *(&v154 + 1), v82, 0);
              if ((BYTE4(v155) & 1) != 0 && (BYTE1(v155) & 1) == 0)
              {
                if ((atomic_load_explicit(&qword_1EE1C1188, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1188))
                {
                  qword_1EE1C1180 = re::hashString("DepthBufferClear", v115);
                  __cxa_guard_release(&qword_1EE1C1188);
                }

                if ((atomic_load_explicit(&qword_1EE1C1198, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1198))
                {
                  qword_1EE1C1190 = re::hashString("DepthBufferClearNoColor", v116);
                  __cxa_guard_release(&qword_1EE1C1198);
                }

                v88 = &qword_1EE1C1190;
                if (!BYTE3(v155))
                {
                  v88 = &qword_1EE1C1180;
                }

                v89 = *v88;
                v90 = "DepthBufferClear";
                if (BYTE3(v155))
                {
                  v90 = "DepthBufferClearNoColor";
                }

                *v208 = v23;
                *&v208[8] = v87;
                *&v208[16] = *(&v153 + 1);
                *&v208[24] = v90;
                *&v208[32] = v89;
                *&v208[40] = __const__ZN2re20FeatureStencilStates13getPortalInfoENS0_11PortalUsageEhh_kDepthClearStInfo;
                v208[56] = 0x80;
                v208[41] = 0x80;
                v208[49] = 0x80;
                *&v208[64] = a3;
                LOBYTE(v209) = BYTE7(v155);
                re::makePortalSurfaceDrawcall(v208, *(&v154 + 1), v82, 0);
              }
            }

            v147 = v87;
            v91 = re::RenderGraphDataStore::tryGet<re::SceneIndexData>(a3[146], (v153 + (qword_1EE1C1120 << 6) + (qword_1EE1C1120 >> 2)) ^ qword_1EE1C1120);
            if ((BYTE1(v155) & 1) == 0)
            {
              v92 = v91;
              v93 = v156;
              if (v156)
              {
                if (*(v156 + 16))
                {
                  v94 = 0;
                  v95 = 0;
                  do
                  {
                    v96 = *(v93 + 32) + v94;
                    if (*(v96 + 8))
                    {
                      v97 = *(v96 + 16);
                    }

                    else
                    {
                      v97 = (v96 + 9);
                    }

                    re::DynamicString::operator+(&v159, v208, v97);
                    if (*v208 && (v208[8] & 1) != 0)
                    {
                      (*(**v208 + 40))();
                    }

                    v98 = strlen(v97);
                    if (v98)
                    {
                      MurmurHash3_x64_128(v97, v98, 0, v208);
                      v98 = (*&v208[8] - 0x61C8864680B583E9 + (*v208 << 6) + (*v208 >> 2)) ^ *v208;
                    }

                    v99 = re::MeshPassInfoData::getMeshPartBucket(&v172, v98);
                    if (v99)
                    {
                      v182 = v99;
                      LOBYTE(v183) = 0;
                      *(&v183 + 6) = 65280;
                      BYTE10(v183) = 1;
                      *v208 = v174;
                      *&v208[8] = "Portal";
                      v100 = v154;
                      if (BYTE8(v159))
                      {
                        v100 = v160;
                      }

                      *&v208[16] = v100;
                      *&v208[24] = &v182;
                      *&v208[48] = 0;
                      *&v208[32] = 1uLL;
                      *&v208[56] = v213;
                      *&v208[64] = 2;
                      *&v208[68] = 2;
                      v209 = a3;
                      LOBYTE(v210) = 1;
                      v211 = v92;
                      re::makePortalSceneDrawcalls(v208, *(&v154 + 1), v82);
                    }

                    v91 = v159;
                    if (v159 && (BYTE8(v159) & 1) != 0)
                    {
                      v91 = (*(*v159 + 40))();
                    }

                    ++v95;
                    v93 = v156;
                    v94 += 32;
                  }

                  while (*(v156 + 16) > v95);
                }
              }

              else
              {
                *&v159 = 0;
                DWORD2(v159) = 0;
                re::rendergraph_helper::getOcclusionMeshPasses(v208);
                re::rendergraph_helper::populateMeshPassArray<1ul,re::FixedInlineArray<re::rendergraph_helper::RenderPass,1ul>>(&v172, &v159, v208);
                *v208 = v174;
                *&v208[8] = "Portal";
                *&v208[16] = "Portal_Occlusion";
                *&v208[24] = v133;
                *&v208[48] = 0;
                *&v208[32] = v159;
                *&v208[56] = v213;
                *&v208[64] = 1;
                *&v208[68] = 0;
                v209 = a3;
                LOBYTE(v210) = 1;
                v211 = v92;
                re::makePortalSceneDrawcalls(v208, *(&v154 + 1), v82);
                *&v159 = 0;
                DWORD2(v159) = 0;
                re::rendergraph_helper::getOpaqueMeshPasses(v208);
                re::rendergraph_helper::populateMeshPassArray<1ul,re::FixedInlineArray<re::rendergraph_helper::RenderPass,1ul>>(&v172, &v159, v208);
                *v208 = v174;
                *&v208[8] = "Portal";
                *&v208[16] = "Portal_Opaque";
                *&v208[24] = v133;
                *&v208[48] = 0;
                *&v208[32] = v159;
                *&v208[56] = v213;
                *&v208[64] = 1;
                *&v208[68] = 2;
                v209 = a3;
                LOBYTE(v210) = 1;
                v211 = v92;
                re::makePortalSceneDrawcalls(v208, *(&v154 + 1), v82);
                *&v159 = 0;
                DWORD2(v159) = 0;
                re::rendergraph_helper::getSkyboxMeshPasses(v208);
                re::rendergraph_helper::populateMeshPassArray<1ul,re::FixedInlineArray<re::rendergraph_helper::RenderPass,1ul>>(&v172, &v159, v208);
                *v208 = v174;
                *&v208[8] = "Portal";
                *&v208[16] = "Portal_Skybox";
                *&v208[24] = v133;
                *&v208[48] = 0;
                *&v208[32] = v159;
                *&v208[56] = v213;
                *&v208[64] = 1;
                *&v208[68] = 2;
                v209 = a3;
                LOBYTE(v210) = 1;
                v211 = v92;
                re::makePortalSceneDrawcalls(v208, *(&v154 + 1), v82);
                *&v159 = 0;
                DWORD2(v159) = 0;
                re::rendergraph_helper::getTransparentMeshPasses(v208);
                re::rendergraph_helper::populateMeshPassArray<7ul,re::FixedInlineArray<re::rendergraph_helper::RenderPass,7ul>>(&v172, &v159, v208);
                *v208 = v174;
                *&v208[8] = "Portal";
                *&v208[16] = "Portal_Transparent";
                *&v208[24] = v133;
                *&v208[32] = v159;
                *&v208[40] = v146.n128_u64[1];
                *&v208[48] = v146.n128_u64[0];
                *&v208[56] = v213;
                *&v208[64] = 2;
                *&v208[68] = 2;
                v209 = a3;
                LOBYTE(v210) = 1;
                v211 = v92;
                re::makePortalSceneDrawcalls(v208, *(&v154 + 1), v82);
                *&v159 = 0;
                DWORD2(v159) = 0;
                re::rendergraph_helper::getRenderOnTopMeshPasses(v208);
                re::rendergraph_helper::populateMeshPassArray<8ul,re::FixedInlineArray<re::rendergraph_helper::RenderPass,8ul>>(&v172, &v159, v208);
                *v208 = v174;
                *&v208[8] = "Portal";
                *&v208[16] = "Portal_RenderOnTop";
                *&v208[24] = v133;
                *&v208[32] = v159;
                *&v208[40] = v146.n128_u64[1];
                *&v208[48] = v146.n128_u64[0];
                *&v208[56] = v213;
                *&v208[64] = 2;
                *&v208[68] = 2;
                v209 = a3;
                LOBYTE(v210) = 1;
                v211 = v92;
                re::makePortalSceneDrawcalls(v208, *(&v154 + 1), v82);
              }
            }

            v18 = v139;
            v19 = v140;
            if (BYTE4(v155) == 1 && (BYTE1(v155) & 1) == 0)
            {
              if ((atomic_load_explicit(&qword_1EE1C11A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C11A8))
              {
                qword_1EE1C11A0 = re::hashString("DepthBufferPatchAndStencilDecrement", v113);
                __cxa_guard_release(&qword_1EE1C11A8);
              }

              if ((atomic_load_explicit(&qword_1EE1C11B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C11B8))
              {
                qword_1EE1C11B0 = re::hashString("DepthBufferPatchAndStencilDecrementNoFragmentFunction", v114);
                __cxa_guard_release(&qword_1EE1C11B8);
              }

              v101 = &qword_1EE1C11B0;
              if (!BYTE2(v155))
              {
                v101 = &qword_1EE1C11A0;
              }

              v102 = *v101;
              v103 = "DepthBufferPatchAndStencilDecrement";
              if (BYTE2(v155))
              {
                v103 = "DepthBufferPatchAndStencilDecrementNoFragmentFunction";
              }

              *v208 = v23;
              *&v208[8] = v147;
              *&v208[16] = *(&v153 + 1);
              *&v208[24] = v103;
              *&v208[32] = v102;
              *&v208[40] = __const__ZN2re20FeatureStencilStates13getPortalInfoENS0_11PortalUsageEhh_kDecrementStInfo;
              v208[56] = 0x80;
              v208[41] = 0x80;
              v208[49] = 0x80;
              *&v208[64] = a3;
              LOBYTE(v209) = BYTE7(v155);
              re::makePortalSurfaceDrawcall(v208, *(&v154 + 1), v82, 1);
            }

            v11 = v141;
            if (v220[0])
            {
              if (v222)
              {
                (*(*v220[0] + 40))();
              }

              v222 = 0;
              memset(v220, 0, sizeof(v220));
              ++v221;
            }

            if (v216[0])
            {
              if (v219)
              {
                (*(*v216[0] + 40))();
              }

              v219 = 0;
              v216[1] = 0;
              v217 = 0;
              v216[0] = 0;
              ++v218;
            }

            if (v214[0] && v215)
            {
              (*(*v214[0] + 40))();
            }

            v178 = *(&v152 + 1);
            if (v179 && (v180 & 1) != 0)
            {
              (*(*v179 + 40))();
            }

            re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(v247);
            ++v241;
            ++v239;
            ++v236;
            v240 = 0;
            v238 = 0;
            v235 = 0;
            v232 = 0;
            ++v233;
            result = v230;
            if (v230 && (v231 & 1) != 0)
            {
              result = (*(*v230 + 40))();
            }
          }

LABEL_155:
          ++v20;
        }

        while (v20 != v18);
      }
    }
  }

  if (v206[0])
  {
    v117 = &v206[18 * v206[0] + 2];
    v118 = v207;
    do
    {
      *v118 = 0;
      ++*(v118 + 2);
      v118 += 144;
    }

    while (v118 != v117);
  }

  if (v204[0])
  {
    v119 = &v204[14 * v204[0] + 2];
    v120 = &v205;
    do
    {
      *v120 = 0;
      ++*(v120 + 2);
      v120 += 14;
    }

    while (v120 != v119);
  }

  return result;
}

void *re::internal::Callable<re::makePortalSurfaceDrawcall(re::EncodeMeshPassForPortalArgs const&,re::DrawTable *,re::DrawCallRecorderGroup *,re::PortalRenderContext const&,BOOL)::$_0,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D152C8;
  return result;
}

void *re::internal::Callable<re::makePortalSurfaceDrawcall(re::EncodeMeshPassForPortalArgs const&,re::DrawTable *,re::DrawCallRecorderGroup *,re::PortalRenderContext const&,BOOL)::$_0,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D152C8;
  return result;
}

double re::internal::Callable<re::makePortalDrawcalls(re::DrawTable *,re::StencilPortal const&,re::RenderGraphContext &,char const*,char const*,char const*,re::PortalRenderContext const&)::$_0::operator() const(void)::{lambda(re::DrawCall &,re::MeshPartDrawContext const&,unsigned char)#1},void ()(re::DrawCall &,re::MeshPartDrawContext const&,unsigned char)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 8) + 27);
  if ((*(a2 + 145) & 1) == 0)
  {
    *(a2 + 145) = 1;
  }

  *(a2 + 146) = v4;
  v5 = re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(**(a1 + 16) + 192, (a2 + 88));
  if (v5)
  {
    v7 = v5;
    v8 = re::BucketArray<re::Matrix4x4<float>,128ul>::operator[](**(a1 + 24) + 56, *(a2 + 84));
    v9 = 0;
    LODWORD(v10) = 0;
    HIDWORD(v10) = 0;
    *(&v10 + 4) = v7->u32[1];
    *&v11 = 0;
    *(&v11 + 1) = v7->u32[2];
    v12 = vnegq_f32(v7[1]);
    v12.i32[3] = 1.0;
    v13 = *v8;
    v14 = v8[1];
    v15 = v8[2];
    v16 = v8[3];
    v20[0] = v7->u32[0];
    v20[1] = v10;
    v20[2] = v11;
    v20[3] = v12;
    do
    {
      v21[v9] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v13, COERCE_FLOAT(v20[v9])), v14, *&v20[v9], 1), v15, v20[v9], 2), v16, v20[v9], 3);
      ++v9;
    }

    while (v9 != 4);
    result = *v21;
    v17 = v21[1];
    v18 = v21[2];
    v19 = v21[3];
    *v8 = v21[0];
    v8[1] = v17;
    v8[2] = v18;
    v8[3] = v19;
  }

  return result;
}

uint64_t re::internal::Callable<re::makePortalDrawcalls(re::DrawTable *,re::StencilPortal const&,re::RenderGraphContext &,char const*,char const*,char const*,re::PortalRenderContext const&)::$_0::operator() const(void)::{lambda(re::DrawCall &,re::MeshPartDrawContext const&,unsigned char)#1},void ()(re::DrawCall &,re::MeshPartDrawContext const&,unsigned char)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D15320;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::Callable<re::makePortalDrawcalls(re::DrawTable *,re::StencilPortal const&,re::RenderGraphContext &,char const*,char const*,char const*,re::PortalRenderContext const&)::$_0::operator() const(void)::{lambda(re::DrawCall &,re::MeshPartDrawContext const&,unsigned char)#1},void ()(re::DrawCall &,re::MeshPartDrawContext const&,unsigned char)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D15320;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t *re::RenderGraphMPSNodeBase::getCommandBufferWithProtectionOptions@<X0>(uint64_t *__return_ptr a1@<X8>, re::RenderGraphMPSNodeBase *this@<X0>, re::RenderGraphContext *a3@<X1>)
{
  v6 = re::RenderFrameBox::get((*(*(a3 + 1) + 112) + 328), *(*a3 + 40));
  v7 = *(re::RenderFrame::currentCommandBuffer(v6) + 2);
  *a1 = v7;
  v8 = *(this + 30);
  v9 = 0;
  if (v8)
  {
    v10 = *(this + 32);
    v11 = v8 << 6;
    do
    {
      re::RenderGraphContext::metalTexture(a3, v10, 0, 0, &v19);
      v12 = [v19 protectionOptions];
      if (v19)
      {
      }

      v9 |= v12;
      v10 += 64;
      v11 -= 64;
    }

    while (v11);
  }

  v13 = *(this + 20);
  if (v13)
  {
    v14 = *(this + 22);
    v15 = v13 << 6;
    do
    {
      v16 = re::RenderGraphContext::metalBuffer(a3, v14);
      v9 |= [*re::BufferSlice::buffer(v16 v17)];
      v14 += 64;
      v15 -= 64;
    }

    while (v15);
  }

  result = [v7 protectionOptions];
  if (result != v9)
  {
    return [v7 setProtectionOptions:v9];
  }

  return result;
}

uint64_t *re::RenderGraphMPSNodeBase::getViewports@<X0>(uint64_t *__return_ptr a1@<X8>, re::RenderGraphContext *a2@<X1>, const unint64_t *a3@<X2>, const unint64_t *a4@<X3>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v8 = *(*a2 + 32);
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v9 = re::RenderGraphDataStore::tryGet<re::ViewportPercentData>(*(a2 + 146), *(*(a2 + 5) + 48));
  if (v9)
  {
    v10 = *(v9 + 64);
  }

  else
  {
    v10 = 1;
  }

  re::FixedArray<re::mtl::Viewport>::init<>(a1, v8, v10);
  re::FixedArray<re::Vector4<float>>::init<>(&v18, v8, v10);
  v11 = re::RenderGraphDataStore::tryGet<re::ViewportData>(*(a2 + 146), *(*(a2 + 5) + 48));
  re::RenderGraphContext::selectViewport(a2, v11, a1, &v18, 0);
  v12 = a1[1];
  if (v12)
  {
    v13 = *a3;
    v14 = *a4;
    v15 = (a1[2] + 12);
    do
    {
      if (*(v15 - 1) == 0.0 && *v15 == 0.0)
      {
        *(v15 - 1) = v13;
        *v15 = v14;
      }

      v15 += 6;
      --v12;
    }

    while (v12);
  }

  result = v18;
  if (v18)
  {
    v17 = v19 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (!v17)
  {
    return (*(*v18 + 40))();
  }

  return result;
}

void *re::allocInfo_DefaultDepthFormatData(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_540, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_540))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C12D0, "DefaultDepthFormatData");
    __cxa_guard_release(&_MergedGlobals_540);
  }

  return &unk_1EE1C12D0;
}

void re::initInfo_DefaultDepthFormatData(re *this, re::IntrospectionBase *a2)
{
  v18[0] = 0xDE1393FAFE3F606;
  v18[1] = "DefaultDepthFormatData";
  if (v18[0])
  {
    if (v18[0])
    {
    }
  }

  *(this + 2) = v19;
  if ((atomic_load_explicit(&qword_1EE1C1278, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1278))
  {
    v5 = re::introspectionAllocator();
    v11 = re::introspect_RenderGraphData(1, v6, v7, v8, v9, v10);
    v12 = (*(*v5 + 32))(v5, 72, 8);
    *v12 = 1;
    *(v12 + 8) = "RenderGraphData";
    *(v12 + 16) = v11;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0;
    *(v12 + 40) = 3;
    *(v12 + 48) = 0;
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
    qword_1EE1C12A0 = v12;
    v13 = re::introspectionAllocator();
    v15 = re::mtl::introspect_PixelFormat(1, v14);
    v16 = (*(*v13 + 32))(v13, 72, 8);
    *v16 = 1;
    *(v16 + 8) = "format";
    *(v16 + 16) = v15;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0x800000001;
    *(v16 + 40) = 0;
    *(v16 + 48) = 0;
    *(v16 + 56) = 0;
    *(v16 + 64) = 0;
    qword_1EE1C12A8 = v16;
    __cxa_guard_release(&qword_1EE1C1278);
  }

  *(this + 4) = 8;
  *(this + 20) = 0x800000010;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1C12A0;
  *(this + 9) = re::internal::defaultConstruct<re::DefaultDepthFormatData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::DefaultDepthFormatData>;
  *(this + 13) = re::internal::defaultConstructV2<re::DefaultDepthFormatData>;
  *(this + 14) = re::internal::defaultDestructV2<re::DefaultDepthFormatData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v17 = v19;
}

void *re::allocInfo_DefaultStencilFormatData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C1280, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1280))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C1360, "DefaultStencilFormatData");
    __cxa_guard_release(&qword_1EE1C1280);
  }

  return &unk_1EE1C1360;
}

void re::initInfo_DefaultStencilFormatData(re *this, re::IntrospectionBase *a2)
{
  v18[0] = 0x5D8C4433CA9F5DF8;
  v18[1] = "DefaultStencilFormatData";
  if (v18[0])
  {
    if (v18[0])
    {
    }
  }

  *(this + 2) = v19;
  if ((atomic_load_explicit(&qword_1EE1C1288, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1288))
  {
    v5 = re::introspectionAllocator();
    v11 = re::introspect_RenderGraphData(1, v6, v7, v8, v9, v10);
    v12 = (*(*v5 + 32))(v5, 72, 8);
    *v12 = 1;
    *(v12 + 8) = "RenderGraphData";
    *(v12 + 16) = v11;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0;
    *(v12 + 40) = 3;
    *(v12 + 48) = 0;
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
    qword_1EE1C12B0 = v12;
    v13 = re::introspectionAllocator();
    v15 = re::mtl::introspect_PixelFormat(1, v14);
    v16 = (*(*v13 + 32))(v13, 72, 8);
    *v16 = 1;
    *(v16 + 8) = "format";
    *(v16 + 16) = v15;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0x800000001;
    *(v16 + 40) = 0;
    *(v16 + 48) = 0;
    *(v16 + 56) = 0;
    *(v16 + 64) = 0;
    qword_1EE1C12B8 = v16;
    __cxa_guard_release(&qword_1EE1C1288);
  }

  *(this + 2) = 0x1000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1C12B0;
  *(this + 9) = re::internal::defaultConstruct<re::DefaultStencilFormatData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::DefaultStencilFormatData>;
  *(this + 13) = re::internal::defaultConstructV2<re::DefaultStencilFormatData>;
  *(this + 14) = re::internal::defaultDestructV2<re::DefaultStencilFormatData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v17 = v19;
}

void *re::allocInfo_ForceClearData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C1290, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1290))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C13F0, "ForceClearData");
    __cxa_guard_release(&qword_1EE1C1290);
  }

  return &unk_1EE1C13F0;
}

void re::initInfo_ForceClearData(re *this, re::IntrospectionBase *a2)
{
  v18[0] = 0x1E05F5F3774B4A18;
  v18[1] = "ForceClearData";
  if (v18[0])
  {
    if (v18[0])
    {
    }
  }

  *(this + 2) = v19;
  if ((atomic_load_explicit(&qword_1EE1C1298, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1298))
  {
    v5 = re::introspectionAllocator();
    v11 = re::introspect_RenderGraphData(1, v6, v7, v8, v9, v10);
    v12 = (*(*v5 + 32))(v5, 72, 8);
    *v12 = 1;
    *(v12 + 8) = "RenderGraphData";
    *(v12 + 16) = v11;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0;
    *(v12 + 40) = 3;
    *(v12 + 48) = 0;
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
    qword_1EE1C12C0 = v12;
    v13 = re::introspectionAllocator();
    v15 = re::introspect_BOOL(1, v14);
    v16 = (*(*v13 + 32))(v13, 72, 8);
    *v16 = 1;
    *(v16 + 8) = "forceClear";
    *(v16 + 16) = v15;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0x800000001;
    *(v16 + 40) = 0;
    *(v16 + 48) = 0;
    *(v16 + 56) = 0;
    *(v16 + 64) = 0;
    qword_1EE1C12C8 = v16;
    __cxa_guard_release(&qword_1EE1C1298);
  }

  *(this + 2) = 0x1000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1C12C0;
  *(this + 9) = re::internal::defaultConstruct<re::ForceClearData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ForceClearData>;
  *(this + 13) = re::internal::defaultConstructV2<re::ForceClearData>;
  *(this + 14) = re::internal::defaultDestructV2<re::ForceClearData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v17 = v19;
}

double re::getScopeRenderTargetDesc(re *this, const char *__s, const char *a3, re::RenderFrame *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = 0x9E3779B97F4A7C17;
  v9 = strlen(__s);
  if (v9)
  {
    MurmurHash3_x64_128(__s, v9, 0, &v25);
    v10 = (v26 - 0x61C8864680B583E9 + (v25 << 6) + (v25 >> 2)) ^ v25;
  }

  else
  {
    v10 = 0;
  }

  v11 = strlen(a3);
  if (v11)
  {
    MurmurHash3_x64_128(a3, v11, 0, &v25);
    v8 = ((v26 - 0x61C8864680B583E9 + (v25 << 6) + (v25 >> 2)) ^ v25) - 0x61C8864680B583E9;
  }

  v12 = (v10 >> 2) + (v10 << 6) + v8;
  v13 = re::RenderGraphDataStore::tryGet<re::CameraData>(a4 + 32, v12 ^ v10);
  v14 = re::RenderGraphDataStore::get<re::MXIFrameData>(a4 + 32, v12 ^ v10);
  __asm { FMOV            V0.2S, #1.0 }

  *(this + 44) = _D0;
  *(this + 52) = xmmword_1E30A3B60;
  *(this + 76) = -1;
  *(this + 21) = -1;
  v20 = v14[3].i32[0];
  *this = 0;
  *(this + 1) = v20;
  v21 = *(v13 + 890);
  if (v21 <= 1)
  {
    v22 = 2;
  }

  else
  {
    v22 = 3;
  }

  *(this + 2) = v22;
  v23 = *(*&v14[1] + 64);
  *(this + 104) = 0;
  *&result = *&vadd_s32(vcvt_u32_f32(vmaxnm_f32(vmul_n_f32(vcvt_f32_s32(v14[2]), v23), 0x4000000040000000)), 0xF0000000FLL) & 0xFFFFFFF0FFFFFFF0;
  *(this + 12) = result;
  *(this + 5) = 1;
  *(this + 6) = v21;
  *(this + 40) = 1;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 7) = 1;
  *(this + 8) = -1;
  *(this + 9) = 2;
  *(this + 17) = 5;
  *(this + 18) = 32;
  return result;
}

uint64_t re::MXIProvider::initProxyMeshPart(uint64_t this, id *a2, unsigned int a3, unsigned int a4)
{
  v74 = *MEMORY[0x1E69E9840];
  if (*(this + 96))
  {
    return this;
  }

  v5 = this;
  v62 = 0;
  if (a3 <= 2)
  {
    v6 = 2;
  }

  else
  {
    v6 = a3;
  }

  v59[1] = 0;
  v60 = 0;
  if (a4 <= 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = a4;
  }

  v59[0] = 0;
  v61 = 0;
  re::DynamicArray<re::NamedVertexBuffer>::setCapacity(v59, 2uLL);
  v8 = v7 - 1;
  v58 = 0;
  v55[1] = 0;
  v56 = 0;
  v9 = (v7 - 1) * (v6 - 1);
  v55[0] = 0;
  v57 = 0;
  re::DynamicArray<unsigned long>::resize(v55, v7 * v6);
  v10 = 0;
  v11 = 0;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      v13 = v10 + i;
      v14 = v56;
      if (v56 <= v13)
      {
        *v73 = 0;
        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        v67 = 0u;
        v30 = MEMORY[0x1E69E9C10];
        v31 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v64 = 136315906;
        *&v64[4] = "operator[]";
        *&v64[12] = 1024;
        if (v31)
        {
          v32 = 3;
        }

        else
        {
          v32 = 2;
        }

        *&v64[14] = 789;
        *&v64[18] = 2048;
        *&v64[20] = v13;
        v65 = 2048;
        *v66 = v14;
        _os_log_send_and_compose_impl(v32, v73, &v67, 80, &dword_1E1C61000, v30, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v64, 38, v51, v52);
        _os_crash_msg();
        __break(1u);
LABEL_52:
        v63 = 0;
        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        v67 = 0u;
        v33 = MEMORY[0x1E69E9C10];
        v34 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v73 = 136315906;
        *&v73[4] = "operator[]";
        *&v73[12] = 1024;
        if (v34)
        {
          v35 = 3;
        }

        else
        {
          v35 = 2;
        }

        *&v73[14] = 789;
        *&v73[18] = 2048;
        *&v73[20] = v13;
        *&v73[28] = 2048;
        *&v73[30] = v7;
        _os_log_send_and_compose_impl(v35, &v63, &v67, 80, &dword_1E1C61000, v33, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v73, 38, v51, v52);
        _os_crash_msg();
        __break(1u);
LABEL_56:
        v63 = 0;
        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        v67 = 0u;
        v36 = MEMORY[0x1E69E9C10];
        v37 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v73 = 136315906;
        *&v73[4] = "operator[]";
        *&v73[12] = 1024;
        if (v37)
        {
          v38 = 3;
        }

        else
        {
          v38 = 2;
        }

        *&v73[14] = 789;
        *&v73[18] = 2048;
        *&v73[20] = v13;
        *&v73[28] = 2048;
        *&v73[30] = v7;
        _os_log_send_and_compose_impl(v38, &v63, &v67, 80, &dword_1E1C61000, v36, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v73, 38, v51, v52);
        _os_crash_msg();
        __break(1u);
LABEL_60:
        v63 = 0;
        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        v67 = 0u;
        v39 = MEMORY[0x1E69E9C10];
        v40 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v73 = 136315906;
        *&v73[4] = "operator[]";
        *&v73[12] = 1024;
        if (v40)
        {
          v41 = 3;
        }

        else
        {
          v41 = 2;
        }

        *&v73[14] = 789;
        *&v73[18] = 2048;
        *&v73[20] = v13;
        *&v73[28] = 2048;
        *&v73[30] = v7;
        _os_log_send_and_compose_impl(v41, &v63, &v67, 80, &dword_1E1C61000, v39, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v73, 38, v51, v52);
        _os_crash_msg();
        __break(1u);
LABEL_64:
        v63 = 0;
        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        v67 = 0u;
        v42 = MEMORY[0x1E69E9C10];
        v43 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v73 = 136315906;
        *&v73[4] = "operator[]";
        *&v73[12] = 1024;
        if (v43)
        {
          v44 = 3;
        }

        else
        {
          v44 = 2;
        }

        *&v73[14] = 789;
        *&v73[18] = 2048;
        *&v73[20] = v13;
        *&v73[28] = 2048;
        *&v73[30] = v7;
        _os_log_send_and_compose_impl(v44, &v63, &v67, 80, &dword_1E1C61000, v42, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v73, 38, v51, v52);
        _os_crash_msg();
        __break(1u);
LABEL_68:
        v63 = 0;
        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        v67 = 0u;
        v45 = MEMORY[0x1E69E9C10];
        v46 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v73 = 136315906;
        *&v73[4] = "operator[]";
        *&v73[12] = 1024;
        if (v46)
        {
          v47 = 3;
        }

        else
        {
          v47 = 2;
        }

        *&v73[14] = 789;
        *&v73[18] = 2048;
        *&v73[20] = v13;
        *&v73[28] = 2048;
        *&v73[30] = v7;
        _os_log_send_and_compose_impl(v47, &v63, &v67, 80, &dword_1E1C61000, v45, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v73, 38, v51, v52);
        _os_crash_msg();
        __break(1u);
LABEL_72:
        v63 = 0;
        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        v67 = 0u;
        v48 = MEMORY[0x1E69E9C10];
        v49 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v73 = 136315906;
        *&v73[4] = "operator[]";
        *&v73[12] = 1024;
        if (v49)
        {
          v50 = 3;
        }

        else
        {
          v50 = 2;
        }

        *&v73[14] = 789;
        *&v73[18] = 2048;
        *&v73[20] = v13;
        *&v73[28] = 2048;
        *&v73[30] = v7;
        _os_log_send_and_compose_impl(v50, &v63, &v67, 80, &dword_1E1C61000, v48, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v73, 38, v51, v52);
        _os_crash_msg();
        __break(1u);
LABEL_76:
        re::internal::assertLog(4, v17, "assertion failure: '%s' (%s:line %i) only support up to 2^16 - 1 indices", "numQuads * 6 < 0xFFFF", "initProxyMeshPart", 186);
        _os_crash("assertion failure: (numQuads * 6 < 0xFFFF) only support up to 2^16 - 1 indices");
        __break(1u);
      }

      *&v15 = ((i / (v6 - 1)) * 2.4) + -1.2;
      *(&v15 + 1) = ((v11 / (v7 - 1)) * 2.4) + -1.2;
      *(v58 + 8 * v13) = v15;
    }

    ++v11;
    v10 += v6;
  }

  while (v11 != v7);
  v16 = [a2[26] newBufferWithBytes:v58 length:8 * v56 options:0];
  LOWORD(v69) = 285;
  *(&v69 + 1) = v16;
  LODWORD(v71) = 0;
  DWORD2(v71) = 0;
  HIDWORD(v71) = [(_anonymous_namespace_ *)v16 length];
  v72 = 0xFFFFFFFF00000000;
  re::DynamicArray<re::NamedVertexBuffer>::add(v59, &v67);
  if (v71 != -1)
  {
    (off_1F5D153C8[v71])(v64, &v69 + 8);
  }

  LODWORD(v71) = -1;
  if (v67 && (BYTE8(v67) & 1) != 0)
  {
    (*(*v67 + 40))();
  }

  if (v16)
  {
  }

  *&v66[2] = 0;
  memset(v64, 0, sizeof(v64));
  re::DynamicArray<unsigned short>::resize(v64, 6 * v9);
  if (v9 > 10922)
  {
    goto LABEL_76;
  }

  v18 = 0;
  v19 = 0;
  v7 = *&v64[16];
  v20 = 1;
  do
  {
    v21 = 0;
    ++v19;
    v22 = *&v66[2];
    v23 = v20;
    do
    {
      v13 = v18 + v21;
      if (v7 <= v13)
      {
        goto LABEL_52;
      }

      *(v22 + 2 * v13) = v23 - 1;
      v13 = v18 + v21 + 1;
      if (v7 <= v13)
      {
        goto LABEL_56;
      }

      *(v22 + 2 * v13) = v6 + v23 - 1;
      v13 = v18 + v21 + 2;
      if (v7 <= v13)
      {
        goto LABEL_60;
      }

      *(v22 + 2 * v13) = v6 + v23;
      v13 = v18 + v21 + 3;
      if (v7 <= v13)
      {
        goto LABEL_64;
      }

      *(v22 + 2 * v13) = v23 - 1;
      v13 = v18 + v21 + 4;
      if (v7 <= v13)
      {
        goto LABEL_68;
      }

      *(v22 + 2 * v13) = v6 + v23;
      v13 = v18 + v21 + 5;
      if (v7 <= v13)
      {
        goto LABEL_72;
      }

      *(v22 + 2 * v13) = v23;
      v21 += 6;
      ++v23;
    }

    while (6 * (v6 - 1) != v21);
    v20 += v6;
    v18 += 6 * v6 - 6;
  }

  while (v19 != v8);
  v24 = [a2[26] newBufferWithBytes_length_options_];
  LOWORD(v69) = 49;
  *(&v69 + 1) = v24;
  LODWORD(v71) = 0;
  DWORD2(v71) = 0;
  HIDWORD(v71) = [(_anonymous_namespace_ *)v24 length];
  v72 = 0xFFFFFFFF00000000;
  re::DynamicArray<re::NamedVertexBuffer>::add(v59, &v67);
  if (v71 != -1)
  {
    (off_1F5D153C8[v71])(v73, &v69 + 8);
  }

  LODWORD(v71) = -1;
  v25 = v67;
  if (v67 && (BYTE8(v67) & 1) != 0)
  {
    v25 = (*(*v67 + 40))();
  }

  if (v24)
  {
  }

  v26.i64[0] = 0x7F0000007FLL;
  v26.i64[1] = 0x7F0000007FLL;
  *v73 = vnegq_f32(v26);
  *&v73[16] = v26;
  v27 = re::globalAllocators(v25);
  v28 = (*(*v27[2] + 32))(v27[2], 544, 16);
  v53 = 0x9D2E0E4D76250F84;
  v54 = "FullscreenQuad";
  v67 = xmmword_1E3047670;
  v68 = xmmword_1E3047680;
  v69 = xmmword_1E30476A0;
  v70 = xmmword_1E30474D0;
  WORD2(v63) = 0;
  LODWORD(v63) = 0;
  v29 = re::MeshPart::MeshPart(v28, &v53, 0, v62, v60, *&v64[16], v56, 1, v73, 0, &v67, &v63, -1, 0);
  *(v5 + 96) = v29;
  if (v53)
  {
    if (v53)
    {
    }
  }

  v53 = 0;
  v54 = &str_67;
  if (*v64 && *&v66[2])
  {
    (*(**v64 + 40))();
  }

  if (v55[0])
  {
    if (v58)
    {
      (*(*v55[0] + 40))();
    }
  }

  return re::DynamicArray<re::NamedVertexBuffer>::deinit(v59);
}

unint64_t re::MXIProvider::prepareFrame(re::MXIProvider *this, char *__s, const char *a3, re::RenderFrame *a4)
{
  v70 = *MEMORY[0x1E69E9840];
  v7 = strlen(__s);
  if (v7)
  {
    MurmurHash3_x64_128(__s, v7, 0, v64);
    v8 = (*&v64[8] - 0x61C8864680B583E9 + (*v64 << 6) + (*v64 >> 2)) ^ *v64;
  }

  else
  {
    v8 = 0;
  }

  v9 = strlen(a3);
  v10 = 0x9E3779B97F4A7C17;
  if (v9)
  {
    MurmurHash3_x64_128(a3, v9, 0, v64);
    v10 = ((*&v64[8] - 0x61C8864680B583E9 + (*v64 << 6) + (*v64 >> 2)) ^ *v64) - 0x61C8864680B583E9;
  }

  v11 = ((v8 >> 2) + (v8 << 6) + v10) ^ v8;
  v12 = re::RenderGraphDataStore::get<re::MXIFrameData>(a4 + 32, v11);
  v13 = *(v12 + 8);
  v14 = *(v13 + 40);
  v15 = *(v12 + 16);
  v16 = *(v12 + 20);
  v17 = re::AssetHandle::loadedAsset<re::MeshAsset>((v13 + 128));
  if (v17)
  {
    v18 = 32;
    if (*(v17 + 1264))
    {
      v18 = 608;
    }

    v19 = 0x9E3779B97F4A7C17;
    if (*(v17 + v18))
    {
      if (re::MeshAsset::partCountForModel(v17, 0) == 2)
      {
        v19 = 0x9E3779B97F4A7C18;
      }

      else
      {
        v19 = 0x9E3779B97F4A7C17;
      }
    }
  }

  else
  {
    v19 = 0x9E3779B97F4A7C17;
  }

  if (v15)
  {
    v20 = v16 == 0;
  }

  else
  {
    v20 = 1;
  }

  if (v20)
  {
    return 0;
  }

  re::getScopeRenderTargetDesc(v64, __s, a3, a4);
  v45 = v19;
  if (a3)
  {
    v22 = *a3;
    if (*a3)
    {
      v23 = a3[1];
      if (v23)
      {
        v24 = a3 + 2;
        do
        {
          v22 = 31 * v22 + v23;
          v25 = *v24++;
          v23 = v25;
        }

        while (v25);
      }

      v22 &= ~0x8000000000000000;
    }
  }

  else
  {
    v22 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v44 = v11;
  v62 = v22;
  v61 = 0;
  v26 = *(*a4 + 296);
  v27 = *&v64[4];
  if (*&v64[4] == 542)
  {
    *&v64[4] = 81;
  }

  v28 = 2 * v14;
  *v55 = re::kMXIOffscreenColorIDs[2 * v14] & 0x7FFFFFFFFFFFFFFFLL;
  v49 = 0x640458D72993A5BCLL;
  re::RenderGraphPersistentResourceManager::registerPersistentTexture(v26, &v62, v55, &v49, a4, v64, &v61);
  *&v64[4] = v27;
  v29 = v61;
  if (*(this + 40) == 1)
  {
    *v55 = *v64;
    *&v55[16] = *&v64[16];
    v58 = v67;
    v59 = v68;
    v60 = v69;
    v56 = v65;
    v57 = v66;
    *&v55[12] = vshr_n_u32(vadd_s32(*&v64[12], 0xF0000000FLL), 4uLL);
    DWORD1(v58) = 3;
    *&v55[4] = 115;
    v49 = *(&re::kMXIOffscreenDepthIDs + v28 * 8) & 0x7FFFFFFFFFFFFFFFLL;
    v63 = 0x640458D7299D411CLL;
    re::RenderGraphPersistentResourceManager::registerPersistentTexture(v26, &v62, &v49, &v63, a4, v55, &v61);
    v54 = xmmword_1E3062D70;
    v30 = *(v12 + 8);
    v31 = *(v30 + 96);
    v32 = *(v30 + 100);
    v29 |= v61;
    v52 = 0x203F800000;
    v53 = -1;
    v50 = ((v31 * 8.0) * v32);
    LODWORD(v49) = 2;
    v51 = 1;
    v63 = 0x27D6D33797FE5053;
    v47 = 0x27D6D33797FE5053;
    re::RenderGraphPersistentResourceManager::registerPersistentBuffer(v26, &v62, &v63, &v47, a4, &v49, &v48, 0);
    v50 = ((*(*(v12 + 8) + 96) * 4.0) * *(*(v12 + 8) + 100));
    v63 = 0x530399EAB9EE03DCLL;
    v47 = 0x530399EAB9EE03DCLL;
    re::RenderGraphPersistentResourceManager::registerPersistentBuffer(v26, &v62, &v63, &v47, a4, &v49, &v48, 0);
  }

  if (*(this + 45) == 1)
  {
    *v55 = *v64;
    *&v55[16] = *&v64[16];
    v58 = v67;
    v59 = v68;
    v60 = v69;
    v56 = v65;
    v57 = v66;
    *&v55[12] = 0x20000000200;
    DWORD1(v58) = 7;
    v49 = re::kMXIOffscreenLowResBlurIDs[v28] & 0x7FFFFFFFFFFFFFFFLL;
    v63 = 0x181C60D9AA2CF47ALL;
    re::RenderGraphPersistentResourceManager::registerPersistentTexture(v26, &v62, &v49, &v63, a4, v55, &v61);
    v33 = v61;
    *&v55[4] = 25;
    v49 = re::kMXIOffscreenLowResAlphaIDs[v28] & 0x7FFFFFFFFFFFFFFFLL;
    v63 = 0x6B6FBA5B9B636FABLL;
    re::RenderGraphPersistentResourceManager::registerPersistentTexture(v26, &v62, &v49, &v63, a4, v55, &v61);
    v34 = (v33 || v61) | v29 & 1;
    v49 = *(&re::kMXIOffscreenLowResDilateAlphaIDs + v28 * 8) & 0x7FFFFFFFFFFFFFFFLL;
    v63 = 0x1137AD08C56C3000;
    re::RenderGraphPersistentResourceManager::registerPersistentTexture(v26, &v62, &v49, &v63, a4, v55, &v61);
    v29 = (v34 | v61) != 0;
  }

  *v55 = &unk_1F5D153E8;
  v55[8] = v29 & 1;
  v55[9] = v29 & 1;
  v35 = "N2re20MXIReprojectionStateE";
  if (("N2re20MXIReprojectionStateE" & 0x8000000000000000) != 0)
  {
    v36 = ("N2re20MXIReprojectionStateE" & 0x7FFFFFFFFFFFFFFFLL);
    v37 = 5381;
    do
    {
      v35 = v37;
      v38 = *v36++;
      v37 = (33 * v37) ^ v38;
    }

    while (v38);
  }

  v49 = (v44 - 0x61C8864680B583E9 + (v35 << 6) + (v35 >> 2)) ^ v35;
  v39 = (*(**(a4 + 5) + 32))(*(a4 + 5), 16, 8);
  *v39 = &unk_1F5D153E8;
  *(v39 + 8) = *&v55[8];
  v63 = v39;
  re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a4 + 96, &v49, &v63);
  v49 = 0xE8B64BD28AB80FLL;
  v50 = "MXIProvider";
  ScopeHash = re::RenderGraphProviderBase::generateScopeHash(&v49, __s, a3);
  v41 = ((ScopeHash << 6) - 0x61C8864680B583E9 + (ScopeHash >> 2) + *&v64[24]) ^ ScopeHash;
  v42 = (*&v64[12] - 0x61C8864680B583E9 + (v41 << 6) + (v41 >> 2)) ^ v41;
  v43 = (*&v64[16] - 0x61C8864680B583E9 + (v42 << 6) + (v42 >> 2)) ^ v42;
  return (v45 + (v43 << 6) + (v43 >> 2)) ^ v43;
}

uint64_t re::MXIProvider::provide(re::MXIProvider *this, char *__s, const char *a3, re::RenderFrame *a4)
{
  v121 = *MEMORY[0x1E69E9840];
  v7 = 0x9E3779B97F4A7C17;
  v8 = strlen(__s);
  if (v8)
  {
    MurmurHash3_x64_128(__s, v8, 0, v108);
    v9 = (*&v108[8] - 0x61C8864680B583E9 + (*v108 << 6) + (*v108 >> 2)) ^ *v108;
  }

  else
  {
    v9 = 0;
  }

  v10 = strlen(a3);
  v11 = 0x9E3779B97F4A7C17;
  if (v10)
  {
    MurmurHash3_x64_128(a3, v10, 0, v108);
    v11 = ((*&v108[8] - 0x61C8864680B583E9 + (*v108 << 6) + (*v108 >> 2)) ^ *v108) - 0x61C8864680B583E9;
  }

  v77 = re::RenderGraphDataStore::get<re::MXIFrameData>(a4 + 32, ((v9 >> 2) + (v9 << 6) + v11) ^ v9);
  v12 = *(*(v77 + 8) + 40);
  if (a3)
  {
    v13 = *a3;
    if (*a3)
    {
      v14 = a3[1];
      if (v14)
      {
        v15 = a3 + 2;
        do
        {
          v13 = 31 * v13 + v14;
          v16 = *v15++;
          v14 = v16;
        }

        while (v16);
      }

      v7 = (v13 & 0x7FFFFFFFFFFFFFFFLL) - 0x61C8864680B583E9;
    }
  }

  else
  {
    v7 = 0x1E3779B97F4A7C16;
  }

  *&v108[4] = 0x200000000;
  *&v108[12] = -1;
  v109 = -1;
  v110 = -1;
  v112 = 0;
  __asm { FMOV            V0.2S, #1.0 }

  v113 = _D0;
  v114 = xmmword_1E30A3B60;
  v115 = 0x2000000000;
  v116 = -1;
  v117 = -1;
  v118 = -1;
  v120 = 0;
  v111 = 0;
  *v108 = 2;
  v22 = &re::kMXIOffscreenColorIDs[2 * v12];
  v23 = v22[1];
  v119 = (v7 + (*v22 << 6) + ((*v22 & 0x7FFFFFFFFFFFFFFFuLL) >> 2)) ^ *v22 & 0x7FFFFFFFFFFFFFFFLL;
  re::RenderFrame::createTarget(&v89, a4, v108, v23);
  if (*(this + 40) == 1)
  {
    v24 = (&re::kMXIOffscreenDepthIDs + 16 * v12);
    v25 = v24[1];
    v119 = (v7 + (*v24 << 6) + ((*v24 & 0x7FFFFFFFFFFFFFFFuLL) >> 2)) ^ *v24 & 0x7FFFFFFFFFFFFFFFLL;
    re::RenderFrame::createTarget(v100, a4, v108, v25);
    v80 = *v100;
    v81 = *&v100[12];
    v78 = *&v100[8];
    re::getScopeRenderTargetDesc(v100, __s, a3, a4);
    *&v100[4] = 25;
    *&v101[12] = 3;
    v103 = 48;
    re::RenderFrame::createTarget(v97, a4, v100, "depthAsColor[1]");
    v73 = *v97;
    *&v97[20] = 1065353216;
    v71 = *&v97[12];
    v72 = *&v97[8];
    *&v97[8] = -1;
    v97[16] = 0;
    *&v97[24] = 0xFFFFFFFF00000020;
    *v97 = 2;
    v98 = -1;
    v99 = (v7 - 0x557D4C1A6C572CLL) ^ 0x27D6D33797FE5053;
    re::RenderFrame::createBuffer(v96, a4, v97, "mxiAlphaBuff");
    v76 = *&v96[0];
    v74 = HIDWORD(v96[0]);
    v75 = DWORD2(v96[0]);
    *v97 = 2;
    v99 = (v7 - 0x2A589ED6D6038809) ^ 0x530399EAB9EE03DCLL;
    re::RenderFrame::createBuffer(v96, a4, v97, "mxiAtomicBuff");
    v66 = *&v96[0];
    v64 = HIDWORD(v96[0]);
    v65 = DWORD2(v96[0]);
  }

  else
  {
    v66 = 0;
    v76 = 0;
    v73 = 0;
    v80 = 0;
    v64 = -1;
    v65 = -1;
    v74 = -1;
    v75 = -1;
    v71 = -1;
    v72 = -1;
    v78 = -1;
    v81 = -1;
  }

  if (*(this + 45) == 1)
  {
    v26 = &re::kMXIOffscreenLowResBlurIDs[2 * v12];
    v27 = v26[1];
    v119 = (v7 + (*v26 << 6) + ((*v26 & 0x7FFFFFFFFFFFFFFFuLL) >> 2)) ^ *v26 & 0x7FFFFFFFFFFFFFFFLL;
    re::RenderFrame::createTarget(v100, a4, v108, v27);
    v70 = *v100;
    v69 = *&v100[8];
    v28 = &re::kMXIOffscreenLowResAlphaIDs[2 * v12];
    v29 = v28[1];
    v119 = (v7 + (*v28 << 6) + ((*v28 & 0x7FFFFFFFFFFFFFFFuLL) >> 2)) ^ *v28 & 0x7FFFFFFFFFFFFFFFLL;
    re::RenderFrame::createTarget(v100, a4, v108, v29);
    v68 = *v100;
    v67 = *&v100[8];
    v30 = (&re::kMXIOffscreenLowResDilateAlphaIDs + 16 * v12);
    v31 = v30[1];
    v119 = (v7 + (*v30 << 6) + ((*v30 & 0x7FFFFFFFFFFFFFFFuLL) >> 2)) ^ *v30 & 0x7FFFFFFFFFFFFFFFLL;
    re::RenderFrame::createTarget(v100, a4, v108, v31);
    if (*(this + 42) == 1)
    {
      re::getScopeRenderTargetDesc(v100, __s, a3, a4);
      *&v100[12] = 0x20000000200;
      *&v100[4] = 253;
      *&v101[12] = 3;
      v103 = 48;
      *&v101[36] = 2;
      re::RenderFrame::createTarget(v97, a4, v100, "LowResStencil");
    }
  }

  else
  {
    v68 = 0;
    v70 = 0;
    v67 = -1;
    v69 = -1;
  }

  v32 = re::AssetHandle::loadedAsset<re::MeshAsset>((*(v77 + 8) + 128));
  if (!v32)
  {
    goto LABEL_26;
  }

  v33 = 32;
  if (*(v32 + 1264))
  {
    v33 = 608;
  }

  if (*(v32 + v33))
  {
    v87 = 0;
    v88 = -1;
    if (re::MeshAsset::partCountForModel(v32, 0) == 2)
    {
      re::getScopeRenderTargetDesc(v100, __s, a3, a4);
      *&v100[4] = 252;
      *&v101[12] = 3;
      v103 = 48;
      *&v101[36] = 2;
      re::RenderFrame::createTarget(&v87, a4, v100, "Depth");
      v82 = 1;
    }

    else
    {
      v82 = 0;
    }
  }

  else
  {
LABEL_26:
    v82 = 0;
    v87 = 0;
    v88 = -1;
  }

  v85 = 0;
  v86 = -1;
  if (*(this + 42) == 1)
  {
    re::getScopeRenderTargetDesc(v100, __s, a3, a4);
    *&v100[4] = 253;
    *&v101[12] = 3;
    v103 = 48;
    *&v101[36] = 2;
    re::RenderFrame::createTarget(&v85, a4, v100, "Stencil");
  }

  RenderGraph = re::RenderFrame::makeRenderGraph(a4, a3, 0);
  v35 = RenderGraph;
  memset(&v97[8], 0, 18);
  memset(v96 + 8, 0, 18);
  v79 = RenderGraph;
  if (*(this + 42) == 1)
  {
    v36 = re::RenderGraph::addNode<re::MXIOffscreenMeshNode>(RenderGraph, "MXIOffscreenStencil");
    *v100 = "MXIStencil";
    *&v100[8] = 10;
    re::DynamicString::operator=((v36 + 272), v100);
    *(v36 + 304) = 2;
    v37 = re::RenderFrame::tryGetData<re::VRRData>(a4, __s, a3);
    if (v37 && *(v37 + 12) == 1)
    {
      *(v36 + 67) = 1;
    }

    *v100 = v89;
    *&v100[16] = 0x100000000;
    *v101 = *v97;
    *&v101[10] = *&v97[10];
    *&v101[28] = 0;
    re::DynamicArray<re::TargetWrite>::add((v36 + 224), v100);
    *v100 = v85;
    *&v100[8] = v86;
    *&v100[16] = 0x300000000;
    *&v101[8] = 0;
    *&v101[24] = 0;
    *&v101[28] = 0;
    re::DynamicArray<re::TargetWrite>::add((v36 + 224), v100);
    if (v82)
    {
      *v100 = v87;
      *&v100[8] = v88;
      *&v100[16] = 0x200000000;
      *&v101[8] = xmmword_1E30474D0;
      *&v101[24] = 0;
      *&v101[32] = 0;
      *&v101[28] = 0;
      re::DynamicArray<re::TargetWrite>::add((v36 + 224), v100);
    }

    if ((*(v36 + 308) & 1) == 0)
    {
      *(v36 + 308) = 1;
    }

    *(v36 + 309) = xmmword_1E3108860;
    *(v36 + 325) = 1 << v12;
    re::RenderGraphNode::configure(v36, __s, a3, a4);
    v35 = v79;
  }

  if (v82)
  {
    v38 = re::RenderGraph::addNode<re::MXIOffscreenMeshNode>(v35, "MXIOffscreenOpaque");
    *v100 = v89;
    *&v100[16] = 0x100000000;
    *v101 = *v97;
    *&v101[10] = *&v97[10];
    *&v101[32] = 0;
    *&v101[28] = 0;
    re::DynamicArray<re::TargetWrite>::add((v38 + 224), v100);
    if (*(this + 42) == 1)
    {
      *v100 = v85;
      *&v100[8] = v86;
      *&v100[16] = 0x300000000;
      *&v101[12] = v94;
      *&v101[8] = 0;
      *&v101[20] = v95;
      *&v101[24] = 0;
      *&v101[32] = 0;
      *&v101[28] = 0;
      re::DynamicArray<re::TargetWrite>::add((v38 + 224), v100);
      if ((*(v38 + 308) & 1) == 0)
      {
        *(v38 + 308) = 1;
      }

      *(v38 + 309) = 33619713;
      *(v38 + 317) = 33619713;
      *(v38 + 325) = 1 << v12;
    }

    if (*(this + 40) == 1)
    {
      *v100 = v73;
      *&v100[8] = __PAIR64__(v71, v72);
      *&v100[16] = 0x100000001;
      *v101 = v96[0];
      *&v101[10] = *(v96 + 10);
      *&v101[28] = 0;
      re::DynamicArray<re::TargetWrite>::add((v38 + 224), v100);
      *v100 = v80;
      *&v100[8] = __PAIR64__(v81, v78);
      *&v100[16] = 0x500000002;
      *&v101[8] = xmmword_1E30474D0;
      *&v101[24] = 0;
      *&v101[28] = 0;
      re::DynamicArray<re::TargetWrite>::add((v38 + 224), v100);
    }

    *v100 = v87;
    *&v100[8] = v88;
    *&v100[16] = 0x200000000;
    *&v101[8] = xmmword_1E30474D0;
    *&v101[24] = 0;
    *&v101[32] = 0;
    *&v101[28] = 0;
    re::DynamicArray<re::TargetWrite>::add((v38 + 224), v100);
    v39 = re::RenderFrame::tryGetData<re::VRRData>(a4, __s, a3);
    if (v39 && *(v39 + 12) == 1)
    {
      *(v38 + 67) = 1;
    }

    if (*(this + 43))
    {
      v40 = "MXIEdgeProximityOpaque";
    }

    else
    {
      v40 = "MXIOffscreenOpaque";
    }

    v41 = 18;
    if (*(this + 43))
    {
      v41 = 22;
    }

    *v100 = v40;
    *&v100[8] = v41;
    re::DynamicString::operator=((v38 + 272), v100);
    re::RenderGraphNode::configure(v38, __s, a3, a4);
    v35 = v79;
  }

  v42 = re::RenderGraph::addNode<re::MXIOffscreenMeshNode>(v35, "MXIOffscreen");
  *v100 = v89;
  *&v100[16] = 0x100000000;
  *v101 = *v97;
  *&v101[10] = *&v97[10];
  *&v101[32] = 0;
  *&v101[28] = 0;
  re::DynamicArray<re::TargetWrite>::add((v42 + 224), v100);
  if (*(this + 42) == 1)
  {
    *v100 = v85;
    *&v100[8] = v86;
    *&v100[16] = 0x300000000;
    *&v101[12] = v94;
    *&v101[8] = 0;
    *&v101[20] = v95;
    *&v101[24] = 0;
    *&v101[32] = 0;
    *&v101[28] = 0;
    re::DynamicArray<re::TargetWrite>::add((v42 + 224), v100);
    if ((*(v42 + 308) & 1) == 0)
    {
      *(v42 + 308) = 1;
    }

    *(v42 + 309) = 33619713;
    *(v42 + 317) = 33619713;
    *(v42 + 325) = 1 << v12;
    v35 = v79;
  }

  if (*(this + 40) == 1)
  {
    *v100 = v73;
    *&v100[8] = __PAIR64__(v71, v72);
    *&v100[16] = 0x100000001;
    *v101 = v96[0];
    *&v101[10] = *(v96 + 10);
    *&v101[28] = 0;
    re::DynamicArray<re::TargetWrite>::add((v42 + 224), v100);
    *v100 = v80;
    *&v100[8] = __PAIR64__(v81, v78);
    *&v100[16] = 0x500000002;
    *&v101[8] = xmmword_1E30474D0;
    *&v101[24] = 0;
    *&v101[28] = 0;
    re::DynamicArray<re::TargetWrite>::add((v42 + 224), v100);
  }

  if (v82)
  {
    *v100 = v87;
    *&v100[8] = v88;
    *&v100[16] = 0x200000000;
    *&v101[8] = xmmword_1E30474D0;
    *&v101[24] = 0;
    *&v101[32] = 0;
    *&v101[28] = 0;
    re::DynamicArray<re::TargetWrite>::add((v42 + 224), v100);
  }

  v43 = re::RenderFrame::tryGetData<re::VRRData>(a4, __s, a3);
  v44 = v43;
  if (v43 && *(v43 + 12) == 1)
  {
    *(v42 + 67) = 1;
  }

  if (*(this + 43))
  {
    v45 = "MXIEdgeProximity";
  }

  else
  {
    v45 = "MXIOffscreen";
  }

  v46 = 12;
  if (*(this + 43))
  {
    v46 = 16;
  }

  *v100 = v45;
  *&v100[8] = v46;
  re::DynamicString::operator=((v42 + 272), v100);
  *(v42 + 304) = 0;
  re::RenderGraphNode::configure(v42, __s, a3, a4);
  if (*(this + 40) == 1)
  {
    v48 = re::globalAllocators(v47);
    v49 = (*(*v48[2] + 32))(v48[2], 448, 16);
    v50 = re::RenderGraphMRCNode::RenderGraphMRCNode(v49, "MXIDepthResolve");
    *v50 = &unk_1F5D16698;
    *v100 = v50;
    re::DynamicArray<re::TransitionCondition *>::add(v35, v100);
    *(v49 + 24) = *(v35 + 10);
    *(v49 + 32) = *(v35 + 12);
    *(v49 + 48) = *(v35 + 13);
    re::AssetHandle::operator=(v49 + 264, this + 6);
    *v100 = "kernelDepthFilter16FitPlane";
    *&v100[8] = 27;
    re::DynamicString::operator=((v49 + 288), v100);
    *v100 = v89;
    *v101 = 0xA00000002;
    re::DynamicArray<re::TargetRead>::add((v49 + 184), v100);
    *v100 = v73;
    *&v100[8] = __PAIR64__(v71, v72);
    *&v100[16] = 1;
    *&v100[20] = 0;
    v100[22] = 0;
    *v101 = 0xA00000002;
    re::DynamicArray<re::TargetRead>::add((v49 + 184), v100);
    *v100 = v89;
    *&v100[16] = 0x100000000;
    *v101 = *v97;
    *&v101[10] = *&v97[10];
    *&v101[28] = 0;
    re::DynamicArray<re::TargetWrite>::add((v49 + 224), v100);
    *v100 = v73;
    *&v100[8] = __PAIR64__(v71, v72);
    *&v100[16] = 0x100000001;
    *v101 = v96[0];
    *&v101[10] = *(v96 + 10);
    *&v101[28] = 0;
    re::DynamicArray<re::TargetWrite>::add((v49 + 224), v100);
    if (v82)
    {
      *v100 = v87;
      *&v100[8] = v88;
      *&v100[16] = 0x200000000;
      *&v101[8] = xmmword_1E30474D0;
      *&v101[24] = 0;
      *&v101[32] = 0;
      *&v101[28] = 0;
      re::DynamicArray<re::TargetWrite>::add((v49 + 224), v100);
    }

    *v100 = v80;
    *&v100[8] = __PAIR64__(v81, v78);
    *&v100[16] = 0x500000002;
    *&v101[8] = xmmword_1E30474D0;
    *&v101[24] = 0;
    *&v101[32] = 0;
    *&v101[28] = 0;
    re::DynamicArray<re::TargetWrite>::add((v49 + 224), v100);
    if (v44 && *(v44 + 12) == 1)
    {
      *(v49 + 67) = 1;
    }

    *(v49 + 336) = 0x1000000010;
    *(v49 + 344) = 0;
    *v100 = 0x40000000000;
    re::DynamicArray<re::RenderGraphResourceAllocationManager::TextureIndexAndStage>::add((v49 + 352), v100);
    re::AssetHandle::loadNow(*(v49 + 272), 0);
    re::RenderGraphNode::configure(v49, __s, a3, a4);
    v51 = re::RenderGraph::addNode<re::MXIAlphaComputeNode>(v35, "MXIZeroAlphaBuffer");
    re::AssetHandle::operator=(v51 + 264, this + 6);
    *v100 = "kernelComputeVertexDepthAndZeroEdgeValue";
    *&v100[8] = 40;
    re::DynamicString::operator=((v51 + 288), v100);
    v52 = *(v77 + 8);
    *(v51 + 109) = *(v52 + 96);
    *(v51 + 55) = 0x100000008;
    *(v51 + 106) = 1;
    *(v51 + 107) = ((*(v52 + 100) + 7.0) * 0.125);
    *(v51 + 108) = 1;
    *v100 = v80;
    *&v100[8] = __PAIR64__(v81, v78);
    *v101 = 2;
    re::DynamicArray<re::TargetRead>::add((v51 + 184), v100);
    *v100 = v76;
    *&v100[8] = __PAIR64__(v74, v75);
    *&v100[16] = 0x500000001;
    *&v101[8] = xmmword_1E30474D0;
    *&v101[24] = 0;
    *&v101[28] = 0;
    re::DynamicArray<re::TargetWrite>::add((v51 + 144), v100);
    *v100 = v66;
    *&v100[8] = __PAIR64__(v64, v65);
    *&v100[16] = 0x500000004;
    *&v101[8] = xmmword_1E30474D0;
    *&v101[24] = 0;
    *&v101[28] = 0;
    re::DynamicArray<re::TargetWrite>::add((v51 + 144), v100);
    re::RenderGraphComputeNodeBase::configure(v51, __s, a3, a4);
    v53 = re::RenderGraph::addNode<re::MXIAlphaComputeNode>(v79, "MXIPopulateAlphaBuffer");
    re::AssetHandle::operator=(v53 + 264, this + 6);
    *v100 = "kernelComputeEdgeValue";
    *&v100[8] = 22;
    re::DynamicString::operator=((v53 + 288), v100);
    v54 = *(v77 + 8);
    *(v53 + 109) = (*(v54 + 96) + -1.0);
    *(v53 + 55) = 0x100000008;
    *(v53 + 106) = 1;
    *(v53 + 107) = (((*(v54 + 100) + -1.0) + 7.0) * 0.125);
    *(v53 + 108) = 1;
    *v100 = v80;
    v35 = v79;
    *&v100[8] = __PAIR64__(v81, v78);
    *v101 = 2;
    re::DynamicArray<re::TargetRead>::add((v53 + 184), v100);
    *v100 = v66;
    *&v100[8] = __PAIR64__(v64, v65);
    *&v100[16] = 0x500000001;
    *&v101[8] = xmmword_1E30474D0;
    *&v101[24] = 0;
    *&v101[28] = 0;
    re::DynamicArray<re::TargetWrite>::add((v53 + 144), v100);
    re::RenderGraphComputeNodeBase::configure(v53, __s, a3, a4);
    v55 = re::RenderGraph::addNode<re::MXIAlphaComputeNode>(v79, "MXIDilateAlphaBuffer");
    re::AssetHandle::operator=(v55 + 264, this + 6);
    *v100 = "kernelDilateEdgeValues";
    *&v100[8] = 22;
    re::DynamicString::operator=((v55 + 288), v100);
    v56 = *(v77 + 8);
    *(v55 + 109) = *(v56 + 96);
    *(v55 + 55) = 0x100000008;
    *(v55 + 106) = 1;
    *(v55 + 107) = ((*(v56 + 100) + 7.0) * 0.125);
    *(v55 + 108) = 1;
    *v100 = v66;
    *&v100[8] = __PAIR64__(v64, v65);
    *v101 = 2;
    re::DynamicArray<re::TargetRead>::add((v55 + 104), v100);
    *v100 = v76;
    *&v100[8] = __PAIR64__(v74, v75);
    *&v100[16] = 0x500000001;
    *&v101[8] = xmmword_1E30474D0;
    *&v101[24] = 0;
    *&v101[28] = 0;
    re::DynamicArray<re::TargetWrite>::add((v55 + 144), v100);
    v47 = re::RenderGraphComputeNodeBase::configure(v55, __s, a3, a4);
  }

  if (*(this + 44) == 1)
  {
    v57 = re::RenderGraph::addNode<re::MXIOffscreenMeshNode>(v35, "MXIOffscreenTreatments");
    v84 = 0uLL;
    v100[0] = 0;
    re::RenderGraphMeshNodeBase::setColorAttachment(v57, 0, &v89, &v84, 0, v100);
    if (v82)
    {
      v100[0] = 0;
      re::RenderGraphMeshNodeBase::setDepthOnlyAttachment(v57, &v87, 0, v100, 0.0);
    }

    *v100 = "MXITreatments";
    *&v100[8] = 13;
    re::DynamicString::operator=((v57 + 272), v100);
    *(v57 + 304) = 2;
    if (v44 && *(v44 + 12) == 1)
    {
      *(v57 + 67) = 1;
    }

    if (*(this + 42) == 1)
    {
      v100[0] = 0;
      re::RenderGraphMeshNodeBase::setStencilOnlyAttachment(v57, &v85, 0, 0, v100);
      if ((*(v57 + 308) & 1) == 0)
      {
        *(v57 + 308) = 1;
      }

      *(v57 + 309) = 33619713;
      *(v57 + 317) = 33619713;
      *(v57 + 325) = 1 << v12;
      v35 = v79;
    }

    re::RenderGraphNode::configure(v57, __s, a3, a4);
  }

  v58 = re::globalAllocators(v47);
  v59 = v58[2];
  v93[0] = &unk_1F5D15428;
  v93[3] = v59;
  v93[4] = v93;
  *v100 = v12;
  *&v100[8] = v89;
  *v101 = this;
  *&v101[8] = v70;
  *&v101[16] = v69;
  *&v101[24] = v68;
  *&v101[32] = v67;
  v102 = v80;
  v103 = v78;
  v104 = v81;
  v105 = v76;
  v106 = v75;
  v107 = v74;
  v60 = re::globalAllocators(v58)[2];
  v91 = v60;
  if (v60)
  {
    v60 = (*(*v60 + 32))(v60, 104, 0);
  }

  re::internal::Callable<re::MXIProvider::provide(char const*,char const*,re::RenderFrame &)::$_1,void ()(re::RenderGraphContext &)>::Callable(v60, v100);
  v92 = v61;
  v62 = re::RenderGraph::addNode(v35, "MXIProvideTextures", v93, v90);
  re::FunctionBase<24ul,void ()(re::RenderGraphContext &)>::destroyCallable(v90);
  re::FunctionBase<24ul,void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::destroyCallable(v93);
  return (*(*v62 + 80))(v62, __s, a3, a4);
}

uint64_t re::RenderFrame::tryGetData<re::VRRData>(uint64_t a1, char *__s, const char *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = 0x9E3779B97F4A7C17;
  v7 = strlen(__s);
  if (v7)
  {
    MurmurHash3_x64_128(__s, v7, 0, &v11);
    v8 = (v12 - 0x61C8864680B583E9 + (v11 << 6) + (v11 >> 2)) ^ v11;
  }

  else
  {
    v8 = 0;
  }

  v9 = strlen(a3);
  if (v9)
  {
    MurmurHash3_x64_128(a3, v9, 0, &v11);
    v6 = ((v12 - 0x61C8864680B583E9 + (v11 << 6) + (v11 >> 2)) ^ v11) - 0x61C8864680B583E9;
  }

  return re::RenderGraphDataStore::tryGet<re::VRRData>(a1 + 32, ((v8 >> 2) + (v8 << 6) + v6) ^ v8);
}

re::RenderGraphComputeNodeBase *re::RenderGraph::addNode<re::MXIAlphaComputeNode>(re *a1, const char *a2)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 496, 16);
  v6 = re::RenderGraphComputeNodeBase::RenderGraphComputeNodeBase(v5, a2);
  *v6 = &unk_1F5D167F8;
  v10 = v6;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v10);
  v7 = *(a1 + 12);
  v8 = *(a1 + 13);
  *(v5 + 3) = *(a1 + 10);
  *(v5 + 4) = v7;
  *(v5 + 6) = v8;
  return v5;
}

void re::MXIProvider::~MXIProvider(re::MXIProvider *this)
{
  re::MXIProvider::~MXIProvider(this);

  JUMPOUT(0x1E6906520);
}

{
  re::AssetHandle::~AssetHandle((this + 72));
  re::AssetHandle::~AssetHandle((this + 48));
  *this = &unk_1F5CC5700;
  re::DynamicString::deinit((this + 8));
}

void *re::internal::Callable<re::MXIProvider::provide(char const*,char const*,re::RenderFrame &)::$_0,void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D15428;
  return result;
}

void *re::internal::Callable<re::MXIProvider::provide(char const*,char const*,re::RenderFrame &)::$_0,void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D15428;
  return result;
}

double re::internal::Callable<re::MXIProvider::provide(char const*,char const*,re::RenderFrame &)::$_1,void ()(re::RenderGraphContext &)>::Callable(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5D15480;
  *(a1 + 16) = 0;
  *(a1 + 24) = -1;
  *(a1 + 8) = *a2;
  *(a1 + 24) = *(a2 + 16);
  *(a1 + 40) = 0;
  *(a1 + 48) = -1;
  v2 = *(a2 + 32);
  *(a1 + 32) = *(a2 + 24);
  *(a1 + 40) = v2;
  *(a1 + 48) = *(a2 + 40);
  *(a1 + 56) = 0;
  *(a1 + 64) = -1;
  *(a1 + 56) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 56);
  *(a1 + 72) = 0;
  *(a1 + 80) = -1;
  *(a1 + 72) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 72);
  *(a1 + 88) = 0;
  *(a1 + 96) = -1;
  *(a1 + 88) = *(a2 + 80);
  result = *(a2 + 88);
  *(a1 + 96) = result;
  return result;
}

void re::internal::Callable<re::MXIProvider::provide(char const*,char const*,re::RenderFrame &)::$_1,void ()(re::RenderGraphContext &)>::operator()(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 32);
  v5 = *a2;
  v12 = re::kMXIOffscreenColorIDs[2 * *(a1 + 8)] & 0x7FFFFFFFFFFFFFFFLL;
  re::RenderGraphContext::metalTexture(a2, a1 + 16, 0, 1, &v11);
  re::DynamicTextureTableAdd((v5 + 368), &v12, &v11);
  if (v11)
  {
  }

  if (*(v4 + 45) == 1)
  {
    v6 = *a2;
    v12 = re::kMXIOffscreenLowResBlurIDs[2 * *(a1 + 8)] & 0x7FFFFFFFFFFFFFFFLL;
    re::RenderGraphContext::metalTexture(a2, a1 + 40, 0, 1, &v11);
    re::DynamicTextureTableAdd((v6 + 368), &v12, &v11);
    if (v11)
    {
    }

    v7 = *a2;
    v12 = re::kMXIOffscreenLowResAlphaIDs[2 * *(a1 + 8)] & 0x7FFFFFFFFFFFFFFFLL;
    re::RenderGraphContext::metalTexture(a2, a1 + 56, 0, 1, &v11);
    re::DynamicTextureTableAdd((v7 + 368), &v12, &v11);
    if (v11)
    {
    }
  }

  if (*(v4 + 40) == 1)
  {
    v8 = *a2;
    v12 = re::kMxiDepthRenderGraphIDs[2 * *(a1 + 8)] & 0x7FFFFFFFFFFFFFFFLL;
    re::RenderGraphContext::metalTexture(a2, a1 + 72, 0, 1, &v11);
    re::DynamicTextureTableAdd((v8 + 368), &v12, &v11);
    if (v11)
    {
    }

    v9 = *a2;
    v12 = 0x27D6D33797FE5053;
    v10 = re::RenderGraphContext::metalBuffer(a2, a1 + 88);
    re::BufferTable::setBuffer((v9 + 480), &v12, v10);
  }
}

uint64_t re::internal::Callable<re::MXIProvider::provide(char const*,char const*,re::RenderFrame &)::$_1,void ()(re::RenderGraphContext &)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D15480;
  *(a2 + 16) = 0;
  *(a2 + 24) = -1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = 0;
  *(a2 + 48) = -1;
  v2 = *(a1 + 40);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = v2;
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 56) = 0;
  *(a2 + 64) = -1;
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 72) = 0;
  *(a2 + 80) = -1;
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 80) = *(a1 + 80);
  *(a2 + 88) = 0;
  *(a2 + 96) = -1;
  *(a2 + 88) = *(a1 + 88);
  *(a2 + 96) = *(a1 + 96);
  return a2;
}

uint64_t re::RenderGraphDataStore::get<re::MXIFrameData>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re12MXIFrameDataE";
  if (("N2re12MXIFrameDataE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re12MXIFrameDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v4 = 5381;
    do
    {
      v2 = v4;
      v5 = *v3++;
      v4 = (33 * v4) ^ v5;
    }

    while (v5);
  }

  v6 = 0x7FFFFFFFLL;
  if (*(a1 + 64))
  {
    v7 = (a2 + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9) ^ v2;
    v8 = *(*(a1 + 72) + 4 * (v7 % *(a1 + 88)));
    if (v8 != 0x7FFFFFFF)
    {
      v9 = *(a1 + 80);
      v6 = 0x7FFFFFFFLL;
      while (*(v9 + 24 * v8 + 8) != v7)
      {
        v8 = *(v9 + 24 * v8) & 0x7FFFFFFF;
        if (v8 == 0x7FFFFFFF)
        {
          return *(*(a1 + 80) + 24 * v6 + 16);
        }
      }

      v6 = v8;
    }
  }

  return *(*(a1 + 80) + 24 * v6 + 16);
}

void *re::introspect_MPSImageEdgeModeType(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    v9 = re::introspectionAllocator();
    v10 = (*(*v9 + 32))(v9, 24, 8);
    *v10 = 1;
    *(v10 + 8) = 0;
    *(v10 + 16) = "Zero";
    re::introspect_MPSImageEdgeModeType(BOOL)::enumAttributes = v10;
    v11 = re::introspectionAllocator();
    v12 = (*(*v11 + 32))(v11, 24, 8);
    *v12 = 1;
    *(v12 + 8) = 1;
    *(v12 + 16) = "Clamp";
    qword_1EE1C64C8 = v12;
  }

  {
    v13 = re::IntrospectionBasic::IntrospectionBasic(&re::introspect_MPSImageEdgeModeType(BOOL)::info, "MPSImageEdgeModeType", 1, 1, 1, 1);
    *v13 = &unk_1F5D0C658;
    *(v13 + 8) = &re::introspect_MPSImageEdgeModeType(BOOL)::enumTable;
    *(v13 + 4) = 9;
  }

  if (v2)
  {
    if (re::introspect_MPSImageEdgeModeType(BOOL)::isInitialized)
    {
      return &re::introspect_MPSImageEdgeModeType(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v15);
    v3 = re::introspect_MPSImageEdgeModeType(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v15);
    if (v3)
    {
      return &re::introspect_MPSImageEdgeModeType(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::introspect_MPSImageEdgeModeType(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::introspect_MPSImageEdgeModeType(BOOL)::info;
    }
  }

  re::introspect_MPSImageEdgeModeType(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_MPSImageEdgeModeType(BOOL)::info, a2);
  v14[0] = 0xD4663F6F4305B84ALL;
  v14[1] = "MPSImageEdgeModeType";
  xmmword_1EE1C6498 = v15;
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_12;
  }

  return &re::introspect_MPSImageEdgeModeType(BOOL)::info;
}

void re::RenderGraphResolveNode::configure(re::RenderGraphResolveNode *this, const char *a2, const char *a3, re::RenderFrame *a4)
{
  if (*(this + 30))
  {
    v8 = 0;
    v9 = 0;
    while (*(re::RenderGraphResourceDescriptions::targetDescription((a4 + 3672), (*(this + 32) + v8)) + 84) == -1)
    {
      ++v9;
      v8 += 64;
      if (*(this + 30) <= v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    *(this + 64) = 0;
  }

  re::RenderGraphNode::configure(this, a2, a3, a4);
}

void *re::allocInfo_RenderGraphResolveNode(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_541, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_541))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C1498, "RenderGraphResolveNode");
    __cxa_guard_release(&_MergedGlobals_541);
  }

  return &unk_1EE1C1498;
}

void re::initInfo_RenderGraphResolveNode(re *this, re::IntrospectionBase *a2)
{
  v9[0] = 0xB3098F95BFEF7B6CLL;
  v9[1] = "RenderGraphResolveNode";
  if (v9[0])
  {
    if (v9[0])
    {
    }
  }

  *(this + 2) = v10;
  if ((atomic_load_explicit(&qword_1EE1C1490, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1490))
  {
    v5 = re::introspectionAllocator();
    v6 = re::introspect_RenderGraphNode(1);
    v7 = (*(*v5 + 32))(v5, 72, 8);
    *v7 = 1;
    *(v7 + 8) = "RenderGraphNode";
    *(v7 + 16) = v6;
    *(v7 + 24) = 0;
    *(v7 + 32) = 0;
    *(v7 + 40) = 3;
    *(v7 + 48) = 0;
    *(v7 + 56) = 0;
    *(v7 + 64) = 0;
    qword_1EE1C1488 = v7;
    __cxa_guard_release(&qword_1EE1C1490);
  }

  *(this + 2) = 0x10800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1C1488;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphResolveNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphResolveNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphResolveNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphResolveNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v8 = v10;
}

re::RenderGraphNode *re::internal::defaultConstruct<re::RenderGraphResolveNode>(int a1, int a2, re::RenderGraphNode *this)
{
  result = re::RenderGraphNode::RenderGraphNode(this);
  *result = &unk_1F5D154D8;
  *(result + 66) = 1;
  return result;
}

re::RenderGraphNode *re::internal::defaultConstructV2<re::RenderGraphResolveNode>(re::RenderGraphNode *a1)
{
  result = re::RenderGraphNode::RenderGraphNode(a1);
  *result = &unk_1F5D154D8;
  *(result + 66) = 1;
  return result;
}

void re::RenderGraphResolveNode::~RenderGraphResolveNode(id *this)
{
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

void re::ARSegmentationExecuteData::~ARSegmentationExecuteData(re::ARSegmentationExecuteData *this)
{
  v2 = *(this + 4);
  if (v2)
  {

    *(this + 4) = 0;
  }
}

{
  v2 = *(this + 4);
  if (v2)
  {

    *(this + 4) = 0;
  }

  JUMPOUT(0x1E6906520);
}

uint64_t re::RenderGraphDataStore::tryGet<re::SceneUnderstandingGuidedFilterOcclusionData>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re43SceneUnderstandingGuidedFilterOcclusionDataE";
  if (("N2re43SceneUnderstandingGuidedFilterOcclusionDataE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re43SceneUnderstandingGuidedFilterOcclusionDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v4 = 5381;
    do
    {
      v2 = v4;
      v5 = *v3++;
      v4 = (33 * v4) ^ v5;
    }

    while (v5);
  }

  if (!*(a1 + 16))
  {
    return 0;
  }

  v6 = (a2 + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9) ^ v2;
  v7 = *(*(a1 + 24) + 4 * (v6 % *(a1 + 40)));
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  v8 = *(a1 + 32);
  while (*(v8 + 24 * v7 + 8) != v6)
  {
    v7 = *(v8 + 24 * v7) & 0x7FFFFFFF;
    if (v7 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  return *(v8 + 24 * v7 + 16);
}

uint64_t re::RenderGraphAREmitter::fillDataStoreAndEmitGraph(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, char *a7)
{
  v87 = *MEMORY[0x1E69E9840];
  if ((atomic_load_explicit(&qword_1EE1C1558, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1558))
  {
    qword_1EE1C1550 = re::hashString("ARSegmentationData", v59);
    __cxa_guard_release(&qword_1EE1C1558);
  }

  v13 = qword_1EE1C1550;
  v14 = strlen(*(a5 + 48));
  if (v14)
  {
    MurmurHash3_x64_128(*(a5 + 48), v14, 0, v79);
    v15 = (*(&v79[0] + 1) - 0x61C8864680B583E9 + (*&v79[0] << 6) + (*&v79[0] >> 2)) ^ *&v79[0];
  }

  else
  {
    v15 = 0;
  }

  v16 = re::RenderGraphDataStore::tryGet<re::ARSegmentationInputData>(a3 + 32, ((v13 << 6) - 0x61C8864680B583E9 + (v13 >> 2) + v15) ^ v13);
  re::createARSegmentationGenerateGuideData(a3, a5, v71);
  if (v16)
  {
    re::ARSegmentationEmitterCache::applyCachedDataToGraph(*(a1 + 1776), v71, a3, a6);
  }

  v17 = strlen(a6);
  v69 = a6;
  if (v17)
  {
    MurmurHash3_x64_128(a6, v17, 0, v79);
    v18 = ((*(&v79[0] + 1) - 0x61C8864680B583E9 + (*&v79[0] << 6) + (*&v79[0] >> 2)) ^ *&v79[0]) - 0x61C8864680B583E9;
  }

  else
  {
    v18 = 0x9E3779B97F4A7C17;
  }

  v19 = strlen(a7);
  if (v19)
  {
    MurmurHash3_x64_128(a7, v19, 0, v79);
    v20 = (*(&v79[0] + 1) - 0x61C8864680B583E9 + (*&v79[0] << 6) + (*&v79[0] >> 2)) ^ *&v79[0];
  }

  else
  {
    v20 = 0;
  }

  v77 = 0;
  if ((atomic_load_explicit(&qword_1EE1C1668, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1668))
  {
    qword_1EE1C1660 = re::introspect_ARSegmentationConnectionData(0);
    __cxa_guard_release(&qword_1EE1C1668);
  }

  v21 = (v18 + (v20 << 6) + (v20 >> 2)) ^ v20;
  v76 = qword_1EE1C1660;
  v22 = strlen(*(qword_1EE1C1660 + 48));
  if (v22)
  {
    MurmurHash3_x64_128(*(qword_1EE1C1660 + 48), v22, 0, v79);
    v23 = (*(&v79[0] + 1) - 0x61C8864680B583E9 + (*&v79[0] << 6) + (*&v79[0] >> 2)) ^ *&v79[0];
  }

  else
  {
    v23 = 0;
  }

  v77 = v23;
  re::HashTable<unsigned long,re::IntrospectionStructure const*,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addOrReplace(a4 + 176, &v77, &v76);
  *&v79[0] = (v21 - 0x61C8864680B583E9 + (v77 << 6) + (v77 >> 2)) ^ v77;
  v24 = (*(**(a4 + 8) + 32))(*(a4 + 8), 48, 8);
  *v24 = &unk_1F5D119D0;
  v25 = v74;
  v26 = v73;
  *(v24 + 8) = v72;
  *(v24 + 24) = v26;
  *(v24 + 40) = v25;
  v76 = v24;
  re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a4 + 64, v79, &v76);
  if ((atomic_load_explicit(&qword_1EE1C1568, memory_order_acquire) & 1) == 0)
  {
    v60 = __cxa_guard_acquire(&qword_1EE1C1568);
    if (v60)
    {
      qword_1EE1C1560 = re::getCombinedScopeHash(v60, v61, v62);
      __cxa_guard_release(&qword_1EE1C1568);
    }
  }

  v27 = re::RenderGraphDataStore::tryGet<re::SceneUnderstandingGuidedFilterOcclusionData>(a4, qword_1EE1C1560);
  if (v27)
  {
    if ((atomic_load_explicit(&qword_1EE1C1578, memory_order_acquire) & 1) == 0)
    {
      v64 = v27;
      v66 = __cxa_guard_acquire(&qword_1EE1C1578);
      v27 = v64;
      if (v66)
      {
        qword_1EE1C1570 = re::hashString("GuidedFilterOcclusion", v65);
        __cxa_guard_release(&qword_1EE1C1578);
        v27 = v64;
      }
    }

    *&v79[0] = &unk_1F5D15700;
    v29 = *(v27 + 168);
    *&v28 = *(v27 + 176);
    *(&v28 + 1) = *(v27 + 160);
    *(v79 + 8) = v28;
    v30 = *(v27 + 116);
    LODWORD(v79[2]) = v28 / v30;
    DWORD1(v79[2]) = DWORD1(v28) / v30;
    *(&v79[1] + 1) = v29;
    v31 = qword_1EE1C1570;
    v32 = v18 + (qword_1EE1C1570 << 6) + (qword_1EE1C1570 >> 2);
    v76 = 0;
    if ((atomic_load_explicit(&qword_1EE1C1678, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1678))
    {
      qword_1EE1C1670 = re::introspect_SceneUnderstandingGuidedFilterOcclusionConnectionData(0);
      __cxa_guard_release(&qword_1EE1C1678);
    }

    v33 = v32 ^ v31;
    v75 = qword_1EE1C1670;
    v34 = strlen(*(qword_1EE1C1670 + 48));
    if (v34)
    {
      MurmurHash3_x64_128(*(qword_1EE1C1670 + 48), v34, 0, &v77);
      v35 = (v78 - 0x61C8864680B583E9 + (v77 << 6) + (v77 >> 2)) ^ v77;
    }

    else
    {
      v35 = 0;
    }

    v76 = v35;
    re::HashTable<unsigned long,re::IntrospectionStructure const*,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addOrReplace(a4 + 176, &v76, &v75);
    v77 = (v33 - 0x61C8864680B583E9 + (v76 << 6) + (v76 >> 2)) ^ v76;
    v36 = (*(**(a4 + 8) + 32))(*(a4 + 8), 40, 8);
    *v36 = &unk_1F5D15700;
    v37 = *(&v79[1] + 8);
    *(v36 + 8) = *(v79 + 8);
    *(v36 + 24) = v37;
    v75 = v36;
    re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a4 + 64, &v77, &v75);
  }

  else
  {
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v80 = 0u;
    memset(v79, 0, sizeof(v79));
    *(a1 + 1616) = 0;
    NS::SharedPtr<MTL::Buffer>::operator=((a1 + 1624), v79 + 1);
    NS::SharedPtr<MTL::Buffer>::operator=((a1 + 1632), &v79[1]);
    NS::SharedPtr<MTL::Buffer>::operator=((a1 + 1640), &v79[1] + 1);
    NS::SharedPtr<MTL::Buffer>::operator=((a1 + 1648), &v79[2]);
    NS::SharedPtr<MTL::Buffer>::operator=((a1 + 1656), &v79[2] + 1);
    NS::SharedPtr<MTL::Buffer>::operator=((a1 + 1664), &v80);
    NS::SharedPtr<MTL::Buffer>::operator=((a1 + 1672), &v80 + 1);
    NS::SharedPtr<MTL::Buffer>::operator=((a1 + 1680), &v81);
    NS::SharedPtr<MTL::Buffer>::operator=((a1 + 1688), &v81 + 1);
    NS::SharedPtr<MTL::Buffer>::operator=((a1 + 1696), &v82);
    NS::SharedPtr<MTL::Buffer>::operator=((a1 + 1704), &v82 + 1);
    NS::SharedPtr<MTL::Buffer>::operator=((a1 + 1712), &v83);
    NS::SharedPtr<MTL::Buffer>::operator=((a1 + 1720), &v83 + 1);
    re::ObjCObject::operator=((a1 + 1728), &v84);
    re::ObjCObject::operator=((a1 + 1736), &v84 + 1);
    re::ObjCObject::operator=((a1 + 1744), &v85);
    re::ObjCObject::operator=((a1 + 1752), &v85 + 1);
    re::ObjCObject::operator=((a1 + 1760), &v86);
    re::ObjCObject::operator=((a1 + 1768), &v86 + 1);
    re::GuidedFilterOcclusionStateData::~GuidedFilterOcclusionStateData(v79);
  }

  *&v79[0] = &unk_1F5D12EC8;
  DWORD2(v79[0]) = *(a1 + 1144);
  re::RenderGraphDataStore::add<re::DefaultDepthFormatData,re::DefaultDepthFormatData&>(a4, v21, v79);
  *&v79[0] = &unk_1F5D12F08;
  DWORD2(v79[0]) = *(a1 + 1148);
  re::RenderGraphDataStore::add<re::DefaultStencilFormatData,re::DefaultStencilFormatData&>(a4, v21, v79);
  *&v79[2] = 0;
  memset(v79, 0, 28);
  if ((*(a3 + 448) & 1) == 0)
  {
    re::CameraView::registerFileProviders(a7, a2, *a3, a5, &v77);
    re::DynamicArray<re::ProviderHandle>::operator=(v79, &v77);
    re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(&v77);
  }

  v38 = *(a5 + 413) & *(a2 + 700);
  v39 = *(a2 + 705) | v38 & 1;
  if ((atomic_load_explicit(&qword_1EE1C1588, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1588))
  {
    qword_1EE1C1580 = re::hashString("DynamicFunctionConstants", v63);
    __cxa_guard_release(&qword_1EE1C1588);
  }

  if (v39)
  {
    v40 = qword_1EE1C1580;
    if (*(a2 + 8))
    {
      v41 = *(a2 + 16);
    }

    else
    {
      v41 = (a2 + 9);
    }

    v42 = strlen(v41);
    if (v42)
    {
      MurmurHash3_x64_128(v41, v42, 0, &v77);
      v43 = (v78 - 0x61C8864680B583E9 + (v77 << 6) + (v77 >> 2)) ^ v77;
    }

    else
    {
      v43 = 0;
    }

    v44 = (v40 << 6) - 0x61C8864680B583E9 + (v40 >> 2) + v43;
    v45 = re::RenderGraphDataStore::tryGet<re::DynamicFunctionConstantsData>(a4, v44 ^ v40);
    if (v45)
    {
      if ((v38 & 1) == 0)
      {
LABEL_42:
        if (*(a2 + 705) == 1)
        {
          if ((atomic_load_explicit(&qword_1EE1C15A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C15A8))
          {
            qword_1EE1C15A0 = re::hashString("EnableUserEnvironment", v68);
            __cxa_guard_release(&qword_1EE1C15A8);
          }

          LODWORD(v77) = 1;
          re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addOrReplace((v45 + 8), &qword_1EE1C15A0, &v77);
        }

        goto LABEL_45;
      }
    }

    else
    {
      v77 = *(a3 + 392);
      LODWORD(v76) = 7;
      v45 = re::RenderGraphDataStore::add<re::DynamicFunctionConstantsData,re::PerFrameAllocator *,int>(a4, v44 ^ v40, &v77, &v76);
      if ((v38 & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    if ((atomic_load_explicit(&qword_1EE1C1598, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1598))
    {
      qword_1EE1C1590 = re::hashString("EnableDepthMitigation", v67);
      __cxa_guard_release(&qword_1EE1C1598);
    }

    LODWORD(v77) = 1;
    re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addOrReplace((v45 + 8), &qword_1EE1C1590, &v77);
    goto LABEL_42;
  }

LABEL_45:
  v46 = *(a5 + 328);
  if (v46 && *(v46 + 40))
  {
    v47 = qword_1EE1C1580;
    v48 = (*(a2 + 8) & 1) != 0 ? *(a2 + 16) : (a2 + 9);
    v49 = strlen(v48);
    if (v49)
    {
      MurmurHash3_x64_128(v48, v49, 0, &v77);
      v50 = (v78 - 0x61C8864680B583E9 + (v77 << 6) + (v77 >> 2)) ^ v77;
    }

    else
    {
      v50 = 0;
    }

    v51 = ((v47 << 6) - 0x61C8864680B583E9 + (v47 >> 2) + v50) ^ v47;
    if (!re::RenderGraphDataStore::tryGet<re::DynamicFunctionConstantsData>(a4, v51))
    {
      v52 = *(a3 + 392);
      v53 = "N2re28DynamicFunctionConstantsDataE";
      if (("N2re28DynamicFunctionConstantsDataE" & 0x8000000000000000) != 0)
      {
        v54 = ("N2re28DynamicFunctionConstantsDataE" & 0x7FFFFFFFFFFFFFFFLL);
        v55 = 5381;
        do
        {
          v53 = v55;
          v56 = *v54++;
          v55 = (33 * v55) ^ v56;
        }

        while (v56);
      }

      v77 = (v51 - 0x61C8864680B583E9 + (v53 << 6) + (v53 >> 2)) ^ v53;
      v57 = (*(**(a4 + 8) + 32))(*(a4 + 8), 72, 8);
      *v57 = &unk_1F5D12DC0;
      *(v57 + 8) = 0u;
      *(v57 + 24) = 0u;
      *(v57 + 40) = 0u;
      *(v57 + 56) = 0;
      *(v57 + 64) = v52;
      v76 = v57;
      re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a4 + 64, &v77, &v76);
    }
  }

  re::RenderFrame::emitGraph(a3, a7, v69);
  re::CameraView::unregisterFileProviders(*a3, v79);
  return re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v79);
}

void re::RenderGraphAREmitter::~RenderGraphAREmitter(re::RenderGraphAREmitter *this)
{
  v2 = *(this + 152);
  if (v2)
  {
    re::RenderGraphAREmitter::unregisterProviders(this, v2);
  }

  v3 = *(this + 224);
  if (v3)
  {

    *(this + 224) = 0;
  }

  v4 = *(this + 222);
  if (v4)
  {

    *(this + 222) = 0;
  }

  re::GuidedFilterOcclusionStateData::~GuidedFilterOcclusionStateData(this + 202);
  re::StringID::destroyString((this + 1584));
  re::StringID::destroyString((this + 1560));
  re::StringID::destroyString((this + 1536));
  re::StringID::destroyString((this + 1512));
  re::StringID::destroyString((this + 1488));
  re::StringID::destroyString((this + 1464));
  re::StringID::destroyString((this + 1440));
  re::StringID::destroyString((this + 1416));
  re::StringID::destroyString((this + 1392));
  re::StringID::destroyString((this + 1368));
  re::StringID::destroyString((this + 1344));
  re::StringID::destroyString((this + 1320));
  re::StringID::destroyString((this + 1296));
  re::StringID::destroyString((this + 1272));
  re::StringID::destroyString((this + 1248));
  re::AssetHandle::~AssetHandle((this + 1224));
  re::AssetHandle::~AssetHandle((this + 1120));
  re::AssetHandle::~AssetHandle((this + 1096));
  re::AssetHandle::~AssetHandle((this + 1072));
  re::AssetHandle::~AssetHandle((this + 1040));
  re::AssetHandle::~AssetHandle((this + 1016));
  re::AssetHandle::~AssetHandle((this + 992));
  re::AssetHandle::~AssetHandle((this + 968));
  re::AssetHandle::~AssetHandle((this + 944));
  re::AssetHandle::~AssetHandle((this + 920));
  re::AssetHandle::~AssetHandle((this + 896));
  re::AssetHandle::~AssetHandle((this + 872));
  re::AssetHandle::~AssetHandle((this + 848));
  re::AssetHandle::~AssetHandle((this + 824));
  re::AssetHandle::~AssetHandle((this + 800));
  re::AssetHandle::~AssetHandle((this + 776));
  re::AssetHandle::~AssetHandle((this + 752));
  re::AssetHandle::~AssetHandle((this + 728));

  re::RealityEmitterBase::~RealityEmitterBase(this);
}

{
  re::RenderGraphAREmitter::~RenderGraphAREmitter(this);

  JUMPOUT(0x1E6906520);
}

void re::RenderGraphAREmitter::unregisterProviders(re::RenderGraphAREmitter *this, re::RenderGraphManager *a2)
{
  re::RealityEmitterBase::unregisterCommonProviders(this, a2);
  if (re::FontID::isValid((this + 1248)))
  {
    re::StringID::StringID(v32, this + 78);
    v32[2] = *(this + 158);
    v4 = re::RenderGraphManager::removeProvider(a2, v32);
    if (v32[0])
    {
      if (v32[0])
      {
      }
    }

    v32[0] = 0;
    v32[1] = &str_67;
    re::ProviderHandle::invalidate((this + 1248));
  }

  if (re::FontID::isValid((this + 1416)))
  {
    re::StringID::StringID(v31, (this + 1416));
    v31[2] = *(this + 179);
    v5 = re::RenderGraphManager::removeProvider(a2, v31);
    if (v31[0])
    {
      if (v31[0])
      {
      }
    }

    v31[0] = 0;
    v31[1] = &str_67;
    re::ProviderHandle::invalidate((this + 1416));
  }

  if (re::FontID::isValid((this + 1440)))
  {
    re::StringID::StringID(v30, this + 90);
    v30[2] = *(this + 182);
    v6 = re::RenderGraphManager::removeProvider(a2, v30);
    if (v30[0])
    {
      if (v30[0])
      {
      }
    }

    v30[0] = 0;
    v30[1] = &str_67;
    re::ProviderHandle::invalidate((this + 1440));
  }

  if (re::FontID::isValid((this + 1296)))
  {
    re::StringID::StringID(v29, this + 81);
    v29[2] = *(this + 164);
    v7 = re::RenderGraphManager::removeProvider(a2, v29);
    if (v29[0])
    {
      if (v29[0])
      {
      }
    }

    v29[0] = 0;
    v29[1] = &str_67;
    re::ProviderHandle::invalidate((this + 1296));
  }

  if (re::FontID::isValid((this + 1320)))
  {
    re::StringID::StringID(v28, (this + 1320));
    v28[2] = *(this + 167);
    v8 = re::RenderGraphManager::removeProvider(a2, v28);
    if (v28[0])
    {
      if (v28[0])
      {
      }
    }

    v28[0] = 0;
    v28[1] = &str_67;
    re::ProviderHandle::invalidate((this + 1320));
  }

  if (re::FontID::isValid((this + 1344)))
  {
    re::StringID::StringID(v27, this + 84);
    v27[2] = *(this + 170);
    v9 = re::RenderGraphManager::removeProvider(a2, v27);
    if (v27[0])
    {
      if (v27[0])
      {
      }
    }

    v27[0] = 0;
    v27[1] = &str_67;
    re::ProviderHandle::invalidate((this + 1344));
  }

  v10 = *(this + 223);
  *(this + 223) = 0;

  *(this + 112) = 0u;
  if (re::FontID::isValid((this + 1512)))
  {
    re::StringID::StringID(v26, (this + 1512));
    v26[2] = *(this + 191);
    v11 = re::RenderGraphManager::removeProvider(a2, v26);
    if (v26[0])
    {
      if (v26[0])
      {
      }
    }

    v26[0] = 0;
    v26[1] = &str_67;
    re::ProviderHandle::invalidate((this + 1512));
  }

  if (re::FontID::isValid((this + 1536)))
  {
    re::StringID::StringID(v25, this + 96);
    v25[2] = *(this + 194);
    v12 = re::RenderGraphManager::removeProvider(a2, v25);
    if (v25[0])
    {
      if (v25[0])
      {
      }
    }

    v25[0] = 0;
    v25[1] = &str_67;
    re::ProviderHandle::invalidate((this + 1536));
  }

  if (re::FontID::isValid((this + 1464)))
  {
    re::StringID::StringID(v24, (this + 1464));
    v24[2] = *(this + 185);
    v13 = re::RenderGraphManager::removeProvider(a2, v24);
    if (v24[0])
    {
      if (v24[0])
      {
      }
    }

    v24[0] = 0;
    v24[1] = &str_67;
    re::ProviderHandle::invalidate((this + 1464));
  }

  if (re::FontID::isValid((this + 1488)))
  {
    re::StringID::StringID(v23, this + 93);
    v23[2] = *(this + 188);
    v14 = re::RenderGraphManager::removeProvider(a2, v23);
    if (v23[0])
    {
      if (v23[0])
      {
      }
    }

    v23[0] = 0;
    v23[1] = &str_67;
    re::ProviderHandle::invalidate((this + 1488));
  }

  if (*(this + 1212) == 1 && re::FontID::isValid((this + 1560)))
  {
    re::StringID::StringID(v22, (this + 1560));
    v22[2] = *(this + 197);
    v15 = re::RenderGraphManager::removeProvider(a2, v22);
    if (v22[0])
    {
      if (v22[0])
      {
      }
    }

    v22[0] = 0;
    v22[1] = &str_67;
    re::ProviderHandle::invalidate((this + 1560));
  }

  if (re::FontID::isValid((this + 1368)))
  {
    re::StringID::StringID(v21, (this + 1368));
    v21[2] = *(this + 173);
    v16 = re::RenderGraphManager::removeProvider(a2, v21);
    if (v21[0])
    {
      if (v21[0])
      {
      }
    }

    v21[0] = 0;
    v21[1] = &str_67;
    re::ProviderHandle::invalidate((this + 1368));
  }

  if (re::FontID::isValid((this + 1392)))
  {
    re::StringID::StringID(v20, this + 87);
    v20[2] = *(this + 176);
    v17 = re::RenderGraphManager::removeProvider(a2, v20);
    if (v20[0])
    {
      if (v20[0])
      {
      }
    }

    v20[0] = 0;
    v20[1] = &str_67;
    re::ProviderHandle::invalidate((this + 1392));
  }

  re::ARSegmentationEmitterCache::unregisterRenderGraphProvider(*(this + 222), a2);
  if (re::FontID::isValid((this + 1584)))
  {
    re::StringID::StringID(v19, this + 99);
    v19[2] = *(this + 200);
    v18 = re::RenderGraphManager::removeProvider(a2, v19);
    if (v19[0])
    {
      if (v19[0])
      {
      }
    }

    v19[0] = 0;
    v19[1] = &str_67;
    re::ProviderHandle::invalidate((this + 1584));
  }
}

re::RenderGraphAREmitter *re::RenderGraphAREmitter::RenderGraphAREmitter(re::RenderGraphAREmitter *this)
{
  v2 = this + 1144;
  v3 = re::RealityEmitterBase::RealityEmitterBase(this);
  *v3 = &unk_1F5D15580;
  *(v3 + 728) = 0u;
  *(v3 + 744) = 0u;
  *(v3 + 760) = 0u;
  *(v3 + 776) = 0u;
  *(v3 + 792) = 0u;
  *(v3 + 808) = 0u;
  *(v3 + 824) = 0u;
  *(v3 + 840) = 0u;
  *(v3 + 856) = 0u;
  *(v3 + 872) = 0u;
  *(v3 + 888) = 0u;
  *(v3 + 904) = 0u;
  *(v3 + 920) = 0u;
  *(v3 + 936) = 0u;
  *(v3 + 952) = 0u;
  *(v3 + 968) = 0u;
  *(v3 + 984) = 0u;
  *(v3 + 1000) = 0u;
  *(v3 + 1016) = 0u;
  *(v3 + 1032) = 0u;
  *(v3 + 1048) = 0u;
  *(v3 + 266) = 1;
  *(v3 + 67) = 0u;
  *(v3 + 68) = 0u;
  *(v3 + 69) = 0u;
  *(v3 + 70) = 0u;
  *(v3 + 142) = 0;
  *v2 = xmmword_1E31089E0;
  *(v3 + 145) = 0x4280000000000008;
  *(v3 + 292) = 32;
  *(v3 + 1172) = 0;
  *(v2 + 29) = 16843009;
  *(v2 + 33) = 0x1000000;
  *(v3 + 74) = xmmword_1E31042A0;
  *(v3 + 600) = 0;
  *(v2 + 58) = 16843009;
  *(v3 + 603) = 256;
  *(v3 + 302) = 1065353216;
  *(v3 + 1212) = 1;
  *(v3 + 77) = 0u;
  *(v3 + 76) = 0u;
  re::StringID::invalid((v3 + 1248));
  *(this + 158) = 0;
  re::StringID::invalid((this + 1272));
  *(this + 161) = 0;
  re::StringID::invalid((this + 1296));
  *(this + 164) = 0;
  re::StringID::invalid((this + 1320));
  *(this + 167) = 0;
  re::StringID::invalid((this + 1344));
  *(this + 170) = 0;
  re::StringID::invalid((this + 1368));
  *(this + 173) = 0;
  re::StringID::invalid((this + 1392));
  *(this + 176) = 0;
  re::StringID::invalid((this + 1416));
  *(this + 179) = 0;
  re::StringID::invalid((this + 1440));
  *(this + 182) = 0;
  re::StringID::invalid((this + 1464));
  *(this + 185) = 0;
  re::StringID::invalid((this + 1488));
  *(this + 188) = 0;
  re::StringID::invalid((this + 1512));
  *(this + 191) = 0;
  re::StringID::invalid((this + 1536));
  *(this + 194) = 0;
  re::StringID::invalid((this + 1560));
  *(this + 197) = 0;
  v4 = re::StringID::invalid((this + 1584));
  *(this + 200) = 0;
  *(this + 804) = *(this + 1180);
  *(this + 101) = 0u;
  *(this + 102) = 0u;
  *(this + 103) = 0u;
  *(this + 104) = 0u;
  *(this + 105) = 0u;
  *(this + 106) = 0u;
  *(this + 107) = 0u;
  *(this + 108) = 0u;
  *(this + 109) = 0u;
  *(this + 110) = 0u;
  *(this + 111) = 0u;
  *(this + 112) = 0u;
  v5 = re::globalAllocators(v4);
  v6 = (*(*v5[2] + 32))(v5[2], 88, 8);
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 80) = 0;
  *(v6 + 64) = 0u;
  ArcSharedObject::ArcSharedObject(v6, 0);
  *v6 = &unk_1F5D156B8;
  *(v6 + 24) = 0u;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0;
  re::StringID::invalid((v6 + 64));
  *(v6 + 80) = 0;
  v7 = *(this + 222);
  *(this + 222) = v6;
  if (v7)
  {
  }

  return this;
}

void re::RenderGraphAREmitter::afterPrepareSceneContextHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v114 = *MEMORY[0x1E69E9840];
  v9 = *(a4 + 352);
  if (v9)
  {
    if ((atomic_load_explicit(&qword_1EE1C1538, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1538))
    {
      qword_1EE1C1530 = re::hashString("ARSegmentationData", v92);
      __cxa_guard_release(&qword_1EE1C1538);
    }

    v10 = qword_1EE1C1530;
    v11 = strlen(*(a4 + 48));
    if (v11)
    {
      v11 = MurmurHash3_x64_128(*(a4 + 48), v11, 0, &v103);
      v12 = (v104 - 0x61C8864680B583E9 + (v103 << 6) + (v103 >> 2)) ^ v103;
    }

    else
    {
      v12 = 0;
    }

    v13 = ((v10 << 6) - 0x61C8864680B583E9 + (v10 >> 2) + v12) ^ v10;
    v14 = "N2re23ARSegmentationInputDataE";
    if (("N2re23ARSegmentationInputDataE" & 0x8000000000000000) != 0)
    {
      v15 = ("N2re23ARSegmentationInputDataE" & 0x7FFFFFFFFFFFFFFFLL);
      v16 = 5381;
      do
      {
        v14 = v16;
        v17 = *v15++;
        v16 = (33 * v16) ^ v17;
      }

      while (v17);
    }

    v18 = v13 - 0x61C8864680B583E9;
    v103 = (v13 - 0x61C8864680B583E9 + (v14 << 6) + (v14 >> 2)) ^ v14;
    v19 = re::globalAllocators(v11);
    v20 = (*(*v19[2] + 32))(v19[2], 40, 8);
    *v20 = &unk_1F5CED808;
    v20[1] = v9[1];
    v9[1] = 0;
    v20[2] = v9[2];
    v9[2] = 0;
    v20[3] = v9[3];
    v9[3] = 0;
    v20[4] = v9[4];
    v9[4] = 0;
    v102 = v20;
    re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a5 + 16, &v103, &v102);
    v103 = &unk_1F5D15638;
    *v105 = 0;
    *&v105[8] = 0;
    LODWORD(v104) = 3;
    *(&v104 + 1) = 1065353216;
    re::ObjCObject::operator=(v105, (a1 + 1784));
    v21 = NS::SharedPtr<MTL::Buffer>::operator=(&v105[8], (a1 + 1792));
    *&v105[16] = a1 + 1800;
    v22 = "N2re25ARSegmentationExecuteDataE";
    if (("N2re25ARSegmentationExecuteDataE" & 0x8000000000000000) != 0)
    {
      v23 = ("N2re25ARSegmentationExecuteDataE" & 0x7FFFFFFFFFFFFFFFLL);
      v24 = 5381;
      do
      {
        v22 = v24;
        v25 = *v23++;
        v24 = (33 * v24) ^ v25;
      }

      while (v25);
    }

    v102 = (v18 + (v22 << 6) + (v22 >> 2)) ^ v22;
    v26 = re::globalAllocators(v21);
    v27 = (*(*v26[2] + 32))(v26[2], 48, 8);
    *v27 = &unk_1F5D15638;
    *(v27 + 8) = v104;
    v28 = *v105;
    *v105 = 0;
    *(v27 + 24) = v28;
    *&v105[8] = 0;
    *(v27 + 40) = *&v105[16];
    v101 = v27;
    re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a5 + 16, &v102, &v101);
    if (*&v105[8])
    {

      *&v105[8] = 0;
    }
  }

  v29 = *(a4 + 360);
  if (v29)
  {
    v30 = (*(a1 + 1173) & 1) != 0 || (*(a1 + 1172) & 1) != 0 ? 1 : v29[6];
    v31 = *(a1 + 1048);
    v32 = v31 ? *v29 : 0;
    *(a1 + 1609) = v32 & 1;
    *(a1 + 1177) = v29[2];
    v33 = v29[3];
    *(a1 + 1178) = v33;
    *(a1 + 1179) = v29[4] & v33;
    v34 = *(a1 + 784);
    if (v34)
    {
      re::AssetHandle::loadNow(v34, 0);
      v35 = *v29;
      if ((v35 | v30))
      {
        if (*(a1 + 1179) == 1 && (v29[1] & 1) == 0)
        {
          v36 = 16;
          v37 = 0;
          if ((*(a1 + 1174) & 1) == 0)
          {
            if (*(a1 + 1175))
            {
              v36 = 16;
            }

            else
            {
              v36 = 0;
            }
          }

          v38 = 8;
          if ((v30 & 1) == 0)
          {
            goto LABEL_44;
          }
        }

        else
        {
          v36 = 0;
          v37 = 1;
          v38 = 1;
          if ((v30 & 1) == 0)
          {
            goto LABEL_44;
          }
        }
      }

      else
      {
        v38 = 0;
        v36 = 0;
        v37 = 1;
        if ((v30 & 1) == 0)
        {
LABEL_44:
          v39 = 0;
LABEL_45:
          v40 = v36 | v38 | v39;
          if (*v29)
          {
            v41 = 0;
          }

          else
          {
            v41 = 2;
          }

          if ((v38 & 1) == 0)
          {
            v41 = 0;
          }

          v42 = v29[1];
          v43 = v41 | (32 * v42) | v40;
          if (v43 != (*(a3 + 120) & 0x7F))
          {
            v44 = *(a1 + 784);
            if (v44)
            {
              v45 = atomic_load((v44 + 896));
              if (v45 == 2)
              {
                ++*(*(a1 + 784) + 276);
                v100 = v39;
                v97 = v36;
                v98 = v37;
                v46 = re::AssetHandle::loadedAsset<re::RenderGraphAsset>((a1 + 776));
                v47 = v98;
                v39 = v100;
                v99 = v46;
                if (v46)
                {
                  if (v29[3] == 1)
                  {
                    v103 = 0xA347EFBC0FB083E8;
                    *&v104 = "ForceClearSceneUnderstandingMeshShadowSingleChannel";
                    LOBYTE(v102) = v38 >> 3;
                    v48 = re::RenderGraphFile::setRuntimeNodeSetting<BOOL>((v46 + 8), &v103, "Enabled", &v102);
                    if (v103)
                    {
                      if (v103)
                      {
                      }
                    }

                    v103 = 0x2A295CF77075A36CLL;
                    *&v104 = "CompositeSceneUnderstandingShadowsNode";
                    LOBYTE(v102) = v38 >> 3;
                    v49 = re::RenderGraphFile::setRuntimeNodeSetting<BOOL>((v99 + 8), &v103, "Enabled", &v102);
                    if (v103)
                    {
                      if (v103)
                      {
                      }
                    }

                    if (v31)
                    {
                      v50 = v40 & 0xC;
                      v51 = v99;
                    }

                    else
                    {
                      v103 = 0x696F5EF842740C56;
                      *&v104 = "CompositedMeshShadowProjectedPatchReceiverNode";
                      v96 = v40 & 0xC;
                      LOBYTE(v102) = v96 == 12;
                      v51 = v99;
                      re::RenderGraphFile::setRuntimeNodeSetting<BOOL>((v99 + 8), &v103, "Enabled", &v102);
                      re::StringID::destroyString(&v103);
                      v50 = v96;
                    }

                    v103 = 0x378766A6B9EC9AELL;
                    *&v104 = "CompositedSceneUnderstandingShadowNode";
                    LOBYTE(v102) = v50 == 8;
                    v52 = re::RenderGraphFile::setRuntimeNodeSetting<BOOL>((v51 + 8), &v103, "Enabled", &v102);
                    if (v103)
                    {
                      if (v103)
                      {
                      }
                    }

                    v39 = v100;
                    v47 = v98;
                  }

                  v103 = 0x252BC97CDD7FB102;
                  *&v104 = "PatchBasedMeshSceneUnderstandingDepthOnlyNode";
                  v53 = v47 & *v29;
                  if (!v39)
                  {
                    v53 = 0;
                  }

                  LOBYTE(v102) = v53;
                  v54 = re::RenderGraphFile::setRuntimeNodeSetting<BOOL>((v99 + 8), &v103, "Enabled", &v102);
                  if (v103)
                  {
                    if (v103)
                    {
                    }
                  }

                  v103 = 0x9AB5F11FB4FA0048;
                  *&v104 = "SceneUnderstandingOcclusionAndShadowNode";
                  LOBYTE(v102) = (v100 == 0) & v38;
                  v55 = re::RenderGraphFile::setRuntimeNodeSetting<BOOL>((v99 + 8), &v103, "Enabled", &v102);
                  if (v103)
                  {
                    if (v103)
                    {
                    }
                  }

                  if (!v31)
                  {
                    v103 = 0x10DE28F3DBBA741CLL;
                    *&v104 = "SceneUnderstandingOcclusionAndShadowDepthClearNode";
                    LOBYTE(v102) = (v43 & 6) == 2;
                    v56 = re::RenderGraphFile::setRuntimeNodeSetting<BOOL>((v99 + 8), &v103, "Enabled", &v102);
                    if (v103)
                    {
                      if (v103)
                      {
                      }
                    }

                    v103 = 0xF5A2D353F87D6B9CLL;
                    *&v104 = "MeshShadowProjectedPatchReceiverNode";
                    LOBYTE(v102) = (v100 != 0) & v38;
                    v57 = re::RenderGraphFile::setRuntimeNodeSetting<BOOL>((v99 + 8), &v103, "Enabled", &v102);
                    if (v103)
                    {
                      if (v103)
                      {
                      }
                    }

                    v103 = 0xF7F248B7F1C26F4;
                    *&v104 = "PatchShadowReceiverDepthOnlyNode";
                    LOBYTE(v102) = (v100 != 0) & v38;
                    v58 = re::RenderGraphFile::setRuntimeNodeSetting<BOOL>((v99 + 8), &v103, "Enabled", &v102);
                    if (v103)
                    {
                      if (v103)
                      {
                      }
                    }
                  }

                  v103 = 0x95DF29AA01C3F5E4;
                  *&v104 = "SceneUnderstandingWireframeNode";
                  LOBYTE(v102) = v42;
                  v59 = re::RenderGraphFile::setRuntimeNodeSetting<BOOL>((v99 + 8), &v103, "Enabled", &v102);
                  if (v103)
                  {
                    if (v103)
                    {
                    }
                  }

                  v103 = 0x2B2EFFC92CCF4F14;
                  *&v104 = "SceneUnderstandingShadowsDepthNode";
                  LOBYTE(v102) = v97 >> 4;
                  v60 = re::RenderGraphFile::setRuntimeNodeSetting<BOOL>((v99 + 8), &v103, "Enabled", &v102);
                  if (v103)
                  {
                    if (v103)
                    {
                    }
                  }

                  v39 = v100;
                }
              }
            }

            v61 = *(a1 + 1048);
            if (v61)
            {
              v62 = atomic_load((v61 + 896));
              if (v62 == 2)
              {
                v63 = *(a1 + 1048);
                if (v63)
                {
                  v64 = atomic_load((v63 + 896));
                  if (v64 == 2)
                  {
                    ++*(*(a1 + 1048) + 276);
                    v65 = v39;
                    v66 = re::AssetHandle::loadedAsset<re::RenderGraphAsset>((a1 + 1040));
                    if (v66)
                    {
                      v67 = v65;
                      v68 = v66;
                      v103 = 0xF5A2D353F87D6B9CLL;
                      *&v104 = "MeshShadowProjectedPatchReceiverNode";
                      v69 = (v67 != 0) & v38;
                      LOBYTE(v102) = v69;
                      re::RenderGraphFile::setRuntimeNodeSetting<BOOL>((v66 + 8), &v103, "Enabled", &v102);
                      re::StringID::destroyString(&v103);
                      v103 = 0xF7F248B7F1C26F4;
                      *&v104 = "PatchShadowReceiverDepthOnlyNode";
                      LOBYTE(v102) = v69;
                      re::RenderGraphFile::setRuntimeNodeSetting<BOOL>((v68 + 8), &v103, "Enabled", &v102);
                      re::StringID::destroyString(&v103);
                    }
                  }
                }
              }
            }
          }

          *(a3 + 120) = v43;
          goto LABEL_100;
        }
      }

      if (((v31 == 0) & v29[5]) != 0)
      {
        v39 = 4;
      }

      else
      {
        v39 = 0;
      }

      if (v31 && (v29[5] & 1) != 0 && (v35 & 1) == 0)
      {
        if (*(a1 + 1179))
        {
          v39 = 0;
        }

        else
        {
          v39 = 4;
        }
      }

      goto LABEL_45;
    }
  }

LABEL_100:
  v70 = *(a4 + 368);
  if (v70)
  {
    v103 = &unk_1F5CF56C8;
    LOBYTE(v104) = *(v70 + 8);
    *(&v104 + 1) = *(v70 + 16);
    v71 = *(v70 + 24);
    v72 = *(v70 + 48);
    *&v105[8] = *(v70 + 32);
    v106 = v72;
    v73 = *(v70 + 64);
    v74 = *(v70 + 80);
    v75 = *(v70 + 112);
    v109 = *(v70 + 96);
    v110 = v75;
    v107 = v73;
    v108 = v74;
    v76 = *(v70 + 128);
    v77 = *(v70 + 144);
    v78 = *(v70 + 160);
    *&v113[10] = *(v70 + 170);
    v112 = v77;
    *v113 = v78;
    v111 = v76;
    *v105 = v71;
    *&v105[8] = a1 + 1616;
    if ((atomic_load_explicit(&qword_1EE1C1548, memory_order_acquire) & 1) == 0)
    {
      v93 = __cxa_guard_acquire(&qword_1EE1C1548);
      if (v93)
      {
        qword_1EE1C1540 = re::getCombinedScopeHash(v93, v94, v95);
        __cxa_guard_release(&qword_1EE1C1548);
      }
    }

    if (!re::RenderGraphDataStore::tryGet<re::SceneUnderstandingGuidedFilterOcclusionData>(a5, qword_1EE1C1540))
    {
      v79 = "N2re43SceneUnderstandingGuidedFilterOcclusionDataE";
      if (("N2re43SceneUnderstandingGuidedFilterOcclusionDataE" & 0x8000000000000000) != 0)
      {
        v80 = ("N2re43SceneUnderstandingGuidedFilterOcclusionDataE" & 0x7FFFFFFFFFFFFFFFLL);
        v81 = 5381;
        do
        {
          v79 = v81;
          v82 = *v80++;
          v81 = (33 * v81) ^ v82;
        }

        while (v82);
      }

      v102 = (qword_1EE1C1540 + (v79 << 6) + (v79 >> 2) - 0x61C8864680B583E9) ^ v79;
      v83 = re::globalAllocators(0);
      v84 = (*(*v83[2] + 32))(v83[2], 192, 16);
      *v84 = &unk_1F5CF56C8;
      *(v84 + 8) = v104;
      *(v84 + 16) = *(&v104 + 1);
      *(v84 + 24) = *v105;
      *(&v104 + 1) = 0;
      *v105 = 0;
      v85 = v111;
      v86 = v112;
      v87 = *v113;
      *(v84 + 170) = *&v113[10];
      *(v84 + 144) = v86;
      *(v84 + 160) = v87;
      *(v84 + 128) = v85;
      v88 = v107;
      v89 = v108;
      v90 = v110;
      *(v84 + 96) = v109;
      *(v84 + 112) = v90;
      *(v84 + 64) = v88;
      *(v84 + 80) = v89;
      v91 = v106;
      *(v84 + 32) = *&v105[8];
      *(v84 + 48) = v91;
      v101 = v84;
      re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a5 + 16, &v102, &v101);
    }

    if (*v105)
    {

      *v105 = 0;
    }

    if (*(&v104 + 1))
    {
    }
  }
}

uint64_t re::RenderGraphAREmitter::emitFrameContext(uint64_t a1, void *a2, re::RenderFrame *this, re::RenderGraphDataStore *a4)
{
  re::RenderFrame::emitGraph(this, "UploadMultiSceneConstants", "RenderFrame");
  v8 = a2[2];
  if (v8)
  {
    v9 = a2[3];
    v10 = 424 * v8;
    do
    {
      re::RealityEmitterBase::emitRTAOGraph(a1, v9, this, a4);
      re::RealityEmitterBase::emitVFXSimulationGraph(a1, v9, this, a4);
      v9 += 424;
      v10 -= 424;
    }

    while (v10);
  }

  v11 = a2[12];
  if (v11 && *(v11 + 16))
  {
    re::RenderFrame::emitGraph(this, "MipmapGenerationContext", "RenderFrame");
  }

  v12 = a2[13];
  if (v12 && *(v12 + 16))
  {
    re::RenderFrame::emitGraph(this, "BlurGenerationContext", "RenderFrame");
  }

  re::RealityEmitterBase::emitProbeWriteGraph(a1, this);
  re::RenderFrame::emitGraph(this, "ProjectiveMeshShadow", "RenderFrame");
  re::RealityEmitterBase::emitUIShadowGraph(a1, a2, this);
  if ((atomic_load_explicit(&qword_1EE1C15B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C15B8))
  {
    qword_1EE1C15B0 = re::hashString("ProjectiveMeshShadow", v31);
    __cxa_guard_release(&qword_1EE1C15B8);
  }

  if ((atomic_load_explicit(&qword_1EE1C15C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C15C8))
  {
    v33 = qword_1EE1C15B0;
    qword_1EE1C15C0 = ((v33 << 6) + (v33 >> 2) + re::hashString("RenderFrame", v32) - 0x61C8864680B583E9) ^ v33;
    __cxa_guard_release(&qword_1EE1C15C8);
  }

  if (*(a1 + 1048))
  {
    v34 = &unk_1F5D15678;
    v35 = 0;
    LOBYTE(v35) = *(a1 + 1609);
    v13 = "N2re31MeshShadowDepthPrepassOverridesE";
    if (("N2re31MeshShadowDepthPrepassOverridesE" & 0x8000000000000000) != 0)
    {
      v14 = ("N2re31MeshShadowDepthPrepassOverridesE" & 0x7FFFFFFFFFFFFFFFLL);
      v15 = 5381;
      do
      {
        v13 = v15;
        v16 = *v14++;
        v15 = (33 * v15) ^ v16;
      }

      while (v16);
    }

    v37 = (qword_1EE1C15C0 + (v13 << 6) + (v13 >> 2) - 0x61C8864680B583E9) ^ v13;
    v17 = (*(**(a4 + 1) + 32))(*(a4 + 1), 16, 8);
    *v17 = &unk_1F5D15678;
    *(v17 + 8) = v35;
    v36 = v17;
    re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a4 + 64, &v37, &v36);
  }

  LODWORD(v34) = 0;
  v18 = a2[2];
  if (v18)
  {
    v19 = a2[3];
    v20 = 424 * v18;
    do
    {
      re::RealityEmitterBase::emitSingleGraphShadows(a1, v19, this, a4, &v34);
      v19 += 424;
      v20 -= 424;
    }

    while (v20);
    v21 = a2[2];
    if (v21)
    {
      v22 = a2[3];
      v23 = 424 * v21;
      do
      {
        re::RealityEmitterBase::emitFilterMapGraph(a1, v22, this, a4);
        v22 += 424;
        v23 -= 424;
      }

      while (v23);
      v24 = a2[2];
      if (v24)
      {
        v25 = a2[3];
        v26 = 424 * v24;
        do
        {
          re::RealityEmitterBase::emitVisualProxyHighFidelityGraph(a1, v25, this, a4);
          v25 += 424;
          v26 -= 424;
        }

        while (v26);
        v27 = a2[2];
        if (v27)
        {
          v28 = a2[3];
          v29 = 424 * v27;
          do
          {
            re::RealityEmitterBase::emitCameraGraphs(a1, a2, v28, this, a4, 0);
            v28 += 424;
            v29 -= 424;
          }

          while (v29);
        }
      }
    }
  }

  return re::RealityEmitterBase::pushPipelineCompilationDataToDataStore(a1, this, a4);
}

uint64_t re::RenderGraphAREmitter::afterCameraViewHandler(uint64_t a1, uint64_t a2, uint64_t a3, re::RenderFrame *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v86[5] = *MEMORY[0x1E69E9840];
  v12 = 0x9E3779B97F4A7C17;
  if (*(a7 + 8))
  {
    v13 = *(a7 + 16);
  }

  else
  {
    v13 = (a7 + 9);
  }

  v14 = strlen(v13);
  if (v14)
  {
    MurmurHash3_x64_128(v13, v14, 0, &v75);
    v12 = ((v76 - 0x61C8864680B583E9 + (v75 << 6) + (v75 >> 2)) ^ v75) - 0x61C8864680B583E9;
  }

  re::CameraView::makeCameraData(a7, *(a4 + 1), a3, &v75);
  v54 = &unk_1F5D069E0;
  v64 = 0;
  v69 = 0;
  v16 = *(a7 + 768);
  v55 = *(a7 + 752);
  v56 = v16;
  v17 = *(a7 + 800);
  v57 = *(a7 + 784);
  v58 = v17;
  v18 = *(a7 + 864);
  v61 = *(a7 + 848);
  v62 = v18;
  v63 = *(a7 + 880);
  v19 = *(a7 + 832);
  v59 = *(a7 + 816);
  v60 = v19;
  if (*(a7 + 896) == 1)
  {
    v64 = 1;
    v20 = *(a7 + 928);
    v65 = *(a7 + 912);
    v66 = v20;
    v21 = *(a7 + 960);
    v67 = *(a7 + 944);
    v68 = v21;
  }

  if (*(a7 + 976) == 1)
  {
    v69 = 1;
    v22 = *(a7 + 1008);
    v70 = *(a7 + 992);
    v71 = v22;
    v23 = *(a7 + 1040);
    v72 = *(a7 + 1024);
    v73 = v23;
  }

  if (*(a1 + 1177) == 1)
  {
    v24 = &qword_1EE1C15D0;
    if (atomic_load_explicit(algn_1EE1C15D8, memory_order_acquire))
    {
      v25 = "DepthFeathering";
LABEL_13:
      v26 = *v24;
      v27 = v12 + (*v24 << 6) + (*v24 >> 2);
      re::RenderGraphDataStore::add<re::CameraData,re::CameraData&>(a5, v27 ^ *v24, &v75);
      re::RenderGraphDataStore::add<re::MeshLodSelectInputData,re::MeshLodSelectInputData&>(a5, v27 ^ v26, &v54);
      re::RealityEmitterBase::addSceneDataToDataStore(a1, a3, v27 ^ v26, a5);
      re::RenderFrame::emitGraph(a4, v25, v13);
      goto LABEL_20;
    }

    v53 = &qword_1EE1C15D0;
    v25 = "DepthFeathering";
    if (!__cxa_guard_acquire(algn_1EE1C15D8))
    {
      v24 = &qword_1EE1C15D0;
      goto LABEL_13;
    }

    v44 = re::hashString("DepthFeathering", v43);
    v45 = &qword_1EE1C15D0;
    goto LABEL_48;
  }

  if (*(a1 + 1178) == 1 && *(a1 + 1179) == 1)
  {
    if ((atomic_load_explicit(&qword_1EE1C15E8, memory_order_acquire) & 1) == 0)
    {
      v49 = __cxa_guard_acquire(&qword_1EE1C15E8);
      if (v49)
      {
        qword_1EE1C15E0 = re::getCombinedScopeHash(v49, v50, v51);
        __cxa_guard_release(&qword_1EE1C15E8);
      }
    }

    if (re::RenderGraphDataStore::tryGet<re::SceneUnderstandingGuidedFilterOcclusionData>(a5, qword_1EE1C15E0))
    {
      v24 = &qword_1EE1C15F0;
      if (atomic_load_explicit(algn_1EE1C15F8, memory_order_acquire))
      {
        v25 = "GuidedFilterOcclusion";
        goto LABEL_13;
      }

      v53 = &qword_1EE1C15F0;
      v25 = "GuidedFilterOcclusion";
      if (!__cxa_guard_acquire(algn_1EE1C15F8))
      {
        v24 = &qword_1EE1C15F0;
        goto LABEL_13;
      }

      v44 = re::hashString("GuidedFilterOcclusion", v52);
      v45 = &qword_1EE1C15F0;
LABEL_48:
      *v45 = v44;
      __cxa_guard_release(v45 + 1);
      v24 = v53;
      goto LABEL_13;
    }
  }

LABEL_20:
  v28 = *(a1 + 856);
  if (v28)
  {
    v29 = atomic_load((v28 + 896));
    if (v29 == 2)
    {
      re::AssetHandle::internalUpdateImmutableAsset<re::RenderGraphAsset,re::RenderGraphAREmitter::afterCameraViewHandler(re::RenderFrameContext &,re::RenderSceneContext &,re::RenderFrame &,re::RenderGraphDataStore &,char const*,re::CameraView const&)::$_0>((a1 + 848), a7);
    }
  }

  v30 = *(a1 + 904);
  if (v30)
  {
    v31 = atomic_load((v30 + 896));
    if (v31 == 2)
    {
      re::AssetHandle::internalUpdateImmutableAsset<re::RenderGraphAsset,re::RenderGraphAREmitter::afterCameraViewHandler(re::RenderFrameContext &,re::RenderSceneContext &,re::RenderFrame &,re::RenderGraphDataStore &,char const*,re::CameraView const&)::$_0>((a1 + 896), a7);
    }
  }

  v32 = *(a1 + 1000);
  if (v32)
  {
    v33 = atomic_load((v32 + 896));
    if (v33 == 2)
    {
      re::AssetHandle::internalUpdateImmutableAsset<re::RenderGraphAsset,re::RenderGraphAREmitter::afterCameraViewHandler(re::RenderFrameContext &,re::RenderSceneContext &,re::RenderFrame &,re::RenderGraphDataStore &,char const*,re::CameraView const&)::$_0>((a1 + 992), a7);
    }
  }

  v34 = *(a1 + 1024);
  if (v34)
  {
    v35 = atomic_load((v34 + 896));
    if (v35 == 2)
    {
      re::AssetHandle::internalUpdateImmutableAsset<re::RenderGraphAsset,re::RenderGraphAREmitter::afterCameraViewHandler(re::RenderFrameContext &,re::RenderSceneContext &,re::RenderFrame &,re::RenderGraphDataStore &,char const*,re::CameraView const&)::$_0>((a1 + 1016), a7);
    }
  }

  if ((*(a7 + 703) & 1) == 0)
  {
    re::CameraView::makeViewportPercentData(a7, v15, v74);
    if (*(a1 + 1174) == 1)
    {
      if ((atomic_load_explicit(&qword_1EE1C1608, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1608))
      {
        qword_1EE1C1600 = re::hashString("DepthOfField", v46);
        __cxa_guard_release(&qword_1EE1C1608);
      }

      v36 = qword_1EE1C1600;
      v37 = v12 + (qword_1EE1C1600 << 6) + (qword_1EE1C1600 >> 2);
      re::RenderGraphDataStore::add<re::CameraData,re::CameraData&>(a5, v37 ^ qword_1EE1C1600, &v75);
      re::RenderGraphDataStore::add<re::ViewportPercentData,re::ViewportPercentData&>(a5, v37 ^ v36, v74);
      re::RealityEmitterBase::addSceneDataToDataStore(a1, a3, v37 ^ v36, a5);
      re::RenderFrame::emitGraph(a4, "DepthOfField", v13);
    }

    if (*(a1 + 1175) == 1)
    {
      if ((atomic_load_explicit(&qword_1EE1C1618, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1618))
      {
        qword_1EE1C1610 = re::hashString("MotionBlur", v47);
        __cxa_guard_release(&qword_1EE1C1618);
      }

      v38 = qword_1EE1C1610;
      v39 = v12 + (qword_1EE1C1610 << 6) + (qword_1EE1C1610 >> 2);
      re::RenderGraphDataStore::add<re::CameraData,re::CameraData&>(a5, v39 ^ qword_1EE1C1610, &v75);
      re::RenderGraphDataStore::add<re::ViewportPercentData,re::ViewportPercentData&>(a5, v39 ^ v38, v74);
      re::RealityEmitterBase::addSceneDataToDataStore(a1, a3, v39 ^ v38, a5);
      re::RenderFrame::emitGraph(a4, "MotionBlur", v13);
    }

    if (*(a1 + 1176) == 1)
    {
      if ((atomic_load_explicit(&qword_1EE1C1628, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1628))
      {
        qword_1EE1C1620 = re::hashString("PostProcessCombined", v48);
        __cxa_guard_release(&qword_1EE1C1628);
      }

      v40 = qword_1EE1C1620;
      v41 = v12 + (qword_1EE1C1620 << 6) + (qword_1EE1C1620 >> 2);
      re::RenderGraphDataStore::add<re::ViewportPercentData,re::ViewportPercentData&>(a5, v41 ^ qword_1EE1C1620, v74);
      re::RealityEmitterBase::addSceneDataToDataStore(a1, a3, v41 ^ v40, a5);
      re::RenderFrame::emitGraph(a4, "PostProcessCombined", v13);
      *(*(*(*(a4 + 1) + 112) + 1648) + 16) = 0;
    }
  }

  re::RealityEmitterBase::emitCustomPostProcessGraph<re::CameraView>(a1, a3, a4, a7);
  re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(v86);
  ++v85;
  ++v83;
  ++v81;
  v84 = 0;
  v82 = 0;
  v80 = 0;
  v78 = 0;
  ++v79;
  result = v76;
  if (v76)
  {
    if (v77)
    {
      return (*(*v76 + 40))();
    }
  }

  return result;
}

uint64_t re::RenderGraphDataStore::add<re::CameraData,re::CameraData&>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25[2] = *MEMORY[0x1E69E9840];
  v24 = 0;
  {
    re::introspect<re::CameraData>(BOOL)::info = re::introspect_CameraData(0, v18, v19, v20, v21, v22);
  }

  v23 = re::introspect<re::CameraData>(BOOL)::info;
  v6 = strlen(*(re::introspect<re::CameraData>(BOOL)::info + 6));
  if (v6)
  {
    MurmurHash3_x64_128(*(re::introspect<re::CameraData>(BOOL)::info + 6), v6, 0, v25);
    v7 = (v25[1] - 0x61C8864680B583E9 + (v25[0] << 6) + (v25[0] >> 2)) ^ v25[0];
  }

  else
  {
    v7 = 0;
  }

  v24 = v7;
  re::HashTable<unsigned long,re::IntrospectionStructure const*,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addOrReplace(a1 + 176, &v24, &v23);
  v25[0] = (a2 - 0x61C8864680B583E9 + (v24 << 6) + (v24 >> 2)) ^ v24;
  v8 = (*(**(a1 + 8) + 32))(*(a1 + 8), 960, 16);
  *v8 = &unk_1F5D03750;
  re::DynamicString::DynamicString((v8 + 8), (a3 + 8));
  *(v8 + 48) = 0;
  *(v8 + 56) = 0;
  v9 = *(a3 + 48);
  memcpy((v8 + 64), (a3 + 64), 32 * v9);
  *(v8 + 48) = v9;
  *(v8 + 128) = 0;
  *(v8 + 136) = 0;
  re::DynamicInlineArray<re::Projection,2ul>::copy((v8 + 128), (a3 + 128));
  *(v8 + 624) = 0;
  *(v8 + 632) = 0;
  v10 = *(a3 + 624);
  memcpy((v8 + 640), (a3 + 640), v10 << 6);
  *(v8 + 624) = v10;
  *(v8 + 768) = 0;
  *(v8 + 776) = 0;
  v11 = *(a3 + 768);
  memcpy((v8 + 784), (a3 + 784), 16 * v11);
  *(v8 + 768) = v11;
  v13 = *(a3 + 832);
  v12 = *(a3 + 848);
  v14 = *(a3 + 816);
  *(v8 + 858) = *(a3 + 858);
  *(v8 + 832) = v13;
  *(v8 + 848) = v12;
  *(v8 + 816) = v14;
  v15 = *(a3 + 876);
  *(v8 + 876) = v15;
  if (v15 == 1)
  {
    *(v8 + 880) = *(a3 + 880);
  }

  v16 = *(a3 + 884);
  *(v8 + 897) = *(a3 + 897);
  *(v8 + 884) = v16;
  *(v8 + 944) = *(a3 + 944);
  *(v8 + 952) = 0;
  re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::operator=<24ul>(v8 + 920, a3 + 920);
  v23 = v8;
  return re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a1 + 64, v25, &v23);
}

re::RenderGraphAsset *re::AssetHandle::internalUpdateImmutableAsset<re::RenderGraphAsset,re::RenderGraphAREmitter::afterCameraViewHandler(re::RenderFrameContext &,re::RenderSceneContext &,re::RenderFrame &,re::RenderGraphDataStore &,char const*,re::CameraView const&)::$_0>(re::RenderGraphAsset *result, uint64_t a2)
{
  v2 = *(result + 1);
  if (v2)
  {
    v3 = atomic_load((v2 + 896));
    if (v3 == 2)
    {
      ++*(*(result + 1) + 276);
      result = re::AssetHandle::loadedAsset<re::RenderGraphAsset>(result);
      if (result)
      {
        v5 = result;
        if (*(a2 + 704))
        {
          v6 = "arKitPassthroughDisabledTechnique";
        }

        else
        {
          v6 = "arKitPassthroughTechnique";
        }

        v9 = 0xBEC9DE826D75EA6;
        v10 = "Fullscreen_ARKitPassthrough";
        {
          re::introspect<re::DynamicString>(BOOL)::info = re::IntrospectionInfo<re::DynamicString>::get(0, v8);
        }

        v7 = re::RenderGraphFile::setRuntimeNodeSetting((v5 + 8), &v9, re::introspect<re::DynamicString>(BOOL)::info, "techniqueName", &v11);
        if (v9)
        {
          if (v9)
          {
          }
        }

        result = v11;
        if (v11)
        {
          if (v12)
          {
            return (*(*v11 + 40))();
          }
        }
      }
    }
  }

  return result;
}

uint64_t re::RenderGraphDataStore::add<re::ViewportPercentData,re::ViewportPercentData&>(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = "N2re19ViewportPercentDataE";
  if (("N2re19ViewportPercentDataE" & 0x8000000000000000) != 0)
  {
    v6 = ("N2re19ViewportPercentDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  v13 = (a2 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9) ^ v5;
  v9 = (*(**(a1 + 8) + 32))(*(a1 + 8), 80, 16);
  *v9 = &unk_1F5D06920;
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  v10 = a3[2];
  memcpy((v9 + 32), a3 + 4, 16 * v10);
  *(v9 + 16) = v10;
  *(v9 + 64) = a3[8];
  v12 = v9;
  return re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a1 + 64, &v13, &v12);
}

void re::RenderGraphAREmitter::afterCameraMultiViewHandler(uint64_t a1, uint64_t a2, uint64_t a3, re::RenderFrame *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29[6] = *MEMORY[0x1E69E9840];
  if ((*(a7 + 703) & 1) == 0)
  {
    if ((atomic_load_explicit(&qword_1EE1C1638, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1638))
    {
      qword_1EE1C1630 = re::hashString("PostProcessMultiView", v17);
      __cxa_guard_release(&qword_1EE1C1638);
    }

    if (*(a7 + 8))
    {
      v11 = *(a7 + 16);
    }

    else
    {
      v11 = (a7 + 9);
    }

    v12 = qword_1EE1C1630;
    v13 = strlen(v11);
    if (v13)
    {
      MurmurHash3_x64_128(v11, v13, 0, &v18);
      v14 = (v19 - 0x61C8864680B583E9 + (v18 << 6) + (v18 >> 2)) ^ v18;
    }

    else
    {
      v14 = 0;
    }

    v15 = (v12 << 6) - 0x61C8864680B583E9 + (v12 >> 2) + v14;
    re::CameraMultiView::makeCameraDataInstancedMode(a7, *(a4 + 1), a3, &v18);
    re::RenderGraphDataStore::add<re::CameraData,re::CameraData>(a5, v15 ^ v12, &v18);
    re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(v29);
    ++v28;
    ++v26;
    ++v24;
    v27 = 0;
    v25 = 0;
    v23 = 0;
    v21 = 0;
    ++v22;
    if (v19)
    {
      if (v20)
      {
        (*(*v19 + 40))();
      }
    }

    re::CameraMultiView::makeViewportPercentDataInstancedMode(a7, v16, &v18);
    re::RenderGraphDataStore::add<re::ViewportPercentData,re::ViewportPercentData>(a5, v15 ^ v12, &v18);
    re::RenderFrame::emitGraph(a4, "PostProcessMultiView", v11);
    *(*(*(*(a4 + 1) + 112) + 1648) + 16) = 0;
  }
}

uint64_t re::RenderGraphAREmitter::cameraViewHandler(uint64_t a1, uint64_t a2, uint64_t a3, re::RenderFrame *a4, uint64_t a5, char *a6, uint64_t a7)
{
  re::CameraView::prepareEmitDefault(a7, a4, a5, a2, a3, a6);
  if (*(a7 + 8))
  {
    v13 = *(a7 + 16);
  }

  else
  {
    v13 = (a7 + 9);
  }

  return re::RenderGraphAREmitter::fillDataStoreAndEmitGraph(a1, a7, a4, a5, a3, v13, a6);
}

uint64_t re::RenderGraphAREmitter::cameraMultiViewHandler(uint64_t a1, uint64_t a2, uint64_t a3, re::RenderFrame *a4, uint64_t a5, char *a6, uint64_t a7)
{
  re::CameraMultiView::prepareEmitDefaultInstancedMode(a7, a4, a5, a2, a3, a6);
  if (*(a7 + 8))
  {
    v13 = *(a7 + 16);
  }

  else
  {
    v13 = (a7 + 9);
  }

  return re::RenderGraphAREmitter::fillDataStoreAndEmitGraph(a1, a7, a4, a5, a3, v13, a6);
}

void re::RenderGraphAREmitter::registerProviders(re::RenderGraphAREmitter *this, re::RenderGraphManager *a2, AssetService *a3)
{
  re::RealityEmitterBase::registerCommonProviders(this, a2, a3);
  (*(a3->var0 + 1))(&v113, a3, "engine:BuiltinRenderGraphResources/Common/depthClear.rematerial");
  v6 = *(this + 152);
  *(this + 152) = v113;
  v113 = v6;
  v7 = *(this + 21);
  *(this + 21) = v114;
  v114 = v7;
  re::AssetHandle::~AssetHandle(&v113);
  re::AssetHandle::loadAsync((this + 152));
  (*(a3->var0 + 1))(v112, a3, "engine:default.metallib");
  re::AssetHandle::loadAsync(v112);
  v9 = *(this + 98);
  if (v9)
  {
    v10 = atomic_load((v9 + 896));
    if (v10 != 2)
    {
      re::AssetHandle::loadNow(*(this + 98), 0);
    }

    v11 = *(this + 98);
    if (v11)
    {
      v12 = atomic_load((v11 + 896));
      if (v12 == 2 && !re::FontID::isValid((this + 1248)))
      {
        v13 = *(this + 98);
        if (v13)
        {
          v14 = atomic_load((v13 + 896));
          if (v14 == 2)
          {
            ++*(*(this + 98) + 276);
            v15 = re::AssetHandle::loadedAsset<re::RenderGraphAsset>((this + 776));
            if (v15)
            {
              re::RenderGraphManager::addProviderInternal(&v113, a2, "Camera", (v15 + 8), 0, 0);
              v16 = re::StringID::operator=((this + 1248), &v113);
              *(this + 158) = v114;
              if (v113)
              {
                if (v113)
                {
                }
              }
            }
          }
        }
      }
    }
  }

  v17 = *(this + 101);
  if (v17)
  {
    v18 = atomic_load((v17 + 896));
    if (v18 != 2)
    {
      re::AssetHandle::loadNow(*(this + 101), 0);
    }

    v19 = *(this + 101);
    if (v19)
    {
      v20 = atomic_load((v19 + 896));
      if (v20 == 2 && !re::FontID::isValid((this + 1416)))
      {
        v21 = *(this + 101);
        if (v21)
        {
          v22 = atomic_load((v21 + 896));
          if (v22 == 2)
          {
            ++*(*(this + 101) + 276);
            v23 = re::AssetHandle::loadedAsset<re::RenderGraphAsset>((this + 800));
            if (v23)
            {
              re::RenderGraphManager::addProviderInternal(&v113, a2, "SingleGraphShadows", (v23 + 8), 0, 0);
              v24 = re::StringID::operator=((this + 1416), &v113);
              *(this + 179) = v114;
              if (v113)
              {
                if (v113)
                {
                }
              }
            }
          }
        }
      }
    }
  }

  v25 = (this + 1224);
  v26 = *(this + 154);
  if (!v26 || (v27 = atomic_load((v26 + 896)), v27 != 2))
  {
    (*(a3->var0 + 1))(&v113, a3, "engine:BuiltinRenderGraphResources/Common/filter.rerendergraph");
    v28 = *v25;
    *v25 = v113;
    v113 = v28;
    v29 = *(this + 155);
    *(this + 155) = v114;
    v114 = v29;
    re::AssetHandle::~AssetHandle(&v113);
    re::AssetHandle::loadNow(*(this + 154), 0);
  }

  v30 = *(this + 154);
  if (v30)
  {
    v31 = atomic_load((v30 + 896));
    if (v31 == 2 && !re::FontID::isValid((this + 1440)))
    {
      v32 = *(this + 154);
      if (v32)
      {
        v33 = atomic_load((v32 + 896));
        if (v33 == 2)
        {
          ++*(*(this + 154) + 276);
          v34 = re::AssetHandle::loadedAsset<re::RenderGraphAsset>((this + 1224));
          if (v34)
          {
            re::RenderGraphManager::addProviderInternal(&v113, a2, "Filter", (v34 + 8), 0, 0);
            v35 = re::StringID::operator=((this + 1440), &v113);
            *(this + 182) = v114;
            if (v113)
            {
              if (v113)
              {
              }
            }
          }
        }
      }
    }
  }

  v36 = *(this + 119);
  if (v36)
  {
    v37 = atomic_load((v36 + 896));
    if (v37 != 2)
    {
      re::AssetHandle::loadNow(*(this + 119), 0);
    }

    v38 = *(this + 119);
    if (v38)
    {
      v39 = atomic_load((v38 + 896));
      if (v39 == 2 && !re::FontID::isValid((this + 1296)))
      {
        v40 = *(this + 119);
        if (v40)
        {
          v41 = atomic_load((v40 + 896));
          if (v41 == 2)
          {
            ++*(*(this + 119) + 276);
            v42 = re::AssetHandle::loadedAsset<re::RenderGraphAsset>((this + 944));
            if (v42)
            {
              re::RenderGraphManager::addProviderInternal(&v113, a2, "DepthOfField", (v42 + 8), 0, 0);
              v43 = re::StringID::operator=((this + 1296), &v113);
              *(this + 164) = v114;
              if (v113)
              {
                if (v113)
                {
                }
              }
            }
          }
        }
      }
    }
  }

  v44 = *(this + 122);
  if (v44)
  {
    v45 = atomic_load((v44 + 896));
    if (v45 != 2)
    {
      re::AssetHandle::loadNow(*(this + 122), 0);
    }

    v46 = *(this + 122);
    if (v46)
    {
      v47 = atomic_load((v46 + 896));
      if (v47 == 2 && !re::FontID::isValid((this + 1320)))
      {
        v48 = *(this + 122);
        if (v48)
        {
          v49 = atomic_load((v48 + 896));
          if (v49 == 2)
          {
            ++*(*(this + 122) + 276);
            v50 = re::AssetHandle::loadedAsset<re::RenderGraphAsset>((this + 968));
            if (v50)
            {
              re::RenderGraphManager::addProviderInternal(&v113, a2, "MotionBlur", (v50 + 8), 0, 0);
              v51 = re::StringID::operator=((this + 1320), &v113);
              *(this + 167) = v114;
              if (v113)
              {
                if (v113)
                {
                }
              }
            }
          }
        }
      }
    }
  }

  v52 = *(this + 125);
  if (v52)
  {
    v53 = atomic_load((v52 + 896));
    if (v53 != 2)
    {
      re::AssetHandle::loadNow(*(this + 125), 0);
    }
  }

  v54 = *(this + 128);
  if (v54)
  {
    v55 = atomic_load((v54 + 896));
    if (v55 != 2)
    {
      re::AssetHandle::loadNow(*(this + 128), 0);
    }
  }

  v56 = *(this + 131);
  if (v56)
  {
    v57 = atomic_load((v56 + 896));
    if (v57 != 2)
    {
      re::AssetHandle::loadNow(*(this + 131), 0);
    }

    v58 = *(this + 131);
    if (v58)
    {
      v59 = atomic_load((v58 + 896));
      if (v59 == 2 && !re::FontID::isValid((this + 1584)))
      {
        v60 = *(this + 131);
        if (v60)
        {
          v61 = atomic_load((v60 + 896));
          if (v61 == 2)
          {
            ++*(*(this + 131) + 276);
            v62 = re::AssetHandle::loadedAsset<re::RenderGraphAsset>((this + 1040));
            if (v62)
            {
              re::RenderGraphManager::addProviderInternal(&v113, a2, "Camera", (v62 + 8), 21, 0);
              v63 = re::StringID::operator=((this + 1584), &v113);
              *(this + 200) = v114;
              if (v113)
              {
                if (v113)
                {
                }
              }
            }
          }
        }
      }
    }
  }

  v64 = *(this + 116);
  if (v64)
  {
    v65 = atomic_load((v64 + 896));
    if (v65 != 2)
    {
      re::AssetHandle::loadNow(*(this + 116), 0);
    }

    v66 = *(this + 116);
    if (v66)
    {
      v67 = atomic_load((v66 + 896));
      if (v67 == 2 && !re::FontID::isValid((this + 1272)))
      {
        v68 = *(this + 116);
        if (v68)
        {
          v69 = atomic_load((v68 + 896));
          if (v69 == 2)
          {
            ++*(*(this + 116) + 276);
            v70 = re::AssetHandle::loadedAsset<re::RenderGraphAsset>((this + 920));
            if (v70)
            {
              re::RenderGraphManager::addProviderInternal(&v113, a2, "PostProcessMultiView", (v70 + 8), 0, 0);
              v71 = re::StringID::operator=((this + 1272), &v113);
              *(this + 161) = v114;
              if (v113)
              {
                if (v113)
                {
                }
              }
            }
          }
        }
      }
    }
  }

  v72 = *(this + 92);
  if (v72)
  {
    v73 = atomic_load((v72 + 896));
    if (v73 != 2)
    {
      re::AssetHandle::loadNow(*(this + 92), 0);
    }

    v74 = *(this + 92);
    if (v74)
    {
      v75 = atomic_load((v74 + 896));
      if (v75 == 2 && !re::FontID::isValid((this + 1368)))
      {
        v76 = *(this + 92);
        if (v76)
        {
          v77 = atomic_load((v76 + 896));
          if (v77 == 2)
          {
            ++*(*(this + 92) + 276);
            v78 = re::AssetHandle::loadedAsset<re::RenderGraphAsset>((this + 728));
            if (v78)
            {
              re::RenderGraphManager::addProviderInternal(&v113, a2, "DepthFeathering", (v78 + 8), 0, 0);
              v79 = re::StringID::operator=((this + 1368), &v113);
              *(this + 173) = v114;
              if (v113)
              {
                if (v113)
                {
                }
              }
            }
          }
        }
      }
    }
  }

  v80 = *(this + 95);
  if (v80)
  {
    v81 = atomic_load((v80 + 896));
    if (v81 != 2)
    {
      re::AssetHandle::loadNow(*(this + 95), 0);
    }

    v82 = *(this + 95);
    if (v82)
    {
      v83 = atomic_load((v82 + 896));
      if (v83 == 2 && !re::FontID::isValid((this + 1392)))
      {
        v84 = *(this + 95);
        if (v84)
        {
          v85 = atomic_load((v84 + 896));
          if (v85 == 2)
          {
            ++*(*(this + 95) + 276);
            v86 = re::AssetHandle::loadedAsset<re::RenderGraphAsset>((this + 752));
            if (v86)
            {
              re::RenderGraphManager::addProviderInternal(&v113, a2, "GuidedFilterOcclusion", (v86 + 8), 0, 0);
              v87 = re::StringID::operator=((this + 1392), &v113);
              *(this + 176) = v114;
              if (v113)
              {
                if (v113)
                {
                }
              }
            }
          }
        }
      }
    }
  }

  if (*(this + 1212) == 1)
  {
    re::SFBSystemShellBlurProvider::registerProviderCommon(a2, v112, 1, (this + 1560), v8);
  }

  isValid = re::FontID::isValid((this + 1512));
  if (!isValid)
  {
    v89 = re::globalAllocators(isValid);
    v90 = (*(*v89[2] + 32))(v89[2], 88, 8);
    re::DepthStencilCombinerProvider::DepthStencilCombinerProvider(v90, v111);
    if (*&v111[0])
    {
      if (BYTE8(v111[0]))
      {
        (*(**&v111[0] + 40))();
      }

      memset(v111, 0, sizeof(v111));
    }

    re::RenderGraphManager::addProviderInternal(&v113, a2, "Camera", v90, -10, 1);
    v91 = re::StringID::operator=((this + 1512), &v113);
    *(this + 191) = v114;
    if (v113)
    {
      if (v113)
      {
      }
    }
  }

  v92 = re::FontID::isValid((this + 1536));
  if (!v92)
  {
    v93 = re::globalAllocators(v92);
    v94 = (*(*v93[2] + 32))(v93[2], 136, 8);
    re::DepthStencilSplitterProvider::DepthStencilSplitterProvider(v94, v110);
    if (*&v110[0])
    {
      if (BYTE8(v110[0]))
      {
        (*(**&v110[0] + 40))();
      }

      memset(v110, 0, sizeof(v110));
    }

    (*(a3->var0 + 1))(&v113, a3, "engine:BuiltinRenderGraphResources/Common/separateDepth.rematerial");
    v95 = *(v94 + 11);
    *(v94 + 11) = v113;
    v113 = v95;
    v96 = v94[13];
    v94[13] = v114;
    v114 = v96;
    re::AssetHandle::~AssetHandle(&v113);
    re::AssetHandle::loadAsync((v94 + 11));
    re::AssetHandle::operator=(this + 200, v94 + 11);
    (*(a3->var0 + 1))(&v113, a3, "engine:BuiltinRenderGraphResources/Common/separateStencil.rematerial");
    v97 = *(v94 + 7);
    *(v94 + 7) = v113;
    v113 = v97;
    v98 = v94[16];
    v94[16] = v114;
    v114 = v98;
    re::AssetHandle::~AssetHandle(&v113);
    re::AssetHandle::loadAsync((v94 + 14));
    re::AssetHandle::operator=(this + 176, v94 + 14);
    re::RenderGraphManager::addProviderInternal(&v113, a2, "Camera", v94, 10, 1);
    v99 = re::StringID::operator=((this + 1536), &v113);
    *(this + 194) = v114;
    if (v113)
    {
      if (v113)
      {
      }
    }
  }

  v100 = re::FontID::isValid((this + 1464));
  if (!v100)
  {
    v101 = re::globalAllocators(v100);
    v102 = (*(*v101[2] + 32))(v101[2], 112, 8);
    re::VRRUnwarpProvider::VRRUnwarpProvider(v102, v109);
    if (*&v109[0])
    {
      if (BYTE8(v109[0]))
      {
        (*(**&v109[0] + 40))();
      }

      memset(v109, 0, sizeof(v109));
    }

    re::AssetHandle::operator=(v102 + 40, v112);
    re::RenderGraphManager::addProviderInternal(&v113, a2, "Camera", v102, 50, 1);
    v103 = re::StringID::operator=((this + 1464), &v113);
    *(this + 185) = v114;
    if (v113)
    {
      if (v113)
      {
      }
    }
  }

  v104 = re::FontID::isValid((this + 1488));
  if (!v104)
  {
    v105 = re::globalAllocators(v104);
    v106 = (*(*v105[2] + 32))(v105[2], 48, 8);
    re::VFXRenderGraphProvider::VFXRenderGraphProvider(v106, v108);
    if (*&v108[0])
    {
      if (BYTE8(v108[0]))
      {
        (*(**&v108[0] + 40))();
      }

      memset(v108, 0, sizeof(v108));
    }

    re::RenderGraphManager::addProviderInternal(&v113, a2, "VFXSimulation", v106, 0, 1);
    v107 = re::StringID::operator=((this + 1488), &v113);
    *(this + 188) = v114;
    if (v113)
    {
      if (v113)
      {
      }
    }
  }

  re::ARSegmentationEmitterCache::registerRenderGraphProvider(*(this + 222), a2);
  *(this + 152) = a2;
  re::AssetHandle::~AssetHandle(v112);
}

void re::RenderGraphAREmitter::frameSetup(re::RenderGraphAREmitter *this, re::RenderManager *a2)
{
  if (*(this + 1608) != *(this + 1180) || !re::FontID::isValid((this + 1344)))
  {
    if (re::FontID::isValid((this + 1344)))
    {
      v4 = *(a2 + 14);
      if (v4)
      {
        v5 = *(v4 + 296);
      }

      else
      {
        v5 = 0;
      }

      re::StringID::StringID(v18, this + 84);
      v18[2] = *(this + 170);
      v6 = re::RenderGraphManager::removeProvider(v5, v18);
      if (v18[0])
      {
        if (v18[0])
        {
        }
      }

      v18[0] = 0;
      v18[1] = &str_67;
      re::ProviderHandle::invalidate((this + 1344));
    }

    v7 = 992;
    if (*(this + 1180))
    {
      v7 = 1016;
    }

    re::AssetHandle::AssetHandle(v16, (this + v7));
    if (v17)
    {
      re::AssetHandle::loadNow(v17, 0);
      if (v17)
      {
        v8 = atomic_load((v17 + 896));
        if (v8 == 2)
        {
          ++*(v17 + 276);
          v9 = re::AssetHandle::loadedAsset<re::RenderGraphAsset>(v16);
          if (v9)
          {
            v10 = *(a2 + 14);
            v11 = v10 ? *(v10 + 296) : 0;
            re::RenderGraphManager::addProviderInternal(v19, v11, "PostProcessCombined", (v9 + 8), 0, 0);
            v12 = re::StringID::operator=((this + 1344), v19);
            *(this + 170) = v19[2];
            if (v19[0])
            {
              if (v19[0])
              {
              }
            }
          }
        }
      }
    }

    *(this + 1608) = *(this + 1180);
    re::AssetHandle::~AssetHandle(v16);
  }

  if (!*(this + 223))
  {
    v13 = (this + 1784);
    re::ar::DualGuidedFilter::create(v19, (a2 + 208), 0);
    if ((this + 1784) != v19)
    {
      v14 = v19[0];
      v19[0] = 0;
      v15 = *v13;
      *v13 = v14;
    }

    v19[0] = [*(a2 + 26) newEvent];
    NS::SharedPtr<MTL::Texture>::operator=(this + 224, v19);
    if (v19[0])
    {
    }

    [*(this + 224) setLabel_];
    *(this + 225) = 0;
  }
}

void re::introspect_RenderGraphAREmitterPostProcessOption(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1C1640, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1C1648, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1648))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1C16B0, "RenderGraphAREmitterPostProcessOption", 4, 4, 1, 1);
      qword_1EE1C16B0 = &unk_1F5D0C658;
      qword_1EE1C16F0 = &re::introspect_RenderGraphAREmitterPostProcessOption(BOOL)::enumTable;
      dword_1EE1C16C0 = 9;
      __cxa_guard_release(&qword_1EE1C1648);
    }

    if (_MergedGlobals_542)
    {
      break;
    }

    _MergedGlobals_542 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1C16B0, a2);
    v41 = 0x495BDF4BE72D0B7ELL;
    v42 = "RenderGraphAREmitterPostProcessOption";
    v45 = 0x607DD0F01DCLL;
    v46 = "uint32_t";
    v4 = v44[0];
    v5 = v44[1];
    if (v45)
    {
      if (v45)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1C16F0;
      v45 = v4;
      v46 = v5;
      re::TypeBuilder::beginEnumType(v44, &v41, 1, 1, &v45);
      v7 = *v6;
      if (v7)
      {
        for (i = 0; i < v7; ++i)
        {
          v9 = *(*(v6 + 1) + 8 * i);
          if (*v9 == 1)
          {
            v10 = *(v9 + 16);
            if (v10)
            {
              v11 = *v10;
              if (*v10)
              {
                v12 = v10[1];
                if (v12)
                {
                  v13 = (v10 + 2);
                  do
                  {
                    v11 = 31 * v11 + v12;
                    v14 = *v13++;
                    v12 = v14;
                  }

                  while (v14);
                }
              }
            }

            else
            {
              v11 = 0;
            }

            v15 = *(v9 + 8);
            *&v43.var0 = 2 * v11;
            v43.var1 = v10;
            re::TypeBuilder::addEnumConstant(v44, v15, &v43);
            if (*&v43.var0)
            {
              if (*&v43.var0)
              {
              }
            }

            v7 = *v6;
          }
        }

        if (v7)
        {
          for (j = 0; j < v7; ++j)
          {
            v18 = *(*(v6 + 1) + 8 * j);
            if (*v18 == 2)
            {
              v19 = *(v18 + 16);
              if (v19)
              {
                v20 = *v19;
                if (*v19)
                {
                  v21 = v19[1];
                  if (v21)
                  {
                    v22 = (v19 + 2);
                    do
                    {
                      v20 = 31 * v20 + v21;
                      v23 = *v22++;
                      v21 = v23;
                    }

                    while (v23);
                  }
                }
              }

              else
              {
                v20 = 0;
              }

              v24 = *(v18 + 8);
              *&v43.var0 = 2 * v20;
              v43.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v44, v24, &v43);
              if (*&v43.var0)
              {
                if (*&v43.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v44, v26);
      xmmword_1EE1C16D0 = v43;
      if (v41)
      {
        if (v41)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v42);
    _os_crash("assertion failure: (valueID.isValid()) Failed to determine underlying type of enum %s.", v40);
    __break(1u);
LABEL_43:
    if (__cxa_guard_acquire(&qword_1EE1C1640))
    {
      v28 = re::introspectionAllocator();
      v29 = (*(*v28 + 32))(v28, 24, 8);
      *v29 = 1;
      *(v29 + 8) = 0;
      *(v29 + 16) = "Fastest";
      qword_1EE1C1680 = v29;
      v30 = re::introspectionAllocator();
      v31 = (*(*v30 + 32))(v30, 24, 8);
      *v31 = 1;
      *(v31 + 8) = 1;
      *(v31 + 16) = "Standard";
      qword_1EE1C1688 = v31;
      v32 = re::introspectionAllocator();
      v33 = (*(*v32 + 32))(v32, 24, 8);
      *v33 = 1;
      *(v33 + 8) = 2;
      *(v33 + 16) = "High";
      qword_1EE1C1690 = v33;
      v34 = re::introspectionAllocator();
      v35 = (*(*v34 + 32))(v34, 24, 8);
      *v35 = 1;
      *(v35 + 8) = 3;
      *(v35 + 16) = "Best";
      qword_1EE1C1698 = v35;
      v36 = re::introspectionAllocator();
      v37 = (*(*v36 + 32))(v36, 24, 8);
      *v37 = 1;
      *(v37 + 8) = 4;
      *(v37 + 16) = "MultiView";
      qword_1EE1C16A0 = v37;
      v38 = re::introspectionAllocator();
      v39 = (*(*v38 + 32))(v38, 24, 8);
      *v39 = 1;
      *(v39 + 8) = 5;
      *(v39 + 16) = "Low";
      qword_1EE1C16A8 = v39;
      __cxa_guard_release(&qword_1EE1C1640);
    }
  }
}

void *re::allocInfo_RenderGraphAREmitter(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C1650, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1650))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C16F8, "RenderGraphAREmitter");
    __cxa_guard_release(&qword_1EE1C1650);
  }

  return &unk_1EE1C16F8;
}

void re::initInfo_RenderGraphAREmitter(re *this, re::IntrospectionBase *a2)
{
  v139[0] = 0x228CD2A2CBEEF78ALL;
  v139[1] = "RenderGraphAREmitter";
  if (v139[0])
  {
    if (v139[0])
    {
    }
  }

  *(this + 2) = v140;
  if ((atomic_load_explicit(&qword_1EE1C1658, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1658))
  {
    v5 = re::introspectionAllocator();
    v6 = re::introspect_RealityEmitterBase(1);
    v7 = (*(*v5 + 32))(v5, 72, 8);
    *v7 = 1;
    *(v7 + 8) = "RealityEmitterBase";
    *(v7 + 16) = v6;
    *(v7 + 24) = 0;
    *(v7 + 32) = 0;
    *(v7 + 40) = 3;
    *(v7 + 48) = 0;
    *(v7 + 56) = 0;
    *(v7 + 64) = 0;
    qword_1EE1C1788 = v7;
    v8 = re::introspectionAllocator();
    v10 = re::introspect_AssetHandle(1, v9);
    v11 = (*(*v8 + 32))(v8, 72, 8);
    *v11 = 1;
    *(v11 + 8) = "shadowMapGraph";
    *(v11 + 16) = v10;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0x32000000001;
    *(v11 + 40) = 0;
    *(v11 + 48) = 0;
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
    qword_1EE1C1790 = v11;
    v12 = re::introspectionAllocator();
    v14 = re::introspect_AssetHandle(1, v13);
    v15 = (*(*v12 + 32))(v12, 72, 8);
    *v15 = 1;
    *(v15 + 8) = "projectiveMeshShadowGraph";
    *(v15 + 16) = v14;
    *(v15 + 24) = 0;
    *(v15 + 32) = 0x41000000003;
    *(v15 + 40) = 0;
    *(v15 + 48) = 0;
    *(v15 + 56) = 0;
    *(v15 + 64) = 0;
    qword_1EE1C1798 = v15;
    v16 = re::introspectionAllocator();
    v18 = re::introspect_AssetHandle(1, v17);
    v19 = (*(*v16 + 32))(v16, 72, 8);
    *v19 = 1;
    *(v19 + 8) = "depthFeatheringGraph";
    *(v19 + 16) = v18;
    *(v19 + 24) = 0;
    *(v19 + 32) = 0x2D800000004;
    *(v19 + 40) = 0;
    *(v19 + 48) = 0;
    *(v19 + 56) = 0;
    *(v19 + 64) = 0;
    qword_1EE1C17A0 = v19;
    v20 = re::introspectionAllocator();
    v22 = re::introspect_AssetHandle(1, v21);
    v23 = (*(*v20 + 32))(v20, 72, 8);
    *v23 = 1;
    *(v23 + 8) = "guidedFilterOcclusionGraph";
    *(v23 + 16) = v22;
    *(v23 + 24) = 0;
    *(v23 + 32) = 0x2F000000005;
    *(v23 + 40) = 0;
    *(v23 + 48) = 0;
    *(v23 + 56) = 0;
    *(v23 + 64) = 0;
    qword_1EE1C17A8 = v23;
    v24 = re::introspectionAllocator();
    v26 = re::introspect_AssetHandle(1, v25);
    v27 = (*(*v24 + 32))(v24, 72, 8);
    *v27 = 1;
    *(v27 + 8) = "cameraGraph";
    *(v27 + 16) = v26;
    *(v27 + 24) = 0;
    *(v27 + 32) = 0x30800000006;
    *(v27 + 40) = 0;
    *(v27 + 48) = 0;
    *(v27 + 56) = 0;
    *(v27 + 64) = 0;
    qword_1EE1C17B0 = v27;
    v28 = re::introspectionAllocator();
    v30 = re::introspect_AssetHandle(1, v29);
    v31 = (*(*v28 + 32))(v28, 72, 8);
    *v31 = 1;
    *(v31 + 8) = "postProcessGraphFastest";
    *(v31 + 16) = v30;
    *(v31 + 24) = 0;
    *(v31 + 32) = 0x33800000008;
    *(v31 + 40) = 0;
    *(v31 + 48) = 0;
    *(v31 + 56) = 0;
    *(v31 + 64) = 0;
    qword_1EE1C17B8 = v31;
    v32 = re::introspectionAllocator();
    v34 = re::introspect_AssetHandle(1, v33);
    v35 = (*(*v32 + 32))(v32, 72, 8);
    *v35 = 1;
    *(v35 + 8) = "postProcessGraphStandard";
    *(v35 + 16) = v34;
    *(v35 + 24) = 0;
    *(v35 + 32) = 0x35000000009;
    *(v35 + 40) = 0;
    *(v35 + 48) = 0;
    *(v35 + 56) = 0;
    *(v35 + 64) = 0;
    qword_1EE1C17C0 = v35;
    v36 = re::introspectionAllocator();
    v38 = re::introspect_AssetHandle(1, v37);
    v39 = (*(*v36 + 32))(v36, 72, 8);
    *v39 = 1;
    *(v39 + 8) = "postProcessGraphHigh";
    *(v39 + 16) = v38;
    *(v39 + 24) = 0;
    *(v39 + 32) = 0x3680000000ALL;
    *(v39 + 40) = 0;
    *(v39 + 48) = 0;
    *(v39 + 56) = 0;
    *(v39 + 64) = 0;
    qword_1EE1C17C8 = v39;
    v40 = re::introspectionAllocator();
    v42 = re::introspect_AssetHandle(1, v41);
    v43 = (*(*v40 + 32))(v40, 72, 8);
    *v43 = 1;
    *(v43 + 8) = "postProcessGraphBest";
    *(v43 + 16) = v42;
    *(v43 + 24) = 0;
    *(v43 + 32) = 0x3800000000BLL;
    *(v43 + 40) = 0;
    *(v43 + 48) = 0;
    *(v43 + 56) = 0;
    *(v43 + 64) = 0;
    qword_1EE1C17D0 = v43;
    v44 = re::introspectionAllocator();
    v46 = re::introspect_AssetHandle(1, v45);
    v47 = (*(*v44 + 32))(v44, 72, 8);
    *v47 = 1;
    *(v47 + 8) = "postProcessGraphMultiView";
    *(v47 + 16) = v46;
    *(v47 + 24) = 0;
    *(v47 + 32) = 0x3980000000CLL;
    *(v47 + 40) = 0;
    *(v47 + 48) = 0;
    *(v47 + 56) = 0;
    *(v47 + 64) = 0;
    qword_1EE1C17D8 = v47;
    v48 = re::introspectionAllocator();
    re::introspect_RenderGraphAREmitterPostProcessOption(v48, v49);
    v50 = (*(*v48 + 32))(v48, 72, 8);
    *v50 = 1;
    *(v50 + 8) = "postProcessOption";
    *(v50 + 16) = &qword_1EE1C16B0;
    *(v50 + 24) = 0;
    *(v50 + 32) = 0x4280000000DLL;
    *(v50 + 40) = 0;
    *(v50 + 48) = 0;
    *(v50 + 56) = 0;
    *(v50 + 64) = 0;
    qword_1EE1C17E0 = v50;
    v51 = re::introspectionAllocator();
    v53 = re::introspect_AssetHandle(1, v52);
    v54 = (*(*v51 + 32))(v51, 72, 8);
    *v54 = 1;
    *(v54 + 8) = "postProcessGraphDepthOfField";
    *(v54 + 16) = v53;
    *(v54 + 24) = 0;
    *(v54 + 32) = 0x3B00000000ELL;
    *(v54 + 40) = 0;
    *(v54 + 48) = 0;
    *(v54 + 56) = 0;
    *(v54 + 64) = 0;
    qword_1EE1C17E8 = v54;
    v55 = re::introspectionAllocator();
    v57 = re::introspect_AssetHandle(1, v56);
    v58 = (*(*v55 + 32))(v55, 72, 8);
    *v58 = 1;
    *(v58 + 8) = "postProcessGraphMotionBlur";
    *(v58 + 16) = v57;
    *(v58 + 24) = 0;
    *(v58 + 32) = 0x3C80000000FLL;
    *(v58 + 40) = 0;
    *(v58 + 48) = 0;
    *(v58 + 56) = 0;
    *(v58 + 64) = 0;
    qword_1EE1C17F0 = v58;
    v59 = re::introspectionAllocator();
    v61 = re::introspect_AssetHandle(1, v60);
    v62 = (*(*v59 + 32))(v59, 72, 8);
    *v62 = 1;
    *(v62 + 8) = "postProcessGraphCombined";
    *(v62 + 16) = v61;
    *(v62 + 24) = 0;
    *(v62 + 32) = 0x3E000000010;
    *(v62 + 40) = 0;
    *(v62 + 48) = 0;
    *(v62 + 56) = 0;
    *(v62 + 64) = 0;
    qword_1EE1C17F8 = v62;
    v63 = re::introspectionAllocator();
    v65 = re::introspect_AssetHandle(1, v64);
    v66 = (*(*v63 + 32))(v63, 72, 8);
    *v66 = 1;
    *(v66 + 8) = "postProcessGraphCombinedHDR";
    *(v66 + 16) = v65;
    *(v66 + 24) = 0;
    *(v66 + 32) = 0x3F800000011;
    *(v66 + 40) = 0;
    *(v66 + 48) = 0;
    *(v66 + 56) = 0;
    *(v66 + 64) = 0;
    qword_1EE1C1800 = v66;
    v67 = re::introspectionAllocator();
    v69 = re::introspect_uint32_t(1, v68);
    v70 = (*(*v67 + 32))(v67, 72, 8);
    *v70 = 1;
    *(v70 + 8) = "clusterHorizontalSlices";
    *(v70 + 16) = v69;
    *(v70 + 24) = 0;
    *(v70 + 32) = 0x48000000012;
    *(v70 + 40) = 0;
    *(v70 + 48) = 0;
    *(v70 + 56) = 0;
    *(v70 + 64) = 0;
    qword_1EE1C1808 = v70;
    v71 = re::introspectionAllocator();
    v73 = re::introspect_uint32_t(1, v72);
    v74 = (*(*v71 + 32))(v71, 72, 8);
    *v74 = 1;
    *(v74 + 8) = "clusterVerticalSlices";
    *(v74 + 16) = v73;
    *(v74 + 24) = 0;
    *(v74 + 32) = 0x48400000013;
    *(v74 + 40) = 0;
    *(v74 + 48) = 0;
    *(v74 + 56) = 0;
    *(v74 + 64) = 0;
    qword_1EE1C1810 = v74;
    v75 = re::introspectionAllocator();
    v77 = re::introspect_uint32_t(1, v76);
    v78 = (*(*v75 + 32))(v75, 72, 8);
    *v78 = 1;
    *(v78 + 8) = "clusterDepthSlices";
    *(v78 + 16) = v77;
    *(v78 + 24) = 0;
    *(v78 + 32) = 0x48800000014;
    *(v78 + 40) = 0;
    *(v78 + 48) = 0;
    *(v78 + 56) = 0;
    *(v78 + 64) = 0;
    qword_1EE1C1818 = v78;
    v79 = re::introspectionAllocator();
    v81 = re::introspect_float(1, v80);
    v82 = (*(*v79 + 32))(v79, 72, 8);
    *v82 = 1;
    *(v82 + 8) = "clusterMaxDepthRange";
    *(v82 + 16) = v81;
    *(v82 + 24) = 0;
    *(v82 + 32) = 0x48C00000015;
    *(v82 + 40) = 0;
    *(v82 + 48) = 0;
    *(v82 + 56) = 0;
    *(v82 + 64) = 0;
    qword_1EE1C1820 = v82;
    v83 = re::introspectionAllocator();
    v85 = re::introspect_uint32_t(1, v84);
    v86 = (*(*v83 + 32))(v83, 72, 8);
    *v86 = 1;
    *(v86 + 8) = "clusterMaxIntersectionFactor";
    *(v86 + 16) = v85;
    *(v86 + 24) = 0;
    *(v86 + 32) = 0x49000000016;
    *(v86 + 40) = 0;
    *(v86 + 48) = 0;
    *(v86 + 56) = 0;
    *(v86 + 64) = 0;
    qword_1EE1C1828 = v86;
    v87 = re::introspectionAllocator();
    v89 = re::introspect_BOOL(1, v88);
    v90 = (*(*v87 + 32))(v87, 72, 8);
    *v90 = 1;
    *(v90 + 8) = "enableRayTracedAmbientOcclusion";
    *(v90 + 16) = v89;
    *(v90 + 24) = 0;
    *(v90 + 32) = 0x49400000017;
    *(v90 + 40) = 0;
    *(v90 + 48) = 0;
    *(v90 + 56) = 0;
    *(v90 + 64) = 0;
    qword_1EE1C1830 = v90;
    v91 = re::introspectionAllocator();
    v93 = re::introspect_BOOL(1, v92);
    v94 = (*(*v91 + 32))(v91, 72, 8);
    *v94 = 1;
    *(v94 + 8) = "enableProjectiveShadow";
    *(v94 + 16) = v93;
    *(v94 + 24) = 0;
    *(v94 + 32) = 0x49500000018;
    *(v94 + 40) = 0;
    *(v94 + 48) = 0;
    *(v94 + 56) = 0;
    *(v94 + 64) = 0;
    qword_1EE1C1838 = v94;
    v95 = re::introspectionAllocator();
    v97 = re::introspect_BOOL(1, v96);
    v98 = (*(*v95 + 32))(v95, 72, 8);
    *v98 = 1;
    *(v98 + 8) = "enableDepthOfField";
    *(v98 + 16) = v97;
    *(v98 + 24) = 0;
    *(v98 + 32) = 0x49600000019;
    *(v98 + 40) = 0;
    *(v98 + 48) = 0;
    *(v98 + 56) = 0;
    *(v98 + 64) = 0;
    qword_1EE1C1840 = v98;
    v99 = re::introspectionAllocator();
    v101 = re::introspect_BOOL(1, v100);
    v102 = (*(*v99 + 32))(v99, 72, 8);
    *v102 = 1;
    *(v102 + 8) = "enableMotionBlur";
    *(v102 + 16) = v101;
    *(v102 + 24) = 0;
    *(v102 + 32) = 0x4970000001ALL;
    *(v102 + 40) = 0;
    *(v102 + 48) = 0;
    *(v102 + 56) = 0;
    *(v102 + 64) = 0;
    qword_1EE1C1848 = v102;
    v103 = re::introspectionAllocator();
    v105 = re::introspect_BOOL(1, v104);
    v106 = (*(*v103 + 32))(v103, 72, 8);
    *v106 = 1;
    *(v106 + 8) = "enablePostProcessCombined";
    *(v106 + 16) = v105;
    *(v106 + 24) = 0;
    *(v106 + 32) = 0x4980000001BLL;
    *(v106 + 40) = 0;
    *(v106 + 48) = 0;
    *(v106 + 56) = 0;
    *(v106 + 64) = 0;
    qword_1EE1C1850 = v106;
    v107 = re::introspectionAllocator();
    v109 = re::introspect_BOOL(1, v108);
    v110 = (*(*v107 + 32))(v107, 72, 8);
    *v110 = 1;
    *(v110 + 8) = "enableDepthFeathering";
    *(v110 + 16) = v109;
    *(v110 + 24) = 0;
    *(v110 + 32) = 0x4990000001CLL;
    *(v110 + 40) = 0;
    *(v110 + 48) = 0;
    *(v110 + 56) = 0;
    *(v110 + 64) = 0;
    qword_1EE1C1858 = v110;
    v111 = re::introspectionAllocator();
    v113 = re::introspect_BOOL(1, v112);
    v114 = (*(*v111 + 32))(v111, 72, 8);
    *v114 = 1;
    *(v114 + 8) = "enableHDR";
    *(v114 + 16) = v113;
    *(v114 + 24) = 0;
    *(v114 + 32) = 0x49C0000001DLL;
    *(v114 + 40) = 0;
    *(v114 + 48) = 0;
    *(v114 + 56) = 0;
    *(v114 + 64) = 0;
    qword_1EE1C1860 = v114;
    v115 = re::introspectionAllocator();
    v116 = re::introspect_RayTracedAmbientOcclusionSettings(1);
    v117 = (*(*v115 + 32))(v115, 72, 8);
    *v117 = 1;
    *(v117 + 8) = "rayTracedAmbientOcclusionSettings";
    *(v117 + 16) = v116;
    *(v117 + 24) = 0;
    *(v117 + 32) = 0x4A00000001ELL;
    *(v117 + 40) = 0;
    *(v117 + 48) = 0;
    *(v117 + 56) = 0;
    *(v117 + 64) = 0;
    qword_1EE1C1868 = v117;
    v118 = re::introspectionAllocator();
    v120 = re::introspect_float(1, v119);
    v121 = (*(*v118 + 32))(v118, 72, 8);
    *v121 = 1;
    *(v121 + 8) = "rayTracedShadowIntensity";
    *(v121 + 16) = v120;
    *(v121 + 24) = 0;
    *(v121 + 32) = 0x4B80000001FLL;
    *(v121 + 40) = 0;
    *(v121 + 48) = 0;
    *(v121 + 56) = 0;
    *(v121 + 64) = 0;
    qword_1EE1C1870 = v121;
    v122 = re::introspectionAllocator();
    v124 = re::introspect_AssetHandle(1, v123);
    v125 = (*(*v122 + 32))(v122, 72, 8);
    *v125 = 1;
    *(v125 + 8) = "rayTracedAmbientOcclusionCompositingMaterial";
    *(v125 + 16) = v124;
    *(v125 + 24) = 0;
    *(v125 + 32) = 0x43000000020;
    *(v125 + 40) = 0;
    *(v125 + 48) = 0;
    *(v125 + 56) = 0;
    *(v125 + 64) = 0;
    qword_1EE1C1878 = v125;
    v126 = re::introspectionAllocator();
    v128 = re::introspect_AssetHandle(1, v127);
    v129 = (*(*v126 + 32))(v126, 72, 8);
    *v129 = 1;
    *(v129 + 8) = "rayTracedAmbientOcclusionCompositingMaterialDitherSRGB";
    *(v129 + 16) = v128;
    *(v129 + 24) = 0;
    *(v129 + 32) = 0x44800000021;
    *(v129 + 40) = 0;
    *(v129 + 48) = 0;
    *(v129 + 56) = 0;
    *(v129 + 64) = 0;
    qword_1EE1C1880 = v129;
    v130 = re::introspectionAllocator();
    v132 = re::introspect_AssetHandle(1, v131);
    v133 = (*(*v130 + 32))(v130, 72, 8);
    *v133 = 1;
    *(v133 + 8) = "rayTracedAmbientOcclusionCompositingMaterialDitherLinear";
    *(v133 + 16) = v132;
    *(v133 + 24) = 0;
    *(v133 + 32) = 0x46000000022;
    *(v133 + 40) = 0;
    *(v133 + 48) = 0;
    *(v133 + 56) = 0;
    *(v133 + 64) = 0;
    qword_1EE1C1888 = v133;
    v134 = re::introspectionAllocator();
    v136 = re::introspect_BOOL(1, v135);
    v137 = (*(*v134 + 32))(v134, 72, 8);
    *v137 = 1;
    *(v137 + 8) = "enableBlurProvider";
    *(v137 + 16) = v136;
    *(v137 + 24) = 0;
    *(v137 + 32) = 0x4BC00000024;
    *(v137 + 40) = 0;
    *(v137 + 48) = 0;
    *(v137 + 56) = 0;
    *(v137 + 64) = 0;
    qword_1EE1C1890 = v137;
    __cxa_guard_release(&qword_1EE1C1658);
  }

  *(this + 2) = 0x71000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 34;
  *(this + 8) = &qword_1EE1C1788;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphAREmitter>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphAREmitter>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphAREmitter>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphAREmitter>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v138 = v140;
}

void re::GuidedFilterOcclusionStateData::~GuidedFilterOcclusionStateData(id *this)
{
  v2 = this[13];
  if (v2)
  {

    this[13] = 0;
  }

  v3 = this[12];
  if (v3)
  {

    this[12] = 0;
  }

  v4 = this[11];
  if (v4)
  {

    this[11] = 0;
  }

  v5 = this[10];
  if (v5)
  {

    this[10] = 0;
  }

  v6 = this[9];
  if (v6)
  {

    this[9] = 0;
  }

  v7 = this[8];
  if (v7)
  {

    this[8] = 0;
  }

  v8 = this[7];
  if (v8)
  {

    this[7] = 0;
  }

  v9 = this[6];
  if (v9)
  {

    this[6] = 0;
  }

  v10 = this[5];
  if (v10)
  {

    this[5] = 0;
  }

  v11 = this[4];
  if (v11)
  {

    this[4] = 0;
  }

  v12 = this[3];
  if (v12)
  {

    this[3] = 0;
  }

  v13 = this[2];
  if (v13)
  {

    this[2] = 0;
  }

  v14 = this[1];
  if (v14)
  {

    this[1] = 0;
  }
}

void re::ARSegmentationEmitterCache::~ARSegmentationEmitterCache(re::ARSegmentationEmitterCache *this)
{
  re::StringID::destroyString((this + 64));
  v2 = *(this + 5);
  if (v2)
  {

    *(this + 5) = 0;
  }

  v3 = *(this + 4);
  if (v3)
  {

    *(this + 4) = 0;
  }

  v4 = *(this + 3);
  if (v4)
  {

    *(this + 3) = 0;
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::StringID::destroyString((this + 64));
  v2 = *(this + 5);
  if (v2)
  {

    *(this + 5) = 0;
  }

  v3 = *(this + 4);
  if (v3)
  {

    *(this + 4) = 0;
  }

  v4 = *(this + 3);
  if (v4)
  {

    *(this + 3) = 0;
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t re::supportedColorPixelFormat(id *this, const re::mtl::Device *a2)
{
  if ((atomic_load_explicit(&qword_1EE1C18B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C18B0))
  {
    _MergedGlobals_543 = [*this supportsFamily:1002];
    __cxa_guard_release(&qword_1EE1C18B0);
  }

  if (_MergedGlobals_543)
  {
    return 81;
  }

  else
  {
    return 115;
  }
}

uint64_t re::RenderGraphSFBSystemShellBlurProvider::prepareVCABlur(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = a2;
  v7 = a1;
  v640 = *MEMORY[0x1E69E9840];
  v548 = *(a2 + 392);
  v8 = re::RenderGraphDataStore::tryGet<re::CameraData>(a2 + 32, a1);
  v9 = re::RenderGraphDataStore::tryGet<re::SceneScope>(v6 + 32, v7);
  if ((atomic_load_explicit(&qword_1EE1C18A8, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_482;
  }

  while (1)
  {
    v549 = v8;
    if (*(v9 + 16))
    {
      v9 = *(v9 + 24);
    }

    else
    {
      v9 += 17;
    }

    v10 = qword_1EE1C18A0;
    v11 = 0x9E3779B97F4A7C17;
    v12 = strlen(v9);
    if (v12)
    {
      MurmurHash3_x64_128(v9, v12, 0, v617);
      v13 = ((*(&v617[0] + 1) - 0x61C8864680B583E9 + (*&v617[0] << 6) + (*&v617[0] >> 2)) ^ *&v617[0]) - 0x61C8864680B583E9;
    }

    else
    {
      v13 = 0x9E3779B97F4A7C17;
    }

    v550 = re::RenderGraphDataStore::tryGet<re::MeshSortingCollection>(v6 + 32, ((v10 >> 2) + (v10 << 6) + v13) ^ v10);
    v578 = 1;
    memset(v581, 0, 36);
    v579 = 0;
    v580 = 0;
    *&v581[36] = 0x7FFFFFFFLL;
    v575 = &unk_1F5D15788;
    v8 = v548;
    v576 = v548;
    v577 = 0;
    re::DynamicOverflowArray<re::DynamicArray<re::VCARenderData::FrustumId>,4ul>::setCapacity(&v576, 0);
    v578 += 2;
    re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v581, v548, 3);
    if (!v549)
    {
      break;
    }

    v9 = &v549[9];
    if (v549[9].i32[0] == 1)
    {
      break;
    }

    v15 = *(a4 + 20);
    v16 = *(a4 + 24);
    v17 = *(a4 + 28);
    v633 = &unk_1F5D157C8;
    v634 = 0;
    v635 = 0;
    v18 = v549[8].u64[0];
    if (v18)
    {
      v19 = 0;
      v20 = 0;
      v21 = (v549 + 156);
      while (v19 < 2)
      {
        v22 = &v21[-1].f32[2];
        v23 = *v21;
        v21 += 15;
        v24 = vld1q_dup_f32(v22);
        v636[v19] = vdivq_f32(v23, v24);
        v19 = ++v634;
        ++v635;
        if (v18 <= ++v20)
        {
          goto LABEL_14;
        }
      }

      goto LABEL_481;
    }

LABEL_14:
    v567 = v16;
    v570 = v15;
    v25 = "N2re18CameraProjFrustumsE";
    if (("N2re18CameraProjFrustumsE" & 0x8000000000000000) != 0)
    {
      v26 = ("N2re18CameraProjFrustumsE" & 0x7FFFFFFFFFFFFFFFLL);
      v27 = 5381;
      do
      {
        v25 = v27;
        v28 = *v26++;
        v27 = (33 * v27) ^ v28;
      }

      while (v28);
    }

    *&v617[0] = (v7 - 0x61C8864680B583E9 + (v25 << 6) + (v25 >> 2)) ^ v25;
    v29 = (*(**(v6 + 40) + 32))(*(v6 + 40), 64, 16);
    *v29 = &unk_1F5D157C8;
    *(v29 + 16) = 0;
    *(v29 + 24) = 0;
    v30 = v634;
    memcpy((v29 + 32), v636, 16 * v634);
    *(v29 + 16) = v30;
    buf.columns[0].i64[0] = v29;
    re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(v6 + 96, v617, &buf);
    if (a3)
    {
      break;
    }

    *a4 = 0;
    v31 = re::RenderGraphDataStore::tryGet<re::SceneScope>(v6 + 32, v7);
    if (!v31)
    {
      break;
    }

    v32 = v31;
    v538 = v7;
    v608 = 0;
    v607 = 0;
    v609 = 1;
    v611 = 0;
    v610 = 0;
    v33 = *(v6 + 296);
    v544 = a4;
    if (v33)
    {
      v34 = 0;
      v35 = *(v6 + 280);
      while (1)
      {
        v36 = *v35;
        v35 += 18;
        if (v36 < 0)
        {
          break;
        }

        if (v33 == ++v34)
        {
          LODWORD(v34) = *(v6 + 296);
          break;
        }
      }
    }

    else
    {
      LODWORD(v34) = 0;
    }

    v545 = v6;
    if (v34 != v33)
    {
      v37 = *(v6 + 280);
      do
      {
        v38 = *(v37 + 72 * v34 + 64);
        if (v38)
        {
          v39 = (*(*v38 + 480))(v38);
          if (v39)
          {
            v40 = *v39;
            if (*v39)
            {
              v41 = (v32 + 17);
              if (*(v32 + 16))
              {
                v41 = *(v32 + 24);
              }

              if (strcmp(*v39, v41))
              {
                v42 = re::RenderGraphDataStore::tryGet<re::BlurPlanesRenderFrameData>(v545 + 32, "BlurPlanesRenderFrameData", v40);
                *&v617[0] = v42;
                if (v42)
                {
                  if (*(v42 + 16) && ((*(v42 + 81) & 1) != 0 || *(v42 + 80) == 1))
                  {
                    re::DynamicOverflowArray<re::BlurPlanesRenderFrameData const*,4ul>::add(&v607, v617);
                    *(a4 + 1) = 1;
                  }
                }
              }
            }
          }
        }

        v6 = v545;
        if (*(v545 + 296) <= (v34 + 1))
        {
          v43 = v34 + 1;
        }

        else
        {
          v43 = *(v545 + 296);
        }

        v37 = *(v545 + 280);
        while (v43 - 1 != v34)
        {
          LODWORD(v34) = v34 + 1;
          if ((*(v37 + 72 * v34) & 0x80000000) != 0)
          {
            goto LABEL_46;
          }
        }

        LODWORD(v34) = v43;
LABEL_46:
        ;
      }

      while (v34 != v33);
    }

    if (*(v32 + 16))
    {
      v44 = *(v32 + 24);
    }

    else
    {
      v44 = (v32 + 17);
    }

    v7 = v538;
    v45 = re::RenderGraphDataStore::tryGet<re::BlurPlanesRenderFrameData>(v6 + 32, "BlurPlanesRenderFrameData", v44);
    v606 = v45;
    v11 = 0x9E3779B97F4A7C17;
    if (v45 && *(v45 + 16) && ((*(v45 + 81) & 1) != 0 || *(v45 + 80) == 1))
    {
      v45 = re::DynamicOverflowArray<re::BlurPlanesRenderFrameData const*,4ul>::add(&v607, &v606);
    }

    v6 = v608;
    if (!v608)
    {
LABEL_349:
      if (v607 && (v609 & 1) == 0)
      {
        (*(*v607 + 40))();
      }

      v6 = v545;
      break;
    }

    if (v576)
    {
      v46 = v578;
    }

    else
    {
      re::DynamicOverflowArray<re::DynamicArray<re::VCARenderData::FrustumId>,4ul>::setCapacity(&v576, v6);
      v46 = v578 + 2;
      v578 += 2;
    }

    v11 = &v579;
    _ZF = (v46 & 1) == 0;
    v47 = 4;
    if (_ZF)
    {
      v47 = v579;
    }

    if (v47 < v6)
    {
      re::DynamicOverflowArray<re::DynamicArray<re::VCARenderData::FrustumId>,4ul>::setCapacity(&v576, v6);
    }

    v7 = 0;
    v48 = v615;
    a4 = 1;
    do
    {
      *&v617[1] = 0;
      DWORD2(v617[1]) = 0;
      *&v618 = 0;
      v617[0] = v548;
      v49 = re::DynamicArray<re::VCARenderData::FrustumId>::setCapacity(v617, 0);
      if (!v576)
      {
        re::DynamicOverflowArray<re::DynamicArray<re::VCARenderData::FrustumId>,4ul>::setCapacity(&v576, v577 + 1);
        v50 = v578 + 2;
        v578 += 2;
        goto LABEL_78;
      }

      v50 = v578;
      if (v578)
      {
        v51 = v577 + 1;
        if (v577 + 1 < 5)
        {
          goto LABEL_78;
        }

        v53 = 8;
        goto LABEL_74;
      }

      v51 = v577 + 1;
      if (v577 >= v579 && v579 < v51)
      {
        v53 = 2 * v579;
LABEL_74:
        if (v53 <= v51)
        {
          v54 = v51;
        }

        else
        {
          v54 = v53;
        }

        re::DynamicOverflowArray<re::DynamicArray<re::VCARenderData::FrustumId>,4ul>::setCapacity(&v576, v54);
        v50 = v578;
      }

LABEL_78:
      _ZF = (v50 & 1) == 0;
      v55 = v580;
      if (!_ZF)
      {
        v55 = &v579;
      }

      v56 = &v55[5 * v577];
      *v56 = *&v617[0];
      *(v56 + 1) = *(v617 + 8);
      v56[4] = v618;
      *(v56 + 6) = 1;
      v57 = ++v577;
      v58 = v578;
      v578 += 2;
      if (v58)
      {
        v59 = &v579;
      }

      else
      {
        v59 = v580;
      }

      if (v6 <= v7)
      {
        goto LABEL_434;
      }

      v60 = &v59[5 * v57];
      v61 = v611;
      if (v609)
      {
        v61 = &v610;
      }

      v62 = *(v61[v7] + 16);
      if (*(v60 - 4) < v62)
      {
        re::DynamicArray<re::VCARenderData::FrustumId>::setCapacity(v60 - 5, v62);
        v6 = v608;
      }

      ++v7;
    }

    while (v7 < v6);
    v603 = 1;
    v11 = &v604;
    v605 = 0;
    v604 = 0;
    v602 = 0;
    v601 = v548;
    re::DynamicOverflowArray<re::DynamicArray<re::VCARenderData::FrustumId>,4ul>::setCapacity(&v601, v6);
    v603 += 2;
    if (v6)
    {
      v7 = 0;
      a4 = 40;
      do
      {
        *&v617[1] = 0;
        DWORD2(v617[1]) = 0;
        *&v618 = 0;
        v617[0] = v548;
        v65 = re::DynamicArray<re::MeshAssetLoader::addProceduralVertexAttributes(re::MeshAssetData &)::MeshModelPartWithOpenSubDiv>::setCapacity(v617, 0);
        if (v601)
        {
          v66 = v603;
          if ((v603 & 1) == 0)
          {
            v67 = v602 + 1;
            if (v602 < v604 || v604 >= v67)
            {
              goto LABEL_105;
            }

            v69 = 2 * v604;
            goto LABEL_101;
          }

          v67 = v602 + 1;
          if (v602 + 1 >= 5)
          {
            v69 = 8;
LABEL_101:
            if (v69 <= v67)
            {
              v70 = v67;
            }

            else
            {
              v70 = v69;
            }

            re::DynamicOverflowArray<re::DynamicArray<re::VCARenderData::FrustumId>,4ul>::setCapacity(&v601, v70);
            v66 = v603;
          }
        }

        else
        {
          re::DynamicOverflowArray<re::DynamicArray<re::VCARenderData::FrustumId>,4ul>::setCapacity(&v601, v602 + 1);
          v66 = v603 + 2;
          v603 += 2;
        }

LABEL_105:
        _ZF = (v66 & 1) == 0;
        v71 = v605;
        if (!_ZF)
        {
          v71 = &v604;
        }

        v72 = &v71[5 * v602];
        *v72 = *&v617[0];
        *(v72 + 1) = *(v617 + 8);
        v72[4] = v618;
        *(v72 + 6) = 1;
        v73 = ++v602;
        v74 = v603;
        v603 += 2;
        if (v74)
        {
          v75 = &v604;
        }

        else
        {
          v75 = v605;
        }

        if (v6 <= v7)
        {
          goto LABEL_442;
        }

        v76 = &v75[5 * v73];
        v77 = v611;
        if (v609)
        {
          v77 = &v610;
        }

        v78 = *(v77[v7] + 16);
        if (*(v76 - 4) < v78)
        {
          re::DynamicArray<re::MeshAssetLoader::addProceduralVertexAttributes(re::MeshAssetData &)::MeshModelPartWithOpenSubDiv>::setCapacity(v76 - 5, v78);
          v6 = v608;
        }

        ++v7;
      }

      while (v7 < v6);
    }

    v600 = 256;
    v8 = v549;
    re::buildCullingFrustum(&v549[4], v9, v549[55].u8[10], &v600, v617, v63, v64);
    v597.i64[0] = 0;
    v597.i32[2] = 0;
    re::DynamicInlineArray<re::DynamicInlineArray<re::PlaneF,6ul>,2ul>::copy(&v597, v617);
    if (!v597.i64[0])
    {
      goto LABEL_478;
    }

    if (v598)
    {
      v536 = a3;
      if (v549[3].i64[0])
      {
        v555 = v599;
        v552 = v549[4];
        v80 = v549[8].u64[0];
        a3 = v549;
        v594 = 1;
        v7 = &v595;
        v596 = 0;
        v595 = 0;
        v593 = 0;
        v592 = v548;
        re::DynamicOverflowArray<re::Matrix4x4<float>,2ul>::setCapacity(&v592, v80);
        v594 += 2;
        v81 = v549[8].u64[0];
        v589 = 1;
        v591 = 0;
        v590 = 0;
        v588 = 0;
        v587 = v548;
        re::DynamicOverflowArray<re::Matrix4x4<float>,2ul>::setCapacity(&v587, v81);
        v589 += 2;
        if (v549[8].i64[0])
        {
          a4 = 0;
          LODWORD(v83) = 0;
          *(&v83 + 1) = v567;
          v568 = COERCE_UNSIGNED_INT(v570);
          v571 = v83;
          v11 = 240;
          while (1)
          {
            v84 = v9 + 240 * a4;
            if (*(v84 + 80) == 1)
            {
              *v615 = *(v84 + 96);
              *&v615[16] = *(v84 + 112);
              *&v615[32] = *(v84 + 128);
              v616 = *(v84 + 144);
            }

            else
            {
              re::Projection::cullingProjectionMatrix(v615, v84);
            }

            v85 = v549[3].u64[0];
            if (v85 <= a4)
            {
              goto LABEL_446;
            }

            re::RenderCamera::computeInverseTransform(&v583, &v549[2 * a4 + 4]);
            v86 = 0;
            v637[0] = xmmword_1E30714F0;
            v637[1] = xmmword_1E3066660;
            v637[2] = xmmword_1E30476A0;
            v638 = xmmword_1E30474D0;
            do
            {
              buf.columns[v86] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v568, COERCE_FLOAT(*&v637[v86])), v571, *v637[v86].f32, 1), xmmword_1E30476A0, v637[v86], 2), xmmword_1E30474D0, v637[v86], 3);
              ++v86;
            }

            while (v86 != 4);
            v87 = 0;
            v88 = buf.columns[0];
            v89 = buf.columns[1];
            v90 = buf.columns[2];
            v91 = buf.columns[3];
            v637[0] = xmmword_1E3047670;
            v637[1] = xmmword_1E3047680;
            v637[2] = xmmword_1E30476A0;
            v638 = xmmword_1E308C1E0;
            do
            {
              buf.columns[v87] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v88, COERCE_FLOAT(*&v637[v87])), v89, *v637[v87].f32, 1), v90, v637[v87], 2), v91, v637[v87], 3);
              ++v87;
            }

            while (v87 != 4);
            v92 = 0;
            v93 = buf.columns[0];
            v94 = buf.columns[1];
            v95 = buf.columns[2];
            v96 = buf.columns[3];
            v637[0] = *v615;
            v637[1] = *&v615[16];
            v637[2] = *&v615[32];
            v638 = v616;
            do
            {
              buf.columns[v92] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v93, COERCE_FLOAT(*&v637[v92])), v94, *v637[v92].f32, 1), v95, v637[v92], 2), v96, v637[v92], 3);
              ++v92;
            }

            while (v92 != 4);
            v97 = 0;
            v98 = buf.columns[0];
            v99 = buf.columns[1];
            v100 = buf.columns[2];
            v101 = buf.columns[3];
            v637[0] = v583;
            v637[1] = v584;
            v637[2] = v585;
            v638 = v586;
            do
            {
              buf.columns[v97] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v98, COERCE_FLOAT(*&v637[v97])), v99, *v637[v97].f32, 1), v100, v637[v97], 2), v101, v637[v97], 3);
              ++v97;
            }

            while (v97 != 4);
            re::DynamicOverflowArray<re::Matrix4x4<float>,2ul>::add(&v592, &buf);
            a3 = v593;
            if (v593 <= a4)
            {
              break;
            }

            if (v594)
            {
              v102 = &v595;
            }

            else
            {
              v102 = v596;
            }

            buf = __invert_f4(*&v102[8 * a4]);
            re::DynamicOverflowArray<re::Matrix4x4<float>,2ul>::add(&v587, &buf);
            if (v549[8].i64[0] <= ++a4)
            {
              goto LABEL_138;
            }
          }

LABEL_447:
          v612 = 0;
          v614 = 0u;
          memset(&buf, 0, sizeof(buf));
          v495 = MEMORY[0x1E69E9C10];
          v496 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v637[0].i32[0] = 136315906;
          *(v637[0].i64 + 4) = "operator[]";
          v637[0].i16[6] = 1024;
          if (v496)
          {
            v497 = 3;
          }

          else
          {
            v497 = 2;
          }

          *(&v637[0].i32[3] + 2) = 858;
          v637[1].i16[1] = 2048;
          *(v637[1].i64 + 4) = a4;
          v637[1].i16[6] = 2048;
          *(&v637[1].i64[1] + 6) = a3;
          _os_log_send_and_compose_impl(v497, &v612, &buf, 80, &dword_1E1C61000, v495, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v637, 38, v534, v535);
          _os_crash_msg();
          __break(1u);
LABEL_451:
          re::internal::assertLog(4, v387, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503);
          _os_crash("assertion failure: (!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator) ");
          __break(1u);
LABEL_452:
          re::internal::assertLog(6, v445, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, 0, 0);
          _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v521, v529);
          __break(1u);
LABEL_453:
          v583.i64[0] = 0;
          v638 = 0u;
          v639 = 0u;
          memset(v637, 0, sizeof(v637));
          v498 = MEMORY[0x1E69E9C10];
          v499 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v615 = 136315906;
          *&v615[4] = "operator[]";
          *&v615[12] = 1024;
          if (v499)
          {
            v500 = 3;
          }

          else
          {
            v500 = 2;
          }

          *&v615[14] = 789;
          *&v615[18] = 2048;
          *&v615[20] = a3;
          *&v615[28] = 2048;
          *&v615[30] = v9;
          _os_log_send_and_compose_impl(v500, &v583, v637, 80, &dword_1E1C61000, v498, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v615, 38, v534, v535);
          _os_crash_msg();
          __break(1u);
LABEL_457:
          v583.i64[0] = 0;
          v638 = 0u;
          v639 = 0u;
          memset(v637, 0, sizeof(v637));
          v501 = MEMORY[0x1E69E9C10];
          v502 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v615 = 136315906;
          *&v615[4] = "operator[]";
          *&v615[12] = 1024;
          if (v502)
          {
            v503 = 3;
          }

          else
          {
            v503 = 2;
          }

          *&v615[14] = 789;
          *&v615[18] = 2048;
          *&v615[20] = v11;
          *&v615[28] = 2048;
          *&v615[30] = v9;
          _os_log_send_and_compose_impl(v503, &v583, v637, 80, &dword_1E1C61000, v501, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v615, 38, v534, v535);
          _os_crash_msg();
          __break(1u);
LABEL_461:
          *v615 = 0;
          v614 = 0u;
          memset(&buf, 0, sizeof(buf));
          v504 = MEMORY[0x1E69E9C10];
          v505 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v637[0].i32[0] = 136315906;
          *(v637[0].i64 + 4) = "operator[]";
          v637[0].i16[6] = 1024;
          if (v505)
          {
            v506 = 3;
          }

          else
          {
            v506 = 2;
          }

          *(&v637[0].i32[3] + 2) = 858;
          v637[1].i16[1] = 2048;
          *(v637[1].i64 + 4) = v9;
          v637[1].i16[6] = 2048;
          *(&v637[1].i64[1] + 6) = a3;
          _os_log_send_and_compose_impl(v506, v615, &buf, 80, &dword_1E1C61000, v504, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v637, 38, v534, v535);
          _os_crash_msg();
          __break(1u);
LABEL_465:
          *v615 = 0;
          v614 = 0u;
          memset(&buf, 0, sizeof(buf));
          v507 = MEMORY[0x1E69E9C10];
          v508 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v637[0].i32[0] = 136315906;
          *(v637[0].i64 + 4) = "operator[]";
          v637[0].i16[6] = 1024;
          if (v508)
          {
            v509 = 3;
          }

          else
          {
            v509 = 2;
          }

          *(&v637[0].i32[3] + 2) = 858;
          v637[1].i16[1] = 2048;
          *(v637[1].i64 + 4) = v9;
          v637[1].i16[6] = 2048;
          *(&v637[1].i64[1] + 6) = a3;
          _os_log_send_and_compose_impl(v509, v615, &buf, 80, &dword_1E1C61000, v507, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v637, 38, v534, v535);
          _os_crash_msg();
          __break(1u);
LABEL_469:
          v583.i64[0] = 0;
          v638 = 0u;
          v639 = 0u;
          memset(v637, 0, sizeof(v637));
          v510 = v338;
          v511 = MEMORY[0x1E69E9C10];
          v512 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v615 = 136315906;
          *&v615[4] = "operator[]";
          *&v615[12] = 1024;
          if (v512)
          {
            v513 = 3;
          }

          else
          {
            v513 = 2;
          }

          *&v615[14] = 858;
          *&v615[18] = 2048;
          *&v615[20] = v510;
          *&v615[28] = 2048;
          *&v615[30] = a3;
          _os_log_send_and_compose_impl(v513, &v583, v637, 80, &dword_1E1C61000, v511, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v615, 38, v534, v535);
          _os_crash_msg();
          __break(1u);
          goto LABEL_473;
        }

LABEL_138:
        if (v6)
        {
          v9 = 0;
          v103 = vmulq_f32(v555, v555);
          v103.f32[0] = v103.f32[2] + vaddv_f32(*v103.f32);
          v104 = vrsqrte_f32(v103.u32[0]);
          v105 = vmul_f32(v104, vrsqrts_f32(v103.u32[0], vmul_f32(v104, v104)));
          v106 = vmulq_n_f32(v555, vmul_f32(v105, vrsqrts_f32(v103.u32[0], vmul_f32(v105, v105))).f32[0]);
          v107 = vmulq_f32(v555, v552);
          v569 = vsubq_f32(v552, vmulq_n_f32(v106, (v555.f32[3] + (v107.f32[2] + vaddv_f32(*v107.f32))) / sqrtf(v103.f32[0])));
          v572 = vnegq_f32(v106);
          __asm { FMOV            V0.4S, #1.0 }

          v540 = _Q0;
          v11 = v637;
          a4 = v544;
          v111 = v549;
          v539 = v549 + 4;
          do
          {
            v112 = &v610;
            if ((v609 & 1) == 0)
            {
              v112 = v611;
            }

            a3 = v602;
            if (v602 <= v9)
            {
              goto LABEL_461;
            }

            v113 = v605;
            if (v603)
            {
              v113 = &v604;
            }

            a3 = v577;
            if (v577 <= v9)
            {
              goto LABEL_465;
            }

            v114 = v112[v9];
            v115 = &v579;
            if ((v578 & 1) == 0)
            {
              v115 = v580;
            }

            v116 = *(v114 + 16);
            if (v116)
            {
              v547 = &v113[5 * v9];
              v537 = v9;
              v117 = &v115[5 * v9];
              v9 = *(v114 + 32);
              v546 = v9 + 144 * v116;
              v543 = v117;
              do
              {
                isBoundingBoxInsidePlanesArray = re::isBoundingBoxInsidePlanesArray(v9 + 64, &v597, v9);
                WORD2(v582) = 0;
                if ((isBoundingBoxInsidePlanesArray & 1) != 0 || v111[54].i8[8] != 1) && (*a4 = 1, (*(v9 + 128)))
                {
                  v119 = *(v9 + 64);
                  v120 = *(v9 + 80);
                  v121 = vcgtq_f32(v119, v120);
                  v121.i32[3] = v121.i32[2];
                  v122 = vmaxvq_u32(v121);
                  v123 = vaddq_f32(v119, v120);
                  v120.i64[0] = 0x3F0000003F000000;
                  v120.i64[1] = 0x3F0000003F000000;
                  v124 = vmulq_f32(v123, v120);
                  if (v122 >= 0)
                  {
                    v125 = v124.i64[1];
                  }

                  else
                  {
                    v125 = 0;
                  }

                  if (v122 >= 0)
                  {
                    v126 = v124.i64[0];
                  }

                  else
                  {
                    v126 = 0;
                  }

                  v541 = v126;
                  v542 = v125;
                  if (v111[8].i64[0])
                  {
                    v48 = 0;
                    v559 = 0u;
                    v560 = 0u;
                    v6 = v593;
                    v556 = 0u;
                    v557 = 0u;
                    v127 = v540;
                    v128 = 0uLL;
                    while (1)
                    {
                      if (v6 <= v48)
                      {
                        *v615 = 0;
                        v614 = 0u;
                        memset(&buf, 0, sizeof(buf));
                        v474 = MEMORY[0x1E69E9C10];
                        v475 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                        v637[0].i32[0] = 136315906;
                        *(v637[0].i64 + 4) = "operator[]";
                        v637[0].i16[6] = 1024;
                        if (v475)
                        {
                          v476 = 3;
                        }

                        else
                        {
                          v476 = 2;
                        }

                        *(&v637[0].i32[3] + 2) = 858;
                        v637[1].i16[1] = 2048;
                        *(v637[1].i64 + 4) = v48;
                        v637[1].i16[6] = 2048;
                        *(&v637[1].i64[1] + 6) = v6;
                        _os_log_send_and_compose_impl(v476, v615, &buf, 80, &dword_1E1C61000, v474, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v637, 38, v534, v535);
                        _os_crash_msg();
                        __break(1u);
LABEL_420:
                        re::internal::assertLog(6, v139, v143, v141, v142, v144, v145, v140, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v48, v146);
                        _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v518, v526);
                        __break(1u);
LABEL_421:
                        v612 = 0;
                        v614 = 0u;
                        memset(&buf, 0, sizeof(buf));
                        v477 = MEMORY[0x1E69E9C10];
                        v478 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                        *v615 = 136315906;
                        *&v615[4] = "operator[]";
                        *&v615[12] = 1024;
                        if (v478)
                        {
                          v479 = 3;
                        }

                        else
                        {
                          v479 = 2;
                        }

                        *&v615[14] = 858;
                        *&v615[18] = 2048;
                        *&v615[20] = v48;
                        *&v615[28] = 2048;
                        *&v615[30] = v6;
                        _os_log_send_and_compose_impl(v479, &v612, &buf, 80, &dword_1E1C61000, v477, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v615, 38, v534, v535);
                        _os_crash_msg();
                        __break(1u);
LABEL_425:
                        v583.i64[0] = 0;
                        v638 = 0u;
                        v639 = 0u;
                        memset(v637, 0, sizeof(v637));
                        v480 = MEMORY[0x1E69E9C10];
                        v481 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                        *v615 = 136315906;
                        *&v615[4] = "operator[]";
                        *&v615[12] = 1024;
                        if (v481)
                        {
                          v482 = 3;
                        }

                        else
                        {
                          v482 = 2;
                        }

                        *&v615[14] = 797;
                        *&v615[18] = 2048;
                        *&v615[20] = a3;
                        *&v615[28] = 2048;
                        *&v615[30] = v48;
                        _os_log_send_and_compose_impl(v482, &v583, v637, 80, &dword_1E1C61000, v480, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v615, 38, v534, v535);
                        _os_crash_msg();
                        __break(1u);
LABEL_429:
                        v612 = 0;
                        v614 = 0u;
                        memset(&buf, 0, sizeof(buf));
                        v483 = MEMORY[0x1E69E9C10];
                        v484 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                        *v615 = 136315906;
                        *&v615[4] = "operator[]";
                        *&v615[12] = 1024;
                        if (v484)
                        {
                          v485 = 3;
                        }

                        else
                        {
                          v485 = 2;
                        }

                        *&v615[14] = 858;
                        *&v615[18] = 2048;
                        *&v615[20] = v48;
                        *&v615[28] = 2048;
                        *&v615[30] = a3;
                        _os_log_send_and_compose_impl(v485, &v612, &buf, 80, &dword_1E1C61000, v483, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v615, 38, v534, v535);
                        _os_crash_msg();
                        __break(1u);
LABEL_433:
                        re::internal::assertLog(6, v200, *v207.columns[0].i64, *v207.columns[1].i64, *v207.columns[2].i64, *v207.columns[3].i64, *v203.i64, *v204.i64, *v202.i64, *v201.i64, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, 0, 0);
                        _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v519, v527);
                        __break(1u);
LABEL_434:
                        v597.i64[0] = 0;
                        v620 = 0u;
                        v619 = 0u;
                        v618 = 0u;
                        memset(v617, 0, sizeof(v617));
                        v486 = MEMORY[0x1E69E9C10];
                        v487 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                        buf.columns[0].i32[0] = 136315906;
                        *(buf.columns[0].i64 + 4) = "operator[]";
                        buf.columns[0].i16[6] = 1024;
                        if (v487)
                        {
                          v488 = 3;
                        }

                        else
                        {
                          v488 = 2;
                        }

                        *(&buf.columns[0].i32[3] + 2) = 858;
                        buf.columns[1].i16[1] = 2048;
                        *(buf.columns[1].i64 + 4) = v7;
                        buf.columns[1].i16[6] = 2048;
                        *(&buf.columns[1].i64[1] + 6) = v6;
                        _os_log_send_and_compose_impl(v488, &v597, v617, 80, &dword_1E1C61000, v486, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &buf, 38, v534, v535);
                        _os_crash_msg();
                        __break(1u);
LABEL_438:
                        v583.i64[0] = 0;
                        v638 = 0u;
                        v639 = 0u;
                        memset(v637, 0, sizeof(v637));
                        v489 = MEMORY[0x1E69E9C10];
                        v490 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                        *v615 = 136315906;
                        *&v615[4] = "operator[]";
                        *&v615[12] = 1024;
                        if (v490)
                        {
                          v491 = 3;
                        }

                        else
                        {
                          v491 = 2;
                        }

                        *&v615[14] = 789;
                        *&v615[18] = 2048;
                        *&v615[20] = v48;
                        *&v615[28] = 2048;
                        *&v615[30] = a3;
                        _os_log_send_and_compose_impl(v491, &v583, v637, 80, &dword_1E1C61000, v489, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v615, 38, v534, v535);
                        _os_crash_msg();
                        __break(1u);
LABEL_442:
                        v597.i64[0] = 0;
                        v620 = 0u;
                        v619 = 0u;
                        v618 = 0u;
                        memset(v617, 0, sizeof(v617));
                        v492 = MEMORY[0x1E69E9C10];
                        v493 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                        buf.columns[0].i32[0] = 136315906;
                        *(buf.columns[0].i64 + 4) = "operator[]";
                        buf.columns[0].i16[6] = 1024;
                        if (v493)
                        {
                          v494 = 3;
                        }

                        else
                        {
                          v494 = 2;
                        }

                        *(&buf.columns[0].i32[3] + 2) = 858;
                        buf.columns[1].i16[1] = 2048;
                        *(buf.columns[1].i64 + 4) = v7;
                        buf.columns[1].i16[6] = 2048;
                        *(&buf.columns[1].i64[1] + 6) = v6;
                        _os_log_send_and_compose_impl(v494, &v597, v617, 80, &dword_1E1C61000, v492, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &buf, 38, v534, v535);
                        _os_crash_msg();
                        __break(1u);
LABEL_446:
                        re::internal::assertLog(6, v82, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, a4, v85);
                        _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v520, v528);
                        __break(1u);
                        goto LABEL_447;
                      }

                      v561 = v127;
                      v563 = v128;
                      v129 = 0;
                      v130 = v596;
                      if (v594)
                      {
                        v130 = &v595;
                      }

                      v131 = &v130[8 * v48];
                      v132 = *v131;
                      v133 = v131[1];
                      v134 = v131[2];
                      v135 = v131[3];
                      v136 = *(v9 + 16);
                      v137 = *(v9 + 32);
                      v138 = *(v9 + 48);
                      v637[0] = *v9;
                      v637[1] = v136;
                      v637[2] = v137;
                      v638 = v138;
                      do
                      {
                        buf.columns[v129] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v132, COERCE_FLOAT(*&v637[v129])), v133, *v637[v129].f32, 1), v134, v637[v129], 2), v135, v637[v129], 3);
                        ++v129;
                      }

                      while (v129 != 4);
                      v637[0] = buf.columns[0];
                      v637[1] = buf.columns[1];
                      v637[2] = buf.columns[2];
                      v638 = buf.columns[3];
                      re::AABB::transform(v9 + 64, v637, &v583);
                      LODWORD(v142) = v583.i32[1];
                      LODWORD(v141) = v583.i32[0];
                      LODWORD(v143) = v583.i32[2];
                      LODWORD(v145) = v584.i32[1];
                      LODWORD(v144) = v584.i32[0];
                      if (v48 || v583.f32[2] >= 0.0 || (LODWORD(v140) = v584.i32[2], v584.f32[2] <= 0.0))
                      {
                        v146 = v111[3].u64[0];
                        v128 = v563;
                        if (v146 <= v48)
                        {
                          goto LABEL_420;
                        }

                        a3 = v588;
                        if (v588 <= v48)
                        {
                          goto LABEL_429;
                        }

                        v147 = v17 + v584.f32[1];
                        v148 = v583.f32[1] - v17;
                        v149 = v539[2 * v48];
                        v150 = v591;
                        if (v589)
                        {
                          v150 = &v590;
                        }

                        v151 = &v150[8 * v48];
                        v152 = v151[1];
                        v153 = v151[2];
                        v154 = v151[3];
                        v155 = vmulq_n_f32(*v151, v17 + v584.f32[0]);
                        v156 = vaddq_f32(v154, vmlaq_n_f32(vmlaq_n_f32(v155, v152, v148), v153, v583.f32[2]));
                        v157 = vdivq_f32(v156, vdupq_laneq_s32(v156, 3));
                        v158 = vmulq_n_f32(*v151, v583.f32[0] - v17);
                        v159 = vaddq_f32(v154, vmlaq_n_f32(vmlaq_n_f32(v158, v152, v148), v153, v583.f32[2]));
                        v160 = vdivq_f32(v159, vdupq_laneq_s32(v159, 3));
                        v161 = vaddq_f32(v154, vmlaq_n_f32(vmlaq_n_f32(v155, v152, v147), v153, v583.f32[2]));
                        v162 = vdivq_f32(v161, vdupq_laneq_s32(v161, 3));
                        v163 = vaddq_f32(v154, vmlaq_n_f32(vmlaq_n_f32(v158, v152, v147), v153, v583.f32[2]));
                        v164 = vdivq_f32(v163, vdupq_laneq_s32(v163, 3));
                        v165 = vsubq_f32(v157, v149);
                        v166 = vsubq_f32(v162, v157);
                        v167 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v166, v166), v166, 0xCuLL), vnegq_f32(v165)), v166, vextq_s8(vuzp1q_s32(v165, v165), v165, 0xCuLL));
                        v168 = vextq_s8(vuzp1q_s32(v167, v167), v167, 0xCuLL);
                        v169 = vmulq_f32(v149, v168);
                        v161.f32[0] = -(v169.f32[2] + vaddv_f32(*v169.f32));
                        v170 = v168;
                        v170.i32[3] = v161.i32[0];
                        v171 = vsubq_f32(v164, v149);
                        v172 = vsubq_f32(v160, v164);
                        v173 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v172, v172), v172, 0xCuLL), vnegq_f32(v171)), v172, vextq_s8(vuzp1q_s32(v171, v171), v171, 0xCuLL));
                        v174 = vextq_s8(vuzp1q_s32(v173, v173), v173, 0xCuLL);
                        v175 = vmulq_f32(v149, v174);
                        v153.f32[0] = -(v175.f32[2] + vaddv_f32(*v175.f32));
                        v176 = v174;
                        v176.i32[3] = v153.i32[0];
                        if (v48)
                        {
                          v177 = vmulq_f32(v563, v563);
                          *&v178 = v177.f32[2] + vaddv_f32(*v177.f32);
                          *v177.f32 = vrsqrte_f32(v178);
                          *v177.f32 = vmul_f32(*v177.f32, vrsqrts_f32(v178, vmul_f32(*v177.f32, *v177.f32)));
                          v179 = vmulq_n_f32(v563, vmul_f32(*v177.f32, vrsqrts_f32(v178, vmul_f32(*v177.f32, *v177.f32))).f32[0]);
                          v180 = vmulq_f32(v560, v560);
                          *&v181 = v180.f32[2] + vaddv_f32(*v180.f32);
                          *v180.f32 = vrsqrte_f32(v181);
                          *v180.f32 = vmul_f32(*v180.f32, vrsqrts_f32(v181, vmul_f32(*v180.f32, *v180.f32)));
                          v182 = vmulq_f32(v179, vmulq_n_f32(v560, vmul_f32(*v180.f32, vrsqrts_f32(v181, vmul_f32(*v180.f32, *v180.f32))).f32[0]));
                          v182.f32[0] = v182.f32[2] + vaddv_f32(*v182.f32);
                          v183 = vmulq_f32(v176, v176);
                          *&v184 = v183.f32[2] + vaddv_f32(*v183.f32);
                          *v183.f32 = vrsqrte_f32(v184);
                          *v183.f32 = vmul_f32(*v183.f32, vrsqrts_f32(v184, vmul_f32(*v183.f32, *v183.f32)));
                          v185 = vmulq_f32(v179, vmulq_n_f32(v174, vmul_f32(*v183.f32, vrsqrts_f32(v184, vmul_f32(*v183.f32, *v183.f32))).f32[0]));
                          v185.f32[0] = v185.f32[2] + vaddv_f32(*v185.f32);
                          v560 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v185, v182), 0), v176, v560);
                          v186 = vmulq_f32(v559, v559);
                          v182.f32[0] = v186.f32[2] + vaddv_f32(*v186.f32);
                          *v186.f32 = vrsqrte_f32(v182.u32[0]);
                          *v186.f32 = vmul_f32(*v186.f32, vrsqrts_f32(v182.u32[0], vmul_f32(*v186.f32, *v186.f32)));
                          v187 = vmulq_f32(v179, vmulq_n_f32(v559, vmul_f32(*v186.f32, vrsqrts_f32(v182.u32[0], vmul_f32(*v186.f32, *v186.f32))).f32[0]));
                          v188 = vmulq_f32(v170, v170);
                          v185.f32[0] = v188.f32[2] + vaddv_f32(*v188.f32);
                          *v188.f32 = vrsqrte_f32(v185.u32[0]);
                          *v188.f32 = vmul_f32(*v188.f32, vrsqrts_f32(v185.u32[0], vmul_f32(*v188.f32, *v188.f32)));
                          v189 = vmulq_f32(v179, vmulq_n_f32(v168, vmul_f32(*v188.f32, vrsqrts_f32(v185.u32[0], vmul_f32(*v188.f32, *v188.f32))).f32[0]));
                          if ((v189.f32[2] + vaddv_f32(*v189.f32)) > (v187.f32[2] + vaddv_f32(*v187.f32)))
                          {
                            v559 = v170;
                          }

                          goto LABEL_199;
                        }

                        v190 = vsubq_f32(v162, v149);
                        v191 = vsubq_f32(v164, v162);
                        v192 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v191, v191), v191, 0xCuLL), vnegq_f32(v190)), v191, vextq_s8(vuzp1q_s32(v190, v190), v190, 0xCuLL));
                        v193 = vextq_s8(vuzp1q_s32(v192, v192), v192, 0xCuLL);
                        v194 = vmulq_f32(v149, v193);
                        v193.f32[3] = -(v194.f32[2] + vaddv_f32(*v194.f32));
                        v195 = vsubq_f32(v160, v149);
                        v196 = vsubq_f32(v157, v160);
                        v197 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v196, v196), v196, 0xCuLL), vnegq_f32(v195)), v196, vextq_s8(vuzp1q_s32(v195, v195), v195, 0xCuLL));
                        v198 = vextq_s8(vuzp1q_s32(v197, v197), v197, 0xCuLL);
                        v564 = *v539;
                        v199 = vmulq_f32(v149, v198);
                        v198.f32[3] = -(v199.f32[2] + vaddv_f32(*v199.f32));
                        v556 = v198;
                        v557 = v193;
                        v559 = v170;
                        v560 = v176;
                      }

                      else
                      {
                        *(a4 + 1) = 1;
                        v146 = v111[3].u64[0];
                        if (!v146)
                        {
                          goto LABEL_420;
                        }

                        v564 = *v539;
                        v557 = 0u;
                        v559 = 0u;
                        v560 = 0u;
                        v556 = 0u;
                      }

                      v641 = __invert_f4(*v9);
                      v201 = v641.columns[0];
                      v202 = v641.columns[1];
                      v203 = v641.columns[2];
                      v204 = v641.columns[3];
                      v641.columns[1] = *(v9 + 64);
                      v641.columns[0] = *(v9 + 80);
                      v205 = vsubq_f32(v641.columns[0], v641.columns[1]);
                      buf.columns[0] = v205;
                      v641.columns[0] = vaddq_f32(v641.columns[0], v641.columns[1]);
                      v641.columns[1].i64[0] = 0x3F0000003F000000;
                      v641.columns[1].i64[1] = 0x3F0000003F000000;
                      v206 = vmulq_f32(v641.columns[0], v641.columns[1]);
                      v207 = *v9;
                      if (*(v9 + 104) == 5)
                      {
                        v208 = *(v9 + 112);
                      }

                      else
                      {
                        v209 = vaddq_f32(v207.columns[3], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v207.columns[0], v206.f32[0]), v207.columns[1], *v206.f32, 1), v207.columns[2], v206, 2));
                        v208 = vdivq_f32(v209, vdupq_laneq_s32(v209, 3));
                      }

                      v210 = 2;
                      if (v205.f32[1] <= v205.f32[2])
                      {
                        v210 = 1;
                      }

                      v211 = v205.f32[0] > v205.f32[2] || v205.f32[0] > v205.f32[1];
                      if (!v211)
                      {
                        v210 = 0;
                      }

                      if (*(&buf | (4 * v210)) >= 0.03)
                      {
                        if (!v111[3].i64[0])
                        {
                          goto LABEL_433;
                        }

                        v216 = v549[5].f32[0];
                        v217 = v549[5].f32[1];
                        v218 = v549[5].f32[2];
                        v201.i32[0] = v549[5].i32[3];
                        v219 = (v216 + v216) * v201.f32[0];
                        v201.f32[0] = ((v216 + v216) * v218) + ((v217 + v217) * v201.f32[0]);
                        v551 = v201.f32[0];
                        v553 = ((v217 + v217) * v218) - v219;
                        v554 = 1.0 - (((v216 + v216) * v216) + ((v217 + v217) * v217));
                        v201.f32[1] = v553;
                        v201.f32[2] = v554;
                        v565 = v201;
                        v642 = __invert_f4(v207);
                        v128 = v565;
                        v220 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v642.columns[0], v551), v642.columns[1], v553), v642.columns[2], v554);
                        v221 = 80;
                        if (*v220.i32 < 0.0)
                        {
                          v221 = 64;
                        }

                        v222 = vcltz_f32(*&vextq_s8(v220, v220, 4uLL));
                        v223.i64[0] = v222.i32[0];
                        v223.i64[1] = v222.i32[1];
                        v224 = vbslq_s8(v223, xmmword_1E3108BA0, xmmword_1E3108B90);
                        v225 = vaddq_f32(*(v9 + 48), vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(*v9, *(v9 + v221)), *(v9 + 16), *(v9 + v224.i64[0])), *(v9 + 32), *(v9 + v224.i64[1])));
                        v215 = vmulq_f32(v565, vdivq_f32(v225, vdupq_laneq_s32(v225, 3)));
                      }

                      else
                      {
                        v212 = vaddq_f32(v204, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v201, v564.f32[0]), v202, *v564.f32, 1), v203, v564, 2));
                        v213 = xmmword_1E3108C90[v210];
                        v214 = vmulq_f32(vsubq_f32(vdivq_f32(v212, vdupq_laneq_s32(v212, 3)), v206), v213);
                        if ((v214.f32[2] + vaddv_f32(*v214.f32)) >= 0.0)
                        {
                          v207.columns[3].f32[0] = 1.0;
                        }

                        else
                        {
                          v207.columns[3].f32[0] = -1.0;
                        }

                        v207.columns[3] = vmulq_n_f32(v213, v207.columns[3].f32[0]);
                        v128 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v207.columns[0], v207.columns[3].f32[0]), v207.columns[1], *v207.columns[3].f32, 1), v207.columns[2], v207.columns[3], 2);
                        v215 = vmulq_f32(v208, v128);
                      }

                      v128.f32[3] = -(v215.f32[2] + vaddv_f32(*v215.f32));
LABEL_199:
                      v227 = *(v9 + 64);
                      v226 = *(v9 + 80);
                      v228 = vcgtq_f32(v227, v226);
                      v228.i32[3] = v228.i32[2];
                      v229 = vmaxvq_u32(v228);
                      v230.i64[0] = 0x3F0000003F000000;
                      v230.i64[1] = 0x3F0000003F000000;
                      v231 = vmulq_f32(vaddq_f32(v227, v226), v230);
                      v232 = v231.u32[2];
                      if (v229 >= 0)
                      {
                        v233 = v231.i64[0];
                      }

                      else
                      {
                        v232 = 0;
                        v233 = 0;
                      }

                      v234 = *(v9 + 16);
                      v235 = *(v9 + 32);
                      v236 = *(v9 + 48);
                      v237 = vdupq_n_s32(HIDWORD(v233));
                      v238 = vdupq_n_s32(v232);
                      v239 = vaddq_f32(v236, vmlaq_f32(vmlaq_f32(vmulq_n_f32(*v9, v227.f32[0]), v237, v234), v238, v235));
                      v240 = vdivq_f32(v239, vdupq_laneq_s32(v239, 3));
                      v241 = vaddq_f32(v236, vmlaq_f32(vmlaq_f32(vmulq_n_f32(*v9, v226.f32[0]), v237, v234), v238, v235));
                      v242 = vdivq_f32(v241, vdupq_laneq_s32(v241, 3));
                      v246.i64[1] = v572.i64[1];
                      v243 = vmulq_f32(vsubq_f32(v240, v569), v572);
                      v244 = vmulq_f32(vsubq_f32(v242, v569), v572);
                      *v246.f32 = vadd_f32(vzip1_s32(*v244.i8, *v243.i8), vzip2_s32(*v244.i8, *v243.i8));
                      v245 = vadd_f32(vzip1_s32(*&vextq_s8(v244, v244, 8uLL), *&vextq_s8(v243, v243, 8uLL)), *v246.f32);
                      v246.i32[0] = v245.i32[1];
                      if (v245.f32[1] < 0.0 || v245.f32[0] < 0.0)
                      {
                        v249 = vcltz_f32(v245);
                        v250 = v249.i8[4] & v249.i8[0];
                        v247 = 0uLL;
                        v248 = 0uLL;
                        if ((v250 & 1) == 0)
                        {
                          v248.i64[0] = 0;
                          v248 = vbslq_s8(vdupq_lane_s32(*&vcgeq_f32(v246, v248), 0), v240, v242);
                          v251 = vsubq_f32(v242, v240);
                          v252 = vmulq_f32(v555, v240);
                          v253 = vmulq_f32(v555, v251);
                          v247 = vaddq_f32(v240, vmulq_n_f32(v251, -(v555.f32[3] + (v252.f32[2] + vaddv_f32(*v252.f32))) / (v253.f32[2] + vaddv_f32(*v253.f32))));
                        }
                      }

                      else
                      {
                        v247 = v242;
                        v248 = v240;
                      }

                      v254 = vmulq_n_f32(*v9, *&v233);
                      v255 = vaddq_f32(v236, vmlaq_f32(vmlaq_lane_f32(v254, v234, *v227.f32, 1), v238, v235));
                      v256 = vdivq_f32(v255, vdupq_laneq_s32(v255, 3));
                      v257 = vaddq_f32(v236, vmlaq_f32(vmlaq_lane_f32(v254, v234, *v226.f32, 1), v238, v235));
                      v258 = vdivq_f32(v257, vdupq_laneq_s32(v257, 3));
                      v262.i64[1] = v572.i64[1];
                      v259 = vmulq_f32(vsubq_f32(v256, v569), v572);
                      v260 = vmulq_f32(vsubq_f32(v258, v569), v572);
                      *v262.f32 = vadd_f32(vzip1_s32(*v260.i8, *v259.i8), vzip2_s32(*v260.i8, *v259.i8));
                      v261 = vadd_f32(vzip1_s32(*&vextq_s8(v260, v260, 8uLL), *&vextq_s8(v259, v259, 8uLL)), *v262.f32);
                      v262.i32[0] = v261.i32[1];
                      if (v261.f32[1] < 0.0 || v261.f32[0] < 0.0)
                      {
                        v265 = vcltz_f32(v261);
                        v266 = v265.i8[4] & v265.i8[0];
                        v263 = 0uLL;
                        v264 = 0uLL;
                        if ((v266 & 1) == 0)
                        {
                          v263.i64[0] = 0;
                          v263 = vbslq_s8(vdupq_lane_s32(*&vcgeq_f32(v262, v263), 0), v256, v258);
                          v267 = vsubq_f32(v258, v256);
                          v268 = vmulq_f32(v555, v256);
                          v269 = vmulq_f32(v555, v267);
                          v264 = vaddq_f32(v256, vmulq_n_f32(v267, -(v555.f32[3] + (v268.f32[2] + vaddv_f32(*v268.f32))) / (v269.f32[2] + vaddv_f32(*v269.f32))));
                        }
                      }

                      else
                      {
                        v263 = v256;
                        v264 = v258;
                      }

                      v270 = vmlaq_f32(v254, v237, v234);
                      v271 = vaddq_f32(v236, vmlaq_laneq_f32(v270, v235, v227, 2));
                      v272 = vdivq_f32(v271, vdupq_laneq_s32(v271, 3));
                      v273 = vaddq_f32(v236, vmlaq_laneq_f32(v270, v235, v226, 2));
                      v274 = vdivq_f32(v273, vdupq_laneq_s32(v273, 3));
                      v278.i64[1] = v572.i64[1];
                      v275 = vmulq_f32(vsubq_f32(v272, v569), v572);
                      v276 = vmulq_f32(vsubq_f32(v274, v569), v572);
                      *v278.f32 = vadd_f32(vzip1_s32(*v276.i8, *v275.i8), vzip2_s32(*v276.i8, *v275.i8));
                      v277 = vadd_f32(vzip1_s32(*&vextq_s8(v276, v276, 8uLL), *&vextq_s8(v275, v275, 8uLL)), *v278.f32);
                      v278.i32[0] = v277.i32[1];
                      if (v277.f32[1] < 0.0 || v277.f32[0] < 0.0)
                      {
                        v281 = vcltz_f32(v277);
                        v282 = v281.i8[4] & v281.i8[0];
                        v279 = 0uLL;
                        v280 = 0uLL;
                        if ((v282 & 1) == 0)
                        {
                          v279.i64[0] = 0;
                          v279 = vbslq_s8(vdupq_lane_s32(*&vcgeq_f32(v278, v279), 0), v272, v274);
                          v283 = vsubq_f32(v274, v272);
                          v284 = vmulq_f32(v555, v272);
                          v285 = vmulq_f32(v555, v283);
                          v280 = vaddq_f32(v272, vmulq_n_f32(v283, -(v555.f32[3] + (v284.f32[2] + vaddv_f32(*v284.f32))) / (v285.f32[2] + vaddv_f32(*v285.f32))));
                        }
                      }

                      else
                      {
                        v279 = v272;
                        v280 = v274;
                      }

                      v6 = v593;
                      if (v593 <= v48)
                      {
                        goto LABEL_421;
                      }

                      v286 = v596;
                      if (v594)
                      {
                        v286 = &v595;
                      }

                      v287 = &v286[8 * v48];
                      v289 = *v287;
                      v288 = v287[1];
                      v290 = v287[2];
                      v291 = v287[3];
                      v292 = vaddq_f32(v291, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*v287, v248.f32[0]), v288, *v248.f32, 1), v290, v248, 2));
                      v293 = vaddq_f32(v291, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*v287, v247.f32[0]), v288, *v247.f32, 1), v290, v247, 2));
                      v294 = vaddq_f32(v291, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*v287, v263.f32[0]), v288, *v263.f32, 1), v290, v263, 2));
                      v295 = vaddq_f32(v291, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*v287, v264.f32[0]), v288, *v264.f32, 1), v290, v264, 2));
                      v296 = vsubq_f32(vdivq_f32(v293, vdupq_laneq_s32(v293, 3)), vdivq_f32(v292, vdupq_laneq_s32(v292, 3)));
                      v297 = vmulq_f32(v296, v296);
                      v298 = vsubq_f32(vdivq_f32(v295, vdupq_laneq_s32(v295, 3)), vdivq_f32(v294, vdupq_laneq_s32(v294, 3)));
                      v299 = vmulq_f32(v298, v298);
                      v300 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v299, v299, 8uLL), *&vextq_s8(v297, v297, 8uLL)), vadd_f32(vzip1_s32(*v299.i8, *v297.i8), vzip2_s32(*v299.i8, *v297.i8))));
                      if (v300.f32[1] <= 0.1)
                      {
                        __asm { FMOV            V0.4S, #1.0 }
                      }

                      else
                      {
                        __asm { FMOV            V0.4S, #1.0 }

                        _Q0.f32[0] = (v300.f32[1] + (v17 * 2.0)) / v300.f32[1];
                      }

                      if (v300.f32[0] > 0.1)
                      {
                        _Q0.f32[1] = (v300.f32[0] + (v17 * 2.0)) / v300.f32[0];
                      }

                      v302 = vaddq_f32(v291, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v289, v279.f32[0]), v288, *v279.f32, 1), v290, v279, 2));
                      v303 = vaddq_f32(v291, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v289, v280.f32[0]), v288, *v280.f32, 1), v290, v280, 2));
                      v304 = vsubq_f32(vdivq_f32(v303, vdupq_laneq_s32(v303, 3)), vdivq_f32(v302, vdupq_laneq_s32(v302, 3)));
                      v305 = vmulq_f32(v304, v304);
                      v305.f32[0] = sqrtf(v305.f32[2] + vaddv_f32(*v305.f32));
                      if (v305.f32[0] > 0.1)
                      {
                        _Q0.f32[2] = (v305.f32[0] + (v17 * 2.0)) / v305.f32[0];
                      }

                      v306 = vcgt_f32(vdup_lane_s32(*v305.f32, 0), v300);
                      v307 = v306.i8[0];
                      if (v300.f32[1] < v300.f32[0] && (v306.i8[4] & 1) != 0)
                      {
                        v308 = 0;
                        v309 = 1;
                        v310 = 2;
                      }

                      else if (v306.i8[0])
                      {
                        v309 = 0;
                        v310 = 2;
                        v307 = v306.i8[4];
                        v308 = 1;
                      }

                      else
                      {
                        v310 = 0;
                        v307 = v300.f32[0] < v300.f32[1];
                        v309 = 1;
                        v308 = 2;
                      }

                      v574 = _Q0;
                      v311 = *(&v574 | (4 * v309));
                      if ((v307 & 1) == 0)
                      {
                        v311 = *(&v574 | (4 * v310));
                      }

                      *(&v574 & 0xFFFFFFFFFFFFFFF3 | (4 * (v308 & 3))) = v311;
                      v312 = v574;
                      v312.i32[3] = 0;
                      v313 = vminnmq_f32(v312, xmmword_1E3108BB0);
                      v314 = v561;
                      v314.i32[3] = 0;
                      v313.i32[3] = 0;
                      v127 = vmaxnmq_f32(v314, v313);
                      if (v111[8].i64[0] <= ++v48)
                      {
                        goto LABEL_239;
                      }
                    }
                  }

                  v559 = 0u;
                  v560 = 0u;
                  v556 = 0u;
                  v557 = 0u;
                  v127 = v540;
                  v128 = 0uLL;
LABEL_239:
                  v562 = v127;
                  v566 = v128;
                  v315 = v543;
                  LODWORD(v582) = v543[2];
                  re::DynamicArray<re::BlurPlaneTypeData>::add(v547, &v582);
                  v317 = (v9 + 96);
                  v316 = *(v9 + 96);
                  v318 = v550;
                  if (v550 && (v318 = re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v550, (v9 + 96))) != 0)
                  {
                    v319 = *v318;
                    a3 = v318[2];
                  }

                  else
                  {
                    a3 = 0;
                    v319 = 0;
                  }

                  v320 = v566;
                  v321 = v543[1];
                  v322 = v543[2];
                  if (v322 >= v321)
                  {
                    v323 = v322 + 1;
                    if (v321 < v322 + 1)
                    {
                      if (*v543)
                      {
                        v324 = 2 * v321;
                        _ZF = v321 == 0;
                        v325 = 8;
                        if (!_ZF)
                        {
                          v325 = v324;
                        }

                        if (v325 <= v323)
                        {
                          v326 = v323;
                        }

                        else
                        {
                          v326 = v325;
                        }

                        re::DynamicArray<re::VCARenderData::FrustumId>::setCapacity(v543, v326);
                      }

                      else
                      {
                        re::DynamicArray<re::VCARenderData::FrustumId>::setCapacity(v543, v323);
                        ++*(v543 + 6);
                      }

                      v320 = v566;
                    }

                    v315 = v543;
                    v322 = v543[2];
                  }

                  v327 = v315[4] + 112 * v322;
                  *v327 = v316;
                  *(v327 + 8) = v319;
                  *(v327 + 16) = a3;
                  *(v327 + 20) = v637[0].i64[0];
                  *(v327 + 28) = v637[0].i32[2];
                  *(v327 + 32) = v560;
                  *(v327 + 48) = v559;
                  *(v327 + 64) = v556;
                  *(v327 + 80) = v557;
                  *(v327 + 96) = v320;
                  ++v315[2];
                  ++*(v315 + 6);
                  memset(&buf, 0, 24);
                  v328 = 0xBF58476D1CE4E5B9 * (*v317 ^ (*v317 >> 30));
                  re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v581, (v9 + 96), (0x94D049BB133111EBLL * (v328 ^ (v328 >> 27))) ^ ((0x94D049BB133111EBLL * (v328 ^ (v328 >> 27))) >> 31), &buf);
                  if (buf.columns[0].i32[3] == 0x7FFFFFFF)
                  {
                    v329 = re::HashTable<unsigned long long,re::TintContext,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v581, buf.columns[0].u32[2], buf.columns[0].u64[0]);
                    *(v329 + 8) = *v317;
                    *(v329 + 16) = v562;
                    *(v329 + 32) = v541;
                    *(v329 + 40) = v542;
                    ++*&v581[40];
                  }

                  a4 = v544;
                  v111 = v549;
                }

                else
                {
                  BYTE5(v582) = 1;
                  re::DynamicArray<re::BlurPlaneTypeData>::add(v547, &v582);
                }

                v9 += 144;
              }

              while (v9 != v546);
              v6 = v608;
              v9 = v537;
            }

            ++v9;
          }

          while (v9 < v6);
          v330 = v6 == 0;
        }

        else
        {
          v330 = 1;
          a4 = v544;
        }

        buf.columns[1].i32[0] = 1;
        buf.columns[2] = 0uLL;
        buf.columns[0] = v548;
        re::DynamicOverflowArray<re::AABB,8ul>::setCapacity(&buf, 0);
        buf.columns[1].i32[0] += 2;
        v9 = v549[53].u64[0];
        if (v9)
        {
          v332 = *(v9 + 40);
          if (v332)
          {
            for (i = 0; i != v332; ++i)
            {
              v334 = re::BucketArray<re::DynamicArray<re::CameraView>,4ul>::operator[](v9, i);
              v335 = *(v334 + 16);
              if (v335)
              {
                v336 = v335 << 10;
                v337 = (*(v334 + 32) + 128);
                do
                {
                  re::AABB::transform(&v337[-3], v337, v637);
                  re::DynamicOverflowArray<re::AABB,8ul>::add(&buf, v637);
                  v337 += 64;
                  v336 -= 1024;
                }

                while (v336);
              }
            }
          }
        }

        v7 = v538;
        if (v330)
        {
          goto LABEL_330;
        }

        v338 = 0;
        v6 = 144;
LABEL_272:
        a3 = v577;
        if (v577 <= v338)
        {
          goto LABEL_469;
        }

        v339 = v580;
        if (v578)
        {
          v339 = &v579;
        }

        a3 = v602;
        if (v602 > v338)
        {
          v340 = &v339[5 * v338];
          v341 = v605;
          if (v603)
          {
            v341 = &v604;
          }

          v342 = &v341[5 * v338];
          v343 = v342[2];
          if (!v343)
          {
            goto LABEL_327;
          }

          v573 = v340;
          v344 = 0;
          v7 = 0;
          v345 = v611;
          if (v609)
          {
            v345 = &v610;
          }

          v558 = v338;
          v11 = v345[v338];
          while (1)
          {
            v346 = (v342[4] + 8 * v344);
            if (*(v346 + 5))
            {
              goto LABEL_314;
            }

            v48 = *v346;
            a3 = v573[2];
            if (a3 <= v48)
            {
              goto LABEL_438;
            }

            a3 = 0;
            v9 = 0;
            v347 = (v573[4] + 112 * v48);
            a4 = &v347[2];
            while (1)
            {
              if (v7 == v9)
              {
                goto LABEL_290;
              }

              v48 = *(v11 + 16);
              if (v48 <= a3)
              {
                goto LABEL_425;
              }

              v348 = (*(v11 + 32) + 144 * a3);
              if (v348[8].i8[1] != 1)
              {
                goto LABEL_290;
              }

              v637[0].i64[0] = &v347[2];
              v637[0].i64[1] = 5;
              if (re::isBoundingBoxInsidePlanes(&v348[4], v637, v348))
              {
                break;
              }

              v343 = v342[2];
LABEL_290:
              a3 = (v9 + 1);
              v9 = a3;
              if (v343 <= a3)
              {
                goto LABEL_293;
              }
            }

            *(v346 + 4) = 1;
            *(v544 + 1) = 1;
LABEL_293:
            if ((v346[1] & 1) == 0)
            {
              v349 = *(v11 + 56);
              if (v349)
              {
                v9 = *(v11 + 72);
                v350 = v9 + 144 * v349;
                while (1)
                {
                  if (v550 && (v351 = re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v550, (v9 + 128))) != 0)
                  {
                    v352 = *v351;
                    v353 = *(v351 + 8);
                  }

                  else
                  {
                    v352 = 0;
                    v353 = 0;
                  }

                  v354 = v9 + 112;
                  if (re::isBoundingBoxInsideVCAPlanes(v9, (v9 + 32), v352, v353, (v9 + 96), (v9 + 112), v347 + 6, v331, v347 + 2, 4, v347->i64[1], v347[1].i32[0]))
                  {
                    break;
                  }

                  v9 += 144;
                  if (v354 + 32 == v350)
                  {
                    goto LABEL_304;
                  }
                }

                *(v346 + 4) = 1;
                *(v544 + 1) = 1;
              }

LABEL_304:
              if ((v346[1] & 1) == 0)
              {
                v637[0] = xmmword_1E3047670;
                v637[1] = xmmword_1E3047680;
                v637[2] = xmmword_1E30476A0;
                v638 = xmmword_1E30474D0;
                v9 = (buf.columns[1].i8[0] & 1) != 0 ? &buf.columns[2] : buf.columns[2].i64[1];
                if (buf.columns[0].i64[1])
                {
                  v355 = 32 * buf.columns[0].i64[1];
                  while (1)
                  {
                    v583.i8[0] = 0;
                    *v615 = 0u;
                    if (re::isBoundingBoxInsideVCAPlanes(v9, v637, 0, 0, &v583, v615, v347 + 6, v331, v347 + 2, 4, v347->i64[1], v347[1].i32[0]))
                    {
                      break;
                    }

                    v9 += 32;
                    v355 -= 32;
                    if (!v355)
                    {
                      goto LABEL_314;
                    }
                  }

                  *(v346 + 4) = 1;
                  *(v544 + 1) = 1;
                }
              }
            }

LABEL_314:
            v344 = (v7 + 1);
            v343 = v342[2];
            v7 = v344;
            if (v343 <= v344)
            {
              v7 = v538;
              if (v343)
              {
                v356 = 0;
                v357 = 0;
                v358 = 1;
                a4 = v544;
                v338 = v558;
                v340 = v573;
                do
                {
                  v359 = (v342[4] + 8 * v356);
                  if ((*(v359 + 5) & 1) == 0 && *(v359 + 4) == 1)
                  {
                    if (v358 - 1 != v357)
                    {
                      a3 = *v359;
                      v9 = v573[2];
                      if (v9 <= a3)
                      {
                        goto LABEL_453;
                      }

                      v11 = v357;
                      if (v9 <= v357)
                      {
                        goto LABEL_457;
                      }

                      v360 = v573[4];
                      v361 = (v360 + 112 * a3);
                      v362 = (v360 + 112 * v357);
                      v363 = *v361;
                      v364 = v361[2];
                      v362[1] = v361[1];
                      v362[2] = v364;
                      *v362 = v363;
                      v365 = v361[3];
                      v366 = v361[4];
                      v367 = v361[6];
                      v362[5] = v361[5];
                      v362[6] = v367;
                      v362[3] = v365;
                      v362[4] = v366;
                      v343 = v342[2];
                    }

                    ++v357;
                  }

                  v356 = v358;
                  v211 = v343 > v358++;
                }

                while (v211);
                v343 = v357;
              }

              else
              {
                a4 = v544;
                v338 = v558;
                v340 = v573;
              }

LABEL_327:
              if (v340[2] > v343)
              {
                v340[2] = v343;
                ++*(v340 + 6);
              }

              if (++v338 >= v608)
              {
LABEL_330:
                if (buf.columns[0].i64[0] && (buf.columns[1].i8[0] & 1) == 0)
                {
                  (*(*buf.columns[0].i64[0] + 40))();
                }

                v11 = 0x9E3779B97F4A7C17;
                a3 = v536;
                if (v587 && (v589 & 1) == 0)
                {
                  (*(*v587 + 40))();
                }

                if (v592 && (v594 & 1) == 0)
                {
                  (*(*v592 + 40))();
                }

                if (v597.i64[0])
                {
                  v368 = &v598;
                  v369 = &v597 + 7 * v597.i64[0] + 1;
                  do
                  {
                    v368->i64[0] = 0;
                    ++v368->i32[2];
                    v368 += 7;
                  }

                  while (v368 != v369);
                }

                if (v631)
                {
                  v370 = &v631 + 9 * v631 + 1;
                  v371 = &v632;
                  do
                  {
                    *v371 = 0;
                    ++*(v371 + 2);
                    v371 += 9;
                  }

                  while (v371 != v370);
                }

                if (*&v617[0])
                {
                  v372 = &v617[7 * *&v617[0] + 1];
                  v373 = &v617[1];
                  do
                  {
                    *v373 = 0;
                    ++*(v373 + 2);
                    v373 += 7;
                  }

                  while (v373 != v372);
                }

                re::DynamicOverflowArray<re::DynamicArray<re::BlurPlaneTypeData>,4ul>::deinit(&v601);
                goto LABEL_349;
              }

              goto LABEL_272;
            }
          }
        }

LABEL_473:
        v583.i64[0] = 0;
        v638 = 0u;
        v639 = 0u;
        memset(v637, 0, sizeof(v637));
        v9 = v338;
        v8 = MEMORY[0x1E69E9C10];
        v514 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v615 = 136315906;
        *&v615[4] = "operator[]";
        *&v615[12] = 1024;
        if (v514)
        {
          v515 = 3;
        }

        else
        {
          v515 = 2;
        }

        *&v615[14] = 858;
        *&v615[18] = 2048;
        *&v615[20] = v9;
        *&v615[28] = 2048;
        *&v615[30] = a3;
        _os_log_send_and_compose_impl(v515, &v583, v637, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v615, 38, v534, v535);
        _os_crash_msg();
        __break(1u);
LABEL_477:
        re::internal::assertLog(6, v449, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, 1, v455);
        _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v522, v530);
        __break(1u);
LABEL_478:
        re::internal::assertLog(6, v79, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, 0, 0);
        _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v523, v531);
        __break(1u);
        goto LABEL_479;
      }
    }

    else
    {
LABEL_479:
      re::internal::assertLog(6, v79, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, 0, 0);
      _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v524, v532);
      __break(1u);
    }

    re::internal::assertLog(6, v79, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, 0, 0);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v525, v533);
    __break(1u);
LABEL_481:
    v534 = "ensureCapacity";
    v535 = 277;
    re::internal::assertLog(4, v14, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false");
    _os_crash("assertion failure: (false) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.");
    __break(1u);
LABEL_482:
    v516 = __cxa_guard_acquire(&qword_1EE1C18A8);
    if (v516)
    {
      qword_1EE1C18A0 = re::hashString(v516, v517);
      __cxa_guard_release(&qword_1EE1C18A8);
    }
  }

  if (*a4)
  {
    if ((*(a4 + 1) & 1) == 0)
    {
      goto LABEL_392;
    }
  }

  else if ((*(a4 + 1) & 1) == 0)
  {
    v385 = 2512009519;
    goto LABEL_415;
  }

  v374 = "N2re13VCARenderDataE";
  if (("N2re13VCARenderDataE" & 0x8000000000000000) != 0)
  {
    v375 = ("N2re13VCARenderDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v376 = 5381;
    do
    {
      v374 = v376;
      v377 = *v375++;
      v376 = (33 * v376) ^ v377;
    }

    while (v377);
  }

  *&v617[0] = (v7 - 0x61C8864680B583E9 + (v374 << 6) + (v374 >> 2)) ^ v374;
  v378 = (*(**(v6 + 40) + 32))(*(v6 + 40), 240, 8);
  v9 = v378;
  *v378 = &unk_1F5D15788;
  *(v378 + 8) = 0;
  v379 = (v378 + 8);
  *(v378 + 16) = 0;
  *(v378 + 24) = 1;
  *(v378 + 32) = 0;
  v380 = v378 + 32;
  *(v378 + 40) = 0;
  if (v578)
  {
    v386 = v577;
    if (v577)
    {
      *(v378 + 8) = v576;
      re::DynamicOverflowArray<re::DynamicArray<re::VCARenderData::FrustumId>,4ul>::setCapacity((v378 + 8), v386);
      v388 = v580;
      if (v578)
      {
        v388 = &v579;
      }

      v389 = *(v9 + 16);
      v390 = *(v9 + 24);
      v391 = v380;
      if ((v390 & 1) == 0)
      {
        v391 = *(v9 + 40);
      }

      if (v389)
      {
        v392 = 0;
        v393 = 40 * v389;
        do
        {
          if (v388 != v391)
          {
            v394 = v391[v392 / 8];
            v395 = v388[v392 / 8];
            if (v394)
            {
              _ZF = v395 == 0;
            }

            else
            {
              _ZF = 1;
            }

            if (!_ZF && v394 != v395)
            {
              goto LABEL_451;
            }

            v398 = &v391[v392 / 8];
            *v398 = v395;
            v399 = &v388[v392 / 8];
            *v399 = v394;
            v400 = v391[v392 / 8 + 1];
            v398[1] = v388[v392 / 8 + 1];
            v399[1] = v400;
            v401 = v391[v392 / 8 + 2];
            v398[2] = v388[v392 / 8 + 2];
            v399[2] = v401;
            v402 = v391[v392 / 8 + 4];
            v398[4] = v388[v392 / 8 + 4];
            v399[4] = v402;
            *(v399 + 6) = LODWORD(v388[v392 / 8 + 3]) + 1;
            *(v398 + 6) = LODWORD(v391[v392 / 8 + 3]) + 1;
          }

          v392 += 40;
        }

        while (v393 != v392);
        v390 = *(v9 + 24);
      }

      if ((v390 & 1) == 0)
      {
        v380 = *(v9 + 40);
      }

      v403 = *(v9 + 16);
      v404 = &v579;
      if ((v578 & 1) == 0)
      {
        v404 = v580;
      }

      if (v403 != v386)
      {
        v405 = &v404[5 * v386];
        v406 = 5 * v403;
        v407 = &v404[5 * v403];
        v408 = (v380 + 8 * v406 + 32);
        do
        {
          *v408 = 0;
          *(v408 - 3) = 0;
          *(v408 - 2) = 0;
          *(v408 - 4) = 0;
          *(v408 - 2) = 0;
          *(v408 - 4) = *v407;
          *v407 = 0;
          *(v408 - 3) = v407[1];
          v407[1] = 0;
          v409 = *(v408 - 2);
          *(v408 - 2) = v407[2];
          v407[2] = v409;
          v410 = *v408;
          *v408 = v407[4];
          v407[4] = v410;
          ++*(v407 + 6);
          ++*(v408 - 2);
          v407 += 5;
          v408 += 5;
        }

        while (v407 != v405);
      }

      *(v9 + 16) = v386;
      re::DynamicOverflowArray<re::DynamicArray<re::VCARenderData::FrustumId>,4ul>::clear(&v576);
    }

    else
    {
      re::DynamicOverflowArray<re::DynamicArray<re::BlurPlaneTypeData>,4ul>::deinit(v378 + 8);
      *v379 = v576;
    }
  }

  else
  {
    re::DynamicOverflowArray<re::DynamicArray<re::VCARenderData::FrustumId>,4ul>::clear(v378 + 8);
    v381 = *(v9 + 8);
    v382 = *(v9 + 16);
    *(v9 + 8) = v576;
    *(v9 + 16) = v577;
    v576 = v381;
    v577 = v382;
    v383 = *(v9 + 40);
    *(v9 + 40) = v580;
    v580 = v383;
    v578 = v578 & 0xFFFFFFFE | *(v9 + 24) & 1;
    *(v9 + 24) &= ~1u;
    v384 = *(v9 + 32);
    *(v9 + 32) = v579;
    v579 = v384;
  }

  v578 += 2;
  *(v9 + 24) += 2;
  *(v9 + 192) = 0u;
  *(v9 + 208) = 0u;
  *(v9 + 224) = 0;
  *(v9 + 192) = *v581;
  *v581 = 0uLL;
  *(v9 + 208) = *&v581[16];
  *&v581[16] = 0;
  *(v9 + 216) = *&v581[24];
  *(v9 + 224) = *&v581[32];
  *(v9 + 228) = 0x17FFFFFFFLL;
  *(v9 + 228) = *&v581[36];
  *&v581[24] = xmmword_1E3058120;
  buf.columns[0].i64[0] = v9;
  re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(v6 + 96, v617, &buf);
LABEL_392:
  v411 = *(*(v6 + 8) + 128);
  if (*(v411 + 16))
  {
    v412 = *v411;
    v413 = v411[1];
    v414 = v411[3];
    *(a4 + 96) = v411[2];
    *(a4 + 112) = v414;
    *(a4 + 64) = v412;
    *(a4 + 80) = v413;
    v415 = v411[4];
    v416 = v411[5];
    v417 = v411[7];
    *(a4 + 160) = v411[6];
    *(a4 + 176) = v417;
    *(a4 + 128) = v415;
    *(a4 + 144) = v416;
    *(v411 + 16) = 0;
  }

  *&v617[0] = &unk_1F5D15808;
  v418 = *(a4 + 80);
  v617[1] = *(a4 + 64);
  v618 = v418;
  v419 = *(a4 + 112);
  v619 = *(a4 + 96);
  v620 = v419;
  v420 = *(a4 + 144);
  v621 = *(a4 + 128);
  v622 = v420;
  v421 = *(a4 + 176);
  v623 = *(a4 + 160);
  v624 = v421;
  v422 = *(a4 + 192);
  v423 = *(a4 + 208);
  v424 = *(a4 + 224);
  v628 = *(a4 + 240);
  v627 = v424;
  v626 = v423;
  v625 = v422;
  v425 = *(a4 + 288);
  v632 = *(a4 + 304);
  v631 = v425;
  v426 = *(a4 + 256);
  v427 = "N2re20WorldToViewCacheDataE";
  v630 = *(a4 + 272);
  v629 = v426;
  if (("N2re20WorldToViewCacheDataE" & 0x8000000000000000) != 0)
  {
    v428 = ("N2re20WorldToViewCacheDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v429 = 5381;
    do
    {
      v427 = v429;
      v430 = *v428++;
      v429 = (33 * v429) ^ v430;
    }

    while (v430);
  }

  buf.columns[0].i64[0] = (v7 - 0x61C8864680B583E9 + (v427 << 6) + (v427 >> 2)) ^ v427;
  v431 = (*(**(v6 + 40) + 32))(*(v6 + 40), 272, 16);
  *v431 = &unk_1F5D15808;
  v432 = v620;
  v434 = v617[1];
  v433 = v618;
  *(v431 + 48) = v619;
  *(v431 + 64) = v432;
  *(v431 + 16) = v434;
  *(v431 + 32) = v433;
  v435 = v624;
  v437 = v621;
  v436 = v622;
  *(v431 + 112) = v623;
  *(v431 + 128) = v435;
  *(v431 + 80) = v437;
  *(v431 + 96) = v436;
  v438 = v628;
  v440 = v625;
  v439 = v626;
  *(v431 + 176) = v627;
  *(v431 + 192) = v438;
  *(v431 + 144) = v440;
  *(v431 + 160) = v439;
  v441 = v632;
  v443 = v629;
  v442 = v630;
  *(v431 + 240) = v631;
  *(v431 + 256) = v441;
  *(v431 + 208) = v443;
  *(v431 + 224) = v442;
  v597.i64[0] = v431;
  v444 = re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(v6 + 96, &buf, &v597);
  v8 = v549;
  if (!v549 || (a3 & 1) != 0)
  {
    goto LABEL_411;
  }

  if (v549[3].i64[0])
  {
    v446 = *(a4 + 80);
    *(a4 + 192) = *(a4 + 64);
    *(a4 + 208) = v446;
    v447 = *(a4 + 112);
    *(a4 + 224) = *(a4 + 96);
    *(a4 + 240) = v447;
    if (!v549[3].i64[0])
    {
      goto LABEL_452;
    }

    re::RenderCamera::computeInverseTransform(&buf, v549 + 4);
    v450 = buf.columns[1];
    v451 = buf.columns[2];
    v452 = buf.columns[3];
    *(a4 + 64) = buf.columns[0];
    *(a4 + 80) = v450;
    *(a4 + 96) = v451;
    *(a4 + 112) = v452;
    if (v549[3].i64[0] < 2uLL)
    {
      if ((atomic_exchange(&unk_1EE1C1899, 1u) & 1) == 0)
      {
        v459 = *re::graphicsLogObjects(v448);
        if (os_log_type_enabled(v459, OS_LOG_TYPE_DEFAULT))
        {
          buf.columns[0].i16[0] = 0;
          v460 = "Blur: Caching WorldToView matrix: Right Camera data not available";
LABEL_410:
          _os_log_impl(&dword_1E1C61000, v459, OS_LOG_TYPE_DEFAULT, v460, &buf, 2u);
        }
      }

      goto LABEL_411;
    }

    v453 = *(a4 + 144);
    *(a4 + 256) = *(a4 + 128);
    *(a4 + 272) = v453;
    v454 = *(a4 + 176);
    *(a4 + 288) = *(a4 + 160);
    *(a4 + 304) = v454;
    v455 = v549[3].u64[0];
    if (v455 > 1)
    {
      re::RenderCamera::computeInverseTransform(&buf, v549 + 6);
      v456 = buf.columns[1];
      v457 = buf.columns[2];
      v458 = buf.columns[3];
      *(a4 + 128) = buf.columns[0];
      *(a4 + 144) = v456;
      *(a4 + 160) = v457;
      *(a4 + 176) = v458;
      goto LABEL_411;
    }

    goto LABEL_477;
  }

  if ((atomic_exchange(byte_1EE1C189A, 1u) & 1) == 0)
  {
    v459 = *re::graphicsLogObjects(v444);
    if (os_log_type_enabled(v459, OS_LOG_TYPE_DEFAULT))
    {
      buf.columns[0].i16[0] = 0;
      v460 = "Blur: Caching WorldToView matrix: Left Camera data not available";
      goto LABEL_410;
    }
  }

LABEL_411:
  if (*(a4 + 1))
  {
    v461 = 0xDFC926A60E076268;
  }

  else
  {
    v461 = 0x7B9CDD2A1D56B4CCLL;
  }

  v462 = 0xBF58476D1CE4E5B9 * (*(a4 + 12) ^ (*(a4 + 12) >> 30));
  v463 = ((v461 << 6) - 0x61C8864680B583E9 + (v461 >> 2) + ((0x94D049BB133111EBLL * (v462 ^ (v462 >> 27))) ^ ((0x94D049BB133111EBLL * (v462 ^ (v462 >> 27))) >> 31))) ^ v461;
  v464 = 0xBF58476D1CE4E5B9 * (*(a4 + 16) ^ (*(a4 + 16) >> 30));
  v465 = (((0x94D049BB133111EBLL * (v464 ^ (v464 >> 27))) ^ ((0x94D049BB133111EBLL * (v464 ^ (v464 >> 27))) >> 31)) - 0x61C8864680B583E9 + (v463 << 6) + (v463 >> 2)) ^ v463;
  v466 = 0xBF58476D1CE4E5B9 * (*(a4 + 20) ^ (*(a4 + 20) >> 30));
  v467 = (((0x94D049BB133111EBLL * (v466 ^ (v466 >> 27))) ^ ((0x94D049BB133111EBLL * (v466 ^ (v466 >> 27))) >> 31)) - 0x61C8864680B583E9 + (v465 << 6) + (v465 >> 2)) ^ v465;
  v468 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*(a4 + 24) ^ (*(a4 + 24) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*(a4 + 24) ^ (*(a4 + 24) >> 30))) >> 27));
  v469 = ((v468 ^ (v468 >> 31)) - 0x61C8864680B583E9 + (v467 << 6) + (v467 >> 2)) ^ v467;
  v470 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *(a4 + 32)) ^ ((0xBF58476D1CE4E5B9 * *(a4 + 32)) >> 27));
  v471 = ((v470 ^ (v470 >> 31)) - 0x61C8864680B583E9 + (v469 << 6) + (v469 >> 2)) ^ v469;
  v472 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *(a4 + 33)) ^ ((0xBF58476D1CE4E5B9 * *(a4 + 33)) >> 27));
  v385 = ((v472 ^ (v472 >> 31)) - 0x61C8864680B583E9 + (v471 << 6) + (v471 >> 2)) ^ v471;
LABEL_415:
  re::HashTable<re::ecs2::Entity *,re::SortingPlane,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::deinit(v581);
  re::DynamicOverflowArray<re::DynamicArray<re::BlurPlaneTypeData>,4ul>::deinit(&v576);
  return v385;
}

void re::VCARenderData::~VCARenderData(re::VCARenderData *this)
{
  re::HashTable<re::ecs2::Entity *,re::SortingPlane,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::deinit(this + 24);
  re::DynamicOverflowArray<re::DynamicArray<re::BlurPlaneTypeData>,4ul>::deinit(this + 8);
}

{
  re::HashTable<re::ecs2::Entity *,re::SortingPlane,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::deinit(this + 24);
  re::DynamicOverflowArray<re::DynamicArray<re::BlurPlaneTypeData>,4ul>::deinit(this + 8);

  JUMPOUT(0x1E6906520);
}

void anonymous namespace::createRenderGraphTarget(uint64_t *a1, __int128 **a2)
{
  v4 = *a2;
  v6 = (*a2)[1];
  v5 = (*a2)[2];
  v19 = **a2;
  v20 = v6;
  v21 = v5;
  v7 = v4[6];
  v9 = v4[3];
  v8 = v4[4];
  v24 = v4[5];
  v25 = v7;
  v22 = v9;
  v23 = v8;
  v10 = a2[2];
  if (*(a2 + 72) == 1)
  {
    *&v25 = (&a2[10][4 * *v10 - 0x61C8864680B583ELL] + ((*v10 & 0x7FFFFFFFFFFFFFFFuLL) >> 2) - 9) ^ *v10 & 0x7FFFFFFFFFFFFFFFLL;
  }

  re::RenderFrame::createTarget(a1, a2[1], &v19, *(v10 + 1));
  if (*(a2 + 24) == 1)
  {
    v11 = a2[1];
    v17 = a2[4] & 0x7FFFFFFFFFFFFFFFLL;
    re::RenderFrame::inheritLaneProperties(v11, &v17, a1, 0);
  }

  if (*(a2 + 48) == 1)
  {
    DWORD1(v20) = 4;
    LODWORD(v19) = 0;
    re::RenderFrame::createTarget(&v17, a2[1], &v19, a2[8]);
    if (*(a2 + 24) == 1)
    {
      v12 = a2[1];
      v16 = a2[4] & 0x7FFFFFFFFFFFFFFFLL;
      re::RenderFrame::inheritLaneProperties(v12, &v16, &v17, 0);
    }

    v13 = a2[1];
    v15[0] = *a1;
    v15[1] = a1[1];
    v14 = v18;
    *(re::RenderGraphResourceDescriptions::targetDescription((v13 + 3672), v15) + 84) = v14;
  }
}

re::RenderGraphNode *re::RenderGraph::addNode<re::SFBSystemShellCreateTextureAliasNode>(re *a1, const char *a2)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 280, 8);
  v6 = re::RenderGraphNode::RenderGraphNode(v5, a2);
  *v6 = &unk_1F5D10D78;
  *(v6 + 264) = 0;
  *(v6 + 34) = 0;
  v10 = v6;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v10);
  v7 = *(a1 + 12);
  v8 = *(a1 + 13);
  *(v5 + 3) = *(a1 + 10);
  *(v5 + 4) = v7;
  *(v5 + 6) = v8;
  return v5;
}

re::AssetHandle *re::BlurManager::getBackdropMaterial(re::AssetHandle *this, uint64_t a2)
{
  v2 = this;
  v5 = *(a2 + 160);
  v3 = a2 + 160;
  v4 = v5;
  if (v5)
  {
    if (!v6)
    {
      std::__throw_bad_any_cast[abi:nn200100]();
    }

    return re::AssetHandle::AssetHandle(v2, v6);
  }

  else
  {
    *this = 0;
    *(this + 1) = 0;
    *(this + 2) = 0;
  }

  return this;
}

re::RenderGraphComputeNodeBase *re::RenderGraph::addNode<re::SFBSystemShellComputeNode>(re *a1, const char *a2)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 496, 16);
  v6 = re::RenderGraphComputeNodeBase::RenderGraphComputeNodeBase(v5, a2);
  *v6 = &unk_1F5D10910;
  v10 = v6;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v10);
  v7 = *(a1 + 12);
  v8 = *(a1 + 13);
  *(v5 + 3) = *(a1 + 10);
  *(v5 + 4) = v7;
  *(v5 + 6) = v8;
  return v5;
}

re::RenderGraphComputeNodeBase *re::RenderGraph::addNode<re::SFBSystemShellBlurTAANode>(re *a1, const char *a2)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 512, 16);
  v6 = re::RenderGraphComputeNodeBase::RenderGraphComputeNodeBase(v5, a2);
  *v6 = &unk_1F5D109D0;
  *(v6 + 496) = 0;
  *(v6 + 500) = 0;
  v10 = v6;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v10);
  v7 = *(a1 + 12);
  v8 = *(a1 + 13);
  *(v5 + 3) = *(a1 + 10);
  *(v5 + 4) = v7;
  *(v5 + 6) = v8;
  return v5;
}

re::RenderGraphComputeNodeBase *re::RenderGraph::addNode<re::SFBSystemShellReprojectNode>(re *a1, const char *a2)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 512, 16);
  v6 = re::RenderGraphComputeNodeBase::RenderGraphComputeNodeBase(v5, a2);
  *v6 = &unk_1F5D10CB8;
  *(v6 + 62) = 0;
  v10 = v6;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v10);
  v7 = *(a1 + 12);
  v8 = *(a1 + 13);
  *(v5 + 3) = *(a1 + 10);
  *(v5 + 4) = v7;
  *(v5 + 6) = v8;
  return v5;
}

uint64_t re::RenderGraphSFBSystemShellBlurProvider::prepareFrame(re::RenderGraphSFBSystemShellBlurProvider *this, const char *__s, const char *a3, re::RenderFrame *a4)
{
  v259 = *MEMORY[0x1E69E9840];
  if (!*(this + 112))
  {
    return 0;
  }

  v8 = strlen(__s);
  if (v8)
  {
    MurmurHash3_x64_128(__s, v8, 0, __src);
    v9 = (*&__src[8] - 0x61C8864680B583E9 + (*__src << 6) + (*__src >> 2)) ^ *__src;
  }

  else
  {
    v9 = 0;
  }

  v10 = strlen(a3);
  if (v10)
  {
    MurmurHash3_x64_128(a3, v10, 0, __src);
    v11 = ((*&__src[8] - 0x61C8864680B583E9 + (*__src << 6) + (*__src >> 2)) ^ *__src) - 0x61C8864680B583E9;
  }

  else
  {
    v11 = 0x9E3779B97F4A7C17;
  }

  v12 = ((v9 >> 2) + (v9 << 6) + v11) ^ v9;
  if (*(re::RenderGraphDataStore::get<re::CameraData>(a4 + 32, v12) + 863) != 1)
  {
    return 0;
  }

  v230.columns[0].i64[0] = v12;
  v14 = *(this + 399);
  __asm { FMOV            V8.2S, #1.0 }

  if (v14)
  {
    v19 = this + 1568;
    v20 = re::HashTable<unsigned long long,re::RenderGraphSFBSystemShellBlurProvider::BlurFrameContext,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::tryGet(this + 1568, v12);
    if (v20)
    {
      goto LABEL_54;
    }

    v21 = *(this + 400);
    if (v21)
    {
      v22 = 0;
      v23 = *(this + 198);
      while ((*v23 & 0x80000000) == 0)
      {
        v23 += 88;
        if (v21 == ++v22)
        {
          LODWORD(v22) = *(this + 400);
          break;
        }
      }
    }

    else
    {
      LODWORD(v22) = 0;
    }

    v26 = this + 1568;
  }

  else
  {
    v21 = *(this + 18);
    if (v21)
    {
      v25 = 352 * v21;
      v20 = this + 176;
      while (*(v20 - 2) != v12)
      {
        v20 += 352;
        v25 -= 352;
        if (!v25)
        {
          goto LABEL_21;
        }
      }

      goto LABEL_54;
    }

LABEL_21:
    v19 = this + 160;
    LODWORD(v22) = 352;
    v26 = this + 352 * v21 + 160;
  }

  v27 = *(a4 + 48) & 0xFFFFFFFFFFFFFFFLL;
  while (1)
  {
LABEL_25:
    while (v14)
    {
      if (v21 == v22)
      {
        goto LABEL_53;
      }

      v28 = *(v19 + 2);
      if (*(v28 + 352 * v22 + 64) + 4 < v27)
      {
        v32 = *(v28 + 352 * v22 + 8);
        if (v32)
        {
          v33 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v32 ^ (v32 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v32 ^ (v32 >> 30))) >> 27));
          re::HashTable<unsigned long long,re::RenderGraphSFBSystemShellBlurProvider::BlurFrameContext,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::findEntry<unsigned long long>(__src, this + 1568, v32, v33 ^ (v33 >> 31));
          v34 = *&__src[12];
          if (*&__src[12] != 0x7FFFFFFF)
          {
            v35 = *(this + 198);
            v36 = (v35 + 352 * *&__src[12]);
            v37 = *v36 & 0x7FFFFFFF;
            if (*&__src[16] == 0x7FFFFFFF)
            {
              *(*(this + 197) + 4 * *&__src[8]) = v37;
              v14 = *(this + 399);
            }

            else
            {
              *(v35 + 352 * *&__src[16]) = *(v35 + 352 * *&__src[16]) & 0x80000000 | v37;
            }

            *v36 = *(this + 401);
            *(this + 401) = v34;
            *(this + 399) = v14 - 1;
            ++*(this + 402);
          }
        }

        goto LABEL_53;
      }

      v29 = v22 + 1;
      if (*(v19 + 8) <= (v22 + 1))
      {
        LODWORD(v22) = v22 + 1;
      }

      else
      {
        LODWORD(v22) = *(v19 + 8);
      }

      while (v22 != v29)
      {
        v30 = v29;
        v31 = *(v28 + 352 * v29++);
        if (v31 < 0)
        {
          LODWORD(v22) = v30;
          goto LABEL_25;
        }
      }
    }

    if (v19 == v26)
    {
      goto LABEL_53;
    }

    if (*(v19 + 8) + 4 < v27)
    {
      break;
    }

    v19 += 352;
  }

  if (!*v19)
  {
    goto LABEL_53;
  }

  v38 = *(this + 18);
  if (!v38)
  {
    goto LABEL_53;
  }

  v39 = 0;
  v40 = (this + 160);
  while (*v40 != *v19)
  {
    ++v39;
    v40 += 44;
    if (v38 == v39)
    {
      goto LABEL_53;
    }
  }

  if (v38 <= v39)
  {
LABEL_262:
    re::internal::assertLog(6, v13, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "removeAt", 527, v39, v38);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v207, v209);
    __break(1u);
  }

  v41 = v38 - 1;
  if (v38 - 1 > v39)
  {
    memcpy(v40, this + 352 * v38 - 192, 0x160uLL);
    v41 = *(this + 18) - 1;
  }

  *(this + 18) = v41;
  ++*(this + 38);
LABEL_53:
  *__src = 0x1000000;
  memset(v236, 0, 32);
  *&__src[4] = _D8;
  *&__src[12] = xmmword_1E3108BC0;
  *&__src[28] = 1077516698;
  v42 = *(MEMORY[0x1E69E9B18] + 16);
  *&v236[32] = *MEMORY[0x1E69E9B18];
  *&v236[48] = v42;
  v43 = *(MEMORY[0x1E69E9B18] + 48);
  v45 = *MEMORY[0x1E69E9B18];
  v44 = *(MEMORY[0x1E69E9B18] + 16);
  *&v236[64] = *(MEMORY[0x1E69E9B18] + 32);
  v237 = v43;
  v46 = *MEMORY[0x1E69E9B18];
  v47 = *(MEMORY[0x1E69E9B18] + 16);
  v48 = *(MEMORY[0x1E69E9B18] + 32);
  v241 = *(MEMORY[0x1E69E9B18] + 48);
  v240 = v48;
  v239 = v47;
  v238 = v46;
  v49 = *(MEMORY[0x1E69E9B18] + 32);
  v245 = *(MEMORY[0x1E69E9B18] + 48);
  v244 = v49;
  v50 = *MEMORY[0x1E69E9B18];
  v243 = *(MEMORY[0x1E69E9B18] + 16);
  v242 = v50;
  v249 = *(MEMORY[0x1E69E9B18] + 48);
  v248 = v48;
  v247 = v44;
  v246 = v45;
  v251 = 0;
  v250 = 0;
  v20 = re::SmallHashTable<unsigned long long,re::RenderGraphSFBSystemShellBlurProvider::BlurFrameContext,4ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::add(this + 128, &v230, __src, 1);
LABEL_54:
  *(v20 + 6) = *(a4 + 48) & 0xFFFFFFFFFFFFFFFLL;
  v51 = re::RenderGraphDataStore::tryGet<re::SFBSystemShellBlurContext>(a4 + 32, "SFBSystemShellBlurContext", "RenderFrame");
  if ((re::mtl::Device::isPhysicalHardware((*(a4 + 1) + 208)) & 1) == 0)
  {
    *(v20 + 12) = xmmword_1E3108BD0;
  }

  v218 = *(*(a4 + 1) + 96);
  v52 = re::RenderGraphDataStore::tryGet<re::ViewportPercentData>(a4 + 32, v12);
  v219 = v51;
  if (!v52 || *(v52 + 64) != 2)
  {
    v57 = 0;
    goto LABEL_62;
  }

  v54 = *(v52 + 16);
  if (v54 <= 1)
  {
    re::internal::assertLog(6, v53, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, 1, v54);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v206, v208);
    __break(1u);
    goto LABEL_262;
  }

  v55 = *(v52 + 52);
  v56 = *(v52 + 36);
  v57 = v55 >= (v56 + *(v52 + 44)) || v56 >= (v55 + *(v52 + 60));
LABEL_62:
  v20[2] = v57;
  v58 = *(*(a4 + 1) + 96);
  if (v58)
  {
    v230.columns[0].i32[0] = 0;
    *__src = 0x1389125D3C064618;
    *&__src[8] = "blur:passthroughTextureWidth";
    v59 = re::DebugSettingsManager::getWithErrorCode<int>(v58, __src, &v230);
    v60 = v59;
    if (__src[0])
    {
      if (__src[0])
      {
      }
    }

    if (!v60)
    {
      v61 = v230.columns[0].i32[0];
      *(v20 + 3) = v230.columns[0].i32[0];
      *(v20 + 4) = v61;
    }

    *__src = 0x441AC35BB1E33358;
    *&__src[8] = "blur:VCATextureWidth";
    v62 = re::DebugSettingsManager::getWithErrorCode<int>(v58, __src, &v230);
    v63 = v62;
    if (__src[0])
    {
      if (__src[0])
      {
      }
    }

    if (!v63)
    {
      v64 = v230.columns[0].i32[0];
      *(v20 + 5) = v230.columns[0].i32[0];
      *(v20 + 6) = v64;
    }

    *v222 = 0;
    *__src = 0xBA9708B410B41FEELL;
    *&__src[8] = "blur:VCABlurExpansion";
    v65 = re::DebugSettingsManager::getWithErrorCode<float>(v58, __src, v222);
    v66 = v65;
    if (__src[0])
    {
      if (__src[0])
      {
      }
    }

    if (!v66)
    {
      *(v20 + 7) = *v222;
    }

    LOBYTE(v229) = 0;
    *__src = 0x339926AA9F3B1226;
    *&__src[8] = "blur:showUnblurredPassthrough";
    v67 = re::DebugSettingsManager::getWithErrorCode<BOOL>(v58, __src, &v229);
    v68 = v67;
    if (__src[0])
    {
      if (__src[0])
      {
      }
    }

    if (!v68)
    {
      v20[32] = v229;
    }

    *__src = 0x36D8B606BC4FD85CLL;
    *&__src[8] = "blur:showUnblurredVC";
    v69 = re::DebugSettingsManager::getWithErrorCode<BOOL>(v58, __src, &v229);
    v70 = v69;
    if (__src[0])
    {
      if (__src[0])
      {
      }
    }

    if (!v70)
    {
      v20[33] = v229;
    }

    v71 = (v20 + 16);
    v72 = *(v20 + 4);
    v73 = v72;
    v74 = 1.5;
    v75 = *(v20 + 3) * 1.5;
    if (v20[2])
    {
LABEL_89:
      if (v75 > v73)
      {
        *v71 = 2 * v72;
      }

      v76 = *(v20 + 6);
      if (*(v20 + 5) * v74 > v76)
      {
        v77 = 2 * v76;
LABEL_98:
        *(v20 + 6) = v77;
        goto LABEL_99;
      }

      goto LABEL_99;
    }
  }

  else
  {
    v71 = (v20 + 16);
    v72 = *(v20 + 4);
    v73 = v72;
    v74 = 1.5;
    v75 = *(v20 + 3) * 1.5;
    if (v57)
    {
      goto LABEL_89;
    }
  }

  if (v75 <= v73)
  {
    *v71 = v72 / 2;
  }

  v78 = *(v20 + 6);
  if (*(v20 + 5) * v74 <= v78)
  {
    v77 = v78 / 2;
    goto LABEL_98;
  }

LABEL_99:
  v79 = *(a4 + 55);
  *__src = 65290051;
  *(v20 + 40) = re::RenderFrame::getScopeProtectionOptions(a4, a3, __src) & v79;
  v217 = this;
  if (a3)
  {
    v81 = *a3;
    if (*a3)
    {
      v82 = a3[1];
      if (v82)
      {
        v83 = a3 + 2;
        do
        {
          v81 = 31 * v81 + v82;
          v84 = *v83++;
          v82 = v84;
        }

        while (v84);
      }

      v81 &= ~0x8000000000000000;
    }
  }

  else
  {
    v81 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v220 = v81;
  v85 = re::supportedColorPixelFormat((*(a4 + 1) + 208), v80);
  v86 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v85) ^ ((0xBF58476D1CE4E5B9 * v85) >> 27));
  v87 = ((((v12 + 0x292D39BBB76173E7) ^ 0x6DBE18E721BE9D42) << 6) - 0x61C8864680B583E9 + (((v12 + 0x292D39BBB76173E7) ^ 0x6DBE18E721BE9D42uLL) >> 2) + (v86 ^ (v86 >> 31))) ^ (v12 + 0x292D39BBB76173E7) ^ 0x6DBE18E721BE9D42;
  v88 = ((v87 << 6) - 0x61C8864680B583E9 + (v87 >> 2)) ^ v87;
  v89 = *(a4 + 1);
  v90 = *(*a4 + 296);
  v228[0] = 0;
  v92 = re::supportedColorPixelFormat((v89 + 208), v91);
  v93 = *(v20 + 40);
  *&v236[12] = _D8;
  v94 = *(v20 + 12);
  *v236 = 0xFFFFFFFFLL;
  *&v236[20] = xmmword_1E30A3B60;
  *&v236[52] = -1;
  *&v236[44] = -1;
  v236[72] = 0;
  *&v236[36] = 0x2000000007;
  *&__src[12] = v94;
  v236[8] = 1;
  *&__src[8] = 3;
  *&__src[28] = 1;
  *&__src[20] = 0x200000001;
  *&v236[64] = 0;
  *&v236[56] = v93;
  *&__src[4] = v92;
  *__src = 2;
  v232 = *&v236[32];
  v233 = *&v236[48];
  v234 = *&v236[64];
  v230.columns[0] = *__src;
  v230.columns[1] = *&__src[16];
  v230.columns[2] = *v236;
  v231 = *&v236[16];
  v230.columns[0].i32[1] = 115;
  if (v20[3])
  {
    v95 = 0x41835D6541233CC6;
  }

  else
  {
    v95 = 0x6EE84F42E390DAAFLL;
  }

  if (v20[3])
  {
    v96 = 0x6EE84F42E390DAAFLL;
  }

  else
  {
    v96 = 0x41835D6541233CC6;
  }

  *v222 = v95;
  v229 = 0x224DEC6372A17064;
  re::RenderGraphPersistentResourceManager::registerPersistentTexture(v90, &v220, v222, &v229, a4, __src, v228);
  v97 = v228[0];
  *v222 = v96;
  v229 = 0x224DEC6372A17065;
  re::RenderGraphPersistentResourceManager::registerPersistentTexture(v90, &v220, v222, &v229, a4, __src, v228);
  v98 = v228[0] || v97;
  *v222 = 0x23D59F1355F7D636;
  v229 = 0x500524C6A54C98FCLL;
  re::RenderGraphPersistentResourceManager::registerPersistentTexture(v90, &v220, v222, &v229, a4, __src, v228);
  v99 = v228[0];
  *v222 = 0x72FE99054D3CC2B0;
  v229 = 0x4BC26B238B46B276;
  re::RenderGraphPersistentResourceManager::registerPersistentTexture(v90, &v220, v222, &v229, a4, &v230, v228);
  v100 = v98 | (v99 || v228[0]);
  if (v20[3])
  {
    v101 = 0x2E4F6D8BCDEF172CLL;
  }

  else
  {
    v101 = 0x1B9E43EDF0404D09;
  }

  if (v20[3])
  {
    v102 = 0x1B9E43EDF0404D09;
  }

  else
  {
    v102 = 0x2E4F6D8BCDEF172CLL;
  }

  v103 = *(v20 + 6);
  *&__src[12] = *(v20 + 5);
  *&__src[16] = v103;
  v230.columns[0].i32[3] = *&__src[12];
  v230.columns[1].i32[0] = v103;
  *v222 = v101;
  v229 = 0x29CB6A1F26966DCALL;
  re::RenderGraphPersistentResourceManager::registerPersistentTexture(v90, &v220, v222, &v229, a4, __src, v228);
  v104 = v228[0];
  *v222 = v102;
  v229 = 0x29CB6A1F26966DCBLL;
  re::RenderGraphPersistentResourceManager::registerPersistentTexture(v90, &v220, v222, &v229, a4, __src, v228);
  v105 = v104 || v228[0];
  *v222 = 0x60DF09E0AF8AD07;
  v229 = 0x245EA3C951D4BAF2;
  re::RenderGraphPersistentResourceManager::registerPersistentTexture(v90, &v220, v222, &v229, a4, &v230, v228);
  LOBYTE(v105) = (v100 | v105 | v228[0]) != 0;
  *v222 = 0x2B6EE9216B5DB7CCLL;
  v229 = 0x28E1A7364C7DB35DLL;
  re::RenderGraphPersistentResourceManager::registerPersistentTexture(v90, &v220, v222, &v229, a4, &v230, v228);
  v106 = v228[0] | v105;
  v107 = *(a4 + 1);
  v108 = [*(v107 + 208) supportsFamily:1007];
  if (*(v107 + 367) != 1 || (v108 & 1) == 0)
  {
    *v222 = *__src;
    *&v222[16] = *&__src[16];
    v225 = *&v236[32];
    v226 = *&v236[48];
    v227 = *&v236[64];
    v223 = *v236;
    v224 = *&v236[16];
    *&v222[12] = vshl_n_s32(*&v222[12], 2uLL);
    v229 = 0x7AC65E6EBC1A6022;
    v221 = 0x2F5AA33D1CD8F884;
    re::RenderGraphPersistentResourceManager::registerPersistentTexture(v90, &v220, &v229, &v221, a4, v222, v228);
    v106 |= v228[0];
  }

  *v222 = 0x365702DE80DBD47FLL;
  v229 = 0x5E987FCC43D26868;
  re::RenderGraphPersistentResourceManager::registerPersistentTexture(v90, &v220, v222, &v229, a4, __src, v228);
  v109 = v228[0] | v106;
  v110 = *(v20 + 41);
  v111 = re::RenderGraphDataStore::tryGet<re::SceneScope>(a4 + 32, v12);
  if (v111)
  {
    if (*(v111 + 16))
    {
      v112 = *(v111 + 24);
    }

    else
    {
      v112 = (v111 + 17);
    }

    v114 = re::RenderGraphDataStore::tryGet<re::BlurPlanesRenderFrameData>(a4 + 32, "BlurPlanesRenderFrameData", v112);
    if (v114)
    {
      v115 = *(v114 + 16);
      v116 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v115 ^ (v115 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v115 ^ (v115 >> 30))) >> 27));
      v113 = v116 ^ (v116 >> 31);
      if (v115)
      {
        v117 = (*(v114 + 32) + 96);
        do
        {
          v118 = *v117;
          v117 += 18;
          v119 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v118 ^ (v118 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v118 ^ (v118 >> 30))) >> 27));
          v113 ^= (v119 >> 31) ^ v119;
          --v115;
        }

        while (v115);
      }
    }

    else
    {
      v113 = 0;
    }
  }

  else
  {
    v113 = 0;
  }

  *(v20 + 41) = v113;
  if (v109 || v113 != v110)
  {
    *(v20 + 9) = 2;
    v123 = 1;
    v122 = v219;
  }

  else
  {
    v120 = *(v20 + 9);
    _VF = __OFSUB__(v120, 1);
    v121 = v120 - 1;
    v122 = v219;
    if (v121 < 0 != _VF)
    {
      v123 = 0;
    }

    else
    {
      *(v20 + 9) = v121;
      v123 = v121 != 0;
    }
  }

  if (v122 && !v123 && (*v122 & 1) != 0)
  {
    v125 = 1;
  }

  else
  {
    v125 = 0;
    v20[3] ^= 1u;
  }

  *__src = &unk_1F5D15858;
  if (!_AXSEnhanceBackgroundContrastEnabled())
  {
    if (_AXDarkenSystemColors())
    {
      v133 = *MEMORY[0x1E69E9B18];
      v134 = *(MEMORY[0x1E69E9B18] + 32);
      v135 = *(MEMORY[0x1E69E9B18] + 48);
      *&v236[48] = *(MEMORY[0x1E69E9B18] + 16);
      *&v236[64] = v134;
      *&__src[16] = xmmword_1E3108BE0;
      *v236 = xmmword_1E3108BF0;
      *&v236[32] = v133;
      *&v236[16] = xmmword_1E3108C00;
      v130 = vdupq_n_s32(0x3DCCCCCDu);
      v237 = v135;
      goto LABEL_147;
    }

    if (!v218)
    {
      goto LABEL_252;
    }

    LODWORD(v229) = 0;
    LODWORD(v221) = 0;
    *v228 = 0.0;
    v230.columns[0].i64[0] = 0x2424585FE717096ALL;
    v230.columns[0].i64[1] = "blur:filter.luminance";
    v187 = re::DebugSettingsManager::getWithErrorCode<float>(v218, &v230, &v229);
    v189 = *&v229 != 0.0 && v187 == 0;
    if (v230.columns[0].i8[0])
    {
      if (v230.columns[0].i8[0])
      {
      }
    }

    v190 = 0uLL;
    if (v189)
    {
      v190.i32[0] = v229;
      if (*&v229 > 1.0)
      {
        *v190.i32 = 1.0;
      }

      if (*v190.i32 < -1.0)
      {
        *v190.i32 = -1.0;
      }

      LODWORD(v229) = v190.i32[0];
      v190 = vdupq_lane_s32(*v190.i8, 0);
    }

    v210 = v190;
    v230.columns[0].i64[0] = 0xB6D7E15BC798CF4ALL;
    v230.columns[0].i64[1] = "blur:filter.contrast";
    v191 = re::DebugSettingsManager::getWithErrorCode<float>(v218, &v230, &v221);
    v194 = *&v221 != 1.0 && v191 == 0;
    if (v230.columns[0].i8[0])
    {
      if (v230.columns[0].i8[0])
      {
      }
    }

    if (v194)
    {
      v195 = 0;
      v192.i32[0] = v221;
      if (*&v221 > 4.0)
      {
        *v192.i32 = 4.0;
      }

      if (*v192.i32 < 0.25)
      {
        *v192.i32 = 0.25;
      }

      LODWORD(v221) = v192.i32[0];
      *&v196 = 0;
      LODWORD(v197) = 0;
      HIDWORD(v197) = v192.i32[0];
      *(&v196 + 1) = v192.u32[0];
      *v222 = v192.u32[0];
      *&v222[16] = v197;
      v223 = v196;
      do
      {
        v230.columns[v195] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1E3047670, COERCE_FLOAT(*&v222[v195 * 16])), xmmword_1E3047680, *&v222[v195 * 16], 1), xmmword_1E30476A0, *&v222[v195 * 16], 2);
        ++v195;
      }

      while (v195 != 3);
      v211 = v230.columns[1];
      v213 = v230.columns[0];
      v215 = v230.columns[2];
      *v192.i32 = (1.0 - *v192.i32) * 0.5;
      v210 = vaddq_f32(v210, vdupq_lane_s32(v192, 0));
      v189 = 1;
    }

    else
    {
      v215 = xmmword_1E30476A0;
      v211 = xmmword_1E3047680;
      v213 = xmmword_1E3047670;
    }

    v230.columns[0].i64[0] = 0x6067E59BDEAF676ALL;
    v230.columns[0].i64[1] = "blur:filter.saturation";
    v198 = re::DebugSettingsManager::getWithErrorCode<float>(v218, &v230, v228);
    v201 = v198;
    if (v230.columns[0].i8[0])
    {
      if (v230.columns[0].i8[0])
      {
      }
    }

    if (!v201)
    {
      v203 = 0;
      v204 = *v228;
      if (*v228 > 2.0)
      {
        v204 = 2.0;
      }

      if (v204 < 0.0)
      {
        v204 = 0.0;
      }

      *&v199 = vmla_n_f32(vdup_n_s32(0x3E59B3D0u), 0xBE59B3D03F498C7ELL, v204);
      *&v205 = vmla_n_f32(vdup_n_s32(0x3F371759u), 0x3E91D14EBF371759, v204);
      *&v200 = (v204 * -0.0722) + 0.0722;
      DWORD2(v199) = DWORD1(v199);
      *(&v205 + 1) = v205;
      *(&v200 + 1) = *&v200;
      *(&v200 + 2) = (v204 * 0.9278) + 0.0722;
      *v222 = v199;
      *&v222[16] = v205;
      v223 = v200;
      do
      {
        v230.columns[v203] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v213, COERCE_FLOAT(*&v222[v203 * 16])), v211, *&v222[v203 * 16], 1), v215, *&v222[v203 * 16], 2);
        ++v203;
      }

      while (v203 != 3);
      v202 = v230;
      v202.columns[0].i32[3] = v213.i32[3];
      v202.columns[1].i32[3] = v211.i32[3];
      v202.columns[2].i32[3] = v215.i32[3];
      v122 = v219;
      goto LABEL_260;
    }

    v122 = v219;
    v202.columns[0] = v213;
    v202.columns[2] = v215;
    v202.columns[1] = v211;
    if (!v189)
    {
LABEL_252:
      v210 = vdupq_n_s32(0x3E19999Au);
      v202.columns[2] = xmmword_1E3108C10;
      v202.columns[0] = xmmword_1E3108C20;
      v202.columns[1] = xmmword_1E3108C30;
    }

LABEL_260:
    v212 = v202.columns[1];
    v214 = v202.columns[0];
    v216 = v202.columns[2];
    v260 = __invert_f3(v202);
    *&__src[16] = v214;
    *v236 = v212;
    *&v236[16] = v216;
    *&v236[32] = v260;
    v237 = vnegq_f32(v210);
    v238 = v210;
    goto LABEL_148;
  }

  v126 = _AXDarkenSystemColors();
  v127.i32[0] = 0;
  v128.i32[0] = v126;
  v129 = *MEMORY[0x1E69E9B18];
  v130 = vbslq_s8(vdupq_lane_s8(*&vceqq_s8(v128, v127), 0), vdupq_n_s32(0x3EE66666u), vdupq_n_s32(0x3E19999Au));
  v131 = *(MEMORY[0x1E69E9B18] + 32);
  v132 = *(MEMORY[0x1E69E9B18] + 48);
  v232 = *(MEMORY[0x1E69E9B18] + 16);
  v233 = v131;
  v234 = v132;
  memset(&v230, 0, sizeof(v230));
  v231 = v129;
  *&v236[64] = v131;
  *&v236[48] = v232;
  *&__src[16] = 0u;
  memset(v236, 0, 32);
  *&v236[32] = v129;
  v237 = v132;
LABEL_147:
  v238 = v130;
LABEL_148:
  v136 = *(*(a4 + 1) + 128);
  v137 = *&v236[48];
  v138 = *&v236[64];
  v139 = v237;
  v136[14] = *&v236[32];
  v136[15] = v137;
  v136[16] = v138;
  v136[17] = v139;
  re::ColorHelpers::computeGamutTransformMatrix(1, 0, &v230);
  DWORD2(v239) = v230.columns[0].i32[2];
  DWORD2(v240) = v230.columns[1].i32[2];
  *&v239 = v230.columns[0].i64[0];
  *&v240 = v230.columns[1].i64[0];
  DWORD2(v241) = v230.columns[2].i32[2];
  *&v241 = v230.columns[2].i64[0];
  v140 = "N2re24ColorFilterConstantsDataE";
  if (("N2re24ColorFilterConstantsDataE" & 0x8000000000000000) != 0)
  {
    v141 = ("N2re24ColorFilterConstantsDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v142 = 5381;
    do
    {
      v140 = v142;
      v143 = *v141++;
      v142 = (33 * v142) ^ v143;
    }

    while (v143);
  }

  v124 = ((v88 << 6) + (v88 >> 2) - 0xB36702970AA7E04) ^ v88;
  v144 = ((v124 << 6) - 0x61C8864680B583E9 + (v124 >> 2)) ^ v124;
  v145 = v12 - 0x61C8864680B583E9;
  *v222 = (v12 - 0x61C8864680B583E9 + (v140 << 6) + (v140 >> 2)) ^ v140;
  v146 = (*(**(a4 + 5) + 32))(*(a4 + 5), 192, 16);
  *v146 = &unk_1F5D15858;
  v147 = *&v236[16];
  v148 = *v236;
  *(v146 + 16) = *&__src[16];
  *(v146 + 32) = v148;
  *(v146 + 48) = v147;
  v149 = v237;
  v150 = *&v236[48];
  v151 = *&v236[32];
  *(v146 + 96) = *&v236[64];
  *(v146 + 112) = v149;
  *(v146 + 64) = v151;
  *(v146 + 80) = v150;
  v152 = v241;
  v153 = v239;
  v154 = v238;
  *(v146 + 160) = v240;
  *(v146 + 176) = v152;
  *(v146 + 128) = v154;
  *(v146 + 144) = v153;
  v229 = v146;
  re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a4 + 96, v222, &v229);
  v155 = *(v217 + 112);
  if (v155 == 4)
  {
    v24 = ((v144 << 6) - 0x61C8864680B583E9 + (v144 >> 2) + re::RenderGraphSFBSystemShellBlurProvider::prepareVCABlur(v12, a4, v125, v20)) ^ v144;
    v156 = v218;
  }

  else
  {
    v24 = 2512009519;
    v156 = v218;
    if (v155 == 3)
    {
      re::RenderGraphSFBSystemShellBlurProvider::prepareVCABlur(v12, a4, v125, v20);
      v157 = *v20 | v20[1];
      *v20 = v157;
      v20[1] = 0;
      if (v157)
      {
        v158 = 0xBF58476D1CE4E5B9 * (*(v20 + 3) ^ (*(v20 + 3) >> 30));
        v24 = (((0x94D049BB133111EBLL * (v158 ^ (v158 >> 27))) ^ ((0x94D049BB133111EBLL * (v158 ^ (v158 >> 27))) >> 31)) - 0x59ECBDB75CFBBFDFLL) ^ 0x23FB73AE8E00E62ALL;
      }

      v24 = ((v144 << 6) - 0x61C8864680B583E9 + (v144 >> 2) + v24) ^ v144;
    }
  }

  if ((*v20 & 1) != 0 || v20[1] == 1)
  {
    re::CameraStreamManager::context(*(*(a4 + 1) + 120), __src);
    v159 = "N2re19CameraStreamContextE";
    if (("N2re19CameraStreamContextE" & 0x8000000000000000) != 0)
    {
      v160 = ("N2re19CameraStreamContextE" & 0x7FFFFFFFFFFFFFFFLL);
      v161 = 5381;
      do
      {
        v159 = v161;
        v162 = *v160++;
        v161 = (33 * v161) ^ v162;
      }

      while (v162);
    }

    *v222 = (v145 + (v159 << 6) + (v159 >> 2)) ^ v159;
    v163 = (*(**(a4 + 5) + 32))(*(a4 + 5), 1856, 16);
    *v163 = &unk_1F5D04818;
    *(v163 + 16) = 0;
    *(v163 + 24) = 0;
    *(v163 + 32) = 0;
    *(v163 + 40) = 0;
    *(v163 + 1712) = 0u;
    *(v163 + 1728) = 0u;
    *(v163 + 1744) = 0;
    *(v163 + 1748) = 0x7FFFFFFFLL;
    *(v163 + 16) = *&__src[16];
    *&__src[16] = 0;
    *(v163 + 24) = *&__src[24];
    *&__src[24] = 0;
    v230.columns[0].i64[0] = 0;
    v230.columns[0].i32[2] = 0;
    re::DynamicInlineArray<re::KeyValuePair<re::WeakStringID,re::CameraStreamParams>,4ul>::move(&v230, (v163 + 32));
    if (v163 != __src)
    {
      re::DynamicInlineArray<re::KeyValuePair<re::WeakStringID,re::CameraStreamParams>,4ul>::move((v163 + 32), v236);
      ++*(v163 + 40);
    }

    re::DynamicInlineArray<re::KeyValuePair<re::WeakStringID,re::CameraStreamParams>,4ul>::move(v236, &v230);
    ++*&v236[8];
    re::DynamicInlineArray<re::KeyValuePair<re::WeakStringID,re::CameraStreamParams>,4ul>::clear(&v230);
    v230.columns[0] = *(v163 + 1712);
    *(v163 + 1712) = 0u;
    v230.columns[1].i64[0] = *(v163 + 1728);
    *(v163 + 1728) = 0;
    *(&v230.columns[1] + 8) = *(v163 + 1736);
    *(v163 + 1736) = xmmword_1E3058120;
    v230.columns[2].i32[2] = 1;
    re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::operator=((v163 + 1712), v252);
    re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::operator=(v252, &v230);
    re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(&v230);
    *(v163 + 1760) = v253;
    v164 = v254;
    v165 = v255;
    v166 = v256;
    *(v163 + 1824) = v257;
    *(v163 + 1808) = v166;
    *(v163 + 1792) = v165;
    *(v163 + 1776) = v164;
    *(v163 + 1832) = v258;
    v258 = 0u;
    v230.columns[0].i64[0] = v163;
    re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a4 + 96, v222, &v230);
    if (*(&v258 + 1))
    {

      *(&v258 + 1) = 0;
    }

    v122 = v219;
    if (v258)
    {

      *&v258 = 0;
    }

    re::SmallHashTable<re::WeakStringID,re::CameraStreamParams,4ul,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false>::~SmallHashTable(&__src[16]);
  }

  if (v156)
  {
    v230.columns[0].i32[0] = 0;
    *__src = 0x55CC0F1AC1A278;
    *&__src[8] = "blur:taaMixValue.passthrough";
    v167 = re::DebugSettingsManager::getWithErrorCode<float>(v156, __src, &v230);
    v168 = v167;
    if (__src[0])
    {
      if (__src[0])
      {
      }
    }

    if (v168)
    {
      v169 = 0.65;
    }

    else
    {
      v169 = v230.columns[0].f32[0];
    }

    *__src = 0x70F94BFC4F683DF8;
    *&__src[8] = "blur:taaMixValue.vca";
    v170 = re::DebugSettingsManager::getWithErrorCode<float>(v156, __src, &v230);
    v171 = v170;
    if (__src[0])
    {
      if (__src[0])
      {
      }
    }

    if (v171)
    {
      v172 = 0.65;
    }

    else
    {
      v172 = v230.columns[0].f32[0];
    }
  }

  else
  {
    v169 = 0.65;
    v172 = 0.65;
  }

  *__src = &unk_1F5D15898;
  __src[8] = v125;
  v173 = 1.0;
  if (v123)
  {
    v174 = 1.0;
  }

  else
  {
    v174 = v169;
  }

  if (v123)
  {
    v172 = 1.0;
  }

  *&__src[12] = v174;
  *&__src[16] = v172;
  if (v125)
  {
    v175 = *(v20 + 10) + 1;
    v176 = v175 + 1.0;
  }

  else
  {
    v175 = 0;
    v176 = 1.0;
  }

  *(v20 + 10) = v175;
  if (v122)
  {
    v177 = v123;
  }

  else
  {
    v177 = 1;
  }

  if ((v177 & 1) == 0)
  {
    v173 = v176 / (*(v122 + 4) + 1);
    if (v173 > 1.0)
    {
      v173 = 1.0;
    }

    if (v173 < 0.0)
    {
      v173 = 0.0;
    }
  }

  *&__src[20] = v173;
  if (v156)
  {
    v222[0] = 0;
    v230.columns[0].i64[0] = 0x13A98A684FC91826;
    v230.columns[0].i64[1] = "blur:enableReprojectionLerping";
    v178 = re::DebugSettingsManager::getWithErrorCode<BOOL>(v156, &v230, v222);
    v179 = v178;
    v180 = v222[0];
    if (v230.columns[0].i8[0])
    {
      if (v230.columns[0].i8[0])
      {
      }
    }

    if (!v179 && (v180 & 1) == 0)
    {
      *&__src[20] = 1065353216;
    }
  }

  v181 = "N2re21BlurReprojectionStateE";
  if (("N2re21BlurReprojectionStateE" & 0x8000000000000000) != 0)
  {
    v182 = ("N2re21BlurReprojectionStateE" & 0x7FFFFFFFFFFFFFFFLL);
    v183 = 5381;
    do
    {
      v181 = v183;
      v184 = *v182++;
      v183 = (33 * v183) ^ v184;
    }

    while (v184);
  }

  v230.columns[0].i64[0] = (v145 + (v181 << 6) + (v181 >> 2)) ^ v181;
  v185 = (*(**(a4 + 5) + 32))(*(a4 + 5), 24, 8);
  *v185 = &unk_1F5D15898;
  *(v185 + 8) = *&__src[8];
  *v222 = v185;
  re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a4 + 96, &v230, v222);
  return v24;
}