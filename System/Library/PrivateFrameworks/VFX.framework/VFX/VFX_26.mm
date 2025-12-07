id sub_1AF2F0298(void *a1, int a2, uint64_t *a3, uint64_t a4, _DWORD *a5)
{
  *a5 = 1;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (objc_msgSend_count(a1, v8, v9))
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = objc_msgSend_objectAtIndexedSubscript_(a1, v10, v13);
      if (objc_msgSend_indicesChannelCount(v14, v15, v16) >= 2)
      {
        *a5 = objc_msgSend_indicesChannelCount(v14, v17, v18);
        v11 = 1;
      }

      v19 = objc_msgSend_data(v14, v17, v18);
      v22 = objc_msgSend_length(v19, v20, v21);
      v12 += v22 / objc_msgSend_bytesPerIndex(v14, v23, v24);
      ++v13;
    }

    while (v13 < objc_msgSend_count(a1, v25, v26));
    if (v11)
    {
      v82 = -1;
      sub_1AF2F0508(a3, v12, &v82);
      if (objc_msgSend_count(a1, v27, v28))
      {
        v30 = objc_msgSend_objectAtIndexedSubscript_(a1, v29, 0);
        hasInterleavedIndicesChannels = objc_msgSend_hasInterleavedIndicesChannels(v30, v31, v32);
        v36 = objc_msgSend_indicesChannelCount(v30, v34, v35);
        v39 = objc_msgSend_bytesPerIndex(v30, v37, v38);
        v42 = objc_msgSend_primitiveCount(v30, v40, v41);
        v45 = objc_msgSend_data(v30, v43, v44);
        objc_msgSend_bytes(v45, v46, v47);
        v50 = objc_msgSend_data(v30, v48, v49);
        v53 = objc_msgSend_length(v50, v51, v52);
        if (objc_msgSend_primitiveType(v30, v54, v55) == 1 || objc_msgSend_primitiveType(v30, v56, v57) != 4)
        {
          v73 = objc_msgSend_data(v30, v56, v57);
          v70 = objc_msgSend_bytes(v73, v74, v75);
        }

        else
        {
          v58 = v42 * v39;
          v59 = objc_msgSend_data(v30, v56, v57);
          v62 = objc_msgSend_data(v30, v60, v61);
          v65 = objc_msgSend_length(v62, v63, v64);
          v67 = objc_msgSend_subdataWithRange_(v59, v66, v58, v65 - v58);
          v70 = objc_msgSend_bytes(v67, v68, v69);
          v53 = objc_msgSend_length(v67, v71, v72);
        }

        v76 = (v53 / v39);
        v77 = malloc_type_malloc(v76 / v36 * v39, 0x100004077774924uLL);
        sub_1AF2EFE34(v77, a3, a4, v70, v39, v36, v76, a2, hasInterleavedIndicesChannels);
      }
    }
  }

  return v7;
}

_DWORD *sub_1AF2F0508(uint64_t *a1, unint64_t a2, int *a3)
{
  v5 = a1[2];
  result = *a1;
  if (a2 > (v5 - result) >> 2)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v5 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a2 >> 62))
    {
      v7 = v5 >> 1;
      if (v5 >> 1 <= a2)
      {
        v7 = a2;
      }

      if (v5 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v8 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v8 = v7;
      }

      sub_1AF17C384(a1, v8);
    }

    sub_1AF10A1D0();
  }

  v9 = a1[1];
  v10 = (v9 - result) >> 2;
  if (v10 >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = (v9 - result) >> 2;
  }

  if (v11)
  {
    v12 = 0;
    v13 = *a3;
    v14 = (v11 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v15 = vdupq_n_s64(v11 - 1);
    v16 = result + 2;
    do
    {
      v17 = vdupq_n_s64(v12);
      v18 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_1AFE21110)));
      if (vuzp1_s16(v18, *v15.i8).u8[0])
      {
        *(v16 - 2) = v13;
      }

      if (vuzp1_s16(v18, *&v15).i8[2])
      {
        *(v16 - 1) = v13;
      }

      if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_1AFE21100)))).i32[1])
      {
        *v16 = v13;
        v16[1] = v13;
      }

      v12 += 4;
      v16 += 4;
    }

    while (v14 != v12);
  }

  v19 = a2 >= v10;
  v20 = a2 - v10;
  if (v20 != 0 && v19)
  {
    v21 = 0;
    v22 = v9 + 4 * v20;
    v23 = *a3;
    v24 = (4 * a2 - (v9 - result) - 4) >> 2;
    v25 = vdupq_n_s64(v24);
    v26 = (v9 + 8);
    do
    {
      v27 = vdupq_n_s64(v21);
      v28 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(v27, xmmword_1AFE21110)));
      if (vuzp1_s16(v28, *v25.i8).u8[0])
      {
        *(v26 - 2) = v23;
      }

      if (vuzp1_s16(v28, *&v25).i8[2])
      {
        *(v26 - 1) = v23;
      }

      if (vuzp1_s16(*&v25, vmovn_s64(vcgeq_u64(v25, vorrq_s8(v27, xmmword_1AFE21100)))).i32[1])
      {
        *v26 = v23;
        v26[1] = v23;
      }

      v21 += 4;
      v26 += 4;
    }

    while (((v24 + 4) & 0x7FFFFFFFFFFFFFFCLL) != v21);
    a1[1] = v22;
  }

  else
  {
    a1[1] = &result[a2];
  }

  return result;
}

void sub_1AF2F07B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 == 786434)
  {
    if (a5)
    {
      v5 = (a2 + a3 + 4);
      do
      {
        *v5 = 1.0 - *v5;
        v5 = (v5 + a4);
        --a5;
      }

      while (a5);
    }
  }

  else
  {
    v6 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1AF0CE000, v6, OS_LOG_TYPE_DEFAULT, "Warning: Warning: unable to flip non-float2 texture coordinates, skipping\n", v7, 2u);
    }
  }
}

void *sub_1AF2F084C(void *a1, const char *a2, void *a3, void *a4, int a5, int a6, unsigned int a7, char *a8)
{
  v38 = a2;
  v10 = objc_msgSend_dataStride(a1, a2, a3);
  result = objc_msgSend_dataOffset(a1, v11, v12);
  v16 = result;
  if (a6 >= 1)
  {
    v17 = 0;
    v18 = 4 * v38 - 4;
    v19 = a8;
    do
    {
      if (v38)
      {
        v20 = *(*a3 + v18);
      }

      else
      {
        v20 = v17;
      }

      v21 = objc_msgSend_data(a1, v14, v15);
      v24 = objc_msgSend_bytes(v21, v22, v23);
      result = memcpy(v19, (v24 + v16 + (v20 * v10)), v10);
      ++v17;
      v19 += v10;
      v18 += 4 * a5;
    }

    while (a6 != v17);
  }

  if (a7 >= 1)
  {
    v25 = a7;
    v26 = &a8[v10 * a6];
    v27 = 4 * v38;
    do
    {
      v28 = *(*a4 + v27);
      v29 = objc_msgSend_data(a1, v14, v15);
      v32 = objc_msgSend_bytes(v29, v30, v31);
      result = memcpy(v26, (v32 + v16 + (v28 * v10)), v10);
      v26 += v10;
      v27 += 4 * a5 + 4;
      --v25;
    }

    while (v25);
  }

  return result;
}

id sub_1AF2F09B4(objc_class *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v469 = a1;
  v535 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_class();
  value = a3;
  if ((objc_msgSend_isMemberOfClass_(a3, v6, v5) & 1) == 0)
  {
    objc_msgSend_flush(VFXTransaction, v7, v8);
  }

  if ((atomic_load_explicit(&qword_1EB658880, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EB658880))
  {
    qword_1EB658878 = objc_opt_new();
    __cxa_guard_release(&qword_1EB658880);
  }

  v9 = qword_1EB658878;
  if (a4)
  {
    v9 = a4;
  }

  v494 = v9;
  v529 = 0;
  v528 = 0;
  v530 = 0;
  v526 = 0;
  v525 = 0;
  v527 = 0;
  v523 = 0;
  v522 = 0;
  v524 = 0;
  v519 = 0;
  v520 = 0;
  v521 = 0;
  v472 = objc_msgSend_mesh(a3, v7, v8);
  v12 = objc_msgSend_meshSources(v472, v10, v11);
  v15 = objc_msgSend_modelSourceChannels(value, v13, v14);
  v20 = objc_msgSend_count(v15, v16, v17);
  if (v20)
  {
    v21 = 0;
    v493 = 0;
    while (1)
    {
      if (v21 >= objc_msgSend_count(v12, v18, v19) || v21 >= v20)
      {
        if (v529 == v528)
        {
          goto LABEL_25;
        }

        goto LABEL_27;
      }

      v23 = objc_msgSend_objectAtIndexedSubscript_(v12, v22, v21);
      v26 = objc_msgSend_modelSourceChannels(value, v24, v25);
      v28 = objc_msgSend_objectAtIndexedSubscript_(v26, v27, v21);
      LODWORD(v516) = objc_msgSend_unsignedIntegerValue(v28, v29, v30);
      v33 = objc_msgSend_semantic(v23, v31, v32);
      if (objc_msgSend_isEqualToString_(v33, v34, @"kGeometrySourceSemanticPosition"))
      {
        v37 = &v528;
      }

      else
      {
        v38 = objc_msgSend_semantic(v23, v35, v36);
        if (objc_msgSend_isEqualToString_(v38, v39, @"kGeometrySourceSemanticNormal"))
        {
          v37 = &v525;
        }

        else
        {
          v42 = objc_msgSend_semantic(v23, v40, v41);
          if (objc_msgSend_isEqualToString_(v42, v43, @"kGeometrySourceSemanticTexcoord"))
          {
            v37 = &v522;
          }

          else
          {
            v46 = objc_msgSend_semantic(v23, v44, v45);
            if (!objc_msgSend_isEqualToString_(v46, v47, @"kGeometrySourceSemanticColor"))
            {
              goto LABEL_19;
            }

            v37 = &v519;
          }
        }
      }

      sub_1AF121C58(v37, &v516);
LABEL_19:
      if (!(v516 | v493))
      {
        v493 = objc_msgSend_vectorCount(v23, v18, v19);
      }

      ++v21;
    }
  }

  v48 = objc_msgSend_indexOfObjectPassingTest_(v12, v18, &unk_1F24EC098);
  if (v48 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_25:
    v49 = 0;
    goto LABEL_120;
  }

  LODWORD(v516) = v48;
  sub_1AF121C58(&v528, &v516);
  v493 = 0;
LABEL_27:
  v50 = objc_alloc_init(MEMORY[0x1E6974C08]);
  v495 = objc_opt_new();
  v52 = objc_msgSend_modelSourcesForSemantic_(value, v51, @"kGeometrySourceSemanticPosition");
  v54 = objc_msgSend_objectAtIndexedSubscript_(v52, v53, 0);
  v491 = objc_msgSend_vectorCount(v54, v55, v56);
  v516 = 0;
  v517 = 0;
  v518 = 0;
  *&v513[8] = 0;
  v514 = 0;
  v515 = 0;
  v59 = objc_msgSend_meshElements(v472, v57, v58);
  v61 = objc_msgSend_objectAtIndexedSubscript_(v59, v60, 0);
  *v513 = objc_msgSend_indicesChannelCount(v61, v62, v63);
  v66 = objc_msgSend_meshElements(v472, v64, v65);
  v67 = sub_1AF2F0298(v66, v493, &v516, &v513[4], v513);
  v71 = objc_msgSend_count(v67, v68, v69);
  if (v71)
  {
    v491 = v493 + (((v514 - *&v513[4]) >> 2) / (*v513 + 1));
    v492 = ((v514 - *&v513[4]) >> 2) / (*v513 + 1);
  }

  else
  {
    LODWORD(v492) = 0;
  }

  v511 = 0u;
  v512 = 0u;
  v509 = 0u;
  v510 = 0u;
  v74 = objc_msgSend_countByEnumeratingWithState_objects_count_(v52, v70, &v509, v534, 16);
  v496 = v71;
  v470 = v67;
  if (!v74)
  {
    v76 = 0;
    goto LABEL_46;
  }

  obj = v52;
  v75 = 0;
  v76 = 0;
  v77 = *MEMORY[0x1E6974B28];
  v487 = *v510;
  v482 = *v513;
  do
  {
    for (i = 0; i != v74; ++i)
    {
      if (*v510 != v487)
      {
        objc_enumerationMutation(obj);
      }

      v79 = *(*(&v509 + 1) + 8 * i);
      v80 = v77;
      if (v75)
      {
        v80 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v72, @"blendShape%d", v75, v469);
      }

      v81 = objc_msgSend_attributes(v50, v72, v73);
      v83 = objc_msgSend_objectAtIndexedSubscript_(v81, v82, v76);
      objc_msgSend_setName_(v83, v84, v80);
      v87 = objc_msgSend_attributes(v50, v85, v86);
      v89 = objc_msgSend_objectAtIndexedSubscript_(v87, v88, v76);
      objc_msgSend_setFormat_(v89, v90, 786435);
      v93 = objc_msgSend_attributes(v50, v91, v92);
      v95 = objc_msgSend_objectAtIndexedSubscript_(v93, v94, v76);
      objc_msgSend_setBufferIndex_(v95, v96, v76);
      if (v496)
      {
        v99 = objc_msgSend_newBuffer_type_(v494, v97, 12 * v491, 1);
        v100 = *(v528 + v75);
        v103 = objc_msgSend_map(v99, v101, v102);
        v106 = objc_msgSend_bytes(v103, v104, v105);
        sub_1AF2F084C(v79, v100, &v516, &v513[4], v482, v493, v492, v106);
        v109 = objc_msgSend_attributes(v50, v107, v108);
        v111 = objc_msgSend_objectAtIndexedSubscript_(v109, v110, v76);
        objc_msgSend_setOffset_(v111, v112, 0);
        v115 = objc_msgSend_layouts(v50, v113, v114);
        v117 = objc_msgSend_objectAtIndexedSubscript_(v115, v116, v76);
        objc_msgSend_setStride_(v117, v118, 12);
      }

      else
      {
        if (objc_msgSend_vectorCount(v79, v97, v98) != v491)
        {
          continue;
        }

        v120 = objc_msgSend_dataOffset(v79, v72, v73);
        v123 = objc_msgSend_attributes(v50, v121, v122);
        v125 = objc_msgSend_objectAtIndexedSubscript_(v123, v124, v76);
        objc_msgSend_setOffset_(v125, v126, v120);
        v129 = objc_msgSend_dataStride(v79, v127, v128);
        v132 = objc_msgSend_layouts(v50, v130, v131);
        v134 = objc_msgSend_objectAtIndexedSubscript_(v132, v133, v76);
        objc_msgSend_setStride_(v134, v135, v129);
        v138 = objc_msgSend_data(v79, v136, v137);
        v99 = objc_msgSend_newBufferWithData_type_(v494, v139, v138, 1);
      }

      objc_msgSend_addObject_(v495, v119, v99);

      ++v76;
      v75 = (v75 + 1);
    }

    v74 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v72, &v509, v534, 16);
  }

  while (v74);
LABEL_46:
  v140 = objc_msgSend_modelSourcesForSemantic_(value, v72, @"kGeometrySourceSemanticNormal");
  v507 = 0u;
  v508 = 0u;
  v505 = 0u;
  v506 = 0u;
  v144 = objc_msgSend_countByEnumeratingWithState_objects_count_(v140, v141, &v505, v533, 16);
  if (v144)
  {
    obja = v140;
    v145 = 0;
    v488 = *v506;
    v146 = *MEMORY[0x1E6974B18];
    v483 = *v513;
    do
    {
      for (j = 0; j != v144; ++j)
      {
        if (*v506 != v488)
        {
          objc_enumerationMutation(obja);
        }

        v148 = *(*(&v505 + 1) + 8 * j);
        v149 = v146;
        if (v145)
        {
          v149 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v142, @"normal%d", v145);
        }

        v150 = objc_msgSend_attributes(v50, v142, v143);
        v152 = objc_msgSend_objectAtIndexedSubscript_(v150, v151, v76);
        objc_msgSend_setName_(v152, v153, v149);
        v156 = objc_msgSend_attributes(v50, v154, v155);
        v158 = objc_msgSend_objectAtIndexedSubscript_(v156, v157, v76);
        objc_msgSend_setFormat_(v158, v159, 786435);
        v162 = objc_msgSend_attributes(v50, v160, v161);
        v164 = objc_msgSend_objectAtIndexedSubscript_(v162, v163, v76);
        objc_msgSend_setBufferIndex_(v164, v165, v76);
        if (v496)
        {
          v168 = objc_msgSend_newBuffer_type_(v494, v166, 12 * v491, 1);
          v169 = *(v525 + v145);
          v172 = objc_msgSend_map(v168, v170, v171);
          v175 = objc_msgSend_bytes(v172, v173, v174);
          sub_1AF2F084C(v148, v169, &v516, &v513[4], v483, v493, v492, v175);
          v178 = objc_msgSend_attributes(v50, v176, v177);
          v180 = objc_msgSend_objectAtIndexedSubscript_(v178, v179, v76);
          objc_msgSend_setOffset_(v180, v181, 0);
          v184 = objc_msgSend_layouts(v50, v182, v183);
          v186 = objc_msgSend_objectAtIndexedSubscript_(v184, v185, v76);
          objc_msgSend_setStride_(v186, v187, 12);
        }

        else
        {
          if (objc_msgSend_vectorCount(v148, v166, v167) != v491)
          {
            continue;
          }

          v189 = objc_msgSend_dataOffset(v148, v142, v143);
          v192 = objc_msgSend_attributes(v50, v190, v191);
          v194 = objc_msgSend_objectAtIndexedSubscript_(v192, v193, v76);
          objc_msgSend_setOffset_(v194, v195, v189);
          v198 = objc_msgSend_dataStride(v148, v196, v197);
          v201 = objc_msgSend_layouts(v50, v199, v200);
          v203 = objc_msgSend_objectAtIndexedSubscript_(v201, v202, v76);
          objc_msgSend_setStride_(v203, v204, v198);
          v207 = objc_msgSend_data(v148, v205, v206);
          v168 = objc_msgSend_newBufferWithData_type_(v494, v208, v207, 1);
        }

        objc_msgSend_addObject_(v495, v188, v168);

        ++v76;
        v145 = (v145 + 1);
      }

      v144 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v142, &v505, v533, 16);
    }

    while (v144);
  }

  if (objc_msgSend_firstMaterial(value, v142, v143) && ((v211 = objc_msgSend_firstMaterial(value, v209, v210), v214 = objc_msgSend_multiply(v211, v212, v213), objc_msgSend_contents(v214, v215, v216), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (v217 = objc_msgSend_firstMaterial(value, v209, v210), v220 = objc_msgSend_multiply(v217, v218, v219), objc_msgSend_contents(v220, v221, v222), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)))
  {
    Material = objc_msgSend_firstMaterial(value, v209, v210);
    v226 = objc_msgSend_multiply(Material, v224, v225);
    v485 = objc_msgSend_mappingChannel(v226, v227, v228);
  }

  else
  {
    v485 = -1;
  }

  if (objc_msgSend_firstMaterial(value, v209, v210) && ((v231 = objc_msgSend_firstMaterial(value, v229, v230), v234 = objc_msgSend_selfIllumination(v231, v232, v233), objc_msgSend_contents(v234, v235, v236), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (v238 = objc_msgSend_firstMaterial(value, v229, v237), v241 = objc_msgSend_selfIllumination(v238, v239, v240), objc_msgSend_contents(v241, v242, v243), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)))
  {
    v244 = objc_msgSend_firstMaterial(value, v229, v237);
    v247 = objc_msgSend_selfIllumination(v244, v245, v246);
    v484 = objc_msgSend_mappingChannel(v247, v248, v249);
  }

  else
  {
    v484 = -1;
  }

  v250 = objc_msgSend_modelSourcesForSemantic_(value, v229, @"kGeometrySourceSemanticTexcoord");
  v503 = 0u;
  v504 = 0u;
  v501 = 0u;
  v502 = 0u;
  v489 = objc_msgSend_countByEnumeratingWithState_objects_count_(v250, v251, &v501, v532, 16);
  if (!v489)
  {
    v255 = v76;
    goto LABEL_96;
  }

  v474 = v250;
  v254 = 0;
  objb = *v502;
  v478 = *MEMORY[0x1E6974B38];
  v477 = *MEMORY[0x1E6974AD8];
  v476 = *MEMORY[0x1E6974B10];
  v475 = *v513;
  v255 = v76;
  while (2)
  {
    v256 = 0;
    while (2)
    {
      if (*v502 != objb)
      {
        objc_enumerationMutation(v474);
      }

      v257 = *(*(&v501 + 1) + 8 * v256);
      v258 = v478;
      if (v254)
      {
        v258 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v252, @"textureCoordinate%d", v254);
      }

      v259 = v477;
      if (v485 != v254)
      {
        v259 = v258;
      }

      if (v484 == v254)
      {
        v260 = v476;
      }

      else
      {
        v260 = v259;
      }

      v261 = objc_msgSend_attributes(v50, v252, v253);
      v263 = objc_msgSend_objectAtIndexedSubscript_(v261, v262, v255);
      objc_msgSend_setName_(v263, v264, v260);
      v267 = objc_msgSend_attributes(v50, v265, v266);
      v269 = objc_msgSend_objectAtIndexedSubscript_(v267, v268, v255);
      objc_msgSend_setFormat_(v269, v270, 786434);
      v273 = objc_msgSend_attributes(v50, v271, v272);
      v275 = objc_msgSend_objectAtIndexedSubscript_(v273, v274, v255);
      objc_msgSend_setBufferIndex_(v275, v276, v255);
      if (v496)
      {
        v279 = objc_msgSend_newBuffer_type_(v494, v277, 8 * v491, 1);
        v282 = v279;
        if (v523 == v522)
        {
          v283 = 0;
        }

        else
        {
          v283 = *(v522 + v254);
        }

        v309 = objc_msgSend_map(v279, v280, v281);
        v312 = objc_msgSend_bytes(v309, v310, v311);
        sub_1AF2F084C(v257, v283, &v516, &v513[4], v475, v493, v492, v312);
        v315 = objc_msgSend_attributes(v50, v313, v314);
        v317 = objc_msgSend_objectAtIndexedSubscript_(v315, v316, v255);
        objc_msgSend_setOffset_(v317, v318, 0);
        v321 = objc_msgSend_layouts(v50, v319, v320);
        v323 = objc_msgSend_objectAtIndexedSubscript_(v321, v322, v255);
        objc_msgSend_setStride_(v323, v324, 8);
        v306 = objc_msgSend_map(v282, v325, v326);
LABEL_89:
        if (objc_msgSend_bytes(v306, v307, v308))
        {
          v329 = objc_msgSend_attributes(v50, v327, v328);
          v331 = objc_msgSend_objectAtIndexedSubscript_(v329, v330, v255);
          v334 = objc_msgSend_format(v331, v332, v333);
          v337 = objc_msgSend_map(v282, v335, v336);
          v340 = objc_msgSend_bytes(v337, v338, v339);
          v343 = objc_msgSend_offset(v331, v341, v342);
          v346 = objc_msgSend_layouts(v50, v344, v345);
          v349 = objc_msgSend_bufferIndex(v331, v347, v348);
          v351 = objc_msgSend_objectAtIndexedSubscript_(v346, v350, v349);
          v354 = objc_msgSend_stride(v351, v352, v353);
          sub_1AF2F07B4(v334, v340, v343, v354, v491);
        }

        objc_msgSend_addObject_(v495, v327, v282);

        ++v255;
        v254 = (v254 + 1);
      }

      else if (objc_msgSend_vectorCount(v257, v277, v278) == v491)
      {
        v284 = objc_msgSend_dataOffset(v257, v252, v253);
        v287 = objc_msgSend_attributes(v50, v285, v286);
        v289 = objc_msgSend_objectAtIndexedSubscript_(v287, v288, v255);
        objc_msgSend_setOffset_(v289, v290, v284);
        v293 = objc_msgSend_dataStride(v257, v291, v292);
        v296 = objc_msgSend_layouts(v50, v294, v295);
        v298 = objc_msgSend_objectAtIndexedSubscript_(v296, v297, v255);
        objc_msgSend_setStride_(v298, v299, v293);
        v302 = objc_msgSend_data(v257, v300, v301);
        v282 = objc_msgSend_newBufferWithData_type_(v494, v303, v302, 1);
        v306 = objc_msgSend_map(v282, v304, v305);
        goto LABEL_89;
      }

      if (v489 != ++v256)
      {
        continue;
      }

      break;
    }

    v489 = objc_msgSend_countByEnumeratingWithState_objects_count_(v474, v252, &v501, v532, 16);
    if (v489)
    {
      continue;
    }

    break;
  }

LABEL_96:
  v499 = 0u;
  v500 = 0u;
  v497 = 0u;
  v498 = 0u;
  v486 = objc_msgSend_modelSourcesForSemantic_(value, v252, @"kGeometrySourceSemanticColor");
  v358 = objc_msgSend_countByEnumeratingWithState_objects_count_(v486, v355, &v497, v531, 16);
  if (v358)
  {
    LODWORD(v359) = 0;
    v360 = *v498;
    v361 = *MEMORY[0x1E6974AF8];
    v490 = *v513;
    LODWORD(v362) = v255;
    do
    {
      v363 = 0;
      v359 = v359;
      v362 = v362;
      do
      {
        if (*v498 != v360)
        {
          objc_enumerationMutation(v486);
        }

        v364 = *(*(&v497 + 1) + 8 * v363);
        v365 = v361;
        if (v359)
        {
          v365 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v356, @"color%d", v359);
        }

        v366 = objc_msgSend_attributes(v50, v356, v357);
        v368 = objc_msgSend_objectAtIndexedSubscript_(v366, v367, v362);
        objc_msgSend_setName_(v368, v369, v365);
        v372 = objc_msgSend_componentsPerVector(v364, v370, v371);
        v375 = objc_msgSend_attributes(v50, v373, v374);
        v377 = objc_msgSend_objectAtIndexedSubscript_(v375, v376, v362);
        objc_msgSend_setFormat_(v377, v378, v372 | 0xC0000);
        v381 = objc_msgSend_attributes(v50, v379, v380);
        v383 = objc_msgSend_objectAtIndexedSubscript_(v381, v382, v362);
        objc_msgSend_setBufferIndex_(v383, v384, v362);
        if (v496)
        {
          v387 = objc_msgSend_dataStride(v364, v385, v386);
          v389 = objc_msgSend_newBuffer_type_(v494, v388, v387 * v491, 1);
          v390 = *(v519 + v359);
          v393 = objc_msgSend_map(v389, v391, v392);
          v396 = objc_msgSend_bytes(v393, v394, v395);
          sub_1AF2F084C(v364, v390, &v516, &v513[4], v490, v493, v492, v396);
          v399 = objc_msgSend_attributes(v50, v397, v398);
          v401 = objc_msgSend_objectAtIndexedSubscript_(v399, v400, v362);
          objc_msgSend_setOffset_(v401, v402, 0);
          v405 = objc_msgSend_dataStride(v364, v403, v404);
          v408 = objc_msgSend_layouts(v50, v406, v407);
          v410 = objc_msgSend_objectAtIndexedSubscript_(v408, v409, v362);
          objc_msgSend_setStride_(v410, v411, v405);
        }

        else
        {
          v413 = objc_msgSend_dataOffset(v364, v385, v386);
          v416 = objc_msgSend_attributes(v50, v414, v415);
          v418 = objc_msgSend_objectAtIndexedSubscript_(v416, v417, v362);
          objc_msgSend_setOffset_(v418, v419, v413);
          v422 = objc_msgSend_dataStride(v364, v420, v421);
          v425 = objc_msgSend_layouts(v50, v423, v424);
          v427 = objc_msgSend_objectAtIndexedSubscript_(v425, v426, v362);
          objc_msgSend_setStride_(v427, v428, v422);
          v431 = objc_msgSend_data(v364, v429, v430);
          v389 = objc_msgSend_newBufferWithData_type_(v494, v432, v431, 1);
        }

        objc_msgSend_addObject_(v495, v412, v389);

        ++v362;
        ++v359;
        ++v363;
      }

      while (v358 != v363);
      v358 = objc_msgSend_countByEnumeratingWithState_objects_count_(v486, v356, &v497, v531, 16);
    }

    while (v358);
  }

  v517 = v516;
  v514 = *&v513[4];
  v433 = objc_opt_new();
  v436 = objc_msgSend_meshElementCount(v472, v434, v435);
  v439 = objc_msgSend_materials(value, v437, v438);
  v442 = objc_msgSend_count(v439, v440, v441);
  if (v436)
  {
    v444 = v442;
    for (k = 0; k != v436; ++k)
    {
      v447 = objc_msgSend_meshElementAtIndex_(v472, v443, k);
      v448 = MEMORY[0x1E6974BC8];
      if (v496)
      {
        v449 = objc_msgSend_objectAtIndexedSubscript_(v470, v446, k);
        v451 = objc_msgSend_submeshWithUniquedIndexData_andVFXModelElement_bufferAllocator_(v448, v450, v449, v447, a4);
      }

      else
      {
        v451 = objc_msgSend_submeshWithVFXModelElement_bufferAllocator_positionSourceChannel_(MEMORY[0x1E6974BC8], v446, v447, a4, *v528);
      }

      v453 = v451;
      objc_msgSend_addObject_(v433, v452, v451);
      if (v444)
      {
        v455 = objc_msgSend_materials(value, v443, v454);
        v457 = objc_msgSend_objectAtIndexedSubscript_(v455, v456, k % v444);
        v459 = objc_msgSend_materialWithVFXMaterial_(MEMORY[0x1E6974B68], v458, v457);
        objc_msgSend_setMaterial_(v453, v460, v459);
      }
    }
  }

  v461 = [v469 alloc];
  v463 = objc_msgSend_initWithVertexBuffers_vertexCount_descriptor_submeshes_(v461, v462, v495, v491, v50, v433);

  v466 = objc_msgSend_name(value, v464, v465);
  objc_msgSend_setName_(v463, v467, v466);
  objc_setAssociatedObject(v463, @"VFXMDLAssociatedObject", value, 0x301);
  v49 = v463;
  if (*&v513[4])
  {
    v514 = *&v513[4];
    operator delete(*&v513[4]);
  }

  if (v516)
  {
    v517 = v516;
    operator delete(v516);
  }

LABEL_120:
  if (v519)
  {
    v520 = v519;
    operator delete(v519);
  }

  if (v522)
  {
    v523 = v522;
    operator delete(v522);
  }

  if (v525)
  {
    v526 = v525;
    operator delete(v525);
  }

  if (v528)
  {
    v529 = v528;
    operator delete(v528);
  }

  return v49;
}

uint64_t sub_1AF2F1B44(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = objc_msgSend_semantic(a2, a2, a3);

  return objc_msgSend_isEqualToString_(v3, v4, @"kGeometrySourceSemanticPosition");
}

id sub_1AF2F1B7C(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_newSubmeshWithVFXModelElement_bufferAllocator_(a1, a2, a3, 0);

  return v3;
}

id sub_1AF2F1BA8(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_newSubmeshWithVFXModelElement_bufferAllocator_(a1, a2, a3);

  return v3;
}

id sub_1AF2F1BD0(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_newSubmeshWithVFXModelElement_bufferAllocator_positionSourceChannel_(a1, a2, a3);

  return v3;
}

id sub_1AF2F1BF8(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_newSubmeshWithUniquedIndexData_andVFXModelElement_bufferAllocator_(a1, a2, a3);

  return v3;
}

uint64_t sub_1AF2F1C20(objc_class *a1, const char *a2, void *a3, unint64_t a4, int a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, void *a11, unint64_t a12, uint64_t a13)
{
  v20 = a12;
  v21 = objc_msgSend_bytes(a3, a2, a3);
  if (a6 >= 2 && a5)
  {
    v24 = v21;
    v25 = objc_msgSend_dataWithLength_(MEMORY[0x1E695DF88], v22, a4 / a6);
    v28 = objc_msgSend_mutableBytes(v25, v26, v27);
    if (a8 * a6 <= a4)
    {
      v30 = 0;
      do
      {
        if (a8 > 3)
        {
          if (a8 == 4)
          {
            *(v28 + 4 * v30) = *(v24 + 4 * a7);
          }

          else if (a8 == 8)
          {
            *(v28 + 8 * v30) = *(v24 + 8 * a7);
          }
        }

        else if (a8 == 1)
        {
          *(v28 + v30) = *(v24 + a7);
        }

        else if (a8 == 2)
        {
          *(v28 + 2 * v30) = *(v24 + 2 * a7);
        }

        ++v30;
        a7 += a6;
      }

      while (v30 < a4 / (a8 * a6));
    }

    v31 = objc_msgSend_newBufferWithData_type_(a11, v29, v25, 2);
  }

  else
  {
    v32 = objc_msgSend_length(a3, v22, v23);
    v34 = objc_msgSend_subdataWithRange_(a3, v33, v32 / a6 * a7);
    v31 = objc_msgSend_newBufferWithData_type_(a11, v35, v34, 2);
  }

  v36 = v31;
  v39 = [a1 alloc];
  if (!a12)
  {
    v20 = objc_msgSend_length(v36, v37, v38) / a8;
  }

  v40 = objc_msgSend_initWithName_indexBuffer_indexCount_indexType_geometryType_material_topology_(v39, v37, &stru_1F2575650, v36, v20, a9, a10, 0, a13);

  return v40;
}

uint64_t sub_1AF2F1DD4(objc_class *a1, const char *a2, uint64_t a3, void *a4, void *a5)
{
  v9 = objc_msgSend_bytesPerIndex(a4, a2, a3);
  v13 = objc_msgSend_primitiveCount(a4, v10, v11);
  if (qword_1EB658890 != -1)
  {
    sub_1AFDF6920();
  }

  if (a5)
  {
    v14 = objc_msgSend_newBufferWithData_type_(a5, v12, a3, 2);
  }

  else
  {
    v14 = objc_msgSend_newBufferWithData_type_(qword_1EB658888, v12, a3, 2);
  }

  v17 = v14;
  v18 = objc_msgSend_bytesPerIndex(a4, v15, v16);
  v21 = 32;
  if (v18 == 2)
  {
    v21 = 16;
  }

  if (v18 == 1)
  {
    v22 = 8;
  }

  else
  {
    v22 = v21;
  }

  if (objc_msgSend_primitiveType(a4, v19, v20) == 1)
  {
    v25 = objc_msgSend_primitiveCount(a4, v23, v24);
    v26 = [a1 alloc];
    v28 = objc_msgSend_initWithName_indexBuffer_indexCount_indexType_geometryType_material_topology_(v26, v27, &stru_1F2575650, v17, v25 + 2, v22, 3, 0, 0);
LABEL_32:
    v53 = v28;
    goto LABEL_33;
  }

  if (objc_msgSend_primitiveType(a4, v23, v24) != 4)
  {
    v54 = objc_msgSend_primitiveType(a4, v29, v30);
    if (v54 > 3)
    {
      v58 = 0;
      v57 = 1;
    }

    else
    {
      v57 = qword_1AFE47A10[v54];
      v58 = qword_1AFE47A30[v54];
    }

    v59 = objc_msgSend_primitiveCount(a4, v55, v56) * v57;
    v60 = [a1 alloc];
    v28 = objc_msgSend_initWithName_indexBuffer_indexCount_indexType_geometryType_material_topology_(v60, v61, &stru_1F2575650, v17, v59, v22, v58, 0, 0);
    goto LABEL_32;
  }

  v31 = objc_msgSend_data(a4, v29, v30);
  v34 = objc_msgSend_bytes(v31, v32, v33);
  v36 = objc_msgSend_dataWithLength_(MEMORY[0x1E695DF88], v35, 8 * v13);
  v39 = objc_msgSend_mutableBytes(v36, v37, v38);
  if (v13 >= 1)
  {
    for (i = 0; v13 != i; ++i)
    {
      if (v9 > 3)
      {
        if (v9 == 4)
        {
          LODWORD(v41) = *(v34 + 4 * i);
          goto LABEL_25;
        }

        if (v9 == 8)
        {
          v41 = *(v34 + 8 * i);
          goto LABEL_25;
        }
      }

      else
      {
        if (v9 == 1)
        {
          LOBYTE(v41) = *(v34 + i);
          goto LABEL_25;
        }

        if (v9 == 2)
        {
          LOWORD(v41) = *(v34 + 2 * i);
LABEL_25:
          *(v39 + i) = v41;
        }
      }
    }
  }

  v42 = objc_alloc_init(MEMORY[0x1E6974BD0]);
  v43 = objc_alloc(MEMORY[0x1E6974B88]);
  v45 = objc_msgSend_initWithType_data_(v43, v44, 2, v36);
  objc_msgSend_setFaceCount_(v42, v46, v13);
  objc_msgSend_setFaceTopology_(v42, v47, v45);
  v48 = [a1 alloc];
  v51 = objc_msgSend_length(v17, v49, v50);
  v53 = objc_msgSend_initWithName_indexBuffer_indexCount_indexType_geometryType_material_topology_(v48, v52, &stru_1F2575650, v17, v51 / v9, v22, 5, 0, v42);

  v17 = v45;
LABEL_33:

  return v53;
}

uint64_t sub_1AF2F207C()
{
  result = objc_opt_new();
  qword_1EB658888 = result;
  return result;
}

uint64_t sub_1AF2F20A4(void *a1, const char *a2, void *a3, uint64_t a4, uint64_t a5)
{
  hasInterleavedIndicesChannels = objc_msgSend_hasInterleavedIndicesChannels(a3, a2, a3);
  v82 = objc_msgSend_indicesChannelCount(a3, v9, v10);
  v13 = objc_msgSend_bytesPerIndex(a3, v11, v12);
  v16 = objc_msgSend_primitiveCount(a3, v14, v15);
  v19 = objc_msgSend_data(a3, v17, v18);
  v24 = objc_msgSend_length(v19, v20, v21);
  if ((atomic_load_explicit(&qword_1EB6588A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EB6588A0))
  {
    qword_1EB658898 = objc_opt_new();
    __cxa_guard_release(&qword_1EB6588A0);
  }

  if (a4)
  {
    v25 = a4;
  }

  else
  {
    v25 = qword_1EB658898;
  }

  v26 = objc_msgSend_bytesPerIndex(a3, v22, v23);
  v29 = 32;
  if (v26 == 2)
  {
    v29 = 16;
  }

  if (v26 == 1)
  {
    v30 = 8;
  }

  else
  {
    v30 = v29;
  }

  if (objc_msgSend_primitiveType(a3, v27, v28) == 1)
  {
    v33 = objc_msgSend_primitiveCount(a3, v31, v32) + 2;
    v36 = objc_msgSend_data(a3, v34, v35);
    return objc_msgSend_newSubmeshWithGeometryData_indexBufferLength_interleaved_channelCount_channelIdx_bytesPerIndex_indexType_geometryType_allocator_indexCount_topology_(a1, v37, v36, v24, hasInterleavedIndicesChannels, v82, a5, v13, v30, 3, v25, v33, 0);
  }

  if (objc_msgSend_primitiveType(a3, v31, v32) == 4)
  {
    v81 = a5;
    v41 = objc_msgSend_data(a3, v39, v40);
    v44 = objc_msgSend_bytes(v41, v42, v43);
    v46 = objc_msgSend_dataWithLength_(MEMORY[0x1E695DF88], v45, v16);
    v49 = objc_msgSend_mutableBytes(v46, v47, v48);
    if (v16 >= 1)
    {
      for (i = 0; v16 != i; ++i)
      {
        if (v13 > 3)
        {
          if (v13 == 4)
          {
            LODWORD(v53) = *(v44 + 4 * i);
            goto LABEL_24;
          }

          if (v13 == 8)
          {
            v53 = *(v44 + 8 * i);
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 == 1)
          {
            LOBYTE(v53) = *(v44 + i);
            goto LABEL_24;
          }

          if (v13 == 2)
          {
            LOWORD(v53) = *(v44 + 2 * i);
LABEL_24:
            *(v49 + i) = v53;
          }
        }
      }
    }

    v54 = objc_msgSend_data(a3, v50, v51);
    v57 = objc_msgSend_data(a3, v55, v56);
    v60 = objc_msgSend_length(v57, v58, v59);
    v62 = objc_msgSend_subdataWithRange_(v54, v61, v16 * v13, v60 - v16 * v13);
    v63 = objc_alloc_init(MEMORY[0x1E6974BD0]);
    v64 = objc_alloc(MEMORY[0x1E6974B88]);
    v66 = objc_msgSend_initWithType_data_(v64, v65, 2, v46);
    objc_msgSend_setFaceCount_(v63, v67, v16);
    objc_msgSend_setFaceTopology_(v63, v68, v66);
    v70 = objc_msgSend_newSubmeshWithGeometryData_indexBufferLength_interleaved_channelCount_channelIdx_bytesPerIndex_indexType_geometryType_allocator_indexCount_topology_(a1, v69, v62, v24, hasInterleavedIndicesChannels, v82, v81, v13, v30, 5, v25, 0, v63);

    return v70;
  }

  else
  {
    v71 = objc_msgSend_primitiveType(a3, v39, v40);
    if (v71 > 3)
    {
      v75 = 0;
      v74 = 1;
    }

    else
    {
      v74 = qword_1AFE47A10[v71];
      v75 = qword_1AFE47A30[v71];
    }

    v76 = objc_msgSend_primitiveCount(a3, v72, v73) * v74;
    v79 = objc_msgSend_data(a3, v77, v78);
    return objc_msgSend_newSubmeshWithGeometryData_indexBufferLength_interleaved_channelCount_channelIdx_bytesPerIndex_indexType_geometryType_allocator_indexCount_topology_(a1, v80, v79, v24, hasInterleavedIndicesChannels, v82, a5, v13, v30, v75, v25, v76, 0);
  }
}

id sub_1AF2F23C0(objc_class *a1, uint64_t a2, void *a3)
{
  v5 = objc_opt_new();
  v6 = [a1 alloc];
  v9 = objc_msgSend_name(a3, v7, v8);
  v11 = objc_msgSend_initWithName_scatteringFunction_(v6, v10, v9, v5);

  v14 = objc_msgSend_name(a3, v12, v13);
  objc_msgSend_setName_(v11, v15, v14);
  objc_setAssociatedObject(v11, @"VFXMDLAssociatedObject", a3, 0x301);
  objc_setAssociatedObject(a3, @"VFXMDLAssociatedObject", v11, 0);
  v18 = objc_msgSend_emission(a3, v16, v17);
  sub_1AF2F25D8(v11, @"emission", v18, 13);
  v21 = objc_msgSend_diffuse(a3, v19, v20);
  sub_1AF2F25D8(v11, @"baseColor", v21, 0);
  v24 = objc_msgSend_specular(a3, v22, v23);
  sub_1AF2F25D8(v11, @"specular", v24, 3);
  v27 = objc_msgSend_reflective(a3, v25, v26);
  sub_1AF2F25D8(v11, @"reflective", v27, 32769);
  v30 = objc_msgSend_transparent(a3, v28, v29);
  sub_1AF2F25D8(v11, @"opacity", v30, 15);
  v33 = objc_msgSend_metalness(a3, v31, v32);
  sub_1AF2F25D8(v11, @"metallic", v33, 2);
  v36 = objc_msgSend_roughness(a3, v34, v35);
  sub_1AF2F25D8(v11, @"roughness", v36, 6);
  v39 = objc_msgSend_ambientOcclusion(a3, v37, v38);
  sub_1AF2F25D8(v11, @"ambientOcclusion", v39, 22);
  v42 = objc_msgSend_displacement(a3, v40, v41);
  sub_1AF2F25D8(v11, @"displacement", v42, 20);
  v45 = objc_msgSend_normal(a3, v43, v44);
  sub_1AF2F25D8(v11, @"normal", v45, 19);
  if (objc_msgSend_isDoubleSided(a3, v46, v47))
  {
    objc_msgSend_setMaterialFace_(v11, v48, 2);
  }

  return v11;
}

void sub_1AF2F25D8(void *a1, const char *a2, void *a3, uint64_t a4)
{
  v9 = objc_msgSend_propertyNamed_(a1, a2, a2);
  v90 = v9;
  if (!v9)
  {
    v10 = objc_alloc(MEMORY[0x1E6974B70]);
    v90 = objc_msgSend_initWithName_semantic_(v10, v11, a2, a4);
  }

  objc_msgSend_contents(a3, v7, v8);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v15 = objc_msgSend_contents(a3, v13, v14);
  if (isKindOfClass)
  {
    objc_msgSend_vfx_colorComponentsForModelIO(v15, v16, v17);
    v88 = v19;
    v19.i32[0] = v19.i32[3];
    if (v19.f32[3] == 1.0)
    {
      objc_msgSend_setType_(v90, v18, 7, *v19.i64);
      objc_msgSend_intensity(a3, v20, v21);
      objc_msgSend_setFloat3Value_(v90, v23, v24, *vmulq_n_f32(v88, v22).i64);
    }

    else
    {
      objc_msgSend_setType_(v90, v18, 8, *v19.i64);
      objc_msgSend_intensity(a3, v55, v56);
      objc_msgSend_setFloat4Value_(v90, v58, v59, *vmulq_n_f32(v88, v57).i64);
    }
  }

  else
  {
    objc_opt_class();
    v25 = objc_opt_isKindOfClass();
    v28 = objc_msgSend_contents(a3, v26, v27);
    v30 = v28;
    if (v25)
    {
      if (v28)
      {
        objc_msgSend_setType_(v90, v29, 5);
        objc_msgSend_intensity(a3, v31, v32);
        v34 = v33;
        objc_msgSend_floatValue(v30, v35, v36);
        *&v38 = v34 * v37;
        objc_msgSend_setFloatValue_(v90, v39, v40, v38);
      }
    }

    else
    {
      objc_opt_class();
      v41 = objc_opt_isKindOfClass();
      v44 = objc_msgSend_contents(a3, v42, v43);
      if (v41)
      {
        v47 = objc_msgSend_pathExtension(v44, v45, v46);
        if (!objc_msgSend_isEqualToString_(v47, v48, @"usdz"))
        {
          objc_msgSend_setType_(v90, v49, 2);
          v53 = objc_msgSend_contents(a3, v51, v52);
          objc_msgSend_setURLValue_(v90, v54, v53);
          goto LABEL_18;
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_msgSend_setType_(v90, v49, 1);
          v62 = objc_msgSend_contents(a3, v60, v61);
          objc_msgSend_setStringValue_(v90, v63, v62);
          goto LABEL_18;
        }
      }

      CFXImageRef = objc_msgSend_getCFXImageRef(a3, v49, v50);
      if (CFXImageRef)
      {
        v65 = sub_1AF2ECED0(CFXImageRef, 0);
        objc_msgSend_contentsTransform(a3, v66, v67);
        v91[0] = v68;
        v91[1] = v69;
        v91[2] = v70;
        v91[3] = v71;
        if (v65)
        {
          v72 = sub_1AF2F8B9C(v91);
          v87 = v73;
          v89 = v72;
          v85 = v75;
          v86 = v74;
          v76 = objc_alloc(MEMORY[0x1E6974BE8]);
          v79 = objc_msgSend_initWithMatrix_(v76, v77, v78, v89, v87, v86, v85);
          v80 = objc_alloc_init(MEMORY[0x1E6974BE0]);
          objc_msgSend_setTransform_(v80, v81, v79);
          objc_msgSend_setTexture_(v80, v82, v65);
          objc_msgSend_setType_(v90, v83, 3);
          objc_msgSend_setTextureSamplerValue_(v90, v84, v80);
        }
      }
    }
  }

LABEL_18:
  if (!v9 && v90)
  {
  }
}

id sub_1AF2F28D0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = objc_alloc_init(MEMORY[0x1E6974BA8]);
  objc_setAssociatedObject(v4, @"VFXMDLAssociatedObject", a3, 0x301);
  objc_msgSend_setColorSpace_(v4, v5, *MEMORY[0x1E695F1C0]);
  objc_msgSend_color(a3, v6, v7);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v11 = objc_msgSend_color(a3, v9, v10);
  v13 = v11;
  if (isKindOfClass)
  {
    v13 = objc_msgSend_CGColor(v11, v12, v11);
  }

  objc_msgSend_setColor_(v4, v12, v13);
  objc_msgSend_setAttenuationStartDistance_(v4, v14, v15, 0.0);
  objc_msgSend_attenuationDistance(a3, v16, v17);
  objc_msgSend_setAttenuationEndDistance_(v4, v18, v19);
  LODWORD(v20) = 2.0;
  objc_msgSend_setAttenuationFalloffExponent_(v4, v21, v22, v20);
  objc_msgSend_spotInnerAngle(a3, v23, v24);
  objc_msgSend_setInnerConeAngle_(v4, v25, v26);
  objc_msgSend_spotOuterAngle(a3, v27, v28);
  objc_msgSend_setOuterConeAngle_(v4, v29, v30);
  if (objc_msgSend_type(a3, v31, v32))
  {
    if (objc_msgSend_type(a3, v33, v34) == 3)
    {
      objc_msgSend_setLightType_(v4, v35, 3);
    }

    else if (objc_msgSend_type(a3, v35, v36) == 2)
    {
      objc_msgSend_setLightType_(v4, v37, 2);
    }

    else if (objc_msgSend_type(a3, v37, v38) == 1)
    {
      objc_msgSend_setLightType_(v4, v39, 4);
    }
  }

  else
  {
    objc_msgSend_setLightType_(v4, v33, 1);
  }

  return v4;
}

id sub_1AF2F2A38(objc_class *a1, uint64_t a2, void *a3)
{
  v4 = objc_alloc_init(a1);
  objc_setAssociatedObject(v4, @"VFXMDLAssociatedObject", a3, 0x301);
  objc_msgSend_focusDistance(a3, v5, v6);
  objc_msgSend_setFocusDistance_(v4, v7, v8);
  objc_msgSend_sensorHeight(a3, v9, v10);
  objc_msgSend_setSensorVerticalAperture_(v4, v11, v12);
  objc_msgSend_fieldOfView(a3, v13, v14);
  objc_msgSend_setFieldOfView_(v4, v15, v16);
  objc_msgSend_zNear(a3, v17, v18);
  objc_msgSend_setNearVisibilityDistance_(v4, v19, v20);
  objc_msgSend_zFar(a3, v21, v22);
  objc_msgSend_setFarVisibilityDistance_(v4, v23, v24);
  v27 = objc_msgSend_depthOfField(a3, v25, v26);
  objc_msgSend_fStop(v27, v28, v29);
  objc_msgSend_setFStop_(v4, v30, v31);
  v34 = objc_msgSend_usesOrthographicProjection(a3, v32, v33);
  objc_msgSend_setProjection_(v4, v35, v34);

  return v4;
}

uint64_t sub_1AF2F36F8(void *a1, uint64_t a2, float a3)
{
  v32 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v7 = objc_msgSend_animations(a1, v5, v6);
    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v27, v31, 16);
    if (v9)
    {
      v11 = v9;
      v12 = *v28;
      do
      {
        v13 = 0;
        do
        {
          if (*v28 != v12)
          {
            objc_enumerationMutation(v7);
          }

          sub_1AF2F36F8(*(*(&v27 + 1) + 8 * v13++), v10, a3);
        }

        while (v11 != v13);
        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v27, v31, 16);
      }

      while (v11);
    }
  }

  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    v17 = objc_msgSend_keyPath(a1, v15, v16);
    result = objc_msgSend_isEqualToString_(v17, v18, @"position");
    if (result)
    {
      v21 = objc_msgSend_values(a1, v19, v20);
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = sub_1AF2F8D98;
      v25[3] = &unk_1E7A7EB38;
      v26 = a3;
      v23 = objc_msgSend_VFX_compactMapObjectsUsingBlock_(v21, v22, v25);
      return objc_msgSend_setValues_(a1, v24, v23);
    }
  }

  return result;
}

uint64_t **sub_1AF2F38A8(void *a1, uint64_t *a2, uint64_t **a3)
{
  v68 = a3;
  v69 = a1;
  v88 = *MEMORY[0x1E69E9840];
  v84 = a2;
  v4 = objc_opt_new();
  v7 = objc_msgSend_jointPaths(a2, v5, v6);
  v10 = objc_msgSend_count(v7, v8, v9);
  v11 = v10;
  v12 = v10;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v16 = objc_msgSend_jointRestTransforms(a2, v14, v15, v13);
  v70 = &v66 - 8 * v12;
  if (objc_msgSend_getFloat4x4Array_maxCount_(v16, v17, v70, v12) < v11)
  {
    v20 = MEMORY[0x1E69E9B18];
    v21 = v70;
    do
    {
      v22 = v20[1];
      *v21 = *v20;
      *(v21 + 1) = v22;
      v23 = v20[3];
      *(v21 + 2) = v20[2];
      *(v21 + 3) = v23;
      v21 += 8;
      --v12;
    }

    while (v12);
  }

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v67 = a2;
  v71 = objc_msgSend_jointPaths(a2, v18, v19);
  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v71, v24, &v80, v87, 16);
  if (v25)
  {
    v28 = v25;
    v29 = 0;
    v30 = *v81;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v81 != v30)
        {
          objc_enumerationMutation(v71);
        }

        v32 = *(*(&v80 + 1) + 8 * i);
        v33 = objc_msgSend_rangeOfString_options_(v32, v26, @"/", 4);
        v34 = v32;
        if (v33 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v34 = objc_msgSend_substringFromIndex_(v32, v26, v33 + 1);
        }

        if (v34)
        {
          v35 = objc_opt_new();
          objc_msgSend_setName_(v35, v36, v34);
          if (v35)
          {
            objc_msgSend_setObject_forKeyedSubscript_(v4, v26, v35, v32);
            objc_msgSend_setTransform_(v35, v37, v38, *&v70[8 * v29], *&v70[8 * v29 + 2], *&v70[8 * v29 + 4], *&v70[8 * v29 + 6]);
          }
        }

        ++v29;
      }

      v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v71, v26, &v80, v87, 16);
    }

    while (v28);
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v39 = objc_msgSend_jointPaths(v67, v26, v27);
  v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v40, &v76, v86, 16);
  if (v41)
  {
    v43 = v41;
    v44 = *v77;
    do
    {
      v45 = 0;
      do
      {
        if (*v77 != v44)
        {
          objc_enumerationMutation(v39);
        }

        v46 = *(*(&v76 + 1) + 8 * v45);
        v47 = objc_msgSend_rangeOfString_options_(v46, v42, @"/", 4);
        if (v47)
        {
          v48 = v47 == 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v48 = 1;
        }

        if (!v48)
        {
          v49 = objc_msgSend_substringToIndex_(v46, v42, v47);
          if (v49)
          {
            v50 = v49;
            if (objc_msgSend_valueForKey_(v4, v42, v49))
            {
              v51 = objc_msgSend_objectForKeyedSubscript_(v4, v42, v50);
              v53 = objc_msgSend_objectForKeyedSubscript_(v4, v52, v46);
              objc_msgSend_addChildNode_(v51, v54, v53);
            }
          }
        }

        ++v45;
      }

      while (v43 != v45);
      v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v42, &v76, v86, 16);
      v43 = v55;
    }

    while (v55);
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v42, &v72, v85, 16);
  v58 = v69;
  if (v56)
  {
    v59 = v56;
    v60 = *v73;
    do
    {
      for (j = 0; j != v59; ++j)
      {
        if (*v73 != v60)
        {
          objc_enumerationMutation(v4);
        }

        v62 = objc_msgSend_objectForKeyedSubscript_(v4, v57, *(*(&v72 + 1) + 8 * j));
        if (!objc_msgSend_parentNode(v62, v63, v64))
        {
          objc_msgSend_addChildNode_(v58, v57, v62);
        }
      }

      v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v57, &v72, v85, 16);
    }

    while (v59);
  }

  result = sub_1AF2F872C(v68, &v84);
  *result = v4;
  result[1] = v58;
  return result;
}

VFXMeshSource *sub_1AF2F3D64(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_vertexCount(a1, a2, a3);
  v6 = objc_msgSend_vertexAttributeDataForAttributeNamed_(a1, v5, *MEMORY[0x1E6974B08]);
  v9 = objc_msgSend_dataStart(v6, v7, v8);
  v12 = objc_msgSend_format(v6, v10, v11) & 0xFFF;
  v14 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v13, v9, 4 * v12 * v4);
  return objc_msgSend_meshSourceWithData_semantic_vectorCount_floatComponents_componentsPerVector_bytesPerComponent_dataOffset_dataStride_(VFXMeshSource, v15, v14, @"kGeometrySourceSemanticBoneWeights", v4, 1, v12, 4, 0, 4 * v12);
}

VFXMeshSource *sub_1AF2F3E10(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_vertexCount(a1, a2, a3);
  v6 = objc_msgSend_vertexAttributeDataForAttributeNamed_(a1, v5, *MEMORY[0x1E6974B00]);
  v9 = objc_msgSend_dataStart(v6, v7, v8);
  v12 = objc_msgSend_format(v6, v10, v11) & 0xFFF;
  v14 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v13, v9, 2 * v12 * v4);
  return objc_msgSend_meshSourceWithData_semantic_vectorCount_floatComponents_componentsPerVector_bytesPerComponent_dataOffset_dataStride_(VFXMeshSource, v15, v14, @"kGeometrySourceSemanticBoneIndices", v4, 0, v12, 2, 0, 2 * v12);
}

uint64_t sub_1AF2F405C(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_msgSend_name(a2, a2, a3);
  v8 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v6, v7);
  v11 = objc_msgSend_UUIDString(v8, v9, v10);
  v14 = objc_msgSend_stringWithFormat_(v4, v12, @"AO_%@_%@.png", v5, v11);

  return objc_msgSend_stringByAppendingPathComponent_(v3, v13, v14);
}

void sub_1AF2F40DC(uint64_t a1, const char *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3052000000;
  v32[3] = sub_1AF2F4448;
  v32[4] = sub_1AF2F4458;
  v32[5] = 0;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3052000000;
  v31[3] = sub_1AF2F4448;
  v31[4] = sub_1AF2F4458;
  v31[5] = 0;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3052000000;
  v30[3] = sub_1AF2F4448;
  v30[4] = sub_1AF2F4458;
  v30[5] = 0;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = sub_1AF2F4464;
  v29[3] = &unk_1E7A7EAC8;
  v29[4] = v32;
  v29[5] = v31;
  v29[6] = v30;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v3 = *(a1 + 32);
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, a2, &v25, v33, 16);
  if (v5)
  {
    v8 = *v26;
    v9 = *MEMORY[0x1E6974B10];
    v10 = *MEMORY[0x1E6974AF8];
    v11 = *MEMORY[0x1E6974AD8];
    v12 = 1;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        if (*(a1 + 96) == 1)
        {
          LODWORD(v6) = *(a1 + 88);
          LODWORD(v7) = *(a1 + 92);
          v15 = *(a1 + 40);
          if (*(a1 + 97))
          {
            AmbientOcclusionVertexColorsWithQuality_attenuationFactor_objectsToConsider_vertexAttributeNamed = objc_msgSend_generateAmbientOcclusionVertexColorsWithQuality_attenuationFactor_objectsToConsider_vertexAttributeNamed_(v14, v4, v15, v10, v6, v7);
          }

          else
          {
            AmbientOcclusionVertexColorsWithQuality_attenuationFactor_objectsToConsider_vertexAttributeNamed = objc_msgSend_generateAmbientOcclusionTextureWithQuality_attenuationFactor_objectsToConsider_vertexAttributeNamed_materialPropertyNamed_(v14, v4, v15, v11, @"aoTexture", v6, v7);
          }
        }

        else if (*(a1 + 97))
        {
          AmbientOcclusionVertexColorsWithQuality_attenuationFactor_objectsToConsider_vertexAttributeNamed = objc_msgSend_generateLightMapVertexColorsWithLightsToConsider_objectsToConsider_vertexAttributeNamed_(v14, v4, *(a1 + 48), *(a1 + 40), v10);
        }

        else
        {
          LODWORD(v6) = *(a1 + 88);
          AmbientOcclusionVertexColorsWithQuality_attenuationFactor_objectsToConsider_vertexAttributeNamed = objc_msgSend_generateLightMapTextureWithQuality_lightsToConsider_objectsToConsider_vertexAttributeNamed_materialPropertyNamed_(v14, v4, *(a1 + 48), *(a1 + 40), v9, @"lightmapTexture", v6);
        }

        v12 &= AmbientOcclusionVertexColorsWithQuality_attenuationFactor_objectsToConsider_vertexAttributeNamed;
      }

      v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v25, v33, 16);
    }

    while (v5);
  }

  else
  {
    v12 = 1;
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_1AF2F4490;
  v18[3] = &unk_1E7A7EAF0;
  v23 = v12;
  v17 = *(a1 + 56);
  v24 = *(a1 + 96);
  v18[4] = v17;
  v18[5] = v29;
  v19 = *(a1 + 64);
  v21 = v31;
  v22 = v32;
  v20 = *(a1 + 80);
  dispatch_async(MEMORY[0x1E69E96A0], v18);
  _Block_object_dispose(v30, 8);
  _Block_object_dispose(v31, 8);
  _Block_object_dispose(v32, 8);
}

void sub_1AF2F440C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, ...)
{
  va_start(va, a48);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_1AF2F4464(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    *(*(result[4] + 8) + 40) = a2;
    *(*(result[5] + 8) + 40) = a3;
    *(*(result[6] + 8) + 40) = a4;
  }

  return result;
}

uint64_t sub_1AF2F4490(uint64_t a1, const char *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*(a1 + 88) == 1)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v3 = *(a1 + 32);
    v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, a2, &v15, v19, 16);
    if (v4)
    {
      v6 = v4;
      v7 = *v16;
      v8 = *MEMORY[0x1E6974B10];
      v9 = *MEMORY[0x1E6974AD8];
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          v12 = *(a1 + 40);
          v13 = *(a1 + 48);
          if (*(a1 + 89) == 1)
          {
            objc_msgSend__updateAssociatedVFXNodeWithModelSetter_texturePathProvider_vertexAttributeNamed_materialPropertyNamed_(v11, v5, v12, v13, v9, @"aoTexture");
          }

          else
          {
            objc_msgSend__updateAssociatedVFXNodeWithModelSetter_texturePathProvider_vertexAttributeNamed_materialPropertyNamed_(v11, v5, v12, v13, v8, @"lightmapTexture");
          }

          (*(*(a1 + 56) + 16))();
        }

        v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v15, v19, 16);
      }

      while (v6);
    }
  }

  return (*(*(a1 + 64) + 16))();
}

void sub_1AF2F4D00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AF2F4F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15)
{
  sub_1AF112128(&a11, a12);
  sub_1AF112128(&a14, a15);
  _Unwind_Resume(a1);
}

uint64_t sub_1AF2F4F6C(void *a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend_topology(a1, a2, a3);
  if (result)
  {
    v9 = objc_msgSend_topology(a1, v7, v8);
    if (objc_msgSend_edgeCreases(v9, v10, v11))
    {
      v14 = objc_msgSend_topology(a1, v12, v13);
      if (objc_msgSend_edgeCreaseIndices(v14, v15, v16))
      {
        v17 = objc_msgSend_topology(a1, v12, v13);
        v20 = objc_msgSend_edgeCreaseIndices(v17, v18, v19);
        v23 = objc_msgSend_map(v20, v21, v22);
        v26 = objc_msgSend_bytes(v23, v24, v25);
        v29 = objc_msgSend_topology(a1, v27, v28);
        v32 = objc_msgSend_edgeCreases(v29, v30, v31);
        v35 = objc_msgSend_map(v32, v33, v34);
        v38 = objc_msgSend_bytes(v35, v36, v37);
        v41 = objc_msgSend_topology(a1, v39, v40);
        v44 = objc_msgSend_edgeCreaseCount(v41, v42, v43);
        if (v44 >= 1)
        {
          v45 = v44 & 0x7FFFFFFF;
          v46 = (v26 + 4);
          do
          {
            v87 = *v46 | (*(v46 - 1) << 32);
            v47 = *v38++;
            v88 = &v87;
            *(sub_1AF2F8F4C(a2, &v87, &unk_1AFE22A40, &v88) + 10) = v47;
            v46 += 2;
            --v45;
          }

          while (v45);
        }
      }
    }

    v48 = objc_msgSend_topology(a1, v12, v13);
    result = objc_msgSend_vertexCreases(v48, v49, v50);
    if (result)
    {
      v53 = objc_msgSend_topology(a1, v51, v52);
      result = objc_msgSend_vertexCreaseIndices(v53, v54, v55);
      if (result)
      {
        v58 = objc_msgSend_topology(a1, v56, v57);
        v61 = objc_msgSend_vertexCreaseIndices(v58, v59, v60);
        v64 = objc_msgSend_map(v61, v62, v63);
        v67 = objc_msgSend_bytes(v64, v65, v66);
        v70 = objc_msgSend_topology(a1, v68, v69);
        v73 = objc_msgSend_vertexCreases(v70, v71, v72);
        v76 = objc_msgSend_map(v73, v74, v75);
        v79 = objc_msgSend_bytes(v76, v77, v78);
        v82 = objc_msgSend_topology(a1, v80, v81);
        result = objc_msgSend_vertexCreaseCount(v82, v83, v84);
        if (result >= 1)
        {
          v85 = result & 0x7FFFFFFF;
          do
          {
            v86 = *v79++;
            v88 = v67;
            result = sub_1AF2F9020(a3, v67, &unk_1AFE22A40, &v88);
            *(result + 32) = v86;
            v67 = (v67 + 4);
            --v85;
          }

          while (v85);
        }
      }
    }
  }

  return result;
}

void *sub_1AF2F5118(void *a1, const char *a2, void *a3, void *a4)
{
  v5 = a2;
  v6 = objc_msgSend_vertexDescriptor(a3, a2, a3);
  v9 = objc_msgSend_attributes(v6, v7, v8);
  result = objc_msgSend_count(v9, v10, v11);
  if (result)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = *MEMORY[0x1E6974B28];
    v19 = *MEMORY[0x1E6974B18];
    v20 = *MEMORY[0x1E6974B00];
    v56 = *MEMORY[0x1E6974B08];
    v53 = *MEMORY[0x1E6974AF8];
    do
    {
      v21 = objc_msgSend_attributes(v6, v13, v14);
      v23 = objc_msgSend_objectAtIndexedSubscript_(v21, v22, v17);
      if (objc_msgSend_format(v23, v24, v25))
      {
        v28 = objc_msgSend_name(v23, v26, v27);
        v30 = objc_msgSend_containsString_(v28, v29, v18);
        if (v15 & v30)
        {
          v15 = 1;
        }

        else
        {
          v15 |= v30;
          v31 = objc_msgSend_name(v23, v26, v27);
          v33 = objc_msgSend_containsString_(v31, v32, v19);
          if (v16 & v33)
          {
            v16 = 1;
          }

          else
          {
            v16 |= v33;
            v34 = objc_msgSend_name(v23, v26, v27);
            if ((objc_msgSend_containsString_(v34, v35, v20) & 1) == 0)
            {
              v36 = objc_msgSend_name(v23, v26, v27);
              if ((objc_msgSend_containsString_(v36, v37, v56) & 1) == 0)
              {
                v38 = objc_msgSend_name(v23, v26, v27);
                if ((objc_msgSend_hasSuffix_(v38, v39, @"UVi") & 1) == 0)
                {
                  v52 = v5;
                  v40 = a4;
                  v41 = objc_msgSend_name(v23, v26, v27);
                  if (objc_msgSend_containsString_(v41, v42, v53) && (v43 = objc_msgSend_objectForKeyedSubscript_(a4, v26, @"kSceneSourceUSDIgnoreVertexColors"), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_msgSend_BOOLValue(v43, v26, v44) & 1) != 0 || (v45 = objc_msgSend_meshSourceWithMDLVertexAttribute_mesh_(VFXMeshSource, v26, v23, a3)) == 0)
                  {
                    a4 = v40;
                    v5 = v52;
                  }

                  else
                  {
                    objc_msgSend_addObject_(a1, v26, v45);
                    v47 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v46, v17);
                    objc_msgSend_addObject_(v52, v48, v47);
                    a4 = v40;
                    v5 = v52;
                  }
                }
              }
            }
          }
        }
      }

      ++v17;
      v49 = objc_msgSend_attributes(v6, v26, v27);
      result = objc_msgSend_count(v49, v50, v51);
    }

    while (v17 < result);
  }

  return result;
}

VFXMeshSource *sub_1AF2F533C(VFXMeshSource *result, const char *a2, void *a3)
{
  if (*(a2 + 2))
  {
    v5 = result;
    v6 = objc_msgSend_vertexDescriptor(a3, a2, a3);
    v10 = objc_msgSend_attributeNamed_(v6, v7, *MEMORY[0x1E6974B28]);
    if (!v10)
    {
      v11 = sub_1AF0D5194(0, v8);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDF69AC(v11);
      }
    }

    v12 = objc_msgSend_vertexBuffers(a3, v8, v9);
    v15 = objc_msgSend_bufferIndex(v10, v13, v14);
    v17 = objc_msgSend_objectAtIndexedSubscript_(v12, v16, v15);
    v20 = objc_msgSend_length(v17, v18, v19);
    v23 = objc_msgSend_vertexDescriptor(a3, v21, v22);
    v26 = objc_msgSend_layouts(v23, v24, v25);
    v29 = objc_msgSend_bufferIndex(v10, v27, v28);
    v31 = objc_msgSend_objectAtIndexedSubscript_(v26, v30, v29);
    v34 = v20 / objc_msgSend_stride(v31, v32, v33);
    v36 = objc_msgSend_dataWithLength_(MEMORY[0x1E695DF88], v35, 4 * v34);
    objc_msgSend_setLength_(v36, v37, 4 * v34);
    v40 = objc_msgSend_mutableBytes(v36, v38, v39);
    bzero(v40, 4 * v34);
    v44 = *a2;
    v43 = a2 + 8;
    v42 = v44;
    if (v44 != v43)
    {
      do
      {
        *(v40 + *(v42 + 7)) = *(v42 + 8);
        v45 = v42[1];
        if (v45)
        {
          do
          {
            v46 = v45;
            v45 = *v45;
          }

          while (v45);
        }

        else
        {
          do
          {
            v46 = v42[2];
            v47 = *v46 == v42;
            v42 = v46;
          }

          while (!v47);
        }

        v42 = v46;
      }

      while (v46 != v43);
    }

    result = objc_msgSend_meshSourceWithData_semantic_vectorCount_floatComponents_componentsPerVector_bytesPerComponent_dataOffset_dataStride_(VFXMeshSource, v41, v36, @"kGeometrySourceSemanticVertexCrease", v34, 1, 1, 4, 0, 4);
    if (result)
    {
      return objc_msgSend_addObject_(v5, v48, result);
    }
  }

  return result;
}

VFXMeshElement *sub_1AF2F54E4(VFXMeshElement *result, uint64_t *a2, VFXMeshElement **a3)
{
  world = result->_world;
  if (world)
  {
    v6 = result;
    v7 = 4 * world;
    v8 = objc_msgSend_dataWithLength_(MEMORY[0x1E695DF88], a2, 4 * world);
    objc_msgSend_setLength_(v8, v9, v7);
    v12 = objc_msgSend_mutableBytes(v8, v10, v11);
    v13 = 8 * v6->_world;
    v15 = objc_msgSend_dataWithLength_(MEMORY[0x1E695DF88], v14, v13);
    objc_msgSend_setLength_(v15, v16, v13);
    v19 = objc_msgSend_mutableBytes(v15, v17, v18);
    isa = v6->super.isa;
    if (v6->super.isa != &v6->_meshElement)
    {
      v22 = 0;
      do
      {
        v23 = *(isa + 4);
        *(v19 + 8 * v22) = HIDWORD(v23);
        *(v19 + 4 * ((2 * v22) | 1)) = v23;
        *(v12 + 4 * v22) = *(isa + 10);
        var0 = *(isa + 1);
        if (var0)
        {
          do
          {
            v25 = var0;
            var0 = var0->var0.var0.var0;
          }

          while (var0);
        }

        else
        {
          do
          {
            v25 = *(isa + 2);
            v26 = *v25 == isa;
            isa = v25;
          }

          while (!v26);
        }

        ++v22;
        isa = v25;
      }

      while (v25 != &v6->_meshElement);
    }

    *a2 = objc_msgSend_meshSourceWithData_semantic_vectorCount_floatComponents_componentsPerVector_bytesPerComponent_dataOffset_dataStride_(VFXMeshSource, v20, v8, @"kGeometrySourceSemanticEdgeCrease", v6->_world, 1, 1, 4, 0, 4);
    result = objc_msgSend_meshElementWithData_primitiveType_primitiveCount_bytesPerIndex_(VFXMeshElement, v27, v15, 2, v6->_world, 4);
    *a3 = result;
  }

  return result;
}

void sub_1AF2F5B70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, void *a37)
{
  sub_1AF112128(&a33, a34);
  sub_1AF112128(&a36, a37);
  _Unwind_Resume(a1);
}

VFXMeshElement *sub_1AF2F6074(void *a1, const char *a2, uint64_t a3)
{
  if (!objc_msgSend_faceIndexing(a1, a2, a3))
  {
    return 0;
  }

  if (objc_msgSend_geometryType(a1, v4, v5) != 5)
  {
    return 0;
  }

  v8 = objc_msgSend_topology(a1, v6, v7);
  if (!objc_msgSend_faceTopology(v8, v9, v10))
  {
    return 0;
  }

  v13 = objc_msgSend_indexBuffer(a1, v11, v12);
  if (!objc_msgSend_length(v13, v14, v15))
  {
    return 0;
  }

  v20 = objc_msgSend_indexType(a1, v16, v17) >> 3;
  switch(v20)
  {
    case 4uLL:

      return sub_1AF2F67B8(a1, v18, v19);
    case 2uLL:

      return sub_1AF2F648C(a1, v18, v19);
    case 1uLL:

      return sub_1AF2F6154(a1, v18, v19);
    default:
      return 0;
  }
}

VFXMeshElement *sub_1AF2F6154(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_topology(a1, a2, a3);
  v7 = objc_msgSend_faceTopology(v4, v5, v6);
  v10 = objc_msgSend_map(v7, v8, v9);
  v13 = objc_msgSend_bytes(v10, v11, v12);
  if (!v13)
  {
    return 0;
  }

  v16 = v13;
  v17 = objc_msgSend_indexBuffer(a1, v14, v15);
  v20 = objc_msgSend_map(v17, v18, v19);
  v23 = objc_msgSend_bytes(v20, v21, v22);
  if (!v23)
  {
    return 0;
  }

  v26 = v23;
  v27 = objc_msgSend_topology(a1, v24, v25);
  v30 = objc_msgSend_faceCount(v27, v28, v29);
  v33 = objc_msgSend_indexBuffer(a1, v31, v32);
  v36 = objc_msgSend_length(v33, v34, v35);
  __p = 0;
  v79 = 0;
  v80 = 0;
  sub_1AF2F90F0(&__p, v36 + v30);
  v76 = v30;
  if (v30)
  {
    v38 = v79;
    do
    {
      v40 = *v16++;
      v39 = v40;
      if (v38 >= v80)
      {
        v41 = __p;
        v42 = (v38 - __p);
        v43 = v38 - __p + 1;
        if (v43 < 0)
        {
LABEL_44:
          sub_1AF10A1D0();
        }

        v44 = v80 - __p;
        if (2 * (v80 - __p) > v43)
        {
          v43 = 2 * v44;
        }

        if (v44 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v45 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v45 = v43;
        }

        if (v45)
        {
          operator new();
        }

        v46 = v38 - __p;
        *v42 = v39;
        v38 = v42 + 1;
        memcpy(0, v41, v46);
        __p = 0;
        v79 = v42 + 1;
        v80 = 0;
        if (v41)
        {
          operator delete(v41);
        }
      }

      else
      {
        *v38++ = v39;
      }

      v79 = v38;
      --v30;
    }

    while (v30);
  }

  if (v36)
  {
    v47 = v79;
    do
    {
      if (v47 >= v80)
      {
        v48 = __p;
        v49 = (v47 - __p);
        v50 = v47 - __p + 1;
        if (v50 < 0)
        {
          goto LABEL_44;
        }

        v51 = v80 - __p;
        if (2 * (v80 - __p) > v50)
        {
          v50 = 2 * v51;
        }

        if (v51 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v52 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v52 = v50;
        }

        if (v52)
        {
          operator new();
        }

        v53 = v47 - __p;
        *v49 = *v26;
        v47 = v49 + 1;
        memcpy(0, v48, v53);
        __p = 0;
        v79 = v49 + 1;
        v80 = 0;
        if (v48)
        {
          operator delete(v48);
        }
      }

      else
      {
        *v47++ = *v26;
      }

      v79 = v47;
      ++v26;
      --v36;
    }

    while (v36);
  }

  else
  {
    v47 = v79;
  }

  v57 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v37, __p, v47 - __p, v76);
  v58 = 0;
  for (i = 0; ; ++i)
  {
    v60 = objc_msgSend_faceIndexing(a1, v55, v56);
    if (i >= objc_msgSend_count(v60, v61, v62))
    {
      break;
    }

    v65 = objc_msgSend_faceIndexing(a1, v63, v64);
    v67 = objc_msgSend_objectAtIndexedSubscript_(v65, v66, i);
    if (v58 < objc_msgSend_unsignedIntValue(v67, v68, v69))
    {
      v70 = objc_msgSend_faceIndexing(a1, v55, v56);
      v72 = objc_msgSend_objectAtIndexedSubscript_(v70, v71, i);
      v58 = objc_msgSend_unsignedIntValue(v72, v73, v74);
    }
  }

  v54 = objc_msgSend_meshElementWithData_primitiveType_primitiveCount_indicesChannelCount_interleavedIndicesChannels_bytesPerIndex_(VFXMeshElement, v63, v57, 4, v77, v58 + 1, 1, 1);
  if (__p)
  {
    v79 = __p;
    operator delete(__p);
  }

  return v54;
}

void sub_1AF2F645C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

VFXMeshElement *sub_1AF2F648C(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_topology(a1, a2, a3);
  v7 = objc_msgSend_faceTopology(v4, v5, v6);
  v10 = objc_msgSend_map(v7, v8, v9);
  v13 = objc_msgSend_bytes(v10, v11, v12);
  if (!v13)
  {
    return 0;
  }

  v16 = v13;
  v17 = objc_msgSend_indexBuffer(a1, v14, v15);
  v20 = objc_msgSend_map(v17, v18, v19);
  v23 = objc_msgSend_bytes(v20, v21, v22);
  if (!v23)
  {
    return 0;
  }

  v26 = v23;
  v27 = objc_msgSend_topology(a1, v24, v25);
  v30 = objc_msgSend_faceCount(v27, v28, v29);
  v33 = objc_msgSend_indexBuffer(a1, v31, v32);
  __src = 0;
  v83 = 0;
  v84 = 0;
  v80 = objc_msgSend_length(v33, v34, v35);
  sub_1AF2F91B8(&__src, v30 + (v80 >> 1));
  v81 = v30;
  if (v30)
  {
    v37 = v83;
    v38 = v81;
    do
    {
      v40 = *v16++;
      v39 = v40;
      if (v37 >= v84)
      {
        v41 = __src;
        v42 = v37 - __src;
        v43 = (v37 - __src) >> 1;
        if (v43 <= -2)
        {
LABEL_45:
          sub_1AF10A1D0();
        }

        if (v84 - __src <= v43 + 1)
        {
          v44 = v43 + 1;
        }

        else
        {
          v44 = v84 - __src;
        }

        if (v84 - __src >= 0x7FFFFFFFFFFFFFFELL)
        {
          v45 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v45 = v44;
        }

        if (v45)
        {
          sub_1AF10A228(&__src, v45);
        }

        v46 = v43;
        v47 = (2 * v43);
        v48 = &v47[-v46];
        *v47 = v39;
        v37 = (v47 + 1);
        memcpy(v48, v41, v42);
        v49 = __src;
        __src = v48;
        v83 = v37;
        v84 = 0;
        if (v49)
        {
          operator delete(v49);
        }
      }

      else
      {
        *v37 = v39;
        v37 += 2;
      }

      v83 = v37;
      --v38;
    }

    while (v38);
  }

  if (v80 > 1)
  {
    v52 = v80 >> 1;
    v50 = v83;
    do
    {
      if (v50 >= v84)
      {
        v53 = __src;
        v54 = v50 - __src;
        v55 = (v50 - __src) >> 1;
        if (v55 <= -2)
        {
          goto LABEL_45;
        }

        if (v84 - __src <= v55 + 1)
        {
          v56 = v55 + 1;
        }

        else
        {
          v56 = v84 - __src;
        }

        if (v84 - __src >= 0x7FFFFFFFFFFFFFFELL)
        {
          v57 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v57 = v56;
        }

        if (v57)
        {
          sub_1AF10A228(&__src, v57);
        }

        *(2 * v55) = *v26;
        v50 = (2 * v55 + 2);
        memcpy(0, v53, v54);
        v58 = __src;
        __src = 0;
        v83 = v50;
        v84 = 0;
        if (v58)
        {
          operator delete(v58);
        }
      }

      else
      {
        *v50 = *v26;
        v50 += 2;
      }

      v83 = v50;
      ++v26;
      --v52;
    }

    while (v52);
  }

  else
  {
    v50 = v83;
  }

  v61 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v36, __src, v50 - __src);
  v62 = 0;
  for (i = 0; ; ++i)
  {
    v64 = objc_msgSend_faceIndexing(a1, v59, v60);
    if (i >= objc_msgSend_count(v64, v65, v66))
    {
      break;
    }

    v69 = objc_msgSend_faceIndexing(a1, v67, v68);
    v71 = objc_msgSend_objectAtIndexedSubscript_(v69, v70, i);
    if (v62 < objc_msgSend_unsignedIntValue(v71, v72, v73))
    {
      v74 = objc_msgSend_faceIndexing(a1, v59, v60);
      v76 = objc_msgSend_objectAtIndexedSubscript_(v74, v75, i);
      v62 = objc_msgSend_unsignedIntValue(v76, v77, v78);
    }
  }

  v51 = objc_msgSend_meshElementWithData_primitiveType_primitiveCount_indicesChannelCount_interleavedIndicesChannels_bytesPerIndex_(VFXMeshElement, v67, v61, 4, v81, v62 + 1, 1, 2);
  if (__src)
  {
    v83 = __src;
    operator delete(__src);
  }

  return v51;
}

void sub_1AF2F6788(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

VFXMeshElement *sub_1AF2F67B8(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_topology(a1, a2, a3);
  v7 = objc_msgSend_faceTopology(v4, v5, v6);
  v10 = objc_msgSend_map(v7, v8, v9);
  v13 = objc_msgSend_bytes(v10, v11, v12);
  if (!v13)
  {
    return 0;
  }

  v16 = v13;
  v17 = objc_msgSend_indexBuffer(a1, v14, v15);
  v20 = objc_msgSend_map(v17, v18, v19);
  v23 = objc_msgSend_bytes(v20, v21, v22);
  if (!v23)
  {
    return 0;
  }

  v26 = v23;
  v27 = objc_msgSend_topology(a1, v24, v25);
  v30 = objc_msgSend_faceCount(v27, v28, v29);
  v33 = objc_msgSend_indexBuffer(a1, v31, v32);
  __src = 0;
  v85 = 0;
  v86 = 0;
  v82 = objc_msgSend_length(v33, v34, v35);
  sub_1AF17A60C(&__src, v30 + (v82 >> 2));
  v83 = v30;
  if (v30)
  {
    v37 = v85;
    v38 = v83;
    do
    {
      v40 = *v16++;
      v39 = v40;
      if (v37 >= v86)
      {
        v41 = __src;
        v42 = v37 - __src;
        v43 = (v37 - __src) >> 2;
        v44 = v43 + 1;
        if ((v43 + 1) >> 62)
        {
LABEL_43:
          sub_1AF10A1D0();
        }

        v45 = v86 - __src;
        if ((v86 - __src) >> 1 > v44)
        {
          v44 = v45 >> 1;
        }

        if (v45 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v46 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v46 = v44;
        }

        if (v46)
        {
          sub_1AF123244(&__src, v46);
        }

        v47 = v43;
        v48 = (4 * v43);
        v49 = &v48[-v47];
        *v48 = v39;
        v37 = (v48 + 1);
        memcpy(v49, v41, v42);
        v50 = __src;
        __src = v49;
        v85 = v37;
        v86 = 0;
        if (v50)
        {
          operator delete(v50);
        }
      }

      else
      {
        *v37 = v39;
        v37 += 4;
      }

      v85 = v37;
      --v38;
    }

    while (v38);
  }

  if (v82 > 3)
  {
    v53 = v82 >> 2;
    v51 = v85;
    do
    {
      if (v51 >= v86)
      {
        v54 = __src;
        v55 = v51 - __src;
        v56 = (v51 - __src) >> 2;
        v57 = v56 + 1;
        if ((v56 + 1) >> 62)
        {
          goto LABEL_43;
        }

        v58 = v86 - __src;
        if ((v86 - __src) >> 1 > v57)
        {
          v57 = v58 >> 1;
        }

        if (v58 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v59 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v59 = v57;
        }

        if (v59)
        {
          sub_1AF123244(&__src, v59);
        }

        *(4 * v56) = *v26;
        v51 = (4 * v56 + 4);
        memcpy(0, v54, v55);
        v60 = __src;
        __src = 0;
        v85 = v51;
        v86 = 0;
        if (v60)
        {
          operator delete(v60);
        }
      }

      else
      {
        *v51 = *v26;
        v51 += 4;
      }

      v85 = v51;
      ++v26;
      --v53;
    }

    while (v53);
  }

  else
  {
    v51 = v85;
  }

  v63 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v36, __src, v51 - __src);
  v64 = 0;
  for (i = 0; ; ++i)
  {
    v66 = objc_msgSend_faceIndexing(a1, v61, v62);
    if (i >= objc_msgSend_count(v66, v67, v68))
    {
      break;
    }

    v71 = objc_msgSend_faceIndexing(a1, v69, v70);
    v73 = objc_msgSend_objectAtIndexedSubscript_(v71, v72, i);
    if (v64 < objc_msgSend_unsignedIntValue(v73, v74, v75))
    {
      v76 = objc_msgSend_faceIndexing(a1, v61, v62);
      v78 = objc_msgSend_objectAtIndexedSubscript_(v76, v77, i);
      v64 = objc_msgSend_unsignedIntValue(v78, v79, v80);
    }
  }

  v52 = objc_msgSend_meshElementWithData_primitiveType_primitiveCount_indicesChannelCount_interleavedIndicesChannels_bytesPerIndex_(VFXMeshElement, v69, v63, 4, v83, v64 + 1, 1, 4);
  if (__src)
  {
    v85 = __src;
    operator delete(__src);
  }

  return v52;
}

void sub_1AF2F6ABC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1AF2F72F4(void *result, void *a2, uint64_t a3, int a4, uint64_t a5)
{
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = objc_msgSend_propertyWithSemantic_(a2, a2, a3);
  if (objc_msgSend_type(v8, v9, v10) == 2 && objc_msgSend_URLValue(v8, v11, v12))
  {
    v13 = objc_msgSend_URLValue(v8, v11, v12);
LABEL_39:
    objc_msgSend_setContents_(v7, v14, v13);
    goto LABEL_40;
  }

  if (objc_msgSend_type(v8, v11, v12) == 1 && objc_msgSend_stringValue(v8, v15, v16))
  {
    if (objc_msgSend_URLValue(v8, v15, v16))
    {
      v19 = objc_msgSend_URLValue(v8, v17, v18);
      v22 = objc_msgSend_path(v19, v20, v21);
      if (objc_msgSend_stringValue(v8, v23, v24) && (v27 = objc_msgSend_pathExtension(v22, v25, v26), objc_msgSend_isEqualToString_(v27, v28, @"usdz")) && (v29 = objc_msgSend_currentThread(MEMORY[0x1E696AF00], v25, v26), v32 = objc_msgSend_threadDictionary(v29, v30, v31), (v34 = objc_msgSend_valueForKey_(v32, v33, @"VFX_MDLCurrentAssetResolver")) != 0) && (v35 = v34, (objc_opt_respondsToSelector() & 1) != 0) && (v36 = objc_msgSend_stringValue(v8, v25, v26), v38 = objc_msgSend_resolveInsideArchiveWithAssetNamed_(v35, v37, v36), objc_msgSend_count(v38, v39, v40) >= 2))
      {
        v41 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v25, v22);
        v42 = objc_alloc(MEMORY[0x1E696AF20]);
        v44 = objc_msgSend_initWithURL_resolvingAgainstBaseURL_(v42, v43, v41, 0);
        v47 = objc_msgSend_stringValue(v8, v45, v46);
        v49 = objc_msgSend_rangeOfString_(v47, v48, @"[");
        if (v50)
        {
          v51 = objc_msgSend_substringFromIndex_(v47, v50, v49 + 1);
          if (objc_msgSend_length(v51, v52, v53) >= 2)
          {
            v55 = objc_msgSend_length(v51, v50, v54);
            v47 = objc_msgSend_substringToIndex_(v51, v56, v55 - 1);
          }
        }

        v57 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v47, v50, @"/", @"-");
        v58 = MEMORY[0x1E696AEC0];
        v60 = objc_msgSend_objectAtIndexedSubscript_(v38, v59, 0);
        v63 = objc_msgSend_intValue(v60, v61, v62);
        v65 = objc_msgSend_objectAtIndexedSubscript_(v38, v64, 1);
        v68 = objc_msgSend_intValue(v65, v66, v67);
        v70 = objc_msgSend_stringWithFormat_(v58, v69, @"offset=%d&size=%d&name=%@", v63, v68, v57);
        objc_msgSend_setQuery_(v44, v71, v70);
        v74 = objc_msgSend_URL(v44, v72, v73);
        objc_msgSend_setContents_(v7, v75, v74);
      }

      else
      {
        v95 = objc_msgSend_stringValue(v8, v25, v26);
        v98 = objc_msgSend_URLValue(v8, v96, v97);
        objc_msgSend__setImagePath_withResolvedURL_(v7, v99, v95, v98);
      }

      goto LABEL_40;
    }

    v110 = objc_msgSend_stringValue(v8, v17, v18);
    if (objc_msgSend_length(v110, v111, v112))
    {
      v13 = objc_msgSend_stringValue(v8, v76, v77);
      goto LABEL_39;
    }

LABEL_40:
    if (a4)
    {
      objc_msgSend_setWrapS_(v7, v76, 2);
      objc_msgSend_setWrapT_(v7, v120, 2);
    }

    goto LABEL_42;
  }

  if (objc_msgSend_type(v8, v15, v16) != 3)
  {
    if (objc_msgSend_type(v8, v78, v79) == 8)
    {
      objc_msgSend_float4Value(v8, v88, v89);
      v13 = objc_msgSend_vfx_colorWithModelIORed_green_blue_alpha_options_(MEMORY[0x1E69DC888], v94, a5, v93, v90, v91, v92);
    }

    else if (objc_msgSend_type(v8, v88, v89) == 7)
    {
      objc_msgSend_float3Value(v8, v100, v101);
      v193 = v102;
      v105 = objc_msgSend_propertyName(v7, v103, v104);
      isEqualToString = objc_msgSend_isEqualToString_(v105, v106, @"emission");
      if (isEqualToString && *&v193 == 1.0 && *(&v193 + 1) == 1.0 && *(&v193 + 2) == 1.0)
      {
        v109 = sub_1AF0D5194(isEqualToString, v108);
        if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1AF0CE000, v109, OS_LOG_TYPE_DEFAULT, "Warning: ignoring white emission color from ModelIO", buf, 2u);
        }

        goto LABEL_40;
      }

      v13 = objc_msgSend_vfx_colorWithModelIORed_green_blue_alpha_options_(MEMORY[0x1E69DC888], v108, a5, *&v193, *(&v193 + 1), *(&v193 + 2), 1.0);
    }

    else if (objc_msgSend_type(v8, v100, v101) == 5)
    {
      objc_msgSend_floatValue(v8, v113, v114);
      v13 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v115, v116);
    }

    else
    {
      if (objc_msgSend_type(v8, v113, v114) != 4)
      {
        goto LABEL_40;
      }

      v117 = MEMORY[0x1E69DC888];
      v118 = objc_msgSend_color(v8, v76, v77);
      v13 = objc_msgSend_colorWithCGColor_(v117, v119, v118);
    }

    goto LABEL_39;
  }

  if (!objc_msgSend_textureSamplerValue(v8, v78, v79))
  {
    goto LABEL_40;
  }

  v80 = objc_msgSend_textureSamplerValue(v8, v76, v77);
  if (!objc_msgSend_texture(v80, v81, v82))
  {
    goto LABEL_40;
  }

  v83 = objc_msgSend_textureSamplerValue(v8, v76, v77);
  v86 = objc_msgSend_texture(v83, v84, v85);
  objc_msgSend_setContents_(v7, v87, v86);
LABEL_42:
  result = objc_msgSend_textureSamplerValue(v8, v76, v77);
  if (result)
  {
    v123 = objc_msgSend_textureSamplerValue(v8, v121, v122);
    v126 = objc_msgSend_textureComponents(v123, v124, v125);
    objc_msgSend_setTextureComponents_(v7, v127, __rbit32(v126) >> 28);
    v130 = objc_msgSend_textureSamplerValue(v8, v128, v129);
    v133 = objc_msgSend_mappingChannel(v130, v131, v132);
    objc_msgSend_setMappingChannel_(v7, v134, v133);
    v137 = objc_msgSend_textureSamplerValue(v8, v135, v136);
    if (objc_msgSend_transform(v137, v138, v139))
    {
      v142 = objc_msgSend_textureSamplerValue(v8, v140, v141);
      v145 = objc_msgSend_transform(v142, v143, v144);
      objc_msgSend_matrix(v145, v146, v147);
      v151 = 0;
      v153 = vmulq_f32(v152, v152);
      v154 = vextq_s8(v153, v153, 8uLL).u64[0];
      v154.f32[0] = sqrtf(vaddv_f32(vadd_f32(*v153.i8, v154)));
      v156 = vmulq_f32(v155, v155);
      v157 = vextq_s8(v156, v156, 8uLL).u64[0];
      v157.f32[0] = sqrtf(vaddv_f32(vadd_f32(*v156.i8, v157)));
      v158 = vmulq_f32(v150, v150);
      v159 = vextq_s8(v158, v158, 8uLL).u64[0];
      v159.f32[0] = sqrtf(vaddv_f32(vadd_f32(*v158.i8, v159)));
      v160 = vdivq_f32(v152, vdupq_lane_s32(v154, 0));
      v161 = vdivq_f32(v155, vdupq_lane_s32(v157, 0));
      v162 = *MEMORY[0x1E69E9B18];
      v163 = *(MEMORY[0x1E69E9B18] + 16);
      v164 = *(MEMORY[0x1E69E9B18] + 32);
      v165 = *(MEMORY[0x1E69E9B18] + 48);
      LODWORD(v167) = v166.i32[0];
      DWORD1(v167) = vnegq_f32(v166).i32[1];
      *(&v167 + 1) = __PAIR64__(1.0, v166.u32[2]);
      v194 = *MEMORY[0x1E69E9B18];
      v195 = v163;
      v196 = v164;
      v197 = v167;
      do
      {
        *&buf[v151] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v162, COERCE_FLOAT(*(&v194 + v151))), v163, *(&v194 + v151), 1), v164, *(&v194 + v151), 2), xmmword_1AFE47A00, *(&v194 + v151), 3);
        v151 += 16;
      }

      while (v151 != 64);
      v168 = 0;
      v169 = vdivq_f32(v150, vdupq_lane_s32(v159, 0));
      v160.i32[1] = vnegq_f32(v160).i32[1];
      v161.f32[0] = -v161.f32[0];
      v194 = *buf;
      v195 = v199;
      v196 = v200;
      v197 = v201;
      do
      {
        *&buf[v168] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v160, COERCE_FLOAT(*(&v194 + v168))), v161, *(&v194 + v168), 1), v169, *(&v194 + v168), 2), v165, *(&v194 + v168), 3);
        v168 += 16;
      }

      while (v168 != 64);
      v170 = 0;
      v171.i32[0] = 0;
      v171.i64[1] = 0;
      v171.i32[1] = v157.i32[0];
      v172.i64[0] = 0;
      v172.i64[1] = v159.u32[0];
      v194 = *buf;
      v195 = v199;
      v196 = v200;
      v197 = v201;
      do
      {
        *&buf[v170] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v154.u32[0], COERCE_FLOAT(*(&v194 + v170))), v171, *(&v194 + v170), 1), v172, *(&v194 + v170), 2), xmmword_1AFE201A0, *(&v194 + v170), 3);
        v170 += 16;
      }

      while (v170 != 64);
      v173 = 0;
      v194 = *buf;
      v195 = v199;
      v196 = v200;
      v197 = v201;
      do
      {
        *&buf[v173] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v162, COERCE_FLOAT(*(&v194 + v173))), v163, *(&v194 + v173), 1), v164, *(&v194 + v173), 2), xmmword_1AFE21180, *(&v194 + v173), 3);
        v173 += 16;
      }

      while (v173 != 64);
      objc_msgSend_setContentsTransform_(v7, v148, v149, *buf, *v199.i64, *v200.i64, *&v201);
    }

    v174 = objc_msgSend_textureSamplerValue(v8, v140, v141);
    result = objc_msgSend_hardwareFilter(v174, v175, v176);
    if (result)
    {
      v179 = result;
      v180 = objc_msgSend_sWrapMode(result, v177, v178);
      if (v180 <= 2)
      {
        objc_msgSend_setWrapS_(v7, v181, qword_1AFE47A50[v180]);
      }

      v183 = objc_msgSend_tWrapMode(v179, v181, v182);
      if (v183 <= 2)
      {
        objc_msgSend_setWrapT_(v7, v184, qword_1AFE47A50[v183]);
      }

      v186 = objc_msgSend_minFilter(v179, v184, v185);
      if (v186)
      {
        if (v186 == 1)
        {
          objc_msgSend_setMinificationFilter_(v7, v187, 2);
        }
      }

      else
      {
        objc_msgSend_setMinificationFilter_(v7, v187, 1);
      }

      v189 = objc_msgSend_magFilter(v179, v187, v188);
      if (v189)
      {
        if (v189 == 1)
        {
          objc_msgSend_setMagnificationFilter_(v7, v190, 2);
        }
      }

      else
      {
        objc_msgSend_setMagnificationFilter_(v7, v190, 1);
      }

      result = objc_msgSend_mipFilter(v179, v190, v191);
      if (result)
      {
        if (result == 1)
        {
          return objc_msgSend_setMipFilter_(v7, v192, 2);
        }
      }

      else
      {
        return objc_msgSend_setMipFilter_(v7, v192, 1);
      }
    }
  }

  return result;
}

void *sub_1AF2F7E08(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v115 = *MEMORY[0x1E69E9840];
  AssociatedObject = objc_getAssociatedObject(a1, @"VFXMDLAssociatedObject");
  if (AssociatedObject)
  {
    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    obj = objc_msgSend_children(a1, v7, v8);
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v107, v114, 16);
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v108;
      v14 = 0x1E695D000uLL;
      v82 = a3;
      v81 = *v108;
      do
      {
        v15 = 0;
        v83 = v11;
        do
        {
          if (*v108 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v107 + 1) + 8 * v15);
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass)
          {
            v86 = v15;
            if (v12)
            {
              v20 = sub_1AF0D5194(isKindOfClass, v18);
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                sub_1AFDF6A6C(&v105, v106, v20);
              }
            }

            v21 = objc_msgSend_model(AssociatedObject, v18, v19);
            v24 = objc_msgSend_materials(v21, v22, v23);
            v26 = objc_msgSend_modelWithMDLMesh_(VFXModel, v25, v16);
            v29 = objc_msgSend_array(*(v14 + 3952), v27, v28);
            v30 = *(v14 + 3952);
            v33 = objc_msgSend_count(v24, v31, v32);
            v35 = objc_msgSend_arrayWithCapacity_(v30, v34, v33);
            v101 = 0u;
            v102 = 0u;
            v103 = 0u;
            v104 = 0u;
            v38 = objc_msgSend_submeshes(v16, v36, v37);
            v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v39, &v101, v113, 16);
            if (v40)
            {
              v43 = v40;
              v44 = *v102;
              do
              {
                for (i = 0; i != v43; ++i)
                {
                  if (*v102 != v44)
                  {
                    objc_enumerationMutation(v38);
                  }

                  v46 = *(*(&v101 + 1) + 8 * i);
                  if (objc_msgSend_material(v46, v41, v42) && objc_msgSend_indexCount(v46, v41, v42))
                  {
                    v47 = objc_msgSend_material(v46, v41, v42);
                    objc_msgSend_addObject_(v35, v48, v47);
                  }
                }

                v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v41, &v101, v113, 16);
              }

              while (v43);
            }

            v49 = *(v14 + 3952);
            v85 = v24;
            v50 = objc_msgSend_count(v24, v41, v42);
            v52 = objc_msgSend_arrayWithCapacity_(v49, v51, v50);
            v53 = objc_alloc(MEMORY[0x1E696AD60]);
            v55 = objc_msgSend_initWithString_(v53, v54, &stru_1F2575650);
            v97 = 0u;
            v98 = 0u;
            v99 = 0u;
            v100 = 0u;
            v57 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v56, &v97, v112, 16);
            if (v57)
            {
              v58 = v57;
              v59 = *v98;
              do
              {
                for (j = 0; j != v58; ++j)
                {
                  if (*v98 != v59)
                  {
                    objc_enumerationMutation(v35);
                  }

                  v61 = *(*(&v97 + 1) + 8 * j);
                  v62 = objc_getAssociatedObject(v61, @"VFXMDLAssociatedObject");
                  if (v62)
                  {
                    v65 = objc_msgSend_copy(v62, v63, v64);
                    v67 = objc_msgSend__integrateModelKitComputedMaps_withModel_node_texturePathProvider_vertexAttributeNamed_materialPropertyNamed_filePath_(v65, v66, v61, v26, AssociatedObject, a4, a5, a6, v55);
                    if (v67)
                    {
                      objc_msgSend_addObject_(v29, v68, v67);
                    }

                    objc_msgSend_addObject_(v52, v68, v65);
                  }

                  else
                  {
                    v70 = sub_1AF0D5194(0, v63);
                    if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
                    {
                      sub_1AFDF6AA4(&v95, v96, v70);
                    }
                  }
                }

                v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v69, &v97, v112, 16);
              }

              while (v58);
            }

            objc_msgSend_setMaterials_(v26, v71, v52);
            a3 = v82;
            if (v82)
            {
              (*(v82 + 16))(v82, AssociatedObject, v26, v29);
            }

            else
            {
              objc_msgSend_setModel_(AssociatedObject, v72, v26);
            }

            v11 = v83;
            v13 = v81;
            v15 = v86;

            v12 = 1;
            v14 = 0x1E695D000;
          }

          ++v15;
        }

        while (v15 != v11);
        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, &v107, v114, 16);
      }

      while (v11);
    }
  }

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v73 = objc_msgSend_children(a1, v7, v8);
  result = objc_msgSend_countByEnumeratingWithState_objects_count_(v73, v74, &v91, v111, 16);
  if (result)
  {
    v77 = result;
    v78 = *v92;
    do
    {
      v79 = 0;
      do
      {
        if (*v92 != v78)
        {
          objc_enumerationMutation(v73);
        }

        objc_msgSend__updateAssociatedVFXNodeWithModelSetter_texturePathProvider_vertexAttributeNamed_materialPropertyNamed_(*(*(&v91 + 1) + 8 * v79), v76, a3, a4, a5, a6);
        v79 = v79 + 1;
      }

      while (v77 != v79);
      result = objc_msgSend_countByEnumeratingWithState_objects_count_(v73, v76, &v91, v111, 16);
      v77 = result;
    }

    while (result);
  }

  return result;
}

void *sub_1AF2F82C0(void *a1, double a2, double a3, const char *a4, uint64_t a5)
{
  v37 = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E695DF70];
  v9 = objc_msgSend_count(a1, a4, a5);
  v11 = objc_msgSend_arrayWithCapacity_(v8, v10, v9);
  v14 = objc_msgSend_count(a1, v12, v13);
  if (a3 != 0.0 && v14 > 1)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v15, &v32, v36, 16);
    if (v20)
    {
      v23 = v20;
      v24 = *v33;
      do
      {
        v25 = 0;
        do
        {
          if (*v33 != v24)
          {
            objc_enumerationMutation(a1);
          }

          objc_msgSend_doubleValue(*(*(&v32 + 1) + 8 * v25), v21, v22);
          v29 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v27, v28, (v26 - a2) / a3);
          objc_msgSend_addObject_(v11, v30, v29);
          ++v25;
        }

        while (v23 != v25);
        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v21, &v32, v36, 16);
      }

      while (v23);
    }
  }

  else
  {
    v18 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v15, v16, 0.0);
    objc_msgSend_addObject_(v11, v19, v18);
  }

  return v11;
}

uint64_t sub_1AF2F8430(void *a1, const char *a2)
{
  v2 = objc_msgSend_componentConformingToProtocol_(a1, a2, &unk_1F261ED28);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return objc_msgSend_skeleton(v3, v4, v5);
}

void *sub_1AF2F84A0(void *a1, float32x4_t *a2, void *a3, uint64_t a4)
{
  v59 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_transform(a1, a2, a3))
  {
    v47 = *a2;
    v48 = a2[1];
    v45 = a2[3];
    v46 = a2[2];
    v10 = objc_msgSend_transform(a1, v8, v9);
    objc_msgSend_matrix(v10, v11, v12);
    v13 = 0;
    v53[0] = v14;
    v53[1] = v15;
    v53[2] = v16;
    v53[3] = v17;
    do
    {
      *(&v54 + v13 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v47, COERCE_FLOAT(v53[v13])), v48, *&v53[v13], 1), v46, v53[v13], 2), v45, v53[v13], 3);
      ++v13;
    }

    while (v13 != 4);
  }

  else
  {
    v18 = a2[1];
    v54 = *a2;
    v55 = v18;
    v19 = a2[3];
    v56 = a2[2];
    v57 = v19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend_addObject_(a3, v20, a1);
    v22 = *(a4 + 8);
    v23 = *(a4 + 16);
    if (v22 >= v23)
    {
      v27 = (v22 - *a4) >> 6;
      v28 = v27 + 1;
      if ((v27 + 1) >> 58)
      {
        sub_1AF10A1D0();
      }

      v29 = v23 - *a4;
      if (v29 >> 5 > v28)
      {
        v28 = v29 >> 5;
      }

      if (v29 >= 0x7FFFFFFFFFFFFFC0)
      {
        v30 = 0x3FFFFFFFFFFFFFFLL;
      }

      else
      {
        v30 = v28;
      }

      if (v30)
      {
        sub_1AF2F8B08(a4, v30);
      }

      v31 = v27 << 6;
      v32 = v55;
      *v31 = v54;
      *(v31 + 16) = v32;
      v33 = v57;
      *(v31 + 32) = v56;
      *(v31 + 48) = v33;
      v26 = (v27 << 6) + 64;
      v34 = *(a4 + 8) - *a4;
      v35 = (v27 << 6) - v34;
      memcpy((v31 - v34), *a4, v34);
      v36 = *a4;
      *a4 = v35;
      *(a4 + 8) = v26;
      *(a4 + 16) = 0;
      if (v36)
      {
        operator delete(v36);
      }
    }

    else
    {
      v24 = v55;
      *v22 = v54;
      v22[1] = v24;
      v25 = v57;
      v22[2] = v56;
      v22[3] = v25;
      v26 = &v22[4];
    }

    *(a4 + 8) = v26;
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v37 = objc_msgSend_children(a1, v20, v21);
  result = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v38, &v49, v58, 16);
  v41 = result;
  if (result)
  {
    v42 = *v50;
    do
    {
      v43 = 0;
      do
      {
        if (*v50 != v42)
        {
          objc_enumerationMutation(v37);
        }

        v44 = *(*(&v49 + 1) + 8 * v43);
        if (!sub_1AF2F8430(v44, v40))
        {
          sub_1AF2F84A0(v44, &v54, a3, a4);
        }

        v43 = v43 + 1;
      }

      while (v41 != v43);
      result = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v40, &v49, v58, 16);
      v41 = result;
    }

    while (result);
  }

  return result;
}

uint64_t **sub_1AF2F872C(uint64_t **a1, uint64_t **a2)
{
  v2 = a1[1];
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return (v4 + 5);
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void *sub_1AF2F8814(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, __int128 a21, __int128 a22, __int128 a23, __int128 a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v29 = objc_msgSend_skeleton(a1, a2, a3, a4, a5, a6, a7, a8);
  v32 = objc_msgSend_jointBindTransforms(v29, v30, v31);
  v35 = objc_msgSend_elementCount(v32, v33, v34);
  v38 = objc_msgSend_jointPaths(a1, v36, v37);
  v39 = v38;
  if (v38)
  {
    v38 = objc_opt_new();
    v41 = v38;
    if (v35)
    {
      for (i = 0; i != v35; ++i)
      {
        v43 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v40, i);
        v46 = objc_msgSend_jointPaths(v29, v44, v45);
        v48 = objc_msgSend_objectAtIndexedSubscript_(v46, v47, i);
        v38 = objc_msgSend_setObject_forKeyedSubscript_(v41, v49, v43, v48);
      }
    }
  }

  else
  {
    v41 = 0;
  }

  v50 = MEMORY[0x1EEE9AC00](v38);
  v53 = objc_msgSend_jointBindTransforms(v29, v51, v52, v50);
  objc_msgSend_getDouble4x4Array_maxCount_(v53, v54, (&v78 - 16 * v35) & 0xFFFFFFFFFFFFFFE0, v35);
  if (v39)
  {
    v57 = objc_msgSend_jointPaths(a1, v55, v56);
    v35 = objc_msgSend_count(v57, v58, v59);
  }

  v62 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v55, v35);
  if (v35)
  {
    for (j = 0; j != v35; ++j)
    {
      if (v39)
      {
        v64 = objc_msgSend_jointPaths(a1, v60, v61);
        v66 = objc_msgSend_objectAtIndexedSubscript_(v64, v65, j);
        v68 = objc_msgSend_objectForKeyedSubscript_(v41, v67, v66);
        objc_msgSend_unsignedLongValue(v68, v69, v70);
      }

      __invert_d4();
      v71 = MEMORY[0x1E696B098];
      v72 = sub_1AF2F8A10(&v79);
      v75 = objc_msgSend_valueWithVFXMatrix4_(v71, v73, v74, v72);
      objc_msgSend_addObject_(v62, v76, v75);
    }
  }

  if (v41)
  {
  }

  return v62;
}

uint64_t sub_1AF2F8A44(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_jointPaths(a1, a2, a3);
  if (!objc_msgSend_count(v4, v5, v6))
  {
    return 0;
  }

  v9 = objc_msgSend_jointPaths(a1, v7, v8);
  v11 = objc_msgSend_objectAtIndexedSubscript_(v9, v10, 0);
  v14 = v11;
  if (!v11)
  {
    return v14;
  }

  if (!objc_msgSend_length(v11, v12, v13))
  {
    return 0;
  }

  v16 = objc_msgSend_substringToIndex_(v14, v15, 1);
  if (objc_msgSend_isEqualToString_(v16, v17, @"/"))
  {
    v14 = objc_msgSend_substringFromIndex_(v14, v18, 1);
  }

  v19 = objc_msgSend_rangeOfString_(v14, v18, @"/");
  if (v19 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return v14;
  }

  return objc_msgSend_substringToIndex_(v14, v20, v19);
}

void sub_1AF2F8B08(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  sub_1AF10A1D0();
}

void sub_1AF2F8B50(void *a1)
{
  if (a1)
  {
    sub_1AF2F8B50(*a1);
    sub_1AF2F8B50(a1[1]);

    operator delete(a1);
  }
}

double sub_1AF2F8B9C(uint64_t a1)
{
  v1 = 0;
  v2 = *MEMORY[0x1E69E9B18];
  v3 = *(MEMORY[0x1E69E9B18] + 16);
  v4 = *(a1 + 16);
  v5 = vmulq_f32(*a1, *a1);
  *v5.i8 = vadd_f32(*v5.i8, *&vextq_s8(v5, v5, 8uLL));
  v6 = vmulq_f32(v4, v4);
  *v6.i8 = vadd_f32(*v6.i8, *&vextq_s8(v6, v6, 8uLL));
  v7 = vsqrt_f32(vadd_f32(vzip1_s32(*v5.i8, *v6.i8), vzip2_s32(*v5.i8, *v6.i8)));
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  v10 = vmulq_f32(v8, v8);
  v11 = vextq_s8(v10, v10, 8uLL).u64[0];
  v11.f32[0] = sqrtf(vaddv_f32(vadd_f32(*v10.f32, v11)));
  *v10.f32 = v7;
  v10.i64[1] = __PAIR64__(1.0, v11.u32[0]);
  __asm { FMOV            V5.4S, #1.0 }

  v17 = vdivq_f32(_Q5, v10);
  v18.i64[0] = 0;
  v18.i64[1] = v17.u32[2];
  v19 = *(MEMORY[0x1E69E9B18] + 32);
  v20 = *(MEMORY[0x1E69E9B18] + 48);
  v21 = vdivq_f32(*a1, vdupq_lane_s32(v7, 0));
  v22 = vdivq_f32(v4, vdupq_lane_s32(v7, 1));
  v23 = vdivq_f32(v8, vdupq_lane_s32(v11, 0));
  v24 = vzip1q_s32(v21, v23);
  v25 = vzip2q_s32(v21, v23);
  v26 = vzip1q_s32(v22, v20);
  v27 = vzip2q_s32(v22, v20);
  v28 = vzip1q_s32(v24, v26);
  v29 = vzip1q_s32(v25, v27);
  v41 = v8;
  v42 = v9;
  do
  {
    *(&v43 + v1) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v2, COERCE_FLOAT(*(&v39 + v1))), v3, *(&v39 + v1), 1), v19, *(&v39 + v1), 2), xmmword_1AFE47A00, *(&v39 + v1), 3);
    v1 += 16;
  }

  while (v1 != 64);
  v30 = 0;
  v32.i64[0] = 0;
  v32.i32[2] = 0;
  v31.i32[0] = 0;
  v31.i64[1] = 0;
  v31.i32[1] = v17.i32[1];
  v32.i32[3] = v17.i32[3];
  v33 = vzip2q_s32(v24, v26);
  v39 = v43;
  v40 = v44;
  v41 = v45;
  v42 = v46;
  do
  {
    *(&v43 + v30) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v17.u32[0], COERCE_FLOAT(*(&v39 + v30))), v31, *(&v39 + v30), 1), v18, *(&v39 + v30), 2), v32, *(&v39 + v30), 3);
    v30 += 16;
  }

  while (v30 != 64);
  v34 = 0;
  v35 = vzip2q_s32(v25, v27);
  v39 = v43;
  v40 = v44;
  v41 = v45;
  v42 = v46;
  do
  {
    *(&v43 + v34) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v28, COERCE_FLOAT(*(&v39 + v34))), v33, *(&v39 + v34), 1), v29, *(&v39 + v34), 2), v35, *(&v39 + v34), 3);
    v34 += 16;
  }

  while (v34 != 64);
  v36 = 0;
  v39 = v43;
  v40 = v44;
  v41 = v45;
  v42 = v46;
  do
  {
    *(&v43 + v36) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v2, COERCE_FLOAT(*(&v39 + v36))), v3, *(&v39 + v36), 1), v19, *(&v39 + v36), 2), xmmword_1AFE21180, *(&v39 + v36), 3);
    v36 += 16;
  }

  while (v36 != 64);
  v37 = vmulq_n_f32(v21, *v7.i32);
  v37.i32[1] = vnegq_f32(v37).i32[1];
  return *v37.i64;
}

void *sub_1AF2F8D98(uint64_t a1, void *a2, uint64_t a3)
{
  objc_msgSend_VFXFloat3Value(a2, a2, a3);
  if (v7.f32[0] == 0.0 && v7.f32[1] == 0.0 && v7.f32[2] == 0.0)
  {
    return a2;
  }

  v9 = MEMORY[0x1E696B098];
  *&v10 = vmulq_n_f32(v7, *(a1 + 32)).u64[0];

  return objc_msgSend_valueWithVFXFloat3_(v9, v5, v6, v10);
}

void sub_1AF2F8E14(char **a1, size_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 - v5 >= a2)
  {
    if (a2)
    {
      bzero(a1[1], a2);
      v5 += a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = *a1;
    v7 = (v5 - *a1);
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      sub_1AF10A1D0();
    }

    v9 = v4 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = v5 - *a1;
    bzero(v7, a2);
    memcpy(&v7[v6 - v5], v6, v11);
    *a1 = &v7[v6 - v5];
    a1[1] = &v7[a2];
    a1[2] = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

void *sub_1AF2F8F4C(uint64_t a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = v4[4];
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *sub_1AF2F9020(uint64_t a1, unsigned int *a2, uint64_t a3, unsigned int **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = *(v4 + 28);
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

void sub_1AF2F90F0(void *a1, unint64_t a2)
{
  if (a1[2] - *a1 < a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AF10A1D0();
  }
}

void sub_1AF2F91B8(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 1)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      sub_1AF10A228(a1, a2);
    }

    sub_1AF10A1D0();
  }
}

void sub_1AF2F9254(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 2u);
}

void sub_1AF2F96EC(uint64_t a1)
{
  v1 = *(a1 + 32);
  memset(v2, 0, sizeof(v2));
  sub_1AF1B31F8(v1, v2);
}

void sub_1AF2F99E0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_modelRef(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  sub_1AF1B31F8(v4, &v5);
}

CFStringRef sub_1AF2F9F98(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend___CFObject(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  return sub_1AF16CC34(v4, v5);
}

void sub_1AF2FA3E0(uint64_t a1, double a2, const char *a3)
{
  objc_msgSend_prepareWithTarget_implicitDuration_(*(a1 + 32), a3, *(a1 + 40));
  if ((sub_1AF292034(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), a2) & 1) == 0)
  {
    os_unfair_lock_lock((*(a1 + 40) + 40));
    objc_msgSend_removeObjectForKey_(*(*(a1 + 40) + 48), v5, *(a1 + 48));
    objc_msgSend_removeWorldReference_(*(a1 + 32), v6, *(*(a1 + 40) + 16));
    v7 = (*(a1 + 40) + 40);

    os_unfair_lock_unlock(v7);
  }
}

void sub_1AF2FA854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (v4 == 0.0)
  {
    sub_1AF29213C(v5, v6, a3);
  }

  else
  {
    sub_1AF2921A8(v5, v6, *(a1 + 48), v4);
  }
}

void sub_1AF2FA9F0(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_animationPlayerWithAnimationPlayerRef_(VFXAnimationPlayer, a2, a3);
  if (v5)
  {
    v7 = v5;
    v8 = *(*(a1 + 32) + 48);

    objc_msgSend_setValue_forKey_(v8, v6, v7, a2);
  }

  else
  {
    v9 = sub_1AF0D5194(0, v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF4D18(v9);
    }
  }
}

void sub_1AF2FAE10(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend___CFObject(*(a1 + 32), a2, a3);
  v12 = objc_alloc_init(CFXBinding);
  v7 = objc_msgSend___CFObject(*(a1 + 40), v5, v6);
  objc_msgSend_setSourceObject_(v12, v8, v7);
  objc_msgSend_setKeyPathDst_(v12, v9, *(a1 + 48));
  objc_msgSend_setKeyPathSrc_(v12, v10, *(a1 + 56));
  objc_msgSend_setOptions_(v12, v11, *(a1 + 64));
  sub_1AF16DBF8(v4, v12);
}

void sub_1AF2FAF54(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend___CFObject(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  sub_1AF16DE24(v4, v5);
}

void sub_1AF2FB020(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend___CFObject(*(a1 + 32), a2, a3);

  sub_1AF16DDA8(v3, v4);
}

uint64_t sub_1AF2FB0CC(uint64_t a1, const char *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = objc_msgSend_keyPathDst(a3, a2, a3);
  v8 = objc_msgSend_sourceObject(a3, v6, v7);
  v11 = objc_msgSend_keyPathSrc(a3, v9, v10);
  v15 = objc_msgSend_options(a3, v12, v13);

  return objc_msgSend_bindAnimatablePath_toObject_withKeyPath_options_(v4, v14, v5, v8, v11, v15);
}

void sub_1AF2FB204(id *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend___CFObject(a1[4], a2, a3);
  v7 = objc_msgSend_keyPathDst(a1[5], v5, v6);
  sub_1AF16DE24(v4, v7);
  v24 = objc_alloc_init(CFXBinding);
  v10 = objc_msgSend___CFObject(a1[6], v8, v9);
  objc_msgSend_setSourceObject_(v24, v11, v10);
  v14 = objc_msgSend_keyPathDst(a1[5], v12, v13);
  objc_msgSend_setKeyPathDst_(v24, v15, v14);
  v18 = objc_msgSend_keyPathSrc(a1[5], v16, v17);
  objc_msgSend_setKeyPathSrc_(v24, v19, v18);
  v22 = objc_msgSend_options(a1[5], v20, v21);
  objc_msgSend_setOptions_(v24, v23, v22);
  sub_1AF16DBF8(v4, v24);
}

uint64_t sub_1AF2FB340(uint64_t a1, const char *a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = objc_msgSend_sourceObject(a3, a2, a3);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1AF2FB3E8;
  v8[3] = &unk_1E7A7E3D8;
  v8[4] = *(a1 + 32);
  v8[5] = a3;
  return (*(v5 + 16))(v5, v6, 1, v8);
}

void *sub_1AF2FB880(void *a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E695DF70]);
  v5 = objc_msgSend_count(a1, v3, v4);
  v7 = objc_msgSend_initWithCapacity_(v2, v6, v5);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v8, &v25, v31, 16);
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(a1);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        v14 = CFGetTypeID(v13);
        v16 = sub_1AF1A2D3C(v14, v15);
        if (v14 == v16)
        {
          v18 = objc_msgSend_meshWithMeshRef_(VFXMesh, v17, v13);
          goto LABEL_10;
        }

        if (v14 == sub_1AF15B134(v16, v17))
        {
          v18 = objc_msgSend_bezierCurveGeometryWithGeometryRef_(VFXBezierCurveGeometry, v20, v13);
LABEL_10:
          if (v18)
          {
            objc_msgSend_addObject_(v7, v19, v18);
          }

          continue;
        }

        v21 = CFCopyTypeIDDescription(v14);
        v23 = sub_1AF0D5194(v21, v22);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v30 = v21;
          _os_log_error_impl(&dword_1AF0CE000, v23, OS_LOG_TYPE_ERROR, "Unreachable code: Unknown geometry class %@", buf, 0xCu);
        }

        CFRelease(v21);
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v19, &v25, v31, 16);
    }

    while (v10);
  }

  return v7;
}

void *sub_1AF2FBA68(void *a1, const char *a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v36 = *MEMORY[0x1E69E9840];
  v6 = &a2[a3];
  v7 = objc_msgSend_count(a1, a2, a3);
  if (v6 > v7)
  {
    v9 = sub_1AF0D5194(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF7100(v9, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  v17 = objc_alloc(MEMORY[0x1E695DF70]);
  v20 = objc_msgSend_initWithCapacity_(v17, v18, v3);
  if (v4 < v6)
  {
    *&v21 = 138412290;
    v33 = v21;
    do
    {
      v22 = objc_msgSend_objectAtIndexedSubscript_(a1, v19, v4, v33);
      v23 = CFGetTypeID(v22);
      v25 = sub_1AF1A2D3C(v23, v24);
      if (v23 == v25)
      {
        v27 = objc_msgSend_meshWithMeshRef_(VFXMesh, v26, v22);
      }

      else
      {
        if (v23 != sub_1AF15B134(v25, v26))
        {
          v29 = CFCopyTypeIDDescription(v23);
          v31 = sub_1AF0D5194(v29, v30);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            *buf = v33;
            v35 = v29;
            _os_log_error_impl(&dword_1AF0CE000, v31, OS_LOG_TYPE_ERROR, "Unreachable code: Unknown geometry class %@", buf, 0xCu);
          }

          CFRelease(v29);
          goto LABEL_15;
        }

        v27 = objc_msgSend_bezierCurveGeometryWithGeometryRef_(VFXBezierCurveGeometry, v28, v22);
      }

      if (v27)
      {
        objc_msgSend_addObject_(v20, v19, v27);
      }

LABEL_15:
      ++v4;
      --v3;
    }

    while (v3);
  }

  return v20;
}

void sub_1AF2FBE10(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_morphRef(*(a1 + 32), a2, a3);
  if (v4)
  {
    v5 = v4;
    v6 = sub_1AF2FBE8C(*(a1 + 40));
    sub_1AF1B4918(v5, v6, *(*(a1 + 32) + 169));
  }
}

void *sub_1AF2FBE8C(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E695DF70]);
  v5 = objc_msgSend_count(a1, v3, v4);
  v7 = objc_msgSend_initWithCapacity_(v2, v6, v5);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v8, &v18, v22, 16);
  if (v9)
  {
    v12 = v9;
    v13 = *v19;
    do
    {
      v14 = 0;
      do
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(a1);
        }

        v15 = objc_msgSend___CFObject(*(*(&v18 + 1) + 8 * v14), v10, v11);
        objc_msgSend_addObject_(v7, v16, v15);
        ++v14;
      }

      while (v12 != v14);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v10, &v18, v22, 16);
    }

    while (v12);
  }

  return v7;
}

void sub_1AF2FC2C8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_morphRef(*(a1 + 32), a2, a3);
  if (v4)
  {
    v7 = v4;
    v8 = objc_msgSend_count(*(a1 + 40), v5, v6);
    if (v8 >= 1)
    {
      v10 = v8;
      for (i = 0; i != v10; ++i)
      {
        v12 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 40), v9, i);
        objc_msgSend_floatValue(v12, v13, v14);
        sub_1AF1B4F44(v7, i, v15);
      }
    }
  }
}

void *sub_1AF2FC5FC()
{
  for (i = 0; i != 128; ++i)
  {
    v1 = objc_alloc(MEMORY[0x1E696AEC0]);
    result = objc_msgSend_initWithFormat_(v1, v2, @"weights[%d]", i);
    qword_1EB6588A8[i] = result;
  }

  return result;
}

void sub_1AF2FC884(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_morphRef(*(a1 + 32), a2, a3);
  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);

    sub_1AF1B4F44(v4, v5, v6);
  }
}

void sub_1AF2FD708(uint64_t a1, const char *a2, uint64_t a3)
{
  if (*(a1 + 104) == 1)
  {
    v4 = objc_msgSend_count(*(a1 + 32), a2, a3);
    v7 = malloc_type_malloc(4 * v4, 0x100004052888210uLL);
    v59 = v4;
    if (v4)
    {
      v8 = 0;
      do
      {
        v9 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v5, v8);
        v7[v8++] = objc_msgSend_intValue(v9, v10, v11);
      }

      while (v59 != v8);
    }

    v12 = objc_msgSend_count(*(a1 + 40), v5, v6);
    v15 = malloc_type_malloc(4 * v12, 0x100004052888210uLL);
    if (v12)
    {
      for (i = 0; i != v12; v15[i++] = v20)
      {
        v17 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 40), v13, i);
        objc_msgSend_floatValue(v17, v18, v19);
      }
    }
  }

  else
  {
    v15 = 0;
    v7 = 0;
    v12 = 0;
    v59 = objc_msgSend_count(*(a1 + 48), a2, a3);
  }

  v58 = v12;
  if (*(a1 + 105) == 1)
  {
    v21 = objc_msgSend_count(*(a1 + 56), v13, v14);
    v22 = 4 * v21;
    v25 = malloc_type_malloc(v22, 0x100004052888210uLL);
    if (v21)
    {
      for (j = 0; j != v21; v25[j++] = objc_msgSend_intValue(v27, v28, v29))
      {
        v27 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 56), v23, j);
      }
    }

    v56 = v21;
    v30 = objc_msgSend_count(*(a1 + 64), v23, v24);
    v31 = malloc_type_malloc(4 * v30, 0x100004052888210uLL);
    if (v30)
    {
      for (k = 0; k != v30; v31[k++] = objc_msgSend_intValue(v33, v34, v35))
      {
        v33 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 64), v13, k);
      }
    }

    if (*(a1 + 106))
    {
      v38 = malloc_type_malloc(v22, 0x100004052888210uLL);
      if (v56)
      {
        for (m = 0; m != v56; v38[m++] = objc_msgSend_intValue(v40, v41, v42))
        {
          v40 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 72), v36, m);
        }
      }

      v43 = objc_msgSend_count(*(a1 + 80), v36, v37);
      v44 = malloc_type_malloc(4 * v43, 0x100004052888210uLL);
      if (v43)
      {
        v45 = 0;
        v57 = v43;
        do
        {
          v46 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 80), v13, v45);
          objc_msgSend_floatValue(v46, v47, v48);
          v44[v45++] = v49;
        }

        while (v43 != v45);
      }

      else
      {
        v57 = 0;
      }

      v50 = v30;
      v51 = v56;
    }

    else
    {
      v44 = 0;
      v38 = 0;
      v57 = 0;
      v50 = v30;
      v51 = v56;
    }
  }

  else
  {
    v44 = 0;
    v38 = 0;
    v57 = 0;
    v31 = 0;
    v50 = 0;
    v25 = 0;
    v51 = 0;
  }

  v52 = objc_msgSend_morphRef(*(a1 + 88), v13, v14);
  v53 = *(a1 + 96);
  v54 = *(*(a1 + 88) + 169);
  v60[0] = __PAIR64__(v58, v59);
  v60[1] = v7;
  v60[2] = v15;
  v61 = v51;
  v62 = 0;
  v63 = v25;
  v64 = v50;
  v65 = 0;
  v66 = v31;
  v67 = v57;
  v68 = 0;
  v69 = v38;
  v70 = v44;
  sub_1AF1B4478(v52, v53, v54, v60);
  free(v7);
  free(v15);
  free(v25);
  free(v31);
  free(v38);
  free(v44);
  if (v59)
  {
      ;
    }
  }
}

uint64_t sub_1AF2FDA58(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = objc_msgSend_unsignedIntegerValue(a2, a2, a3);
  v9 = objc_msgSend_objectAtIndexedSubscript_(v5, v8, v7 + v6);
  objc_msgSend_floatValue(v9, v10, v11);
  v13 = v12;
  v15 = *(a1 + 32);
  v14 = *(a1 + 40);
  v18 = objc_msgSend_unsignedIntegerValue(a3, v16, v17);
  v20 = objc_msgSend_objectAtIndexedSubscript_(v15, v19, v18 + v14);
  objc_msgSend_floatValue(v20, v21, v22);
  if (v13 < v23)
  {
    return -1;
  }

  else
  {
    return v13 > v23;
  }
}

void *sub_1AF2FDB64(uint64_t a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend_morphRef(*(a1 + 32), a2, a3);
  if (result)
  {
    v5 = *(a1 + 40) == 1;

    return sub_1AF1B4400(result, v5);
  }

  return result;
}

void *sub_1AF2FDCCC(uint64_t a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend_morphRef(*(a1 + 32), a2, a3);
  if (result)
  {
    v5 = (*(a1 + 40) & 1) == 0;

    return sub_1AF1B525C(result, v5);
  }

  return result;
}

void sub_1AF2FDE3C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_morphRef(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF1B5C80(v4, v5, v6);
}

uint64_t sub_1AF2FDEF4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_morphRef(*(a1 + 32), a2, a3);
  v7 = objc_msgSend___CFObject(*(a1 + 40), v5, v6);
  sub_1AF1B5708(v4, v7, 1, &unk_1F24EC0F8);
  v10 = *(a1 + 32);

  return objc_msgSend__updateModelFromPresentation(v10, v8, v9);
}

id *sub_1AF2FDF54(uint64_t a1, uint64_t a2, id *a3, uint64_t a4)
{
  result = sub_1AF16CDEC(a3);
  if (result)
  {
    v7 = result;
    v8 = objc_msgSend_meshSourceWithMeshSourceRef_(VFXMeshSource, v6, a4);
    v12 = objc_msgSend__encodeDataAsHalf(v7, v9, v10);

    return objc_msgSend_set_encodeDataAsHalf_(v8, v11, v12);
  }

  return result;
}

uint64_t sub_1AF2FE048(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_morphRef(*(a1 + 32), a2, a3);
  v7 = objc_msgSend___CFObject(*(a1 + 40), v5, v6);
  sub_1AF1B526C(v4, v7, 1, &unk_1F24EC0F8);
  v10 = *(a1 + 32);

  return objc_msgSend__updateModelFromPresentation(v10, v8, v9);
}

uint64_t sub_1AF2FE294(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v6 = *(*(a1 + 32) + 16);

    return objc_msgSend_removeWorldReference_(a2, v5, v6);
  }

  return result;
}

uint64_t sub_1AF2FE2F4(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v6 = *(*(a1 + 32) + 16);

    return objc_msgSend_addWorldReference_(a2, v5, v6);
  }

  return result;
}

uint64_t sub_1AF2FF12C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);

  return objc_msgSend_countByEnumeratingWithState_objects_count_(v8, a2, va, va1, 16);
}

uint64_t sub_1AF2FF14C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return objc_msgSend_countByEnumeratingWithState_objects_count_(a17, a2, &a33, &a65, 16, a6, a7, a8);
}

void sub_1AF2FF16C(uint64_t *a1, uint64_t a2, void *a3, int __e, int a5)
{
  v9 = ldexp(1.0, __e);
  v29 = 0u;
  v30 = 0u;
  sub_1AF1AE1A8(a2, v10, &v29);
  v12 = sub_1AF1AE6EC(a2, v11);
  v14 = v12;
  if (v12 != 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 2))
  {
    v15 = sub_1AF0D5194(v12, v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF72CC(v15);
    }
  }

  v16 = 3 * v14;
  v17 = a1[1] - *a1;
  v18 = v29;
  sub_1AF121C28(a1, 3 * v14 + (v17 >> 2));
  if (v14 >= 1)
  {
    v22 = 0;
    v23 = 0;
    v24 = v9;
    v28 = v24;
    do
    {
      *v19.i64 = sub_1AF279750(BYTE4(v30), v18, v19, v20, v21);
      v20 = v19.f32[2];
      if (a5)
      {
        v25 = *a1;
        v26 = v28;
        *v19.f32 = vcvt_s32_f32(vrnda_f32(vmul_n_f32(*v19.f32, v28)));
        *(*a1 + v17 + v22) = v19.i64[0];
      }

      else
      {
        v27 = (*a3 + v22);
        v21 = v27[1].f32[0];
        v25 = *a1;
        v26 = v28;
        *v19.f32 = vcvt_s32_f32(vrnda_f32(vmul_n_f32(vsub_f32(*v19.f32, *v27), v28)));
        *(*a1 + v17 + v22) = v19.i64[0];
        v20 = v19.f32[2] - v21;
      }

      v19.f32[0] = v20 * v26;
      *(v25 + v17 + v22 + 8) = llroundf(v20 * v26);
      v18 = (v18 + BYTE6(v30));
      v23 += 3;
      v22 += 12;
    }

    while (v23 < v16);
  }
}

uint64_t sub_1AF2FF2F8(void *a1, uint64_t a2)
{
  v4 = sub_1AF1A4CE8(a2, 0);
  v6 = sub_1AF1AE6EC(v4, v5);
  sub_1AF3000EC(a1, v6);
  v43 = 0u;
  v44 = 0u;
  sub_1AF1AE1A8(v4, v7, &v43);
  if (v6 >= 1)
  {
    v11 = 0;
    for (i = 0; i != v6; ++i)
    {
      *v8.i64 = sub_1AF279750(BYTE4(v44), (v43 + i * BYTE6(v44)), v8, v9, v10);
      v13 = *a1 + v11;
      *v13 = v8.i64[0];
      *(v13 + 8) = v8.i32[2];
      v11 += 12;
    }
  }

  v14 = sub_1AF1A4C6C(a2, 0, 0);
  v16 = sub_1AF1A3CCC(a2, v15);
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v17 = &off_1AFE20000;
  if (v16 < 1)
  {
    v20 = 0;
  }

  else
  {
    for (j = 0; j != v16; ++j)
    {
      v19 = sub_1AF1A3D1C(a2, j, 0);
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      sub_1AF1A767C(v19, v14, &v31);
      v27 = v31;
      v28 = v32;
      v29 = v33;
      v30 = v34;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = sub_1AF2FF5F8;
      v26[3] = &unk_1E7A7EC20;
      v26[4] = &v39;
      v26[5] = &v35;
      sub_1AF1A80E4(&v27, v26, v33);
    }

    v20 = v40[3];
    v17 = &off_1AFE20000;
  }

  sub_1AF121C28(a1 + 3, v20);
  sub_1AF121C28(a1 + 6, v36[3]);
  v40[3] = 0;
  v36[3] = 0;
  if (v16 >= 1)
  {
    v21 = 0;
    v22 = *(v17 + 103);
    do
    {
      v23 = sub_1AF1A3D1C(a2, v21, 0);
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      sub_1AF1A767C(v23, v14, &v31);
      v27 = v31;
      v28 = v32;
      v29 = v33;
      v30 = v34;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = v22;
      v25[2] = sub_1AF2FF62C;
      v25[3] = &unk_1E7A7EC48;
      v25[5] = &v35;
      v25[6] = a1;
      v25[4] = &v39;
      sub_1AF1A80E4(&v27, v25, v33);
      ++v21;
    }

    while (v16 != v21);
  }

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);
  return 1;
}

void sub_1AF2FF5C4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 208), 8);
  _Block_object_dispose((v1 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1AF2FF5F8(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a4 >= 2)
  {
    ++*(*(*(result + 32) + 8) + 24);
    *(*(*(result + 40) + 8) + 24) += a4;
  }

  return result;
}

void *sub_1AF2FF62C(void *result, uint64_t a2, int *a3, unsigned int a4)
{
  if (a4 >= 2)
  {
    v4 = result[6];
    v5 = *(result[4] + 8);
    v6 = *(v5 + 24);
    *(v5 + 24) = v6 + 1;
    *(*(v4 + 24) + 4 * v6) = a4;
    v7 = *(v4 + 48);
    v8 = a4;
    do
    {
      v9 = *(result[5] + 8);
      v10 = *(v9 + 24);
      *(v9 + 24) = v10 + 1;
      v11 = *a3++;
      *(v7 + 4 * v10) = v11;
      --v8;
    }

    while (v8);
  }

  return result;
}

BOOL sub_1AF2FF684(void *a1, void *a2, uint64_t a3)
{
  v83 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_nodeRef(a2, a2, a3);
  v7 = sub_1AF1B9158(v5, v6);
  v9 = sub_1AF1B669C(v7, v8);
  if (sub_1AF170774(v9))
  {
    return 0;
  }

  v62 = a1;
  v11 = sub_1AF170740(v9);
  v63 = sub_1AF1A4C6C(v11, 0, 0);
  v12 = sub_1AF1A4CE8(v11, 0);
  v14 = sub_1AF1AE6EC(v12, v13);
  v76 = 0;
  v74 = 0u;
  *v75 = 0u;
  *v72 = 0u;
  *v73 = 0u;
  sub_1AF2FF2F8(v72, v11);
  v15 = sub_1AF15B294(v7);
  v16 = sub_1AF15B294(v15);
  Count = CFArrayGetCount(v16);
  v71 = 5;
  v61 = v72[1] - v72[0];
  v70 = sub_1AF1B4CCC(v15) == 1;
  __p = 0;
  v68 = 0;
  v69 = 0;
  sub_1AF17A60C(&__p, 3 * Count * 0xAAAAAAAAAAAAAAABLL * (v61 >> 2));
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v16, i);
      v20 = sub_1AF1A4CE8(ValueAtIndex, 0);
      v22 = v20;
      if (v20)
      {
        if (sub_1AF1AE6EC(v20, v21) == v14)
        {
          sub_1AF2FF16C(&__p, v22, v72, 5, v70);
        }

        else
        {
          v26 = sub_1AF1B58F8(v15, v23);
          if ((v26 & 1) == 0)
          {
            v28 = sub_1AF0D5194(v26, v27);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              v33 = objc_msgSend_name(a2, v29, v30);
              *buf = 138412802;
              v78 = v33;
              v79 = 2048;
              v80 = a2;
              v81 = 2048;
              v82 = v15;
              _os_log_error_impl(&dword_1AF0CE000, v28, OS_LOG_TYPE_ERROR, "Error: Internal consistency error, %@'s (%p) morph %p is not sparse", buf, 0x20u);
            }
          }

          v31 = sub_1AF1A3D1C(ValueAtIndex, 0, 0);
          v32 = sub_1AF1AEC88(v22, v31, v14, v63);
          sub_1AF2FF16C(&__p, v32, v72, 5, v70);
          if (v32)
          {
            CFRelease(v32);
          }
        }
      }

      else
      {
        v24 = v68 - __p;
        sub_1AF121C28(&__p, (v61 >> 2) + ((v68 - __p) >> 2));
        v25 = v68 - (__p + v24);
        if (v25 >= 1)
        {
          bzero(__p + v24, v25);
        }
      }
    }
  }

  v34 = v73[1];
  v35 = v74;
  v36 = v75[0];
  v37 = v75[1];
  v38 = objc_alloc(MEMORY[0x1E695DF88]);
  v40 = objc_msgSend_initWithLength_(v38, v39, v61 * Count + 1024);
  v43 = objc_msgSend_mutableBytes(v40, v41, v42);
  v64 = 0;
  v65 = 0;
  v44 = sub_1AFDCEB7C(&v66, v34, v36, __p, 3, 0xAAAAAAAAAAAAAAABLL * (v61 >> 2), (v35 - v34) >> 2, (v37 - v36) >> 2, Count, v43, v61 * Count + 1024, &v65, &v64);
  v10 = v44 == 0;
  if (v44)
  {
    v46 = sub_1AF0D5194(v44, v45);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF7350();
    }
  }

  else
  {
    objc_msgSend_setLength_(v40, v45, v65);
    objc_msgSend_encodeObject_forKey_(v62, v47, v40, @"morpherCompressedData");

    v48 = objc_alloc(MEMORY[0x1E695DF88]);
    v50 = objc_msgSend_initWithCapacity_(v48, v49, 32 * Count);
    objc_msgSend_appendBytes_length_(v50, v51, &v71, 1);
    objc_msgSend_appendBytes_length_(v50, v52, &v70, 1);
    if (Count >= 1)
    {
      for (j = 0; j != Count; ++j)
      {
        v55 = CFArrayGetValueAtIndex(v16, j);
        v57 = sub_1AF16CBEC(v55, v56);
        CFStringGetCString(v57, buf, 512, 0x600u);
        v58 = strlen(buf);
        objc_msgSend_appendBytes_length_(v50, v59, buf, v58 + 1);
      }
    }

    objc_msgSend_encodeObject_forKey_(v62, v53, v50, @"morpherMetaData");
  }

  if (__p)
  {
    v68 = __p;
    operator delete(__p);
  }

  if (v75[0])
  {
    v75[1] = v75[0];
    operator delete(v75[0]);
  }

  if (v73[1])
  {
    *&v74 = v73[1];
    operator delete(v73[1]);
  }

  if (v72[0])
  {
    v72[1] = v72[0];
    operator delete(v72[0]);
  }

  return v10;
}

VFXMesh *sub_1AF2FFB94(void *a1, void *a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v36[1] = *MEMORY[0x1E69E9840];
  v12 = *a2;
  v11 = a2[1];
  v13 = 0xAAAAAAAAAAAAAAABLL * ((v11 - *a2) >> 2);
  v14 = v13 * a4;
  v15 = ldexp(1.0, -a5);
  *&v15 = v15;
  v35 = *&v15;
  v16 = malloc_type_malloc(4 * v14, 0x100004052888210uLL);
  if (a6)
  {
    if (v11 != v12)
    {
      if (v13 <= 1)
      {
        v18 = 1;
      }

      else
      {
        v18 = v13;
      }

      v19 = (*a1 + 4 * v14 * a3 + 8);
      v20 = 4 * a4;
      v21 = (v16 + 8);
      do
      {
        *(v21 - 1) = vmul_n_f32(vcvt_f32_s32(*(v19 - 2)), *v35.i32);
        *v21 = *v35.i32 * *v19;
        v19 = (v19 + v20);
        v21 = (v21 + v20);
        --v18;
      }

      while (v18);
    }
  }

  else if (v11 != v12)
  {
    if (v13 <= 1)
    {
      v22 = 1;
    }

    else
    {
      v22 = v13;
    }

    v23 = vdup_lane_s32(v35, 0);
    v24 = (*a1 + 4 * v14 * a3 + 8);
    v25 = 4 * a4;
    v26 = (v16 + 8);
    v27 = (*a2 + 8);
    do
    {
      v28 = *v27;
      *(v26 - 1) = vmla_f32(*(v27 - 2), v23, vcvt_f32_s32(*(v24 - 2)));
      *v26 = v28 + (*v24 * *v35.i32);
      v24 = (v24 + v25);
      v26 = (v26 + v25);
      v27 += 3;
      --v22;
    }

    while (v22);
  }

  v29 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(MEMORY[0x1E695DEF0], v17, v16, 4 * v14, 1);
  v36[0] = objc_msgSend_meshSourceWithData_semantic_vectorCount_floatComponents_componentsPerVector_bytesPerComponent_dataOffset_dataStride_(VFXMeshSource, v30, v29, @"kGeometrySourceSemanticPosition", v13, 1, a4, 4, 0, 0);
  v32 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v31, v36, 1);
  return objc_msgSend_meshWithSources_elements_(VFXMesh, v33, v32, MEMORY[0x1E695E0F0]);
}

void *sub_1AF2FFDB4(void *a1, void *a2)
{
  v4 = objc_opt_class();
  v6 = objc_msgSend_decodeObjectOfClass_forKey_(a1, v5, v4, @"morpherCompressedData");
  if (!v6)
  {
    return 0;
  }

  v9 = v6;
  v10 = objc_msgSend_model(a2, v7, v8);
  v13 = objc_msgSend_modelRef(v10, v11, v12);
  v69 = 0;
  v67 = 0u;
  *v68 = 0u;
  *v65 = 0u;
  *v66 = 0u;
  v15 = sub_1AF1B2C1C(v13, v14);
  sub_1AF2FF2F8(v65, v15);
  v18 = objc_msgSend_bytes(v9, v16, v17);
  v21 = objc_msgSend_length(v9, v19, v20);
  v22 = sub_1AFDCC0A0(v18, v21, v62);
  if (!v22)
  {
    v26 = 0xAAAAAAAAAAAAAAABLL * ((v65[1] - v65[0]) >> 2);
    v27 = v66[1];
    v28 = v67;
    v29 = v68[0];
    v30 = v68[1];
    v31 = v63;
    __p = 0;
    v60 = 0;
    v61 = 0;
    sub_1AF121C28(&__p, 3 * v26 * v63);
    v34 = objc_msgSend_bytes(v9, v32, v33);
    v37 = objc_msgSend_length(v9, v35, v36);
    v38 = sub_1AFDCC250(&v64, v34, v37, v27, v29, 3, v26, (v28 - v27) >> 2, (v30 - v29) >> 2, __p);
    if (v38)
    {
      v40 = sub_1AF0D5194(v38, v39);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF73B8();
      }
    }

    else
    {
      v42 = objc_opt_class();
      v44 = objc_msgSend_decodeObjectOfClass_forKey_(a1, v43, v42, @"morpherMetaData");
      if (v44)
      {
        v47 = objc_msgSend_bytes(v44, v45, v46);
        v48 = *v47;
        v49 = v47[1];
        v25 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v50, v31);
        if (v31)
        {
          v51 = 0;
          v52 = v47 + 2;
          v53 = *MEMORY[0x1E695E480];
          do
          {
            v54 = sub_1AF2FFB94(&__p, v65, v51, 3, v48, v49);
            objc_msgSend_addObject_(v25, v55, v54);
            v56 = CFStringCreateWithCString(v53, v52, 0x8000100u);
            objc_msgSend_setName_(v54, v57, v56);
            if (v56)
            {
              CFRelease(v56);
            }

            v52 += strlen(v52) + 1;
            ++v51;
          }

          while (v31 != v51);
        }

        goto LABEL_11;
      }

      v58 = sub_1AF0D5194(0, v45);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF73EC();
      }
    }

    v25 = 0;
LABEL_11:
    if (__p)
    {
      v60 = __p;
      operator delete(__p);
    }

    goto LABEL_13;
  }

  v24 = sub_1AF0D5194(v22, v23);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDF7384();
  }

  v25 = 0;
LABEL_13:
  if (v68[0])
  {
    v68[1] = v68[0];
    operator delete(v68[0]);
  }

  if (v66[1])
  {
    *&v67 = v66[1];
    operator delete(v66[1]);
  }

  if (v65[0])
  {
    v65[1] = v65[0];
    operator delete(v65[0]);
  }

  return v25;
}

void sub_1AF300098(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1AF104BA0(va);
  _Unwind_Resume(a1);
}

void sub_1AF3000EC(void *result, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((result[1] - *result) >> 2);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_1AF300128(result, v4);
  }

  else if (!v3)
  {
    result[1] = *result + 12 * a2;
  }
}

void sub_1AF300128(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 2) >= a2)
  {
    if (a2)
    {
      v10 = 12 * ((12 * a2 - 12) / 0xC) + 12;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 2);
    v7 = v6 + a2;
    if (v6 + a2 > 0x1555555555555555)
    {
      sub_1AF10A1D0();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 2);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x1555555555555555;
    }

    else
    {
      v9 = v7;
    }

    v16 = a1;
    if (v9)
    {
      sub_1AF300388(a1, v9);
    }

    __p = 0;
    v13 = 12 * v6;
    v15 = 0;
    v11 = 12 * ((12 * a2 - 12) / 0xC) + 12;
    bzero((12 * v6), v11);
    v14 = 12 * v6 + v11;
    sub_1AF300304(a1, &__p);
    if (v14 != v13)
    {
      v14 = (v14 - v13 - 12) % 0xC + v13;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_1AF3002B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1AF300304(void *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = *result;
    v6 = (a2[1] + *result - v3);
    do
    {
      *v6 = *v5;
      v6[1] = v5[1];
      v6[2] = v5[2];
      v5 += 3;
      v6 += 3;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v7 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v7;
  v8 = result[1];
  result[1] = a2[2];
  a2[2] = v8;
  v9 = result[2];
  result[2] = a2[3];
  a2[3] = v9;
  *a2 = a2[1];
  return result;
}

void sub_1AF300388(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    operator new();
  }

  sub_1AF10A1D0();
}

uint64_t sub_1AF3005BC(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_nodeWithNodeRef_(VFXNode, a2, a2);
  objc_msgSend__setParent_(v3, v4, *(a1 + 32));
  v6 = *(*(a1 + 32) + 32);

  return objc_msgSend_addObject_(v6, v5, v3);
}

CFStringRef sub_1AF3008D4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend___CFObject(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  return sub_1AF16CC34(v4, v5);
}

uint64_t sub_1AF300CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  v10 = v9->i64[1];
  if ((v9[3].i8[0] & 0x10) != 0)
  {
    sub_1AF1BA204(v10, &v9[4], a3, a4, a5, a6, a7, a8);
  }

  else
  {
    sub_1AF1B9F10(v10, v9[8]);
    sub_1AF1BA078(*(*(a1 + 32) + 8), *(*(a1 + 32) + 160), v11, v12, v13, v14, v15, v16, v17);
    v25 = *(a1 + 32);
    v26 = (*(v25 + 49) >> 2) & 3;
    if (v26 > 1)
    {
      if (v26 == 2)
      {
        sub_1AF1BA184(*(v25 + 8), *(v25 + 144), v18, v19, v20, v21, v22, v23, v24);
      }
    }

    else if (v26)
    {
      sub_1AF1BA104(*(v25 + 8), v18, *(v25 + 144));
    }

    else
    {
      sub_1AF1BA148(*(v25 + 8), v18, *(v25 + 144));
    }
  }

  sub_1AF1B88DC(*(*(a1 + 32) + 8), v18, *(*(a1 + 32) + 176));
  sub_1AF1BACA4(*(*(a1 + 32) + 8), *(*(a1 + 32) + 192));
  sub_1AF1B8A78(*(*(a1 + 32) + 8), (*(*(a1 + 32) + 49) >> 4) & 1);
  sub_1AF1BADC4(*(*(a1 + 32) + 8), (*(*(a1 + 32) + 49) >> 5) & 1);
  sub_1AF1BAF5C(*(*(a1 + 32) + 8), *(*(a1 + 32) + 184));
  sub_1AF1BB008(*(*(a1 + 32) + 8), (*(*(a1 + 32) + 48) >> 6) & 1);
  sub_1AF1BB034(*(*(a1 + 32) + 8), *(*(a1 + 32) + 49) & 1);
  sub_1AF1BB08C(*(*(a1 + 32) + 8), (*(*(a1 + 32) + 49) >> 1) & 1);
  sub_1AF1BB060(*(*(a1 + 32) + 8), *(*(a1 + 32) + 48) >> 7);
  v29 = *(a1 + 32);

  return objc_msgSend__updateEntityPresentationFromModel(v29, v27, v28);
}

void sub_1AF301318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AF301350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3052000000;
  v15 = sub_1AF30144C;
  v16 = sub_1AF30145C;
  v17 = a2;
  v8 = *(a1 + 40);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1AF301468;
  v11[3] = &unk_1E7A7ECA0;
  v9 = *(a1 + 48);
  v11[4] = &v12;
  v11[5] = v9;
  (*(v8 + 16))(v8, a2, 0, v11, a5, a6, a7);
  objc_msgSend_addObject_(*(a1 + 32), v10, v13[5]);
  _Block_object_dispose(&v12, 8);
}

void sub_1AF301434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1AF301468(uint64_t result, uint64_t a2)
{
  *(*(*(result + 32) + 8) + 40) = a2;
  *(*(*(result + 40) + 8) + 24) = 1;
  return result;
}

uint64_t sub_1AF301598(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v6 = *(*(a1 + 32) + 16);

    return objc_msgSend_removeWorldReference_(a2, v5, v6);
  }

  return result;
}

uint64_t sub_1AF3015F8(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v6 = *(*(a1 + 32) + 16);

    return objc_msgSend_addWorldReference_(a2, v5, v6);
  }

  return result;
}

void sub_1AF302550(void *a1, void *a2)
{
  objc_msgSend__copyAnimationsFrom_(a2, a2, a1);
  v6 = objc_msgSend_childNodes(a1, v4, v5);
  v9 = objc_msgSend_childNodes(a2, v7, v8);
  v12 = objc_msgSend_count(v6, v10, v11);
  v15 = objc_msgSend_count(v9, v13, v14);
  if (v15 == v12)
  {
    if (v12)
    {
      for (i = 0; i != v12; ++i)
      {
        v18 = objc_msgSend_objectAtIndexedSubscript_(v6, v16, i);
        v20 = objc_msgSend_objectAtIndexedSubscript_(v9, v19, i);
        sub_1AF302550(v18, v20);
      }
    }
  }

  else
  {
    v21 = sub_1AF0D5194(v15, v16);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF7420();
    }
  }
}

void sub_1AF303130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1AF303148(uint64_t a1, char *a2, _BYTE *a3)
{
  if (objc_msgSend_isEqualToString_(*(a1 + 32), a2, @"model") && objc_msgSend_model(a2, v6, v7) || objc_msgSend_isEqualToString_(*(a1 + 32), v6, @"kCameraKey") && objc_msgSend_camera(a2, v8, v9) || (result = objc_msgSend_isEqualToString_(*(a1 + 32), v8, @"kLightKey"), result) && (result = objc_msgSend_light(a2, v11, v12)) != 0)
  {
    result = 1;
    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      *a3 = 1;
    }
  }

  return result;
}

float32x4_t sub_1AF3041C0(int8x16_t *a1, __n128 *a2, float32x4_t *a3, float32x4_t result, float32x4_t a5, int32x4_t a6, __n128 a7)
{
  if (a3)
  {
    v7 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(a6, a6), a6, 0xCuLL), vnegq_f32(a5)), a6, vextq_s8(vuzp1q_s32(a5, a5), a5, 0xCuLL));
    v8 = vmulq_f32(result, vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL));
    v62 = (v8.f32[2] + vaddv_f32(*v8.f32)) < 0.0;
    v9 = 1.0;
    if (v62)
    {
      v9 = -1.0;
    }

    v10 = vmulq_f32(result, result);
    v11 = vmulq_f32(a5, a5);
    v12 = vadd_f32(vzip1_s32(*v10.i8, *v11.i8), vzip2_s32(*v10.i8, *v11.i8));
    v13 = vextq_s8(v10, v10, 8uLL);
    *v13.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v13.f32, *&vextq_s8(v11, v11, 8uLL)), v12));
    v14 = vmulq_f32(a6, a6);
    v13.i32[2] = sqrtf(v14.f32[2] + vaddv_f32(*v14.f32));
    v15 = vmulq_n_f32(v13, v9);
    v16 = vcltzq_f32(v15);
    v17 = vmvnq_s8(vorrq_s8(v16, vcgezq_f32(v15)));
    v17.i32[3] = v17.i32[2];
    v17.i32[0] = vmaxvq_u32(v17);
    v16.i32[0] = -1;
    *a3 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v17, v16), 0), v15, 0);
  }

  if (a2)
  {
    *a2 = a7;
  }

  if (a1)
  {
    if (a3)
    {
      v18 = *a3;
    }

    else
    {
      v19 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(a6, a6), a6, 0xCuLL), vnegq_f32(a5)), a6, vextq_s8(vuzp1q_s32(a5, a5), a5, 0xCuLL));
      v20 = vmulq_f32(result, vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL));
      v62 = (v20.f32[2] + vaddv_f32(*v20.f32)) < 0.0;
      v21 = 1.0;
      if (v62)
      {
        v21 = -1.0;
      }

      v22 = vmulq_f32(result, result);
      v23 = vmulq_f32(a5, a5);
      v24 = vadd_f32(vzip1_s32(*v22.i8, *v23.i8), vzip2_s32(*v22.i8, *v23.i8));
      v25 = vextq_s8(v22, v22, 8uLL);
      *v25.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v25.f32, *&vextq_s8(v23, v23, 8uLL)), v24));
      v26 = vmulq_f32(a6, a6);
      v25.i32[2] = sqrtf(v26.f32[2] + vaddv_f32(*v26.f32));
      v27 = vmulq_n_f32(v25, v21);
      v28 = vcltzq_f32(v27);
      v29 = vmvnq_s8(vorrq_s8(v28, vcgezq_f32(v27)));
      v29.i32[3] = v29.i32[2];
      v29.i32[0] = vmaxvq_u32(v29);
      v28.i32[0] = -1;
      v18 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v29, v28), 0), v27, 0);
    }

    v30 = vceqzq_f32(v18);
    v30.i32[3] = v30.i32[2];
    if ((vmaxvq_u32(v30) & 0x80000000) == 0)
    {
      v31 = vdivq_f32(result, vdupq_lane_s32(*v18.f32, 0));
      v32 = vdivq_f32(a5, vdupq_lane_s32(*v18.f32, 1));
      v33 = vdivq_f32(a6, vdupq_laneq_s32(v18, 2));
      v34 = vmulq_f32(v31, v31);
      v35 = vmulq_f32(v32, v32);
      v36 = vmulq_f32(v33, v33);
      v37 = vzip2q_s32(v34, v36);
      v38 = vzip1q_s32(vzip1q_s32(v34, v36), v35);
      v39 = vtrn2q_s32(v34, v35);
      v39.i32[2] = v36.i32[1];
      v40 = vaddq_f32(vzip1q_s32(v37, vdupq_laneq_s32(v35, 2)), vaddq_f32(v38, v39));
      v39.i64[0] = 0x80000000800000;
      v39.i64[1] = 0x80000000800000;
      v41 = vcgeq_f32(v39, v40);
      v40.i32[3] = 0;
      v42 = vrsqrteq_f32(v40);
      v43 = vmulq_f32(v42, vrsqrtsq_f32(v40, vmulq_f32(v42, v42)));
      v44 = v41;
      v44.i32[3] = 0;
      v45 = vbslq_s8(vcltzq_s32(v44), v40, vmulq_f32(v43, vrsqrtsq_f32(v40, vmulq_f32(v43, v43))));
      v46 = vmulq_n_f32(v31, v45.f32[0]);
      v47 = vmulq_lane_f32(v32, *v45.f32, 1);
      v48 = vmulq_laneq_f32(v33, v45, 2);
      v49 = vuzp1q_s32(v48, v48);
      v50 = vuzp1q_s32(v47, v47);
      v51 = v46;
      if (v41.i32[0])
      {
        v52 = vmlaq_f32(vmulq_f32(vextq_s8(v49, v48, 0xCuLL), vnegq_f32(v47)), v48, vextq_s8(v50, v47, 0xCuLL));
        v51 = vextq_s8(vuzp1q_s32(v52, v52), v52, 0xCuLL);
      }

      v53 = vuzp1q_s32(v46, v46);
      v54 = v47;
      if (v41.i32[1])
      {
        v55 = vmlaq_f32(vmulq_f32(vextq_s8(v53, v46, 0xCuLL), vnegq_f32(v48)), v46, vextq_s8(v49, v48, 0xCuLL));
        v54 = vextq_s8(vuzp1q_s32(v55, v55), v55, 0xCuLL);
      }

      if (v41.i32[2])
      {
        v56 = vmlaq_f32(vmulq_f32(vextq_s8(v50, v47, 0xCuLL), vnegq_f32(v46)), v47, vextq_s8(v53, v46, 0xCuLL));
        v48 = vextq_s8(vuzp1q_s32(v56, v56), v56, 0xCuLL);
      }

      v57 = (*v51.i32 + *&v54.i32[1]) + v48.f32[2];
      if (v57 > 0.0)
      {
        v58 = sqrtf(v57 + 1.0);
        *v59.f32 = vsub_f32(*&vzip2q_s32(v54, vuzp1q_s32(v54, v48)), *&vtrn2q_s32(v48, vzip2q_s32(v48, v51)));
        v59.f32[2] = *&v51.i32[1] - *v54.i32;
        v59.f32[3] = v58 * v58;
        v60 = 0.5 / v58;
LABEL_22:
        v61 = vmulq_n_f32(v59, v60);
LABEL_33:
        v68 = vmvnq_s8(vceqq_f32(v61, v61));
        v68.i32[0] = vmaxvq_u32(v68);
        v54.i32[0] = -1;
        result = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v68, v54), 0), v61, xmmword_1AFE201A0);
        *a1 = result;
        return result;
      }

      v62 = *v51.i32 < *&v54.i32[1] || *v51.i32 < v48.f32[2];
      if (v62)
      {
        if (*&v54.i32[1] <= v48.f32[2])
        {
          v69 = vzip2q_s32(v51, v54).u64[0];
          v70 = __PAIR64__(v51.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v48.f32[2] + 1.0) - *v51.i32) - *&v54.i32[1])));
          v71 = vdup_lane_s32(*v54.i8, 0);
          v72 = vsub_f32(*v51.i8, v71);
          v71.i32[0] = v70.i32[0];
          v54.i32[0] = vmul_f32(v70, v71).u32[0];
          v54.i32[1] = v72.i32[1];
          *v59.f32 = vadd_f32(v69, *v48.f32);
          v59.i64[1] = v54.i64[0];
          v60 = 0.5 / v70.f32[0];
          goto LABEL_22;
        }

        v64 = sqrtf(((*&v54.i32[1] + 1.0) - *v51.i32) - v48.f32[2]);
        v67.f32[0] = *&v51.i32[1] + *v54.i32;
        v63 = vzip2q_s32(v51, v54).u64[0];
        *v54.i8 = vadd_f32(*v48.f32, v63);
        v67.f32[1] = v64 * v64;
        *&v67.u32[2] = vext_s8(*v54.i8, vsub_f32(*v48.f32, v63), 4uLL);
      }

      else
      {
        v64 = sqrtf(((*v51.i32 + 1.0) - *&v54.i32[1]) - v48.f32[2]);
        v67.f32[0] = v64 * v64;
        v65 = *&v51.i32[1] + *v54.i32;
        v66 = vzip2q_s32(v51, v54).u64[0];
        v54.i32[0] = vadd_f32(v66, *v48.f32).u32[0];
        v54.i32[1] = vsub_f32(v66, *&v48).i32[1];
        v67.f32[1] = v65;
        v67.i64[1] = v54.i64[0];
      }

      v61 = vmulq_n_f32(v67, 0.5 / v64);
      goto LABEL_33;
    }

    result.i64[0] = 0;
    *a1 = xmmword_1AFE201A0;
    if (a3)
    {
      result.i64[0] = 0;
      *a3 = 0u;
    }
  }

  return result;
}

uint64_t sub_1AF305714(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_nodeWithNodeRef_(VFXNode, a2, a2);
  v7 = objc_msgSend_presentationNode(v3, v4, v5);
  v8 = *(a1 + 32);

  return objc_msgSend_addObject_(v8, v6, v7);
}

void sub_1AF30581C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = objc_msgSend_lightRef(*(a1 + 40), a2, a3);

  sub_1AF1BB108(v3, v4);
}

void sub_1AF305B98(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = objc_msgSend_skinnerRef(*(a1 + 40), a2, a3);

  sub_1AF1B92D8(v3, v4);
}

void sub_1AF305C80(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_morphRef(*(a1 + 32), a2, a3);
  if (v4)
  {
    v6 = sub_1AF1B63B0(v4, v5);
  }

  else
  {
    v6 = 0;
  }

  sub_1AF1B91A8(*(*(a1 + 40) + 8), v6);
  if (v6)
  {

    CFRelease(v6);
  }
}

void sub_1AF305E80(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = objc_msgSend_cameraRef(*(a1 + 40), a2, a3);

  sub_1AF1BB2D4(v3, v4);
}

void sub_1AF305FB8(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = objc_msgSend_modelRef(*(a1 + 40), a2, a3);

  sub_1AF1B8AE4(v3, v4);
}

uint64_t sub_1AF3060EC(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(*(a1 + 32) + 8);
  objc_msgSend_coreEntityHandleRef(*(a1 + 40), a2, a3);

  return sub_1AF1BC058(v3);
}

uint64_t sub_1AF30623C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(*(a1 + 32) + 8);
  objc_msgSend_coreEntityHandleRef(*(a1 + 40), a2, a3);

  return sub_1AF1BC058(v3);
}

uint64_t sub_1AF306328(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(*(a1 + 32) + 8);
  objc_msgSend_coreEntityHandleRef(*(a1 + 40), a2, a3);

  return sub_1AF1BC058(v3);
}

id sub_1AF3071DC(uint64_t a1, const char *a2)
{
  result = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], a2, &unk_1F25D4720);
  qword_1ED73B328 = result;
  return result;
}

void sub_1AF3076BC(uint64_t a1, double a2, const char *a3)
{
  objc_msgSend_prepareWithTarget_implicitDuration_(*(a1 + 32), a3, *(a1 + 40));
  if ((sub_1AF292034(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), a2) & 1) == 0)
  {
    os_unfair_lock_lock((*(a1 + 40) + 208));
    objc_msgSend_removeObjectForKey_(*(*(a1 + 40) + 216), v5, *(a1 + 48));
    objc_msgSend_removeWorldReference_(*(a1 + 32), v6, *(*(a1 + 40) + 16));
    v7 = (*(a1 + 40) + 208);

    os_unfair_lock_unlock(v7);
  }
}

void sub_1AF307B50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (v4 == 0.0)
  {
    sub_1AF29213C(v5, v6, a3);
  }

  else
  {
    sub_1AF2921A8(v5, v6, *(a1 + 48), v4);
  }
}

void sub_1AF307CEC(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_animationPlayerWithAnimationPlayerRef_(VFXAnimationPlayer, a2, a3);
  if (v5)
  {
    v7 = v5;
    v8 = *(*(a1 + 32) + 216);

    objc_msgSend_setValue_forKey_(v8, v6, v7, a2);
  }

  else
  {
    v9 = sub_1AF0D5194(0, v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF4728();
    }
  }
}

void sub_1AF30810C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend___CFObject(*(a1 + 32), a2, a3);
  v12 = objc_alloc_init(CFXBinding);
  v7 = objc_msgSend___CFObject(*(a1 + 40), v5, v6);
  objc_msgSend_setSourceObject_(v12, v8, v7);
  objc_msgSend_setKeyPathDst_(v12, v9, *(a1 + 48));
  objc_msgSend_setKeyPathSrc_(v12, v10, *(a1 + 56));
  objc_msgSend_setOptions_(v12, v11, *(a1 + 64));
  sub_1AF16DBF8(v4, v12);
}

void sub_1AF308250(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend___CFObject(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  sub_1AF16DE24(v4, v5);
}

void sub_1AF30831C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend___CFObject(*(a1 + 32), a2, a3);

  sub_1AF16DDA8(v3, v4);
}

uint64_t sub_1AF3083C8(uint64_t a1, const char *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = objc_msgSend_keyPathDst(a3, a2, a3);
  v8 = objc_msgSend_sourceObject(a3, v6, v7);
  v11 = objc_msgSend_keyPathSrc(a3, v9, v10);
  v15 = objc_msgSend_options(a3, v12, v13);

  return objc_msgSend_bindAnimatablePath_toObject_withKeyPath_options_(v4, v14, v5, v8, v11, v15);
}

void sub_1AF308500(id *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend___CFObject(a1[4], a2, a3);
  v7 = objc_msgSend_keyPathDst(a1[5], v5, v6);
  sub_1AF16DE24(v4, v7);
  v24 = objc_alloc_init(CFXBinding);
  v10 = objc_msgSend___CFObject(a1[6], v8, v9);
  objc_msgSend_setSourceObject_(v24, v11, v10);
  v14 = objc_msgSend_keyPathDst(a1[5], v12, v13);
  objc_msgSend_setKeyPathDst_(v24, v15, v14);
  v18 = objc_msgSend_keyPathSrc(a1[5], v16, v17);
  objc_msgSend_setKeyPathSrc_(v24, v19, v18);
  v22 = objc_msgSend_options(a1[5], v20, v21);
  objc_msgSend_setOptions_(v24, v23, v22);
  sub_1AF16DBF8(v4, v24);
}

uint64_t sub_1AF30863C(uint64_t a1, const char *a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = objc_msgSend_sourceObject(a3, a2, a3);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1AF3086E4;
  v8[3] = &unk_1E7A7E3D8;
  v8[4] = *(a1 + 32);
  v8[5] = a3;
  return (*(v5 + 16))(v5, v6, 1, v8);
}

void **sub_1AF308AC8(void **obj, const char *a2, uint64_t a3)
{
  if (obj)
  {
    v3 = obj;
    if ((obj[6] & 6) == 4)
    {
      objc_msgSend__setPausedOrPausedByInheritance_(obj, a2, 0);
    }

    if ((*(v3 + 50) & 2) != 0)
    {
      objc_msgSend__updateFocusableCache(v3[3], a2, a3);
    }

    if (*(v3 + 27))
    {
      objc_msgSend__propagatePhysicsBodyCountChange_(v3[3], a2, -*(v3 + 27));
    }

    objc_sync_enter(v3);
    v6 = v3[3];
    if (v6)
    {
      objc_sync_enter(v3[3]);
      v8 = objc_msgSend_indexOfChildNode_(v3[3], v7, v3);
      if (v8 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v9 = sub_1AF0D5194(0x7FFFFFFFFFFFFFFFLL, 0x7FFFFFFFFFFFFFFFLL);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDF75B0();
        }
      }

      else
      {
        sub_1AF308CDC(v3[3], v8, 0);
      }

      objc_sync_exit(v6);
    }

    else
    {
      v10 = objc_msgSend_world(v3, v4, v5);
      if (objc_msgSend_rootNode(v10, v11, v12) == v3)
      {
        v15 = objc_msgSend_world(v3, v13, v14);
        v18 = objc_msgSend_node(VFXNode, v16, v17);
        objc_msgSend_setRootNode_forLayer_(v15, v19, v18, 0);
      }
    }

    return objc_sync_exit(v3);
  }

  return obj;
}

void sub_1AF308BE4(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1AF308C0C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_nodeRef(*(a1 + 32), a2, a3);
  v7 = *(a1 + 56);
  if (!v7)
  {
    v13 = *(a1 + 48);
    v14 = *(*(a1 + 40) + 8);
    v15 = objc_msgSend_nodeRef(v13, v5, v6);
    v16 = v14;
    v17 = 0;
    goto LABEL_10;
  }

  v8 = v4;
  if (v4)
  {
    v9 = sub_1AF1B9A6C(v4, v5);
    v12 = *(*(a1 + 40) + 8);
    if (v9 == v12)
    {
      v15 = objc_msgSend_nodeRef(*(a1 + 48), v10, v11);
      v16 = v12;
      goto LABEL_9;
    }

    v7 = *(a1 + 56);
  }

  else
  {
    v12 = *(*(a1 + 40) + 8);
  }

  v8 = sub_1AF1B963C(v12, v7 - 1);
  v18 = *(a1 + 48);
  v19 = *(*(a1 + 40) + 8);
  v15 = objc_msgSend_nodeRef(v18, v20, v21);
  v16 = v19;
LABEL_9:
  v17 = v8;
LABEL_10:

  return sub_1AF1B9838(v16, v15, v17);
}

id *sub_1AF308CDC(id *result, unint64_t a2, int a3)
{
  if (result)
  {
    v5 = result;
    objc_sync_enter(result);
    v6 = v5;
    v9 = objc_msgSend_count(v5[4], v7, v8);
    if (v9 <= a2)
    {
      v15 = sub_1AF0D5194(v9, v10);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF75EC();
      }
    }

    else
    {
      v11 = objc_msgSend_objectAtIndex_(v5[4], v10, a2);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = sub_1AF308E10;
      v16[3] = &unk_1E7A7E1D0;
      v16[4] = v11;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v12, v5, v16);
      if (a3)
      {
        objc_msgSend_removeWorldReference_(v5, v13, v5[2]);
      }

      objc_msgSend__setParent_(v11, v13, 0);
      objc_msgSend_removeObjectAtIndex_(v5[4], v14, a2);
    }

    return objc_sync_exit(v5);
  }

  return result;
}

void sub_1AF308E10(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_nodeRef(*(a1 + 32), a2, a3);
  if (v3)
  {

    sub_1AF1B9920(v3, v4);
  }

  else
  {
    v5 = sub_1AF0D5194(0, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF7628();
    }
  }
}

void sub_1AF30900C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_nodeRef(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_nodeRef(*(a1 + 40), v5, v6);
  if (v7)
  {
    v9 = v4 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = sub_1AF0D5194(v7, v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF7724();
    }
  }

  else
  {
    v11 = v7;
    v12 = sub_1AF1B9A34(*(*(a1 + 48) + 8), v4);
    CFRetain(v11);
    sub_1AF1B9920(v4, v13);
    sub_1AF1B9920(v11, v14);
    sub_1AF1B9764(*(*(a1 + 48) + 8), v11, v12);

    CFRelease(v11);
  }
}

__n128 sub_1AF309B58(float32x4_t *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v1.i32[3] = 1.0;
  v2.i32[3] = 1.0;
  v3.i64[0] = 0x3F0000003F000000;
  v3.i64[1] = 0x3F0000003F000000;
  v5[0] = vmulq_f32(vaddq_f32(v1, v2), v3);
  v5[1] = vmulq_f32(vsubq_f32(v2, v1), v3);
  sub_1AF1B7B98(*(a1[4].i64[0] + 8), v5, 1);
  return result;
}

void sub_1AF30A0E0(uint64_t a1)
{
  v2 = sub_1AF27A6EC(*(a1 + 32), 0, 0, 0);
  v5 = objc_msgSend_nodeRef(*(a1 + 40), v3, v4);
  sub_1AF1B8AE4(v5, v2);
  objc_msgSend_setModelRef_(*(a1 + 48), v6, v2);

  CFRelease(v2);
}

void *sub_1AF30A3CC(uint64_t a1, const char *a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = objc_msgSend_animationKeys(*(a1 + 32), a2, a3, 0);
  result = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v11, v15, 16);
  if (result)
  {
    v8 = result;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v4);
        }

        objc_msgSend__pauseAnimation_forKey_pausedByNode_(*(a1 + 32), v7, *(a1 + 40), *(*(&v11 + 1) + 8 * v10), 1);
        v10 = v10 + 1;
      }

      while (v8 != v10);
      result = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v11, v15, 16);
      v8 = result;
    }

    while (result);
  }

  return result;
}

void sub_1AF30ACCC(uint64_t a1, const char *a2, uint64_t a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = MEMORY[0x1E695DF70];
    v6 = objc_msgSend_count(v4, a2, a3);
    v8 = objc_msgSend_arrayWithCapacity_(v5, v7, v6);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = *(a1 + 32);
    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v20, v24, 16);
    if (v11)
    {
      v14 = v11;
      v15 = *v21;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(v9);
          }

          v17 = objc_msgSend_constraintRef(*(*(&v20 + 1) + 8 * i), v12, v13);
          objc_msgSend_addObject_(v8, v18, v17);
        }

        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v20, v24, 16);
      }

      while (v14);
    }

    sub_1AF1BBC34(*(*(a1 + 40) + 8), v8);
  }

  else
  {
    v19 = *(*(a1 + 40) + 8);

    sub_1AF1BBC34(v19, 0);
  }
}

void sub_1AF30B0D8(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = objc_msgSend___CFObject(*(a1 + 40), a2, a3);

  sub_1AF1BBEE8(v3, v4);
}

uint64_t sub_1AF30B238(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_nodeRef(*(a1 + 32), a2, a3);
  if (v4)
  {
    sub_1AF1BB91C(v4, *(a1 + 32), 1);
  }

  v7 = objc_msgSend_nodeRef(*(a1 + 40), v5, v6);
  objc_msgSend_setNodeRef_(*(a1 + 32), v8, v7);
  v9 = *(a1 + 32);

  return sub_1AF1BB5EC(v7, v9);
}

void sub_1AF30B318(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_nodeRef(*(a1 + 32), a2, a3);

  sub_1AF1BB79C(v3, v4);
}

uint64_t sub_1AF30B3C0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_nodeRef(*(a1 + 32), a2, a3);
  sub_1AF1BB91C(v4, *(a1 + 40), 1);
  v6 = *(a1 + 40);

  return MEMORY[0x1EEE66B58](v6, sel_recycle, v5);
}

uint64_t sub_1AF30B4E8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_nodeRef(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);

  return sub_1AF1BB690(v4, v5, v6);
}

void sub_1AF30B5A0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_nodeRef(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  sub_1AF1BB848(v4, v5, 1);
}

void sub_1AF30B69C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_nodeRef(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);

  sub_1AF1BB9E4(v4, v5, v6);
}

void *sub_1AF30BC60(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2;
  v4 = objc_msgSend_particleEmitter(a2, a2, a3);
  v7 = objc_msgSend_coreEntityHandle(v4, v5, v6);
  v10 = objc_msgSend_entityObject(v7, v8, v9);
  if (v10 && (objc_msgSend_doNotExport(v10, v11, v12) & 1) != 0)
  {
    return 0;
  }

  return v3;
}

uint64_t sub_1AF30CAE0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_nodeRef(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  return sub_1AF1BC324(v4, v5);
}

void *sub_1AF30CFE8(uint64_t a1, void *a2, uint64_t a3)
{
  result = objc_msgSend_physicsBody(a2, a2, a3);
  if (result)
  {
    v6 = result;
    result = objc_msgSend_type(result, v4, v5);
    if (!result)
    {

      return objc_msgSend_resetTransform(v6, v7, v8);
    }
  }

  return result;
}

uint64_t sub_1AF30D63C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 48);
  v11[0] = *(a1 + 32);
  v11[1] = v8;
  v9 = *(a1 + 80);
  v11[2] = *(a1 + 64);
  v11[3] = v9;
  return sub_1AF1BA204(*(*(a1 + 96) + 8), v11, a3, a4, a5, a6, a7, a8);
}

void sub_1AF30D678(uint64_t a1)
{
  sub_1AF1B9F10(*(*(a1 + 80) + 8), *(a1 + 32));
  sub_1AF1BA184(*(*(a1 + 80) + 8), *(a1 + 48), v2, v3, v4, v5, v6, v7, v8);
  v16 = *(*(a1 + 80) + 8);
  v17 = *(a1 + 64);

  sub_1AF1BA078(v16, v17, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_1AF30FA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (a4 && (isKindOfClass & 1) != 0)
  {
    v9 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v8, a2);
    if (v9)
    {
      v10 = v9;
      (*(a4 + 16))(a4, v9);
      return v10;
    }

    else if (*(a1 + 40) == 1)
    {
      (*(a4 + 16))(a4, 0);
    }
  }

  return a2;
}

void sub_1AF30FB30(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

void *VFXNodeGetBoundingSphere(void *a1, const char *a2, uint64_t a3)
{
  v3 = a2;
  v83 = *MEMORY[0x1E69E9840];
  result = objc_msgSend_count(a1, a2, a3);
  if (result)
  {
    Object = objc_msgSend_firstObject(a1, v6, v7, 0.0);
    result = objc_msgSend_nodeRef(Object, v9, v10);
    if (result)
    {
      result = sub_1AF1C3FAC(result, v11);
      if (result)
      {
        v13 = result;
        sub_1AF1CEA20(result, v12);
        v77[0] = MEMORY[0x1E69E9820];
        v77[1] = 3221225472;
        v78 = sub_1AF31036C;
        v79 = &unk_1E7A79EE8;
        v80 = v13;
        memset(v75, 0, sizeof(v75));
        v76 = 1065353216;
        v16 = objc_msgSend_count(a1, v14, v15);
        sub_1AF14505C(v75, vcvtps_u32_f32(v16 / 1.0));
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v17, &v71, v82, 16);
        if (v20)
        {
          v21 = *v72;
          do
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v72 != v21)
              {
                objc_enumerationMutation(a1);
              }

              v23 = *(*(&v71 + 1) + 8 * i);
              v68 = objc_msgSend_nodeRef(v23, v18, v19);
              v59 = &v68;
              sub_1AF31043C(v75, &v68, &unk_1AFE22A40, &v59)[3] = v23;
            }

            v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v18, &v71, v82, 16);
          }

          while (v20);
        }

        v68 = 0xA00000000;
        v69 = v70;
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v18, &v64, v81, 16, v70);
        if (v26)
        {
          v27 = *v65;
          do
          {
            for (j = 0; j != v26; ++j)
            {
              if (*v65 != v27)
              {
                objc_enumerationMutation(a1);
              }

              v59 = objc_msgSend_nodeRef(*(*(&v64 + 1) + 8 * j), v24, v25);
              v29 = sub_1AF144D08(v75, &v59);
              sub_1AF145C50(v75, v29);
              v30 = v59;
              v62[0] = MEMORY[0x1E69E9820];
              v62[1] = 3321888768;
              v62[2] = sub_1AF310374;
              v62[3] = &unk_1F24EC1B8;
              sub_1AF310790(v63, v75);
              v63[5] = &v68;
              sub_1AF1B95A8(v30, v62);
              sub_1AF144AE4(v63);
            }

            v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v24, &v64, v81, 16);
          }

          while (v26);
        }

        v59 = 0xA00000000;
        v60 = v61;
        v31 = v68;
        if (v68)
        {
          v32 = 0;
          v33 = v69;
          v34 = 8 * v68;
          v56 = 0u;
          do
          {
            v35 = *v33;
            if (sub_1AF1C39FC(*v33, 0, &v58))
            {
              v37 = sub_1AF1B9B04(v35, v36);
              sub_1AF1DA304(&v58, v37, &v58);
              if ((v32 & 1) != 0 && (v38 = vsubq_f32(v56, v58), v39 = vmulq_f32(v38, v38), v40 = sqrtf(v39.f32[2] + vaddv_f32(*v39.f32)), (v56.f32[3] + v40) >= v58.f32[3]))
              {
                if ((v58.f32[3] + v40) > v56.f32[3])
                {
                  v41 = ((v56.f32[3] + v58.f32[3]) + v40) * 0.5;
                  v42 = vmlaq_n_f32(v56, v38, (v56.f32[3] - v41) / v40);
                  v42.f32[3] = v41;
                  v56 = v42;
                }

                v32 = 1;
              }

              else
              {
                v32 = 1;
                v56 = v58;
              }
            }

            else if ((v3 & 1) != 0 && (sub_1AF1BB2C8(v35) & 1) != 0 || (v3 & 0x100) != 0 && (sub_1AF1BB0BC(v35, v36) & 1) != 0 || (v3 & 0x1000000) != 0 && !sub_1AF167434(v35))
            {
              v57.n128_u32[2] = 0;
              v57.n128_u64[0] = 0;
              v57 = sub_1AF1B9AB4(v35, v36);
              sub_1AF3103DC(&v59, &v57);
            }

            ++v33;
            v34 -= 8;
          }

          while (v34);
          v43 = v60;
          v31 = v59;
          v44 = v56;
        }

        else
        {
          v32 = 0;
          v44 = 0uLL;
          v43 = v61;
        }

        v45 = v44.f32[3];
        if (v44.f32[3] >= 1.0 || v44.f32[3] <= 0.0)
        {
          v45 = 1.0;
        }

        if (v31)
        {
          v47 = 16 * v31;
          v48 = v43;
          do
          {
            v49 = *v48;
            v49.f32[3] = v45;
            if (v32)
            {
              v50 = vsubq_f32(v44, *v48);
              v51 = vmulq_f32(v50, v50);
              v52 = sqrtf(v51.f32[2] + vaddv_f32(*v51.f32));
              if ((v44.f32[3] + v52) >= v45)
              {
                if ((v45 + v52) > v44.f32[3])
                {
                  v53 = ((v45 + v44.f32[3]) + v52) * 0.5;
                  v44 = vmlaq_n_f32(v44, v50, (v44.f32[3] - v53) / v52);
                  v44.f32[3] = v53;
                }

                v49 = v44;
              }
            }

            ++v48;
            v32 = 1;
            v44 = v49;
            v47 -= 16;
          }

          while (v47);
        }

        if (HIDWORD(v59))
        {
          v54 = v43 == v61;
        }

        else
        {
          v54 = 1;
        }

        if (!v54)
        {
          free(v43);
        }

        if (HIDWORD(v68))
        {
          if (v69 != v55)
          {
            free(v69);
          }
        }

        sub_1AF144AE4(v75);
        return (v78)(v77);
      }
    }
  }

  return result;
}

void sub_1AF3102CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, int a57, int a58, void *a59)
{
  if (a58)
  {
    if (a59 != a9)
    {
      free(a59);
    }
  }

  sub_1AF144AE4(&STACK[0x220]);
  (STACK[0x258])(&STACK[0x248]);
  _Unwind_Resume(a1);
}

uint64_t sub_1AF310374(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (sub_1AF3106A4((a1 + 32), &v4))
  {
    return 1;
  }

  sub_1AF1576F0(*(a1 + 72), &v4);
  return 0;
}

__n128 sub_1AF3103DC(unsigned int *a1, __n128 *a2)
{
  v4 = *a1;
  if (*a1 + 1 > a1[1])
  {
    sub_1AF310A6C(a1, 1, 0);
    v4 = *a1;
  }

  result = *a2;
  *(*(a1 + 1) + 16 * v4) = *a2;
  ++*a1;
  return result;
}

void *sub_1AF31043C(void *a1, void *a2, uint64_t a3, void **a4)
{
  v4 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v5 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v4 >> 47) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (v11[2] != *a2)
  {
    goto LABEL_17;
  }

  return v11;
}

void *sub_1AF3106A4(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (result = *v8; result; result = *result)
  {
    v10 = result[1];
    if (v5 == v10)
    {
      if (result[2] == *a2)
      {
        return result;
      }
    }

    else
    {
      if (v6.u32[0] > 1uLL)
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

      if (v10 != v7)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1AF310790(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_1AF14505C(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_1AF310808(a1, i + 2, i + 1);
  }

  return a1;
}

void *sub_1AF310808(void *a1, void *a2, _OWORD *a3)
{
  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
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

  if (v10[2] != *a2)
  {
    goto LABEL_17;
  }

  return v10;
}

void sub_1AF310A6C(unsigned int *a1, int a2, int a3)
{
  v4 = *(a1 + 1);
  v5 = a1 + 4;
  v6 = 1.5;
  if (a3)
  {
    v6 = 1.0;
  }

  v7 = (v6 * (a1[1] + a2));
  v8 = malloc_type_malloc(16 * v7, 0xBBD05BDCuLL);
  memset(v8, 255, 16 * v7);
  memcpy(v8, v4, 16 * *a1);
  *(a1 + 1) = v8;
  a1[1] = v7;
  if (v4 != v5)
  {

    free(v4);
  }
}

uint64_t sub_1AF3113C8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_modelRef(*(a1 + 32), a2, a3);
  sub_1AF1BE75C(v4, *(*(a1 + 32) + 176));
  sub_1AF1C236C(v4, 0, *(*(a1 + 32) + 184));
  v5 = 1;
  sub_1AF1C236C(v4, 1, *(*(a1 + 32) + 188));
  sub_1AF1C236C(v4, 2, *(*(a1 + 32) + 192));
  sub_1AF1C236C(v4, 3, *(*(a1 + 32) + 200));
  sub_1AF1C236C(v4, 4, *(*(a1 + 32) + 196));
  sub_1AF1C236C(v4, 7, *(*(a1 + 32) + 208));
  sub_1AF1C236C(v4, 5, *(*(a1 + 32) + 204));
  sub_1AF1C236C(v4, 6, *(*(a1 + 32) + 212));
  sub_1AF1C213C(v4, 9, *(*(a1 + 32) + 224));
  sub_1AF1C213C(v4, 10, *(*(a1 + 32) + 232));
  sub_1AF1C213C(v4, 11, *(*(a1 + 32) + 240));
  sub_1AF1C213C(v4, 12, *(*(a1 + 32) + 248));
  sub_1AF1C213C(v4, 15, *(*(a1 + 32) + 264));
  sub_1AF1C213C(v4, 14, *(*(a1 + 32) + 272));
  sub_1AF1C213C(v4, 12, *(*(a1 + 32) + 256));
  sub_1AF1C2E10(v4, *(*(a1 + 32) + 216));
  sub_1AF1C2BE0(v4, *(*(a1 + 32) + 280));
  sub_1AF1C236C(v4, 18, *(*(a1 + 32) + 288));
  sub_1AF1C213C(v4, 17, *(*(a1 + 32) + 296));
  v6 = *(a1 + 32);
  if ((*(v6 + 292) & 1) == 0)
  {
    if (*(v6 + 293))
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }
  }

  return sub_1AF1C213C(v4, 19, v5);
}

uint64_t sub_1AF312018(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = a1 + 32;
  v3 = *(a1 + 32);
  v4 = *(v5 + 8);
  if (v4 >= 9)
  {
    v6 = 2;
  }

  else
  {
    v6 = v4;
  }

  v7 = objc_msgSend_modelRef(v3, a2, a3);

  return sub_1AF1BE75C(v7, v6);
}

void sub_1AF312208(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_modelRef(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF1C29CC(v4, v5, v6);
}

void sub_1AF312380(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_modelRef(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF1C26EC(v4, v5, v6);
}

void sub_1AF3124F8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_modelRef(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF1C2804(v4, v5, v6);
}

void sub_1AF312670(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_modelRef(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF1C2D60(v4, v5, v6);
}

void sub_1AF3127F0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_modelRef(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF1C25D4(v4, v5, v6);
}

void sub_1AF312968(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_modelRef(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF1C2C48(v4, v5, v6);
}

void sub_1AF312AE0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_modelRef(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF1C2F90(v4, v5, v6);
}

void sub_1AF312C58(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_modelRef(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF1C2E78(v4, v5, v6);
}

void sub_1AF312DBC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_modelRef(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  sub_1AF1C2E10(v4, v5);
}

void sub_1AF312F20(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_modelRef(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  sub_1AF1C2A7C(v4, v5);
}

void sub_1AF313084(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_modelRef(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  sub_1AF1C279C(v4, v5);
}

void sub_1AF3131E8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_modelRef(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  sub_1AF1C28B4(v4, v5);
}

void sub_1AF31334C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_modelRef(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  sub_1AF1C2684(v4, v5);
}

void sub_1AF3134B0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_modelRef(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  sub_1AF1C2684(v4, v5);
}

void sub_1AF313614(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_modelRef(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  sub_1AF1C2F28(v4, v5);
}

void sub_1AF313778(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_modelRef(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  sub_1AF1C2B2C(v4, v5);
}

void sub_1AF3138DC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_modelRef(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  sub_1AF1C2BE0(v4, v5);
}

void sub_1AF313A54(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_modelRef(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF1C2CF8(v4, v5, v6);
}

void sub_1AF313BB0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_modelRef(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  sub_1AF1C2964(v4, v5);
}

uint64_t sub_1AF313E24(uint64_t result, const char *a2, uint64_t a3)
{
  v3 = *(result + 40);
  if (v3 == 2)
  {
    v4 = objc_msgSend_modelRef(*(result + 32), a2, a3);
    v5 = 1;
LABEL_9:

    return sub_1AF1C24C0(v4, v5);
  }

  if (v3 != 1)
  {
    if (v3)
    {
      return result;
    }

    v4 = objc_msgSend_modelRef(*(result + 32), a2, a3);
    v5 = 0;
    goto LABEL_9;
  }

  v6 = objc_msgSend_modelRef(*(result + 32), a2, a3);

  return sub_1AF1C2578(v6, 1);
}

uint64_t sub_1AF314D58(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v6 = *(*(a1 + 32) + 24);

    return objc_msgSend_removeWorldReference_(a2, v5, v6);
  }

  return result;
}

uint64_t sub_1AF314DB8(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v6 = *(*(a1 + 32) + 24);

    return objc_msgSend_addWorldReference_(a2, v5, v6);
  }

  return result;
}

void *sub_1AF31547C(uint64_t a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend___CFObject(*(*(a1 + 32) + 8), a2, a3);
  if (result)
  {
    v6 = sub_1AF16A4C8(result, v4, v5);

    return objc_msgSend_killParticles(v6, v7, v8);
  }

  return result;
}

void *sub_1AF315534(uint64_t a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend___CFObject(*(*(a1 + 32) + 8), a2, a3);
  if (result)
  {
    v6 = sub_1AF16A4C8(result, v4, v5);

    return objc_msgSend_restart(v6, v7, v8);
  }

  return result;
}

void *sub_1AF315620(uint64_t a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend___CFObject(*(*(a1 + 32) + 8), a2, a3);
  if (result)
  {
    result = sub_1AF16A4C8(result, v4, v5);
    if (result)
    {

      return MEMORY[0x1EEE66B58](result, sel_setSimulationRate_, v6);
    }
  }

  return result;
}

void *sub_1AF315770(uint64_t a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend___CFObject(*(*(a1 + 32) + 8), a2, a3);
  if (result)
  {
    result = sub_1AF16A4C8(result, v5, v6);
    if (result)
    {
      v9 = result;
      v10 = objc_msgSend_nodeRef(*(a1 + 40), v7, v8);

      return MEMORY[0x1EEE66B58](v9, sel_setSimulationAnchor_, v10);
    }
  }

  return result;
}

uint64_t sub_1AF315914(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v6 = *(*(a1 + 32) + 24);

    return objc_msgSend_removeWorldReference_(a2, v5, v6);
  }

  return result;
}

uint64_t sub_1AF315974(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v6 = *(*(a1 + 32) + 24);

    return objc_msgSend_addWorldReference_(a2, v5, v6);
  }

  return result;
}

void *sub_1AF316A50(uint64_t a1, char *a2)
{
  result = objc_msgSend__srcAssociatedNode_(*(a1 + 32), a2, a2);
  if (!result)
  {
    v7 = objc_msgSend_parentNode(a2, v5, v6);
    result = objc_msgSend__srcAssociatedNode_(*(a1 + 32), v8, v7);
    if (result)
    {
      v10 = result;
      v11 = *(a1 + 32);

      return objc_msgSend_addOperation_src_dst_(v11, v9, 0, a2, v10);
    }
  }

  return result;
}

void *sub_1AF316AC8(uint64_t a1, const char *a2)
{
  result = objc_msgSend__dstHasAssociatedNode_(*(a1 + 32), a2, a2);
  if ((result & 1) == 0)
  {
    v6 = *(a1 + 32);

    return objc_msgSend_addOperation_src_dst_(v6, v5, 1, a2, a2);
  }

  return result;
}

uint64_t sub_1AF31755C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_modelRef(*(a1 + 32), a2, a3);
  sub_1AF16ED28(v4, v5, *(*(a1 + 32) + 180));
  v8 = objc_msgSend_modelRef(*(a1 + 32), v6, v7);
  sub_1AF16EDF8(v8, v9, *(*(a1 + 32) + 184));
  v12 = objc_msgSend_modelRef(*(a1 + 32), v10, v11);
  sub_1AF16EEC8(v12, v13, *(*(a1 + 32) + 188));
  v16 = objc_msgSend_modelRef(*(a1 + 32), v14, v15);
  sub_1AF16EF98(v16, v17, *(*(a1 + 32) + 208));
  v20 = objc_msgSend_modelRef(*(a1 + 32), v18, v19);
  v21 = *(*(a1 + 32) + 192);

  return sub_1AF16F0E0(v20, v21);
}

void sub_1AF317868(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_modelRef(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF16EF98(v4, v5, v6);
}

uint64_t sub_1AF31793C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_modelRef(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  return sub_1AF16F0E0(v4, v5);
}

uint64_t sub_1AF317A98(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_modelRef(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  return sub_1AF16F0C0(v4, v5);
}

uint64_t sub_1AF317BFC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_modelRef(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  return sub_1AF16F0D0(v4, v5);
}

void sub_1AF317DD8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_modelRef(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF16EEC8(v4, v5, v6);
}

void sub_1AF317F34(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_modelRef(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF16EDF8(v4, v5, v6);
}

void sub_1AF318100(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_modelRef(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  sub_1AF16F050(v4, v5);
}

void sub_1AF31825C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_modelRef(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF16ED28(v4, v5, v6);
}

id sub_1AF319630(uint64_t a1, const char *a2)
{
  result = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], a2, &unk_1F25D4738);
  qword_1EB658CB8 = result;
  return result;
}

void sub_1AF319710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_1AF319728(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = objc_msgSend_name(a2, a2, a3);
  result = objc_msgSend_isEqualToString_(v5, v6, *(a1 + 32));
  if (result)
  {
    if (++*(*(*(a1 + 40) + 8) + 24) == 2)
    {
      *a3 = 1;
    }
  }

  return result;
}

void sub_1AF319E80(void *a1)
{
  objc_begin_catch(a1);

  objc_end_catch();
}

void *sub_1AF31A8DC(uint64_t a1, void *a2, uint64_t a3)
{
  if (objc_msgSend_light(a2, a2, a3))
  {
    v6 = objc_msgSend_light(a2, v4, v5);
    v9 = objc_msgSend_copy(v6, v7, v8);
    objc_msgSend_setLight_(a2, v10, v9);
  }

  result = objc_msgSend_camera(a2, v4, v5);
  if (result)
  {
    v14 = objc_msgSend_camera(a2, v12, v13);
    v18 = objc_msgSend_copy(v14, v15, v16);

    return objc_msgSend_setCamera_(a2, v17, v18);
  }

  return result;
}

void sub_1AF31B044(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_contents(a2, a2, a3);
  v8 = objc_msgSend_length(a2, v6, v7);
  v9 = xpc_shmem_create(v5, v8);
  if (v9)
  {
    v13 = v9;
    v11 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v10, a2);
    NSLog(&cfstr_ProducerNewBuf.isa, v11, a2);
    objc_msgSend_setObject_forKey_(*(a1 + 32), v12, v13, v11);
  }
}

uint64_t sub_1AF31B0FC(uint64_t a1, const char *a2)
{
  v4 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], a2, a2);
  NSLog(&cfstr_ProducerDestro.isa, v4, a2);
  v5 = *(a1 + 32);
  v9 = objc_msgSend_null(MEMORY[0x1E695DFB0], v6, v7);

  return objc_msgSend_setObject_forKey_(v5, v8, v9, v4);
}

uint64_t sub_1AF31B180(uint64_t a1, const char *a2)
{
  v4 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], a2, a2);
  NSLog(&cfstr_ProducerDestro_0.isa, v4, a2);
  v5 = *(a1 + 32);
  v9 = objc_msgSend_null(MEMORY[0x1E695DFB0], v6, v7);

  return objc_msgSend_setObject_forKey_(v5, v8, v9, v4);
}

uint64_t sub_1AF31B318(uint64_t a1, const char *a2, uint64_t a3, float32x4_t a4, float32x4_t a5)
{
  v5 = a3;
  objc_msgSend_setBoundingBoxMax_(*(a1 + 32), a2, a3, *vaddq_f32(a4, a5).i64);
  objc_msgSend_setBoundingBoxMin_(*(a1 + 32), v8, v9, *vsubq_f32(a4, a5).i64);
  objc_msgSend_setRenderingOrder_(*(a1 + 32), v10, a2);
  objc_msgSend_setPrimitiveType_(*(a1 + 32), v11, 3);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1AF31B400;
  v16[3] = &unk_1E7A7EE88;
  v17 = *(a1 + 40);
  v18 = *(a1 + 56);
  v19 = v5;
  objc_msgSend_setEncodeHandler_(*(a1 + 32), v12, v16);
  return (*(*(a1 + 64) + 16))();
}

void sub_1AF31B400(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = a2;
  v5 = *(a1 + 32);
  v6 = v2;
  sub_1AF22E778(&v4, v3);
}

VFXRemoteRendererProxyRegistry *sub_1AF31B56C()
{
  result = objc_alloc_init(VFXRemoteRendererProxyRegistry);
  qword_1EB658CC8 = result;
  return result;
}

void sub_1AF31DA34(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 48);
  if (v4 || (v4 = objc_msgSend_worldRef(*(a1 + 32), a2, a3)) != 0)
  {
    sub_1AF1CEA20(v4, a2);
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = objc_msgSend_nodeRef(*(a1 + 32), a2, v5);
  v9 = sub_1AF12F0C4(*(*(a1 + 40) + 136), v8);
  if (v9 && (v11 = sub_1AF1BB260(v9, v10)) != 0)
  {
    v13 = sub_1AF15CE6C(v11, v12);
  }

  else
  {
    v13 = 0;
  }

  sub_1AF12EA28(*(*(a1 + 40) + 136), v7);
  if (v7)
  {
    v15 = sub_1AF1BB260(v7, v14);
    v18 = v15 ? sub_1AF15CE6C(v15, v16) : 0;
    v19 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v16, v17);
    v21 = sub_1AF1C3FAC(v7, v20);
    objc_msgSend_postNotificationName_object_(v19, v22, @"kCFXWorldDidUpdateNotification", v21);
    if (v18 != v13)
    {
      v23 = sub_1AF1C3FAC(v7, v14);
      sub_1AF1BE334(@"kCFXNotificationEngineContextInvalidatePasses", v23, 0, 1u);
    }
  }

  if ((v6 & 1) == 0)
  {

    sub_1AF1CEA9C(v4, v14);
  }
}

float sub_1AF31DB90(float a1, double a2)
{
  v3 = __tanpi(a1 / 360.0);
  v4 = atan(v3 * a2);
  if (v4 < 0.0)
  {
    v5 = 3.14159265 - v4;
    v4 = v5;
  }

  return v4 * 114.591559;
}

float sub_1AF31DC00(float a1, double a2)
{
  v3 = __tanpi(a1 / 360.0);
  v4 = atan(v3 / a2);
  if (v4 < 0.0)
  {
    v5 = 3.14159265 - v4;
    v4 = v5;
  }

  return v4 * 114.591559;
}

CFTypeRef sub_1AF31DD10(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_nodeRef(*(a1 + 32), a2, a3);
  v5 = *(*(a1 + 40) + 136);

  return sub_1AF12F27C(v5, v4);
}

uint64_t sub_1AF31E650(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AF12F434(a1, a2);
  if (!v2)
  {
    return 0;
  }

  if ((*(v2 + 228) & 0x200) == 0)
  {
    if ((*(v2 + 232) & 0x200) == 0)
    {
      return 0;
    }

    v2 = *(v2 + 272);
  }

  return MEMORY[0x1EEE66B58](v2, sel__wantsCustomMainPassPostProcessForRenderer_, v2);
}

void **sub_1AF31E6A0(uint64_t a1, _DWORD *a2)
{
  result = sub_1AF12F434(a1, a2);
  if (result)
  {
    if ((*(result + 114) & 0x200) != 0)
    {
      v5 = 0;
      result = objc_msgSend__customMainPassPostProcessUsesExtraRenderTargetForRenderer_pixelFormat_(result, v4, result, &v5);
    }

    else
    {
      if ((result[29] & 0x200) == 0)
      {
        return 0;
      }

      v5 = 0;
      result = objc_msgSend__customMainPassPostProcessUsesExtraRenderTargetForRenderer_pixelFormat_(result[34], v4, result, &v5);
    }

    *a2 = v5;
  }

  return result;
}

uint64_t sub_1AF31E714(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AF12F434(a1, a2);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  if ((*(v2 + 228) & 0x200) == 0)
  {
    if ((*(v2 + 232) & 0x200) == 0)
    {
      return 0;
    }

    v2 = *(v2 + 272);
  }

  return MEMORY[0x1EEE66B58](v2, sel__usesSpecificMainPassClearColorForRenderer_clearColor_, v3);
}

BOOL sub_1AF31E860(uint64_t a1, void *a2, _BYTE *a3)
{
  v4 = objc_msgSend_camera(a2, a2, a3);
  if (v4)
  {
    *a3 = 1;
  }

  return v4 != 0;
}

uint64_t sub_1AF31ED84(uint64_t a1, uint64_t a2)
{
  result = sub_1AF12F434(a1, a2);
  if (result)
  {
    v5 = result;
    v6 = sub_1AF12DDCC(a1, v4);
    v7 = sub_1AF16CDEC(v6);

    return MEMORY[0x1EEE66B58](v5, sel__willRenderWorld_, v7);
  }

  return result;
}

uint64_t sub_1AF31EDE0(uint64_t a1, uint64_t a2)
{
  result = sub_1AF12F434(a1, a2);
  if (result)
  {
    v5 = result;
    v6 = sub_1AF12DDCC(a1, v4);
    v7 = sub_1AF16CDEC(v6);

    return MEMORY[0x1EEE66B58](v5, sel__didRenderWorld_, v7);
  }

  return result;
}

uint64_t sub_1AF31EE3C(uint64_t a1, uint64_t a2)
{
  result = sub_1AF12F434(a1, a2);
  if (result)
  {

    return MEMORY[0x1EEE66B58](result, sel__readSubdivCacheForHash_, a2);
  }

  return result;
}

uint64_t sub_1AF31EE84(uint64_t a1, uint64_t a2)
{
  result = sub_1AF12F434(a1, a2);
  if (result)
  {

    return MEMORY[0x1EEE66B58](result, sel__writeSubdivCacheForHash_dataProvider_, a2);
  }

  return result;
}

void *sub_1AF31EED4(uint64_t a1, uint64_t a2)
{
  result = sub_1AF12F434(a1, a2);
  if (result)
  {
    v5 = result;
    if ((*(result + 114) & 0x200) != 0)
    {
      result = objc_msgSend__encodeCustomMainPassPostProcessForRenderer_atTime_helper_(result, v4, result, a2, *(result + 11));
    }

    if ((*(v5 + 116) & 0x200) != 0)
    {
      v6 = *(v5 + 34);
      v7 = *(v5 + 11);

      return objc_msgSend__encodeCustomMainPassPostProcessForRenderer_atTime_helper_(v6, v4, v6, a2, v7);
    }
  }

  return result;
}

id *sub_1AF320C50(id *result, const char *a2, uint64_t a3)
{
  if (a3 >= 1)
  {
    v18 = v8;
    v19 = v7;
    v20 = v6;
    v21 = v5;
    v22 = v4;
    v23 = v3;
    v24 = v9;
    v25 = v10;
    v11 = a3;
    v12 = a2;
    v13 = result;
    do
    {
      v14 = v13[4];
      v15 = *v12++;
      v16 = objc_msgSend_nodeWithNodeRef_(VFXNode, a2, v15, v18, v19, v20, v21, v22, v23, v24, v25);
      result = objc_msgSend_addObject_(v14, v17, v16);
      --v11;
    }

    while (v11);
  }

  return result;
}

void *sub_1AF321778(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(*(a1 + 32) + 136);
  v4 = objc_msgSend_nodeRef(*(a1 + 40), a2, a3);

  return sub_1AF15ABCC(v3, v4);
}

void sub_1AF323510(uint64_t a1, const char *a2, uint64_t a3)
{
  v64 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_world(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_rootNode(v4, v5, v6);
  v9 = objc_msgSend_childNodesPassingTest_(v7, v8, &unk_1F24EC288);
  v12 = objc_msgSend_world(*(a1 + 32), v10, v11);
  v15 = objc_msgSend_rootNode(v12, v13, v14);
  v17 = objc_msgSend_childNodesPassingTest_(v15, v16, &unk_1F24EC2A8);
  v20 = objc_msgSend_array(MEMORY[0x1E695DF70], v18, v19);
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v21, &v59, v63, 16);
  if (v22)
  {
    v25 = v22;
    v26 = *v60;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v60 != v26)
        {
          objc_enumerationMutation(v17);
        }

        v28 = *(*(&v59 + 1) + 8 * i);
        v29 = MEMORY[0x1E696AD98];
        isHidden = objc_msgSend_isHidden(v28, v23, v24);
        v32 = objc_msgSend_numberWithBool_(v29, v31, isHidden);
        objc_msgSend_addObject_(v20, v33, v32);
        v36 = objc_msgSend_nodeRef(v28, v34, v35);
        sub_1AF1B8A78(v36, 1);
      }

      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v23, &v59, v63, 16);
    }

    while (v25);
  }

  v37 = sub_1AF12E8A4(*(*(a1 + 32) + 136));
  v38 = sub_1AF2700D0(*(*(a1 + 32) + 136), *(a1 + 40), v9);
  sub_1AF270D20(v37, v38);
  objc_msgSend_beginFrame_(*(*(a1 + 32) + 216), v39, 0);
  sub_1AF270460(v37, v40, v41);
  objc_msgSend_endFrameWaitingUntilCompleted_status_error_(*(*(a1 + 32) + 216), v42, 1, 0, 0);
  if (objc_msgSend_count(v20, v43, v44))
  {
    v46 = 0;
    do
    {
      v47 = objc_msgSend_objectAtIndexedSubscript_(v17, v45, v46);
      v50 = objc_msgSend_nodeRef(v47, v48, v49);
      v52 = objc_msgSend_objectAtIndexedSubscript_(v20, v51, v46);
      v55 = objc_msgSend_BOOLValue(v52, v53, v54);
      sub_1AF1B8A78(v50, v55);
      ++v46;
    }

    while (v46 < objc_msgSend_count(v20, v56, v57));
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1AF323880;
  block[3] = &unk_1E7A7EF90;
  block[4] = *(a1 + 48);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t sub_1AF32378C(uint64_t a1, void *a2, uint64_t a3)
{
  result = objc_msgSend_light(a2, a2, a3);
  if (result)
  {
    v7 = objc_msgSend_nodeRef(a2, v5, v6);
    if (sub_1AF1BA900(v7, v8))
    {
      return 0;
    }

    else
    {
      v11 = objc_msgSend_light(a2, v9, v10);
      result = objc_msgSend_isBaked(v11, v12, v13);
      if (result)
      {
        v16 = objc_msgSend_light(a2, v14, v15);
        if (objc_msgSend_type(v16, v17, v18) == 2)
        {
          return 1;
        }

        else
        {
          v21 = objc_msgSend_light(a2, v19, v20);
          result = objc_msgSend_type(v21, v22, v23);
          if (result != 1)
          {
            v26 = objc_msgSend_light(a2, v24, v25);
            return objc_msgSend_type(v26, v27, v28) == 3;
          }
        }
      }
    }
  }

  return result;
}

void *sub_1AF323824(uint64_t a1, void *a2, uint64_t a3)
{
  result = objc_msgSend_light(a2, a2, a3);
  if (result)
  {
    v7 = objc_msgSend_light(a2, v5, v6);
    result = 0;
    if (objc_msgSend_type(v7, v8, v9) == 4)
    {
      v12 = objc_msgSend_light(a2, v10, v11);
      if (!objc_msgSend_probeType(v12, v13, v14))
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_1AF323880(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void *sub_1AF323918(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend__engineContext(*(a1 + 32), a2, a3);
  result = objc_msgSend_isAborting(*(a1 + 40), v5, v6);
  if ((result & 1) == 0)
  {
    objc_msgSend_lock(*(a1 + 32), v8, v9);
    v11 = sub_1AF12DDCC(v4, v10);
    sub_1AF1CEA20(v11, v12);
    sub_1AF1309A4(v4, 1);
    sub_1AF1309CC(v4, *(a1 + 48));
    sub_1AF1309DC(v4, *(a1 + 56));
    v13 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    objc_msgSend__beginFrame(*(a1 + 32), v14, v15);
    objc_msgSend__render(*(a1 + 32), v16, v17);
    sub_1AF1309DC(v4, 1);
    sub_1AF1309A4(v4, 0);
    objc_msgSend__endFrame(*(a1 + 32), v18, v19);
    sub_1AF1CEA9C(v11, v20);
    if (*(a1 + 57) == 1)
    {
      objc_msgSend__jitterRedisplay(*(*(a1 + 32) + 272), v21, v22);
    }

    objc_msgSend_drain(v13, v21, v22);
    v25 = *(a1 + 32);

    return objc_msgSend_unlock(v25, v23, v24);
  }

  return result;
}

uint64_t CFXGetSharedCommandQueueForDevice(uint64_t a1)
{
  v1 = sub_1AF20C050(VFXMTLResourceManager, a1);
  v2 = sub_1AFDE8698(v1);
  sub_1AF20C174(VFXMTLResourceManager);
  return v2;
}

uint64_t sub_1AF324CB4(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v6 = *(*(a1 + 32) + 64);

    return objc_msgSend_removeWorldReference_(a2, v5, v6);
  }

  return result;
}

uint64_t sub_1AF324D14(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v6 = *(*(a1 + 32) + 64);

    return objc_msgSend_addWorldReference_(a2, v5, v6);
  }

  return result;
}

void sub_1AF3253F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_1AF325410(uint64_t a1, void *a2, _BYTE *a3)
{
  result = objc_msgSend_camera(a2, a2, a3);
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

void sub_1AF325784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (*(a1 + 24))
  {
    v6 = sub_1AF0D5194(a1, a2);
    a1 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDF829C(v6);
    }
  }

  if (*(v5 + 8))
  {
    v7 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF8320(v7);
    }
  }

  v8 = *(v5 + 24);
  if (v8)
  {
    CFRelease(v8);
    *(v5 + 24) = 0;
  }

  *(v5 + 8) = 0;
  *(v5 + 16) = a2;
  *(v5 + 32) = a3;
  *v5 = 1;
  *(v5 + 4) = 1;
  *(v5 + 40) = 0;
}

uint64_t *sub_1AF325DB0(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {

    JUMPOUT(0x1B271C6B0);
  }

  return result;
}

void sub_1AF325E10(uint64_t a1, CFTypeRef *a2)
{
  if (a2)
  {
    if (*a2)
    {
      CFRelease(*a2);
    }

    JUMPOUT(0x1B271C6B0);
  }
}

__n128 sub_1AF325E68(char *a1)
{
  InstanceVariable = object_getInstanceVariable(a1, "_curveToGeometryTransform", 0);
  if (InstanceVariable)
  {
    v3 = &a1[ivar_getOffset(InstanceVariable)];
  }

  else
  {
    v3 = MEMORY[0x1E69E9B18];
  }

  return *v3;
}

uint64_t sub_1AF325FDC(void *a1, void *a2, __CFDictionary *a3, uint64_t a4, void *a5)
{
  v87 = *MEMORY[0x1E69E9840];
  v10 = objc_msgSend_rootNode(a2, a2, a3);
  v13 = objc_msgSend_rootNode(a1, v11, v12);
  CFDictionarySetValue(a3, v10, v13);
  v16 = objc_msgSend_background(a1, v14, v15);
  v19 = objc_msgSend_background(a2, v17, v18);
  sub_1AF327894(v16, v19, a4, a5);
  v22 = objc_msgSend_lightingEnvironment(a1, v20, v21);
  v25 = objc_msgSend_lightingEnvironment(a2, v23, v24);
  sub_1AF327894(v22, v25, a4, a5);
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v28 = objc_msgSend_rootNode(a2, v26, v27, 0);
  v31 = objc_msgSend_childNodes(v28, v29, v30);
  v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v32, &v82, v86, 16);
  if (v33)
  {
    v36 = v33;
    v37 = *v83;
    do
    {
      v38 = 0;
      do
      {
        if (*v83 != v37)
        {
          objc_enumerationMutation(v31);
        }

        v39 = sub_1AF3264A4(*(*(&v82 + 1) + 8 * v38), a3, a4, a5);
        v42 = objc_msgSend_rootNode(a1, v40, v41);
        objc_msgSend_addChildNode_(v42, v43, v39);
        ++v38;
      }

      while (v36 != v38);
      v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v44, &v82, v86, 16);
    }

    while (v36);
  }

  v45 = objc_msgSend_rootNode(a2, v34, v35);
  sub_1AF327760(v45, a3);
  objc_msgSend_startTime(a2, v46, v47);
  objc_msgSend_setStartTime_(a1, v48, v49);
  objc_msgSend_endTime(a2, v50, v51);
  objc_msgSend_setEndTime_(a1, v52, v53);
  v56 = objc_msgSend_fogColor(a2, v54, v55);
  objc_msgSend_setFogColor_(a1, v57, v56);
  objc_msgSend_fogStartDistance(a2, v58, v59);
  *&v60 = v60;
  objc_msgSend_setFogStartDistance_(a1, v61, v62, v60);
  objc_msgSend_fogEndDistance(a2, v63, v64);
  *&v65 = v65;
  objc_msgSend_setFogEndDistance_(a1, v66, v67, v65);
  objc_msgSend_fogDensityExponent(a2, v68, v69);
  *&v70 = v70;
  objc_msgSend_setFogDensityExponent_(a1, v71, v72, v70);
  v75 = objc_msgSend_fogColor(a2, v73, v74);
  objc_msgSend_setFogColor_(a1, v76, v75);
  v79 = objc_msgSend_wantsScreenSpaceReflection(a2, v77, v78);
  return objc_msgSend_setWantsScreenSpaceReflection_(a1, v80, v79);
}

id sub_1AF3264A4(void *a1, const __CFDictionary *a2, uint64_t a3, void *a4)
{
  v796[10] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v7 = a1;
  Value = CFDictionaryGetValue(a2, a1);
  if (!Value)
  {
    Value = objc_msgSend_node(VFXNode, v8, v9);
    CFDictionarySetValue(a2, v7, Value);
    v778 = 0u;
    v779 = 0u;
    v776 = 0u;
    v777 = 0u;
    v13 = objc_msgSend_childNodes(v7, v11, v12);
    v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v776, v788, 16);
    if (v15)
    {
      v18 = v15;
      v19 = *v777;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v777 != v19)
          {
            objc_enumerationMutation(v13);
          }

          v21 = sub_1AF3264A4(*(*(&v776 + 1) + 8 * i), a2, a3, a4);
          objc_msgSend_addChildNode_(Value, v22, v21);
        }

        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v23, &v776, v788, 16);
      }

      while (v18);
    }

    objc_msgSend_transform(v7, v16, v17);
    objc_msgSend_setTransform_(Value, v24, v25, *&v793, *&v794, *&v795, v796[0]);
    objc_msgSend_pivot(v7, v26, v27);
    objc_msgSend_setPivot_(Value, v28, v29, *&v793, *&v794, *&v795, v796[0]);
    v32 = objc_msgSend_castsShadow(v7, v30, v31);
    objc_msgSend_setCastsShadow_(Value, v33, v32);
    v36 = objc_msgSend_name(v7, v34, v35);
    objc_msgSend_setName_(Value, v37, v36);
    v40 = objc_msgSend_identifier(v7, v38, v39);
    objc_msgSend_setIdentifier_(Value, v41, v40);
    v44 = objc_msgSend_geometry(v7, v42, v43);
    v45 = sub_1AF327DA8(v44, a2, a3, a4);
    objc_msgSend_setModel_(Value, v46, v45);
    v49 = objc_msgSend_light(v7, v47, v48);
    if (v49)
    {
      v51 = v49;
      v54 = CFDictionaryGetValue(a2, v49);
      if (!v54)
      {
        v54 = objc_msgSend_light(VFXLight, v52, v53);
        CFDictionarySetValue(a2, v51, v54);
        v57 = objc_msgSend_type(v51, v55, v56);
        v59 = sub_1AF371824(v57, v58);
        objc_msgSend_setType_(v54, v60, v59);
        v63 = objc_msgSend_color(v51, v61, v62);
        objc_msgSend_setColor_(v54, v64, v63);
        objc_msgSend_temperature(v51, v65, v66);
        *&v67 = v67;
        objc_msgSend_setTemperature_(v54, v68, v69, v67);
        if (a3)
        {
          objc_msgSend_intensity(v51, v70, v71);
          *&v74 = v74;
        }

        else
        {
          v77 = objc_msgSend_type(v54, v70, v71);
          objc_msgSend_intensity(v51, v78, v79);
          *&v80 = v80;
          *&v74 = sub_1AF19E02C(v77, *&v80);
        }

        objc_msgSend_setIntensity_(v54, v72, v73, v74);
        v83 = objc_msgSend_name(v51, v81, v82);
        objc_msgSend_setName_(v54, v84, v83);
        v87 = objc_msgSend_castsShadow(v51, v85, v86);
        objc_msgSend_setCastsShadow_(v54, v88, v87);
        if (objc_msgSend_shadowColor(v51, v89, v90))
        {
          v93 = objc_msgSend_shadowColor(v51, v91, v92);
          sub_1AF371798(v93, 0);
          LODWORD(v95) = HIDWORD(v94);
          objc_msgSend_setShadowIntensity_(v54, v94, v96, v95);
        }

        objc_msgSend_shadowRadius(v51, v91, v92);
        *&v97 = v97;
        objc_msgSend_setShadowRadius_(v54, v98, v99, v97);
        objc_msgSend_shadowMapSize(v51, v100, v101);
        objc_msgSend_setShadowMapSize_(v54, v102, v103);
        v106 = objc_msgSend_shadowSampleCount(v51, v104, v105);
        objc_msgSend_setShadowSampleCount_(v54, v107, v106);
        objc_msgSend_shadowBias(v51, v108, v109);
        *&v110 = v110;
        objc_msgSend_setShadowBias_(v54, v111, v112, v110);
        v115 = objc_msgSend_automaticallyAdjustsShadowProjection(v51, v113, v114);
        objc_msgSend_setAutomaticallyAdjustsShadowProjection_(v54, v116, v115);
        objc_msgSend_maximumShadowDistance(v51, v117, v118);
        *&v119 = v119;
        objc_msgSend_setMaximumShadowDistance_(v54, v120, v121, v119);
        v124 = objc_msgSend_forcesBackFaceCasters(v51, v122, v123);
        objc_msgSend_setForcesBackFaceCasters_(v54, v125, v124);
        v128 = objc_msgSend_sampleDistributedShadowMaps(v51, v126, v127);
        objc_msgSend_setSampleDistributedShadowMaps_(v54, v129, v128);
        v132 = objc_msgSend_shadowCascadeCount(v51, v130, v131);
        objc_msgSend_setShadowCascadeCount_(v54, v133, v132);
        objc_msgSend_shadowCascadeSplittingFactor(v51, v134, v135);
        *&v136 = v136;
        objc_msgSend_setShadowCascadeSplittingFactor_(v54, v137, v138, v136);
        objc_msgSend_orthographicScale(v51, v139, v140);
        *&v141 = v141;
        objc_msgSend_setOrthographicScale_(v54, v142, v143, v141);
        objc_msgSend_zNear(v51, v144, v145);
        *&v146 = v146;
        objc_msgSend_setZNear_(v54, v147, v148, v146);
        objc_msgSend_zFar(v51, v149, v150);
        *&v151 = v151;
        objc_msgSend_setZFar_(v54, v152, v153, v151);
        objc_msgSend_attenuationEndDistance(v51, v154, v155);
        *&v156 = v156;
        objc_msgSend_setAttenuationDistance_(v54, v157, v158, v156);
        objc_msgSend_spotInnerAngle(v51, v159, v160);
        *&v161 = v161;
        objc_msgSend_setSpotInnerAngle_(v54, v162, v163, v161);
        objc_msgSend_spotOuterAngle(v51, v164, v165);
        *&v166 = v166;
        objc_msgSend_setSpotOuterAngle_(v54, v167, v168, v166);
        v171 = objc_msgSend_probeType(v51, v169, v170);
        objc_msgSend_setProbeType_(v54, v172, v171);
        updated = objc_msgSend_probeUpdateType(v51, v173, v174);
        objc_msgSend_setProbeUpdateType_(v54, v176, updated);
        objc_msgSend_probeExtents(v51, v177, v178);
        objc_msgSend_setProbeExtents_(v54, v179, v180);
        objc_msgSend_probeOffset(v51, v181, v182);
        objc_msgSend_setProbeOffset_(v54, v183, v184);
        v187 = objc_msgSend__sphericalHarmonics(v51, v185, v186);
        objc_msgSend_set_sphericalHarmonics_(v54, v188, v187);
        v191 = objc_msgSend_parallaxCorrectionEnabled(v51, v189, v190);
        objc_msgSend_setParallaxCorrectionEnabled_(v54, v192, v191);
        objc_msgSend_parallaxExtentsFactor(v51, v193, v194);
        objc_msgSend_setParallaxExtentsFactor_(v54, v195, v196);
        objc_msgSend_parallaxCenterOffset(v51, v197, v198);
        objc_msgSend_setParallaxCenterOffset_(v54, v199, v200);
        if (objc_msgSend_type(v54, v201, v202) == 5)
        {
          v205 = objc_msgSend_areaType(v51, v203, v204);
          objc_msgSend_setAreaType_(v54, v206, v205);
          objc_msgSend_areaExtents(v51, v207, v208);
          objc_msgSend_setAreaExtents_(v54, v209, v210);
          v213 = objc_msgSend_areaPolygonVertices(v51, v211, v212);
          objc_msgSend_setAreaPolygonVertices_(v54, v214, v213);
          v217 = objc_msgSend_drawsArea(v51, v215, v216);
          objc_msgSend_setDrawsArea_(v54, v218, v217);
        }

        v219 = objc_msgSend_doubleSided(v51, v203, v204);
        objc_msgSend_setDoubleSided_(v54, v220, v219);
        v223 = objc_msgSend_categoryBitMask(v51, v221, v222);
        objc_msgSend_setCategoryBitMask_(v54, v224, v223);
        sub_1AF327AD0(v54, v51, v225);
      }

      objc_msgSend_setLight_(Value, v52, v54);
    }

    else
    {
      objc_msgSend_setLight_(Value, v50, 0);
    }

    v226 = objc_msgSend_camera(v7, v75, v76);
    if (v226)
    {
      v228 = v226;
      v230 = CFDictionaryGetValue(a2, v226);
      if (!v230)
      {
        v230 = objc_msgSend_camera(VFXCamera, v227, v229);
        CFDictionarySetValue(a2, v228, v230);
        v233 = objc_msgSend_name(v228, v231, v232);
        objc_msgSend_setName_(v230, v234, v233);
        if (objc_msgSend_wantsDepthOfField(v228, v235, v236))
        {
          v239 = objc_msgSend_depthOfField(VFXCameraEffectDepthOfField, v237, v238);
          objc_msgSend_setDepthOfField_(v230, v240, v239);
          objc_msgSend_fStop(v228, v241, v242);
          v244 = v243;
          v247 = objc_msgSend_depthOfField(v230, v245, v246);
          *&v248 = v244;
          objc_msgSend_setFStop_(v247, v249, v250, v248);
        }

        v251 = objc_msgSend_name(v228, v237, v238);
        objc_msgSend_setName_(v230, v252, v251);
        objc_msgSend_focusDistance(v228, v253, v254);
        *&v255 = v255;
        objc_msgSend_setFocusDistance_(v230, v256, v257, v255);
        objc_msgSend_sensorHeight(v228, v258, v259);
        *&v260 = v260;
        objc_msgSend_setSensorHeight_(v230, v261, v262, v260);
        objc_msgSend_fieldOfView(v228, v263, v264);
        *&v265 = v265;
        objc_msgSend_setFieldOfView_(v230, v266, v267, v265);
        objc_msgSend_postProjectionTransform(v228, v268, v269);
        v789 = v793;
        v790 = v794;
        v791 = v795;
        objc_msgSend_setPostProjectionTransform_(v230, v270, &v789);
        v273 = objc_msgSend_fillMode(v228, v271, v272);
        objc_msgSend_setFillMode_(v230, v274, v273);
        if (objc_msgSend_projectionDirection(v228, v275, v276))
        {
          objc_msgSend_setProjectionDirection_(v230, v277, 3);
        }

        else
        {
          objc_msgSend_setProjectionDirection_(v230, v277, 2);
        }

        objc_msgSend_zNear(v228, v278, v279);
        *&v280 = v280;
        objc_msgSend_setZNear_(v230, v281, v282, v280);
        objc_msgSend_zFar(v228, v283, v284);
        *&v285 = v285;
        objc_msgSend_setZFar_(v230, v286, v287, v285);
        objc_msgSend_orthographicScale(v228, v288, v289);
        *&v290 = v290;
        objc_msgSend_setOrthographicScale_(v230, v291, v292, v290);
        v295 = objc_msgSend_automaticallyAdjustsZRange(v228, v293, v294);
        objc_msgSend_setAutomaticallyAdjustsZRange_(v230, v296, v295);
        v299 = objc_msgSend_usesOrthographicProjection(v228, v297, v298);
        objc_msgSend_setUsesOrthographicProjection_(v230, v300, v299);
        v303 = objc_msgSend_wantsHDR(v228, v301, v302);
        objc_msgSend_setWantsHDR_(v230, v304, v303);
        objc_msgSend_lensShift(v228, v305, v306);
        objc_msgSend_setFilmOffset_(v230, v307, v308);
        objc_msgSend_motionBlurIntensity(v228, v309, v310);
        if (v313 != 0.0)
        {
          v314 = objc_msgSend_motionBlur(VFXCameraEffectMotionBlur, v311, v312);
          objc_msgSend_setMotionBlur_(v230, v315, v314);
          objc_msgSend_motionBlurIntensity(v228, v316, v317);
          v319 = v318;
          v322 = objc_msgSend_motionBlur(v230, v320, v321);
          *&v323 = v319;
          objc_msgSend_setIntensity_(v322, v324, v325, v323);
        }

        objc_msgSend_bloomIntensity(v228, v311, v312);
        if (v328 != 0.0)
        {
          v329 = objc_msgSend_bloom(VFXCameraEffectBloom, v326, v327);
          objc_msgSend_setBloom_(v230, v330, v329);
          objc_msgSend_bloomIntensity(v228, v331, v332);
          v334 = v333;
          v337 = objc_msgSend_bloom(v230, v335, v336);
          *&v338 = v334;
          objc_msgSend_setIntensity_(v337, v339, v340, v338);
          objc_msgSend_bloomThreshold(v228, v341, v342);
          v344 = v343;
          v347 = objc_msgSend_bloom(v230, v345, v346);
          *&v348 = v344;
          objc_msgSend_setThreshold_(v347, v349, v350, v348);
          v353 = objc_msgSend_bloomIterationCount(v228, v351, v352);
          v356 = objc_msgSend_bloom(v230, v354, v355);
          objc_msgSend_setIterationCount_(v356, v357, v353);
        }

        objc_msgSend_vignettingIntensity(v228, v326, v327);
        if (v360 != 0.0)
        {
          objc_msgSend_vignettingPower(v228, v358, v359);
          if (v361 > 0.0)
          {
            v362 = objc_msgSend_vignetting(VFXCameraEffectVignetting, v358, v359);
            objc_msgSend_setVignetting_(v230, v363, v362);
            objc_msgSend_vignettingIntensity(v228, v364, v365);
            v367 = v366;
            v370 = objc_msgSend_vignetting(v230, v368, v369);
            *&v371 = v367;
            objc_msgSend_setIntensity_(v370, v372, v373, v371);
          }
        }

        objc_msgSend_colorFringeStrength(v228, v358, v359);
        if (v376 != 0.0)
        {
          objc_msgSend_colorFringeIntensity(v228, v374, v375);
          if (v377 != 0.0)
          {
            v378 = objc_msgSend_colorFringe(VFXCameraEffectColorFringe, v374, v375);
            objc_msgSend_setColorFringe_(v230, v379, v378);
            objc_msgSend_colorFringeStrength(v228, v380, v381);
            v383 = v382;
            v386 = objc_msgSend_colorFringe(v230, v384, v385);
            *&v387 = v383;
            objc_msgSend_setStrength_(v386, v388, v389, v387);
            objc_msgSend_colorFringeIntensity(v228, v390, v391);
            v393 = v392;
            v396 = objc_msgSend_colorFringe(v230, v394, v395);
            *&v397 = v393;
            objc_msgSend_setIntensity_(v396, v398, v399, v397);
          }
        }

        objc_msgSend_saturation(v228, v374, v375);
        if (v402 != 1.0)
        {
          objc_msgSend_contrast(v228, v400, v401);
          if (v403 != 1.0)
          {
            if (objc_msgSend_wantsHDR(v228, v400, v401))
            {
              v404 = objc_msgSend_colorGrading(VFXCameraEffectColorGrading, v400, v401);
              objc_msgSend_setColorGrading_(v230, v405, v404);
              objc_msgSend_saturation(v228, v406, v407);
              v409 = v408;
              v412 = objc_msgSend_colorGrading(v230, v410, v411);
              *&v413 = v409;
              objc_msgSend_setSaturation_(v412, v414, v415, v413);
              objc_msgSend_contrast(v228, v416, v417);
              v419 = v418 + 1.0;
              v422 = objc_msgSend_colorGrading(v230, v420, v421);
              *&v423 = v419;
              objc_msgSend_setContrast_(v422, v424, v425, v423);
              objc_msgSend_whiteBalanceTemperature(v228, v426, v427);
              v429 = v428 * 0.5;
              v432 = objc_msgSend_colorGrading(v230, v430, v431);
              *&v433 = v429;
              objc_msgSend_setWhiteBalanceTemperature_(v432, v434, v435, v433);
              objc_msgSend_whiteBalanceTint(v228, v436, v437);
              v439 = v438 * 0.5;
              v442 = objc_msgSend_colorGrading(v230, v440, v441);
              *&v443 = v439;
              objc_msgSend_setWhiteBalanceTint_(v442, v444, v445, v443);
            }
          }
        }

        objc_msgSend_grainIntensity(v228, v400, v401);
        if (v448 != 0.0)
        {
          v449 = objc_msgSend_grain(VFXCameraEffectGrain, v446, v447);
          objc_msgSend_setGrain_(v230, v450, v449);
          objc_msgSend_grainScale(v228, v451, v452);
          v454 = v453;
          v457 = objc_msgSend_grain(v230, v455, v456);
          *&v458 = v454;
          objc_msgSend_setScale_(v457, v459, v460, v458);
          IsColored = objc_msgSend_grainIsColored(v228, v461, v462);
          v466 = objc_msgSend_grain(v230, v464, v465);
          objc_msgSend_setColored_(v466, v467, IsColored);
          objc_msgSend_grainIntensity(v228, v468, v469);
          v471 = v470;
          v474 = objc_msgSend_grain(v230, v472, v473);
          *&v475 = v471;
          objc_msgSend_setIntensity_(v474, v476, v477, v475);
        }

        v478 = objc_msgSend_categoryBitMask(v228, v446, v447);
        objc_msgSend_setCategoryBitMask_(v230, v479, v478);
        sub_1AF327AD0(v230, v228, v480);
      }
    }

    else
    {
      v230 = 0;
    }

    objc_msgSend_setCamera_(Value, v227, v230);
    v483 = objc_msgSend_skinner(v7, v481, v482);
    if (v483)
    {
      v485 = v483;
      v488 = CFDictionaryGetValue(a2, v483);
      if (!v488)
      {
        v489 = objc_msgSend_baseGeometry(v485, v486, v487);
        v772 = sub_1AF327DA8(v489, a2, a3, a4);
        if (objc_msgSend_boneWeights(v485, v490, v491))
        {
          v494 = objc_msgSend_boneWeights(v485, v492, v493);
          v770 = sub_1AF328B2C(v494, a2);
        }

        else
        {
          v770 = 0;
        }

        v774 = v7;
        if (objc_msgSend_boneIndices(v485, v492, v493))
        {
          v499 = objc_msgSend_boneIndices(v485, v497, v498);
          v768 = sub_1AF328B2C(v499, a2);
        }

        else
        {
          v768 = 0;
        }

        v500 = objc_msgSend_array(MEMORY[0x1E695DF70], v497, v498);
        v789 = 0u;
        v790 = 0u;
        v791 = 0u;
        v792 = 0u;
        v503 = objc_msgSend_bones(v485, v501, v502);
        v505 = objc_msgSend_countByEnumeratingWithState_objects_count_(v503, v504, &v789, &v793, 16);
        if (v505)
        {
          v508 = v505;
          v509 = *v790;
          do
          {
            for (j = 0; j != v508; ++j)
            {
              if (*v790 != v509)
              {
                objc_enumerationMutation(v503);
              }

              v511 = sub_1AF3264A4(*(*(&v789 + 1) + 8 * j), a2, a3, a4);
              objc_msgSend_addObject_(v500, v512, v511);
            }

            v508 = objc_msgSend_countByEnumeratingWithState_objects_count_(v503, v513, &v789, &v793, 16);
          }

          while (v508);
        }

        v514 = objc_msgSend_geometry(v772, v506, v507);
        v517 = objc_msgSend_boneInverseBindTransforms(v485, v515, v516);
        v488 = objc_msgSend_skinnerWithBaseGeometry_bones_boneInverseBindTransforms_boneWeights_boneIndices_(VFXSkinner, v518, v514, v500, v517, v770, v768);
        v521 = objc_msgSend_skeleton(v485, v519, v520);
        v522 = sub_1AF3264A4(v521, a2, a3, a4);
        objc_msgSend_setSkeleton_(v488, v523, v522);
        objc_msgSend_baseGeometryBindTransform(v485, v524, v525);
        objc_msgSend_setBaseGeometryBindTransform_(v488, v526, v527, *&v784, *&v785, *&v786, *&v787);
        v530 = objc_msgSend__bonesAndIndicesCompression(v485, v528, v529);
        objc_msgSend_set_bonesAndIndicesCompression_(v488, v531, v530);
        CFDictionarySetValue(a2, v485, v488);
        v7 = v774;
      }

      objc_msgSend_setSkinner_(Value, v486, v488);
    }

    else
    {
      objc_msgSend_setSkinner_(Value, v484, 0);
    }

    v532 = objc_msgSend_morpher(v7, v495, v496);
    if (v532)
    {
      v534 = v532;
      v536 = CFDictionaryGetValue(a2, v532);
      if (!v536)
      {
        v537 = objc_alloc_init(VFXMorpher);
        CFDictionarySetValue(a2, v534, v537);
        v539 = objc_msgSend_valueForKey_(v534, v538, @"_useSparseTargets");
        objc_msgSend_setValue_forKey_(v537, v540, v539, @"_useSparseTargets");
        v543 = objc_msgSend_inBetweenCounts(v534, v541, v542);
        v546 = objc_msgSend_count(v543, v544, v545);
        v549 = objc_msgSend_correctivesAndInBetween(v534, v547, v548);
        v771 = v534;
        v773 = v537;
        if (v546 | objc_msgSend_count(v549, v550, v551))
        {
          v775 = v7;
          v576 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v784 = 0u;
          v785 = 0u;
          v786 = 0u;
          v787 = 0u;
          v579 = objc_msgSend_targetsAndInBetween(v534, v577, v578);
          v581 = objc_msgSend_countByEnumeratingWithState_objects_count_(v579, v580, &v784, &v793, 16);
          if (v581)
          {
            v582 = v581;
            v583 = *v785;
            do
            {
              for (k = 0; k != v582; ++k)
              {
                if (*v785 != v583)
                {
                  objc_enumerationMutation(v579);
                }

                v585 = sub_1AF327DA8(*(*(&v784 + 1) + 8 * k), a2, a3, a4);
                v588 = objc_msgSend_geometry(v585, v586, v587);
                objc_msgSend_addObject_(v576, v589, v588);
              }

              v582 = objc_msgSend_countByEnumeratingWithState_objects_count_(v579, v590, &v784, &v793, 16);
            }

            while (v582);
          }

          v560 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v780 = 0u;
          v781 = 0u;
          v782 = 0u;
          v783 = 0u;
          v593 = objc_msgSend_correctivesAndInBetween(v534, v591, v592);
          v595 = objc_msgSend_countByEnumeratingWithState_objects_count_(v593, v594, &v780, &v789, 16);
          if (v595)
          {
            v598 = v595;
            v599 = *v781;
            do
            {
              for (m = 0; m != v598; ++m)
              {
                if (*v781 != v599)
                {
                  objc_enumerationMutation(v593);
                }

                v601 = sub_1AF327DA8(*(*(&v780 + 1) + 8 * m), a2, a3, a4);
                v604 = objc_msgSend_geometry(v601, v602, v603);
                objc_msgSend_addObject_(v560, v605, v604);
              }

              v598 = objc_msgSend_countByEnumeratingWithState_objects_count_(v593, v606, &v780, &v789, 16);
            }

            while (v598);
          }

          v573 = v771;
          v769 = objc_msgSend_inBetweenCounts(v771, v596, v597);
          v767 = objc_msgSend_inBetweenWeights(v771, v607, v608);
          v766 = objc_msgSend_correctiveDriverCounts(v771, v609, v610);
          v613 = objc_msgSend_correctiveDriverIndices(v771, v611, v612);
          v616 = objc_msgSend_correctiveInBetweenCounts(v771, v614, v615);
          v619 = objc_msgSend_correctiveInBetweenWeights(v771, v617, v618);
          v536 = v773;
          objc_msgSend_setTargetsAndInBetweens_inBetweenCounts_inBetweenWeights_correctives_driverCounts_driverIndices_inBetweenCounts_inBetweenWeights_(v773, v620, v576, v769, v767, v560, v766, v613, v616, v619);

          v7 = v775;
        }

        else
        {
          v554 = objc_msgSend_targets(v534, v552, v553);
          v555 = objc_alloc(MEMORY[0x1E695DF70]);
          v558 = objc_msgSend_count(v554, v556, v557);
          v560 = objc_msgSend_initWithCapacity_(v555, v559, v558);
          v789 = 0u;
          v790 = 0u;
          v791 = 0u;
          v792 = 0u;
          v562 = objc_msgSend_countByEnumeratingWithState_objects_count_(v554, v561, &v789, &v793, 16);
          if (v562)
          {
            v564 = v562;
            v565 = *v790;
            do
            {
              for (n = 0; n != v564; ++n)
              {
                if (*v790 != v565)
                {
                  objc_enumerationMutation(v554);
                }

                v567 = sub_1AF327DA8(*(*(&v789 + 1) + 8 * n), a2, a3, a4);
                v570 = objc_msgSend_geometry(v567, v568, v569);
                objc_msgSend_addObject_(v560, v571, v570);
              }

              v564 = objc_msgSend_countByEnumeratingWithState_objects_count_(v554, v572, &v789, &v793, 16);
            }

            while (v564);
          }

          v536 = v773;
          objc_msgSend_setTargets_(v773, v563, v560);
          v573 = v771;
        }

        v623 = objc_msgSend_weights(v573, v621, v622);
        objc_msgSend_setWeights_(v536, v624, v623);
        v627 = objc_msgSend_calculationMode(v573, v625, v626);
        if (v627 <= 1)
        {
          objc_msgSend_setCalculationMode_(v536, v628, v627);
        }

        v630 = objc_msgSend_unifiesNormals(v573, v628, v629);
        objc_msgSend_setUnifiesNormals_(v536, v631, v630);
        shouldMorphNormals = objc_msgSend_shouldMorphNormals(v573, v632, v633);
        objc_msgSend_setShouldMorphNormals_(v536, v635, shouldMorphNormals);
        objc_msgSend_weightIncrementalThreshold(v573, v636, v637);
        objc_msgSend_setWeightIncrementalThreshold_(v536, v638, v639);
        isUsingSparseTargets = objc_msgSend__isUsingSparseTargets(v573, v640, v641);
        v645 = objc_msgSend__isUsingSparseTargets(v536, v643, v644);
        if (isUsingSparseTargets != v645)
        {
          v646 = sub_1AF0D5194(v645, v535);
          if (os_log_type_enabled(v646, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDF83A4(v646);
          }
        }
      }

      objc_msgSend_setMorpher_(Value, v535, v536);
    }

    else
    {
      objc_msgSend_setMorpher_(Value, v533, 0);
    }

    v647 = objc_msgSend_physicsBody(v7, v574, v575);
    if (v647)
    {
      v649 = v647;
      v651 = CFDictionaryGetValue(a2, v647);
      if (!v651)
      {
        v652 = objc_msgSend_type(v649, v648, v650);
        if (v652 >= 3)
        {
          v655 = 1;
        }

        else
        {
          v655 = v652;
        }

        v656 = objc_msgSend_physicsShape(v649, v653, v654);
        v657 = sub_1AF3293F8(v656, a2, a3, a4);
        v651 = objc_msgSend_bodyWithType_shape_(VFXPhysicsBody, v658, v655, v657);
        objc_msgSend_mass(v649, v659, v660);
        *&v661 = v661;
        objc_msgSend_setMass_(v651, v662, v663, v661);
        objc_msgSend_momentOfInertia(v649, v664, v665);
        HIDWORD(v667) = v666;
        objc_msgSend_setMomentOfInertia_(v651, v668, v669, v667);
        v672 = objc_msgSend_usesDefaultMomentOfInertia(v649, v670, v671);
        objc_msgSend_setUsesDefaultMomentOfInertia_(v651, v673, v672);
        objc_msgSend_charge(v649, v674, v675);
        *&v676 = v676;
        objc_msgSend_setCharge_(v651, v677, v678, v676);
        objc_msgSend_friction(v649, v679, v680);
        *&v681 = v681;
        objc_msgSend_setFriction_(v651, v682, v683, v681);
        objc_msgSend_restitution(v649, v684, v685);
        *&v686 = v686;
        objc_msgSend_setRestitution_(v651, v687, v688, v686);
        objc_msgSend_rollingFriction(v649, v689, v690);
        *&v691 = v691;
        objc_msgSend_setRollingFriction_(v651, v692, v693, v691);
        v696 = objc_msgSend_allowsResting(v649, v694, v695);
        objc_msgSend_setAllowsResting_(v651, v697, v696);
        objc_msgSend_velocity(v649, v698, v699);
        HIDWORD(v701) = v700;
        objc_msgSend_setVelocity_(v651, v702, v703, v701);
        objc_msgSend_angularVelocity(v649, v704, v705);
        HIDWORD(v707) = v706;
        objc_msgSend_setAngularVelocity_(v651, v708, v709, v707);
        objc_msgSend_damping(v649, v710, v711);
        *&v712 = v712;
        objc_msgSend_setDamping_(v651, v713, v714, v712);
        objc_msgSend_angularDamping(v649, v715, v716);
        *&v717 = v717;
        objc_msgSend_setAngularDamping_(v651, v718, v719, v717);
        objc_msgSend_velocityFactor(v649, v720, v721);
        HIDWORD(v723) = v722;
        objc_msgSend_setVelocityFactor_(v651, v724, v725, v723);
        objc_msgSend_angularVelocityFactor(v649, v726, v727);
        HIDWORD(v729) = v728;
        objc_msgSend_setAngularVelocityFactor_(v651, v730, v731, v729);
        v734 = objc_msgSend_categoryBitMask(v649, v732, v733);
        objc_msgSend_setCategoryBitMask_(v651, v735, v734);
        v738 = objc_msgSend_collisionBitMask(v649, v736, v737);
        objc_msgSend_setCollisionBitMask_(v651, v739, v738);
        v742 = objc_msgSend_contactTestBitMask(v649, v740, v741);
        objc_msgSend_setContactTestBitMask_(v651, v743, v742);
        isAffectedByGravity = objc_msgSend_isAffectedByGravity(v649, v744, v745);
        objc_msgSend_setAffectedByGravity_(v651, v747, isAffectedByGravity);
        CFDictionarySetValue(a2, v649, v651);
      }
    }

    else
    {
      v651 = 0;
    }

    objc_msgSend_setPhysicsBody_(Value, v648, v651);
    isHidden = objc_msgSend_isHidden(v7, v748, v749);
    objc_msgSend_setHidden_(Value, v751, isHidden);
    objc_msgSend_opacity(v7, v752, v753);
    *&v754 = v754;
    objc_msgSend_setOpacity_(Value, v755, v756, v754);
    v759 = objc_msgSend_renderingOrder(v7, v757, v758);
    objc_msgSend_setRenderingOrder_(Value, v760, v759);
    v763 = objc_msgSend_categoryBitMask(v7, v761, v762);
    objc_msgSend_setCategoryBitMask_(Value, v764, v763);
  }

  return Value;
}

void *sub_1AF327760(void *a1, const __CFDictionary *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  Value = CFDictionaryGetValue(a2, a1);
  if (!Value)
  {
    v7 = sub_1AF0D5194(0, v4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF8428(v7);
    }
  }

  sub_1AF327AD0(Value, a1, v5);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = objc_msgSend_childNodes(a1, v8, v9, 0);
  result = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v17, v21, 16);
  if (result)
  {
    v13 = result;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v10);
        }

        sub_1AF327760(*(*(&v17 + 1) + 8 * v15), a2);
        v15 = v15 + 1;
      }

      while (v13 != v15);
      result = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v16, &v17, v21, 16);
      v13 = result;
    }

    while (result);
  }

  return result;
}

void *sub_1AF327894(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = objc_msgSend_propertyName(a2, a2, a3);
  isEqualToString = objc_msgSend_isEqualToString_(v7, v8, @"transparent");
  if (!isEqualToString || (objc_msgSend_contents(a2, v10, v11), objc_opt_class(), isEqualToString = objc_opt_isKindOfClass(), (isEqualToString & 1) == 0))
  {
    if (sub_1AF28A2DC(isEqualToString, v10) && (objc_msgSend_contents(a2, v13, v14), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v15 = objc_msgSend_contents(a2, v13, v14), (objc_msgSend_isAbsolutePath(v15, v16, v17) & 1) == 0))
    {
      PathComponent = objc_msgSend_URLByDeletingLastPathComponent(a4, v13, v14);
      v71 = objc_msgSend_path(PathComponent, v69, v70);
      v74 = objc_msgSend_contents(a2, v72, v73);
      v18 = objc_msgSend_stringByAppendingPathComponent_(v71, v75, v74);
    }

    else
    {
      v18 = objc_msgSend_contents(a2, v13, v14);
    }

    objc_msgSend_setContents_(a1, v19, v18);
  }

  v20 = objc_msgSend_minificationFilter(a2, v10, v12);
  objc_msgSend_setMinificationFilter_(a1, v21, v20);
  v24 = objc_msgSend_magnificationFilter(a2, v22, v23);
  objc_msgSend_setMagnificationFilter_(a1, v25, v24);
  v28 = objc_msgSend_mipFilter(a2, v26, v27);
  objc_msgSend_setMipFilter_(a1, v29, v28);
  if (a2)
  {
    objc_msgSend_contentsTransform(a2, v30, v31);
    v33 = v76;
    v35 = v77.i32[1];
    LODWORD(v34) = v77.i32[0];
    v37 = v78.i32[0];
    v36 = v79;
    v38 = vextq_s8(v79, vtrn2q_s32(v78, v79), 4uLL);
    v39 = vzip2q_s64(v78, v77);
    v32 = vextq_s8(v33, v33, 8uLL);
    *v32.i8 = vext_s8(*v76.i8, *v32.i8, 4uLL);
  }

  else
  {
    v36 = 0uLL;
    v32.i64[0] = 0;
    v35 = 0;
    v37 = 0;
    LODWORD(v34) = 0;
    v33 = 0uLL;
    v38 = 0uLL;
    v39 = 0uLL;
  }

  HIDWORD(v34) = v35;
  v40 = vextq_s8(v38, v39, 8uLL);
  v40.i32[0] = v37;
  objc_msgSend_setContentsTransform_(a1, v30, v31, *vextq_s8(vextq_s8(v33, v33, 4uLL), v32, 0xCuLL).i64, v34, *v40.i64, *vextq_s8(vextq_s8(v36, v36, 4uLL), v38, 0xCuLL).i64);
  v43 = objc_msgSend_wrapS(a2, v41, v42);
  objc_msgSend_setWrapS_(a1, v44, v43);
  v47 = objc_msgSend_wrapT(a2, v45, v46);
  objc_msgSend_setWrapT_(a1, v48, v47);
  objc_msgSend_intensity(a2, v49, v50);
  *&v51 = v51;
  objc_msgSend_setIntensity_(a1, v52, v53, v51);
  v56 = objc_msgSend_sRGBTexture(a2, v54, v55);
  objc_msgSend_setColorManaged_(a1, v57, v56);
  v60 = objc_msgSend_mappingChannel(a2, v58, v59);
  objc_msgSend_setMappingChannel_(a1, v61, v60);
  v64 = objc_msgSend_textureComponents(a2, v62, v63);
  objc_msgSend_setTextureComponents_(a1, v65, v64);
  return sub_1AF327AD0(a1, a2, v66);
}

void *sub_1AF327AD0(void *a1, void *a2, uint64_t a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = objc_msgSend_animationKeys(a2, a2, a3, 0);
  result = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v24, v28, 16);
  if (result)
  {
    v9 = result;
    v10 = *v25;
    do
    {
      v11 = 0;
      do
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v24 + 1) + 8 * v11);
        v13 = objc_msgSend_animationPlayerForKey_(a2, v8, v12);
        v16 = objc_msgSend_animation(v13, v14, v15);
        v19 = objc_msgSend_caAnimation(v16, v17, v18);
        sub_1AF327C08(v19, v20);
        v22 = objc_msgSend_animationWithCAAnimation_(VFXAnimation, v21, v19);
        objc_msgSend_addAnimation_forKey_(a1, v23, v22, v12);
        v11 = v11 + 1;
      }

      while (v9 != v11);
      result = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v24, v28, 16);
      v9 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_1AF327C08(void *a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = objc_msgSend_animations(a1, v3, v4, 0);
    result = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v20, v24, 16);
    if (result)
    {
      v9 = result;
      v10 = *v21;
      do
      {
        v11 = 0;
        do
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v5);
          }

          sub_1AF327C08(*(*(&v20 + 1) + 8 * v11++), v8);
        }

        while (v9 != v11);
        result = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v20, v24, 16);
        v9 = result;
      }

      while (result);
    }
  }

  else
  {
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if (result)
    {
      v14 = objc_msgSend_keyPath(a1, v12, v13);
      v16 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v14, v15, @"geometry.", @"model.");
      v19 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v16, v17, @"/node-", @"/");

      return objc_msgSend_setKeyPath_(a1, v18, v19);
    }
  }

  return result;
}

void *sub_1AF327DA8(void *key, CFDictionaryRef theDict, uint64_t a3, void *a4)
{
  *(&v398[2] + 4) = *MEMORY[0x1E69E9840];
  if (!key)
  {
    return 0;
  }

  v6 = theDict;
  v7 = key;
  Value = CFDictionaryGetValue(theDict, key);
  if (!Value)
  {
    v9 = objc_opt_class();
    v357 = v7;
    theDicta = v6;
    if (v9 != objc_opt_class())
    {
      v12 = CFDictionaryGetValue(v6, v7);
      if (!v12)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_msgSend_width(v7, v13, v14);
          v16 = v15;
          objc_msgSend_height(v7, v17, v18);
          v20 = v19;
          objc_msgSend_length(v7, v21, v22);
          v24 = v23;
          objc_msgSend_chamferRadius(v7, v25, v26);
          *&v28 = v27;
          *&v27 = v16;
          *&v29 = v20;
          *&v30 = v24;
          v12 = objc_msgSend_cubeWithWidth_height_length_chamferRadius_(VFXParametricModel, v31, v32, v27, v29, v30, v28);
          objc_msgSend_chamferRadius(v7, v33, v34);
          *&v35 = v35;
          objc_msgSend_setChamferRadius_(v12, v36, v37, v35);
          v40 = objc_msgSend_chamferSegmentCount(v7, v38, v39);
          objc_msgSend_setChamferSegmentCount_(v12, v41, v40);
          v44 = objc_msgSend_widthSegmentCount(v7, v42, v43);
          objc_msgSend_setWidthSegmentCount_(v12, v45, v44);
          v48 = objc_msgSend_heightSegmentCount(v7, v46, v47);
          objc_msgSend_setHeightSegmentCount_(v12, v49, v48);
          v52 = objc_msgSend_lengthSegmentCount(v7, v50, v51);
          objc_msgSend_setLengthSegmentCount_(v12, v53, v52);
          CFDictionarySetValue(v6, v7, v12);
          if (!v12)
          {
            goto LABEL_11;
          }
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_11;
          }

          v54 = [VFXBezierCurveGeometry alloc];
          v57 = objc_msgSend_CGPath(v7, v55, v56);
          objc_msgSend_vfx_curveToGeometryTransform(v7, v58, v59);
          v61 = objc_msgSend_initWithCGPath_transform_(v54, v60, v57);
          v62 = objc_alloc_init(VFXModel);
          objc_msgSend_setGeometry_(v62, v63, v61);

          CFDictionarySetValue(v6, v7, v62);
          v12 = v62;
          if (!v12)
          {
            goto LABEL_11;
          }
        }
      }

LABEL_28:
      v358 = v12;
      CFDictionarySetValue(v6, v7, v12);
      v115 = objc_msgSend_materials(v7, v113, v114);
      v116 = objc_alloc(MEMORY[0x1E695DF70]);
      v119 = objc_msgSend_count(v115, v117, v118);
      v121 = objc_msgSend_initWithCapacity_(v116, v120, v119);
      v373 = 0u;
      v374 = 0u;
      v375 = 0u;
      v376 = 0u;
      obj = v115;
      v372 = objc_msgSend_countByEnumeratingWithState_objects_count_(v115, v122, &v373, v390, 16);
      if (!v372)
      {
        goto LABEL_97;
      }

      v125 = *v374;
      v365 = *MEMORY[0x1E697A938];
      v364 = *MEMORY[0x1E697A958];
      v363 = *MEMORY[0x1E697A948];
      v362 = *MEMORY[0x1E697A960];
      v361 = *MEMORY[0x1E697A940];
      v126 = 0x1E696A000uLL;
      v360 = *MEMORY[0x1E697A950];
      v359 = *MEMORY[0x1E697A968];
      *&v124 = 138412546;
      v356 = v124;
      v366 = *v374;
      v367 = v121;
      while (1)
      {
        v127 = 0;
        do
        {
          if (*v374 != v125)
          {
            objc_enumerationMutation(obj);
          }

          v128 = *(*(&v373 + 1) + 8 * v127);
          v131 = CFDictionaryGetValue(v6, v128);
          if (!v131)
          {
            v370 = v127;
            v131 = objc_msgSend_material(VFXMaterial, v129, v130);
            CFDictionarySetValue(v6, v128, v131);
            v134 = objc_msgSend_name(v128, v132, v133);
            objc_msgSend_setName_(v131, v135, v134);
            v138 = objc_msgSend_lightingModelName(v128, v136, v137);
            if (objc_msgSend_isEqualToString_(v138, v139, v365) & 1) != 0 || (objc_msgSend_isEqualToString_(v138, v140, v364) & 1) != 0 || (objc_msgSend_isEqualToString_(v138, v140, v363))
            {
              objc_msgSend_setShadingModel_(v131, v140, 1, v356);
              goto LABEL_38;
            }

            if (objc_msgSend_isEqualToString_(v138, v140, v362))
            {
LABEL_56:
              objc_msgSend_setShadingModel_(v131, v206, 0, v356);
            }

            else if (objc_msgSend_isEqualToString_(v138, v206, v361) & 1) != 0 || (objc_msgSend_isEqualToString_(v138, v210, v360))
            {
              objc_msgSend_setShadingModel_(v131, v210, 2, v356);
            }

            else
            {
              if (!objc_msgSend_isEqualToString_(v138, v210, v359))
              {
                goto LABEL_56;
              }

              objc_msgSend_setShadingModel_(v131, v206, 3, v356);
            }

LABEL_38:
            objc_msgSend_shininess(v128, v141, v142);
            *&v143 = v143;
            objc_msgSend_setShininess_(v131, v144, v145, v143);
            v148 = objc_msgSend_transparencyMode(v128, v146, v147);
            if (v148 == 3)
            {
              objc_msgSend_setTransparencyMode_(v131, v149, 2);
            }

            else
            {
              objc_msgSend_setTransparencyMode_(v131, v149, v148 == 2);
            }

            isLitPerPixel = objc_msgSend_isLitPerPixel(v128, v150, v151);
            objc_msgSend_setLitPerPixel_(v131, v153, isLitPerPixel);
            isDoubleSided = objc_msgSend_isDoubleSided(v128, v154, v155);
            objc_msgSend_setDoubleSided_(v131, v157, isDoubleSided);
            v160 = objc_msgSend_cullMode(v128, v158, v159);
            objc_msgSend_setCullMode_(v131, v161, v160);
            v164 = objc_msgSend_avoidsOverLighting(v128, v162, v163);
            objc_msgSend_setAvoidsOverLighting_(v131, v165, v164);
            v168 = objc_msgSend_fillMode(v128, v166, v167);
            objc_msgSend_setFillMode_(v131, v169, v168);
            objc_msgSend_fresnelExponent(v128, v170, v171);
            *&v172 = v172;
            objc_msgSend_setFresnelExponent_(v131, v173, v174, v172);
            v177 = objc_msgSend_writesToDepthBuffer(v128, v175, v176);
            objc_msgSend_setWritesToDepthBuffer_(v131, v178, v177);
            v181 = objc_msgSend_readsFromDepthBuffer(v128, v179, v180);
            objc_msgSend_setReadsFromDepthBuffer_(v131, v182, v181);
            v185 = objc_msgSend_colorBufferWriteMask(v128, v183, v184);
            objc_msgSend_setColorBufferWriteMask_(v131, v186, v185);
            v189 = objc_msgSend_blendMode(v128, v187, v188);
            if (v189 > 2)
            {
              if (v189 <= 4)
              {
                if (v189 == 3)
                {
                  objc_msgSend_setBlendMode_(v131, v190, 4);
                }

                else
                {
                  objc_msgSend_setBlendMode_(v131, v190, 5);
                }

LABEL_71:
                LODWORD(v194) = -1.0;
                objc_msgSend_setAlphaCutoff_(v131, v192, v193, v194);
                v220 = objc_msgSend_properties(v128, v218, v219);
                v389[0] = MEMORY[0x1E69E9820];
                v389[1] = 3221225472;
                v389[2] = sub_1AF3291B0;
                v389[3] = &unk_1E7A7F088;
                v389[4] = v131;
                v389[5] = a3;
                v389[6] = a4;
                objc_msgSend_enumerateObjectsUsingBlock_(v220, v221, v389);
                objc_msgSend_transparency(v128, v222, v223);
                v227 = v226;
                if (v227 < 1.0)
                {
                  v228 = objc_msgSend_transparent(v131, v224, v225);
                  v231 = objc_msgSend_contents(v228, v229, v230);
                  if (!v231)
                  {
                    *&v234 = v227;
                    v243 = objc_msgSend_numberWithFloat_(*(v126 + 3480), v232, v233, v234);
                    goto LABEL_78;
                  }

                  v235 = v231;
                  objc_opt_class();
                  isKindOfClass = objc_opt_isKindOfClass();
                  v239 = *(v126 + 3480);
                  if (isKindOfClass)
                  {
                    objc_msgSend_alphaComponent(v235, v237, v238);
                    v243 = objc_msgSend_numberWithDouble_(v239, v241, v242, v240 * v227);
                    goto LABEL_78;
                  }

                  objc_opt_class();
                  v246 = objc_opt_isKindOfClass();
                  v250 = *(v126 + 3480);
                  if (v246)
                  {
                    objc_msgSend_floatValue(v235, v247, v248);
                    *&v252 = v251 * v227;
                    v243 = objc_msgSend_numberWithFloat_(v250, v253, v254, v252);
LABEL_78:
                    v255 = v243;
                    v256 = objc_msgSend_transparent(v131, v244, v245);
                    objc_msgSend_setContents_(v256, v257, v255);
                  }

                  else
                  {
                    *&v249 = v227;
                    v276 = objc_msgSend_numberWithFloat_(*(v126 + 3480), v247, v248, v249);
                    v279 = objc_msgSend_transparent(v131, v277, v278);
                    v281 = objc_msgSend_setContents_(v279, v280, v276);
                    v283 = sub_1AF0D5194(v281, v282);
                    if (os_log_type_enabled(v283, OS_LOG_TYPE_ERROR))
                    {
                      sub_1AFDF84AC(v397, v235, v398, v283);
                    }
                  }

                  if (!objc_msgSend_blendMode(v131, v258, v259))
                  {
                    objc_msgSend_setBlendMode_(v131, v224, 1);
                  }
                }

                v387 = 0u;
                v388 = 0u;
                v385 = 0u;
                v386 = 0u;
                v369 = v128;
                v260 = objc_msgSend_customMaterialProperties(v128, v224, v225);
                v262 = objc_msgSend_countByEnumeratingWithState_objects_count_(v260, v261, &v385, buf, 16);
                if (v262)
                {
                  v264 = v262;
                  v265 = *v386;
                  do
                  {
                    for (i = 0; i != v264; ++i)
                    {
                      if (*v386 != v265)
                      {
                        objc_enumerationMutation(v260);
                      }

                      v267 = *(*(&v385 + 1) + 8 * i);
                      v268 = objc_alloc_init(VFXMaterialProperty);
                      sub_1AF327894(v268, v267, a3, a4);
                      v271 = objc_msgSend_propertyName(v267, v269, v270);
                      objc_msgSend_setValue_forKey_(v131, v272, v268, v271);
                    }

                    v264 = objc_msgSend_countByEnumeratingWithState_objects_count_(v260, v273, &v385, buf, 16);
                  }

                  while (v264);
                }

                sub_1AF328EFC(v131, v369, v263);
                sub_1AF327AD0(v131, v369, v274);
                v127 = v370;
                v6 = theDicta;
                v125 = v366;
                v121 = v367;
                v126 = 0x1E696A000;
                goto LABEL_89;
              }

              if (v189 == 6)
              {
                objc_msgSend_setBlendMode_(v131, v190, 6);
                goto LABEL_71;
              }

LABEL_51:
              objc_msgSend_setBlendMode_(v131, v190, 0);
              goto LABEL_71;
            }

            if (v189)
            {
              v195 = 2;
              if (v189 != 1)
              {
                if (v189 == 2)
                {
                  objc_msgSend_setBlendMode_(v131, v190, 3);
                  goto LABEL_71;
                }

                goto LABEL_51;
              }

LABEL_70:
              objc_msgSend_setBlendMode_(v131, v190, v195);
              goto LABEL_71;
            }

            v196 = objc_msgSend_transparent(v128, v190, v191);
            v199 = objc_msgSend_contents(v196, v197, v198);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_msgSend_alphaComponent(v199, v200, v201);
              v205 = v204;
              goto LABEL_59;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_msgSend_floatValue(v199, v207, v208);
LABEL_59:
              v209 = v205 >= 1.0;
            }

            else
            {
              if (objc_msgSend_transparencyMode(v128, v207, v208) == 1)
              {
                v211 = sub_1AF0D5194(1, v202);
                if (os_log_type_enabled(v211, OS_LOG_TYPE_ERROR))
                {
                  v284 = objc_msgSend_name(v128, v202, v203);
                  *buf = v356;
                  v394 = v284;
                  v395 = 2112;
                  v396 = v199;
                }
              }

              v209 = 0;
            }

            v212 = objc_msgSend_diffuse(v128, v202, v203);
            v215 = objc_msgSend_contents(v212, v213, v214);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_msgSend_alphaComponent(v215, v190, v216);
              *&v217 = v217;
              v209 = (*&v217 >= 1.0) & v209;
            }

            v195 = v209 ^ 1u;
            goto LABEL_70;
          }

LABEL_89:
          objc_msgSend_addObject_(v121, v129, v131, v356);
          ++v127;
        }

        while (v127 != v372);
        v285 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v275, &v373, v390, 16);
        v372 = v285;
        if (!v285)
        {
LABEL_97:
          objc_msgSend_setMaterials_(v358, v123, v121);

          v288 = objc_msgSend_name(v357, v286, v287);
          objc_msgSend_setName_(v358, v289, v288);
          v292 = objc_msgSend_name(v358, v290, v291);
          v295 = objc_msgSend_geometry(v358, v293, v294);
          objc_msgSend_setName_(v295, v296, v292);
          v299 = objc_msgSend_subdivisionLevel(v357, v297, v298);
          objc_msgSend_setSubdivisionLevel_(v358, v300, v299);
          v303 = objc_msgSend_wantsAdaptiveSubdivision(v357, v301, v302);
          objc_msgSend_setWantsAdaptiveSubdivision_(v358, v304, v303);
          v307 = objc_msgSend_tessellator(v357, v305, v306);
          if (v307)
          {
            v309 = v307;
            v310 = CFDictionaryGetValue(v6, v307);
            if (!v310)
            {
              v311 = objc_alloc_init(VFXModelTessellator);
              objc_msgSend_tessellationFactorScale(v309, v312, v313);
              *&v314 = v314;
              objc_msgSend_setTessellationFactorScale_(v311, v315, v316, v314);
              v319 = objc_msgSend_tessellationPartitionMode(v309, v317, v318);
              objc_msgSend_setTessellationPartitionMode_(v311, v320, v319);
              isAdaptive = objc_msgSend_isAdaptive(v309, v321, v322);
              objc_msgSend_setAdaptive_(v311, v324, isAdaptive);
              isScreenSpace = objc_msgSend_isScreenSpace(v309, v325, v326);
              objc_msgSend_setScreenSpace_(v311, v328, isScreenSpace);
              objc_msgSend_edgeTessellationFactor(v309, v329, v330);
              *&v331 = v331;
              objc_msgSend_setEdgeTessellationFactor_(v311, v332, v333, v331);
              objc_msgSend_insideTessellationFactor(v309, v334, v335);
              *&v336 = v336;
              objc_msgSend_setInsideTessellationFactor_(v311, v337, v338, v336);
              objc_msgSend_maximumEdgeLength(v309, v339, v340);
              *&v341 = v341;
              objc_msgSend_setMaximumEdgeLength_(v311, v342, v343, v341);
              v346 = objc_msgSend_smoothingMode(v309, v344, v345);
              objc_msgSend_setSmoothingMode_(v311, v347, v346);
              CFDictionarySetValue(v6, v309, v311);
              v310 = v311;
            }
          }

          else
          {
            v310 = 0;
          }

          Value = v358;
          objc_msgSend_setTessellator_(v358, v308, v310);
          if (objc_msgSend_subdivisionLevel(v358, v348, v349))
          {
            v352 = objc_msgSend__subdivisionSettings(v357, v350, v351);
            objc_msgSend_set_subdivisionSettings_(v358, v353, v352);
          }

          sub_1AF328EFC(v358, v357, v351);
          sub_1AF327AD0(v358, v357, v354);
          return Value;
        }
      }
    }

LABEL_11:
    v64 = objc_msgSend_geometrySources(v7, v10, v11);
    v67 = objc_msgSend_geometryElements(v7, v65, v66);
    v68 = objc_alloc(MEMORY[0x1E695DF70]);
    v71 = objc_msgSend_count(v64, v69, v70);
    v73 = objc_msgSend_initWithCapacity_(v68, v72, v71);
    v74 = objc_alloc(MEMORY[0x1E695DF70]);
    v77 = objc_msgSend_count(v67, v75, v76);
    v79 = objc_msgSend_initWithCapacity_(v74, v78, v77);
    v381 = 0u;
    v382 = 0u;
    v383 = 0u;
    v384 = 0u;
    v81 = objc_msgSend_countByEnumeratingWithState_objects_count_(v64, v80, &v381, v392, 16);
    if (v81)
    {
      v83 = v81;
      v84 = *v382;
      do
      {
        for (j = 0; j != v83; ++j)
        {
          if (*v382 != v84)
          {
            objc_enumerationMutation(v64);
          }

          v86 = sub_1AF328B2C(*(*(&v381 + 1) + 8 * j), theDicta);
          objc_msgSend_addObject_(v73, v87, v86);
        }

        v83 = objc_msgSend_countByEnumeratingWithState_objects_count_(v64, v88, &v381, v392, 16);
      }

      while (v83);
    }

    v379 = 0u;
    v380 = 0u;
    v377 = 0u;
    v378 = 0u;
    v89 = objc_msgSend_countByEnumeratingWithState_objects_count_(v67, v82, &v377, v391, 16);
    v6 = theDicta;
    if (v89)
    {
      v92 = v89;
      v93 = *v378;
      do
      {
        for (k = 0; k != v92; ++k)
        {
          if (*v378 != v93)
          {
            objc_enumerationMutation(v67);
          }

          v95 = sub_1AF328DA0(*(*(&v377 + 1) + 8 * k), theDicta);
          objc_msgSend_addObject_(v79, v96, v95);
        }

        v92 = objc_msgSend_countByEnumeratingWithState_objects_count_(v67, v97, &v377, v391, 16);
      }

      while (v92);
    }

    v7 = v357;
    v98 = objc_msgSend_geometrySourceChannels(v357, v90, v91);
    v100 = objc_msgSend_meshWithSources_elements_sourceChannels_(VFXMesh, v99, v73, v79, v98);
    v12 = objc_msgSend_modelWithMesh_(VFXModel, v101, v100);

    v104 = objc_msgSend_edgeCreasesSource(v357, v102, v103);
    v107 = objc_msgSend_edgeCreasesElement(v357, v105, v106);
    if (v104)
    {
      v108 = v107;
      if (v107)
      {
        v109 = sub_1AF328B2C(v104, theDicta);
        objc_msgSend_setEdgeCreasesSource_(v12, v110, v109);
        v111 = sub_1AF328DA0(v108, theDicta);
        objc_msgSend_setEdgeCreasesElement_(v12, v112, v111);
      }
    }

    goto LABEL_28;
  }

  return Value;
}