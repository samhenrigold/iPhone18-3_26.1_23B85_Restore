void std::__tree<std::__value_type<unsigned long long,AccelerationStructureViewer::IntersectionFunctionTable>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,AccelerationStructureViewer::IntersectionFunctionTable>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,AccelerationStructureViewer::IntersectionFunctionTable>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned long long,AccelerationStructureViewer::IntersectionFunctionTable>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,AccelerationStructureViewer::IntersectionFunctionTable>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,AccelerationStructureViewer::IntersectionFunctionTable>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned long long,AccelerationStructureViewer::IntersectionFunctionTable>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,AccelerationStructureViewer::IntersectionFunctionTable>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,AccelerationStructureViewer::IntersectionFunctionTable>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

void std::__tree<std::__value_type<std::pair<AccelerationStructureViewerServer::IntersectorType,AccelerationStructureViewer::IntersectionFunctionTable *>,std::unique_ptr<AccelerationStructureViewerServer::Intersector>>,std::__map_value_compare<std::pair<AccelerationStructureViewerServer::IntersectorType,AccelerationStructureViewer::IntersectionFunctionTable *>,std::__value_type<std::pair<AccelerationStructureViewerServer::IntersectorType,AccelerationStructureViewer::IntersectionFunctionTable *>,std::unique_ptr<AccelerationStructureViewerServer::Intersector>>,std::less<std::pair<AccelerationStructureViewerServer::IntersectorType,AccelerationStructureViewer::IntersectionFunctionTable *>>,true>,std::allocator<std::__value_type<std::pair<AccelerationStructureViewerServer::IntersectorType,AccelerationStructureViewer::IntersectionFunctionTable *>,std::unique_ptr<AccelerationStructureViewerServer::Intersector>>>>::destroy(id **a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::pair<AccelerationStructureViewerServer::IntersectorType,AccelerationStructureViewer::IntersectionFunctionTable *>,std::unique_ptr<AccelerationStructureViewerServer::Intersector>>,std::__map_value_compare<std::pair<AccelerationStructureViewerServer::IntersectorType,AccelerationStructureViewer::IntersectionFunctionTable *>,std::__value_type<std::pair<AccelerationStructureViewerServer::IntersectorType,AccelerationStructureViewer::IntersectionFunctionTable *>,std::unique_ptr<AccelerationStructureViewerServer::Intersector>>,std::less<std::pair<AccelerationStructureViewerServer::IntersectorType,AccelerationStructureViewer::IntersectionFunctionTable *>>,true>,std::allocator<std::__value_type<std::pair<AccelerationStructureViewerServer::IntersectorType,AccelerationStructureViewer::IntersectionFunctionTable *>,std::unique_ptr<AccelerationStructureViewerServer::Intersector>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::pair<AccelerationStructureViewerServer::IntersectorType,AccelerationStructureViewer::IntersectionFunctionTable *>,std::unique_ptr<AccelerationStructureViewerServer::Intersector>>,std::__map_value_compare<std::pair<AccelerationStructureViewerServer::IntersectorType,AccelerationStructureViewer::IntersectionFunctionTable *>,std::__value_type<std::pair<AccelerationStructureViewerServer::IntersectorType,AccelerationStructureViewer::IntersectionFunctionTable *>,std::unique_ptr<AccelerationStructureViewerServer::Intersector>>,std::less<std::pair<AccelerationStructureViewerServer::IntersectorType,AccelerationStructureViewer::IntersectionFunctionTable *>>,true>,std::allocator<std::__value_type<std::pair<AccelerationStructureViewerServer::IntersectorType,AccelerationStructureViewer::IntersectionFunctionTable *>,std::unique_ptr<AccelerationStructureViewerServer::Intersector>>>>::destroy(a1[1]);
    std::unique_ptr<AccelerationStructureViewerServer::Intersector>::~unique_ptr[abi:nn200100](a1 + 6);

    operator delete(a1);
  }
}

id **std::unique_ptr<AccelerationStructureViewerServer::Profiler>::reset[abi:nn200100](id **result, id *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v30.__m_ = (v2 + 320);
    v30.__owns_ = 1;
    std::mutex::lock((v2 + 320));
    if (*(v2 + 432) == 1)
    {
      while (*(v2 + 436))
      {
        std::condition_variable::wait((v2 + 384), &v30);
        if ((*(v2 + 432) & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      AccelerationStructureViewerServer::Profiler::stopAPSStreaming(v2, *v2);
    }

LABEL_8:
    for (i = 0; i != 24; i += 8)
    {
      v4 = *(v2 + i + 64);
      *(v2 + i + 64) = 0;

      v5 = *(v2 + i + 88);
      *(v2 + i + 88) = 0;
    }

    v6 = *(v2 + 16);
    *(v2 + 16) = 0;

    v7 = *(v2 + 48);
    *(v2 + 48) = 0;

    v8 = *(v2 + 40);
    *(v2 + 40) = 0;

    v9 = *v2;
    *v2 = 0;

    if (v30.__owns_)
    {
      std::mutex::unlock(v30.__m_);
    }

    std::__tree<std::__value_type<unsigned int,std::shared_ptr<AccelerationStructureViewerServer::APSRayCollector>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<AccelerationStructureViewerServer::APSRayCollector>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<AccelerationStructureViewerServer::APSRayCollector>>>>::destroy(*(v2 + 736));
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v2 + 688);
    std::mutex::~mutex((v2 + 624));
    v10 = *(v2 + 600);
    if (v10)
    {
      *(v2 + 608) = v10;
      operator delete(v10);
    }

    v11 = *(v2 + 576);
    if (v11)
    {
      v12 = *(v2 + 584);
      v13 = *(v2 + 576);
      if (v12 != v11)
      {
        do
        {
          v12 = std::deque<AccelerationStructureViewerServer::APSRawChunk>::~deque[abi:nn200100](v12 - 48);
        }

        while (v12 != v11);
        v13 = *(v2 + 576);
      }

      *(v2 + 584) = v11;
      operator delete(v13);
    }

    v30.__m_ = (v2 + 552);
    std::vector<std::mutex>::__destroy_vector::operator()[abi:nn200100](&v30);
    std::deque<AccelerationStructureViewerServer::APSRawChunk>::~deque[abi:nn200100](v2 + 504);
    std::mutex::~mutex((v2 + 440));
    std::condition_variable::~condition_variable((v2 + 384));
    std::mutex::~mutex((v2 + 320));
    v14 = *(v2 + 296);
    if (v14)
    {
      *(v2 + 304) = v14;
      operator delete(v14);
    }

    v30.__m_ = (v2 + 272);
    std::vector<std::thread>::__destroy_vector::operator()[abi:nn200100](&v30);
    v30.__m_ = (v2 + 248);
    std::vector<std::thread>::__destroy_vector::operator()[abi:nn200100](&v30);
    v16 = *(v2 + 208);
    v15 = *(v2 + 216);
    if (v15 == v16)
    {
      v17 = (v2 + 240);
      v24 = *(v2 + 208);
    }

    else
    {
      v17 = (v2 + 240);
      v18 = *(v2 + 232);
      v19 = &v16[v18 >> 9];
      v20 = (*v19 + 8 * (v18 & 0x1FF));
      v21 = *(v16 + (((*(v2 + 240) + v18) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(v2 + 240) + v18) & 0x1FF);
      if (v20 != v21)
      {
        do
        {
          v22 = *v20++;

          if (v20 - *v19 == 4096)
          {
            v23 = v19[1];
            ++v19;
            v20 = v23;
          }
        }

        while (v20 != v21);
        v16 = *(v2 + 208);
        v15 = *(v2 + 216);
      }

      v24 = v15;
    }

    *v17 = 0;
    v25 = v24 - v16;
    if (v25 >= 3)
    {
      do
      {
        operator delete(*v16);
        v15 = *(v2 + 216);
        v16 = (*(v2 + 208) + 8);
        *(v2 + 208) = v16;
        v25 = v15 - v16;
      }

      while (v25 > 2);
      v24 = v15;
    }

    if (v25 == 1)
    {
      v26 = 256;
    }

    else
    {
      if (v25 != 2)
      {
        goto LABEL_37;
      }

      v26 = 512;
    }

    *(v2 + 232) = v26;
LABEL_37:
    if (v16 != v24)
    {
      do
      {
        v27 = *v16++;
        operator delete(v27);
      }

      while (v16 != v24);
      v24 = *(v2 + 208);
      v15 = *(v2 + 216);
    }

    if (v15 != v24)
    {
      *(v2 + 216) = v15 + ((v24 - v15 + 7) & 0xFFFFFFFFFFFFFFF8);
    }

    v28 = *(v2 + 200);
    if (v28)
    {
      operator delete(v28);
    }

    std::mutex::~mutex((v2 + 136));
    for (j = 128; j != 104; j -= 8)
    {
    }

    do
    {

      j -= 8;
    }

    while (j != 80);
    do
    {

      j -= 8;
    }

    while (j != 56);

    JUMPOUT(0x2530332C0);
  }

  return result;
}

void ___ZN33AccelerationStructureViewerServer8Renderer13setDataSourceEPNS_10DataSourceEPU35objcproto24MTLAccelerationStructure11objc_objectP7NSArrayIS4_EPU15__autoreleasingP7NSError_block_invoke(uint64_t a1, uint64_t *a2, void *a3)
{
  v14 = a3;
  v4 = *a2;
  if (*a2 != a2[1])
  {
    v5 = *(a1 + 40);
    v6 = (v5 + 17640);
    do
    {
      v7 = *(*(a1 + 32) + 8);
      v8 = *(v7 + 24);
      if (v8 <= *(v4 + 24))
      {
        v8 = *(v4 + 24);
      }

      *(v7 + 24) = v8;
      v9 = *(v4 + 16);
      v10 = *(v4 + 8);
      v11 = *v6;
      if (!*v6)
      {
LABEL_11:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v12 = v11;
          v13 = v11[4];
          if (v9 >= v13)
          {
            break;
          }

          v11 = *v12;
          if (!*v12)
          {
            goto LABEL_11;
          }
        }

        if (v13 >= v9)
        {
          break;
        }

        v11 = v12[1];
        if (!v11)
        {
          goto LABEL_11;
        }
      }

      if (!*(v5 + 17016) && !*(v5 + 17020))
      {
        *(v5 + 17016) = *(v4 + 16);
      }

      v4 += 32;
    }

    while (v4 != a2[1]);
  }
}

BOOL writeAccelerationStructureToGBVH5Path(void *a1, char *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = a4;
  NSLog(&cfstr_WritingGbvhTo.isa, v7);
  memset(v132, 0, 24);
  v88 = a1;
  v8 = a1[24] - a1[23];
  v87 = v7;
  if (v8)
  {
    v9 = 0xD37A6F4DE9BD37A7 * (v8 >> 3);
    if (v9 < 0x1642C8590B21643)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<AccelerationStructureViewerServer::AccelerationStructure>>(v9);
    }

    std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
  }

  v10 = [MEMORY[0x277CBEBC0] fileURLWithPath:v7];
  v131 = 259;
  v11 = [MEMORY[0x277CBEA90] dataWithBytes:&v131 length:4];
  v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:v7];
  [v11 writeToURL:v12 atomically:0];

  v13 = [MEMORY[0x277CCA9F8] fileHandleForWritingToURL:v10 error:a5];
  if (v13)
  {
    v89 = v10;
    v127 = 0;
    v128 = &v127;
    v129 = 0x2020000000;
    v130 = 0;
    v126[0] = MEMORY[0x277D85DD0];
    v126[1] = 3221225472;
    v126[2] = ___Z37writeAccelerationStructureToGBVH5PathPN33AccelerationStructureViewerServer10DataSourceEP18ASVCameraTransformP18ASVSRenderSettingsP8NSStringPU15__autoreleasingP7NSError_block_invoke;
    v126[3] = &unk_2796590D0;
    v126[4] = &v127;
    (*(*a1 + 16))(a1, v126);
    v14 = 16;
    if (a2 != 0 && a3 != 0)
    {
      v14 = 28;
    }

    v15 = v14 + 24 * *(v128 + 6);
    v16 = malloc_type_malloc(v15, 0x1000040451B5BE8uLL);
    *v16 = 5;
    v16[1] = 0;
    v16[2] = *(v128 + 6);
    v16[3] = a2 != 0 && a3 != 0;
    v83 = *(v128 + 6);
    [v13 seekToFileOffset:0];
    v84 = v15;
    v17 = [MEMORY[0x277CBEA90] dataWithBytes:v16 length:v15];
    [v13 writeData:v17];

    [v13 offsetInFile];
    if (v16[1])
    {
      v18 = 0;
      v19 = v16 + 8;
      v20 = 80;
      do
      {
        [*(v20 - 56) contents];
        NSLog(&cfstr_WritingAcceler.isa, *(v20 - 64), [v13 offsetInFile]);
        v90 = ([*(v20 - 56) length] - *(v20 - 48));
        *v91 = [*(v20 - 40) length] - *(v20 - 32);
        *&v91[8] = [*(v20 - 24) length] - *(v20 - 16);
        *&v91[16] = [*(v20 - 8) length] - *v20;
        *&v91[24] = [*(v20 + 8) length] - *(v20 + 16);
        *&v91[32] = [*(v20 + 72) length] - *(v20 + 80);
        *&v91[40] = *(v20 + 40);
        NSLog(&cfstr_Headerbuffersi_0.isa, v90);
        NSLog(&cfstr_Innernodebuffe_1.isa, *v91);
        NSLog(&cfstr_Leafnodebuffer_1.isa, *&v91[8]);
        NSLog(&cfstr_Primitivebuffe_1.isa, *&v91[16]);
        NSLog(&cfstr_Geometrybuffer_1.isa, *&v91[24]);
        NSLog(&cfstr_Instancebuffer.isa, *&v91[32]);
        NSLog(&cfstr_Perprimitiveda_1.isa, *&v91[40]);
        *(v19 - 2) = [v13 offsetInFile];
        *(v19 - 1) = *(v20 - 64);
        v21 = *(v20 - 80);
        if (v21)
        {
          v22 = [v21 dataUsingEncoding:30];
          *v19 = [v22 length];
          [v13 writeData:v22];
        }

        else
        {
          *v19 = 0;
        }

        v23 = [MEMORY[0x277CBEA90] dataWithBytes:&v90 length:56];
        [v13 writeData:v23];

        v24 = MEMORY[0x277CBEA90];
        v25 = *(v20 - 48);
        v26 = [*(v20 - 56) contents];
        v27 = [v24 dataWithBytes:v26 + v25 length:v90];
        [v13 writeData:v27];

        v28 = MEMORY[0x277CBEA90];
        v29 = *(v20 - 32);
        v30 = [*(v20 - 40) contents];
        v31 = [v28 dataWithBytes:v30 + v29 length:*v91];
        [v13 writeData:v31];

        v32 = MEMORY[0x277CBEA90];
        v33 = *(v20 - 16);
        v34 = [*(v20 - 24) contents];
        v35 = [v32 dataWithBytes:v34 + v33 length:*&v91[8]];
        [v13 writeData:v35];

        v36 = MEMORY[0x277CBEA90];
        v37 = *v20;
        v38 = [*(v20 - 8) contents];
        v39 = [v36 dataWithBytes:v38 + v37 length:*&v91[16]];
        [v13 writeData:v39];

        v40 = MEMORY[0x277CBEA90];
        v41 = *(v20 + 16);
        v42 = [*(v20 + 8) contents];
        v43 = [v40 dataWithBytes:v42 + v41 length:*&v91[24]];
        [v13 writeData:v43];

        v44 = MEMORY[0x277CBEA90];
        v45 = *(v20 + 80);
        v46 = [*(v20 + 72) contents];
        v47 = [v44 dataWithBytes:v46 + v45 length:*&v91[32]];
        [v13 writeData:v47];

        v48 = MEMORY[0x277CBEA90];
        v49 = *(v20 + 32);
        v50 = [*(v20 + 24) contents];
        v51 = [v48 dataWithBytes:v50 + v49 length:*&v91[40]];
        [v13 writeData:v51];

        ++v18;
        v19 += 5;
        v20 += 184;
      }

      while (v18 < v16[1]);
    }

    v122[0] = MEMORY[0x277D85DD0];
    v122[1] = 3221225472;
    v122[2] = ___Z37writeAccelerationStructureToGBVH5PathPN33AccelerationStructureViewerServer10DataSourceEP18ASVCameraTransformP18ASVSRenderSettingsP8NSStringPU15__autoreleasingP7NSError_block_invoke_2;
    v122[3] = &unk_2796590F8;
    v124 = v16 + 4;
    v52 = v13;
    v123 = v52;
    v125 = v88;
    (*(*v88 + 16))(v88, v122);
    if (a2 != 0 && a3 != 0)
    {
      v53 = &v16[6 * v83 + 4];
      *v53 = [v52 offsetInFile];
      v54 = [@"default" dataUsingEncoding:30];
      *(v53 + 8) = [v54 length];
      [v52 writeData:v54];

      v117 = *(a2 + 1);
      v118 = *a2;
      v119 = *(a2 + 1);
      float2matrix(&v120, (a2 + 16));
      *&v55 = float2matrix(&v121, (a2 + 80));
      v56 = [MEMORY[0x277CBEA90] dataWithBytes:&v116 length:{142, v55}];
      [v52 writeData:v56];

      BYTE1(v90) = *(a3 + 32);
      v58 = *(a3 + 24);
      v59 = *(a3 + 38);
      if (v59 == 2)
      {
        v60 = 2;
      }

      else
      {
        v60 = v59 == 1;
      }

      BYTE2(v90) = *(a3 + 33) == 1;
      v57.i32[0] = *(a3 + 34);
      v61 = vmovl_u8(v57).u64[0];
      v62 = vceq_s16(v61, 0x1000100010001);
      v63 = vceq_s16(v61, 0x2000200020002);
      v64 = vsub_s16(vand_s8(v63, 0x2000200020002), vbic_s8(v62, v63));
      *(&v90 + 3) = vuzp1_s8(v64, v64).u32[0];
      HIBYTE(v90) = v60;
      *v91 = *(a3 + 39);
      *&v91[2] = v58;
      v91[10] = *(a3 + 41);
      *&v91[11] = *(a3 + 44);
      v91[19] = *(a3 + 42);
      v65 = *(a3 + 52);
      if (v65 >= 7)
      {
        LOBYTE(v65) = 0;
      }

      v91[20] = v65;
      v66 = *(a3 + 53);
      if (v66 >= 7)
      {
        LOBYTE(v66) = 0;
      }

      v91[21] = v66;
      v67 = *(a3 + 456);
      *&v91[22] = *(a3 + 56);
      v68 = *(a3 + 304);
      v104 = *(a3 + 288);
      v105 = v68;
      v69 = *(a3 + 272);
      v102 = *(a3 + 256);
      v103 = v69;
      v70 = *(a3 + 208);
      v98 = *(a3 + 192);
      v99 = v70;
      v71 = *(a3 + 240);
      v100 = *(a3 + 224);
      v101 = v71;
      v72 = *(a3 + 144);
      v94 = *(a3 + 128);
      v95 = v72;
      v73 = *(a3 + 176);
      v96 = *(a3 + 160);
      v97 = v73;
      v74 = *(a3 + 80);
      *&v91[26] = *(a3 + 64);
      *&v91[42] = v74;
      v75 = *(a3 + 112);
      v92 = *(a3 + 96);
      v93 = v75;
      v76 = *(a3 + 400);
      v110 = *(a3 + 384);
      v111 = v76;
      v77 = *(a3 + 432);
      v112 = *(a3 + 416);
      v113 = v77;
      v78 = *(a3 + 336);
      v106 = *(a3 + 320);
      v107 = v78;
      v79 = *(a3 + 368);
      v108 = *(a3 + 352);
      v109 = v79;
      v114 = *(a3 + 448);
      v115 = v67;
      v80 = [MEMORY[0x277CBEA90] dataWithBytes:&v90 length:430];
      [v52 writeData:v80];
    }

    [v52 seekToFileOffset:0];
    v81 = [MEMORY[0x277CBEA90] dataWithBytes:v16 length:v84];
    [v52 writeData:v81];

    free(v16);
    [v52 closeFile];

    _Block_object_dispose(&v127, 8);
    v7 = v87;
    v10 = v89;
  }

  v90 = v132;
  std::vector<AccelerationStructureViewerServer::AccelerationStructure>::__destroy_vector::operator()[abi:nn200100](&v90);

  return v13 != 0;
}

void ___Z37writeAccelerationStructureToGBVH5PathPN33AccelerationStructureViewerServer10DataSourceEP18ASVCameraTransformP18ASVSRenderSettingsP8NSStringPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, uint64_t *a2, void *a3)
{
  v18[4] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *a2;
  if (a2[1] != *a2)
  {
    v7 = 0;
    v8 = 1;
    do
    {
      v9 = (v6 + 32 * v7);
      v10 = [*(a1 + 32) offsetInFile];
      v11 = *(a1 + 40);
      v12 = (v11 + 24 * v7);
      v13 = v9[1];
      v14 = v9[2];
      *v12 = v10;
      v12[1] = v14;
      if (v13)
      {
        v15 = [v13 dataUsingEncoding:30];
        *(*(a1 + 40) + 24 * v7 + 16) = [v15 length];
        [*(a1 + 32) writeData:v15];

        v11 = *(a1 + 40);
      }

      else
      {
        *(v11 + 24 * v7 + 16) = 0;
      }

      *(v11 + 24 * v7 + 20) = v9[3];
      v16 = *(a1 + 48);
      v17 = *(a1 + 32);
      v18[0] = &unk_2860BC5D0;
      v18[1] = v17;
      v18[3] = v18;
      (*(*v16 + 112))(v16, v9, v18);
      std::__function::__value_func<void ()(unsigned long,BOOL,objc_object  {objcproto11MTLFunction}*,AccelerationStructureViewer::IntersectionFunction *)>::~__value_func[abi:nn200100](v18);
      v7 = v8;
      v6 = *a2;
      ++v8;
    }

    while (v7 < (a2[1] - *a2) >> 5);
  }
}

float float2matrix(float *a1, simd_float4x4 *a2)
{
  v2 = a2->columns[0];
  v3 = a2->columns[1];
  v2.f32[0] = *a1;
  a2->columns[0].f32[0] = *a1;
  v2.f32[1] = a1[1];
  a2->columns[0] = v2;
  v2.f32[2] = a1[2];
  a2->columns[0] = v2;
  v2.f32[3] = a1[3];
  a2->columns[0] = v2;
  v3.f32[0] = a1[4];
  a2->columns[1].i32[0] = v3.i32[0];
  v3.f32[1] = a1[5];
  a2->columns[1] = v3;
  v3.f32[2] = a1[6];
  a2->columns[1] = v3;
  v3.f32[3] = a1[7];
  a2->columns[1] = v3;
  v4 = a2->columns[2];
  v5 = a2->columns[3];
  v4.f32[0] = a1[8];
  a2->columns[2].i32[0] = v4.i32[0];
  v4.f32[1] = a1[9];
  a2->columns[2] = v4;
  v4.f32[2] = a1[10];
  a2->columns[2] = v4;
  v4.f32[3] = a1[11];
  a2->columns[2] = v4;
  result = a1[12];
  v5.f32[0] = result;
  a2->columns[3].f32[0] = result;
  v5.f32[1] = a1[13];
  a2->columns[3] = v5;
  v5.f32[2] = a1[14];
  a2->columns[3] = v5;
  v5.f32[3] = a1[15];
  a2->columns[3] = v5;
  return result;
}

void std::vector<AccelerationStructureViewerServer::AccelerationStructure>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        AccelerationStructureViewerServer::AccelerationStructure::~AccelerationStructure(v4 - 23);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__function::__value_func<void ()(unsigned long,BOOL,objc_object  {objcproto11MTLFunction}*,AccelerationStructureViewer::IntersectionFunction *)>::~__value_func[abi:nn200100](uint64_t a1)
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

void _ZNSt3__110__function6__funcIZZ37writeAccelerationStructureToGBVH5PathPN33AccelerationStructureViewerServer10DataSourceEP18ASVCameraTransformP18ASVSRenderSettingsP8NSStringPU15__autoreleasingP7NSErrorEUb_E3__0NS_9allocatorISF_EEFvmbPU22objcproto11MTLFunction11objc_objectPN27AccelerationStructureViewer20IntersectionFunctionEEEclEOmObOU8__strongSJ_OSM_(uint64_t a1, uint64_t a2, uint64_t a3, id *a4, uint64_t *a5)
{
  v6 = *a5;
  v7 = *a4;
  v21 = *(v6 + 48);
  v22 = *(v6 + 72);
  v23 = *(v6 + 73);
  v24 = *(v6 + 76);
  v8 = [*(a1 + 8) offsetInFile];
  v9 = *(a1 + 8);
  v10 = [MEMORY[0x277CBEA90] dataWithBytes:&v20 length:27];
  [v9 writeData:v10];

  v11 = *(v6 + 32);
  if (v11)
  {
    v12 = [v11 dataUsingEncoding:30];
    v20 = [v12 length];
    [*(a1 + 8) writeData:v12];
  }

  else
  {
    v20 = 0;
  }

  v13 = *(v6 + 80);
  v14 = *(v6 + 88);
  for (i = (v14 - v13) >> 2; v13 != v14; v13 += 4)
  {
    v15 = *(a1 + 8);
    v16 = [MEMORY[0x277CBEA90] dataWithBytes:v13 length:4];
    [v15 writeData:v16];
  }

  if (v7)
  {
    v17 = [v7 bitcodeData];
    v26 = [v17 length];
    [*(a1 + 8) writeData:v17];
  }

  else
  {
    v26 = 0;
  }

  [*(a1 + 8) offsetInFile];
  [*(a1 + 8) seekToFileOffset:v8];
  v18 = *(a1 + 8);
  v19 = [MEMORY[0x277CBEA90] dataWithBytes:&v20 length:27];
  [v18 writeData:v19];

  [*(a1 + 8) seekToEndOfFile];
}

void _ZNSt3__110__function6__funcIZZ37writeAccelerationStructureToGBVH5PathPN33AccelerationStructureViewerServer10DataSourceEP18ASVCameraTransformP18ASVSRenderSettingsP8NSStringPU15__autoreleasingP7NSErrorEUb_E3__0NS_9allocatorISF_EEFvmbPU22objcproto11MTLFunction11objc_objectPN27AccelerationStructureViewer20IntersectionFunctionEEE18destroy_deallocateEv(id *a1)
{

  operator delete(a1);
}

id _ZNKSt3__110__function6__funcIZZ37writeAccelerationStructureToGBVH5PathPN33AccelerationStructureViewerServer10DataSourceEP18ASVCameraTransformP18ASVSRenderSettingsP8NSStringPU15__autoreleasingP7NSErrorEUb_E3__0NS_9allocatorISF_EEFvmbPU22objcproto11MTLFunction11objc_objectPN27AccelerationStructureViewer20IntersectionFunctionEEE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, void *a2)
{
  *a2 = &unk_2860BC5D0;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void _ZNSt3__110__function6__funcIZZ37writeAccelerationStructureToGBVH5PathPN33AccelerationStructureViewerServer10DataSourceEP18ASVCameraTransformP18ASVSRenderSettingsP8NSStringPU15__autoreleasingP7NSErrorEUb_E3__0NS_9allocatorISF_EEFvmbPU22objcproto11MTLFunction11objc_objectPN27AccelerationStructureViewer20IntersectionFunctionEEED0Ev(uint64_t a1)
{

  JUMPOUT(0x2530332C0);
}

void AccelerationStructureViewerServer::DataSource::generateItems(AccelerationStructureViewerServer::DataSource *this)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(this + 23);
  v4 = *(this + 24);
  v236 = this;
  context = v2;
  if (v4 != v3)
  {
    v5 = this;
    for (i = 0; i < 0xD37A6F4DE9BD37A7 * ((v4 - v3) >> 3); ++i)
    {
      v7 = *(v3 + 184 * i + 16);
      v8 = *(v5 + 144);
      if (!*&v8)
      {
        goto LABEL_19;
      }

      v9 = vcnt_s8(v8);
      v9.i16[0] = vaddlv_u8(v9);
      if (v9.u32[0] > 1uLL)
      {
        v10 = *(v3 + 184 * i + 16);
        if (v7 >= *&v8)
        {
          v10 = v7 % *&v8;
        }
      }

      else
      {
        v10 = (*&v8 - 1) & v7;
      }

      v11 = *(*(v5 + 17) + 8 * v10);
      if (!v11 || (v12 = *v11) == 0)
      {
LABEL_19:
        operator new();
      }

      while (1)
      {
        v13 = v12[1];
        if (v13 == v7)
        {
          break;
        }

        if (v9.u32[0] > 1uLL)
        {
          if (v13 >= *&v8)
          {
            v13 %= *&v8;
          }
        }

        else
        {
          v13 &= *&v8 - 1;
        }

        if (v13 != v10)
        {
          goto LABEL_19;
        }

LABEL_18:
        v12 = *v12;
        if (!v12)
        {
          goto LABEL_19;
        }
      }

      if (v12[2] != v7)
      {
        goto LABEL_18;
      }

      *(v12 + 6) = i;
    }
  }

  if (v4 != v3)
  {
    v14 = 0;
    v231 = (v236 + 16);
    while (1)
    {
      v15 = v3 + 184 * v14;
      v16 = *(v15 + 32);
      v17 = [*(v15 + 24) contents];
      if (!v17)
      {
        goto LABEL_317;
      }

      v18 = *(v17 + v16 + 8);
      v232 = v14;
      if (v18 > 1)
      {
        break;
      }

      if (v18)
      {
        if (v18 != 1)
        {
          goto LABEL_240;
        }

        v233 = v17 + v16;
        v19 = *(v15 + 32);
        v20 = ([*(v15 + 24) contents] + v19);
        v21 = malloc_type_calloc(v20[6], 0x18uLL, 0x1000040504FFAC1uLL);
        [*(v15 + 56) contents];
        v22 = 0;
        v23 = -1;
        do
        {
          if (++v23 >= v20[5])
          {
            break;
          }

          v22 += 64;
          v24 = *(v15 + 64) + v22;
        }

        while (v24 <= [*(v15 + 56) length]);
        v238 = (v15 + 16);
        std::__hash_table<std::__hash_value_type<unsigned long long,_MTLAxisAlignedBoundingBox *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,_MTLAxisAlignedBoundingBox *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,_MTLAxisAlignedBoundingBox *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,_MTLAxisAlignedBoundingBox *>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v236 + 24, *(v15 + 16), &v238)[3] = v21;
        memset(&v237, 0, sizeof(v237));
        std::vector<AccelerationStructureViewer::IntersectionFunctionTag>::resize(&v237, v20[7]);
        v25 = *(v15 + 72);
        if (v25)
        {
          v26 = *(v15 + 80);
          v27 = [v25 contents] + v26;
          v28 = [*(v15 + 72) length];
          v29 = v28;
          v30 = v20[6];
          if (v30)
          {
            v31 = 0;
            v32 = 0;
            v33 = 0;
            v34 = v20[3];
            begin = v237.__begin_;
            v36 = 36;
            while (1)
            {
              if (v34 == 1)
              {
                if (v31 + *(v15 + 80) + 16 <= v28)
                {
                  v39 = *(v27 + v31);
                  if (v39 < v20[7])
                  {
                    ++begin[v39];
                  }

                  v38 = v27 + 16 * v33;
                  goto LABEL_43;
                }
              }

              else if (!v34 && v36 + *(v15 + 80) + 12 <= v28)
              {
                v37 = *(v27 + v36);
                if (v37 < v20[7])
                {
                  ++begin[v37];
                }

                v38 = v27 + v36;
LABEL_43:
                v40 = *(v38 + 4);
                if (v32 <= v40)
                {
                  v32 = v40;
                }

                v30 = v20[6];
              }

              ++v33;
              v36 += 48;
              v31 += 16;
              if (v33 >= v30)
              {
                goto LABEL_146;
              }
            }
          }

          v32 = 0;
LABEL_146:
          v133 = malloc_type_calloc(v32 + 1, 4uLL, 0x100004052888210uLL);
          if (v20[6])
          {
            v134 = 0;
            v135 = v20[3];
            do
            {
              if (v135)
              {
                if (v135 == 1)
                {
                  v136 = v134 + 1;
                  if (*(v15 + 80) + 16 * (v134 + 1) <= v29)
                  {
                    v137 = *(v27 + 16 * v134 + 4);
                    goto LABEL_154;
                  }
                }

                else
                {
                  v136 = v134 + 1;
                }
              }

              else
              {
                v136 = v134 + 1;
                if (*(v15 + 80) + 48 * (v134 + 1) <= v29)
                {
                  v137 = *(v27 + 48 * v134 + 40);
LABEL_154:
                  if (v32 >= v137)
                  {
                    v133[v137] = v134;
                  }
                }
              }

              v134 = v136;
            }

            while (v136 < v20[6]);
          }

          v238 = (v15 + 16);
          std::__hash_table<std::__hash_value_type<unsigned long long,unsigned int *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned int *>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v236 + 14, *(v15 + 16), &v238)[3] = v133;
        }

        v138 = *(v15 + 88);
        if (v138)
        {
          [v138 contents];
          if (v20[7])
          {
            v139 = v20[3];
            if (v139 != 2)
            {
              if (v139 != 1)
              {
                if (!v139)
                {
                  operator new();
                }

                operator new();
              }

              operator new();
            }

            operator new();
          }
        }

        goto LABEL_237;
      }

      v233 = v17 + v16;
      v63 = *(v15 + 32);
      v64 = ([*(v15 + 24) contents] + v63);
      v65 = malloc_type_calloc(v64[6], 0x18uLL, 0x1000040504FFAC1uLL);
      v66 = *(v15 + 64);
      v67 = [*(v15 + 56) contents];
      if (v64[2] == 2)
      {
        v68 = v64[9];
      }

      else
      {
        v68 = 1;
      }

      if (v64[5])
      {
        v75 = 0;
        v76 = v67 + v66;
        v77 = v68 * v64[6];
        do
        {
          v78 = v75 + 1;
          v79 = *(v15 + 64) + 48 * (v75 + 1);
          if (v79 > [*(v15 + 56) length])
          {
            break;
          }

          if ((v64[2] | 2) == 2)
          {
            v80 = (v76 + 48 * v75);
            v81 = v80[1];
            v82 = *v80 + v81;
            if (v82 <= v77 && v82 > v81)
            {
              v84 = v81 + 1;
              v85 = &v65[24 * v81];
              do
              {
                v86 = *(v80 + 3);
                *(v85 + 2) = *(v80 + 7);
                *v85 = v86;
                v85 += 24;
                v87 = v84 >= *v80 + v80[1] || v84 >= v77;
                ++v84;
              }

              while (!v87);
            }
          }

          ++v75;
        }

        while (v78 < v64[5]);
      }

      v238 = (v15 + 16);
      std::__hash_table<std::__hash_value_type<unsigned long long,_MTLAxisAlignedBoundingBox *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,_MTLAxisAlignedBoundingBox *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,_MTLAxisAlignedBoundingBox *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,_MTLAxisAlignedBoundingBox *>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v236 + 24, *(v15 + 16), &v238)[3] = v65;
      memset(&v237, 0, sizeof(v237));
      std::vector<AccelerationStructureViewer::IntersectionFunctionTag>::resize(&v237, v64[7]);
      v88 = *(v15 + 72);
      if (v88)
      {
        v89 = *(v15 + 80);
        v90 = [v88 contents] + v89;
        v91 = [*(v15 + 72) length];
        v92 = v91;
        v93 = v64[6];
        if (v93)
        {
          v94 = 0;
          v95 = 0;
          v96 = 0;
          v97 = v64[3];
          v98 = v237.__begin_;
          v99 = 36;
          while (1)
          {
            if (v97 == 1)
            {
              if (v94 + *(v15 + 80) + 16 <= v91)
              {
                v102 = *(v90 + v94);
                if (v102 < v64[7])
                {
                  ++v98[v102];
                }

                v101 = v90 + 16 * v96;
                goto LABEL_105;
              }
            }

            else if (!v97 && v99 + *(v15 + 80) + 12 <= v91)
            {
              v100 = *(v90 + v99);
              if (v100 < v64[7])
              {
                ++v98[v100];
              }

              v101 = v90 + v99;
LABEL_105:
              v103 = *(v101 + 4);
              if (v95 <= v103)
              {
                v95 = v103;
              }

              v93 = v64[6];
            }

            ++v96;
            v99 += 48;
            v94 += 16;
            if (v96 >= v93)
            {
              goto LABEL_192;
            }
          }
        }

        v95 = 0;
LABEL_192:
        v147 = malloc_type_calloc(v95 + 1, 4uLL, 0x100004052888210uLL);
        if (v64[6])
        {
          v148 = 0;
          v149 = v64[3];
          do
          {
            if (v149)
            {
              if (v149 == 1)
              {
                v150 = v148 + 1;
                if (*(v15 + 80) + 16 * (v148 + 1) <= v92)
                {
                  v151 = *(v90 + 16 * v148 + 4);
                  goto LABEL_200;
                }
              }

              else
              {
                v150 = v148 + 1;
              }
            }

            else
            {
              v150 = v148 + 1;
              if (*(v15 + 80) + 48 * (v148 + 1) <= v92)
              {
                v151 = *(v90 + 48 * v148 + 40);
LABEL_200:
                if (v95 >= v151)
                {
                  v147[v151] = v148;
                }
              }
            }

            v148 = v150;
          }

          while (v150 < v64[6]);
        }

        v238 = (v15 + 16);
        std::__hash_table<std::__hash_value_type<unsigned long long,unsigned int *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned int *>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v236 + 14, *(v15 + 16), &v238)[3] = v147;
      }

      v152 = *(v15 + 88);
      if (v152)
      {
        [v152 contents];
        if (v64[7])
        {
          v153 = v64[3];
          if (v153 != 2)
          {
            if (v153 != 1)
            {
              if (!v153)
              {
                operator new();
              }

              operator new();
            }

            operator new();
          }

          operator new();
        }
      }

LABEL_237:
      if (v237.__begin_)
      {
        operator delete(v237.__begin_);
      }

      v18 = *(v233 + 8);
LABEL_240:
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          if (v18 == 3)
          {
            v163 = *(v15 + 32);
            v164 = [*(v15 + 24) contents] + v163;
            if ((*(v164 + 8) | 2) == 3)
            {
              [*(v15 + 56) contents];
              [*(v15 + 152) contents];
              if (*(v164 + 20))
              {
                operator new();
              }

              v165 = *(v236 + 1);
              if (v165 != v231)
              {
                do
                {
                  v166 = v165[5];
                  v167 = v165[6];
                  v168 = 126 - 2 * __clz((v167 - v166) >> 3);
                  if (v167 == v166)
                  {
                    v169 = 0;
                  }

                  else
                  {
                    v169 = v168;
                  }

                  std::__introsort<std::_ClassicAlgPolicy,void AccelerationStructureViewerServer::DataSource::generateAccelerationStructureItems<MTLGenericBVHInstanceLeafNode_v5>(AccelerationStructureViewerServer::AccelerationStructure *)::{lambda(AccelerationStructureViewer::Instance const*,AccelerationStructureViewer::Instance const*)#1} &,AccelerationStructureViewer::Instance**,false>(v166, v167, v169, 1);
                  v170 = v165[1];
                  if (v170)
                  {
                    do
                    {
                      v171 = v170;
                      v170 = *v170;
                    }

                    while (v170);
                  }

                  else
                  {
                    do
                    {
                      v171 = v165[2];
                      v172 = *v171 == v165;
                      v165 = v171;
                    }

                    while (!v172);
                  }

                  v165 = v171;
                }

                while (v171 != v231);
              }
            }
          }

          goto LABEL_316;
        }

        v178 = *(v15 + 32);
        v179 = ([*(v15 + 24) contents] + v178);
        if ((v179[2] | 2) == 2)
        {
          v180 = *(v15 + 64);
          v181 = [*(v15 + 56) contents];
          v182 = v179[2] == 2 ? v179[9] : 1;
          if (v179[5])
          {
            v210 = 0;
            v235 = v181 + v180;
            v211 = v182 * v179[6];
            while (1)
            {
              v212 = v210 + 1;
              v213 = *(v15 + 64) + 60 * (v210 + 1);
              if (v213 > [*(v15 + 56) length])
              {
                goto LABEL_316;
              }

              v214 = (v235 + 60 * v210);
              v215 = *v214;
              if (v215 <= v179[6])
              {
                v216 = *(v214 + 1);
                if (v215 + v216 > v216)
                {
                  break;
                }
              }

LABEL_315:
              v210 = v212;
              if (v212 >= v179[5])
              {
                goto LABEL_316;
              }
            }

            while (2)
            {
              if (v179[2] == 2)
              {
                v217 = v179[9];
              }

              else
              {
                v217 = 1;
              }

              v218 = v217 * v216;
              v219 = *(v15 + 80);
              v220 = [*(v15 + 72) contents];
              if (v218 > v211)
              {
                goto LABEL_315;
              }

              v221 = v220 + v219;
              v222 = v179[3];
              if (v222 != 1)
              {
                if (!v222)
                {
                  v223 = (v221 + 48 * v218 + 36);
LABEL_312:
                  v224 = *v223;
                  v237.__begin_ = 0;
                  v238 = &v237;
                  v225 = std::__tree<std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Geometry *>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Geometry *>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Geometry *>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v236 + 4, 0, &v238);
                  if (v224 < (v225[6] - v225[5]) >> 3)
                  {
                    v238 = (v15 + 16);
                    v226 = *(std::__tree<std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Geometry *>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Geometry *>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Geometry *>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v236 + 4, *(v15 + 16), &v238)[5] + 8 * v224);
                    v227 = v226[21];
                    v226[20] = fminf(v226[20], v214[3]);
                    v226[21] = fminf(v227, v214[4]);
                    v228 = v226[23];
                    v226[22] = fminf(v226[22], v214[5]);
                    v226[23] = fmaxf(v228, v214[6]);
                    v229 = v226[25];
                    v226[24] = fmaxf(v226[24], v214[7]);
                    v226[25] = fmaxf(v229, v214[8]);
                  }
                }

                v216 = v218 + 1;
                if (v218 + 1 >= *v214 + *(v214 + 1))
                {
                  goto LABEL_315;
                }

                continue;
              }

              break;
            }

            v223 = (v221 + 16 * v218);
            goto LABEL_312;
          }
        }
      }

      else
      {
        if (v18)
        {
          if (v18 == 1)
          {
            v161 = *(v15 + 32);
            v162 = [*(v15 + 24) contents] + v161;
            if ((*(v162 + 8) | 2) == 3)
            {
              [*(v15 + 56) contents];
              [*(v15 + 152) contents];
              if (*(v162 + 20))
              {
                operator new();
              }

              v183 = *(v236 + 1);
              if (v183 != v231)
              {
                do
                {
                  v184 = v183[5];
                  v185 = v183[6];
                  v186 = 126 - 2 * __clz((v185 - v184) >> 3);
                  if (v185 == v184)
                  {
                    v187 = 0;
                  }

                  else
                  {
                    v187 = v186;
                  }

                  std::__introsort<std::_ClassicAlgPolicy,void AccelerationStructureViewerServer::DataSource::generateAccelerationStructureItems<MTLGenericBVHInstanceLeafNode_v5>(AccelerationStructureViewerServer::AccelerationStructure *)::{lambda(AccelerationStructureViewer::Instance const*,AccelerationStructureViewer::Instance const*)#1} &,AccelerationStructureViewer::Instance**,false>(v184, v185, v187, 1);
                  v188 = v183[1];
                  if (v188)
                  {
                    do
                    {
                      v189 = v188;
                      v188 = *v188;
                    }

                    while (v188);
                  }

                  else
                  {
                    do
                    {
                      v189 = v183[2];
                      v172 = *v189 == v183;
                      v183 = v189;
                    }

                    while (!v172);
                  }

                  v183 = v189;
                }

                while (v189 != v231);
              }
            }
          }

          goto LABEL_316;
        }

        v173 = *(v15 + 32);
        v174 = ([*(v15 + 24) contents] + v173);
        if ((v174[2] | 2) == 2)
        {
          v175 = *(v15 + 64);
          v176 = [*(v15 + 56) contents];
          v177 = v174[2] == 2 ? v174[9] : 1;
          if (v174[5])
          {
            v190 = 0;
            v234 = v176 + v175;
            v191 = v177 * v174[6];
            do
            {
              v192 = v190 + 1;
              v193 = *(v15 + 64) + 48 * (v190 + 1);
              if (v193 > [*(v15 + 56) length])
              {
                break;
              }

              v194 = (v234 + 48 * v190);
              v195 = *v194;
              if (v195 <= v174[6])
              {
                v196 = *(v194 + 1);
                if (v195 + v196 > v196)
                {
                  while (1)
                  {
                    if (v174[2] == 2)
                    {
                      v197 = v174[9];
                    }

                    else
                    {
                      v197 = 1;
                    }

                    v198 = v197 * v196;
                    v199 = *(v15 + 80);
                    v200 = [*(v15 + 72) contents];
                    if (v198 > v191)
                    {
                      goto LABEL_296;
                    }

                    v201 = v200 + v199;
                    v202 = v174[3];
                    if (v202 == 1)
                    {
                      break;
                    }

                    if (!v202)
                    {
                      v203 = (v201 + 48 * v198 + 36);
                      goto LABEL_293;
                    }

LABEL_295:
                    v196 = v198 + 1;
                    if (v198 + 1 >= *v194 + *(v194 + 1))
                    {
                      goto LABEL_296;
                    }
                  }

                  v203 = (v201 + 16 * v198);
LABEL_293:
                  v204 = *v203;
                  v237.__begin_ = 0;
                  v238 = &v237;
                  v205 = std::__tree<std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Geometry *>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Geometry *>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Geometry *>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v236 + 4, 0, &v238);
                  if (v204 < (v205[6] - v205[5]) >> 3)
                  {
                    v238 = (v15 + 16);
                    v206 = *(std::__tree<std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Geometry *>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Geometry *>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Geometry *>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v236 + 4, *(v15 + 16), &v238)[5] + 8 * v204);
                    v207 = v206[21];
                    v206[20] = fminf(v206[20], v194[3]);
                    v206[21] = fminf(v207, v194[4]);
                    v208 = v206[23];
                    v206[22] = fminf(v206[22], v194[5]);
                    v206[23] = fmaxf(v208, v194[6]);
                    v209 = v206[25];
                    v206[24] = fmaxf(v206[24], v194[7]);
                    v206[25] = fmaxf(v209, v194[8]);
                  }

                  goto LABEL_295;
                }
              }

LABEL_296:
              v190 = v192;
            }

            while (v192 < v174[5]);
          }
        }
      }

LABEL_316:
      v14 = v232 + 1;
      v3 = *(v236 + 23);
      if (v232 + 1 >= 0xD37A6F4DE9BD37A7 * ((*(v236 + 24) - v3) >> 3))
      {
        goto LABEL_317;
      }
    }

    if (v18 != 2)
    {
      if (v18 != 3)
      {
        goto LABEL_240;
      }

      v233 = v17 + v16;
      v41 = *(v15 + 32);
      v42 = ([*(v15 + 24) contents] + v41);
      v43 = malloc_type_calloc(v42[6], 0x18uLL, 0x1000040504FFAC1uLL);
      [*(v15 + 56) contents];
      v44 = 0;
      v45 = -1;
      do
      {
        if (++v45 >= v42[5])
        {
          break;
        }

        v44 += 104;
        v46 = *(v15 + 64) + v44;
      }

      while (v46 <= [*(v15 + 56) length]);
      v238 = (v15 + 16);
      std::__hash_table<std::__hash_value_type<unsigned long long,_MTLAxisAlignedBoundingBox *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,_MTLAxisAlignedBoundingBox *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,_MTLAxisAlignedBoundingBox *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,_MTLAxisAlignedBoundingBox *>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v236 + 24, *(v15 + 16), &v238)[3] = v43;
      memset(&v237, 0, sizeof(v237));
      std::vector<AccelerationStructureViewer::IntersectionFunctionTag>::resize(&v237, v42[7]);
      v47 = *(v15 + 72);
      if (v47)
      {
        v48 = *(v15 + 80);
        v49 = [v47 contents] + v48;
        v50 = [*(v15 + 72) length];
        v51 = v50;
        v52 = v42[6];
        if (v52)
        {
          v53 = 0;
          v54 = 0;
          v55 = 0;
          v56 = v42[3];
          v57 = v237.__begin_;
          v58 = 36;
          while (1)
          {
            if (v56 == 1)
            {
              if (v53 + *(v15 + 80) + 16 <= v50)
              {
                v61 = *(v49 + v53);
                if (v61 < v42[7])
                {
                  ++v57[v61];
                }

                v60 = v49 + 16 * v55;
                goto LABEL_66;
              }
            }

            else if (!v56 && v58 + *(v15 + 80) + 12 <= v50)
            {
              v59 = *(v49 + v58);
              if (v59 < v42[7])
              {
                ++v57[v59];
              }

              v60 = v49 + v58;
LABEL_66:
              v62 = *(v60 + 4);
              if (v54 <= v62)
              {
                v54 = v62;
              }

              v52 = v42[6];
            }

            ++v55;
            v58 += 48;
            v53 += 16;
            if (v55 >= v52)
            {
              goto LABEL_169;
            }
          }
        }

        v54 = 0;
LABEL_169:
        v140 = malloc_type_calloc(v54 + 1, 4uLL, 0x100004052888210uLL);
        if (v42[6])
        {
          v141 = 0;
          v142 = v42[3];
          do
          {
            if (v142)
            {
              if (v142 == 1)
              {
                v143 = v141 + 1;
                if (*(v15 + 80) + 16 * (v141 + 1) <= v51)
                {
                  v144 = *(v49 + 16 * v141 + 4);
                  goto LABEL_177;
                }
              }

              else
              {
                v143 = v141 + 1;
              }
            }

            else
            {
              v143 = v141 + 1;
              if (*(v15 + 80) + 48 * (v141 + 1) <= v51)
              {
                v144 = *(v49 + 48 * v141 + 40);
LABEL_177:
                if (v54 >= v144)
                {
                  v140[v144] = v141;
                }
              }
            }

            v141 = v143;
          }

          while (v143 < v42[6]);
        }

        v238 = (v15 + 16);
        std::__hash_table<std::__hash_value_type<unsigned long long,unsigned int *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned int *>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v236 + 14, *(v15 + 16), &v238)[3] = v140;
      }

      v145 = *(v15 + 88);
      if (v145)
      {
        [v145 contents];
        if (v42[7])
        {
          v146 = v42[3];
          if (v146 != 2)
          {
            if (v146 != 1)
            {
              if (!v146)
              {
                operator new();
              }

              operator new();
            }

            operator new();
          }

          operator new();
        }
      }

      goto LABEL_237;
    }

    v233 = v17 + v16;
    v69 = *(v15 + 32);
    v70 = ([*(v15 + 24) contents] + v69);
    v71 = malloc_type_calloc(v70[6], 0x18uLL, 0x1000040504FFAC1uLL);
    v72 = *(v15 + 64);
    v73 = [*(v15 + 56) contents];
    if (v70[2] == 2)
    {
      v74 = v70[9];
    }

    else
    {
      v74 = 1;
    }

    if (v70[5])
    {
      v104 = 0;
      v105 = v73 + v72;
      v106 = v74 * v70[6];
      do
      {
        v107 = v104 + 1;
        v108 = *(v15 + 64) + 60 * (v104 + 1);
        if (v108 > [*(v15 + 56) length])
        {
          break;
        }

        if ((v70[2] | 2) == 2)
        {
          v109 = (v105 + 60 * v104);
          v110 = v109[1];
          v111 = *v109 + v110;
          if (v111 <= v106 && v111 > v110)
          {
            v113 = v110 + 1;
            v114 = &v71[24 * v110];
            do
            {
              v115 = *(v109 + 3);
              *(v114 + 2) = *(v109 + 7);
              *v114 = v115;
              v114 += 24;
              v116 = v113 >= *v109 + v109[1] || v113 >= v106;
              ++v113;
            }

            while (!v116);
          }
        }

        ++v104;
      }

      while (v107 < v70[5]);
    }

    v238 = (v15 + 16);
    std::__hash_table<std::__hash_value_type<unsigned long long,_MTLAxisAlignedBoundingBox *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,_MTLAxisAlignedBoundingBox *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,_MTLAxisAlignedBoundingBox *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,_MTLAxisAlignedBoundingBox *>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v236 + 24, *(v15 + 16), &v238)[3] = v71;
    memset(&v237, 0, sizeof(v237));
    std::vector<AccelerationStructureViewer::IntersectionFunctionTag>::resize(&v237, v70[7]);
    v117 = *(v15 + 72);
    if (v117)
    {
      v118 = *(v15 + 80);
      v119 = [v117 contents] + v118;
      v120 = [*(v15 + 72) length];
      v121 = v120;
      v122 = v70[6];
      if (v122)
      {
        v123 = 0;
        v124 = 0;
        v125 = 0;
        v126 = v70[3];
        v127 = v237.__begin_;
        v128 = 36;
        while (1)
        {
          if (v126 == 1)
          {
            if (v123 + *(v15 + 80) + 16 <= v120)
            {
              v131 = *(v119 + v123);
              if (v131 < v70[7])
              {
                ++v127[v131];
              }

              v130 = v119 + 16 * v125;
              goto LABEL_140;
            }
          }

          else if (!v126 && v128 + *(v15 + 80) + 12 <= v120)
          {
            v129 = *(v119 + v128);
            if (v129 < v70[7])
            {
              ++v127[v129];
            }

            v130 = v119 + v128;
LABEL_140:
            v132 = *(v130 + 4);
            if (v124 <= v132)
            {
              v124 = v132;
            }

            v122 = v70[6];
          }

          ++v125;
          v128 += 48;
          v123 += 16;
          if (v125 >= v122)
          {
            goto LABEL_215;
          }
        }
      }

      v124 = 0;
LABEL_215:
      v154 = malloc_type_calloc(v124 + 1, 4uLL, 0x100004052888210uLL);
      if (v70[6])
      {
        v155 = 0;
        v156 = v70[3];
        do
        {
          if (v156)
          {
            if (v156 == 1)
            {
              v157 = v155 + 1;
              if (*(v15 + 80) + 16 * (v155 + 1) <= v121)
              {
                v158 = *(v119 + 16 * v155 + 4);
                goto LABEL_223;
              }
            }

            else
            {
              v157 = v155 + 1;
            }
          }

          else
          {
            v157 = v155 + 1;
            if (*(v15 + 80) + 48 * (v155 + 1) <= v121)
            {
              v158 = *(v119 + 48 * v155 + 40);
LABEL_223:
              if (v124 >= v158)
              {
                v154[v158] = v155;
              }
            }
          }

          v155 = v157;
        }

        while (v157 < v70[6]);
      }

      v238 = (v15 + 16);
      std::__hash_table<std::__hash_value_type<unsigned long long,unsigned int *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned int *>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v236 + 14, *(v15 + 16), &v238)[3] = v154;
    }

    v159 = *(v15 + 88);
    if (v159)
    {
      [v159 contents];
      if (v70[7])
      {
        v160 = v70[3];
        if (v160 != 2)
        {
          if (v160 != 1)
          {
            if (!v160)
            {
              operator new();
            }

            operator new();
          }

          operator new();
        }

        operator new();
      }
    }

    goto LABEL_237;
  }

LABEL_317:
  objc_autoreleasePoolPop(context);
}

uint64_t std::vector<AccelerationStructureViewer::Property>::__emplace_back_slow_path<AccelerationStructureViewer::Property&>(uint64_t a1, uint64_t a2)
{
  v2 = 0xEEEEEEEEEEEEEEEFLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x222222222222222)
  {
    std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0xDDDDDDDDDDDDDDDELL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((*(a1 + 16) - *a1) >> 3) >= 0x111111111111111)
  {
    v6 = 0x222222222222222;
  }

  else
  {
    v6 = v3;
  }

  v18[4] = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<AccelerationStructureViewer::Property>>(v6);
  }

  v7 = 120 * v2;
  *v7 = &unk_2860BC6A0;
  v8 = *(a2 + 8);
  *(v7 + 10) = *(a2 + 10);
  *(v7 + 8) = v8;
  *(v7 + 16) = *(a2 + 16);
  *(v7 + 24) = *(a2 + 24);
  v9 = *(a2 + 40);
  v10 = *(a2 + 56);
  v11 = *(a2 + 72);
  *(v7 + 88) = *(a2 + 88);
  *(v7 + 72) = v11;
  *(v7 + 56) = v10;
  *(v7 + 40) = v9;
  *(v7 + 104) = 0;
  *(v7 + 112) = 0;
  *(v7 + 96) = 0;
  std::vector<NSString * {__strong}>::__init_with_size[abi:nn200100]<NSString * {__strong}*,NSString * {__strong}*>((v7 + 96), *(a2 + 96), *(a2 + 104), (*(a2 + 104) - *(a2 + 96)) >> 3);
  v12 = v7 + 120;
  v13 = *(a1 + 8);
  v14 = v7 + *a1 - v13;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<AccelerationStructureViewer::Property>,AccelerationStructureViewer::Property*>(*a1, v13, v14);
  v15 = *a1;
  *a1 = v14;
  *(a1 + 8) = v12;
  v16 = *(a1 + 16);
  *(a1 + 16) = 0;
  v18[2] = v15;
  v18[3] = v16;
  v18[0] = v15;
  v18[1] = v15;
  std::__split_buffer<AccelerationStructureViewer::Property>::~__split_buffer(v18);
  return v12;
}

uint64_t **std::__tree<std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Instance *>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Instance *>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Instance *>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(uint64_t **a1, unint64_t a2, uint64_t ***a3)
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

void std::vector<AccelerationStructureViewer::Instance *>::push_back[abi:nn200100](uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 3) + 1;
    if (v8 >> 61)
    {
      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v9 = v3 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v11 = (8 * (v7 >> 3));
    *v11 = *a2;
    v5 = v11 + 1;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

uint64_t *std::__tree<std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Geometry *>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Geometry *>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Geometry *>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(uint64_t **a1, unint64_t a2, uint64_t **a3)
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

uint64_t *std::__introsort<std::_ClassicAlgPolicy,void AccelerationStructureViewerServer::DataSource::generateAccelerationStructureItems<MTLGenericBVHInstanceLeafNode_v5>(AccelerationStructureViewerServer::AccelerationStructure *)::{lambda(AccelerationStructureViewer::Instance const*,AccelerationStructureViewer::Instance const*)#1} &,AccelerationStructureViewer::Instance**,false>(uint64_t *result, char *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = (a2 - 8);
  v9 = v7;
  while (1)
  {
    v7 = v9;
    v10 = (a2 - v9) >> 3;
    if (v10 <= 2)
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v75 = *v9;
        if (*(*v8 + 40) < *(*v9 + 40))
        {
          *v9 = *v8;
          *v8 = v75;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v10 == 3)
    {
      break;
    }

    if (v10 == 4)
    {
      v82 = v9 + 1;
      v83 = v9[1];
      v84 = (v9 + 2);
      v85 = v9[2];
      v86 = *v9;
      v87 = *(v83 + 40);
      v88 = *(*v9 + 40);
      v89 = *(v85 + 40);
      if (v87 >= v88)
      {
        if (v89 >= v87)
        {
          goto LABEL_175;
        }

        *v82 = v85;
        *v84 = v83;
        v90 = v9;
        v91 = (v9 + 1);
        result = v83;
        if (v89 < v88)
        {
          goto LABEL_167;
        }
      }

      else
      {
        v90 = v9;
        v91 = (v9 + 2);
        result = *v9;
        if (v89 >= v87)
        {
          *v9 = v83;
          v9[1] = v86;
          v90 = v9 + 1;
          v91 = (v9 + 2);
          result = v86;
          if (v89 >= v88)
          {
LABEL_175:
            v83 = v85;
            goto LABEL_176;
          }
        }

LABEL_167:
        *v90 = v85;
        *v91 = v86;
        v83 = result;
      }

LABEL_176:
      if (*(*v8 + 40) < *(v83 + 40))
      {
        *v84 = *v8;
        *v8 = v83;
        v138 = *v84;
        v139 = *v82;
        v140 = *(v138 + 40);
        if (v140 < *(v139 + 40))
        {
          v9[1] = v138;
          v9[2] = v139;
          v141 = *v9;
          if (v140 < *(*v9 + 40))
          {
            *v9 = v138;
            v9[1] = v141;
          }
        }
      }

      return result;
    }

    if (v10 == 5)
    {

      return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,void AccelerationStructureViewerServer::DataSource::generateAccelerationStructureItems<MTLGenericBVHInstanceLeafNode_v5>(AccelerationStructureViewerServer::AccelerationStructure *)::{lambda(AccelerationStructureViewer::Instance const*,AccelerationStructureViewer::Instance const*)#1} &,AccelerationStructureViewer::Instance**,0>(v9, v9 + 1, v9 + 2, v9 + 3, a2 - 1);
    }

LABEL_10:
    if (v10 <= 23)
    {
      v92 = (v9 + 1);
      v94 = v9 == a2 || v92 == a2;
      if (a4)
      {
        if (!v94)
        {
          v95 = 0;
          v96 = v9;
          do
          {
            v98 = *v96;
            v97 = v96[1];
            v96 = v92;
            v99 = *(v97 + 40);
            if (v99 < *(v98 + 40))
            {
              v100 = v95;
              while (1)
              {
                *(v9 + v100 + 8) = v98;
                if (!v100)
                {
                  break;
                }

                v98 = *(v9 + v100 - 8);
                v100 -= 8;
                if (v99 >= *(v98 + 40))
                {
                  v101 = (v9 + v100 + 8);
                  goto LABEL_128;
                }
              }

              v101 = v9;
LABEL_128:
              *v101 = v97;
            }

            v92 = v96 + 1;
            v95 += 8;
          }

          while (v96 + 1 != a2);
        }
      }

      else if (!v94)
      {
        do
        {
          v135 = *v7;
          v134 = v7[1];
          v7 = v92;
          v136 = *(v134 + 40);
          if (v136 < *(v135 + 40))
          {
            v137 = v7;
            do
            {
              *v137 = v135;
              v135 = *(v137 - 2);
              --v137;
            }

            while (v136 < *(v135 + 40));
            *v137 = v134;
          }

          v92 = (v7 + 1);
        }

        while (v7 + 1 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v9 != a2)
      {
        v102 = (v10 - 2) >> 1;
        v103 = v102;
        do
        {
          v104 = v103;
          if (v102 >= v103)
          {
            v105 = (2 * v103) | 1;
            v106 = &v9[v105];
            v107 = *v106;
            if (2 * v104 + 2 < v10 && *(v107 + 40) < *(v106[1] + 40))
            {
              v107 = v106[1];
              ++v106;
              v105 = 2 * v104 + 2;
            }

            result = &v9[v104];
            v108 = *result;
            v109 = *(*result + 40);
            if (*(v107 + 40) >= v109)
            {
              do
              {
                v110 = v106;
                *result = v107;
                if (v102 < v105)
                {
                  break;
                }

                v111 = (2 * v105) | 1;
                v106 = &v9[v111];
                v112 = 2 * v105 + 2;
                v107 = *v106;
                if (v112 < v10 && *(v107 + 40) < *(v106[1] + 40))
                {
                  v107 = v106[1];
                  ++v106;
                  v111 = v112;
                }

                result = v110;
                v105 = v111;
              }

              while (*(v107 + 40) >= v109);
              *v110 = v108;
            }
          }

          v103 = v104 - 1;
        }

        while (v104);
        do
        {
          v113 = 0;
          v114 = *v9;
          v115 = v9;
          do
          {
            v116 = &v115[v113];
            v117 = v116 + 1;
            v118 = v116[1];
            v119 = (2 * v113) | 1;
            v113 = 2 * v113 + 2;
            if (v113 >= v10)
            {
              v113 = v119;
            }

            else
            {
              v122 = v116[2];
              v120 = v116 + 2;
              v121 = v122;
              result = *(v118 + 40);
              if (result >= *(v122 + 40))
              {
                v113 = v119;
              }

              else
              {
                v118 = v121;
                v117 = v120;
              }
            }

            *v115 = v118;
            v115 = v117;
          }

          while (v113 <= ((v10 - 2) >> 1));
          a2 -= 8;
          if (v117 == a2)
          {
            *v117 = v114;
          }

          else
          {
            *v117 = *a2;
            *a2 = v114;
            v123 = (v117 - v9 + 8) >> 3;
            v124 = v123 < 2;
            v125 = v123 - 2;
            if (!v124)
            {
              v126 = v125 >> 1;
              v127 = &v9[v126];
              v128 = *v127;
              v129 = *v117;
              v130 = *(*v117 + 40);
              if (*(*v127 + 40) < v130)
              {
                do
                {
                  v131 = v127;
                  *v117 = v128;
                  if (!v126)
                  {
                    break;
                  }

                  v126 = (v126 - 1) >> 1;
                  v127 = &v9[v126];
                  v128 = *v127;
                  v117 = v131;
                }

                while (*(*v127 + 40) < v130);
                *v131 = v129;
              }
            }
          }

          v124 = v10-- <= 2;
        }

        while (!v124);
      }

      return result;
    }

    v11 = &v9[v10 >> 1];
    v12 = v11;
    v13 = *v8;
    v14 = *(*v8 + 40);
    if (v10 >= 0x81)
    {
      v15 = *v11;
      v16 = *v9;
      v17 = *(*v11 + 40);
      v18 = *(*v9 + 40);
      if (v17 >= v18)
      {
        if (v14 < v17)
        {
          *v11 = v13;
          *v8 = v15;
          v23 = *v9;
          if (*(*v11 + 40) < *(*v9 + 40))
          {
            *v9 = *v11;
            *v11 = v23;
          }
        }
      }

      else
      {
        if (v14 < v17)
        {
          *v9 = v13;
          goto LABEL_27;
        }

        *v9 = v15;
        *v11 = v16;
        if (*(*v8 + 40) < v18)
        {
          *v11 = *v8;
LABEL_27:
          *v8 = v16;
        }
      }

      v25 = v11 - 1;
      v26 = *(v11 - 1);
      v27 = v9[1];
      v28 = *(v26 + 40);
      v29 = *(v27 + 40);
      v30 = *(a2 - 2);
      v31 = *(v30 + 40);
      if (v28 >= v29)
      {
        if (v31 < v28)
        {
          *v25 = v30;
          *(a2 - 2) = v26;
          v32 = v9[1];
          if (*(*v25 + 40) < *(v32 + 40))
          {
            v9[1] = *v25;
            *v25 = v32;
          }
        }
      }

      else
      {
        if (v31 < v28)
        {
          v9[1] = v30;
          goto LABEL_39;
        }

        v9[1] = v26;
        *v25 = v27;
        v33 = *(a2 - 2);
        if (*(v33 + 40) < v29)
        {
          *v25 = v33;
LABEL_39:
          *(a2 - 2) = v27;
        }
      }

      v36 = v11[1];
      v34 = v11 + 1;
      v35 = v36;
      v37 = v9[2];
      v38 = *(v36 + 40);
      v39 = *(v37 + 40);
      v40 = *(a2 - 3);
      v41 = *(v40 + 40);
      if (v38 >= v39)
      {
        if (v41 < v38)
        {
          *v34 = v40;
          *(a2 - 3) = v35;
          v42 = v9[2];
          if (*(*v34 + 40) < *(v42 + 40))
          {
            v9[2] = *v34;
            *v34 = v42;
          }
        }
      }

      else
      {
        if (v41 < v38)
        {
          v9[2] = v40;
          goto LABEL_48;
        }

        v9[2] = v35;
        *v34 = v37;
        v43 = *(a2 - 3);
        if (*(v43 + 40) < v39)
        {
          *v34 = v43;
LABEL_48:
          *(a2 - 3) = v37;
        }
      }

      v44 = *v12;
      v45 = *v25;
      v46 = *(*v12 + 40);
      v47 = *(*v25 + 40);
      v48 = *v34;
      v49 = *(*v34 + 40);
      if (v46 >= v47)
      {
        if (v49 >= v46)
        {
          goto LABEL_56;
        }

        *v12 = v48;
        *v34 = v44;
        v34 = v12;
        v44 = v45;
        if (v49 >= v47)
        {
          v44 = v48;
          goto LABEL_56;
        }
      }

      else if (v49 >= v46)
      {
        *v25 = v44;
        *v12 = v45;
        v25 = v12;
        v44 = v48;
        if (v49 >= v47)
        {
          v44 = v45;
LABEL_56:
          v50 = *v9;
          *v9 = v44;
          *v12 = v50;
          goto LABEL_57;
        }
      }

      *v25 = v48;
      *v34 = v45;
      goto LABEL_56;
    }

    v19 = *v9;
    v20 = *v12;
    v21 = *(*v9 + 40);
    v22 = *(*v12 + 40);
    if (v21 >= v22)
    {
      if (v14 < v21)
      {
        *v9 = v13;
        *v8 = v19;
        v24 = *v12;
        if (*(*v9 + 40) < *(*v12 + 40))
        {
          *v12 = *v9;
          *v9 = v24;
        }
      }

      goto LABEL_57;
    }

    if (v14 < v21)
    {
      *v12 = v13;
LABEL_36:
      *v8 = v20;
      goto LABEL_57;
    }

    *v12 = v19;
    *v9 = v20;
    if (*(*v8 + 40) < v22)
    {
      *v9 = *v8;
      goto LABEL_36;
    }

LABEL_57:
    --a3;
    v51 = *v9;
    if (a4)
    {
      v52 = *(v51 + 40);
LABEL_60:
      v53 = v9;
      do
      {
        v54 = v53;
        v56 = v53[1];
        ++v53;
        v55 = v56;
      }

      while (*(v56 + 40) < v52);
      v57 = a2;
      if (v54 == v9)
      {
        v57 = a2;
        do
        {
          if (v53 >= v57)
          {
            break;
          }

          v59 = *--v57;
        }

        while (*(v59 + 40) >= v52);
      }

      else
      {
        do
        {
          v58 = *--v57;
        }

        while (*(v58 + 40) >= v52);
      }

      if (v53 < v57)
      {
        v60 = *v57;
        v61 = v53;
        v62 = v57;
        do
        {
          *v61 = v60;
          *v62 = v55;
          do
          {
            v54 = v61;
            v63 = v61[1];
            ++v61;
            v55 = v63;
          }

          while (*(v63 + 40) < v52);
          do
          {
            v64 = *--v62;
            v60 = v64;
          }

          while (*(v64 + 40) >= v52);
        }

        while (v61 < v62);
      }

      if (v54 != v9)
      {
        *v9 = *v54;
      }

      *v54 = v51;
      if (v53 < v57)
      {
        goto LABEL_79;
      }

      v65 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,void AccelerationStructureViewerServer::DataSource::generateAccelerationStructureItems<MTLGenericBVHInstanceLeafNode_v5>(AccelerationStructureViewerServer::AccelerationStructure *)::{lambda(AccelerationStructureViewer::Instance const*,AccelerationStructureViewer::Instance const*)#1} &,AccelerationStructureViewer::Instance**>(v9, v54);
      v9 = v54 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,void AccelerationStructureViewerServer::DataSource::generateAccelerationStructureItems<MTLGenericBVHInstanceLeafNode_v5>(AccelerationStructureViewerServer::AccelerationStructure *)::{lambda(AccelerationStructureViewer::Instance const*,AccelerationStructureViewer::Instance const*)#1} &,AccelerationStructureViewer::Instance**>(v54 + 1, a2);
      if (result)
      {
        a2 = v54;
        if (!v65)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v65)
      {
LABEL_79:
        result = std::__introsort<std::_ClassicAlgPolicy,void AccelerationStructureViewerServer::DataSource::generateAccelerationStructureItems<MTLGenericBVHInstanceLeafNode_v5>(AccelerationStructureViewerServer::AccelerationStructure *)::{lambda(AccelerationStructureViewer::Instance const*,AccelerationStructureViewer::Instance const*)#1} &,AccelerationStructureViewer::Instance**,false>(v7, v54, a3, a4 & 1);
        a4 = 0;
        v9 = v54 + 1;
      }
    }

    else
    {
      v52 = *(v51 + 40);
      if (*(*(v9 - 1) + 40) < v52)
      {
        goto LABEL_60;
      }

      if (v52 >= *(*v8 + 40))
      {
        v67 = (v9 + 1);
        do
        {
          v9 = v67;
          if (v67 >= a2)
          {
            break;
          }

          v67 += 8;
        }

        while (v52 >= *(*v9 + 40));
      }

      else
      {
        do
        {
          v66 = v9[1];
          ++v9;
        }

        while (v52 >= *(v66 + 40));
      }

      v68 = a2;
      if (v9 < a2)
      {
        v68 = a2;
        do
        {
          v69 = *--v68;
        }

        while (v52 < *(v69 + 40));
      }

      if (v9 < v68)
      {
        v70 = *v9;
        v71 = *v68;
        do
        {
          *v9 = v71;
          *v68 = v70;
          do
          {
            v72 = v9[1];
            ++v9;
            v70 = v72;
          }

          while (v52 >= *(v72 + 40));
          do
          {
            v73 = *--v68;
            v71 = v73;
          }

          while (v52 < *(v73 + 40));
        }

        while (v9 < v68);
      }

      v74 = v9 - 1;
      if (v9 - 1 != v7)
      {
        *v7 = *v74;
      }

      a4 = 0;
      *v74 = v51;
    }
  }

  v76 = *v9;
  v77 = v9[1];
  v78 = *(v77 + 40);
  v79 = *(*v9 + 40);
  v80 = *v8;
  v81 = *(*v8 + 40);
  if (v78 >= v79)
  {
    if (v81 < v78)
    {
      v9[1] = v80;
      *v8 = v77;
      v133 = *v9;
      v132 = v9[1];
      if (*(v132 + 40) < *(*v9 + 40))
      {
        *v9 = v132;
        v9[1] = v133;
      }
    }
  }

  else
  {
    if (v81 >= v78)
    {
      *v9 = v77;
      v9[1] = v76;
      if (*(*v8 + 40) >= v79)
      {
        return result;
      }

      v9[1] = *v8;
    }

    else
    {
      *v9 = v80;
    }

    *v8 = v76;
  }

  return result;
}

uint64_t *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,void AccelerationStructureViewerServer::DataSource::generateAccelerationStructureItems<MTLGenericBVHInstanceLeafNode_v5>(AccelerationStructureViewerServer::AccelerationStructure *)::{lambda(AccelerationStructureViewer::Instance const*,AccelerationStructureViewer::Instance const*)#1} &,AccelerationStructureViewer::Instance**,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *(*a2 + 40);
  v8 = *(*result + 40);
  v9 = *a3;
  v10 = *(*a3 + 40);
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
      if (*(*a2 + 40) < *(*result + 40))
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
    if (*(*a3 + 40) < v8)
    {
      *a2 = v5;
      goto LABEL_9;
    }
  }

LABEL_11:
  if (*(*a4 + 40) < *(v5 + 40))
  {
    *a3 = *a4;
    *a4 = v5;
    v12 = *a2;
    if (*(*a3 + 40) < *(*a2 + 40))
    {
      *a2 = *a3;
      *a3 = v12;
      v13 = *result;
      if (*(*a2 + 40) < *(*result + 40))
      {
        *result = *a2;
        *a2 = v13;
      }
    }
  }

  v14 = *a4;
  if (*(*a5 + 40) < *(*a4 + 40))
  {
    *a4 = *a5;
    *a5 = v14;
    v15 = *a3;
    if (*(*a4 + 40) < *(*a3 + 40))
    {
      *a3 = *a4;
      *a4 = v15;
      v16 = *a2;
      if (*(*a3 + 40) < *(*a2 + 40))
      {
        *a2 = *a3;
        *a3 = v16;
        v17 = *result;
        if (*(*a2 + 40) < *(*result + 40))
        {
          *result = *a2;
          *a2 = v17;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,void AccelerationStructureViewerServer::DataSource::generateAccelerationStructureItems<MTLGenericBVHInstanceLeafNode_v5>(AccelerationStructureViewerServer::AccelerationStructure *)::{lambda(AccelerationStructureViewer::Instance const*,AccelerationStructureViewer::Instance const*)#1} &,AccelerationStructureViewer::Instance**>(uint64_t *a1, uint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v5 = *a1;
      v6 = a1[1];
      v7 = *(v6 + 40);
      v8 = *(*a1 + 40);
      v9 = *(a2 - 1);
      v10 = *(v9 + 40);
      if (v7 >= v8)
      {
        if (v10 < v7)
        {
          a1[1] = v9;
          *(a2 - 1) = v6;
          v32 = *a1;
          v31 = a1[1];
          if (*(v31 + 40) < *(*a1 + 40))
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
        if (*(v47 + 40) >= v8)
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

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,void AccelerationStructureViewerServer::DataSource::generateAccelerationStructureItems<MTLGenericBVHInstanceLeafNode_v5>(AccelerationStructureViewerServer::AccelerationStructure *)::{lambda(AccelerationStructureViewer::Instance const*,AccelerationStructureViewer::Instance const*)#1} &,AccelerationStructureViewer::Instance**,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
      return 1;
    }

    v20 = a1 + 1;
    v21 = a1[1];
    v22 = a1 + 2;
    v23 = a1[2];
    v24 = *a1;
    v25 = *(v21 + 40);
    v26 = *(*a1 + 40);
    v27 = *(v23 + 40);
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
        if (*(v42 + 40) < *(v21 + 40))
        {
          *v22 = v42;
          *(a2 - 1) = v21;
          v43 = *v22;
          v44 = *v20;
          v45 = *(v43 + 40);
          if (v45 < *(v44 + 40))
          {
            a1[1] = v43;
            a1[2] = v44;
            v46 = *a1;
            if (v45 < *(*a1 + 40))
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
    if (*(v3 + 40) < *(*a1 + 40))
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
  v15 = *(v13 + 40);
  v16 = *(*a1 + 40);
  v17 = *(v11 + 40);
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
    v38 = *(*v33 + 40);
    if (v38 < *(v37 + 40))
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
        if (v38 >= *(v37 + 40))
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

void *std::__hash_table<std::__hash_value_type<unsigned long long,_MTLAxisAlignedBoundingBox *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,_MTLAxisAlignedBoundingBox *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,_MTLAxisAlignedBoundingBox *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,_MTLAxisAlignedBoundingBox *>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(float *a1, unint64_t a2, void **a3)
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

void *std::__hash_table<std::__hash_value_type<unsigned long long,unsigned int *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned int *>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(float *a1, unint64_t a2, void **a3)
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

void AccelerationStructureViewerServer::DataSource::getAccelerationStructureChildren(void *a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = a6;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v11 = std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(a1 + 17, a2);
  if (!v11)
  {
    v20 = @"You can't have children of children";
    goto LABEL_27;
  }

  v12 = a1[23] + 184 * *(v11 + 6);
  v13 = *(v12 + 8);
  if (v13 != 4 && v13 != 2)
  {
    v20 = @"This acceleration structure does not support children structures.";
LABEL_27:
    v21 = ASVErrorWithCode(4u, v20);
    (v10)[2](v10, &v23, v21);

LABEL_28:
    v19 = v23;
    goto LABEL_29;
  }

  v22 = a3 + a4;
  if (a3 < a3 + a4)
  {
    while (1)
    {
      v15 = *(v12 + 128);
      if (a3 >= (*(v12 + 136) - v15) >> 3)
      {
        goto LABEL_21;
      }

      v16 = *(v15 + 8 * a3);
      v17 = *(v16 + 2);
      if (v17 > 1)
      {
        break;
      }

      if (v17)
      {
        if (v17 == 1)
        {
          operator new();
        }

LABEL_19:
        operator new();
      }

      if (++a3 == v22)
      {
        goto LABEL_21;
      }
    }

    switch(v17)
    {
      case 2:
        asvsAS2iasv(v16);
      case 4:
        operator new();
      case 3:
        asvsAS2pmasv(v16);
    }

    goto LABEL_19;
  }

LABEL_21:
  (v10)[2](v10, &v23, 0);
  v19 = v23;
  v18 = v24;
  if (v23 != v24)
  {
    do
    {
      if (*v19)
      {
        (*(**v19 + 8))(*v19);
      }

      ++v19;
    }

    while (v19 != v18);
    goto LABEL_28;
  }

LABEL_29:
  if (v19)
  {
    v24 = v19;
    operator delete(v19);
  }
}

void *AccelerationStructureViewerServer::DataSource::populateInstanceCount(uint64_t a1, unint64_t a2, uint64_t a3, AccelerationStructureViewer::Filter *a4)
{
  *(a3 + 68) = xmmword_24DA8BB50;
  *(a3 + 84) = 0x80000000800000;
  v7 = *(a1 + 16);
  result = (a1 + 16);
  v6 = v7;
  if (!v7)
  {
    goto LABEL_9;
  }

  v9 = result;
  do
  {
    v10 = v6[4];
    v11 = v10 >= a2;
    v12 = v10 < a2;
    if (v11)
    {
      v9 = v6;
    }

    v6 = v6[v12];
  }

  while (v6);
  if (v9 == result || v9[4] > a2)
  {
    goto LABEL_9;
  }

  v14 = v9[5];
  v13 = v9[6];
  if (v14 == v13)
  {
    if (*(a4 + 8))
    {
LABEL_9:
      *(a3 + 40) = 0;
      return result;
    }

    goto LABEL_20;
  }

  v15 = 3.4028e38;
  v16 = -3.4028e38;
  v17 = -3.4028e38;
  v18 = -3.4028e38;
  v19 = 3.4028e38;
  v20 = 3.4028e38;
  v21 = v9[5];
  do
  {
    v22 = *v21++;
    v20 = fminf(v20, v22[14]);
    *(a3 + 68) = v20;
    v19 = fminf(v19, v22[15]);
    *(a3 + 72) = v19;
    v15 = fminf(v15, v22[16]);
    *(a3 + 76) = v15;
    v18 = fmaxf(v18, v22[17]);
    *(a3 + 80) = v18;
    v17 = fmaxf(v17, v22[18]);
    *(a3 + 84) = v17;
    v16 = fmaxf(v16, v22[19]);
    *(a3 + 88) = v16;
  }

  while (v21 != v13);
  if (!*(a4 + 8))
  {
LABEL_20:
    *(a3 + 40) = v13 - v14;
    return result;
  }

  *(a3 + 40) = 0;
  do
  {
    result = AccelerationStructureViewer::DataSourceFilterable::matches((*v14 + 2), a4);
    if (result)
    {
      ++*(a3 + 40);
    }

    ++v14;
  }

  while (v14 != v9[6]);
  return result;
}

void AccelerationStructureViewerServer::DataSource::getInstanceChildren(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6)
{
  v11 = a6;
  if (a2 == -1)
  {
    goto LABEL_10;
  }

  v14 = *(a1 + 16);
  v13 = (a1 + 16);
  v12 = v14;
  if (!v14)
  {
    goto LABEL_10;
  }

  v15 = v13;
  do
  {
    v16 = v12[4];
    v17 = v16 >= a2;
    v18 = v16 < a2;
    if (v17)
    {
      v15 = v12;
    }

    v12 = v12[v18];
  }

  while (v12);
  if (v15 == v13 || v15[4] > a2)
  {
LABEL_10:
    __p = 0;
    v36 = 0;
    v37 = 0;
    v19 = ASVErrorWithCode(4u, @"Invalid acceleration structure");
    v11[2](v11, &__p, v19);

    if (__p)
    {
      v36 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v31 = &unk_2860BC948;
    v32 = *(a5 + 8);
    memset(v33, 0, sizeof(v33));
    v21 = *(a5 + 16);
    v20 = *(a5 + 24);
    if (v20 != v21)
    {
      v22 = 0xAAAAAAAAAAAAAAABLL * ((v20 - v21) >> 3);
      if (v22 < 0xAAAAAAAAAAAAAABLL)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<AccelerationStructureViewer::FilterToken>>(v22);
      }

      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v23 = v11;
    __p = 0;
    v36 = 0;
    v37 = 0;
    for (i = v15[5]; i != v15[6]; ++i)
    {
      v34 = *i;
      if (AccelerationStructureViewer::DataSourceFilterable::matches((v34 + 8), &v31))
      {
        std::vector<AccelerationStructureViewer::Instance *>::push_back[abi:nn200100](&__p, &v34);
      }
    }

    if (a3)
    {
      v25 = __p;
      v26 = __p + 8 * a3;
      v27 = v36 - v26;
      if (v36 != v26)
      {
        memmove(__p, v26, v36 - v26);
      }

      v28 = &v25[v27];
      v36 = &v25[v27];
    }

    else
    {
      v25 = __p;
      v28 = v36;
    }

    v17 = a4 >= (v28 - v25) >> 3;
    v29 = &v25[8 * a4];
    if (!v17 && v29 != v28)
    {
      v36 = v29;
    }

    v23[2](v23, &__p, 0);
    if (__p)
    {
      v36 = __p;
      operator delete(__p);
    }

    v31 = &unk_2860BC948;
    __p = v33;
    std::vector<AccelerationStructureViewer::FilterToken>::__destroy_vector::operator()[abi:nn200100](&__p);
  }
}

void AccelerationStructureViewerServer::DataSource::getPrimitiveData(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v17 = a5;
  v9 = std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>((a1 + 136), a2);
  if (v9)
  {
    v10 = *(a1 + 184) + 184 * *(v9 + 6);
    v11 = *(v10 + 112);
    v12 = [*(v10 + 104) contents];
    v13 = *(v10 + 120);
    if (a3 <= v13)
    {
      if (a3 + a4 <= v13)
      {
        [MEMORY[0x277CBEA90] dataWithBytes:v12 + v11 + a3 length:a4];
      }

      else
      {
        ASVErrorWithCode(2u, @"Requested data range end is beyond primitive data bounds");
      }
      v16 = ;
      v17[2]();
      goto LABEL_10;
    }

    v14 = @"Requested data range start is beyond primitive data bounds";
    v15 = 2;
  }

  else
  {
    v14 = @"Invalid acceleration structure";
    v15 = 4;
  }

  v16 = ASVErrorWithCode(v15, v14);
  (v17[2])(v17, 0, v16);
LABEL_10:
}

void AccelerationStructureViewerServer::DataSource::getPrimitiveChildren(void *a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v11 = a7;
  v12 = std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(a1 + 17, a2);
  if (!v12)
  {
    goto LABEL_36;
  }

  v13 = a1[23] + 184 * *(v12 + 6);
  v14 = *(v13 + 32);
  v15 = [*(v13 + 24) contents];
  v16 = a1[8];
  if (v16)
  {
    v17 = vcnt_s8(v16);
    v17.i16[0] = vaddlv_u8(v17);
    if (v17.u32[0] > 1uLL)
    {
      v18 = a2;
      if (*&v16 <= a2)
      {
        v18 = a2 % *&v16;
      }
    }

    else
    {
      v18 = (*&v16 - 1) & a2;
    }

    i = *(a1[7] + 8 * v18);
    if (i)
    {
      for (i = *i; i; i = *i)
      {
        v20 = i[1];
        if (v20 == a2)
        {
          if (i[2] == a2)
          {
            break;
          }
        }

        else
        {
          if (v17.u32[0] > 1uLL)
          {
            if (v20 >= *&v16)
            {
              v20 %= *&v16;
            }
          }

          else
          {
            v20 &= *&v16 - 1;
          }

          if (v20 != v18)
          {
            goto LABEL_19;
          }
        }
      }
    }
  }

  else
  {
LABEL_19:
    i = 0;
  }

  v21 = a1[13];
  if (!*&v21)
  {
    goto LABEL_36;
  }

  v22 = vcnt_s8(v21);
  v22.i16[0] = vaddlv_u8(v22);
  if (v22.u32[0] > 1uLL)
  {
    v23 = a2;
    if (*&v21 <= a2)
    {
      v23 = a2 % *&v21;
    }
  }

  else
  {
    v23 = (*&v21 - 1) & a2;
  }

  v24 = *(a1[12] + 8 * v23);
  if (!v24 || (v25 = *v24) == 0)
  {
LABEL_36:
    __p = 0;
    v30 = 0;
    v31 = 0;
    v27 = ASVErrorWithCode(4u, @"Invalid acceleration structure");
    v11[2](v11, &__p, v27);

    goto LABEL_37;
  }

  while (1)
  {
    v26 = v25[1];
    if (v26 == a2)
    {
      break;
    }

    if (v22.u32[0] > 1uLL)
    {
      if (v26 >= *&v21)
      {
        v26 %= *&v21;
      }
    }

    else
    {
      v26 &= *&v21 - 1;
    }

    if (v26 != v23)
    {
      goto LABEL_36;
    }

LABEL_35:
    v25 = *v25;
    if (!v25)
    {
      goto LABEL_36;
    }
  }

  if (v25[2] != a2)
  {
    goto LABEL_35;
  }

  if (!i || !v25)
  {
    goto LABEL_36;
  }

  if (a4 < *(v15 + v14 + 24) && i[3])
  {
    [*(v13 + 88) contents];
    v32 = 0;
    v33 = 0;
    v34 = 0;
    [*(v13 + 72) contents];
    if (a4 < a4 + a5)
    {
      operator new();
    }

    v11[2](v11, &v32, 0);
    v28 = v32;
    if (v32)
    {
      v33 = v32;
LABEL_39:
      operator delete(v28);
    }

    goto LABEL_40;
  }

  v30 = 0;
  v31 = 0;
  __p = 0;
  v11[2](v11, &__p, 0);
LABEL_37:
  v28 = __p;
  if (__p)
  {
    v30 = __p;
    goto LABEL_39;
  }

LABEL_40:
}

void AccelerationStructureViewerServer::DataSource::getGeometryChildren(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, AccelerationStructureViewer::Filter *a5, void *a6)
{
  v11 = a6;
  v14 = *(a1 + 40);
  v13 = (a1 + 40);
  v12 = v14;
  if (!v14)
  {
    goto LABEL_9;
  }

  v15 = v13;
  do
  {
    v16 = v12[4];
    v17 = v16 >= a2;
    v18 = v16 < a2;
    if (v17)
    {
      v15 = v12;
    }

    v12 = v12[v18];
  }

  while (v12);
  if (v15 != v13 && v15[4] <= a2)
  {
    __p = 0;
    v29 = 0;
    v30 = 0;
    v20 = v15[5];
    v21 = v15[6];
    while (v20 != v21)
    {
      if (AccelerationStructureViewer::DataSourceFilterable::matches((*v20 + 8), a5))
      {
        std::vector<AccelerationStructureViewer::Instance *>::push_back[abi:nn200100](&__p, v20);
      }

      ++v20;
    }

    if (a3)
    {
      v22 = __p;
      v23 = __p + 8 * a3;
      v24 = v29 - v23;
      if (v29 != v23)
      {
        memmove(__p, v23, v29 - v23);
      }

      v25 = &v22[v24];
      v29 = &v22[v24];
    }

    else
    {
      v22 = __p;
      v25 = v29;
    }

    v17 = a4 >= (v25 - v22) >> 3;
    v26 = &v22[8 * a4];
    if (!v17 && v26 != v25)
    {
      v29 = v26;
    }

    v11[2](v11, &__p, 0);
  }

  else
  {
LABEL_9:
    __p = 0;
    v29 = 0;
    v30 = 0;
    v19 = ASVErrorWithCode(4u, @"Invalid acceleration structure");
    (v11)[2](v11, &__p, v19);
  }

  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }
}

void AccelerationStructureViewerServer::DataSource::getPrimaryAccelerationStructure(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = (*(a1 + 184) + 184 * *(a1 + 176));
  v6 = *(v5 + 2);
  if (v6 <= 1)
  {
    if (v6)
    {
      if (v6 == 1)
      {
        operator new();
      }
    }

    else
    {
      memset(&v7[1], 0, 40);
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v8 = 0;
      v7[0] = &unk_2860BB888;
      v7[6] = @"Invalid Acceleration Structure";
      (*(v3 + 2))(v3, v7, 0);
      AccelerationStructureViewer::InvalidAccelerationStructure::~InvalidAccelerationStructure(v7);
    }
  }

  else
  {
    switch(v6)
    {
      case 2:
        asvsAS2iasv(v5);
      case 3:
        asvsAS2pmasv(v5);
      case 4:
        operator new();
    }
  }
}

void AccelerationStructureViewerServer::DataSource::getIntersectionFunctions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (**a6)(void, void, void))
{
  v7 = MEMORY[0x277CCA9B8];
  v8 = a6;
  v9 = [v7 errorWithDomain:@"ASV" code:4 userInfo:{0, 0, 0, 0}];
  (a6)[2](v8, &v10, v9);

  v11 = &v10;
  std::vector<AccelerationStructureViewer::IntersectionFunction>::__destroy_vector::operator()[abi:nn200100](&v11);
}

void AccelerationStructureViewerServer::DataSource::getIntersectionFunctionTables(uint64_t a1, void (**a2)(void, void, void))
{
  memset(v6, 0, sizeof(v6));
  memset(v5, 0, sizeof(v5));
  v3 = a2;
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ASV" code:4 userInfo:0];
  (a2)[2](v3, v5, v4);

  v7 = v5;
  std::vector<AccelerationStructureViewer::IntersectionFunctionTable>::__destroy_vector::operator()[abi:nn200100](&v7);
  v7 = v6;
  std::vector<AccelerationStructureViewer::IntersectionFunctionTable>::__destroy_vector::operator()[abi:nn200100](&v7);
}

void AccelerationStructureViewerServer::DataSource::~DataSource(AccelerationStructureViewerServer::DataSource *this)
{
  *this = &unk_2860BC618;
  v2 = *(this + 4);
  v3 = this + 40;
  if (v2 != this + 40)
  {
    do
    {
      v4 = *(v2 + 5);
      v5 = *(v2 + 6);
      if (v4 != v5)
      {
        do
        {
          if (*v4)
          {
            (*(**v4 + 8))(*v4);
          }

          ++v4;
        }

        while (v4 != v5);
        v4 = *(v2 + 5);
      }

      *(v2 + 6) = v4;
      v6 = *(v2 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v2 + 2);
          v8 = *v7 == v2;
          v2 = v7;
        }

        while (!v8);
      }

      v2 = v7;
    }

    while (v7 != v3);
  }

  std::__tree<std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Instance *>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Instance *>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Instance *>>>>::destroy(*(this + 5));
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = v3;
  for (i = *(this + 9); i; i = *i)
  {
    free(i[3]);
  }

  if (*(this + 10))
  {
    v10 = *(this + 9);
    if (v10)
    {
      do
      {
        v11 = *v10;
        operator delete(v10);
        v10 = v11;
      }

      while (v11);
    }

    *(this + 9) = 0;
    v12 = *(this + 8);
    if (v12)
    {
      for (j = 0; j != v12; ++j)
      {
        *(*(this + 7) + 8 * j) = 0;
      }
    }

    *(this + 10) = 0;
  }

  for (k = *(this + 14); k; k = *k)
  {
    free(k[3]);
  }

  if (*(this + 15))
  {
    v15 = *(this + 14);
    if (v15)
    {
      do
      {
        v16 = *v15;
        operator delete(v15);
        v15 = v16;
      }

      while (v16);
    }

    *(this + 14) = 0;
    v17 = *(this + 13);
    if (v17)
    {
      for (m = 0; m != v17; ++m)
      {
        *(*(this + 12) + 8 * m) = 0;
      }
    }

    *(this + 15) = 0;
  }

  v19 = *(this + 23);
  if (*(this + 24) != v19)
  {
    v20 = 0;
    v21 = 0;
    do
    {
      v22 = v19 + v20;
      v23 = *(v22 + 24);
      *(v22 + 24) = 0;

      v24 = *(this + 23) + v20;
      v25 = *(v24 + 40);
      *(v24 + 40) = 0;

      v26 = *(this + 23) + v20;
      v27 = *(v26 + 56);
      *(v26 + 56) = 0;

      v28 = *(this + 23) + v20;
      v29 = *(v28 + 72);
      *(v28 + 72) = 0;

      v30 = *(this + 23) + v20;
      v31 = *(v30 + 88);
      *(v30 + 88) = 0;

      v32 = *(this + 23) + v20;
      v33 = *(v32 + 104);
      *(v32 + 104) = 0;

      v34 = *(this + 23) + v20;
      v35 = *(v34 + 152);
      *(v34 + 152) = 0;

      v36 = *(this + 23) + v20;
      v37 = *(v36 + 168);
      *(v36 + 168) = 0;

      ++v21;
      v19 = *(this + 23);
      v20 += 184;
    }

    while (v21 < 0xD37A6F4DE9BD37A7 * ((*(this + 24) - v19) >> 3));
  }

  v44 = (this + 184);
  std::vector<AccelerationStructureViewerServer::AccelerationStructure>::__destroy_vector::operator()[abi:nn200100](&v44);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 136);
  v38 = *(this + 14);
  if (v38)
  {
    do
    {
      v39 = *v38;
      operator delete(v38);
      v38 = v39;
    }

    while (v39);
  }

  v40 = *(this + 12);
  *(this + 12) = 0;
  if (v40)
  {
    operator delete(v40);
  }

  v41 = *(this + 9);
  if (v41)
  {
    do
    {
      v42 = *v41;
      operator delete(v41);
      v41 = v42;
    }

    while (v42);
  }

  v43 = *(this + 7);
  *(this + 7) = 0;
  if (v43)
  {
    operator delete(v43);
  }

  std::__tree<std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Instance *>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Instance *>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Instance *>>>>::destroy(*(this + 5));
  std::__tree<std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Instance *>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Instance *>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Instance *>>>>::destroy(*(this + 2));
}

void std::__tree<std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Instance *>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Instance *>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Instance *>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Instance *>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Instance *>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Instance *>>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Instance *>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Instance *>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::Instance *>>>>::destroy(a1[1]);
    v2 = a1[5];
    if (v2)
    {
      a1[6] = v2;
      operator delete(v2);
    }

    operator delete(a1);
  }
}

void std::vector<AccelerationStructureViewerServer::APSUSCRayCollector>::resize(uint64_t *a1, unint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = (v3 - *a1) >> 5;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      for (i = (v4 + 32 * a2); v3 != i; v3 -= 4)
      {
      }

      a1[1] = i;
    }
  }

  else
  {
    v6 = a1[2];
    if (a2 - v5 > (v6 - v3) >> 5)
    {
      if (!(a2 >> 59))
      {
        v7 = v6 - v4;
        v8 = v7 >> 4;
        if (v7 >> 4 <= a2)
        {
          v8 = a2;
        }

        if (v7 >= 0x7FFFFFFFFFFFFFE0)
        {
          v9 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v9 = v8;
        }

        if (!(v9 >> 59))
        {
          operator new();
        }

        std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
      }

      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v11 = &v3[4 * (a2 - v5)];
    v12 = 32 * a2 - 32 * v5;
    do
    {
      v3[2] = 0;
      v3[3] = 0;
      *v3 = -1;
      v3[1] = 0;
      v3 += 4;
      v12 -= 32;
    }

    while (v12);
    a1[1] = v11;
  }
}

uint64_t AccelerationStructureViewerServer::Profiler::gpuForDevice(void *a1)
{
  v1 = [a1 acceleratorPort];
  v2 = GRCCopyAllCounterSourceGroup();
  if (![v2 count] || (objc_msgSend(v2, "firstObject"), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_opt_respondsToSelector(), v3, (v4 & 1) == 0) || (v5 = MEMORY[0x277CBEB38], objc_msgSend(v2, "firstObject"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "features"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "objectForKeyedSubscript:", @"ConstantAGX_CoreConfig"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "dictionaryWithDictionary:", v8), CFProperty = objc_claimAutoreleasedReturnValue(), v8, v7, v6, !CFProperty))
  {
    CFProperty = IORegistryEntryCreateCFProperty(v1, @"GPUConfigurationVariable", 0, 0);
  }

  v10 = [CFProperty objectForKeyedSubscript:@"gpu_gen"];
  v11 = [v10 unsignedIntegerValue];

  v12 = [CFProperty objectForKeyedSubscript:@"gpu_var"];
  v13 = [CFProperty objectForKeyedSubscript:@"gpu_rev"];
  v14 = [CFProperty objectForKeyedSubscript:@"gpu_type"];
  v15 = v14;
  if (!v14 || !v13)
  {
    v26 = [CFProperty objectForKeyedSubscript:@"num_cores"];
    v27 = [v26 unsignedIntegerValue];

    if (v11 == 16)
    {
      if (v27 <= 7)
      {

        v13 = @"B1";
        v11 = 16;
LABEL_29:
        v12 = @"P";
        goto LABEL_39;
      }

      if (v27 > 0xA)
      {

        if (v27 >= 0x15)
        {
          v12 = @"C";
        }

        else
        {
          v12 = @"S";
        }

        v13 = @"A0";
        v11 = 16;
        goto LABEL_39;
      }

      v13 = @"B0";
      v11 = 16;
    }

    else
    {
      if (v11 != 15)
      {

        if (v27 >= 8)
        {
          v12 = @"G";
        }

        else
        {
          v12 = @"P";
        }

        v13 = @"A0";
        goto LABEL_25;
      }

      if (v27 <= 3)
      {

        v13 = @"B0";
        v11 = 15;
        v12 = @"M";
        goto LABEL_39;
      }

      if (v27 <= 7)
      {

        v13 = @"B1";
        v11 = 15;
        goto LABEL_29;
      }

      if (v27 > 0xA)
      {
        if (v27 > 0x14)
        {

          if (v27 >= 0x29)
          {
            v12 = @"D";
          }

          else
          {
            v12 = @"C";
          }

          if (v27 >= 0x29)
          {
            v13 = @"A0";
          }

          else
          {
            v13 = @"B0";
          }

          v11 = 15;
        }

        else
        {

          v13 = @"B0";
          v11 = 15;
          v12 = @"S";
        }

        goto LABEL_39;
      }

      v13 = @"C0";
      v11 = 15;
    }

    v12 = @"G";
    goto LABEL_39;
  }

  if ([v14 length])
  {
    v16 = [MEMORY[0x277CCA900] letterCharacterSet];
    v17 = [v15 componentsSeparatedByCharactersInSet:v16];

    if ([v17 count] >= 3)
    {
      v18 = [v17 objectAtIndex:0];
      v19 = [v18 length];

      if (!v19)
      {
        v20 = [v17 objectAtIndex:1];
        v11 = [v20 integerValue];
      }
    }

    v21 = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
    v22 = [v15 componentsSeparatedByCharactersInSet:v21];

    if ([v22 count] >= 3)
    {
      v23 = [v22 objectAtIndex:1];
      v24 = [v23 length];

      if (!v24)
      {
        v25 = [v22 objectAtIndex:2];

        v12 = v25;
      }
    }
  }

LABEL_25:
  if (v11 <= 9)
  {
    v28 = agxps_gpu_invalid_handle();
    goto LABEL_46;
  }

LABEL_39:
  v29 = [&unk_2860D63A8 objectForKey:v12];
  v30 = v29;
  if (v29)
  {
    v31 = [v29 unsignedIntegerValue];
    v32 = [&unk_2860D63D0 objectForKey:v13];
    v33 = v32;
    if (v32)
    {
      v34 = agxps_gpu_create(v11, v31, [v32 unsignedIntegerValue], 0);
    }

    else
    {
      v34 = agxps_gpu_invalid_handle();
    }

    v28 = v34;
  }

  else
  {
    v28 = agxps_gpu_invalid_handle();
  }

LABEL_46:
  return v28;
}

void std::vector<std::mutex>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        std::mutex::~mutex(v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::deque<AccelerationStructureViewerServer::APSRawChunk>::~deque[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 64;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 128;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void AccelerationStructureViewerServer::Profiler::stopAPSStreaming(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 752) firstObject];
  [v3 stopSampling];

  if (*(a1 + 32) == 1)
  {
    NSLog(&cfstr_WaitingForAccu.isa);
  }

  *(a1 + 432) = 0;
  v5 = *(a1 + 248);
  v4 = *(a1 + 256);
  if (v4 != v5)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      std::thread::join((v5 + v6));
      ++v7;
      v5 = *(a1 + 248);
      v4 = *(a1 + 256);
      v6 += 8;
    }

    while (v7 < (v4 - v5) >> 3);
  }

  while (v4 != v5)
  {
    std::thread::~thread((v4 - 8));
  }

  *(a1 + 256) = v5;
  if (*(a1 + 32))
  {
    NSLog(&cfstr_WaitingForPars.isa);
  }

  v9 = *(a1 + 272);
  v8 = *(a1 + 280);
  if (v8 != v9)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      std::thread::join((v9 + v10));
      ++v11;
      v9 = *(a1 + 272);
      v8 = *(a1 + 280);
      v10 += 8;
    }

    while (v11 < (v8 - v9) >> 3);
  }

  while (v8 != v9)
  {
    std::thread::~thread((v8 - 8));
  }

  *(a1 + 280) = v9;
  if (*(a1 + 32))
  {
    NSLog(&cfstr_ClearingOutRaw.isa);
  }

  if (*(a1 + 584) != *(a1 + 576))
  {
    v12 = 0;
    do
    {
      std::mutex::lock((*(a1 + 552) + (v12 << 6)));
      for (i = (*(a1 + 576) + 48 * v12); i[5]; i = (*(a1 + 576) + 48 * v12))
      {
        free(*(*(i[1] + ((i[4] >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (i[4] & 0x7FLL) + 16));
        v14 = (*(a1 + 576) + 48 * v12);
        v14[2] = vaddq_s64(v14[2], xmmword_24DA8BC20);
        std::deque<AccelerationStructureViewerServer::APSRawChunk>::__maybe_remove_front_spare[abi:nn200100](v14);
      }

      std::mutex::unlock((*(a1 + 552) + (v12++ << 6)));
    }

    while (v12 < 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 584) - *(a1 + 576)) >> 4));
  }

  if (*(a1 + 32))
  {
    NSLog(&cfstr_ClearingOutFre.isa);
  }

  std::mutex::lock((a1 + 440));
  while (*(a1 + 544))
  {
    free(*(*(*(a1 + 512) + ((*(a1 + 536) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (*(a1 + 536) & 0x7FLL) + 16));
    *(a1 + 536) = vaddq_s64(*(a1 + 536), xmmword_24DA8BC20);
    std::deque<AccelerationStructureViewerServer::APSRawChunk>::__maybe_remove_front_spare[abi:nn200100](a1 + 504);
  }

  std::mutex::unlock((a1 + 440));
  if (*(a1 + 32) == 1)
  {
    NSLog(&cfstr_ClearingOutFre_0.isa);
  }

  std::mutex::lock((a1 + 136));
  while (*(a1 + 240))
  {
    std::deque<objc_object  {objcproto9MTLBuffer}* {__strong}>::pop_front(a1 + 200);
  }

  std::mutex::unlock((a1 + 136));
  if (*(a1 + 32) == 1)
  {
    NSLog(&cfstr_StreamingIsNoL.isa);
  }
}

void std::__tree<std::__value_type<unsigned int,std::shared_ptr<AccelerationStructureViewerServer::APSRayCollector>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<AccelerationStructureViewerServer::APSRayCollector>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<AccelerationStructureViewerServer::APSRayCollector>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned int,std::shared_ptr<AccelerationStructureViewerServer::APSRayCollector>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<AccelerationStructureViewerServer::APSRayCollector>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<AccelerationStructureViewerServer::APSRayCollector>>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned int,std::shared_ptr<AccelerationStructureViewerServer::APSRayCollector>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<AccelerationStructureViewerServer::APSRayCollector>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<AccelerationStructureViewerServer::APSRayCollector>>>>::destroy(a1[1]);
    v2 = a1[6];
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v2);
    }

    operator delete(a1);
  }
}

void std::vector<std::thread>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        std::thread::~thread(v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__shared_weak_count::__release_shared[abi:nn200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void std::deque<AccelerationStructureViewerServer::APSRawChunk>::__maybe_remove_front_spare[abi:nn200100](uint64_t a1)
{
  if (*(a1 + 32) >= 0x100uLL)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 128;
  }
}

void std::deque<objc_object  {objcproto9MTLBuffer}* {__strong}>::pop_front(uint64_t a1)
{
  v2 = vaddq_s64(*(a1 + 32), xmmword_24DA8BC20);
  *(a1 + 32) = v2;
  if (v2.i64[0] >= 0x400uLL)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 512;
  }
}

uint64_t AccelerationStructureViewerServer::Profiler::startAPSStreaming(void *a1)
{
  v1 = [a1 firstObject];
  v2 = [v1 startSampling];

  return v2;
}

void std::vector<AccelerationStructureViewerServer::APSUSCChunkCollector>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = v2 - *a1;
  v5 = 0xE0D0D6AAD8DA6A1BLL * (v4 >> 3);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      a1[1] = v3 + 196760 * a2;
    }
  }

  else
  {
    v7 = a1[2];
    if (0xE0D0D6AAD8DA6A1BLL * ((v7 - v2) >> 3) < v6)
    {
      if (a2 <= 0x5544751E275DLL)
      {
        v8 = 0xC1A1AD55B1B4D436 * ((v7 - v3) >> 3);
        if (v8 <= a2)
        {
          v8 = a2;
        }

        if (0xE0D0D6AAD8DA6A1BLL * ((v7 - v3) >> 3) >= 0x2AA23A8F13AELL)
        {
          v9 = 0x5544751E275DLL;
        }

        else
        {
          v9 = v8;
        }

        if (v9 <= 0x5544751E275DLL)
        {
          operator new();
        }

        std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
      }

      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v10 = v2 + 196760 * v6;
    v11 = 196760 * a2 - 8 * (v4 >> 3);
    do
    {
      v12 = v2 + 196608;
      *(v2 + 8) = -1;
      *(v2 + 16) = -1;
      *(v2 + 24) = -1;
      *(v2 + 32) = 0;
      *(v2 + 40) = 1;
      *(v2 + 196720) = 0;
      *(v2 + 196736) = 0;
      *(v2 + 196744) = 0;
      *(v2 + 196728) = 0;
      *(v2 + 196752) = 0;
      atomic_store(0, (v2 + 48));
      *(v2 + 56) = 0;
      *(v2 + 64) = 0;
      *(v2 + 72) = 0;
      *(v2 + 196720) = 0;
      v2 += 196760;
      *(v12 + 120) = 0;
      v11 -= 196760;
    }

    while (v11);
    a1[1] = v10;
  }
}

uint64_t *std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,AccelerationStructureViewerServer::Profiler::initAPSStreaming(objc_object  {objcproto9MTLDevice}*)::$_0>,std::default_delete<AccelerationStructureViewerServer::Profiler::initAPSStreaming(objc_object  {objcproto9MTLDevice}*)::$_0>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {

    v3 = std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:nn200100](v2);
    MEMORY[0x2530332C0](v3, 0x10A0C40A7A12BA5);
  }

  return a1;
}

void std::vector<std::thread>::push_back[abi:nn200100](uint64_t a1, std::__libcpp_thread_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = (v4 - *a1) >> 3;
    v8 = v7 + 1;
    if ((v7 + 1) >> 61)
    {
      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v9 = v3 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v11 = (8 * v7);
    p_t = &v11[-((v4 - *a1) >> 3)].__t_;
    v11->__t_ = *a2;
    v5 = v11 + 1;
    *a2 = 0;
    if (v6 != v4)
    {
      v13 = v6;
      v14 = p_t;
      do
      {
        *v14++ = v13->__t_;
        v13->__t_ = 0;
        ++v13;
      }

      while (v13 != v4);
      do
      {
        std::thread::~thread(v6);
        v6 = v15 + 1;
      }

      while (v6 != v4);
      v6 = *a1;
    }

    *a1 = p_t;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    v4->__t_ = *a2;
    *a2 = 0;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

uint64_t *std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,AccelerationStructureViewerServer::Profiler::initAPSStreaming(objc_object  {objcproto9MTLDevice}*)::$_1>,std::default_delete<AccelerationStructureViewerServer::Profiler::initAPSStreaming(objc_object  {objcproto9MTLDevice}*)::$_1>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {

    v3 = std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:nn200100](v2);
    MEMORY[0x2530332C0](v3, 0x10A0C406BEFA00CLL);
  }

  return a1;
}

uint64_t std::__thread_proxy[abi:nn200100]<std::tuple<std::unique_ptr<std::__thread_struct>,AccelerationStructureViewerServer::Profiler::initAPSStreaming(objc_object  {objcproto9MTLDevice}*)::$_1>>(uint64_t a1)
{
  v5 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  AccelerationStructureViewerServer::Profiler::parserWorker(*(a1 + 8), *(a1 + 16), *(a1 + 24));
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,AccelerationStructureViewerServer::Profiler::initAPSStreaming(objc_object  {objcproto9MTLDevice}*)::$_1>,std::default_delete<AccelerationStructureViewerServer::Profiler::initAPSStreaming(objc_object  {objcproto9MTLDevice}*)::$_1>>::~unique_ptr[abi:nn200100](&v5);
  return 0;
}

void AccelerationStructureViewerServer::Profiler::parserWorker(uint64_t a1, uint64_t a2, void *a3)
{
  v190 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*(a1 + 32) == 1)
  {
    NSLog(&cfstr_StartedParserW.isa);
  }

  v5 = AccelerationStructureViewerServer::Profiler::gpuForDevice(v4);
  if (agxps_gpu_is_valid(v5))
  {
    v135 = v4;
    v186 = 0u;
    v187 = 0u;
    v184 = 0u;
    v185 = 0u;
    memset(v183, 0, sizeof(v183));
    agxps_aps_descriptor_create(v183);
    v183[0] = v5;
    LODWORD(v183[1]) = *(a1 + 816);
    *(&v183[1] + 4) = *(a1 + 808);
    v183[3] = 4096;
    LODWORD(v184) = 0;
    v188[0] = xmmword_279659138;
    v188[1] = *off_279659148;
    v189 = "C648A066B5DF92C6610FB4DD77453469B226FC0B0B2903FDA7E76C7AD03011AC";
    *(&v185 + 1) = v188;
    *&v186 = 5;
    v182 = 0u;
    memset(v181, 0, sizeof(v181));
    if (*(a1 + 432) == 1)
    {
      v137 = (a1 + 736);
      v6 = -1;
      while (2)
      {
        while (*(a1 + 584) == *(a1 + 576))
        {
LABEL_24:
          usleep(0x3E8u);
          if ((*(a1 + 432) & 1) == 0)
          {
            goto LABEL_265;
          }
        }

        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = -1;
        while (1)
        {
          v11 = std::mutex::try_lock((*(a1 + 552) + v8));
          v12 = *(a1 + 576);
          if (v11)
          {
            break;
          }

LABEL_22:
          ++v9;
          v8 += 64;
          v7 += 48;
          if (v9 >= 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 584) - v12) >> 4))
          {
            if (v10 != -1)
            {
              goto LABEL_27;
            }

            goto LABEL_24;
          }
        }

        v13 = *(v12 + v7 + 40);
        if (!v13)
        {
          v16 = v10;
LABEL_21:
          std::mutex::unlock((*(a1 + 552) + v8));
          v12 = *(a1 + 576);
          v10 = v16;
          goto LABEL_22;
        }

        v14 = *(*(v12 + v7 + 8) + ((*(v12 + v7 + 32) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (*(v12 + v7 + 32) & 0x7FLL);
        v15 = *(v14 + 8) != *(*(a1 + 600) + 196760 * *(v14 + 2) + 32) || v13 >= v6;
        if (v15)
        {
          goto LABEL_17;
        }

        if (v10 != -1)
        {
          std::mutex::unlock((*(a1 + 552) + (v10 << 6)));
          v12 = *(a1 + 576);
        }

        v6 = *(v12 + v7 + 40);
        v10 = v9;
        if (v6 != 1)
        {
LABEL_17:
          v16 = v10;
          v47 = v9 == v10;
          v10 = v9;
          if (v47)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }

        v10 = v9;
LABEL_27:
        if (*(a1 + 432))
        {
          v17 = (v12 + 48 * v10);
          v18 = (*(v17->i64[1] + ((v17[2].i64[0] >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v17[2].i64[0] & 0x7F));
          v19 = v18[1];
          v179 = *v18;
          v180 = v19;
          v17[2] = vaddq_s64(v17[2], xmmword_24DA8BC20);
          std::deque<AccelerationStructureViewerServer::APSRawChunk>::__maybe_remove_front_spare[abi:nn200100](v17);
          std::mutex::unlock((*(a1 + 552) + (v10 << 6)));
          v138 = WORD1(v179);
          v136 = *(a1 + 600);
          v20 = (v136 + 196760 * WORD1(v179));
          if (v179 == 1)
          {
            if (*(&v179 + 1))
            {
              agxps_aps_parser_destroy(*v20);
            }

            v20[7] = 0;
            v20[8] = 0;
            v20[9] = 0;
            *(v20 + 12293) = 0u;
            *(v20 + 12294) = 0u;
            v21 = agxps_aps_parser_create(v183);
            *v20 = v21;
            if (*(a1 + 32) == 1 && !v21)
            {
              NSLog(&cfstr_ParserIsMissin.isa);
            }
          }

          v22 = v180;
          if (*(a1 + 32) == 1 && (!v180 || !*(&v180 + 1)))
          {
            NSLog(&cfstr_ChunkIsNullptr.isa, v180);
          }

          v178 = 0;
          v23 = agxps_aps_parser_parse(*v20, v22, *(&v22 + 1), 6, &v178);
          if (v178)
          {
            NSLog(&cfstr_AnErrorDOccurr.isa, v178, *(&v179 + 1), v138);
          }

          if (!v23 && *(a1 + 32) == 1)
          {
            NSLog(&cfstr_ChunkLluOfUscD.isa, *(&v179 + 1), v138);
          }

          counter_num = agxps_aps_profile_data_get_counter_num(v23);
          if (v23 && counter_num && !v178)
          {
            if (*(v20 + 2) == -1)
            {
              *(v20 + 2) = agxps_aps_profile_data_get_counter_index(v23);
              *(v20 + 3) = agxps_aps_profile_data_get_counter_index(v23);
              *(v20 + 4) = agxps_aps_profile_data_get_counter_index(v23);
              *(v20 + 5) = agxps_aps_profile_data_get_counter_index(v23);
              if (agxps_counter_is_valid(*(a1 + 856)))
              {
                counter_index = agxps_aps_profile_data_get_counter_index(v23);
              }

              else
              {
                counter_index = -1;
              }

              *(v20 + 6) = counter_index;
              v153 = *(v20 + 2);
            }

            else
            {
              v153 = *(v20 + 2);
              counter_index = *(v20 + 6);
            }

            v154 = *(v20 + 3);
            v155 = *(v20 + 4);
            v26 = *(v20 + 49180);
            v27 = *(v20 + 5);
            v28 = v20[24591];
            v176 = 0u;
            v177 = 0u;
            __p = 0u;
            std::mutex::lock((a1 + 624));
            v29 = 0;
            if (v26 && v28)
            {
              v30 = *v137;
              if (!*v137)
              {
                goto LABEL_66;
              }

              v31 = a1 + 736;
              do
              {
                v32 = *(v30 + 32);
                v15 = v32 >= v26;
                v33 = v32 < v26;
                if (v15)
                {
                  v31 = v30;
                }

                v30 = *(v30 + 8 * v33);
              }

              while (v30);
              if (v31 != v137 && v26 >= *(v31 + 32))
              {
                v34 = *(v31 + 40);
                v29 = *(v31 + 48);
                v143 = v28;
                if (v29)
                {
                  atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
                }
              }

              else
              {
LABEL_66:
                v29 = 0;
                v34 = 0;
                v26 = 0;
                v143 = 0;
              }
            }

            else
            {
              v143 = v28;
              v34 = 0;
            }

            v146 = v26;
            v142 = v29;
            kicks_num = agxps_aps_profile_data_get_kicks_num(v23);
            v157 = v23;
            if (kicks_num)
            {
              v36 = kicks_num;
              v145 = 0;
              v37 = 0;
              v38 = 0;
              v149 = -1;
              while (1)
              {
                v174 = 0;
                if (!agxps_aps_profile_data_get_kick_software_id(v23, &v174, v38, 1) || !agxps_aps_profile_data_get_kick_start(v23, &v173, v38, 1))
                {
                  goto LABEL_100;
                }

                __dst = 0;
                if (!agxps_aps_profile_data_get_usc_timestamps(v23, &__dst, HIDWORD(v173), 1))
                {
                  goto LABEL_98;
                }

                v39 = HIDWORD(v174);
                v40 = *v137;
                if (*v137)
                {
                  v41 = a1 + 736;
                  do
                  {
                    v42 = *(v40 + 32);
                    v15 = v42 >= HIDWORD(v174);
                    v43 = v42 < HIDWORD(v174);
                    if (v15)
                    {
                      v41 = v40;
                    }

                    v40 = *(v40 + 8 * v43);
                  }

                  while (v40);
                  if (v41 != v137 && *(v41 + 32) <= HIDWORD(v174))
                  {
                    break;
                  }
                }

                if (std::__hash_table<std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>>>::find<unsigned int>((a1 + 688), HIDWORD(v174)))
                {
                  if (!((v34 != 0) | v37 & 1))
                  {
                    if (v142)
                    {
                      std::__shared_weak_count::__release_shared[abi:nn200100](v142);
                    }

                    v34 = 0;
                    v37 = 1;
                    v142 = 0;
                    v143 = __dst;
                    goto LABEL_99;
                  }

                  v169.n128_u64[0] = __dst;
                  v169.n128_u32[2] = v39;
                  v170 = 0;
                  v171 = 0;
                  goto LABEL_91;
                }

LABEL_98:
                v39 = v146;
LABEL_99:
                v146 = v39;
                v23 = v157;
LABEL_100:
                if (++v38 == v36)
                {
                  goto LABEL_108;
                }
              }

              if (!((v34 != 0) | v37 & 1))
              {
                v152 = counter_index;
                v49 = v27;
                v34 = *(v41 + 40);
                v50 = *(v41 + 48);
                if (v50)
                {
                  atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                if (v142)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](v142);
                }

                v37 = 0;
                v142 = v50;
                v143 = __dst;
                v27 = v49;
                counter_index = v152;
                goto LABEL_99;
              }

              v45 = *(v41 + 40);
              v44 = *(v41 + 48);
              if (v44)
              {
                atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v169.n128_u64[0] = __dst;
              v169.n128_u32[2] = v39;
              v170 = v45;
              v171 = v44;
LABEL_91:
              std::deque<std::pair<unsigned long long,std::pair<unsigned int,std::shared_ptr<AccelerationStructureViewerServer::APSRayCollector>>>>::push_back(&__p, &v169);
              if (v171)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v171);
              }

              v46 = v149;
              v47 = v149 == -1;
              if (v149 == -1)
              {
                v46 = __dst;
              }

              v149 = v46;
              v48 = v145;
              if (v47)
              {
                v48 = v39;
              }

              v145 = v48;
              goto LABEL_98;
            }

            v145 = 0;
            v149 = -1;
LABEL_108:
            std::mutex::unlock((a1 + 624));
            v169.n128_u64[0] = 0;
            v173 = 0;
            v174 = 0;
            if (v153 != -1)
            {
              agxps_aps_profile_data_get_counter_values_num_by_index(v23, &v169, v153);
              agxps_aps_profile_data_get_counter_values_by_index(v23, &v174, v153);
              agxps_aps_profile_data_get_counter_group_metadata_by_index(v23, &v173, v153);
            }

            __dst = 0;
            v167 = 0;
            v168 = 0;
            v165 = 0;
            v166 = 0;
            v163 = 0;
            v164 = 0;
            v161 = 0;
            v162 = 0;
            v51 = v34;
            if (v154 != -1)
            {
              agxps_aps_profile_data_get_counter_values_num_by_index(v23, &__dst, v154);
              if (__dst)
              {
                agxps_aps_profile_data_get_counter_values_by_index(v23, &v168, v154);
                agxps_aps_profile_data_get_counter_group_metadata_by_index(v23, &v161, v154);
              }
            }

            if (v155 != -1)
            {
              agxps_aps_profile_data_get_counter_values_num_by_index(v23, &v167, v155);
              if (v167)
              {
                agxps_aps_profile_data_get_counter_values_by_index(v23, &v166, v155);
              }
            }

            if (v27 != -1)
            {
              agxps_aps_profile_data_get_counter_values_num_by_index(v23, &v165, v27);
              if (v165)
              {
                agxps_aps_profile_data_get_counter_values_by_index(v23, &v164, v27);
              }
            }

            if (counter_index != -1)
            {
              agxps_aps_profile_data_get_counter_values_num_by_index(v23, &v163, counter_index);
              if (v163)
              {
                agxps_aps_profile_data_get_counter_values_by_index(v23, &v162, counter_index);
              }
            }

            v52 = v167;
            if (v167 >= v169.n128_u64[0])
            {
              v52 = v169.n128_u64[0];
            }

            v169.n128_u64[0] = v52;
            if (v165 >= __dst)
            {
              v53 = __dst;
            }

            else
            {
              v53 = v165;
            }

            __dst = v53;
            v54 = v20[7];
            v55 = 0;
            if (v52)
            {
              v56 = 0;
              v57 = v20 + 24593;
              while (1)
              {
                v58 = *(v174 + 8 * v56);
                v59 = *(v166 + 8 * v56);
                v160 = 0;
                v60 = v149;
                if ((agxps_aps_profile_data_get_usc_timestamps(v157, &v160, *(v173 + 8 * v56 + 4), 1) & 1) == 0 && *(a1 + 32) == 1)
                {
                  NSLog(&cfstr_UnableToGetInt.isa);
                }

                v61 = v160;
                if (!v160)
                {
                  v61 = (v20[24586] + *(a1 + 812)) % 0xFFFFF;
                  v160 = v61;
                }

                v20[24586] = v61;
                v148 = v56;
                if (!v51)
                {
                  if (!v58)
                  {
                    goto LABEL_191;
                  }

                  goto LABEL_190;
                }

                v147 = v58;
                if (v160 < v149)
                {
                  v62 = v149;
                  v63 = v145;
                  v64 = v143;
                  goto LABEL_158;
                }

                if (!*(&v177 + 1))
                {
                  break;
                }

                v140 = v59;
                v65 = *(&__p + 1);
                v66 = v177;
                v67 = v177 >> 7;
                v68 = v177 & 0x7F;
                v69 = *(*(&__p + 1) + 8 * (v177 >> 7)) + 32 * v68;
                v71 = *(v69 + 16);
                v70 = *(v69 + 24);
                if (v70)
                {
                  atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
                  atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                if (v142)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](v142);
                  v65 = *(&__p + 1);
                  v66 = v177;
                  v67 = v177 >> 7;
                  v68 = v177 & 0x7F;
                }

                v72 = *(v65[v67] + 4 * v68 + 3);
                if (v72)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](v72);
                }

                v73 = *(&v177 + 1) - 1;
                v74 = v66 + 1;
                *&v177 = v66 + 1;
                --*(&v177 + 1);
                if ((v66 + 1) >= 0x100)
                {
                  v75 = *v65++;
                  operator delete(v75);
                  v74 = v66 - 127;
                  *(&__p + 1) = v65;
                  *&v177 = v66 - 127;
                }

                if (v73)
                {
                  v76 = *(v65 + ((v74 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v74 & 0x7F);
                  v62 = *v76;
                  v63 = *(v76 + 8);
                  v77 = *(v76 + 24);
                  if (v77)
                  {
                    v78 = *(v76 + 8);
                    v79 = *v76;
                    atomic_fetch_add_explicit(&v77->__shared_owners_, 1uLL, memory_order_relaxed);
                    std::__shared_weak_count::__release_shared[abi:nn200100](v77);
                    v62 = v79;
                    v63 = v78;
                  }
                }

                else
                {
                  v63 = 0;
                  v62 = -1;
                }

                v51 = v71;
                v64 = v149;
                v80 = v145;
                if (v70)
                {
                  v144 = v63;
                  v81 = v62;
                  v82 = v70;
LABEL_156:
                  std::__shared_weak_count::__release_shared[abi:nn200100](v82);
                  v142 = v70;
                  v146 = v80;
                  v59 = v140;
                  v62 = v81;
                  v63 = v144;
                  goto LABEL_158;
                }

                v142 = 0;
                v146 = v145;
                v59 = v140;
LABEL_158:
                if (v147)
                {
                  if (v51)
                  {
                    if (v160 >= v64)
                    {
                      v151 = v62;
                      v141 = v59;
                      v84 = v147;
                      do
                      {
                        add = atomic_fetch_add((v51 + 48), 1uLL);
                        if (add < *(v51 + 56))
                        {
                          v86 = (*(v51 + 64) + 32 * WORD1(v179));
                          v87 = *v86;
                          v88 = v86[1];
                          if (*v86 != -1 && v87 >= v88)
                          {
                            if (*(a1 + 32) == 1)
                            {
                              NSLog(&cfstr_Uscraycollecto.isa, v87, v88);
                            }
                          }

                          else
                          {
                            *v86 = v87 + 1;
                            if (v87 < v88)
                            {
                              v90 = v86[3] + 12 * v87;
                              v91 = *v57;
                              *(v90 + 8) = *(v20 + 49188);
                              *v90 = v91;
                            }
                          }
                        }

                        v92 = *(v51 + 56);
                        if (add == v92 - 1)
                        {
                          std::mutex::lock((a1 + 624));
                          std::condition_variable::notify_one(v51);
                          std::mutex::unlock((a1 + 624));
                        }

                        else if (add >= v92 && *(a1 + 32) == 1)
                        {
                          NSLog(&cfstr_RayCollectorIs.isa, add, v92, WORD1(v179), a2, v146, v63);
                        }

                        --v84;
                      }

                      while (v84);
                      v143 = v64;
                      v145 = v63;
                      v60 = v151;
                      v59 = v141;
                    }

                    else
                    {
                      if (!WORD1(v179) && *(a1 + 32) == 1)
                      {
                        v150 = v62;
                        NSLog(&cfstr_DHasnTStartedY.isa, v146, v147);
                        v143 = v64;
                        v58 = v147;
                        v145 = v63;
                        v60 = v150;
LABEL_190:
                        v20[24592] += v58;
                        *v57 = 0;
                        *(v20 + 49188) = 0;
                        goto LABEL_191;
                      }

                      v143 = v64;
                      v145 = v63;
                      v60 = v62;
                    }

                    v58 = v147;
                    goto LABEL_190;
                  }

                  v83 = v146;
                  v145 = v63;
                  v143 = v64;
                  v58 = v147;
LABEL_166:
                  if (WORD1(v179) || *(a1 + 32) != 1)
                  {
                    v51 = 0;
                    v60 = v62;
                  }

                  else
                  {
                    v60 = v62;
                    NSLog(&cfstr_NoCollectorFor.isa, v58);
                    v51 = 0;
                  }

                  v146 = v83;
                  goto LABEL_190;
                }

                v143 = v64;
                v145 = v63;
                v60 = v62;
LABEL_191:
                if (v59)
                {
                  *(v20 + 49187) += v59;
                }

                v149 = v60;
                if (v55 < __dst + v54)
                {
                  v93 = 4 - 8 * v54 + 8 * v55;
                  v94 = v51;
                  while (1)
                  {
                    v159 = 0;
                    if (v55 >= v54)
                    {
                      if (v162)
                      {
                        v99 = -8 * v54;
                        v97 = (&v162[v55])[-v54];
                      }

                      else
                      {
                        LODWORD(v97) = 0;
                        v99 = -8 * v54;
                      }

                      v95 = *(v168 + v99 + 8 * v55);
                      v96 = *(v164 + v99 + 8 * v55);
                      if ((agxps_aps_profile_data_get_usc_timestamps(v157, &v159, *(v161 + v93), 1) & 1) == 0 && *(a1 + 32) == 1)
                      {
                        NSLog(&cfstr_UnableToGetCou.isa);
                      }

                      v98 = v159;
                    }

                    else
                    {
                      v95 = v20[v55 + 12298];
                      v96 = v20[v55 + 16394];
                      v97 = v20[v55 + 20490];
                      v98 = v20[v55 + 10];
                      v159 = v98;
                    }

                    v100 = *(a1 + 812);
                    if (!v98)
                    {
                      v98 = (v20[24587] + v100) % 0xFFFFF;
                      v159 = v98;
                      if (*(a1 + 32) == 1)
                      {
                        NSLog(&cfstr_PatchingMissin.isa);
                        v100 = *(a1 + 812);
                        v98 = v159;
                      }
                    }

                    v15 = v160 >= v100;
                    v101 = v160 - v100;
                    if (!v15)
                    {
                      v101 = 0;
                    }

                    if (v98 >= v101)
                    {
                      break;
                    }

                    v102 = *v57;
                    *(v20 + 49188) += v96;
                    *(v20 + 49187) += v97;
                    v20[24587] = v98;
                    *v57 = v102 + v95;
                    ++v55;
                    v93 += 8;
                    v51 = v94;
                    if (v55 >= __dst + v54)
                    {
                      goto LABEL_213;
                    }
                  }

                  v51 = v94;
                }

LABEL_213:
                v56 = v148 + 1;
                if (v148 + 1 >= v169.n128_u64[0])
                {
                  v53 = __dst;
                  goto LABEL_217;
                }
              }

              if (!v142)
              {
                v142 = 0;
                v143 = 0;
                v83 = 0;
                v145 = 0;
                v146 = 0;
                v51 = 0;
                v62 = -1;
                v60 = -1;
                if (!v58)
                {
                  goto LABEL_191;
                }

                goto LABEL_166;
              }

              v140 = v59;
              v70 = 0;
              v51 = 0;
              v80 = 0;
              v144 = 0;
              v64 = 0;
              v81 = -1;
              v82 = v142;
              goto LABEL_156;
            }

LABEL_217:
            *(v20 + 49180) = v146;
            v20[24591] = v143;
            v103 = v53 + v54 - v55;
            if (v53 + v54 <= v55)
            {
              v20[7] = 0;
            }

            else
            {
              v20[7] = v103;
              v104 = v54 - v55;
              if (v103 <= v53)
              {
                v111 = 0;
                if (v103 <= 1)
                {
                  v112 = 1;
                }

                else
                {
                  v112 = v103;
                }

                do
                {
                  v113 = __dst - v103;
                  v20[v111 + 12298] = *(v168 + 8 * (__dst - v103) + v111 * 8);
                  v20[v111 + 16394] = *(v164 + 8 * (v165 - v103) + v111 * 8);
                  v114 = v162;
                  if (v162)
                  {
                    v114 = (&v162[v163 - v103])[v111];
                  }

                  v20[v111 + 20490] = v114;
                  agxps_aps_profile_data_get_usc_timestamps(v157, &v20[v111 + 10], *(v161 + 8 * v113 + v111 * 8 + 4), 1);
                  ++v111;
                  --v112;
                }

                while (v112);
              }

              else
              {
                v105 = 0;
                v106 = v136 + 8 * v55 + 196760 * v138;
                do
                {
                  v107 = &v20[v105 + 16394];
                  *(v107 - 4096) = *(v106 + 98384 + 8 * v105);
                  *v107 = *(v106 + 131152 + 8 * v105);
                  v107[4096] = *(v106 + 163920 + 8 * v105);
                  v20[v105 + 10] = *(v106 + 8 * v105 + 80);
                  ++v105;
                }

                while (v104 != v105);
                if (v104 < v103)
                {
                  v108 = v136 + 8 * v54 + 196760 * v138 - 8 * v55;
                  v109 = 4;
                  do
                  {
                    *(v108 + 98384 + v109 - 4) = *(v168 + v109 - 4);
                    *(v108 + 131152 + v109 - 4) = *(v164 + v109 - 4);
                    v110 = v162;
                    if (v162)
                    {
                      v110 = *(v162 + v109 - 4);
                    }

                    *(v108 + 163920 + v109 - 4) = v110;
                    agxps_aps_profile_data_get_usc_timestamps(v157, (v108 + v109 + 76), *(v161 + v109), 1);
                    v109 += 8;
                    --v53;
                  }

                  while (v53);
                }
              }
            }

            v115 = *(&__p + 1);
            v116 = v176;
            v117 = *(&__p + 1);
            v118 = v176 - *(&__p + 1);
            if (v176 != *(&__p + 1))
            {
              v119 = (*(&__p + 1) + 8 * (v177 >> 7));
              v120 = *v119;
              v121 = *v119 + 32 * (v177 & 0x7F);
              v122 = *(*(&__p + 1) + (((*(&v177 + 1) + v177) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((*(&v177 + 1) + v177) & 0x7F);
              v117 = v176;
              if (v121 != v122)
              {
                do
                {
                  v123 = *(v121 + 24);
                  if (v123)
                  {
                    std::__shared_weak_count::__release_shared[abi:nn200100](v123);
                    v120 = *v119;
                  }

                  v121 += 32;
                  if (v121 - v120 == 4096)
                  {
                    v124 = v119[1];
                    ++v119;
                    v120 = v124;
                    v121 = v124;
                  }
                }

                while (v121 != v122);
                v117 = v116;
              }
            }

            if ((v117 - v115) < 0x11)
            {
              v116 = v117;
            }

            else
            {
              do
              {
                v125 = *v115++;
                operator delete(v125);
                v118 -= 8;
              }

              while (v118 > 0x10);
            }

            while (v115 != v116)
            {
              v126 = *v115++;
              operator delete(v126);
            }

            if (__p)
            {
              operator delete(__p);
            }

            if (v142)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v142);
            }
          }

          else if (v178)
          {
            NSLog(&cfstr_ChunkHadAnErro.isa);
          }

          else if (!v23)
          {
            NSLog(&cfstr_ChunkIsNotOpaq.isa);
          }

          if (v182.i64[1] < 0x80uLL)
          {
            std::deque<AccelerationStructureViewerServer::APSRawChunk>::push_back(v181, &v179);
          }

          else
          {
            std::mutex::lock((a1 + 440));
            v127 = v182.i64[0];
            do
            {
              v128 = v181[1];
              std::deque<AccelerationStructureViewerServer::APSRawChunk>::push_back((a1 + 504), *(v181[1] + ((v127 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v127 & 0x7F));
              v129 = vaddq_s64(v182, xmmword_24DA8BC20);
              v182 = v129;
              v127 = v129.i64[0];
              if (v129.i64[0] >= 0x100uLL)
              {
                v158 = v129.i64[1];
                operator delete(*v128);
                v129.i64[1] = v158;
                v127 -= 128;
                v181[1] = (v128 + 1);
                v182.i64[0] = v127;
              }
            }

            while (v129.i64[1]);
            std::deque<AccelerationStructureViewerServer::APSRawChunk>::push_back((a1 + 504), &v179);
            std::mutex::unlock((a1 + 440));
          }

          v130 = WORD1(v179);
          std::mutex::lock((*(a1 + 552) + (WORD1(v179) << 6)));
          ++v20[4];
          std::mutex::unlock((*(a1 + 552) + (v130 << 6)));
          v6 = -1;
          if ((*(a1 + 432) & 1) == 0)
          {
            goto LABEL_265;
          }

          continue;
        }

        break;
      }

      std::mutex::unlock((*(a1 + 552) + (v10 << 6)));
    }

LABEL_265:
    if (v182.i64[1])
    {
      v131 = v182.i64[0];
      v132 = v181[1];
      do
      {
        free((*(v132 + ((v131 >> 4) & 0xFFFFFFFFFFFFFF8)))[4 * (v131 & 0x7F) + 2]);
        v133 = vaddq_s64(v182, xmmword_24DA8BC20);
        v182 = v133;
        v131 = v133.i64[0];
        if (v133.i64[0] >= 0x100uLL)
        {
          v134 = *v132++;
          v156 = v133.i64[1];
          operator delete(v134);
          v133.i64[1] = v156;
          v131 -= 128;
          v181[1] = v132;
          v182.i64[0] = v131;
        }
      }

      while (v133.i64[1]);
    }

    if (*(a1 + 32) == 1)
    {
      NSLog(&cfstr_ParserWorkerIs.isa);
    }

    std::deque<AccelerationStructureViewerServer::APSRawChunk>::~deque[abi:nn200100](v181);
    v4 = v135;
  }

  else
  {
    NSLog(&cfstr_TheAcceleratio.isa);
  }
}

__n128 std::deque<std::pair<unsigned long long,std::pair<unsigned int,std::shared_ptr<AccelerationStructureViewerServer::APSRayCollector>>>>::push_back(unint64_t *a1, __n128 *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 16 * (v4 - v5) - 1;
  }

  v7 = a1[4];
  v8 = a1[5] + v7;
  if (v6 == v8)
  {
    if (v7 < 0x80)
    {
      v9 = a1[3];
      v10 = v9 - *a1;
      if (v4 - v5 < v10)
      {
        operator new();
      }

      v11 = v10 >> 2;
      if (v9 == *a1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<AccelerationStructureViewerServer::AccelerationStructure *>>(v12);
    }

    a1[4] = v7 - 128;
    v15 = *v5;
    a1[1] = (v5 + 1);
    std::__split_buffer<GTMMappedBuffer::UsedBlock *>::emplace_back<GTMMappedBuffer::UsedBlock *&>(a1, &v15);
    v5 = a1[1];
    v8 = a1[5] + a1[4];
  }

  v13 = (*(v5 + ((v8 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v8 & 0x7F));
  v13->n128_u64[0] = a2->n128_u64[0];
  v13->n128_u32[2] = a2->n128_u32[2];
  result = a2[1];
  v13[1] = result;
  a2[1].n128_u64[0] = 0;
  a2[1].n128_u64[1] = 0;
  ++a1[5];
  return result;
}

__n128 std::deque<AccelerationStructureViewerServer::APSRawChunk>::push_back(unint64_t *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 16 * (v4 - v5) - 1;
  }

  v7 = a1[4];
  v8 = a1[5] + v7;
  if (v6 == v8)
  {
    if (v7 < 0x80)
    {
      v9 = a1[3];
      v10 = v9 - *a1;
      if (v4 - v5 < v10)
      {
        operator new();
      }

      v11 = v10 >> 2;
      if (v9 == *a1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<AccelerationStructureViewerServer::AccelerationStructure *>>(v12);
    }

    a1[4] = v7 - 128;
    v16 = *v5;
    a1[1] = (v5 + 1);
    std::__split_buffer<GTMMappedBuffer::UsedBlock *>::emplace_back<GTMMappedBuffer::UsedBlock *&>(a1, &v16);
    v5 = a1[1];
    v8 = a1[5] + a1[4];
  }

  v13 = (*(v5 + ((v8 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v8 & 0x7F));
  result = *a2;
  v15 = *(a2 + 16);
  *v13 = *a2;
  v13[1] = v15;
  ++a1[5];
  return result;
}

uint64_t std::__thread_proxy[abi:nn200100]<std::tuple<std::unique_ptr<std::__thread_struct>,AccelerationStructureViewerServer::Profiler::initAPSStreaming(objc_object  {objcproto9MTLDevice}*)::$_0>>(uint64_t a1)
{
  v5 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  AccelerationStructureViewerServer::Profiler::accumulationWorker(*(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 28));
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,AccelerationStructureViewerServer::Profiler::initAPSStreaming(objc_object  {objcproto9MTLDevice}*)::$_0>,std::default_delete<AccelerationStructureViewerServer::Profiler::initAPSStreaming(objc_object  {objcproto9MTLDevice}*)::$_0>>::~unique_ptr[abi:nn200100](&v5);
  return 0;
}

void AccelerationStructureViewerServer::Profiler::accumulationWorker(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  std::mutex::lock((a1 + 320));
  v32 = [*(a1 + 760) copy];
  std::mutex::unlock((a1 + 320));
  if (*(a1 + 32) == 1)
  {
    NSLog(&cfstr_StartedAccumul.isa, a3, a4, v32);
  }

  if (*(a1 + 432) == 1)
  {
    v6 = a4;
    v33 = v5;
    do
    {
      if (![v5 isEnabled])
      {
        break;
      }

      if (a3 < a4)
      {
        v7 = a3;
        while (([v5 isEnabled] & 1) != 0)
        {
          v8 = *(*(a1 + 296) + 4 * v7);
          v39 = 0;
          v40 = 0;
          v38 = 0;
          if ([v5 ringBufferInfoAtIndex:v8 base:&v40 size:&v39 + 4 dataOffset:&v39 dataSize:&v38])
          {
            if (v38 && v40)
            {
              if (v39 + v38 <= HIDWORD(v39))
              {
                v23 = 0;
                do
                {
                  std::mutex::lock((a1 + 440));
                  v24 = *(a1 + 544);
                  if (!v24)
                  {
                    v36 = 0u;
                    *__dst = 0u;
                    __dst[0] = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
                    std::deque<AccelerationStructureViewerServer::APSRawChunk>::push_back((a1 + 504), &v36);
                    v24 = *(a1 + 544);
                  }

                  v25 = *(a1 + 536);
                  v26 = (*(*(a1 + 512) + ((v25 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v25 & 0x7F));
                  v27 = v26[1];
                  v36 = *v26;
                  *__dst = v27;
                  *(a1 + 544) = v24 - 1;
                  *(a1 + 536) = v25 + 1;
                  std::deque<AccelerationStructureViewerServer::APSRawChunk>::__maybe_remove_front_spare[abi:nn200100](a1 + 504);
                  std::mutex::unlock((a1 + 440));
                  if (v38 - v23 >= 0x1000)
                  {
                    v28 = 4096;
                  }

                  else
                  {
                    v28 = v38 - v23;
                  }

                  memcpy(__dst[0], (v40 + v39 + v23), v28);
                  __dst[1] = v28;
                  WORD1(v36) = v7;
                  v29 = *(a1 + 600) + 196760 * v7;
                  LOBYTE(v36) = *(v29 + 40);
                  *(&v36 + 1) = atomic_fetch_add((v29 + 48), 1uLL);
                  *(*(a1 + 600) + 196760 * v7 + 40) = 0;
                  v23 += v28;
                  std::mutex::lock((*(a1 + 552) + (v7 << 6)));
                  std::deque<AccelerationStructureViewerServer::APSRawChunk>::push_back((*(a1 + 576) + 48 * v7), &v36);
                  std::mutex::unlock((*(a1 + 552) + (v7 << 6)));
                  v21 = v38;
                }

                while (v23 < v38);
              }

              else
              {
                v9 = 0;
                v10 = (HIDWORD(v39) - v39);
                v11 = v38 - v10;
                do
                {
                  std::mutex::lock((a1 + 440));
                  v12 = *(a1 + 544);
                  if (!v12)
                  {
                    v36 = 0u;
                    *__dst = 0u;
                    __dst[0] = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
                    std::deque<AccelerationStructureViewerServer::APSRawChunk>::push_back((a1 + 504), &v36);
                    v12 = *(a1 + 544);
                  }

                  v13 = *(a1 + 536);
                  v14 = (*(*(a1 + 512) + ((v13 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v13 & 0x7F));
                  v15 = v14[1];
                  v36 = *v14;
                  *__dst = v15;
                  *(a1 + 544) = v12 - 1;
                  *(a1 + 536) = v13 + 1;
                  std::deque<AccelerationStructureViewerServer::APSRawChunk>::__maybe_remove_front_spare[abi:nn200100](a1 + 504);
                  std::mutex::unlock((a1 + 440));
                  WORD1(v36) = v7;
                  v16 = *(a1 + 600) + 196760 * v7;
                  LOBYTE(v36) = *(v16 + 40);
                  *(&v36 + 1) = atomic_fetch_add((v16 + 48), 1uLL);
                  __dst[1] = 0;
                  if (v10 <= v9)
                  {
                    v17 = 0;
                  }

                  else
                  {
                    if (v10 - v9 >= 0x1000)
                    {
                      v17 = 4096;
                    }

                    else
                    {
                      v17 = v10 - v9;
                    }

                    memcpy(__dst[0], (v40 + v39 + v9), v17);
                    v9 += v17;
                    __dst[1] = v17;
                  }

                  v18 = v9 - v10;
                  if (v9 >= v10)
                  {
                    if (4096 - v17 >= v11 - v18)
                    {
                      v19 = v11 - v18;
                    }

                    else
                    {
                      v19 = 4096 - v17;
                    }

                    memcpy(__dst[0] + v17, (v40 + v18), v19);
                    v9 += v19;
                    __dst[1] = (v17 + v19);
                  }

                  v20 = WORD1(v36);
                  *(*(a1 + 600) + 196760 * WORD1(v36) + 40) = 0;
                  std::mutex::lock((*(a1 + 552) + (v20 << 6)));
                  std::deque<AccelerationStructureViewerServer::APSRawChunk>::push_back((*(a1 + 576) + 48 * v20), &v36);
                  std::mutex::unlock((*(a1 + 552) + (v20 << 6)));
                  v21 = v38;
                }

                while (v9 < v38);
                v6 = a4;
                v5 = v33;
              }

              if (v21)
              {
                v30 = 0;
                while (1)
                {
                  v31 = [v5 drainRingBufferAtIndex:v8 dataSize:v21 - v30];
                  if (!v31)
                  {
                    break;
                  }

                  v30 += v31;
                  v21 = v38;
                  if (v30 >= v38)
                  {
                    goto LABEL_45;
                  }
                }

                if (*(a1 + 32) == 1)
                {
                  NSLog(&cfstr_NothingDrained.isa, v7, v38 - v30);
                }
              }
            }

            else
            {
              usleep(0x64u);
            }
          }

          else
          {
            v22 = [v5 name];
            NSLog(&cfstr_FailUnableToRe.isa, v22);
          }

LABEL_45:
          if (++v7 == v6)
          {
            goto LABEL_48;
          }
        }

        NSLog(&cfstr_SourceIsNotEna.isa);
      }

LABEL_48:
      ;
    }

    while ((*(a1 + 432) & 1) != 0);
  }

  if (*(a1 + 32) == 1)
  {
    NSLog(&cfstr_AccumulationWo.isa);
  }
}

void AccelerationStructureViewerServer::Profiler::finishSkipFrame(uint64_t a1, void *a2)
{
  v3 = [a2 globalTraceObjectID];
  std::mutex::lock((a1 + 624));
  v4 = (a1 + 688);
  v5 = std::__hash_table<std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>>>::find<unsigned int>((a1 + 688), v3);
  if (v5)
  {
    v6 = *(a1 + 696);
    v7 = v5[1];
    v8 = vcnt_s8(v6);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      if (v7 >= *&v6)
      {
        v7 %= *&v6;
      }
    }

    else
    {
      v7 &= *&v6 - 1;
    }

    v9 = *(*v4 + 8 * v7);
    do
    {
      v10 = v9;
      v9 = *v9;
    }

    while (v9 != v5);
    if (v10 == (a1 + 704))
    {
      goto LABEL_19;
    }

    v11 = v10[1];
    if (v8.u32[0] > 1uLL)
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

    if (v11 != v7)
    {
LABEL_19:
      if (!*v5)
      {
        goto LABEL_20;
      }

      v12 = *(*v5 + 8);
      if (v8.u32[0] > 1uLL)
      {
        if (v12 >= *&v6)
        {
          v12 %= *&v6;
        }
      }

      else
      {
        v12 &= *&v6 - 1;
      }

      if (v12 != v7)
      {
LABEL_20:
        *(*v4 + 8 * v7) = 0;
      }
    }

    v13 = *v5;
    if (*v5)
    {
      v14 = *(v13 + 8);
      if (v8.u32[0] > 1uLL)
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

      if (v14 != v7)
      {
        *(*v4 + 8 * v14) = v10;
        v13 = *v5;
      }
    }

    *v10 = v13;
    *v5 = 0;
    --*(a1 + 712);
    operator delete(v5);
  }

  std::mutex::unlock((a1 + 624));
}

void std::vector<AccelerationStructureViewerServer::APSUSCRayCollector>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v6 = v4 - 4;

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__shared_ptr_emplace<AccelerationStructureViewerServer::APSRayCollector>::__on_zero_shared(uint64_t a1)
{
  v2 = (a1 + 88);
  std::vector<AccelerationStructureViewerServer::APSUSCRayCollector>::__destroy_vector::operator()[abi:nn200100](&v2);

  std::condition_variable::~condition_variable((a1 + 24));
}

void std::__shared_ptr_emplace<AccelerationStructureViewerServer::APSRayCollector>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2860BC710;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2530332C0);
}

__n128 __Block_byref_object_copy__9845(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  a2[3] = 0uLL;
  return result;
}

void __Block_byref_object_dispose__9846(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

void ___ZN33AccelerationStructureViewerServer8Profiler11finishFrameEPU26objcproto15MTLCommandQueue11objc_objectPU35objcproto24MTLComputeCommandEncoder11objc_objectmP18ASVSRenderSettingsPN27AccelerationStructureViewer6SampleE_block_invoke(uint64_t a1)
{
  v2 = dispatch_get_global_queue(0, 0);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = ___ZN33AccelerationStructureViewerServer8Profiler11finishFrameEPU26objcproto15MTLCommandQueue11objc_objectPU35objcproto24MTLComputeCommandEncoder11objc_objectmP18ASVSRenderSettingsPN27AccelerationStructureViewer6SampleE_block_invoke_2;
  v3[3] = &unk_279659168;
  v4 = *(a1 + 32);
  dispatch_async(v2, v3);
}

void ___ZN33AccelerationStructureViewerServer8Profiler11finishFrameEPU26objcproto15MTLCommandQueue11objc_objectPU35objcproto24MTLComputeCommandEncoder11objc_objectmP18ASVSRenderSettingsPN27AccelerationStructureViewer6SampleE_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  std::mutex::lock((v2 + 136));
  v3 = *(v2 + 8);
  if (v3)
  {
    for (i = 0; i < v3; ++i)
    {
      v5 = *(*(*(*(a1 + 32) + 8) + 48) + 64) + 32 * i;
      v7 = *(v5 + 16);
      v6 = (v5 + 16);
      if (v7)
      {
        v8 = *(v2 + 208);
        v9 = *(v2 + 216);
        if (v9 == v8)
        {
          v10 = 0;
        }

        else
        {
          v10 = ((v9 - v8) << 6) - 1;
        }

        v11 = *(v2 + 232);
        if (v10 == *(v2 + 240) + v11)
        {
          v12 = v11 >= 0x200;
          v13 = v11 - 512;
          if (!v12)
          {
            v14 = *(v2 + 224);
            v15 = *(v2 + 200);
            if (v9 - v8 < (v14 - v15))
            {
              operator new();
            }

            if (v14 == v15)
            {
              v16 = 1;
            }

            else
            {
              v16 = (v14 - v15) >> 2;
            }

            std::__allocate_at_least[abi:nn200100]<std::allocator<NSString * {__strong}>>(v16);
          }

          *(v2 + 232) = v13;
          v22 = *v8;
          *(v2 + 208) = v8 + 8;
          std::__split_buffer<objc_object  {objcproto9MTLBuffer}* {__strong}*>::emplace_back<objc_object  {objcproto9MTLBuffer}* {__strong}&>((v2 + 200), &v22);
          v8 = *(v2 + 208);
          v9 = *(v2 + 216);
        }

        if (v9 == v8)
        {
          v18 = 0;
        }

        else
        {
          v17 = *(v2 + 240) + *(v2 + 232);
          v18 = (*&v8[(v17 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v17 & 0x1FF));
        }

        *v18 = *v6;
        ++*(v2 + 240);
        v19 = *v6;
        *v6 = 0;

        v3 = *(v2 + 8);
      }
    }
  }

  std::mutex::unlock((v2 + 136));
  v20 = *(*(a1 + 32) + 8);
  v21 = *(v20 + 56);
  *(v20 + 48) = 0;
  *(v20 + 56) = 0;
  if (v21)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v21);
  }
}

void std::__split_buffer<objc_object  {objcproto9MTLBuffer}* {__strong}*>::emplace_back<objc_object  {objcproto9MTLBuffer}* {__strong}&>(unint64_t *a1, void *a2)
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

      std::__allocate_at_least[abi:nn200100]<std::allocator<NSString * {__strong}>>(v11);
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

uint64_t non-virtual thunk toAccelerationStructureViewerServer::Server::teardown(AccelerationStructureViewerServer::Server *this, Sampler *a2, NSError *a3)
{
  result = *(this + 2);
  if (result)
  {
    *(this + 2) = 0;
    return (*(*result + 40))(result, this - 8, a3);
  }

  return result;
}

void *AccelerationStructureViewerServer::Server::resume(void *this, Sampler *a2)
{
  if (this[5] >= 7uLL)
  {
    v4 = this;
    this = this[3];
    if (this)
    {
      v6 = v2;
      v7 = v3;
      v5 = 12;
      return (*(*this + 32))(this, v4, 0, 0, &v5, 1);
    }
  }

  return this;
}

void non-virtual thunk toAccelerationStructureViewerServer::Server::pause(uint64_t this, Sampler *a2, NSError *a3)
{
  if (*(this + 32) >= 7uLL)
  {
    AccelerationStructureViewerServer::Server::replyQueryable(this - 8, 11, -1, 0, a3);
  }
}

void AccelerationStructureViewerServer::Server::replyQueryable(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a5;
  if (!a4)
  {
    operator new();
  }

  v10 = *(a1 + 40);
  v21[0] = &unk_2860BB6A8;
  v21[1] = v10;
  v22 = 0;
  (*(*a4 + 16))(a4, v21);
  v11 = v22;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  std::vector<unsigned char>::__append(&v18, v22 + 9);
  v12 = v18;
  v13[1] = *(a1 + 40);
  v13[0] = &unk_2860BB6F0;
  v14 = 0;
  v15 = 0;
  v16 = v18 + 9;
  v17 = v11;
  (*(*a4 + 16))(a4, v13);
  if (v15 || v14 != v17)
  {
    operator new();
  }

  *v12 = a2;
  *(v12 + 1) = a3;
  (*(**(a1 + 24) + 32))(*(a1 + 24), a1, 0, 0, v12, v11 + 9);
  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }
}

uint64_t AccelerationStructureViewerServer::Server::setVersion(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 24);
  if (result)
  {
    v4 = 0;
    v5 = a2;
    return (*(*result + 32))(result, a1, 0, 0, &v4, 9);
  }

  return result;
}

void AccelerationStructureViewerServer::Server::receiveQueryRays(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  if (*(a1 + 40) >= 0xBuLL && *(a1 + 24))
  {
    v11 = 400 * a6;
    v12 = malloc_type_malloc(v11 + 17, 0x100004075806E5BuLL);
    v13 = v12;
    *v12 = 17;
    *(v12 + 1) = a3 == 1;
    *(v12 + 5) = a4;
    *(v12 + 13) = a6;
    if (a6)
    {
      v14 = 0;
      v15 = v12;
      do
      {
        v16 = v15 + 405;
        v23 = *(a5 + v14 + 336);
        v24 = *(a5 + v14 + 352);
        v25 = *(a5 + v14 + 368);
        v26 = *(a5 + v14 + 384);
        v19 = *(a5 + v14 + 272);
        v20 = *(a5 + v14 + 288);
        v21 = *(a5 + v14 + 304);
        v22 = *(a5 + v14 + 320);
        v17 = *(a5 + v14 + 408);
        v41 = *(a5 + v14 + 240);
        v42 = *(a5 + v14 + 256);
        v39 = *(a5 + v14 + 208);
        v40 = *(a5 + v14 + 224);
        v37 = *(a5 + v14 + 176);
        v38 = *(a5 + v14 + 192);
        v35 = *(a5 + v14 + 144);
        v36 = *(a5 + v14 + 160);
        v33 = *(a5 + v14 + 112);
        v34 = *(a5 + v14 + 128);
        v31 = *(a5 + v14 + 80);
        v32 = *(a5 + v14 + 96);
        v29 = *(a5 + v14 + 48);
        v30 = *(a5 + v14 + 64);
        v27 = *(a5 + v14 + 16);
        v28 = *(a5 + v14 + 32);
        v18 = *(a5 + v14 + 400);
        *(v15 + 17) = *(a5 + v14 + 8);
        *(v15 + 213) = v39;
        *(v15 + 229) = v40;
        *(v15 + 245) = v41;
        *(v15 + 261) = v42;
        *(v15 + 149) = v35;
        *(v15 + 165) = v36;
        *(v15 + 181) = v37;
        *(v15 + 197) = v38;
        *(v15 + 85) = v31;
        *(v15 + 101) = v32;
        *(v15 + 117) = v33;
        *(v15 + 133) = v34;
        *(v15 + 21) = v27;
        *(v15 + 37) = v28;
        *(v15 + 53) = v29;
        *(v15 + 69) = v30;
        *(v15 + 341) = v23;
        *(v15 + 357) = v24;
        *(v15 + 373) = v25;
        *(v15 + 389) = v26;
        *(v15 + 277) = v19;
        *(v15 + 293) = v20;
        *(v15 + 309) = v21;
        *(v15 + 325) = v22;
        *(v15 + 405) = v18;
        v14 += 416;
        v15 += 400;
        *(v16 + 2) = v17;
      }

      while (416 * a6 != v14);
    }

    (*(**(a1 + 24) + 32))(*(a1 + 24), a1, 0, 0, v12, v11 + 17);

    free(v13);
  }
}

void AccelerationStructureViewerServer::Server::receiveSample(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v328 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 40);
  if (v7 <= 8)
  {
    v8 = 16;
  }

  else
  {
    v8 = 256;
  }

  v9 = [*(a3 + 608) width];
  v10 = v8 - 1;
  if (*(a1 + 40) >= 6uLL)
  {
    v11 = ((v8 - ((4 * v9) & (v8 - 1))) & (v8 - 1)) + 4 * v9;
  }

  else
  {
    v11 = 4 * v9;
  }

  v12 = 16 * [*(a3 + 608) width];
  v13 = 16 * [*(a3 + 624) width];
  v14 = 16 * [*(a3 + 632) width];
  v15 = 4 * [*(a3 + 640) width];
  v16 = [*(a3 + 648) width];
  v17 = *(a1 + 40);
  v18 = ((v8 - (v14 & v10)) & v10) + v14;
  v19 = ((v8 - (v15 & v10)) & v10) + v15;
  v20 = ((v8 - (v16 & v10)) & v10) + v16;
  if (v17 >= 9)
  {
    v21 = ((v8 - (v13 & v10)) & v10) + v13;
  }

  else
  {
    v20 = v16;
    v19 = v15;
    v18 = v14;
    v21 = v13;
  }

  if (v17 >= 9)
  {
    v22 = ((v8 - (v12 & v10)) & v10) + v12;
  }

  else
  {
    v22 = v12;
  }

  if (!v17 || !*(a1 + 24))
  {
    goto LABEL_31;
  }

  if (v17 >= 3)
  {
    v115 = v22;
    if (v17 <= 0xA)
    {
      if (v17 != 10)
      {
        if (v17 <= 7)
        {
          v24 = 0;
          v23 = 0;
          if (v17 <= 4)
          {
            v37 = 172;
          }

          else
          {
            v37 = 176;
          }
        }

        else
        {
          v24 = 0;
          v23 = 0;
          v37 = 177;
        }

LABEL_42:
        v107 = v21;
        v108 = v19;
        v109 = v20;
        v103 = v18;
        v3 = *(a3 + 4);
        v49 = *(a3 + 608);
        if (v49)
        {
          v50 = v8 - (v37 & (v8 - 1));
          v44 = v37 + v50;
          v37 = v44 + [v49 height] * v11;
          v51 = 1;
        }

        else
        {
          v50 = 0;
          v51 = 0;
          v44 = 0;
        }

        v105 = v11;
        v52 = *(a3 + 616);
        if (v52)
        {
          v51 |= 2u;
          v53 = v8 - (v37 & (v8 - 1));
          v116 = v37 + v53;
          v37 = v116 + [v52 height] * v115;
        }

        else
        {
          v53 = 0;
          v116 = 0;
        }

        v54 = *(a1 + 40);
        v112 = v53;
        v113 = v50;
        if (v54 < 0xB)
        {
          v58 = *(a3 + 624);
          if (v58)
          {
            v59 = [v58 height];
            v51 |= 4u;
            v60 = v8 - (v37 & (v8 - 1));
            v114 = v37 + v60;
            v37 = v114 + v59 * v107;
            v54 = *(a1 + 40);
          }

          else
          {
            v60 = 0;
            v114 = 0;
          }

          v111 = v60;
          if (v54 >= 8 && (v62 = *(a3 + 632)) != 0)
          {
            v63 = [v62 height];
            v101 = 0;
            v102 = 0;
            v104 = v51 | 8;
            v64 = v8 - (v37 & (v8 - 1));
            v98 = v37 + v64;
            v37 = v98 + v63 * v103;
            v110 = v64;
          }

          else
          {
            v104 = v51;
            v110 = 0;
            v101 = 0;
            v102 = 0;
            v98 = 0;
          }
        }

        else
        {
          v55 = *(a3 + 640);
          if (v55)
          {
            v56 = [v55 height];
            v51 |= 4u;
            v57 = v8 - (v37 & (v8 - 1));
            v101 = v37 + v57;
            v37 = v101 + v56 * v108;
          }

          else
          {
            v57 = 0;
            v101 = 0;
          }

          v111 = v57;
          v61 = *(a3 + 648);
          if (v61)
          {
            v98 = 0;
            v114 = 0;
            v104 = v51 | 8;
            v110 = v8 - (v37 & (v8 - 1));
            v102 = v37 + v110;
            v37 = v102 + [v61 height] * v109;
          }

          else
          {
            v104 = v51;
            v110 = 0;
            v102 = 0;
            v98 = 0;
            v114 = 0;
          }
        }

        goto LABEL_62;
      }

      v24 = 0;
      v23 = 0;
      v37 = 180;
    }

    else
    {
      if (*(a3 + 16) >= 7u)
      {
        v23 = 0;
      }

      else
      {
        v23 = *(a3 + 16);
      }

      if (*(a3 + 17) >= 7u)
      {
        v24 = 0;
      }

      else
      {
        v24 = *(a3 + 17);
      }

      v95 = *(a3 + 24);
      v25 = *(a3 + 240);
      v324 = *(a3 + 224);
      v325 = v25;
      v26 = *(a3 + 272);
      v326 = *(a3 + 256);
      v327 = v26;
      v27 = *(a3 + 176);
      v320 = *(a3 + 160);
      v321 = v27;
      v28 = *(a3 + 208);
      v322 = *(a3 + 192);
      v323 = v28;
      v29 = *(a3 + 112);
      v316 = *(a3 + 96);
      v317 = v29;
      v30 = *(a3 + 144);
      v318 = *(a3 + 128);
      v319 = v30;
      v31 = *(a3 + 48);
      v312 = *(a3 + 32);
      v313 = v31;
      v32 = *(a3 + 80);
      v314 = *(a3 + 64);
      v315 = v32;
      v33 = *(a3 + 368);
      v308 = *(a3 + 352);
      v309 = v33;
      v34 = *(a3 + 400);
      v310 = *(a3 + 384);
      v311 = v34;
      v35 = *(a3 + 304);
      v304 = *(a3 + 288);
      v305 = v35;
      v36 = *(a3 + 336);
      v306 = *(a3 + 320);
      v307 = v36;
      v4 = *(a3 + 416);
      v37 = 582;
      v94 = *(a3 + 424);
    }

    v99 = *(a3 + 434);
    v100 = *(a3 + 1);
    goto LABEL_42;
  }

  v38 = *(a3 + 608);
  if (!v38 || !*(a3 + 616) || !*(a3 + 624))
  {
LABEL_31:
    v48 = *(**(a1 + 32) + 88);

    v48();
    return;
  }

  v108 = v19;
  v109 = v20;
  v103 = v18;
  v105 = v11;
  v39 = [v38 height] * v11;
  v115 = v22;
  v40 = [*(a3 + 616) height] * v22;
  v41 = [*(a3 + 624) height];
  v101 = 0;
  v102 = 0;
  v98 = 0;
  v42 = v8 - (v39 & v10);
  v43 = v8 - (v40 & v10);
  if (v7 <= 8)
  {
    v44 = 192;
  }

  else
  {
    v44 = 256;
  }

  v45 = v39 + v44;
  v24 = 0;
  v46 = v45 + v42;
  v47 = v40 + v43;
  v23 = 0;
  v116 = v46;
  v114 = v46 + v47;
  v107 = v21;
  v37 = v46 + v47 + v41 * v21;
  v110 = v46 + v47;
  v111 = v46 + v47;
  v112 = v46 + v47;
  v113 = v46 + v47;
LABEL_62:
  v117 = 0;
  v118 = &v117;
  v119 = 0x3032000000;
  v120 = __Block_byref_object_copy__9879;
  v121 = __Block_byref_object_dispose__9880;
  v122 = *(a1 + 80);
  dispatch_semaphore_wait(v122, 0xFFFFFFFFFFFFFFFFLL);
  v65 = 0;
  while (1)
  {
    v66 = a1 + 8 * v65;
    if (!dispatch_semaphore_wait(*(v66 + 88), 0))
    {
      break;
    }

    if (++v65 == 4)
    {
      dispatch_semaphore_signal(v118[5]);
      (*(**(a1 + 32) + 88))(*(a1 + 32), *(a3 + 8), 1);
      goto LABEL_84;
    }
  }

  v97 = v24;
  v106 = v44;
  v68 = *(v66 + 120);
  v67 = (v66 + 120);
  v69 = v68;
  v70 = v69;
  v96 = v23;
  if (!v69 || [v69 length] < v37)
  {
    v71 = [*(a1 + 48) newBufferWithLength:v37 options:0];

    objc_storeStrong(v67, v71);
    v70 = v71;
  }

  v72 = [*(a1 + 56) commandBufferWithDescriptor:*(a1 + 64)];
  [v72 setLabel:@"ASVServer"];
  v73 = [v72 blitCommandEncoder];
  v74 = *(a3 + 608);
  if (v74)
  {
    v169 = 0uLL;
    *&v170 = 0;
    v75 = [v74 width];
    v76 = [*(a3 + 608) height];
    *&v158 = v75;
    *(&v158 + 1) = v76;
    *&v159 = 1;
    [v73 copyFromTexture:v74 sourceSlice:0 sourceLevel:0 sourceOrigin:&v169 sourceSize:&v158 toBuffer:v70 destinationOffset:v106 destinationBytesPerRow:v105 destinationBytesPerImage:{objc_msgSend(*(a3 + 608), "height") * v105}];
  }

  v77 = *(a3 + 616);
  if (v77)
  {
    v169 = 0uLL;
    *&v170 = 0;
    v78 = [v77 width];
    v79 = [*(a3 + 616) height];
    *&v158 = v78;
    *(&v158 + 1) = v79;
    *&v159 = 1;
    [v73 copyFromTexture:v77 sourceSlice:0 sourceLevel:0 sourceOrigin:&v169 sourceSize:&v158 toBuffer:v70 destinationOffset:v116 destinationBytesPerRow:v115 destinationBytesPerImage:{objc_msgSend(*(a3 + 616), "height") * v115}];
  }

  v80 = *(a1 + 40);
  if (v80 < 0xB)
  {
    v87 = *(a3 + 624);
    if (v87)
    {
      v169 = 0uLL;
      *&v170 = 0;
      v88 = [v87 width];
      v89 = [*(a3 + 624) height];
      *&v158 = v88;
      *(&v158 + 1) = v89;
      *&v159 = 1;
      [v73 copyFromTexture:v87 sourceSlice:0 sourceLevel:0 sourceOrigin:&v169 sourceSize:&v158 toBuffer:v70 destinationOffset:v114 destinationBytesPerRow:v107 destinationBytesPerImage:{objc_msgSend(*(a3 + 624), "height") * v107}];
      v80 = *(a1 + 40);
    }

    if (v80 >= 8)
    {
      v90 = *(a3 + 632);
      if (v90)
      {
        v169 = 0uLL;
        *&v170 = 0;
        v91 = [v90 width];
        v92 = [*(a3 + 632) height];
        *&v158 = v91;
        *(&v158 + 1) = v92;
        *&v159 = 1;
        [v73 copyFromTexture:v90 sourceSlice:0 sourceLevel:0 sourceOrigin:&v169 sourceSize:&v158 toBuffer:v70 destinationOffset:v98 destinationBytesPerRow:v103 destinationBytesPerImage:{objc_msgSend(*(a3 + 632), "height") * v103}];
      }
    }
  }

  else
  {
    v81 = *(a3 + 640);
    if (v81)
    {
      v169 = 0uLL;
      *&v170 = 0;
      v82 = [v81 width];
      v83 = [*(a3 + 640) height];
      *&v158 = v82;
      *(&v158 + 1) = v83;
      *&v159 = 1;
      [v73 copyFromTexture:v81 sourceSlice:0 sourceLevel:0 sourceOrigin:&v169 sourceSize:&v158 toBuffer:v70 destinationOffset:v101 destinationBytesPerRow:v108 destinationBytesPerImage:{objc_msgSend(*(a3 + 640), "height") * v108}];
    }

    v84 = *(a3 + 648);
    if (v84)
    {
      v169 = 0uLL;
      *&v170 = 0;
      v85 = [v84 width];
      v86 = [*(a3 + 648) height];
      *&v158 = v85;
      *(&v158 + 1) = v86;
      *&v159 = 1;
      [v73 copyFromTexture:v84 sourceSlice:0 sourceLevel:0 sourceOrigin:&v169 sourceSize:&v158 toBuffer:v70 destinationOffset:v102 destinationBytesPerRow:v109 destinationBytesPerImage:{objc_msgSend(*(a3 + 648), "height") * v109}];
    }
  }

  [v73 endEncoding];
  v178[0] = MEMORY[0x277D85DD0];
  v178[1] = 3321888768;
  v178[2] = ___ZN33AccelerationStructureViewerServer6Server13receiveSampleEPN27AccelerationStructureViewer7SamplerENS1_6SampleE_block_invoke;
  v178[3] = &unk_2860BC8A0;
  v183 = a1;
  v184 = v65;
  v185 = v37;
  v181 = v70;
  *&v197[15] = *(v177 + 15);
  v195 = v175;
  v196 = v176;
  *v197 = v177[0];
  v191 = v171;
  v192 = v172;
  v193 = v173;
  v194 = v174;
  v189 = v169;
  v190 = v170;
  v198 = v104;
  v199 = v113;
  v200 = v112;
  v201 = v111;
  v202 = v167;
  v203 = v168;
  v204 = v3;
  v205 = v110;
  v206 = v99;
  v207 = v100;
  v208 = v96;
  v209 = v97;
  v210 = v95;
  v213 = v314;
  v214 = v315;
  v211 = v312;
  v212 = v313;
  v217 = v318;
  v218 = v319;
  v215 = v316;
  v216 = v317;
  v221 = v322;
  v222 = v323;
  v219 = v320;
  v220 = v321;
  v225 = v326;
  v226 = v327;
  v223 = v324;
  v224 = v325;
  v231 = v308;
  v232 = v309;
  v233 = v310;
  v234 = v311;
  v227 = v304;
  v228 = v305;
  v229 = v306;
  v230 = v307;
  v235 = v4;
  v236 = v94;
  v243 = v164;
  v244 = v165;
  *v245 = v166[0];
  *&v245[15] = *(v166 + 15);
  v239 = v160;
  v240 = v161;
  v241 = v162;
  v242 = v163;
  v237 = v158;
  v238 = v159;
  v246 = v104;
  v247 = v113;
  v248 = v112;
  v249 = v111;
  v250 = v156;
  v251 = v157;
  v252 = v3;
  v253 = v110;
  v254 = v99;
  v255 = v100;
  v262 = v153;
  v263 = v154;
  *v264 = v155[0];
  *&v264[15] = *(v155 + 15);
  v258 = v149;
  v259 = v150;
  v260 = v151;
  v261 = v152;
  v256 = v147;
  v257 = v148;
  v265 = v104;
  v266 = v113;
  v267 = v112;
  v268 = v111;
  v269 = v145;
  v270 = v146;
  v271 = v3;
  v272 = v110;
  v279 = v142;
  v280 = v143;
  *v281 = v144[0];
  *&v281[15] = *(v144 + 15);
  v275 = v138;
  v276 = v139;
  v277 = v140;
  v278 = v141;
  v273 = v136;
  v274 = v137;
  v282 = v104;
  v283 = v113;
  v284 = v112;
  v285 = v111;
  v286 = v134;
  v287 = v135;
  v288 = v3;
  v295 = v131;
  v296 = v132;
  *v297 = v133[0];
  *&v297[15] = *(v133 + 15);
  v291 = v127;
  v292 = v128;
  v293 = v129;
  v294 = v130;
  v289 = v125;
  v290 = v126;
  v298 = v104;
  v299 = v113;
  v300 = v112;
  v301 = v111;
  v302 = v123;
  v303 = v124;
  v93 = v70;
  AccelerationStructureViewer::Sample::Sample(v179, a3);
  v186 = v106;
  v187 = v116;
  v188 = v114;
  v182 = &v117;
  [v72 addCompletedHandler:v178];
  [v72 commit];

  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v180);
LABEL_84:
  _Block_object_dispose(&v117, 8);
}

uint64_t __Block_byref_object_copy__9879(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___ZN33AccelerationStructureViewerServer6Server13receiveSampleEPN27AccelerationStructureViewer7SamplerENS1_6SampleE_block_invoke(uint64_t a1)
{
  v80 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 704);
  v3 = dispatch_get_global_queue(0, 0);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3321888768;
  v24[2] = ___ZN33AccelerationStructureViewerServer6Server13receiveSampleEPN27AccelerationStructureViewer7SamplerENS1_6SampleE_block_invoke_2;
  v24[3] = &unk_2860BC868;
  v29 = v2;
  v30 = *(a1 + 712);
  v31 = *(a1 + 720);
  v27 = *(a1 + 688);
  memcpy(v34, (a1 + 752), sizeof(v34));
  v4 = *(a1 + 1478);
  v43 = *(a1 + 1462);
  v44 = v4;
  v45 = *(a1 + 1494);
  v46 = *(a1 + 1510);
  v5 = *(a1 + 1414);
  v39 = *(a1 + 1398);
  v40 = v5;
  v6 = *(a1 + 1446);
  v41 = *(a1 + 1430);
  v42 = v6;
  v7 = *(a1 + 1350);
  v35 = *(a1 + 1334);
  v36 = v7;
  v8 = *(a1 + 1382);
  v37 = *(a1 + 1366);
  v38 = v8;
  v9 = *(a1 + 1658);
  v55 = *(a1 + 1642);
  v56 = v9;
  v57 = *(a1 + 1674);
  v10 = *(a1 + 1594);
  v51 = *(a1 + 1578);
  v52 = v10;
  v11 = *(a1 + 1626);
  v53 = *(a1 + 1610);
  v54 = v11;
  v12 = *(a1 + 1530);
  v47 = *(a1 + 1514);
  v48 = v12;
  v13 = *(a1 + 1562);
  v49 = *(a1 + 1546);
  v50 = v13;
  v58 = *(a1 + 1690);
  v14 = *(a1 + 1835);
  v67 = *(a1 + 1819);
  v68 = v14;
  v69 = *(a1 + 1851);
  v15 = *(a1 + 1771);
  v63 = *(a1 + 1755);
  v64 = v15;
  v16 = *(a1 + 1803);
  v65 = *(a1 + 1787);
  v66 = v16;
  v17 = *(a1 + 1707);
  v59 = *(a1 + 1691);
  v60 = v17;
  v18 = *(a1 + 1739);
  v61 = *(a1 + 1723);
  v62 = v18;
  v19 = *(a1 + 2011);
  v78 = *(a1 + 1995);
  *v79 = v19;
  *&v79[12] = *(a1 + 2023);
  v20 = *(a1 + 1947);
  v74 = *(a1 + 1931);
  v75 = v20;
  v21 = *(a1 + 1979);
  v76 = *(a1 + 1963);
  v77 = v21;
  v22 = *(a1 + 1883);
  v70 = *(a1 + 1867);
  v71 = v22;
  v23 = *(a1 + 1915);
  v72 = *(a1 + 1899);
  v73 = v23;
  AccelerationStructureViewer::Sample::Sample(v25, a1 + 32);
  v32 = *(a1 + 728);
  v33 = *(a1 + 736);
  v28 = *(a1 + 696);
  dispatch_async(v3, v24);

  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v26);
}

intptr_t ___ZN33AccelerationStructureViewerServer6Server13receiveSampleEPN27AccelerationStructureViewer7SamplerENS1_6SampleE_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 704);
  v3 = *(v2 + 40);
  if (v3 < 3)
  {
    v7 = [*(a1 + 688) contents];
    *v7 = 1;
    *(v7 + 1) = *(a1 + 40);
    *(v7 + 157) = *(a1 + 464);
    *(v7 + 158) = *(a1 + 466);
    *(v7 + 9) = *(a1 + 468);
    *(v7 + 141) = [*(a1 + 640) width];
    *(v7 + 145) = [*(a1 + 640) height];
    *(v7 + 149) = *(a1 + 472);
    *(v7 + 153) = *(a1 + 476);
    v8 = *(a1 + 496);
    v9 = *(a1 + 512);
    v10 = *(a1 + 528);
    *(v7 + 13) = *(a1 + 480);
    *(v7 + 29) = v8;
    *(v7 + 45) = v9;
    *(v7 + 61) = v10;
    v11 = *(a1 + 560);
    v12 = *(a1 + 576);
    v13 = *(a1 + 592);
    *(v7 + 77) = *(a1 + 544);
    *(v7 + 93) = v11;
    *(v7 + 109) = v12;
    *(v7 + 125) = v13;
    *(v7 + 159) = vaddq_s64(*(a1 + 728), vdupq_n_s64(0xFFFFFFFFFFFFFF49));
    *(v7 + 175) = *(a1 + 744) - 183;
    v14 = *(v2 + 24);
    if (!v14)
    {
      goto LABEL_58;
    }

    v15 = *(*v14 + 32);
    goto LABEL_57;
  }

  v4 = *(a1 + 712);
  v5 = *(v2 + 152 + 8 * v4);
  if (v3 <= 0xA)
  {
    v16 = 177;
    v17 = 172;
    if (v3 > 4)
    {
      v17 = 176;
    }

    if (v3 <= 7)
    {
      v16 = v17;
    }

    if (v3 == 10)
    {
      v6 = 180;
    }

    else
    {
      v6 = v16;
    }
  }

  else
  {
    v6 = 582;
  }

  v18 = *(a1 + 720);
  if (v5 && *(v2 + 8 * v4 + 216) >= v18)
  {
    v20 = *(a1 + 720);
  }

  else
  {
    v5 = malloc_type_malloc(*(a1 + 720), 0x100004077774924uLL);
    v19 = *(a1 + 712);
    *(v2 + 152 + 8 * v19) = v5;
    v20 = *(a1 + 720);
    *(v2 + 8 * v19 + 216) = v20;
    v4 = *(a1 + 712);
  }

  v21 = v18 - v6;
  v22 = *(v2 + 184 + 8 * v4);
  if (!v22)
  {
    v23 = compression_encode_scratch_buffer_size(*(v2 + 72));
    v22 = malloc_type_malloc(v23, 0x100004077774924uLL);
    *(v2 + 184 + 8 * *(a1 + 712)) = v22;
    v20 = *(a1 + 720);
  }

  v24 = compression_encode_buffer(v5 + v6, v20 - v6, ([*(a1 + 688) contents] + v6), v21, v22, *(v2 + 72));
  if (*(v2 + 72) && v24)
  {
    v25 = *(v2 + 40);
    if (v25 >= 0xB)
    {
      memcpy(v5, (a1 + 752), 0x246uLL);
      goto LABEL_44;
    }

    if (v25 == 10)
    {
      v37 = *(a1 + 1334);
      v38 = *(a1 + 1350);
      v39 = *(a1 + 1382);
      v5[2] = *(a1 + 1366);
      v5[3] = v39;
      *v5 = v37;
      v5[1] = v38;
      v40 = *(a1 + 1398);
      v41 = *(a1 + 1414);
      v42 = *(a1 + 1446);
      v5[6] = *(a1 + 1430);
      v5[7] = v42;
      v5[4] = v40;
      v5[5] = v41;
      v43 = *(a1 + 1462);
      v44 = *(a1 + 1478);
      v45 = *(a1 + 1494);
      *(v5 + 44) = *(a1 + 1510);
    }

    else
    {
      if (v25 < 8)
      {
        if (v25 < 5)
        {
          v79 = *(a1 + 1867);
          v80 = *(a1 + 1899);
          v5[1] = *(a1 + 1883);
          v5[2] = v80;
          *v5 = v79;
          v81 = *(a1 + 1915);
          v82 = *(a1 + 1931);
          v83 = *(a1 + 1963);
          v5[5] = *(a1 + 1947);
          v5[6] = v83;
          v5[3] = v81;
          v5[4] = v82;
          v71 = *(a1 + 1979);
          v72 = *(a1 + 1995);
          v73 = *(a1 + 2011);
          *(v5 + 156) = *(a1 + 2023);
        }

        else
        {
          v66 = *(a1 + 1691);
          v67 = *(a1 + 1723);
          v5[1] = *(a1 + 1707);
          v5[2] = v67;
          *v5 = v66;
          v68 = *(a1 + 1739);
          v69 = *(a1 + 1755);
          v70 = *(a1 + 1787);
          v5[5] = *(a1 + 1771);
          v5[6] = v70;
          v5[3] = v68;
          v5[4] = v69;
          v71 = *(a1 + 1803);
          v72 = *(a1 + 1819);
          v73 = *(a1 + 1835);
          v5[10] = *(a1 + 1851);
        }

        v5[8] = v72;
        v5[9] = v73;
        v5[7] = v71;
LABEL_44:
        v84 = *(v2 + 72);
        if (v84 > 2048)
        {
          if (v84 == 2818)
          {
            v85 = 5;
            goto LABEL_53;
          }

          if (v84 == 2049)
          {
            v85 = 3;
            goto LABEL_53;
          }
        }

        else
        {
          if (v84 == 256)
          {
            v85 = 2;
            goto LABEL_53;
          }

          if (v84 == 774)
          {
            v85 = 4;
LABEL_53:
            *(v5 + 163) = v85;
          }
        }

        *(v5 + 164) = v21;
        goto LABEL_55;
      }

      v52 = *(a1 + 1514);
      v53 = *(a1 + 1530);
      v54 = *(a1 + 1562);
      v5[2] = *(a1 + 1546);
      v5[3] = v54;
      *v5 = v52;
      v5[1] = v53;
      v55 = *(a1 + 1578);
      v56 = *(a1 + 1594);
      v57 = *(a1 + 1626);
      v5[6] = *(a1 + 1610);
      v5[7] = v57;
      v5[4] = v55;
      v5[5] = v56;
      v43 = *(a1 + 1642);
      v44 = *(a1 + 1658);
      v45 = *(a1 + 1674);
      *(v5 + 176) = *(a1 + 1690);
    }

    v5[9] = v44;
    v5[10] = v45;
    v5[8] = v43;
    goto LABEL_44;
  }

  v26 = [*(a1 + 688) contents];
  v5 = v26;
  v27 = *(v2 + 40);
  if (v27 < 0xB)
  {
    if (v27 == 10)
    {
      v28 = *(a1 + 1334);
      v29 = *(a1 + 1350);
      v30 = *(a1 + 1382);
      v26[2] = *(a1 + 1366);
      v26[3] = v30;
      *v26 = v28;
      v26[1] = v29;
      v31 = *(a1 + 1398);
      v32 = *(a1 + 1414);
      v33 = *(a1 + 1446);
      v26[6] = *(a1 + 1430);
      v26[7] = v33;
      v26[4] = v31;
      v26[5] = v32;
      v34 = *(a1 + 1462);
      v35 = *(a1 + 1478);
      v36 = *(a1 + 1494);
      *(v26 + 44) = *(a1 + 1510);
    }

    else
    {
      if (v27 < 8)
      {
        if (v27 < 5)
        {
          v74 = *(a1 + 1867);
          v75 = *(a1 + 1899);
          v26[1] = *(a1 + 1883);
          v26[2] = v75;
          *v26 = v74;
          v76 = *(a1 + 1915);
          v77 = *(a1 + 1931);
          v78 = *(a1 + 1963);
          v26[5] = *(a1 + 1947);
          v26[6] = v78;
          v26[3] = v76;
          v26[4] = v77;
          v63 = *(a1 + 1979);
          v64 = *(a1 + 1995);
          v65 = *(a1 + 2011);
          *(v26 + 156) = *(a1 + 2023);
        }

        else
        {
          v58 = *(a1 + 1691);
          v59 = *(a1 + 1723);
          v26[1] = *(a1 + 1707);
          v26[2] = v59;
          *v26 = v58;
          v60 = *(a1 + 1739);
          v61 = *(a1 + 1755);
          v62 = *(a1 + 1787);
          v26[5] = *(a1 + 1771);
          v26[6] = v62;
          v26[3] = v60;
          v26[4] = v61;
          v63 = *(a1 + 1803);
          v64 = *(a1 + 1819);
          v65 = *(a1 + 1835);
          v26[10] = *(a1 + 1851);
        }

        v26[8] = v64;
        v26[9] = v65;
        v26[7] = v63;
        goto LABEL_41;
      }

      v46 = *(a1 + 1514);
      v47 = *(a1 + 1530);
      v48 = *(a1 + 1562);
      v26[2] = *(a1 + 1546);
      v26[3] = v48;
      *v26 = v46;
      v26[1] = v47;
      v49 = *(a1 + 1578);
      v50 = *(a1 + 1594);
      v51 = *(a1 + 1626);
      v26[6] = *(a1 + 1610);
      v26[7] = v51;
      v26[4] = v49;
      v26[5] = v50;
      v34 = *(a1 + 1642);
      v35 = *(a1 + 1658);
      v36 = *(a1 + 1674);
      *(v26 + 176) = *(a1 + 1690);
    }

    v26[9] = v35;
    v26[10] = v36;
    v26[8] = v34;
  }

  else
  {
    memcpy(v26, (a1 + 752), 0x246uLL);
  }

LABEL_41:
  *(v5 + 163) = 1;
  *(v5 + 164) = v21;
LABEL_55:
  *v5 = 1;
  *(v5 + 1) = *(a1 + 40);
  *(v5 + 157) = *(a1 + 464);
  *(v5 + 158) = *(a1 + 466);
  *(v5 + 9) = *(a1 + 468);
  *(v5 + 141) = [*(a1 + 640) width];
  *(v5 + 145) = [*(a1 + 640) height];
  *(v5 + 149) = *(a1 + 472);
  *(v5 + 153) = *(a1 + 476);
  v86 = *(a1 + 496);
  v87 = *(a1 + 512);
  v88 = *(a1 + 528);
  *(v5 + 13) = *(a1 + 480);
  *(v5 + 29) = v86;
  *(v5 + 45) = v87;
  *(v5 + 61) = v88;
  v89 = *(a1 + 560);
  v90 = *(a1 + 576);
  v91 = *(a1 + 592);
  *(v5 + 77) = *(a1 + 544);
  *(v5 + 93) = v89;
  *(v5 + 109) = v90;
  *(v5 + 125) = v91;
  v92 = *(v2 + 24);
  if (!v92)
  {
    goto LABEL_58;
  }

  v15 = *(*v92 + 32);
LABEL_57:
  v15();
LABEL_58:
  dispatch_semaphore_signal(*(v2 + 8 * *(a1 + 712) + 88));
  v93 = *(*(*(a1 + 696) + 8) + 40);

  return dispatch_semaphore_signal(v93);
}

void AccelerationStructureViewerServer::Server::receiveGBVH(AccelerationStructureViewerServer::Server *this, uint64_t a2, NSData *a3, NSError *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (*(this + 5) >= 0xDuLL && *(this + 3))
  {
    if (v8)
    {
      operator new();
    }

    v10 = [(NSData *)v7 length];
    v11 = malloc_type_malloc(v10 + 10, 0x100004080B1215BuLL);
    *v11 = 20;
    *(v11 + 1) = a2;
    v11[9] = 0;
    memcpy(v11 + 10, [(NSData *)v7 bytes], [(NSData *)v7 length]);
    (*(**(this + 3) + 32))(*(this + 3), this, 0, 0, v11, v10 + 10);
    free(v11);
  }
}

uint64_t AccelerationStructureViewerServer::Server::setSamplerProperties(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 24))
  {
    v3 = *(result + 40);
    if (v3 >= 5)
    {
      operator new();
    }

    if (v3 >= 2)
    {
      operator new();
    }

    operator new();
  }

  return result;
}

void non-virtual thunk toAccelerationStructureViewerServer::Server::~Server(AccelerationStructureViewerServer::Server *this)
{
  AccelerationStructureViewerServer::Server::~Server((this - 8));

  JUMPOUT(0x2530332C0);
}

{
  AccelerationStructureViewerServer::Server::~Server((this - 8));
}

void AccelerationStructureViewerServer::Server::~Server(AccelerationStructureViewerServer::Server *this)
{
  *this = &unk_2860BC748;
  *(this + 1) = &unk_2860BC7E8;
  *(this + 3) = 0;
  v2 = *(this + 10);
  v3 = *(this + 10);
  *(this + 10) = 0;

  v4 = 4;
  do
  {
    dispatch_semaphore_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
    --v4;
  }

  while (v4);
  v5 = 4;
  do
  {
    dispatch_semaphore_signal(v2);
    --v5;
  }

  while (v5);

  v6 = -32;
  do
  {
    v7 = (this + v6);
    v8 = *(this + v6 + 120);
    *(this + v6 + 120) = 0;

    v9 = *(this + v6 + 152);
    v7[19] = 0;

    free(*(this + v6 + 184));
    free(*(this + v6 + 216));
    v7[23] = 0;
    v7[27] = 0;
    v6 += 8;
  }

  while (v6);
  for (i = 144; i != 112; i -= 8)
  {
  }

  do
  {

    i -= 8;
  }

  while (i != 80);
}

{
  AccelerationStructureViewerServer::Server::~Server(this);

  JUMPOUT(0x2530332C0);
}

uint64_t AccelerationStructureViewerServer::Server::teardown(AccelerationStructureViewerServer::Server *this, Sampler *a2, NSError *a3)
{
  result = *(this + 3);
  if (result)
  {
    *(this + 3) = 0;
    return (*(*result + 40))();
  }

  return result;
}

void AccelerationStructureViewerServer::Server::pause(AccelerationStructureViewerServer::Server *this, Sampler *a2, NSError *a3)
{
  if (*(this + 5) >= 7uLL)
  {
    AccelerationStructureViewerServer::Server::replyQueryable(this, 11, -1, 0, a3);
  }
}

void AccelerationStructureViewerServer::Server::recv(AccelerationStructureViewerServer::Server *this, char *a2, uint64_t a3, __n128 a4)
{
  v105 = *MEMORY[0x277D85DE8];
  v6 = this;
  switch(*a2)
  {
    case 0:
      v7 = *(this + 4);
      if (!v7)
      {
        return;
      }

      v8 = 13;
      if (*(a2 + 1) < 0xDuLL)
      {
        v8 = *(a2 + 1);
      }

      *(v6 + 5) = v8;
      v9 = *(*v7 + 40);

LABEL_18:
      v9(a4);
      return;
    case 1:
    case 13:
      return;
    case 2:
      v36 = *(this + 4);
      if (!v36)
      {
        return;
      }

      v37 = a2[1];
      v38 = a2[2] != 0;
      a4.n128_u32[0] = *(a2 + 3);
      v39 = vmovl_u8(a4.n128_u64[0]).u64[0];
      v40 = vceq_s16(v39, 0x1000100010001);
      v41 = vceq_s16(v39, 0x2000200020002);
      a4.n128_u64[0] = vsub_s16(vand_s8(v41, 0x2000200020002), vbic_s8(v40, v41));
      v42 = a2[7];
      if (v42 == 2)
      {
        v43 = 2;
      }

      else
      {
        v43 = v42 == 1;
      }

      v44 = a2[8];
      v45 = a2[9];
      v46 = *(this + 5);
      if (v46 < 2)
      {
        v49 = 0;
        if (v46 == 1)
        {
          v48 = 0;
          v52 = 0;
          LOBYTE(v53) = 0;
          LOBYTE(v54) = 0;
          v47 = *(a2 + 10);
LABEL_86:
          v51 = -1;
          v50 = 1;
          goto LABEL_97;
        }

        v47 = 0;
        v48 = 0;
LABEL_85:
        v52 = 0;
        LOBYTE(v53) = 0;
        LOBYTE(v54) = 0;
        goto LABEL_86;
      }

      v47 = *(a2 + 10);
      v48 = *(a2 + 14);
      v49 = 0;
      if (v46 == 2)
      {
        goto LABEL_85;
      }

      v50 = a2[18];
      if (v46 < 4)
      {
        v52 = 0;
        LOBYTE(v53) = 0;
        LOBYTE(v54) = 0;
        v51 = -1;
      }

      else
      {
        v51 = *(a2 + 19);
        if (v46 == 4 || (v49 = *(a2 + 23), v46 < 8))
        {
          v52 = 0;
          LOBYTE(v53) = 0;
          LOBYTE(v54) = 0;
        }

        else
        {
          v52 = a2[27];
          v53 = a2[28];
          if (v53 >= 7)
          {
            LOBYTE(v53) = 0;
          }

          v54 = a2[29];
          if (v54 >= 7)
          {
            LOBYTE(v54) = 0;
          }

          LODWORD(a3) = *(a2 + 30);
          v55 = *(a2 + 370);
          v101 = *(a2 + 354);
          v102 = v55;
          v56 = *(a2 + 402);
          v103 = *(a2 + 386);
          v104 = v56;
          v57 = *(a2 + 306);
          v97 = *(a2 + 290);
          v98 = v57;
          v58 = *(a2 + 338);
          v99 = *(a2 + 322);
          v100 = v58;
          *&__src[49] = *(a2 + 226);
          *&__src[53] = *(a2 + 242);
          v59 = *(a2 + 274);
          *&__src[57] = *(a2 + 258);
          v4 = *(a2 + 418);
          LODWORD(v6) = *(a2 + 426);
          *&__src[61] = v59;
          *&__src[33] = *(a2 + 162);
          *&__src[37] = *(a2 + 178);
          *&__src[41] = *(a2 + 194);
          *&__src[45] = *(a2 + 210);
          *&__src[17] = *(a2 + 98);
          *&__src[21] = *(a2 + 114);
          *&__src[25] = *(a2 + 130);
          *&__src[29] = *(a2 + 146);
          *&__src[1] = *(a2 + 34);
          *&__src[5] = *(a2 + 50);
          *&__src[9] = *(a2 + 66);
          *&__src[13] = *(a2 + 82);
        }
      }

LABEL_97:
      v91.__locale_ = __PAIR64__(v48, v47);
      LOBYTE(v92) = v37;
      BYTE1(v92) = v38;
      *(&v92 + 2) = vuzp1_s8(a4.n128_u64[0], a4.n128_u64[0]).u32[0];
      BYTE6(v92) = v43;
      HIBYTE(v92) = v44;
      LOBYTE(v93) = v45;
      BYTE1(v93) = v50;
      WORD1(v93) = v52;
      *(&v93 + 4) = __PAIR64__(v49, v51);
      BYTE12(v93) = v53;
      BYTE13(v93) = v54;
      LODWORD(v94[0]) = a3;
      memcpy(v94 + 4, __src, 0x104uLL);
      *&v94[37] = v99;
      *&v94[39] = v100;
      *&v94[33] = v97;
      *&v94[35] = v98;
      *&v94[45] = v103;
      *&v94[47] = v104;
      *&v94[41] = v101;
      *&v94[43] = v102;
      v94[49] = v4;
      v95 = v6;
      (*(*v36 + 32))(v36, &v91);
      return;
    case 3:
      v25 = *(this + 4);
      if (v25)
      {
        v26 = *(a2 + 1);
        v27 = *(a2 + 14);
        v28 = *(a2 + 30);
        v29 = *(a2 + 46);
        v30 = *(a2 + 62);
        v31 = *(a2 + 78);
        v32 = *(a2 + 94);
        v33 = *(a2 + 110);
        v34 = *(a2 + 126);
        LOBYTE(v91.__locale_) = a2[5];
        WORD1(v91.__locale_) = 0;
        HIDWORD(v91.__locale_) = v26;
        v92 = *(a2 + 6);
        v93 = v27;
        *v94 = v28;
        *&v94[2] = v29;
        *&v94[4] = v30;
        *&v94[6] = v31;
        *&v94[8] = v32;
        *&v94[10] = v33;
        *&v94[12] = v34;
        (*(*v25 + 24))(v25, &v91, a3);
      }

      return;
    case 4:
      v19 = *(this + 4);
      if (v19)
      {
        v20 = *(*v19 + 88);

        v20(a4);
      }

      return;
    case 7:
      operator new();
    case 9:
      if (*(this + 5) < 0xDuLL)
      {
        goto LABEL_74;
      }

      v14 = *(a2 + 1);
      v91.__locale_ = 0;
      v92 = a2 + 3;
      *&v93 = a3 - 3;
      BYTE8(v93) = 0;
      LOWORD(v97) = 0;
      v15 = AccelerationStructureViewer::DataSourceQueryBlobDecoder::decode(&v91, &v97);
      v16 = v15;
      if (v97 != 14)
      {
        if (v15)
        {
          (*(*v15 + 8))(v15);
        }

        goto LABEL_74;
      }

      if (!v15)
      {
LABEL_74:
        v69 = ASVErrorWithCode(5u, @"properties is missing");
        AccelerationStructureViewerServer::Server::replyQueryable(v6, 8, -1, 0, v69);

        return;
      }

      v21 = *(*(v6 + 4) + 8);
      if (!v21)
      {
        v65 = v15[1];
        v66 = ASVErrorWithCode(5u, @"id<MTLAccelerationStructure> is missing");
        AccelerationStructureViewerServer::Server::replyQueryable(v6, 8, v65, 0, v66);

LABEL_94:
        (*(*v16 + 8))(v16);
        return;
      }

      v23 = v15[3];
      v22 = v15[4];
      v91.__locale_ = &unk_2860BC948;
      v94[0] = 0;
      v93 = 0uLL;
      LOBYTE(v92) = 0;
      v24 = v15[5];
      if (v24)
      {
        LOBYTE(v92) = *(v24 + 8);
        if (&v91 != v24)
        {
          std::vector<AccelerationStructureViewer::FilterToken>::__assign_with_size[abi:nn200100]<AccelerationStructureViewer::FilterToken*,AccelerationStructureViewer::FilterToken*>(&v93, *(v24 + 16), *(v24 + 24), 0xAAAAAAAAAAAAAAABLL * ((*(v24 + 24) - *(v24 + 16)) >> 3));
        }
      }

      if (v14 > 3)
      {
        if (v14 > 5)
        {
          if (v14 != 6)
          {
            if (v14 == 7)
            {
              v71 = v16[2];
              v78[0] = MEMORY[0x277D85DD0];
              v78[1] = 3221225472;
              v78[2] = ___ZN33AccelerationStructureViewerServer6Server4recvEPvm_block_invoke_4_33;
              v78[3] = &__block_descriptor_48_e28_v24__0__NSData_8__NSError_16l;
              v78[4] = v6;
              v78[5] = v16;
              (*(*v21 + 56))(v21, v71, v23, v22, v78);
            }

            goto LABEL_93;
          }

          v74 = v16[2];
          v75 = v16[6];
          AccelerationStructureViewer::Filter::Filter(v80, &v91);
          v79[0] = MEMORY[0x277D85DD0];
          v79[1] = 3221225472;
          v79[2] = ___ZN33AccelerationStructureViewerServer6Server4recvEPvm_block_invoke_3_32;
          v79[3] = &__block_descriptor_48_e21_v24__0_v8__NSError_16l;
          v79[4] = v6;
          v79[5] = v16;
          (*(*v21 + 48))(v21, v74, v75, v23, v22, v80, v79);
          v80[0] = &unk_2860BC948;
          v73 = &v81;
          goto LABEL_92;
        }

        if (v14 == 4)
        {
          v72 = v16[2];
          v68 = v83;
          AccelerationStructureViewer::Filter::Filter(v83, &v91);
          v82[0] = MEMORY[0x277D85DD0];
          v82[1] = 3221225472;
          v82[2] = ___ZN33AccelerationStructureViewerServer6Server4recvEPvm_block_invoke_2_31;
          v82[3] = &__block_descriptor_48_e21_v24__0_v8__NSError_16l;
          v82[4] = v6;
          v82[5] = v16;
          (*(*v21 + 40))(v21, v72, v23, v22, v83, v82);
          v83[0] = &unk_2860BC948;
        }

        else
        {
          v67 = v16[2];
          v68 = v77;
          AccelerationStructureViewer::Filter::Filter(v77, &v91);
          v76[0] = MEMORY[0x277D85DD0];
          v76[1] = 3221225472;
          v76[2] = ___ZN33AccelerationStructureViewerServer6Server4recvEPvm_block_invoke_5;
          v76[3] = &__block_descriptor_48_e21_v24__0_v8__NSError_16l;
          v76[4] = v6;
          v76[5] = v16;
          (*(*v21 + 64))(v21, v67, v23, v22, v77, v76);
          v77[0] = &unk_2860BC948;
        }
      }

      else
      {
        if (v14 <= 1)
        {
          if (v14)
          {
            v89[0] = MEMORY[0x277D85DD0];
            v89[1] = 3221225472;
            v89[2] = ___ZN33AccelerationStructureViewerServer6Server4recvEPvm_block_invoke_2;
            v89[3] = &__block_descriptor_48_e240_v40__0_vector_AccelerationStructureViewer::IntersectionFunctionTable__std::allocator_AccelerationStructureViewer::IntersectionFunctionTable_____IntersectionFunctionTable___IntersectionFunctionTable___IntersectionFunctionTable__8__NSError_32l;
            v89[4] = v6;
            v89[5] = v16;
            (*(*v21 + 16))(v21, v89);
          }

          else
          {
            v90[0] = MEMORY[0x277D85DD0];
            v90[1] = 3221225472;
            v90[2] = ___ZN33AccelerationStructureViewerServer6Server4recvEPvm_block_invoke;
            v90[3] = &__block_descriptor_48_e21_v24__0_v8__NSError_16l;
            v90[4] = v6;
            v90[5] = v16;
            (*(*v21 + 32))(v21, v90);
          }

          goto LABEL_93;
        }

        if (v14 == 2)
        {
          v86[0] = MEMORY[0x277D85DD0];
          v86[1] = 3321888768;
          v86[2] = ___ZN33AccelerationStructureViewerServer6Server4recvEPvm_block_invoke_3;
          v86[3] = &__block_descriptor_112_a8_72c42_ZTSN27AccelerationStructureViewer6FilterE_e240_v40__0_vector_AccelerationStructureViewer::IntersectionFunctionTable__std::allocator_AccelerationStructureViewer::IntersectionFunctionTable_____IntersectionFunctionTable___IntersectionFunctionTable___IntersectionFunctionTable__8__NSError_32l;
          v86[4] = v6;
          v86[5] = v16;
          v86[6] = v21;
          v86[7] = v23;
          v86[8] = v22;
          AccelerationStructureViewer::Filter::Filter(&v87, &v91);
          (*(*v21 + 16))(v21, v86);
          v87 = &unk_2860BC948;
          v73 = &v88;
          goto LABEL_92;
        }

        v70 = v16[2];
        v68 = v85;
        AccelerationStructureViewer::Filter::Filter(v85, &v91);
        v84[0] = MEMORY[0x277D85DD0];
        v84[1] = 3221225472;
        v84[2] = ___ZN33AccelerationStructureViewerServer6Server4recvEPvm_block_invoke_30;
        v84[3] = &__block_descriptor_48_e21_v24__0_v8__NSError_16l;
        v84[4] = v6;
        v84[5] = v16;
        (*(*v21 + 72))(v21, v70, v23, v22, v85, v84);
        v85[0] = &unk_2860BC948;
      }

      v73 = v68 + 2;
LABEL_92:
      *&v97 = v73;
      std::vector<AccelerationStructureViewer::FilterToken>::__destroy_vector::operator()[abi:nn200100](&v97);
LABEL_93:
      v91.__locale_ = &unk_2860BC948;
      *&v97 = &v93;
      std::vector<AccelerationStructureViewer::FilterToken>::__destroy_vector::operator()[abi:nn200100](&v97);
      goto LABEL_94;
    case 10:
      v17 = a2[1];
      if (v17 > 5)
      {
        v18 = 0;
      }

      else
      {
        v18 = dword_24DA91EF4[v17];
      }

      if (v18 != *(this + 18))
      {
        v61 = 4;
        do
        {
          dispatch_semaphore_wait(*(v6 + 10), 0xFFFFFFFFFFFFFFFFLL);
          --v61;
        }

        while (v61);
        *(v6 + 18) = v18;
        v62 = v6 + 184;
        do
        {
          free(*&v62[v61]);
          *&v62[v61] = 0;
          v61 += 8;
        }

        while (v61 != 32);
        v63 = 4;
        do
        {
          dispatch_semaphore_signal(*(v6 + 10));
          --v63;
        }

        while (v63);
      }

      return;
    case 14:
      v10 = *(a2 + 1);
      v11 = *(a2 + 13);
      v12 = *(a2 + 21);
      v13 = *(this + 4);
      LODWORD(v92) = *(a2 + 9);
      v91.__locale_ = v10;
      DWORD2(v93) = v12;
      *&v93 = v11;
      v94[0] = *(a2 + 25);
      (*(*v13 + 72))(v13, &v91, a3);
      return;
    case 15:
      v9 = *(**(this + 4) + 80);

      goto LABEL_18;
    case 16:
      v35 = *(a2 + 13);
      if (40 * v35 + 17 == a3)
      {
        if (v35)
        {
          operator new();
        }

        (*(**(this + 4) + 104))(*(this + 4), *(a2 + 1) == 1, *(a2 + 5), 0, 0);
      }

      return;
    case 18:
      if (*(a2 + 1) != -1)
      {
        operator new();
      }

      memcpy(0, a2 + 5, 0xFFFFFFFFuLL);
      MEMORY[0xFFFFFFFF] = 0;
      v64 = [MEMORY[0x277CCACA8] stringWithCString:0 encoding:30];
      (*(**(v6 + 4) + 48))(*(v6 + 4), v64);

      operator delete(0);
      return;
    case 19:
      v9 = *(**(this + 4) + 56);

      goto LABEL_18;
    default:
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>("ASVPacket - type '", 18);
      LOBYTE(v91.__locale_) = *a2;
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v91, 1);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>("' is invalid", 12);
      std::ios_base::getloc((MEMORY[0x277D82678] + *(*MEMORY[0x277D82678] - 24)));
      v60 = std::locale::use_facet(&v91, MEMORY[0x277D82680]);
      (v60->__vftable[2].~facet_0)(v60, 10);
      std::locale::~locale(&v91);
      std::ostream::put();
      std::ostream::flush();
      return;
  }
}

id *std::vector<AccelerationStructureViewer::FilterToken>::__assign_with_size[abi:nn200100]<AccelerationStructureViewer::FilterToken*,AccelerationStructureViewer::FilterToken*>(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = a1[2];
  v9 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v8 - *a1) >> 3) < a4)
  {
    if (v9)
    {
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v9)
      {
        v12 = v10 - 24;
        v13 = (v10 - 24);
        v14 = (v10 - 24);
        do
        {
          v15 = *v14;
          v14 -= 3;
          (*v15)(v13);
          v12 -= 24;
          v16 = v13 == v9;
          v13 = v14;
        }

        while (!v16);
        v11 = *a1;
      }

      a1[1] = v9;
      operator delete(v11);
      v8 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      v18 = 2 * v17;
      if (2 * v17 <= a4)
      {
        v18 = a4;
      }

      if (v17 >= 0x555555555555555)
      {
        v19 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v19 = v18;
      }

      std::vector<AccelerationStructureViewer::FilterToken>::__vallocate[abi:nn200100](a1, v19);
    }

    std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
  }

  v20 = a1[1] - v9;
  if (0xAAAAAAAAAAAAAAABLL * (v20 >> 3) >= a4)
  {
    result = std::__copy_impl::operator()[abi:nn200100]<AccelerationStructureViewer::FilterToken *,AccelerationStructureViewer::FilterToken *,AccelerationStructureViewer::FilterToken *>(a2, a3, v9);
    v22 = result;
    v23 = a1[1];
    if (v23 != result)
    {
      v24 = v23 - 3;
      v25 = v23 - 3;
      v26 = v23 - 3;
      do
      {
        v27 = *v26;
        v26 -= 3;
        result = (*v27)(v25);
        v24 -= 3;
        v16 = v25 == v22;
        v25 = v26;
      }

      while (!v16);
    }

    a1[1] = v22;
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<AccelerationStructureViewer::FilterToken *,AccelerationStructureViewer::FilterToken *,AccelerationStructureViewer::FilterToken *>(a2, a2 + v20, v9);

    return std::vector<AccelerationStructureViewer::FilterToken>::__construct_at_end<AccelerationStructureViewer::FilterToken*,AccelerationStructureViewer::FilterToken*>(a1, a2 + v20, a3);
  }

  return result;
}

void ___ZN33AccelerationStructureViewerServer6Server4recvEPvm_block_invoke_2(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v14 = &unk_2860BB738;
  *__p = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = *a2;
  if (*a2 != a2[1])
  {
    v8 = 0;
    do
    {
      if (v8 >= v16)
      {
        v9 = (v8 - __p[0]) >> 3;
        if ((v9 + 1) >> 61)
        {
          std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
        }

        v10 = (v16 - __p[0]) >> 2;
        if (v10 <= v9 + 1)
        {
          v10 = v9 + 1;
        }

        if (v16 - __p[0] >= 0x7FFFFFFFFFFFFFF8)
        {
          v11 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        if (v11)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<AccelerationStructureViewerServer::AccelerationStructure *>>(v11);
        }

        *(8 * v9) = v7;
        v8 = (8 * v9 + 8);
        v12 = (8 * v9 - (__p[1] - __p[0]));
        memcpy(v12, __p[0], __p[1] - __p[0]);
        v13 = __p[0];
        __p[0] = v12;
        __p[1] = v8;
        *&v16 = 0;
        if (v13)
        {
          operator delete(v13);
        }
      }

      else
      {
        *v8 = v7;
        v8 += 8;
      }

      __p[1] = v8;
      v7 += 32;
    }

    while (v7 != a2[1]);
  }

  AccelerationStructureViewerServer::Server::replyQueryable(v6, 8, *(*(a1 + 40) + 8), &v14, v5);
  AccelerationStructureViewer::DataSourceArray::~DataSourceArray(&v14);
}

void ___ZN33AccelerationStructureViewerServer6Server4recvEPvm_block_invoke_3(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (v5)
  {
    AccelerationStructureViewerServer::Server::replyQueryable(*(a1 + 32), 8, *(*(a1 + 40) + 8), 0, v5);
  }

  else
  {
    v7 = *a2;
    v8 = *(a1 + 40);
    v9 = *(v8 + 16);
    while (1)
    {
      if (v7 == a2[1])
      {
        v10 = *(v8 + 8);
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"id<MTLIntersectionFunctionTable> 0x%llx does not exist", v9];
        v12 = ASVErrorWithCode(6u, v11);
        AccelerationStructureViewerServer::Server::replyQueryable(v6, 8, v10, 0, v12);

        goto LABEL_12;
      }

      if (*(v7 + 16) == v9)
      {
        break;
      }

      v7 += 32;
    }

    v14 = *(a1 + 48);
    v13 = *(a1 + 56);
    v15 = *(a1 + 64);
    v20 = &unk_2860BC948;
    v21 = *(a1 + 80);
    memset(v22, 0, sizeof(v22));
    v17 = *(a1 + 88);
    v16 = *(a1 + 96);
    if (v16 != v17)
    {
      v18 = 0xAAAAAAAAAAAAAAABLL * ((v16 - v17) >> 3);
      if (v18 < 0xAAAAAAAAAAAAAABLL)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<AccelerationStructureViewer::FilterToken>>(v18);
      }

      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = ___ZN33AccelerationStructureViewerServer6Server4recvEPvm_block_invoke_4;
    v19[3] = &__block_descriptor_48_e21_v24__0_v8__NSError_16l;
    v19[4] = v6;
    v19[5] = v8;
    (*(*v14 + 24))(v14, v7, v13, v15, &v20, v19);
    v20 = &unk_2860BC948;
    v23 = v22;
    std::vector<AccelerationStructureViewer::FilterToken>::__destroy_vector::operator()[abi:nn200100](&v23);
  }

LABEL_12:
}

AccelerationStructureViewer::Filter *AccelerationStructureViewer::Filter::Filter(AccelerationStructureViewer::Filter *this, const AccelerationStructureViewer::Filter *a2)
{
  *this = &unk_2860BC948;
  v2 = *(a2 + 8);
  *(this + 2) = 0;
  *(this + 8) = v2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v3 = *(a2 + 2);
  v4 = *(a2 + 3);
  if (v4 != v3)
  {
    std::vector<AccelerationStructureViewer::FilterToken>::__vallocate[abi:nn200100](this + 2, 0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3));
  }

  return this;
}

void ___ZN33AccelerationStructureViewerServer6Server4recvEPvm_block_invoke_30(uint64_t a1, uint64_t **a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v16 = &unk_2860BB738;
  *__p = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = *a2;
  if (*a2 != a2[1])
  {
    v8 = 0;
    do
    {
      v9 = *v7;
      if (v8 >= v18)
      {
        v10 = (v8 - __p[0]) >> 3;
        if ((v10 + 1) >> 61)
        {
          std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
        }

        v11 = (v18 - __p[0]) >> 2;
        if (v11 <= v10 + 1)
        {
          v11 = v10 + 1;
        }

        if (v18 - __p[0] >= 0x7FFFFFFFFFFFFFF8)
        {
          v12 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v11;
        }

        if (v12)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<AccelerationStructureViewerServer::AccelerationStructure *>>(v12);
        }

        v13 = (8 * v10);
        *v13 = v9;
        v8 = (8 * v10 + 8);
        v14 = v13 - (__p[1] - __p[0]);
        memcpy(v14, __p[0], __p[1] - __p[0]);
        v15 = __p[0];
        __p[0] = v14;
        __p[1] = v8;
        *&v18 = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v8++ = v9;
      }

      __p[1] = v8;
      ++v7;
    }

    while (v7 != a2[1]);
  }

  AccelerationStructureViewerServer::Server::replyQueryable(v6, 8, *(*(a1 + 40) + 8), &v16, v5);
  AccelerationStructureViewer::DataSourceArray::~DataSourceArray(&v16);
}

void ___ZN33AccelerationStructureViewerServer6Server4recvEPvm_block_invoke_2_31(uint64_t a1, uint64_t **a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v16 = &unk_2860BB738;
  *__p = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = *a2;
  if (*a2 != a2[1])
  {
    v8 = 0;
    do
    {
      v9 = *v7;
      if (v8 >= v18)
      {
        v10 = (v8 - __p[0]) >> 3;
        if ((v10 + 1) >> 61)
        {
          std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
        }

        v11 = (v18 - __p[0]) >> 2;
        if (v11 <= v10 + 1)
        {
          v11 = v10 + 1;
        }

        if (v18 - __p[0] >= 0x7FFFFFFFFFFFFFF8)
        {
          v12 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v11;
        }

        if (v12)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<AccelerationStructureViewerServer::AccelerationStructure *>>(v12);
        }

        v13 = (8 * v10);
        *v13 = v9;
        v8 = (8 * v10 + 8);
        v14 = v13 - (__p[1] - __p[0]);
        memcpy(v14, __p[0], __p[1] - __p[0]);
        v15 = __p[0];
        __p[0] = v14;
        __p[1] = v8;
        *&v18 = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v8++ = v9;
      }

      __p[1] = v8;
      ++v7;
    }

    while (v7 != a2[1]);
  }

  AccelerationStructureViewerServer::Server::replyQueryable(v6, 8, *(*(a1 + 40) + 8), &v16, v5);
  AccelerationStructureViewer::DataSourceArray::~DataSourceArray(&v16);
}

void ___ZN33AccelerationStructureViewerServer6Server4recvEPvm_block_invoke_3_32(uint64_t a1, uint64_t **a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v16 = &unk_2860BB738;
  *__p = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = *a2;
  if (*a2 != a2[1])
  {
    v8 = 0;
    do
    {
      v9 = *v7;
      if (v8 >= v18)
      {
        v10 = (v8 - __p[0]) >> 3;
        if ((v10 + 1) >> 61)
        {
          std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
        }

        v11 = (v18 - __p[0]) >> 2;
        if (v11 <= v10 + 1)
        {
          v11 = v10 + 1;
        }

        if (v18 - __p[0] >= 0x7FFFFFFFFFFFFFF8)
        {
          v12 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v11;
        }

        if (v12)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<AccelerationStructureViewerServer::AccelerationStructure *>>(v12);
        }

        v13 = (8 * v10);
        *v13 = v9;
        v8 = (8 * v10 + 8);
        v14 = v13 - (__p[1] - __p[0]);
        memcpy(v14, __p[0], __p[1] - __p[0]);
        v15 = __p[0];
        __p[0] = v14;
        __p[1] = v8;
        *&v18 = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v8++ = v9;
      }

      __p[1] = v8;
      ++v7;
    }

    while (v7 != a2[1]);
  }

  AccelerationStructureViewerServer::Server::replyQueryable(v6, 8, *(*(a1 + 40) + 8), &v16, v5);
  AccelerationStructureViewer::DataSourceArray::~DataSourceArray(&v16);
}

void ___ZN33AccelerationStructureViewerServer6Server4recvEPvm_block_invoke_4_33(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(*(a1 + 40) + 8);
  memset(v13, 0, sizeof(v13));
  v6 = a3;
  v7 = a2;
  v8 = [v7 length];
  if (v8 == -9)
  {
    v9 = 0;
  }

  else
  {
    std::vector<unsigned char>::__append(v13, v8 + 9);
    v9 = v13[0];
  }

  memcpy(v9 + 9, [v7 bytes], objc_msgSend(v7, "length"));
  *v9 = 8;
  *(v9 + 1) = v5;
  v10 = *(v4 + 24);
  v11 = [v7 length];
  v12 = *(*v10 + 32);

  v12(v10, v4, 0, 0, v9, v11 + 9);

  operator delete(v9);
}

void ___ZN33AccelerationStructureViewerServer6Server4recvEPvm_block_invoke_5(uint64_t a1, uint64_t **a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v16 = &unk_2860BB738;
  *__p = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = *a2;
  if (*a2 != a2[1])
  {
    v8 = 0;
    do
    {
      v9 = *v7;
      if (v8 >= v18)
      {
        v10 = (v8 - __p[0]) >> 3;
        if ((v10 + 1) >> 61)
        {
          std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
        }

        v11 = (v18 - __p[0]) >> 2;
        if (v11 <= v10 + 1)
        {
          v11 = v10 + 1;
        }

        if (v18 - __p[0] >= 0x7FFFFFFFFFFFFFF8)
        {
          v12 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v11;
        }

        if (v12)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<AccelerationStructureViewerServer::AccelerationStructure *>>(v12);
        }

        v13 = (8 * v10);
        *v13 = v9;
        v8 = (8 * v10 + 8);
        v14 = v13 - (__p[1] - __p[0]);
        memcpy(v14, __p[0], __p[1] - __p[0]);
        v15 = __p[0];
        __p[0] = v14;
        __p[1] = v8;
        *&v18 = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v8++ = v9;
      }

      __p[1] = v8;
      ++v7;
    }

    while (v7 != a2[1]);
  }

  AccelerationStructureViewerServer::Server::replyQueryable(v6, 8, *(*(a1 + 40) + 8), &v16, v5);
  AccelerationStructureViewer::DataSourceArray::~DataSourceArray(&v16);
}

uint64_t std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277D82678];
  MEMORY[0x2530330D0](v18, MEMORY[0x277D82678]);
  if (v18[0] == 1)
  {
    v5 = v4 + *(*v4 - 24);
    v6 = *(v5 + 5);
    v7 = a1 + a2;
    if ((*(v5 + 2) & 0xB0) == 0x20)
    {
      v8 = a1 + a2;
    }

    else
    {
      v8 = a1;
    }

    v9 = *(v5 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((v4 + *(*v4 - 24)));
      v10 = std::locale::use_facet(&__b, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&__b);
      *(v5 + 36) = v9;
      if (!v6)
      {
LABEL_28:
        std::ios_base::clear((v4 + *(*v4 - 24)), *(v4 + *(*v4 - 24) + 32) | 5);
        return MEMORY[0x2530330E0](v18);
      }
    }

    else if (!v6)
    {
      goto LABEL_28;
    }

    v11 = *(v5 + 3);
    v12 = v11 <= a2;
    v13 = v11 - a2;
    if (v12)
    {
      v14 = 0;
    }

    else
    {
      v14 = v13;
    }

    if (v8 - a1 >= 1 && (*(*v6 + 96))(v6, a1, v8 - a1) != v8 - a1)
    {
      goto LABEL_28;
    }

    if (v14 >= 1)
    {
      if (v14 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
      }

      if (v14 >= 0x17)
      {
        operator new();
      }

      v20 = v14;
      memset(&__b, v9, v14);
      *(&__b.__locale_ + v14) = 0;
      if (v20 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b.__locale_;
      }

      v16 = (*(*v6 + 96))(v6, p_b, v14);
      if (v20 < 0)
      {
        operator delete(__b.__locale_);
      }

      if (v16 != v14)
      {
        goto LABEL_28;
      }
    }

    if (v7 - v8 >= 1 && (*(*v6 + 96))(v6, v8, v7 - v8) != v7 - v8)
    {
      goto LABEL_28;
    }

    *(v5 + 3) = 0;
  }

  return MEMORY[0x2530330E0](v18);
}

void __destroy_helper_block_a8_72c42_ZTSN27AccelerationStructureViewer6FilterE(uint64_t a1)
{
  *(a1 + 72) = &unk_2860BC948;
  v1 = (a1 + 88);
  std::vector<AccelerationStructureViewer::FilterToken>::__destroy_vector::operator()[abi:nn200100](&v1);
}

void *__copy_helper_block_a8_72c42_ZTSN27AccelerationStructureViewer6FilterE(void *result, uint64_t a2)
{
  v2 = *(a2 + 80);
  result[11] = 0;
  result[9] = &unk_2860BC948;
  *(result + 80) = v2;
  result[12] = 0;
  result[13] = 0;
  v3 = *(a2 + 88);
  v4 = *(a2 + 96);
  if (v4 != v3)
  {
    std::vector<AccelerationStructureViewer::FilterToken>::__vallocate[abi:nn200100](result + 11, 0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3));
  }

  return result;
}