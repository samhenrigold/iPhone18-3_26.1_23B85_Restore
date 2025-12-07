void sub_239AC35E0(_Unwind_Exception *a1)
{
  std::unordered_map<unsigned int,unsigned int>::~unordered_map[abi:ne200100](v2 - 176);
  if (v1)
  {
    operator delete(v1);
  }

  MPSAutoCache::~MPSAutoCache((v2 - 128));
  _Unwind_Resume(a1);
}

uint64_t MPSNDArraySDPAA14Behavior::EncodeQuantizedSDPA(uint64_t a1, MPSKernel *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = [*(a5 + 232) inputTensorAtIndex:0];
  v10 = *([*(a5 + 232) outputTensorAtIndex:0] + 8);
  if (v10 != 268435472 && v10 != 268435488)
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v12 = *(&a2->super.isa + *MEMORY[0x277CD7370]);
  v13 = *(&a2->super.isa + *MEMORY[0x277CD7350]);
  [(MPSKernel *)a2 layout];
  if (BaseTensor::GetDimensionSize(v9) >= 8)
  {
    MPSKernel_LogInfo(a2, v14, "A14 Encoder: Encoding 8x8 TEC based QuantizedSDPA kernel\n");
    result = EncodeQuantizedSDPATileBasedCommon(a3, a4, a5, v13, v12, a2, qword_239B1F400);
    if (!result)
    {
      return result;
    }

    MPSKernel_LogInfo(a2, v16, "A14 Encoder: Encoding failed, fall back to vector based QuantizedSDPA kernel\n");
  }

  MPSKernel_LogInfo(a2, v14, "Encoding vector based QuantizedSDPA kernel\n");

  return EncodeQuantizedSDPAVectorBased(a3, a4, a5, v13, v12, a2);
}

uint64_t EncodeSDPA(char *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v52 = *MEMORY[0x277D85DE8];
  v8 = objc_autoreleasePoolPush();
  v9 = a4[13];
  v49 = a4[12];
  v50 = v9;
  v51 = a4[14];
  v10 = a4[9];
  v45 = a4[8];
  v46 = v10;
  v11 = a4[11];
  v47 = a4[10];
  v48 = v11;
  v12 = a4[5];
  v41 = a4[4];
  v42 = v12;
  v13 = a4[7];
  v43 = a4[6];
  v44 = v13;
  v14 = a4[1];
  v37 = *a4;
  v38 = v14;
  v15 = a4[3];
  v39 = a4[2];
  v40 = v15;
  v16 = [*(&v51 + 1) inputTensorAtIndex:0];
  v17 = [*(&v51 + 1) inputTensorAtIndex:1];
  [a1 layout];
  BaseTensor::GetDimensionSize(v16);
  [a1 layout];
  BaseTensor::GetDimensionSize(v17);
  BaseTensor::GetDimensionSize(v16);
  v18 = [v38 count];
  if (![v38 count])
  {
LABEL_18:
    if (qword_27DF869A8 == -1)
    {
      if (_MergedGlobals_5)
      {
LABEL_21:
        if ([a1 layout] == 1 && v18 >= 5)
        {
          v24 = [v38 objectAtIndexedSubscript:4];
          v25 = *(v24 + *MEMORY[0x277CD73F0]);
          if (v25)
          {
            v26 = 0;
            v27 = (v24 + *MEMORY[0x277CD7410]);
            v29 = v27[2];
            v28 = v27[3];
            v31 = *v27;
            v30 = v27[1];
            v32 = *(v24 + *MEMORY[0x277CD73D8]);
            v33 = 1;
            do
            {
              v35 = v32;
              v36[0] = v31;
              v36[1] = v30;
              v36[2] = v29;
              v36[3] = v28;
              v33 *= *(v36 + (*(&v35 | v26++ & 0xF) & 0xF));
            }

            while (v25 != v26);
            if (v33 != 1 && MTLReportFailureTypeEnabled())
            {
              MTLReportFailure();
            }
          }
        }

        operator new();
      }
    }

    else
    {
      dispatch_once(&qword_27DF869A8, &__block_literal_global_4);
      if (_MergedGlobals_5)
      {
        goto LABEL_21;
      }
    }

    [a1 layout];
    goto LABEL_21;
  }

  v19 = [v38 objectAtIndexedSubscript:0];
  if (v19)
  {
    v20 = *(v19 + *MEMORY[0x277CD73D8]) != 0;
    if ([v38 count] < 2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v20 = 0;
    if ([v38 count] < 2)
    {
      goto LABEL_16;
    }
  }

  if (v20)
  {
    goto LABEL_16;
  }

  v22 = [v38 objectAtIndexedSubscript:1];
  if (v22)
  {
    v20 = *(v22 + *MEMORY[0x277CD73D8]) != 0;
    if ([v38 count] < 3)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v20 = 0;
    if ([v38 count] < 3)
    {
      goto LABEL_16;
    }
  }

  if (!v20)
  {
    v23 = [v38 objectAtIndexedSubscript:2];
    if (v23)
    {
      v20 = *(v23 + *MEMORY[0x277CD73D8]) != 0;
    }

    else
    {
      v20 = 0;
    }

    [v38 count];
  }

LABEL_16:
  if (!v20)
  {
    goto LABEL_18;
  }

  MPSKernel_LogInfo(a1, v21, "Fallback to multi-dispatch (2Gemm) encoding\n");
  EncodeSDPAFallback(a1, a2, a3, &v37);
  objc_autoreleasePoolPop(v8);
  return 0;
}

void MPSNDArraySDPADeviceBehavior::EncodeSDPA(uint64_t a1, MPSKernel *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = [*(a5 + 232) inputTensorAtIndex:0];
  if (*(v9 + 8) != *([*(a5 + 232) outputTensorAtIndex:0] + 8) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v10 = *(&a2->super.isa + *MEMORY[0x277CD7370]);
  v11 = *(&a2->super.isa + *MEMORY[0x277CD7350]);
  if ([(MPSKernel *)a2 kernelType])
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v13 = 0;
  }

  else
  {
    v13 = 2;
  }

  MPSKernel_LogInfo(a2, v12, "Default Encoder: Encoding vector based SDPA\n");

  EncodeSDPACommonNew(a3, a4, a5, v11, v10, a2, v13);
}

void EncodeSDPACommonNew(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, MPSKernel *a6, unsigned int a7)
{
  [(MPSKernel *)a6 alpha];
  [(MPSKernel *)a6 layout];
  MEMORY[0x23EE7C450](v10, a2, 0);
  [*(a3 + 232) graph];
  operator new();
}

void sub_239AC583C(_Unwind_Exception *a1)
{
  std::unordered_map<unsigned int,unsigned int>::~unordered_map[abi:ne200100](v2 - 176);
  if (v1)
  {
    operator delete(v1);
  }

  MPSAutoCache::~MPSAutoCache((v2 - 136));
  _Unwind_Resume(a1);
}

uint64_t MPSNDArraySDPADeviceBehavior::EncodeQuantizedSDPA(uint64_t a1, char *a2, void *a3, uint64_t a4, uint64_t a5)
{
  [*(a5 + 232) inputTensorAtIndex:0];
  v10 = *([*(a5 + 232) outputTensorAtIndex:0] + 8);
  if (v10 != 268435472 && v10 != 268435488)
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v12 = *&a2[*MEMORY[0x277CD7370]];
  v13 = *&a2[*MEMORY[0x277CD7350]];
  MPSKernel_LogInfo(a2, v9, "Encoding vector based QuantizedSDPA kernel\n");

  return EncodeQuantizedSDPAVectorBased(a3, a4, a5, v13, v12, a2);
}

uint64_t EncodeQuantizedSDPAVectorBased(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  v128 = *&a6[*MEMORY[0x277CD7378]];
  v122 = *&a6[*MEMORY[0x277CD7360]];
  v121 = *&a6[*MEMORY[0x277CD7368]];
  [a6 alpha];
  v10 = v9;
  context = a6;
  v131 = [a6 layout];
  MEMORY[0x23EE7C450](v251, a2, 0);
  [*(a3 + 232) graph];
  v137 = a3;
  if ([*(a3 + 16) count])
  {
    operator new();
  }

  v248 = 0u;
  v249 = 0u;
  v250 = 1065353216;
  if ((v128 & 1) == 0 && *(&v249 + 1))
  {
    v11 = 0;
    do
    {
      if (*(&v248 + 1))
      {
        v12 = vcnt_s8(*(&v248 + 8));
        v12.i16[0] = vaddlv_u8(v12);
        if (v12.u32[0] > 1uLL)
        {
          v13 = v11;
          if (*(&v248 + 1) <= v11)
          {
            v13 = v11 % DWORD2(v248);
          }
        }

        else
        {
          v13 = (DWORD2(v248) - 1) & v11;
        }

        v14 = *(v248 + 8 * v13);
        if (v14)
        {
          v15 = *v14;
          if (v15)
          {
            if (v12.u32[0] < 2uLL)
            {
              while (1)
              {
                v17 = v15[1];
                if (v17 == v11)
                {
                  if (*(v15 + 4) == v11)
                  {
                    goto LABEL_6;
                  }
                }

                else if ((v17 & (*(&v248 + 1) - 1)) != v13)
                {
                  goto LABEL_27;
                }

                v15 = *v15;
                if (!v15)
                {
                  goto LABEL_27;
                }
              }
            }

            do
            {
              v16 = v15[1];
              if (v16 == v11)
              {
                if (*(v15 + 4) == v11)
                {
                  goto LABEL_6;
                }
              }

              else
              {
                if (v16 >= *(&v248 + 1))
                {
                  v16 %= *(&v248 + 1);
                }

                if (v16 != v13)
                {
                  break;
                }
              }

              v15 = *v15;
            }

            while (v15);
          }
        }
      }

LABEL_27:
      if (MTLReportFailureTypeEnabled())
      {
        v112 = v11;
        MTLReportFailure();
      }

LABEL_6:
      ++v11;
    }

    while (v11 < *(&v249 + 1));
  }

  v18 = [*(a3 + 16) count];
  v19 = *(a3 + 16);
  LODWORD(v197) = 0;
  v202 = &v197;
  v134 = [v19 objectAtIndexedSubscript:{*(std::__hash_table<std::__hash_value_type<unsigned int, unsigned int>, std::__unordered_map_hasher<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::hash<unsigned int>, std::equal_to<unsigned int>, true>, std::__unordered_map_equal<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::equal_to<unsigned int>, std::hash<unsigned int>, true>, std::allocator<std::__hash_value_type<unsigned int, unsigned int>>>::__emplace_unique_key_args<unsigned int, std::piecewise_construct_t const&, std::tuple<unsigned int &&>, std::tuple<>>(&v248, 0, &v202) + 5)}];
  v20 = *(a3 + 16);
  LODWORD(v197) = 1;
  v202 = &v197;
  v21 = [v20 objectAtIndexedSubscript:{*(std::__hash_table<std::__hash_value_type<unsigned int, unsigned int>, std::__unordered_map_hasher<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::hash<unsigned int>, std::equal_to<unsigned int>, true>, std::__unordered_map_equal<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::equal_to<unsigned int>, std::hash<unsigned int>, true>, std::allocator<std::__hash_value_type<unsigned int, unsigned int>>>::__emplace_unique_key_args<unsigned int, std::piecewise_construct_t const&, std::tuple<unsigned int &&>, std::tuple<>>(&v248, 1u, &v202) + 5)}];
  v22 = *(a3 + 16);
  LODWORD(v197) = 2;
  v202 = &v197;
  v23 = [v22 objectAtIndexedSubscript:{*(std::__hash_table<std::__hash_value_type<unsigned int, unsigned int>, std::__unordered_map_hasher<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::hash<unsigned int>, std::equal_to<unsigned int>, true>, std::__unordered_map_equal<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::equal_to<unsigned int>, std::hash<unsigned int>, true>, std::allocator<std::__hash_value_type<unsigned int, unsigned int>>>::__emplace_unique_key_args<unsigned int, std::piecewise_construct_t const&, std::tuple<unsigned int &&>, std::tuple<>>(&v248, 2u, &v202) + 5)}];
  v24 = *(a3 + 16);
  LODWORD(v197) = 3;
  v202 = &v197;
  v127 = [v24 objectAtIndexedSubscript:{*(std::__hash_table<std::__hash_value_type<unsigned int, unsigned int>, std::__unordered_map_hasher<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::hash<unsigned int>, std::equal_to<unsigned int>, true>, std::__unordered_map_equal<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::equal_to<unsigned int>, std::hash<unsigned int>, true>, std::allocator<std::__hash_value_type<unsigned int, unsigned int>>>::__emplace_unique_key_args<unsigned int, std::piecewise_construct_t const&, std::tuple<unsigned int &&>, std::tuple<>>(&v248, 3u, &v202) + 5)}];
  v25 = 4;
  if (v18 == 7)
  {
    v26 = *(a3 + 16);
    LODWORD(v197) = 4;
    v202 = &v197;
    v27 = [v26 objectAtIndexedSubscript:{*(std::__hash_table<std::__hash_value_type<unsigned int, unsigned int>, std::__unordered_map_hasher<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::hash<unsigned int>, std::equal_to<unsigned int>, true>, std::__unordered_map_equal<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::equal_to<unsigned int>, std::hash<unsigned int>, true>, std::allocator<std::__hash_value_type<unsigned int, unsigned int>>>::__emplace_unique_key_args<unsigned int, std::piecewise_construct_t const&, std::tuple<unsigned int &&>, std::tuple<>>(&v248, 4u, &v202) + 5)}];
    v25 = 5;
  }

  else
  {
    v27 = 0;
  }

  v28 = *(v137 + 16);
  LODWORD(v197) = v25;
  v202 = &v197;
  v29 = [v28 objectAtIndexedSubscript:{*(std::__hash_table<std::__hash_value_type<unsigned int, unsigned int>, std::__unordered_map_hasher<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::hash<unsigned int>, std::equal_to<unsigned int>, true>, std::__unordered_map_equal<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::equal_to<unsigned int>, std::hash<unsigned int>, true>, std::allocator<std::__hash_value_type<unsigned int, unsigned int>>>::__emplace_unique_key_args<unsigned int, std::piecewise_construct_t const&, std::tuple<unsigned int &&>, std::tuple<>>(&v248, v25, &v202) + 5)}];
  v30 = v25 + 1;
  v31 = *(v137 + 16);
  LODWORD(v197) = v30;
  v202 = &v197;
  v32 = [v31 objectAtIndexedSubscript:{*(std::__hash_table<std::__hash_value_type<unsigned int, unsigned int>, std::__unordered_map_hasher<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::hash<unsigned int>, std::equal_to<unsigned int>, true>, std::__unordered_map_equal<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::equal_to<unsigned int>, std::hash<unsigned int>, true>, std::allocator<std::__hash_value_type<unsigned int, unsigned int>>>::__emplace_unique_key_args<unsigned int, std::piecewise_construct_t const&, std::tuple<unsigned int &&>, std::tuple<>>(&v248, v30, &v202) + 5)}];
  v33 = v18;
  v123 = *(v137 + 208);
  v120 = [*(v137 + 232) outputTensorAtIndex:0];
  if (v131 == 1)
  {
    v34 = 1;
  }

  else
  {
    v34 = 2;
  }

  v35 = *MEMORY[0x277CD7410];
  v36 = *(v134 + v35);
  v37 = *(v134 + v35 + 16);
  v38 = *(v134 + v35 + 32);
  v39 = *(v134 + v35 + 48);
  v40 = *MEMORY[0x277CD73D8];
  v41 = *(v134 + v40);
  v172[3] = v39;
  v172[2] = v38;
  v172[1] = v37;
  v172[0] = v36;
  v42 = *(v172 + (v41 & 0xF));
  if (v131 == 1)
  {
    v43 = 2;
  }

  else
  {
    v43 = 1;
  }

  v167 = v41;
  v171[3] = v39;
  v171[2] = v38;
  v171[1] = v37;
  v171[0] = v36;
  v135 = *(v171 + (*(&v167 | v43 & 0xF) & 0xF));
  v44 = (v21 + v35);
  v45 = *v44;
  v46 = v44[1];
  v47 = v44[2];
  v48 = v44[3];
  v168 = *(v21 + v40);
  v174[3] = v48;
  v174[2] = v47;
  v174[1] = v46;
  v174[0] = v45;
  v136 = *(v174 + (*(&v168 | v43 & 0xF) & 0xF));
  v119 = v34;
  v170[3] = v39;
  v170[2] = v38;
  v170[1] = v37;
  v170[0] = v36;
  v130 = *(v170 + (*(&v167 | v34 & 0xF) & 0xF));
  v173[3] = v48;
  v173[2] = v47;
  v173[1] = v46;
  v173[0] = v45;
  v49 = *(v173 + (*(&v168 | v34 & 0xF) & 0xF));
  v169[3] = v39;
  v169[2] = v38;
  v169[1] = v37;
  v169[0] = v36;
  v126 = *(v169 + (BYTE3(v41) & 0xF));
  v132 = *(a4 + 1482);
  if ((v128 & 1) == 0)
  {
    if (validateQuantizedSDPA(v134, v21, v23, v127, v27, v29, v32, v131))
    {
      v50 = -19;
      goto LABEL_109;
    }

    if (*(v134 + *MEMORY[0x277CD7428] + 8 * (*(v134 + *MEMORY[0x277CD73D8]) & 0xF)) != 1 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(v21 + *MEMORY[0x277CD7428] + 8 * (*(v21 + *MEMORY[0x277CD73D8]) & 0xF)) != 1 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(v23 + *MEMORY[0x277CD7428] + 8 * (*(v23 + *MEMORY[0x277CD73D8]) & 0xF)) != 1 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v202 = __PAIR64__(v42, v10);
  v209 = v126;
  v207 = v130;
  v208 = v130 / v49;
  v205 = v136;
  v206 = 256;
  v204 = v135;
  LODWORD(v192) = 0;
  *&v197 = &v192;
  v212 = *(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&v248, 0, &v197) + 20);
  LODWORD(v192) = 1;
  *&v197 = &v192;
  v213 = *(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&v248, 1u, &v197) + 20);
  LODWORD(v192) = 2;
  *&v197 = &v192;
  v214 = *(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&v248, 2u, &v197) + 20);
  LODWORD(v192) = 3;
  *&v197 = &v192;
  v215 = *(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&v248, 3u, &v197) + 20);
  LODWORD(v192) = 4;
  *&v197 = &v192;
  if (v33 == 7)
  {
    v216 = *(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&v248, 4u, &v197) + 20);
    LODWORD(v192) = 5;
    *&v197 = &v192;
    v217 = *(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&v248, 5u, &v197) + 20);
    LODWORD(v192) = 6;
    *&v197 = &v192;
    v51 = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&v248, 6u, &v197);
  }

  else
  {
    v217 = *(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&v248, 4u, &v197) + 20);
    LODWORD(v192) = 5;
    *&v197 = &v192;
    v51 = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&v248, 5u, &v197);
  }

  v218 = *(v51 + 20);
  v52 = *MEMORY[0x277CD7428];
  v53 = *MEMORY[0x277CD73D8];
  v157 = *(v134 + v53);
  v227 = *(v134 + v52 + 8 * (*(&v157 | v43 & 0xF) & 0xF));
  v158 = *(v134 + v53);
  v228 = *(v134 + v52 + 8 * (*(&v158 | v119 & 0xF) & 0xF));
  v229 = *(v134 + v52 + 8 * (*(v134 + v53 + 3) & 0xF));
  v159 = *(v21 + v53);
  v230 = *(v21 + v52 + 8 * (*(&v159 | v43 & 0xF) & 0xF));
  v160 = *(v21 + v53);
  v231 = *(v21 + v52 + 8 * (*(&v160 | v119 & 0xF) & 0xF));
  v232 = *(v21 + v52 + 8 * (*(v21 + v53 + 3) & 0xF));
  v233 = *(v127 + v52 + 8 * (*(v127 + v53) & 0xF));
  v161 = *(v127 + v53);
  v234 = *(v127 + v52 + 8 * (*(&v161 | v43 & 0xF) & 0xF));
  v162 = *(v127 + v53);
  v235 = *(v127 + v52 + 8 * (*(&v162 | v119 & 0xF) & 0xF));
  v236 = *(v127 + v52 + 8 * (*(v127 + v53 + 3) & 0xF));
  v163 = *(v23 + v53);
  v237 = *(v23 + v52 + 8 * (*(&v163 | v43 & 0xF) & 0xF));
  v164 = *(v23 + v53);
  v238 = *(v23 + v52 + 8 * (*(&v164 | v119 & 0xF) & 0xF));
  v239 = *(v23 + v52 + 8 * (*(v23 + v53 + 3) & 0xF));
  v165 = *&v123[v53];
  LODWORD(v240) = *&v123[8 * (*(&v165 | v43 & 0xF) & 0xF) + v52];
  v166 = *&v123[v53];
  DWORD1(v240) = *&v123[8 * (*(&v166 | v119 & 0xF) & 0xF) + v52];
  DWORD2(v240) = *&v123[8 * (v123[v53 + 3] & 0xF) + v52];
  v54 = *MEMORY[0x277CD7410];
  v55 = v29 + v53;
  if (v27)
  {
    v152 = *(v27 + v53);
    v244 = *(v27 + v54 + 4 * (*(&v152 | v119 & 0xF) & 0xF));
    v245 = *(v29 + v54 + 4 * (*(v55 + 3) & 0xF));
    v153 = *(v27 + v53);
    v247 = *(v27 + v54 + 4 * (*(&v153 | v43 & 0xF) & 0xF));
    v154 = *(v32 + v53);
    v246 = *(v32 + v54 + 4 * (*(&v154 | v43 & 0xF) & 0xF));
    v155 = *(v27 + v53);
    LODWORD(v219) = *(v27 + v52 + 8 * (*(&v155 | v43 & 0xF) & 0xF));
    v156 = *(v27 + v53);
    HIDWORD(v219) = *(v27 + v52 + 8 * (*(&v156 | v119 & 0xF) & 0xF));
    v56 = *(v27 + v52 + 8 * (*(v27 + v53 + 3) & 0xF));
  }

  else
  {
    LODWORD(v56) = 0;
    v150 = *(v29 + v53);
    v244 = *(v29 + v54 + 4 * (*(&v150 | v119 & 0xF) & 0xF));
    v245 = *(v29 + v54 + 4 * (*(v55 + 3) & 0xF));
    v247 = 0;
    v151 = *(v32 + v53);
    v246 = *(v32 + v54 + 4 * (*(&v151 | v43 & 0xF) & 0xF));
    v219 = 0;
  }

  v220 = v56;
  v144 = *(v29 + v53);
  v221 = *(v29 + v52 + 8 * (*(&v144 | v43 & 0xF) & 0xF));
  v145 = *(v29 + v53);
  v222 = *(v29 + v52 + 8 * (*(&v145 | v119 & 0xF) & 0xF));
  v223 = *(v29 + v52 + 8 * (*(v55 + 3) & 0xF));
  v59 = v32 + v52;
  v146 = *(v32 + v53);
  v224 = *(v59 + 8 * (*(&v146 | v43 & 0xF) & 0xF));
  v147 = *(v32 + v53);
  v225 = *(v59 + 8 * (*(&v147 | v119 & 0xF) & 0xF));
  v226 = *(v59 + 8 * (*(v32 + v53 + 3) & 0xF));
  v57 = v42 + 3;
  v58 = v57 & 0xFFFFFFFC;
  LODWORD(v59) = (v136 + 255) >> 8;
  v115 = v59;
  if (v136 <= 0x100)
  {
    v59 = 1;
  }

  else
  {
    v59 = v59;
  }

  v203 = v57 & 0xFFFFFFFC;
  v129 = v59;
  v211 = v59;
  v60 = (v127 + v54);
  v61 = *v60;
  v62 = v60[1];
  v63 = v60[2];
  v64 = v60[3];
  v148 = *(v127 + v53);
  v149[10] = v63;
  v149[11] = v64;
  v149[8] = v61;
  v149[9] = v62;
  v149[6] = v63;
  v149[7] = v64;
  v149[4] = v61;
  v149[5] = v62;
  v149[2] = v63;
  v149[3] = v64;
  v149[0] = v61;
  v149[1] = v62;
  if (*(v149 + (v148 & 0xF)) != 1)
  {
    v143[4] = v148;
    v143[5] = v61;
    v143[6] = v62;
    v143[7] = v63;
    v143[8] = v64;
  }

  v65 = v42;
  v66 = *(a4 + 1476);
  v117 = v65;
  v116 = v57;
  if ([context kernelType])
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v67 = 0;
  }

  else
  {
    v67 = 4;
  }

  *&v68 = -1;
  *(&v68 + 1) = -1;
  v201 = v68;
  v200 = v68;
  v199 = v68;
  v198 = 0xFFFFFFFFFFFFFFFFLL;
  v197 = v68;
  *&v201 = [*(v137 + 16) count] | ((*(v137 + 112) != 0) << 8) | 0x10000;
  *&v198 = 0;
  v69 = (&CommonKernels)[16 * v67];
  v113 = *(v137 + 232);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  [a1 setComputePipelineState:{PipelineStateForMPSKey, v113, v122, v121, 0, 0}];
  v71 = [PipelineStateForMPSKey maxTotalThreadsPerThreadgroup] / v132;
  v72 = (v136 + 7) >> 3;
  if (v72 >= v71)
  {
    v73 = v71;
  }

  else
  {
    v73 = (v136 + 7) >> 3;
  }

  v74 = (4 * v116) & 0x3FFFFFFF0;
  v75 = v74 + 32 + 4 * v73 * v58 + ((8 * v73 + 30) & 0x1FFFFFFE0);
  if ((v66 & 0x40) == 0)
  {
    v75 += (4 * v73 * v132 + 15) & 0x7FFFFFFF0;
  }

  v76 = v75 > 0x8000;
  v77 = v73 != 0;
  if (v73)
  {
    v78 = v76;
  }

  else
  {
    v78 = 0;
  }

  if (v78)
  {
    if (v72 < v71)
    {
      LODWORD(v71) = (v136 + 7) >> 3;
    }

    do
    {
      v73 = v71 - 1;
      v80 = v74 + 32 + 4 * ((v71 - 1) * v58) + ((8 * (v71 - 1) + 30) & 0xFFFFFFFE0);
      if ((v66 & 0x40) == 0)
      {
        v80 += (4 * v73 * v132 + 15) & 0x7FFFFFFF0;
      }

      v77 = v71 != 1;
      LODWORD(v71) = v71 - 1;
    }

    while (v80 > 0x8000 && v73 != 0);
  }

  if (!v77 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v81 = (v126 * v130);
  v82 = v81 * v135 * v129;
  v83 = v82 * v73;
  do
  {
    v84 = v73 - 1;
    if (v73 < 2)
    {
      break;
    }

    --v73;
    v85 = v83 > 8 * *(a4 + 1480);
    v83 -= v82;
  }

  while (v85);
  if (v84)
  {
    v86 = v78;
  }

  else
  {
    v86 = 1;
  }

  if (v86)
  {
    v87 = v84 + 1;
  }

  else
  {
    v87 = (v84 + 2) & 0xFFFFFFFE;
  }

  v210 = v87;
  v88 = [(__CFString *)v69 UTF8String];
  v89 = v87 * v132;
  MPSKernel_LogInfo(context, v90, "QuantizedSDPA: kernel %s is encoded, threadsPerGroup: (%lu, %lu, %lu), threadGroups: (%lu, %lu, %lu)\n", v88, v89, 1, 1, v135, v129, v81);
  MPSSetNDArraysOnComputeEncoder(a1, v137, 4, 0, 0);
  contexta = objc_autoreleasePoolPush();
  [a1 setThreadgroupMemoryLength:32 atIndex:0];
  [a1 setThreadgroupMemoryLength:v74 atIndex:1];
  [a1 setThreadgroupMemoryLength:4 * v87 * v58 atIndex:2];
  v91 = 4 * v87 + 15;
  [a1 setThreadgroupMemoryLength:v91 & 0x7FFFFFFF0 atIndex:3];
  [a1 setThreadgroupMemoryLength:v91 & 0x7FFFFFFF0 atIndex:4];
  if ((v66 & 0x40) == 0)
  {
    [a1 setThreadgroupMemoryLength:(4 * v89 + 15) & 0x7FFFFFFF0 atIndex:5];
  }

  if (v136 < 0x101)
  {
    v93 = 0;
    TempBuffer = 0;
  }

  else
  {
    TempBuffer = MPSAutoCache::GetTempBuffer(v251, 4 * v117 * v135 * v130 * v126 * v129, 0);
    v93 = MPSAutoCache::GetTempBuffer(v251, 4 * v117 * v135 * v130 * v126 * v129, 0);
    HIDWORD(v240) = v117;
    LODWORD(v241) = v115 * v117;
    DWORD1(v241) = v115 * v117 * v135;
    DWORD2(v241) = DWORD1(v241) * v130;
    HIDWORD(v241) = 1;
    LODWORD(v242) = (v136 + 255) >> 8;
    HIDWORD(v242) = v115 * v135;
    v243 = v115 * v135 * v130;
    [a1 setBuffer:TempBuffer offset:0 atIndex:27];
    [a1 setBuffer:v93 offset:0 atIndex:26];
  }

  objc_msgSend_setBytes_length_atIndex_(a1);
  [a1 setBuffer:objc_msgSend(v123 offset:"buffer") atIndex:{0, 28}];
  [a1 setBuffer:0 offset:0 atIndex:25];
  *&v192 = v135;
  *(&v192 + 1) = v129;
  *&v193 = (v126 * v130);
  v188 = v89;
  *v189 = vdupq_n_s64(1uLL);
  [a1 dispatchThreadgroups:&v192 threadsPerThreadgroup:&v188];
  if (v136 >= 0x101)
  {
    *&v94 = -1;
    *(&v94 + 1) = -1;
    v196 = v94;
    v195 = v94;
    v194 = v94;
    v193 = 0xFFFFFFFFFFFFFFFFLL;
    v192 = v94;
    *&v196 = [*(v137 + 16) count] | ((*(v137 + 112) != 0) << 8) | 0x10000;
    v188 = __PAIR64__(v117, v130);
    *&v189[1] = v240;
    *&v189[5] = v241;
    v190 = v242;
    v189[0] = (v136 + 255) >> 8;
    v191 = v243;
    v95 = *(a4 + 1480);
    v96 = v117 / BYTE2(v95);
    if (v96 >= 8)
    {
      v97 = 8;
    }

    else
    {
      v97 = v117 / BYTE2(v95);
    }

    if (v97 <= 1)
    {
      v97 = 1;
    }

    v187 = 0;
    v98 = MEMORY[0x277CD73C8];
    v99 = *(v120 + 8);
    v178[0] = *(v134 + *MEMORY[0x277CD73C8]);
    v178[1] = v99;
    v178[2] = v97;
    v178[3] = 1;
    v101 = v117 <= ((v95 >> 13) & 0x7F8) && v117 == v96 * BYTE2(v95);
    v179 = v101;
    v180 = 0;
    v181 = (v66 & 0x40) >> 6;
    v182 = v132 == 64;
    v102 = (v127 + *MEMORY[0x277CD7410]);
    v103 = *v102;
    v104 = v102[1];
    v105 = v102[3];
    v106 = *(v127 + *MEMORY[0x277CD73D8]);
    v140 = v102[2];
    v141 = v105;
    v139[0] = v103;
    v139[1] = v104;
    v183 = *(v139 + (v106 & 0xF)) != 1;
    v184 = 0;
    v138 = v106;
    v142[2] = v140;
    v142[3] = v105;
    v142[0] = v103;
    v142[1] = v104;
    LODWORD(v102) = *(v142 + (*(&v138 | v119 & 0xF) & 0xF));
    v143[2] = v140;
    v143[3] = v105;
    v143[0] = v103;
    v143[1] = v104;
    v185 = v102 * *(v143 + (BYTE3(v106) & 0xF)) != 1;
    v186 = 0;
    LOBYTE(v187) = v131 == 1;
    *&v193 = MPSNDArraySDPACreateUserConstant(v178);
    v114 = *(v137 + 232);
    MPSLibrary::CreateUberShaderKey();
    v107 = MPSLibrary::GetPipelineStateForMPSKey();
    if (!v107)
    {
      v50 = -1;
      goto LABEL_108;
    }

    [a1 setComputePipelineState:{v107, v114, v122, v121, 0, 0}];
    MPSSetNDArraysOnComputeEncoder(a1, v137, 4, 0, 0);
    objc_msgSend_setBytes_length_atIndex_(a1);
    [a1 setBuffer:TempBuffer offset:0 atIndex:27];
    [a1 setBuffer:v93 offset:0 atIndex:26];
    [a1 setThreadgroupMemoryLength:((*(v134 + *v98) >> 3) * v189[0] + 15) & 0x3FFFFFFFFFF0 atIndex:0];
    [a1 setBuffer:0 offset:0 atIndex:25];
    v177[0] = v135;
    v177[1] = v129;
    v177[2] = (v126 * v130);
    v175 = v132;
    v176 = vdupq_n_s64(1uLL);
    [a1 dispatchThreadgroups:v177 threadsPerThreadgroup:&v175];
    MPSLibrary::ReleaseMPSKey();
    MPSLibrary::ReleaseComputeState();
  }

  MPSLibrary::ReleaseMPSKey();
  MPSLibrary::ReleaseComputeState();
  v50 = 0;
LABEL_108:
  objc_autoreleasePoolPop(contexta);
LABEL_109:
  v108 = v249;
  if (v249)
  {
    do
    {
      v109 = *v108;
      operator delete(v108);
      v108 = v109;
    }

    while (v109);
  }

  v110 = v248;
  *&v248 = 0;
  if (v110)
  {
    operator delete(v110);
  }

  MPSAutoCache::~MPSAutoCache(v251);
  return v50;
}

void sub_239AC72A4(_Unwind_Exception *a1)
{
  std::unordered_map<unsigned int,unsigned int>::~unordered_map[abi:ne200100](v2 - 176);
  if (v1)
  {
    operator delete(v1);
  }

  MPSAutoCache::~MPSAutoCache((v2 - 136));
  _Unwind_Resume(a1);
}

void EncodeQuantizedSDPA(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  v6 = a4[12];
  v7 = a4[13];
  v8 = a4[10];
  v27 = a4[11];
  v28 = v6;
  v9 = a4[14];
  v29 = v7;
  v30 = v9;
  v10 = a4[8];
  v11 = a4[9];
  v12 = a4[6];
  v23 = a4[7];
  v24 = v10;
  v25 = v11;
  v26 = v8;
  v13 = a4[5];
  v20 = a4[4];
  v21 = v13;
  v22 = v12;
  v14 = a4[1];
  v16 = *a4;
  v17 = v14;
  v15 = a4[3];
  v18 = a4[2];
  v19 = v15;
  operator new();
}

__n128 MPSNDArraySDPADeviceBehavior::getThreads@<Q0>(MPSNDArraySDPADeviceBehavior *this@<X0>, __n128 *a2@<X8>)
{
  result = *(this + 8);
  *a2 = result;
  a2[1].n128_u64[0] = *(this + 3);
  return result;
}

char *___ZL22MPSSDPAForceMatrixUnitv_block_invoke()
{
  result = getenv("MPSNDARRAY_SDPA_FORCE_MXU");
  if (result)
  {
    __endptr = result;
    v1 = result;
    result = strtol(result, &__endptr, 0);
    if (__endptr != v1)
    {
      _MergedGlobals_5 = result != 0;
    }
  }

  return result;
}

uint64_t validateSDPA(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (a5 == 1)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  v6 = MEMORY[0x277CD7410];
  v7 = *MEMORY[0x277CD7410];
  v8 = *(result + v7);
  v9 = *(result + v7 + 16);
  v10 = *(result + v7 + 32);
  v11 = *(result + v7 + 48);
  v12 = MEMORY[0x277CD73D8];
  v13 = *MEMORY[0x277CD73D8];
  v14 = *(result + v13);
  v85[2] = v10;
  v85[3] = v11;
  v85[0] = v8;
  v85[1] = v9;
  v15 = *(v85 + (v14 & 0xF));
  if (a5 == 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = 2;
  }

  v17 = *(a2 + v7);
  v18 = *(a2 + v7 + 16);
  v19 = *(a2 + v7 + 32);
  v20 = *(a2 + v7 + 48);
  v82 = *(a2 + v13);
  v87[2] = v19;
  v87[3] = v20;
  v87[0] = v17;
  v87[1] = v18;
  v21 = *(v87 + (*(&v82 | v5 & 0xF) & 0xF));
  v81 = v14;
  v84[2] = v10;
  v84[3] = v11;
  v84[0] = v8;
  v84[1] = v9;
  v22 = *(v84 + (*(&v81 | v16 & 0xF) & 0xF));
  v83[2] = v10;
  v83[3] = v11;
  v83[0] = v8;
  v83[1] = v9;
  v23 = *(v83 + (BYTE3(v14) & 0xF));
  v86[2] = v19;
  v86[3] = v20;
  v86[0] = v17;
  v86[1] = v18;
  if (*(v86 + (v82 & 0xF)) != v15)
  {
    v72 = a4;
    v75 = result;
    v36 = a3;
    v37 = a2;
    v38 = MTLReportFailureTypeEnabled();
    a2 = v37;
    a3 = v36;
    v39 = v38;
    a4 = v72;
    result = v75;
    if (v39)
    {
      MTLReportFailure();
      a2 = v37;
      a3 = v36;
      a4 = v72;
      result = v75;
    }
  }

  if (v22 % *(a2 + *v6 + 4 * (*(a2 + *v12 + v16) & 0xF)))
  {
    v73 = a4;
    v76 = result;
    v40 = a3;
    v41 = a2;
    v42 = MTLReportFailureTypeEnabled();
    a2 = v41;
    a3 = v40;
    v43 = v42;
    a4 = v73;
    result = v76;
    if (v43)
    {
      MTLReportFailure();
      a2 = v41;
      a3 = v40;
      a4 = v73;
      result = v76;
    }
  }

  if (*(a2 + *v6 + 4 * (*(a2 + *v12 + 3) & 0xF)) != v23)
  {
    v74 = a4;
    v77 = result;
    v44 = a3;
    v45 = a2;
    v46 = MTLReportFailureTypeEnabled();
    a2 = v45;
    a3 = v44;
    v47 = v46;
    a4 = v74;
    result = v77;
    if (v47)
    {
      MTLReportFailure();
      a2 = v45;
      a3 = v44;
      a4 = v74;
      result = v77;
    }
  }

  if (*(a3 + *v6 + 4 * (*(a3 + *v12) & 0xF)) != v15)
  {
    v78 = result;
    v48 = a4;
    v49 = a3;
    v50 = a2;
    v51 = MTLReportFailureTypeEnabled();
    a2 = v50;
    a3 = v49;
    a4 = v48;
    v52 = v51;
    result = v78;
    if (v52)
    {
      MTLReportFailure();
      a2 = v50;
      a3 = v49;
      result = v78;
      a4 = v48;
    }
  }

  if (*(a3 + *v6 + 4 * (*(a3 + *v12 + v5) & 0xF)) != v21)
  {
    v79 = result;
    v53 = a4;
    v54 = a3;
    v55 = a2;
    v56 = MTLReportFailureTypeEnabled();
    a2 = v55;
    a3 = v54;
    a4 = v53;
    v57 = v56;
    result = v79;
    if (v57)
    {
      MTLReportFailure();
      a2 = v55;
      a3 = v54;
      result = v79;
      a4 = v53;
    }
  }

  if (v22 % *(a3 + *v6 + 4 * (*(a3 + *v12 + v16) & 0xF)))
  {
    v80 = result;
    v58 = a4;
    v59 = a3;
    v60 = a2;
    v61 = MTLReportFailureTypeEnabled();
    a2 = v60;
    a3 = v59;
    a4 = v58;
    v62 = v61;
    result = v80;
    if (v62)
    {
      MTLReportFailure();
      a2 = v60;
      a3 = v59;
      result = v80;
      a4 = v58;
    }
  }

  if (*(a3 + *v6 + 4 * (*(a3 + *v12 + v16) & 0xF)) != *(a2 + *v6 + 4 * (*(a2 + *v12 + v16) & 0xF)))
  {
    v63 = result;
    v64 = a4;
    v65 = a3;
    v66 = MTLReportFailureTypeEnabled();
    a3 = v65;
    a4 = v64;
    v67 = v66;
    result = v63;
    if (v67)
    {
      MTLReportFailure();
      a3 = v65;
      result = v63;
      a4 = v64;
    }
  }

  if (*(a3 + *v6 + 4 * (*(a3 + *v12 + 3) & 0xF)) != v23)
  {
    v68 = result;
    v69 = a4;
    v70 = MTLReportFailureTypeEnabled();
    a4 = v69;
    v71 = v70;
    result = v68;
    if (v71)
    {
      MTLReportFailure();
      result = v68;
      a4 = v69;
    }
  }

  v24 = *(a4 + *v6 + 4 * (*(a4 + *v12) & 0xF));
  if (v24 != v21 && v24 != 1)
  {
    v30 = result;
    v31 = a4;
    v32 = MTLReportFailureTypeEnabled();
    a4 = v31;
    v33 = v32;
    result = v30;
    if (v33)
    {
      MTLReportFailure();
      result = v30;
      a4 = v31;
    }
  }

  v25 = *v6;
  v26 = *v12;
  v27 = *(a4 + v25 + 4 * (*(a4 + v26 + v5) & 0xF));
  if (v27 != 1 && v27 != *(result + v25 + 4 * (*(result + v26 + v5) & 0xF)))
  {
    v34 = a4;
    result = MTLReportFailureTypeEnabled();
    a4 = v34;
    if (result)
    {
      result = MTLReportFailure();
      a4 = v34;
    }
  }

  v28 = *(a4 + *v6 + 4 * (*(a4 + *v12 + v16) & 0xF));
  if (v28 != v22 && v28 != 1)
  {
    v35 = a4;
    result = MTLReportFailureTypeEnabled();
    a4 = v35;
    if (result)
    {
      result = MTLReportFailure();
      a4 = v35;
    }
  }

  v29 = *(a4 + *v6 + 4 * (*(a4 + *v12 + 3) & 0xF));
  if (v29 != v23 && v29 != 1)
  {
    result = MTLReportFailureTypeEnabled();
    if (result)
    {

      return MTLReportFailure();
    }
  }

  return result;
}

uint64_t MPSNDArraySDPAFunctionConstructor(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v7 = MPSCreateFunctionConstantValues();
  [v7 setConstantValue:a2 + 8 type:85 atIndex:115];
  v8 = *a3;
  v9 = *(a3 + 1);
  v10.i64[0] = -1;
  v10.i64[1] = -1;
  v11 = vceqq_s64(v9, v10);
  if (*a3 != -1 || ((v12 = vaddvq_s32(vbicq_s8(xmmword_239B06050, vuzp1q_s32(vceqq_s64(*(a3 + 3), v10), vceqq_s64(*(a3 + 4), v10)))) & 0xF, (~vaddvq_s32(vandq_s8(vuzp1q_s32(v11, vceqq_s64(*(a3 + 3), v10)), xmmword_239B06050)) & 0xF) == 0) ? (v13 = v12 == 0) : (v13 = 0), v13 ? (v14 = a3[5] == -1) : (v14 = 0), !v14))
  {
    if ((vuzp1_s16(vmovn_s64(v11), *v9.i8).u8[0] & 1) == 0)
    {
      v17 = *(a3 + 1);
      [v7 setConstantValue:&v17 type:33 atIndex:126];
      v8 = *a3;
    }

    if (v8 != -1)
    {
      v17 = v8;
      [v7 setConstantValue:&v17 type:33 atIndex:125];
    }

    if (a3[2] != -1)
    {
      v17 = a3[2];
      [v7 setConstantValue:&v17 type:33 atIndex:124];
    }

    if (a3[3] != -1)
    {
      v17 = a3[3];
      [v7 setConstantValue:&v17 type:33 atIndex:123];
    }

    if (a3[4] != -1)
    {
      v17 = a3[4];
      [v7 setConstantValue:&v17 type:33 atIndex:119];
    }

    if (a3[5] != -1)
    {
      v17 = a3[5];
      [v7 setConstantValue:&v17 type:33 atIndex:118];
    }

    if (a3[8] != -1)
    {
      v17 = a3[8];
      [v7 setConstantValue:&v17 type:33 atIndex:122];
    }

    if (a3[9] != -1)
    {
      v17 = a3[9];
      [v7 setConstantValue:&v17 type:33 atIndex:121];
    }

    if (a3[6] != -1)
    {
      v17 = a3[6];
      [v7 setConstantValue:&v17 type:33 atIndex:117];
    }

    if (a3[7] != -1)
    {
      v17 = a3[7];
      [v7 setConstantValue:&v17 type:33 atIndex:116];
    }
  }

  v15 = _MPSNewSpecializedFunction();

  return v15;
}

uint64_t std::unordered_map<unsigned int,unsigned int>::~unordered_map[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
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

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int a2, _DWORD **a3)
{
  v3 = a1[1];
  if (!v3)
  {
    goto LABEL_22;
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
LABEL_22:
    operator new();
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v8 = v7[1];
      if (v8 == a2)
      {
        if (*(v7 + 4) == a2)
        {
          return v7;
        }
      }

      else if ((v8 & (v3 - 1)) != v5)
      {
        goto LABEL_22;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v9 = v7[1];
    if (v9 == a2)
    {
      break;
    }

    if (v9 >= v3)
    {
      v9 %= v3;
    }

    if (v9 != v5)
    {
      goto LABEL_22;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_22;
    }
  }

  if (*(v7 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(void *a1, unsigned int a2, _DWORD **a3)
{
  v3 = a1[1];
  if (!v3)
  {
    goto LABEL_22;
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
LABEL_22:
    operator new();
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v8 = v7[1];
      if (v8 == a2)
      {
        if (*(v7 + 4) == a2)
        {
          return v7;
        }
      }

      else if ((v8 & (v3 - 1)) != v5)
      {
        goto LABEL_22;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v9 = v7[1];
    if (v9 == a2)
    {
      break;
    }

    if (v9 >= v3)
    {
      v9 %= v3;
    }

    if (v9 != v5)
    {
      goto LABEL_22;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_22;
    }
  }

  if (*(v7 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v7;
}

char *___ZL16MPSSDPASimdTileHv_block_invoke()
{
  result = getenv("MPSNDARRAY_SDPA_SIMD_TILE_H");
  if (result)
  {
    __endptr = result;
    v1 = result;
    result = strtol(result, &__endptr, 0);
    if (__endptr != v1)
    {
      dword_27DF8699C = result;
    }
  }

  return result;
}

char *___ZL16MPSSDPASimdTileWv_block_invoke()
{
  result = getenv("MPSNDARRAY_SDPA_SIMD_TILE_W");
  if (result)
  {
    __endptr = result;
    v1 = result;
    result = strtol(result, &__endptr, 0);
    if (__endptr != v1)
    {
      dword_27DF869A0 = result;
    }
  }

  return result;
}

char *___ZL14MPSSDPATGTileHv_block_invoke()
{
  result = getenv("MPSNDARRAY_SDPA_TG_TILE_H");
  if (result)
  {
    __endptr = result;
    v1 = result;
    result = strtol(result, &__endptr, 0);
    if (__endptr != v1)
    {
      dword_27DF869A4 = result;
    }
  }

  return result;
}

char *___ZL21MPSSDPAElasticBarrierv_block_invoke()
{
  result = getenv("MPSNDARRAY_SDPA_ElasticBarrier");
  if (result)
  {
    __endptr = result;
    result = strtol(result, &__endptr, 0);
    MPSSDPAElasticBarrier(void)::result = result;
  }

  return result;
}

uint64_t validateQuantizedSDPA(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  if (a8 == 1)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  if (a8 == 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  v26 = v9;
  v27 = v8;
  v25[0] = &v26;
  v25[1] = &v27;
  v10 = -2;
  if (a6 && a7)
  {
    v11 = *MEMORY[0x277CD73C8];
    v12 = *(a6 + v11);
    if (v12 == *(a7 + v11))
    {
      if (!a5)
      {
        v13 = a7;
        v14 = a3;
        v15 = a4;
        v16 = a8;
        v18 = a1;
        v20 = *(a1 + v11);
        if (v20 == 268435472 || v20 == 268435488)
        {
          goto LABEL_20;
        }

        v17 = a2;
        v19 = a6;
        v24 = MTLReportFailureTypeEnabled();
        a6 = v19;
        a2 = v17;
        if (!v24)
        {
          goto LABEL_20;
        }

        MTLReportFailure();
LABEL_13:
        a6 = v19;
        a2 = v17;
LABEL_20:
        v22 = a2;
        validateQuantizedSDPA(MPSNDArray *,MPSNDArray *,MPSNDArray *,MPSNDArray *,MPSNDArray *,MPSNDArray *,MPSNDArray *,MPSNDArraySDPALayout)::$_0::operator()(v25, a2, a6);
        validateQuantizedSDPA(MPSNDArray *,MPSNDArray *,MPSNDArray *,MPSNDArray *,MPSNDArray *,MPSNDArray *,MPSNDArray *,MPSNDArraySDPALayout)::$_0::operator()(v25, v14, v13);
        validateSDPA(v18, v22, v14, v15, v16);
        return 0;
      }

      if (*(a5 + v11) == v12)
      {
        v13 = a7;
        v14 = a3;
        v15 = a4;
        v16 = a8;
        v17 = a2;
        v18 = a1;
        v19 = a6;
        validateQuantizedSDPA(MPSNDArray *,MPSNDArray *,MPSNDArray *,MPSNDArray *,MPSNDArray *,MPSNDArray *,MPSNDArray *,MPSNDArraySDPALayout)::$_0::operator()(v25, a1, a5);
        goto LABEL_13;
      }
    }

    return -2;
  }

  return v10;
}

int **validateQuantizedSDPA(MPSNDArray *,MPSNDArray *,MPSNDArray *,MPSNDArray *,MPSNDArray *,MPSNDArray *,MPSNDArray *,MPSNDArraySDPALayout)::$_0::operator()(int **result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = MEMORY[0x277CD73C8];
  if (*(a2 + *MEMORY[0x277CD73C8]) != 536870920)
  {
    result = MTLReportFailureTypeEnabled();
    if (result)
    {
      result = MTLReportFailure();
    }
  }

  v7 = *(a3 + *v6);
  if (v7 != 268435472 && v7 != 268435488)
  {
    result = MTLReportFailureTypeEnabled();
    if (result)
    {
      result = MTLReportFailure();
    }
  }

  v9 = MEMORY[0x277CD7410];
  v10 = MEMORY[0x277CD73D8];
  if (*(a3 + *MEMORY[0x277CD7410] + 4 * (*(a3 + *MEMORY[0x277CD73D8]) & 0xF)) != 1)
  {
    result = MTLReportFailureTypeEnabled();
    if (result)
    {
      result = MTLReportFailure();
    }
  }

  v11 = *v9;
  v12 = *v10;
  v13 = **v5;
  v25 = *(a3 + v12);
  v14 = *(a3 + v11 + 4 * (*(&v25 | v13 & 0xF) & 0xF));
  if (v14 != 1)
  {
    v24 = *(a2 + v12);
    if (v14 != *(a2 + v11 + 4 * (*(&v24 | v13 & 0xF) & 0xF)))
    {
      result = MTLReportFailureTypeEnabled();
      if (result)
      {
        result = MTLReportFailure();
      }
    }
  }

  v15 = *v9;
  v16 = *v10;
  v17 = *v5[1];
  v23 = *(a3 + v16);
  v18 = *(a3 + v15 + 4 * (*(&v23 | v17 & 0xF) & 0xF));
  if (v18 != 1)
  {
    v22 = *(a2 + v16);
    if (v18 != *(a2 + v15 + 4 * (*(&v22 | v17 & 0xF) & 0xF)))
    {
      result = MTLReportFailureTypeEnabled();
      if (result)
      {
        result = MTLReportFailure();
      }
    }
  }

  v19 = *v9;
  v20 = *v10;
  v21 = *(a3 + v19 + 4 * (*(a3 + v20 + 3) & 0xF));
  if (v21 != 1 && v21 != *(a2 + v19 + 4 * (*(a2 + v20 + 3) & 0xF)))
  {
    result = MTLReportFailureTypeEnabled();
    if (result)
    {

      return MTLReportFailure();
    }
  }

  return result;
}

void EncodeSDPAFallback(char *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v177 = a2;
  v197 = *MEMORY[0x277D85DE8];
  [a1 layout];
  if ([a1 layout] && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v7 = *&a1[*MEMORY[0x277CD7378]];
  [a1 alpha];
  [a1 layout];
  v8 = [*(a4 + 16) count];
  MEMORY[0x23EE7C450](v189, a3, 0);
  v9 = [*(a4 + 232) graph];
  v10 = [*(a4 + 16) count];
  v178 = v7;
  v175 = v8;
  v176 = a4;
  v179 = a1;
  v172 = a3;
  if (v10)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = v12;
      v14 = (v12 >> 2) + 1;
      if (v14 >> 62)
      {
        std::vector<long>::__throw_length_error[abi:ne200100]();
      }

      if (v12 >> 2 != -1)
      {
        if (!(v14 >> 62))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v15 = (4 * (v12 >> 2));
      *v15 = v11;
      v12 = (v15 + 1);
      memcpy(0, 0, v13);
      v16 = 0;
      ++v11;
    }

    while (v10 != v11);
  }

  else
  {
    v12 = 0;
    v16 = 0;
  }

  v186 = 0u;
  v187 = 0u;
  v188 = 1065353216;
  v17 = *(v9 + 8);
  v18 = *v17;
  v19 = v17[1];
  v20 = *v17 == v19 || v12 == 0;
  v180 = 0;
  if (!v20)
  {
    v21 = 0;
    while (1)
    {
      LODWORD(v181) = *v16;
      v22 = *v18;
      if (v22 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v9) + 32))
      {
        v194 = &v181;
        *(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(&v186, v181, &v194) + 5) = v21;
      }

      if (++v16 == v12)
      {
        ++v21;
        ++v18;
        v16 = v180;
        if (v18 == v19)
        {
          break;
        }
      }
    }
  }

  if ((v178 & 1) == 0 && v10)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*(&v186 + 1))
      {
        v24 = vcnt_s8(*(&v186 + 8));
        v24.i16[0] = vaddlv_u8(v24);
        if (v24.u32[0] > 1uLL)
        {
          v25 = i;
          if (*(&v186 + 1) <= i)
          {
            v25 = i % DWORD2(v186);
          }
        }

        else
        {
          v25 = (*(&v186 + 1) + 0xFFFFFFFFLL) & i;
        }

        v26 = *(v186 + 8 * v25);
        if (v26)
        {
          v27 = *v26;
          if (v27)
          {
            if (v24.u32[0] < 2uLL)
            {
              while (1)
              {
                v29 = v27[1];
                if (v29 == i)
                {
                  if (i == *(v27 + 4))
                  {
                    goto LABEL_23;
                  }
                }

                else if ((v29 & (*(&v186 + 1) - 1)) != v25)
                {
                  goto LABEL_44;
                }

                v27 = *v27;
                if (!v27)
                {
                  goto LABEL_44;
                }
              }
            }

            do
            {
              v28 = v27[1];
              if (v28 == i)
              {
                if (i == *(v27 + 4))
                {
                  goto LABEL_23;
                }
              }

              else
              {
                if (v28 >= *(&v186 + 1))
                {
                  v28 %= *(&v186 + 1);
                }

                if (v28 != v25)
                {
                  break;
                }
              }

              v27 = *v27;
            }

            while (v27);
          }
        }
      }

LABEL_44:
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

LABEL_23:
      ;
    }
  }

  v30 = v176;
  v31 = *(v176 + 16);
  LODWORD(v181) = 0;
  v194 = &v181;
  v32 = [v31 objectAtIndexedSubscript:{*(std::__hash_table<std::__hash_value_type<unsigned int, unsigned int>, std::__unordered_map_hasher<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::hash<unsigned int>, std::equal_to<unsigned int>, true>, std::__unordered_map_equal<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::equal_to<unsigned int>, std::hash<unsigned int>, true>, std::allocator<std::__hash_value_type<unsigned int, unsigned int>>>::__emplace_unique_key_args<unsigned int, std::piecewise_construct_t const&, std::tuple<unsigned int &&>, std::tuple<>>(&v186, 0, &v194) + 5)}];
  v33 = *(v176 + 16);
  LODWORD(v181) = 1;
  v194 = &v181;
  v34 = [v33 objectAtIndexedSubscript:{*(std::__hash_table<std::__hash_value_type<unsigned int, unsigned int>, std::__unordered_map_hasher<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::hash<unsigned int>, std::equal_to<unsigned int>, true>, std::__unordered_map_equal<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::equal_to<unsigned int>, std::hash<unsigned int>, true>, std::allocator<std::__hash_value_type<unsigned int, unsigned int>>>::__emplace_unique_key_args<unsigned int, std::piecewise_construct_t const&, std::tuple<unsigned int &&>, std::tuple<>>(&v186, 1u, &v194) + 5)}];
  v178 = v32;
  v35 = *(v176 + 16);
  LODWORD(v181) = 2;
  v194 = &v181;
  v36 = [v35 objectAtIndexedSubscript:{*(std::__hash_table<std::__hash_value_type<unsigned int, unsigned int>, std::__unordered_map_hasher<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::hash<unsigned int>, std::equal_to<unsigned int>, true>, std::__unordered_map_equal<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::equal_to<unsigned int>, std::hash<unsigned int>, true>, std::allocator<std::__hash_value_type<unsigned int, unsigned int>>>::__emplace_unique_key_args<unsigned int, std::piecewise_construct_t const&, std::tuple<unsigned int &&>, std::tuple<>>(&v186, 2u, &v194) + 5)}];
  v37 = *(v176 + 16);
  LODWORD(v181) = 3;
  v194 = &v181;
  v38 = [v37 objectAtIndexedSubscript:{*(std::__hash_table<std::__hash_value_type<unsigned int, unsigned int>, std::__unordered_map_hasher<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::hash<unsigned int>, std::equal_to<unsigned int>, true>, std::__unordered_map_equal<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::equal_to<unsigned int>, std::hash<unsigned int>, true>, std::allocator<std::__hash_value_type<unsigned int, unsigned int>>>::__emplace_unique_key_args<unsigned int, std::piecewise_construct_t const&, std::tuple<unsigned int &&>, std::tuple<>>(&v186, 3u, &v194) + 5)}];
  if (v175 < 5)
  {
    v40 = 0;
    v41 = *(v176 + 208);
    v42 = MEMORY[0x277CD73E0];
    v43 = v178;
    if (!v178)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v39 = *(v176 + 16);
    LODWORD(v181) = 4;
    v194 = &v181;
    v40 = [v39 objectAtIndexedSubscript:{*(std::__hash_table<std::__hash_value_type<unsigned int, unsigned int>, std::__unordered_map_hasher<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::hash<unsigned int>, std::equal_to<unsigned int>, true>, std::__unordered_map_equal<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::equal_to<unsigned int>, std::hash<unsigned int>, true>, std::allocator<std::__hash_value_type<unsigned int, unsigned int>>>::__emplace_unique_key_args<unsigned int, std::piecewise_construct_t const&, std::tuple<unsigned int &&>, std::tuple<>>(&v186, 4u, &v194) + 5)}];
    v41 = *(v176 + 208);
    v42 = MEMORY[0x277CD73E0];
    v43 = v178;
    if (!v178)
    {
      goto LABEL_52;
    }
  }

  if (v43[*v42] == 1)
  {
    ++*&v43[*MEMORY[0x277CD7498]];
  }

LABEL_52:
  if (v34 && v34[*v42] == 1)
  {
    ++*&v34[*MEMORY[0x277CD7498]];
  }

  if (v36 && v36[*v42] == 1)
  {
    ++*&v36[*MEMORY[0x277CD7498]];
  }

  if (v38 && v38[*v42] == 1)
  {
    ++*&v38[*MEMORY[0x277CD7498]];
  }

  if (v40 && v40[*v42] == 1)
  {
    ++*&v40[*MEMORY[0x277CD7498]];
  }

  [*(v30 + 232) outputTensorAtIndex:0];
  v44 = *&v179[*MEMORY[0x277CD7350]];
  v45 = v178;
  v169 = *&v178[*MEMORY[0x277CD73C8]];
  if (!v40)
  {
    v194 = 1;
    v46 = [MEMORY[0x277CD7268] descriptorWithDataType:? dimensionCount:? dimensionSizes:?];
    v40 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:v172 descriptor:v46];
    v45 = v178;
  }

  v165 = v44;
  v173 = v38;
  v175 = v36;
  v171 = v41;
  v176 = *&v45[*MEMORY[0x277CD73F0]];
  v47 = [v34 descriptor];
  [v47 transposeDimension:0 withDimension:1];
  v174 = [v34 safeArrayViewWithCommandBuffer:v172 computeEncoder:v177 descriptor:v47 aliasing:1];
  v48 = [v45 descriptor];
  v49 = [v36 descriptor];
  v50 = [v174 descriptor];
  v51 = [v173 descriptor];
  if ([v48 numberOfDimensions] < 3)
  {
    v53 = 1;
  }

  else
  {
    [v48 sliceRangeForDimension:2];
    v53 = v52;
  }

  if ([v47 numberOfDimensions] < 3)
  {
    v55 = 1;
  }

  else
  {
    [v50 sliceRangeForDimension:2];
    v55 = v54;
  }

  if ([v49 numberOfDimensions] < 3)
  {
    v57 = 1;
  }

  else
  {
    [v49 sliceRangeForDimension:2];
    v57 = v56;
  }

  if ([v51 numberOfDimensions] >= 3)
  {
    [v51 sliceRangeForDimension:2];
  }

  v168 = v40;
  if (v53 == v55 || v53 == 1 && v55 == 1)
  {
    v58 = 0;
    v59 = 0;
    v60 = v171;
    v61 = v175;
    v62 = v178;
  }

  else
  {
    if (v53 <= v55)
    {
      v63 = v55;
    }

    else
    {
      v63 = v53;
    }

    if (v55 >= v53)
    {
      v64 = v53;
    }

    else
    {
      v64 = v55;
    }

    v65 = [objc_msgSend(v48 "getShape")];
    v167 = [objc_msgSend(v50 "getShape")];
    v164 = [objc_msgSend(v49 "getShape")];
    v166 = [objc_msgSend(v51 "getShape")];
    v170 = [objc_msgSend(objc_msgSend(v171 "descriptor")];
    if (v53 < v55)
    {
      v66 = 1;
    }

    else
    {
      v66 = v63 / v64;
    }

    if (v57 == v63)
    {
      v67 = v64;
    }

    else
    {
      v67 = v57;
    }

    if (v57 == v63)
    {
      v68 = v63 / v64;
    }

    else
    {
      v68 = 1;
    }

    [v65 setObject:objc_msgSend(MEMORY[0x277CCABB0] atIndexedSubscript:{"numberWithInteger:", v66), objc_msgSend(v65, "count") - 3}];
    [v65 insertObject:objc_msgSend(MEMORY[0x277CCABB0] atIndex:{"numberWithInteger:", v64), objc_msgSend(v65, "count") - 3}];
    if (v55 < v53)
    {
      v69 = 1;
    }

    else
    {
      v69 = v63 / v64;
    }

    [v167 setObject:objc_msgSend(MEMORY[0x277CCABB0] atIndexedSubscript:{"numberWithInteger:", v69), objc_msgSend(v167, "count") - 3}];
    [v167 insertObject:objc_msgSend(MEMORY[0x277CCABB0] atIndex:{"numberWithInteger:", v64), objc_msgSend(v167, "count") - 3}];
    [v164 setObject:objc_msgSend(MEMORY[0x277CCABB0] atIndexedSubscript:{"numberWithInteger:", v68), objc_msgSend(v164, "count") - 3}];
    [v164 insertObject:objc_msgSend(MEMORY[0x277CCABB0] atIndex:{"numberWithInteger:", v67), objc_msgSend(v164, "count") - 3}];
    [v170 setObject:objc_msgSend(MEMORY[0x277CCABB0] atIndexedSubscript:{"numberWithInteger:", v63 / v64), objc_msgSend(v170, "count") - 3}];
    [v170 insertObject:objc_msgSend(MEMORY[0x277CCABB0] atIndex:{"numberWithInteger:", v64), objc_msgSend(v170, "count") - 3}];
    if ([objc_msgSend(v65 objectAtIndexedSubscript:{objc_msgSend(v65, "count") - 2), "unsignedIntegerValue"}] == 1)
    {
      v70 = [v65 objectAtIndexedSubscript:{objc_msgSend(v65, "count") - 3}];
      [v65 setObject:objc_msgSend(v65 atIndexedSubscript:{"objectAtIndexedSubscript:", objc_msgSend(v65, "count") - 2), objc_msgSend(v65, "count") - 3}];
      [v65 setObject:v70 atIndexedSubscript:{objc_msgSend(v65, "count") - 2}];
      v71 = [v166 objectAtIndexedSubscript:{objc_msgSend(v166, "count") - 3}];
      [v166 setObject:objc_msgSend(v166 atIndexedSubscript:{"objectAtIndexedSubscript:", objc_msgSend(v166, "count") - 2), objc_msgSend(v166, "count") - 3}];
      [v166 setObject:v71 atIndexedSubscript:{objc_msgSend(v166, "count") - 2}];
      v72 = [v170 objectAtIndexedSubscript:{objc_msgSend(v170, "count") - 3}];
      [v170 setObject:objc_msgSend(v170 atIndexedSubscript:{"objectAtIndexedSubscript:", objc_msgSend(v170, "count") - 2), objc_msgSend(v170, "count") - 3}];
      [v170 setObject:v72 atIndexedSubscript:{objc_msgSend(v170, "count") - 2}];
    }

    v73 = *(v179 + 24);
    v74 = v172;
    v75 = [v73 reshapeWithCommandEncoder:v177 commandBuffer:v172 sourceArray:v178 shape:v65 destinationArray:0];
    if (!v75)
    {
      v76 = [MEMORY[0x277CD7268] descriptorWithDataType:objc_msgSend(v178 shape:{"dataType"), v65}];
      [v76 setPreferPackedRows:1];
      v75 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:v172 descriptor:v76];
      [v73 reshapeWithCommandEncoder:v177 commandBuffer:v172 sourceArray:v178 shape:v65 destinationArray:v75];
    }

    v77 = *(v179 + 24);
    v78 = [v77 reshapeWithCommandEncoder:v177 commandBuffer:v172 sourceArray:v174 shape:v167 destinationArray:0];
    if (!v78)
    {
      v79 = [MEMORY[0x277CD7268] descriptorWithDataType:objc_msgSend(v174 shape:{"dataType"), v167}];
      [v79 setPreferPackedRows:1];
      v78 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:v172 descriptor:v79];
      [v77 reshapeWithCommandEncoder:v177 commandBuffer:v172 sourceArray:v174 shape:v167 destinationArray:v78];
    }

    v80 = *(v179 + 24);
    v61 = [v80 reshapeWithCommandEncoder:v177 commandBuffer:v172 sourceArray:v175 shape:v164 destinationArray:0];
    if (!v61)
    {
      v81 = [MEMORY[0x277CD7268] descriptorWithDataType:objc_msgSend(v175 shape:{"dataType"), v164}];
      [v81 setPreferPackedRows:1];
      v61 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:v172 descriptor:v81];
      [v80 reshapeWithCommandEncoder:v177 commandBuffer:v172 sourceArray:v175 shape:v164 destinationArray:v61];
    }

    v82 = *(v179 + 24);
    v83 = [v82 reshapeWithCommandEncoder:v177 commandBuffer:v172 sourceArray:v173 shape:v166 destinationArray:0];
    if (!v83)
    {
      v84 = [MEMORY[0x277CD7268] descriptorWithDataType:objc_msgSend(v173 shape:{"dataType"), v166}];
      [v84 setPreferPackedRows:1];
      v83 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:v172 descriptor:v84];
      [v82 reshapeWithCommandEncoder:v177 commandBuffer:v172 sourceArray:v173 shape:v166 destinationArray:v83];
    }

    if (v171[*MEMORY[0x277CD73E0]] == 1)
    {
      ++*&v171[*MEMORY[0x277CD7498]];
    }

    v85 = *(v179 + 24);
    v60 = [v85 reshapeWithCommandEncoder:v177 commandBuffer:v74 sourceArray:? shape:? destinationArray:?];
    ++v176;
    if (v60)
    {
      v58 = 0;
    }

    else
    {
      v86 = [MEMORY[0x277CD7268] descriptorWithDataType:objc_msgSend(v171 shape:{"dataType"), v170}];
      [v86 setPreferPackedRows:1];
      v60 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:v74 descriptor:v86];
      [v85 reshapeWithCommandEncoder:v177 commandBuffer:v74 sourceArray:v171 shape:v170 destinationArray:v60];
      v58 = 1;
    }

    v59 = 1;
    v174 = v78;
    v173 = v83;
    v62 = v75;
    v40 = v168;
  }

  v87 = [v62 descriptor];
  LODWORD(v166) = v58;
  LODWORD(v167) = v59;
  if (v87)
  {
    objc_msgSend_getShapeVector(v87);
    v88 = v185;
  }

  else
  {
    v88 = 0;
    v185 = 0;
  }

  v89 = [v174 descriptor];
  v175 = v61;
  if (v89)
  {
    objc_msgSend_getShapeVector(v89);
    v90 = v184;
    v92 = *v88;
    v91 = v88[1];
    v194 = 0;
    v195 = 0;
    v196 = 0;
    v93 = v91 - v92;
    if (v91 != v92)
    {
      goto LABEL_120;
    }
  }

  else
  {
    v90 = 0;
    v184 = 0;
    v95 = *v88;
    v94 = v88[1];
    v194 = 0;
    v195 = 0;
    v196 = 0;
    v93 = v94 - v95;
    if (v94 != v95)
    {
LABEL_120:
      if ((v93 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<long>::__throw_length_error[abi:ne200100]();
    }
  }

  v96 = *v88;
  v97 = v88[1] - *v88;
  v98 = v173;
  if ((v97 >> 3) >= 3)
  {
    v99 = (v97 >> 3) & 0x7FFFFFFF;
    v100 = v99 - 3;
    if (v99 < 3)
    {
      v100 = 0;
    }

    if (v100 < 3)
    {
      goto LABEL_131;
    }

    if (v96 <= 0x1F)
    {
      goto LABEL_131;
    }

    v101 = v100 + 1;
    v102 = v99 - (v101 & 0xFFFFFFFC);
    v103 = (8 * v99 - 16);
    v104 = (v103 + v96);
    v105 = v101 & 0xFFFFFFFC;
    do
    {
      v106 = *v104;
      *(v103 - 1) = *(v104 - 1);
      *v103 = v106;
      v104 -= 2;
      v103 -= 2;
      v105 -= 4;
    }

    while (v105);
    v99 = v102;
    if (v101 != (v101 & 0xFFFFFFFC))
    {
LABEL_131:
      v107 = v99 - 1;
      do
      {
        *(8 * v107) = *(v96 + 8 * v107);
        v108 = v107-- + 1;
      }

      while (v108 > 3);
    }
  }

  MEMORY[8] = *(v96 + 8);
  MEMORY[0] = **v90;
  v109 = [v98 descriptor];
  if (v109)
  {
    objc_msgSend_getShapeVector(v109);
  }

  else
  {
    v183 = 0;
  }

  v110 = [v40 descriptor];
  v170 = v60;
  if (v110)
  {
    objc_msgSend_getShapeVector(v110);
    v178 = v62;
    v117 = v194;
    v118 = v195 - v194;
    if ((v195 - v194) >= 9)
    {
      goto LABEL_138;
    }
  }

  else
  {
    v182 = 0;
    v178 = v62;
    v117 = v194;
    v118 = v195 - v194;
    if ((v195 - v194) >= 9)
    {
LABEL_138:
      v119 = v117[1] < 5;
      v120 = *(v179 + 18);
      if (v120)
      {
        goto LABEL_139;
      }

LABEL_144:
      v123 = 0;
      v124 = v179;
      if (v179[152])
      {
        goto LABEL_146;
      }

      goto LABEL_145;
    }
  }

  v119 = 0;
  v120 = *(v179 + 18);
  if (!v120)
  {
    goto LABEL_144;
  }

LABEL_139:
  v121 = [v120 finalOp];
  v122 = **(v121 + 24);
  if (*(*(v121 + 24) + 8) == v122)
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v120 = memcmp(v117, **(*v122 + 16), v118);
  v123 = v120 != 0;
  v124 = v179;
  if ((v179[152] & 1) == 0)
  {
LABEL_145:
    v120 = [v124 createFallbackKernels:*(v165 + 16)];
  }

LABEL_146:
  v125 = *(v124 + 18) == 0 || v123;
  v126 = v172;
  if (v125)
  {
    operator new();
  }

  MEMORY[0x28223BE20](v120, v111, v112, v113, v114, v115, v116);
  v128 = &v164 - ((v127 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v129)
  {
    v130 = 0;
    v131 = v194;
    if (v176 < 4)
    {
      goto LABEL_154;
    }

    if (&v128[-v194] <= 0x1F)
    {
      goto LABEL_154;
    }

    v130 = v176 & 0xFFFFFFFFFFFFFFFCLL;
    v132 = (v194 + 16);
    v133 = v128 + 16;
    v134 = v176 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v135 = *v132;
      *(v133 - 1) = *(v132 - 1);
      *v133 = v135;
      v132 += 2;
      v133 += 2;
      v134 -= 4;
    }

    while (v134);
    if (v176 != v130)
    {
LABEL_154:
      v136 = v176 - v130;
      v137 = 8 * v130;
      v138 = &v128[8 * v130];
      v139 = (v131 + v137);
      do
      {
        v140 = *v139++;
        *v138 = v140;
        v138 += 8;
        --v136;
      }

      while (v136);
    }
  }

  v141 = [MEMORY[0x277CD7268] descriptorWithDataType:v169 dimensionCount:v176 dimensionSizes:?];
  v142 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:v126 descriptor:v141];
  if (v119)
  {
    v143 = 0;
  }

  else
  {
    v143 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:v126 descriptor:v141];
  }

  v144 = *(v179 + 20);
  v193[0] = v178;
  v193[1] = v174;
  v193[2] = v173;
  v193[3] = v168;
  v145 = [MEMORY[0x277CBEA60] arrayWithObjects:v193 count:4];
  [v144 encodeToMPSCommandEncoder:v177 commandBuffer:v126 sourceArrays:v145 resultState:0 destinationArray:v142 kernelDAGObject:*(v179 + 18)];
  if (v119)
  {
    v146 = *(v179 + 23);
    v192[0] = v142;
    v192[1] = v175;
    v147 = [MEMORY[0x277CBEA60] arrayWithObjects:v192 count:2];
  }

  else
  {
    v148 = *(v179 + 21);
    v191 = v142;
    v149 = [MEMORY[0x277CBEA60] arrayWithObjects:&v191 count:1];
    [v148 encodeToMPSCommandEncoder:v177 commandBuffer:v126 sourceArrays:v149 destinationArray:v143];
    v146 = *(v179 + 22);
    v190[0] = v143;
    v190[1] = v175;
    v147 = [MEMORY[0x277CBEA60] arrayWithObjects:v190 count:2];
  }

  [v146 encodeToMPSCommandEncoder:v177 commandBuffer:v126 sourceArrays:v147 destinationArray:v170];
  if (v167)
  {
    if (v166)
    {
      v150 = [objc_msgSend(v171 "descriptor")];
      [*(v179 + 24) reshapeWithCommandEncoder:v177 commandBuffer:v126 sourceArray:v170 shape:v150 destinationArray:v171];
    }

    else if (v170[*MEMORY[0x277CD73E0]] == 1)
    {
      v151 = [v170 readCount];
      [v170 setReadCount:v151 - 1];
    }
  }

  v152 = v182;
  v182 = 0;
  v153 = v180;
  if (v152)
  {
    v154 = *v152;
    if (*v152)
    {
      *(v152 + 8) = v154;
      operator delete(v154);
    }

    MEMORY[0x23EE7C8C0](v152, 0x10C402FEFCB83);
  }

  v155 = v183;
  v183 = 0;
  if (v155)
  {
    v156 = *v155;
    if (*v155)
    {
      *(v155 + 8) = v156;
      operator delete(v156);
    }

    MEMORY[0x23EE7C8C0](v155, 0x10C402FEFCB83);
  }

  if (v194)
  {
    v195 = v194;
    operator delete(v194);
  }

  v157 = v184;
  v184 = 0;
  if (v157)
  {
    v158 = *v157;
    if (*v157)
    {
      v157[1] = v158;
      operator delete(v158);
    }

    MEMORY[0x23EE7C8C0](v157, 0x10C402FEFCB83);
  }

  v159 = v185;
  v185 = 0;
  if (v159)
  {
    v160 = *v159;
    if (*v159)
    {
      v159[1] = v160;
      operator delete(v160);
    }

    MEMORY[0x23EE7C8C0](v159, 0x10C402FEFCB83);
  }

  v161 = v187;
  if (v187)
  {
    do
    {
      v162 = *v161;
      operator delete(v161);
      v161 = v162;
    }

    while (v162);
  }

  v163 = v186;
  *&v186 = 0;
  if (v163)
  {
    operator delete(v163);
  }

  if (v153)
  {
    operator delete(v153);
  }

  MPSAutoCache::~MPSAutoCache(v189);
}

void sub_239ACAB1C(_Unwind_Exception *a1)
{
  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](v1 - 304);
  std::unique_ptr<std::vector<long> const,std::default_delete<std::vector<long> const>>::~unique_ptr[abi:ne200100]((v1 - 288));
  std::unique_ptr<std::vector<long> const,std::default_delete<std::vector<long> const>>::~unique_ptr[abi:ne200100]((v1 - 280));
  v3 = *(v1 - 120);
  if (v3)
  {
    *(v1 - 112) = v3;
    operator delete(v3);
  }

  std::unique_ptr<std::vector<long> const,std::default_delete<std::vector<long> const>>::~unique_ptr[abi:ne200100]((v1 - 272));
  std::unique_ptr<std::vector<long> const,std::default_delete<std::vector<long> const>>::~unique_ptr[abi:ne200100]((v1 - 264));
  std::unordered_map<unsigned int,unsigned int>::~unordered_map[abi:ne200100](v1 - 256);
  v4 = *(v1 - 336);
  if (v4)
  {
    operator delete(v4);
  }

  MPSAutoCache::~MPSAutoCache((v1 - 216));
  _Unwind_Resume(a1);
}

void MPSNDArraySDPALogCommandLine(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  if ((a1[*MEMORY[0x277CD7378]] & 0x10) == 0 || *&a1[*MEMORY[0x277CD7380]] < 4uLL)
  {
    return;
  }

  [a1 alpha];
  std::to_string(&v22, v6);
  v7 = std::string::insert(&v22, 0, "-alpha ");
  v8 = *&v7->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = std::string::append(&v23, " -layout ");
  v10 = *&v9->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v21, [a1 layout]);
  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v21;
  }

  else
  {
    v11 = v21.__r_.__value_.__r.__words[0];
  }

  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v21.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v21.__r_.__value_.__l.__size_;
  }

  v13 = std::string::append(&v24, v11, size);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  v15 = std::string::append(&v25, " -kernelType 0 -packed 3");
  v16 = v15->__r_.__value_.__r.__words[0];
  v17 = v15->__r_.__value_.__l.__size_;
  v26[0] = v15->__r_.__value_.__r.__words[2];
  *(v26 + 3) = *(&v15->__r_.__value_.__r.__words[2] + 3);
  v18 = SHIBYTE(v15->__r_.__value_.__r.__words[2]);
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_11:
      if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_18;
    }
  }

  else if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

  operator delete(v21.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_12:
    if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(v24.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_13:
    if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

LABEL_20:
    operator delete(v22.__r_.__value_.__l.__data_);
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

LABEL_21:
    std::string::__init_copy_ctor_external(&v20, *a3, *(a3 + 8));
    goto LABEL_22;
  }

LABEL_19:
  operator delete(v23.__r_.__value_.__l.__data_);
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_20;
  }

LABEL_14:
  if (*(a3 + 23) < 0)
  {
    goto LABEL_21;
  }

LABEL_15:
  v20 = *a3;
LABEL_22:
  if (v18 < 0)
  {
    std::string::__init_copy_ctor_external(&v19, v16, v17);
  }

  else
  {
    v19.__r_.__value_.__r.__words[0] = v16;
    v19.__r_.__value_.__l.__size_ = v17;
    LODWORD(v19.__r_.__value_.__r.__words[2]) = v26[0];
    *(&v19.__r_.__value_.__r.__words[2] + 3) = *(v26 + 3);
    *(&v19.__r_.__value_.__s + 23) = v18;
  }

  MPSKernelLogPerfTestCommandline(a1, a2, &v20, &v19);
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_27:
      if ((v18 & 0x80000000) == 0)
      {
        return;
      }

LABEL_31:
      operator delete(v16);
      return;
    }
  }

  else if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_27;
  }

  operator delete(v20.__r_.__value_.__l.__data_);
  if (v18 < 0)
  {
    goto LABEL_31;
  }
}

void sub_239ACAF74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((v41 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((v41 & 0x80000000) == 0)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

  operator delete(v40);
  goto LABEL_6;
}

uint64_t MPSNDArraySDPACreateUserConstant(int *a1)
{
  v1 = *a1;
  if (*a1 == 536870920)
  {
    v2 = 3;
    v3 = a1[1];
    if (v3 != 268435488)
    {
      goto LABEL_7;
    }

LABEL_10:
    v4 = 0;
    goto LABEL_11;
  }

  if (v1 == 268435488)
  {
    v2 = 0;
    v3 = a1[1];
    if (v3 != 268435488)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  if (v1 != 268435472)
  {
    result = MTLReportFailureTypeEnabled();
    if (!result)
    {
      return result;
    }

    goto LABEL_17;
  }

  v2 = 1;
  v3 = a1[1];
  if (v3 == 268435488)
  {
    goto LABEL_10;
  }

LABEL_7:
  if (v3 != 268435472)
  {
    result = MTLReportFailureTypeEnabled();
    if (!result)
    {
      return result;
    }

LABEL_17:
    MTLReportFailure();
    return 0;
  }

  v4 = 16;
LABEL_11:
  v5 = v4 | v2 | ((*(a1 + 4) << 8) + 1792) & 0x700 | ((a1[3] << 11) + 14336) & 0x3800 | (*(a1 + 16) << 14) | (*(a1 + 17) << 7) | (*(a1 + 18) << 15) | (*(a1 + 19) << 16);
  v6 = v1 >> 3;
  if (v6)
  {
    if (v6)
    {
      v9 = 0;
    }

    else
    {
      v7 = 0x80000;
      do
      {
        v8 = v6;
        v6 >>= 1;
        v7 += 0x20000;
      }

      while ((v8 & 2) == 0);
      v9 = v7 & 0x60000;
    }
  }

  else
  {
    v9 = 393216;
  }

  return v5 | v9 | (*(a1 + 20) << 19) | (*(a1 + 22) << 20) | (*(a1 + 23) << 21) | (*(a1 + 24) << 22);
}

uint64_t EncodeGatherCommon(char *a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = a4;
  if (a4)
  {
    v10 = *(a3 + 112);
    v11 = [*(a3 + 16) objectAtIndexedSubscript:1];
    v12 = *(a3 + 208);
    if (v6)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v10 = [*(a3 + 16) objectAtIndexedSubscript:0];
    v11 = [*(a3 + 16) objectAtIndexedSubscript:1];
    v12 = *(a3 + 208);
  }

  v13 = *(a3 + 24);
  if (v13)
  {
    v14 = v11;
    *(v13 + 68) = [a1 axis];
    v11 = v14;
  }

LABEL_7:
  v15 = *MEMORY[0x277CD73D8];
  v16 = *&v10[v15];
  v17 = v16;
  if (v16)
  {
    v18 = *&v10[*MEMORY[0x277CD7400]] / (*&v10[*MEMORY[0x277CD73C8]] >> 3);
    if (v16 != 1)
    {
      v19 = &v10[*MEMORY[0x277CD73D0]];
      v21 = *(v19 + 2);
      v20 = *(v19 + 3);
      v23 = *v19;
      v22 = *(v19 + 1);
      v24 = 1;
      do
      {
        v64[0] = v23;
        v64[1] = v22;
        v64[2] = v21;
        v64[3] = v20;
        LODWORD(v18) = v18 * *(v64 + (v24++ & 0xF));
      }

      while (v17 != v24);
    }

    v25 = *&v12[v15];
    v26 = v25;
    if (v25)
    {
LABEL_12:
      v27 = *&v12[*MEMORY[0x277CD7400]] / (*&v12[*MEMORY[0x277CD73C8]] >> 3);
      if (v26 != 1)
      {
        v28 = &v12[*MEMORY[0x277CD73D0]];
        v30 = *(v28 + 2);
        v29 = *(v28 + 3);
        v32 = *v28;
        v31 = *(v28 + 1);
        for (i = 1; i != v26; ++i)
        {
          v63[0] = v32;
          v63[1] = v31;
          v63[2] = v30;
          v63[3] = v29;
          LODWORD(v27) = v27 * *(v63 + (i & 0xF));
        }
      }

      if (v6)
      {
        goto LABEL_16;
      }

      goto LABEL_19;
    }
  }

  else
  {
    LODWORD(v18) = 1;
    v36 = *&v12[v15];
    v26 = v36;
    if (v36)
    {
      goto LABEL_12;
    }
  }

  LODWORD(v27) = 1;
  if (v6)
  {
LABEL_16:
    v34 = (a3 + 96);
    v35 = *(a3 + 8);
    goto LABEL_20;
  }

LABEL_19:
  v35 = *(a3 + 8);
  v34 = (v35 + 64);
LABEL_20:
  v37 = *v34;
  v38 = *(v35 + 144);
  v39 = *MEMORY[0x277CD73C8];
  v40 = *&v10[v39];
  v62 = *(a3 + 192);
  if (v40 > 285212703)
  {
    if (v40 <= 536870915)
    {
      if (v40 > 301989895)
      {
        if (v40 == 301989896)
        {
          v41 = 512;
          v42 = *&v12[v39];
          v60 = v37;
          v61 = v38;
          if (v42 <= 285212703)
          {
            goto LABEL_80;
          }
        }

        else
        {
          if (v40 != 335544328)
          {
            goto LABEL_101;
          }

          v41 = 544;
          v42 = *&v12[v39];
          v60 = v37;
          v61 = v38;
          if (v42 <= 285212703)
          {
            goto LABEL_80;
          }
        }
      }

      else if (v40 == 285212704)
      {
        v41 = 416;
        v42 = *&v12[v39];
        v60 = v37;
        v61 = v38;
        if (v42 <= 285212703)
        {
          goto LABEL_80;
        }
      }

      else
      {
        if (v40 != 285212736)
        {
          goto LABEL_101;
        }

        v41 = 448;
        v42 = *&v12[v39];
        v60 = v37;
        v61 = v38;
        if (v42 <= 285212703)
        {
          goto LABEL_80;
        }
      }
    }

    else if (v40 <= 536870927)
    {
      if (v40 == 536870916)
      {
        v41 = 0;
        v42 = *&v12[v39];
        v60 = v37;
        v61 = v38;
        if (v42 > 285212703)
        {
          goto LABEL_102;
        }

        goto LABEL_80;
      }

      if (v40 != 536870920)
      {
        goto LABEL_101;
      }

      v41 = 32;
      v42 = *&v12[v39];
      v60 = v37;
      v61 = v38;
      if (v42 <= 285212703)
      {
        goto LABEL_80;
      }
    }

    else
    {
      switch(v40)
      {
        case 536870928:
          v41 = 64;
          v42 = *&v12[v39];
          v60 = v37;
          v61 = v38;
          if (v42 <= 285212703)
          {
            goto LABEL_80;
          }

          break;
        case 536870944:
          v41 = 96;
          v42 = *&v12[v39];
          v60 = v37;
          v61 = v38;
          if (v42 <= 285212703)
          {
            goto LABEL_80;
          }

          break;
        case 536870976:
          v41 = 128;
          v42 = *&v12[v39];
          v60 = v37;
          v61 = v38;
          if (v42 <= 285212703)
          {
            goto LABEL_80;
          }

          break;
        default:
          goto LABEL_101;
      }
    }
  }

  else if (v40 <= 31)
  {
    if (v40 > 7)
    {
      if (v40 == 8)
      {
        v41 = 192;
        v42 = *&v12[v39];
        v60 = v37;
        v61 = v38;
        if (v42 <= 285212703)
        {
          goto LABEL_80;
        }
      }

      else
      {
        if (v40 != 16)
        {
          goto LABEL_101;
        }

        v41 = 224;
        v42 = *&v12[v39];
        v60 = v37;
        v61 = v38;
        if (v42 <= 285212703)
        {
          goto LABEL_80;
        }
      }
    }

    else if (v40 == -1879048176)
    {
      v41 = 384;
      v42 = *&v12[v39];
      v60 = v37;
      v61 = v38;
      if (v42 <= 285212703)
      {
        goto LABEL_80;
      }
    }

    else
    {
      if (v40 != 4)
      {
        goto LABEL_101;
      }

      v41 = 160;
      v42 = *&v12[v39];
      v60 = v37;
      v61 = v38;
      if (v42 <= 285212703)
      {
        goto LABEL_80;
      }
    }
  }

  else if (v40 <= 268435463)
  {
    if (v40 == 32)
    {
      v41 = 256;
      v42 = *&v12[v39];
      v60 = v37;
      v61 = v38;
      if (v42 <= 285212703)
      {
        goto LABEL_80;
      }
    }

    else
    {
      if (v40 != 64)
      {
        goto LABEL_101;
      }

      v41 = 288;
      v42 = *&v12[v39];
      v60 = v37;
      v61 = v38;
      if (v42 <= 285212703)
      {
        goto LABEL_80;
      }
    }
  }

  else
  {
    switch(v40)
    {
      case 268435464:
        v41 = 480;
        v42 = *&v12[v39];
        v60 = v37;
        v61 = v38;
        if (v42 <= 285212703)
        {
          goto LABEL_80;
        }

        break;
      case 268435472:
        v41 = 320;
        v42 = *&v12[v39];
        v60 = v37;
        v61 = v38;
        if (v42 <= 285212703)
        {
          goto LABEL_80;
        }

        break;
      case 268435488:
        v41 = 352;
        v42 = *&v12[v39];
        v60 = v37;
        v61 = v38;
        if (v42 > 285212703)
        {
          break;
        }

LABEL_80:
        if (v42 <= 31)
        {
          if (v42 > 7)
          {
            if (v42 == 8)
            {
              v43 = 6;
              goto LABEL_124;
            }

            if (v42 == 16)
            {
              v43 = 7;
              goto LABEL_124;
            }
          }

          else
          {
            if (v42 == -1879048176)
            {
              v43 = 12;
              goto LABEL_124;
            }

            if (v42 == 4)
            {
              v43 = 5;
              goto LABEL_124;
            }
          }
        }

        else if (v42 <= 268435463)
        {
          if (v42 == 32)
          {
            v43 = 8;
            goto LABEL_124;
          }

          if (v42 == 64)
          {
            v43 = 9;
            goto LABEL_124;
          }
        }

        else
        {
          switch(v42)
          {
            case 268435464:
              v43 = 15;
              goto LABEL_124;
            case 268435472:
              v43 = 10;
              goto LABEL_124;
            case 268435488:
              v43 = 11;
              goto LABEL_124;
          }
        }

        goto LABEL_123;
      default:
LABEL_101:
        v41 = 576;
        v42 = *&v12[v39];
        v60 = v37;
        v61 = v38;
        if (v42 > 285212703)
        {
          break;
        }

        goto LABEL_80;
    }
  }

LABEL_102:
  if (v42 <= 536870915)
  {
    if (v42 > 301989895)
    {
      if (v42 == 301989896)
      {
        v43 = 16;
        goto LABEL_124;
      }

      if (v42 == 335544328)
      {
        v43 = 17;
        goto LABEL_124;
      }
    }

    else
    {
      if (v42 == 285212704)
      {
        v43 = 13;
        goto LABEL_124;
      }

      if (v42 == 285212736)
      {
        v43 = 14;
        goto LABEL_124;
      }
    }
  }

  else if (v42 <= 536870927)
  {
    if (v42 == 536870916)
    {
      v43 = 0;
      goto LABEL_124;
    }

    if (v42 == 536870920)
    {
      v43 = 1;
      goto LABEL_124;
    }
  }

  else
  {
    switch(v42)
    {
      case 536870928:
        v43 = 2;
        goto LABEL_124;
      case 536870944:
        v43 = 3;
        goto LABEL_124;
      case 536870976:
        v43 = 4;
        goto LABEL_124;
    }
  }

LABEL_123:
  v43 = 18;
LABEL_124:
  v44 = 0x2000000;
  if ((v6 & a5) == 0)
  {
    v44 = 0;
  }

  *&v45 = -1;
  *(&v45 + 1) = -1;
  v83 = v45;
  v84 = v45;
  v80 = -1;
  v82 = v45;
  v79 = v45;
  v81 = v41 | v43 | v44;
  v46 = *(v11 + *MEMORY[0x277CD7410]);
  v74 = *(v11 + *MEMORY[0x277CD7410]);
  v75 = v18;
  if (v40 > 285212703)
  {
    if (v40 <= 536870915)
    {
      if (v40 > 301989895)
      {
        if (v40 == 301989896)
        {
          v47 = 16;
          goto LABEL_170;
        }

        if (v40 == 335544328)
        {
          v47 = 17;
          goto LABEL_170;
        }
      }

      else
      {
        if (v40 == 285212704)
        {
          v47 = 13;
          goto LABEL_170;
        }

        if (v40 == 285212736)
        {
          v47 = 14;
          goto LABEL_170;
        }
      }
    }

    else if (v40 <= 536870927)
    {
      if (v40 == 536870916)
      {
        v47 = 0;
        goto LABEL_170;
      }

      if (v40 == 536870920)
      {
        v47 = 1;
        goto LABEL_170;
      }
    }

    else
    {
      switch(v40)
      {
        case 536870928:
          v47 = 2;
          goto LABEL_170;
        case 536870944:
          v47 = 3;
          goto LABEL_170;
        case 536870976:
          v47 = 4;
          goto LABEL_170;
      }
    }
  }

  else if (v40 <= 31)
  {
    if (v40 > 7)
    {
      if (v40 == 8)
      {
        v47 = 6;
        goto LABEL_170;
      }

      if (v40 == 16)
      {
        v47 = 7;
        goto LABEL_170;
      }
    }

    else
    {
      if (v40 == -1879048176)
      {
        v47 = 12;
        goto LABEL_170;
      }

      if (v40 == 4)
      {
        v47 = 5;
        goto LABEL_170;
      }
    }
  }

  else if (v40 <= 268435463)
  {
    if (v40 == 32)
    {
      v47 = 8;
      goto LABEL_170;
    }

    if (v40 == 64)
    {
      v47 = 9;
      goto LABEL_170;
    }
  }

  else
  {
    switch(v40)
    {
      case 268435464:
        v47 = 15;
        goto LABEL_170;
      case 268435472:
        v47 = 10;
        goto LABEL_170;
      case 268435488:
        v47 = 11;
        goto LABEL_170;
    }
  }

  v47 = 18;
LABEL_170:
  v48 = 31 - __clz(v40 >> 3);
  if (v40 >> 3)
  {
    v49 = v48;
  }

  else
  {
    v49 = 0;
  }

  v76 = v47;
  v77 = v49;
  v78 = 0;
  v69 = v46;
  v70 = v27;
  if (v42 > 285212703)
  {
    if (v42 <= 536870915)
    {
      if (v42 > 301989895)
      {
        if (v42 == 301989896)
        {
          v50 = 16;
          goto LABEL_216;
        }

        if (v42 == 335544328)
        {
          v50 = 17;
          goto LABEL_216;
        }
      }

      else
      {
        if (v42 == 285212704)
        {
          v50 = 13;
          goto LABEL_216;
        }

        if (v42 == 285212736)
        {
          v50 = 14;
          goto LABEL_216;
        }
      }
    }

    else if (v42 <= 536870927)
    {
      v50 = 0;
      if (v42 == 536870916)
      {
        goto LABEL_216;
      }

      if (v42 == 536870920)
      {
        v50 = 1;
        goto LABEL_216;
      }
    }

    else
    {
      switch(v42)
      {
        case 536870928:
          v50 = 2;
          goto LABEL_216;
        case 536870944:
          v50 = 3;
          goto LABEL_216;
        case 536870976:
          v50 = 4;
          goto LABEL_216;
      }
    }
  }

  else if (v42 <= 31)
  {
    if (v42 > 7)
    {
      if (v42 == 8)
      {
        v50 = 6;
        goto LABEL_216;
      }

      if (v42 == 16)
      {
        v50 = 7;
        goto LABEL_216;
      }
    }

    else
    {
      if (v42 == -1879048176)
      {
        v50 = 12;
        goto LABEL_216;
      }

      if (v42 == 4)
      {
        v50 = 5;
        goto LABEL_216;
      }
    }
  }

  else if (v42 <= 268435463)
  {
    if (v42 == 32)
    {
      v50 = 8;
      goto LABEL_216;
    }

    if (v42 == 64)
    {
      v50 = 9;
      goto LABEL_216;
    }
  }

  else
  {
    switch(v42)
    {
      case 268435464:
        v50 = 15;
        goto LABEL_216;
      case 268435472:
        v50 = 10;
        goto LABEL_216;
      case 268435488:
        v50 = 11;
        goto LABEL_216;
    }
  }

  v50 = 18;
LABEL_216:
  v51 = 31 - __clz(v42 >> 3);
  if (v42 >> 3)
  {
    v52 = v51;
  }

  else
  {
    v52 = 0;
  }

  v71 = v50;
  v72 = v52;
  v73 = 0;
  v53 = v11;
  ComputeState = MPSLibrary::GetComputeState();
  v55 = [ComputeState threadExecutionWidth];
  if (v55 <= 1)
  {
    v56 = 1;
  }

  else
  {
    v56 = v55;
  }

  v57 = 2 * v56;
  v58 = (v46 + v56 - 1) / v56;
  [a2 setComputePipelineState:ComputeState];
  [a2 setBuffer:objc_msgSend(v10 offset:"buffer") atIndex:{v60, 0}];
  [a2 setBuffer:objc_msgSend(v53 offset:"buffer") atIndex:{v61, 1}];
  [a2 setBuffer:objc_msgSend(v12 offset:"buffer") atIndex:{v62, 2}];
  objc_msgSend_setBytes_length_atIndex_(a2);
  objc_msgSend_setBytes_length_atIndex_(a2);
  v67 = v58;
  v68 = vdupq_n_s64(1uLL);
  v65 = v57;
  v66 = v68;
  [a2 dispatchThreadgroups:&v67 threadsPerThreadgroup:&v65];
  return MPSLibrary::ReleaseComputeState();
}

BOOL MPSNDArrayConvolutionDeviceBehaviorA14::IsWinogradSupported(uint64_t a1, uint64_t a2)
{
  if (qword_27DF869D8 == -1)
  {
    if (_MergedGlobals_34)
    {
      return 0;
    }
  }

  else
  {
    dispatch_once(&qword_27DF869D8, &__block_literal_global_5);
    if (_MergedGlobals_34)
    {
      return 0;
    }
  }

  if (*(a2 + 8) >= 2u)
  {
    MPSKernel_LogInfo(*(a2 + 136), 2uLL, "A14 Winograd Convolution: Only NHWC and NCHW data format and HWIO weights format supported by A14 direct kernels. Falling back to A14 direct implementation\n");
    return 0;
  }

  v3 = *(a2 + 128);
  if (*(a2 + 120))
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  v5 = [*(v3 + 232) inputTensorAtIndex:v4];
  v6 = [*(v3 + 232) inputTensorAtIndex:1];
  v7 = [*(v3 + 232) outputTensorAtIndex:0];
  v8 = (*(**(v5 + 32) + 24))(*(v5 + 32));
  v9 = (*(**(v6 + 32) + 24))(*(v6 + 32));
  if (!v8 || (v9 & 1) == 0)
  {
    MPSKernel_LogInfo(*(a2 + 136), 2uLL, "A14 Winograd Convolution: Prefix linking not supported by A14 Winograd kernels. Falling back to A14 direct convolution implementation\n");
    return 0;
  }

  v10 = [*(*(a2 + 128) + 232) graph];
  v11 = *(v10 + 64);
  v12 = *v11;
  v13 = v11[1];
  if (*v11 == v13)
  {
    goto LABEL_20;
  }

  v14 = v10;
  v28 = v7;
  v27 = *(a2 + 120);
  v15 = -1;
  v16 = -1;
  do
  {
    while (1)
    {
      v17 = *v12;
      CoreOpInputAtIndex = MPSKernelDAG::GetCoreOpInputAtIndex(v14);
      v19 = *v12;
      if (v17 != *(CoreOpInputAtIndex + 32))
      {
        break;
      }

      v15 = *(v19 + 76);
      if (v19 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v14) + 32))
      {
        goto LABEL_15;
      }

LABEL_12:
      if (++v12 == v13)
      {
        goto LABEL_16;
      }
    }

    if (v19 != *(MPSKernelDAG::GetCoreOpInputAtIndex(v14) + 32))
    {
      goto LABEL_12;
    }

LABEL_15:
    v20 = *v12++;
    v16 = *(v20 + 76);
  }

  while (v12 != v13);
LABEL_16:
  v21 = v27;
  if (v15 != -1)
  {
    v21 = 1;
  }

  v7 = v28;
  if (v16 == -1 || (v21 & 1) == 0)
  {
LABEL_20:
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  if (*(a2 + 8) >= 2u)
  {
    MPSKernel_LogInfo(*(a2 + 136), 2uLL, "Only NHWC/NCHW data format supported for source by Winograd kernels. Falling back to generic implementation\n");
    return 0;
  }

  v22 = *(v7 + 16);
  v24 = *v22;
  v23 = v22[1];
  if (v23 != v24)
  {
    if (((v23 - v24) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  if (*(a2 + 32) == 3 && *(a2 + 40) == 3 && *(a2 + 48) == 1 && *(a2 + 56) == 1 && *(a2 + 64) == 1 && *(a2 + 72) == 1 && (v26 = *(a2 + 80), *(a2 + 16) / v26 >= 8) && *(a2 + 24) / v26 > 1)
  {
    if ((*(v5 + 8) | 0x20000000) != 0x20000008 && (*(v6 + 8) | 0x20000000) != 0x20000008)
    {
      return (*(v7 + 8) & 0xDFFFFFFF) != 32;
    }
  }

  else
  {
    MPSKernel_LogInfo(*(a2 + 136), 2uLL, "A14 Winograd Convolution: Data parameters are not compatible with Winograd algorithm. Falling back to A14 direct implementation\n");
  }

  return 0;
}

char *___ZNK38MPSNDArrayConvolutionDeviceBehaviorA1419IsWinogradSupportedEP28NDArrayConvolutionEncodeData_block_invoke()
{
  result = getenv("MPSNDARRAY_DIRECT_CONVOLUTION");
  if (result)
  {
    _MergedGlobals_34 = 1;
  }

  return result;
}

void *BaseTensor::GetNDArrayShape(void *this, _BYTE *a2, _BYTE *a3)
{
  *this = 0;
  this[1] = 0;
  this[2] = 0;
  if (a3 != a2)
  {
    if (((a3 - a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  return this;
}

uint64_t MPSNDArrayConvolutionDeviceBehaviorA14::IsIntrinsicsSupported(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) >= 2u)
  {
    v8 = *(a2 + 136);
    v9 = "A14 Direct Convolution: Only NHWC data format and HWIO weights format supported by A14 kernels. Falling back to preG13 implementation\n";
LABEL_12:
    MPSKernel_LogInfo(v8, 2uLL, v9);
    return 0;
  }

  v2 = *(a2 + 128);
  if (*(a2 + 120))
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  v5 = [*(v2 + 232) inputTensorAtIndex:v4];
  v6 = [*(v2 + 232) inputTensorAtIndex:1];
  v7 = [*(v2 + 232) outputTensorAtIndex:0];
  if ((*(v5 + 8) | 0x20000000) == 0x20000008 || (*(v6 + 8) | 0x20000000) == 0x20000008 || (*(v7 + 8) | 0x20000000) == 0x20000020)
  {
    return 0;
  }

  if (*(a2 + 120) == 1 && *(a2 + 56) * *(a2 + 48) >= 5uLL)
  {
    MPSKernel_LogInfo(*(a2 + 136), 2uLL, "Gradient with data of non unit stride not optimal with A14 kernel. Falling back to preG13 implementation\n");
    return 0;
  }

  v11 = v7;
  v12 = (*(**(v5 + 32) + 24))(*(v5 + 32));
  v13 = (*(**(v6 + 32) + 24))(*(v6 + 32));
  if (!v12 || (v13 & 1) == 0)
  {
    MPSKernel_LogInfo(*(a2 + 136), 2uLL, "A14 Direct Convolution: Prefix linking not supported by A14 kernels. Falling back to preG13 implementation\n");
    return 0;
  }

  v27 = -1;
  v28 = -1;
  v14 = [*(*(a2 + 128) + 232) graph];
  if (*(a2 + 120))
  {
    v15 = 0;
  }

  else
  {
    v15 = &v28;
  }

  if (GetPlaceHolderIndexInSourceArray(v14, v15, &v27) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v16 = *(a2 + 8);
  if (v16 > 1)
  {
    v23 = a2;
    v9 = "Only NCHW/NHWC data format supported for source by A14 direct convolution kernels. Falling back to generic implementation\n";
LABEL_33:
    v8 = *(v23 + 136);
    goto LABEL_12;
  }

  if (v16)
  {
    BaseTensor::GetNDArrayShape(__p, **(v5 + 16), *(*(v5 + 16) + 8));
    v17 = *__p[0];
    operator delete(__p[0]);
    v18 = v11;
    BaseTensor::GetNDArrayShape(__p, **(v11 + 16), *(*(v11 + 16) + 8));
    v19 = *__p[0];
    operator delete(__p[0]);
    BaseTensor::GetNDArrayShape(__p, **(v11 + 16), *(*(v11 + 16) + 8));
    v20 = *(__p[0] + 1);
    operator delete(__p[0]);
    BaseTensor::GetNDArrayShape(__p, **(v11 + 16), *(*(v11 + 16) + 8));
    v21 = __p[0];
    v22 = *(__p[0] + 2);
  }

  else
  {
    BaseTensor::GetNDArrayShape(__p, **(v5 + 16), *(*(v5 + 16) + 8));
    v17 = *(__p[0] + 2);
    operator delete(__p[0]);
    v18 = v11;
    BaseTensor::GetNDArrayShape(__p, **(v11 + 16), *(*(v11 + 16) + 8));
    v19 = *(__p[0] + 2);
    operator delete(__p[0]);
    BaseTensor::GetNDArrayShape(__p, **(v11 + 16), *(*(v11 + 16) + 8));
    v20 = *__p[0];
    operator delete(__p[0]);
    BaseTensor::GetNDArrayShape(__p, **(v11 + 16), *(*(v11 + 16) + 8));
    v21 = __p[0];
    v22 = *(__p[0] + 1);
  }

  operator delete(v21);
  BaseTensor::GetNDArrayShape(__p, **(v18 + 16), *(*(v18 + 16) + 8));
  v24 = *(__p[0] + 3);
  operator delete(__p[0]);
  v23 = a2;
  if (v17 < 0x10)
  {
    goto LABEL_32;
  }

  v25 = 4;
  if (!*(a2 + 8))
  {
    v25 = 8;
  }

  if (v19 <= v25)
  {
LABEL_32:
    v9 = "Input channels less than 4 should fall back to generic implementation\n";
    goto LABEL_33;
  }

  if ((v22 * v20 * v24) <= 0xF)
  {
    v9 = "Outer product size less than 16 should fall back to generic implementation\n";
    goto LABEL_33;
  }

  return 1;
}

uint64_t mainSourcesHaveRectangularStrides(uint64_t a1)
{
  v2 = [*(*(a1 + 128) + 232) graph];
  v3 = *(v2 + 64);
  v4 = *v3;
  v5 = v3[1];
  if (*v3 == v5)
  {
    [*(*(a1 + 128) + 16) count];
    return 0;
  }

  v6 = v2;
  v7 = *(a1 + 120);
  v8 = -1;
  v9 = -1;
  do
  {
    while (1)
    {
      v10 = *v4;
      CoreOpInputAtIndex = MPSKernelDAG::GetCoreOpInputAtIndex(v6);
      v12 = *v4;
      if (v10 != *(CoreOpInputAtIndex + 32))
      {
        break;
      }

      v8 = *(v12 + 76);
      if (v12 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v6) + 32))
      {
        goto LABEL_7;
      }

LABEL_4:
      if (++v4 == v5)
      {
        goto LABEL_8;
      }
    }

    if (v12 != *(MPSKernelDAG::GetCoreOpInputAtIndex(v6) + 32))
    {
      goto LABEL_4;
    }

LABEL_7:
    v13 = *v4++;
    v9 = *(v13 + 76);
  }

  while (v4 != v5);
LABEL_8:
  if ((v9 == -1) | v7 & 1)
  {
    v14 = -1;
  }

  else
  {
    v14 = v8;
  }

  if (v9 >= [*(*(a1 + 128) + 16) count])
  {
    return 0;
  }

  v15 = *(a1 + 128);
  if (*(a1 + 120) == 1)
  {
    v16 = *(v15 + 112);
    if (!v16)
    {
      return 0;
    }

LABEL_19:
    v17 = [*(*(a1 + 128) + 16) objectAtIndexedSubscript:v9];
    v18 = *MEMORY[0x277CD7408];
    v19 = *(v16 + v18);
    v20 = *MEMORY[0x277CD73F0];
    v21 = *(v16 + v20);
    v22 = 16;
    if (v21 < 0x10)
    {
      v22 = *(v16 + v20);
    }

    if (v21 >= 2)
    {
      v23 = (v16 + *MEMORY[0x277CD7428]);
      v25 = v23[6];
      v24 = v23[7];
      v27 = v23[4];
      v26 = v23[5];
      v29 = v23[2];
      v28 = v23[3];
      v31 = *v23;
      v30 = v23[1];
      v32 = 1;
      v33 = 1;
      while (1)
      {
        v77[0] = v31;
        v77[1] = v30;
        v77[2] = v29;
        v77[3] = v28;
        v77[4] = v27;
        v77[5] = v26;
        v77[6] = v25;
        v77[7] = v24;
        if (v19 != *(v77 + (v32 & 0xF)))
        {
          return 0;
        }

        v19 *= *(v16 + *MEMORY[0x277CD73D0] + 4 * (v32 & 0xF));
        v76 = *(v16 + *MEMORY[0x277CD73D8]);
        v33 |= 1 << *(&v76 | v32++ & 0xF);
        if (v22 == v32)
        {
          if (v21 <= 0xF)
          {
            goto LABEL_28;
          }

          goto LABEL_36;
        }
      }
    }

    v33 = 1;
LABEL_28:
    if ((v33 ^ (-1 << v22)) != 0xFFFFFFFF)
    {
      v34 = (v16 + *MEMORY[0x277CD7428]);
      v36 = v34[6];
      v35 = v34[7];
      v38 = v34[4];
      v37 = v34[5];
      v40 = v34[2];
      v39 = v34[3];
      v42 = *v34;
      v41 = v34[1];
      do
      {
        v75[0] = v42;
        v75[1] = v41;
        v75[2] = v40;
        v75[3] = v39;
        v75[4] = v38;
        v75[5] = v37;
        v75[6] = v36;
        v75[7] = v35;
        v43 = *(v75 + (v22 & 0xF));
        if (v19 != v43 && v43 != 0)
        {
          return 0;
        }

        v19 *= *(v16 + *MEMORY[0x277CD73D0] + 4 * (v22++ & 0xF));
      }

      while (v22 != 16);
    }

LABEL_36:
    v45 = *(v17 + v18);
    v46 = *(v17 + v20);
    if (v46 >= 0x10)
    {
      v47 = 16;
    }

    else
    {
      v47 = *(v17 + v20);
    }

    if (v46 >= 2)
    {
      v48 = (v17 + *MEMORY[0x277CD7428]);
      v50 = v48[6];
      v49 = v48[7];
      v52 = v48[4];
      v51 = v48[5];
      v54 = v48[2];
      v53 = v48[3];
      v56 = *v48;
      v55 = v48[1];
      v57 = 1;
      v58 = 1;
      while (1)
      {
        v74[0] = v56;
        v74[1] = v55;
        v74[2] = v54;
        v74[3] = v53;
        v74[4] = v52;
        v74[5] = v51;
        v74[6] = v50;
        v74[7] = v49;
        if (v45 != *(v74 + (v57 & 0xF)))
        {
          return 0;
        }

        v45 *= *(v17 + *MEMORY[0x277CD73D0] + 4 * (v57 & 0xF));
        v73 = *(v17 + *MEMORY[0x277CD73D8]);
        v58 |= 1 << *(&v73 | v57++ & 0xF);
        if (v47 == v57)
        {
          goto LABEL_47;
        }
      }
    }

    v58 = 1;
LABEL_47:
    v59 = 1;
    if (v46 <= 0xF && (v58 ^ (-1 << v47)) != 0xFFFFFFFF)
    {
      v61 = (v17 + *MEMORY[0x277CD7428]);
      v63 = v61[6];
      v62 = v61[7];
      v65 = v61[4];
      v64 = v61[5];
      v67 = v61[2];
      v66 = v61[3];
      v69 = *v61;
      v68 = v61[1];
      do
      {
        v72[0] = v69;
        v72[1] = v68;
        v72[2] = v67;
        v72[3] = v66;
        v72[4] = v65;
        v72[5] = v64;
        v72[6] = v63;
        v72[7] = v62;
        v70 = *(v72 + (v47 & 0xF));
        v71 = v45 == v70 || v70 == 0;
        v59 = v71;
        if (!v71)
        {
          break;
        }

        v45 *= *(v17 + *MEMORY[0x277CD73D0] + 4 * (v47++ & 0xF));
      }

      while (v47 != 16);
    }
  }

  else
  {
    if (v14 < [*(v15 + 16) count])
    {
      v16 = [*(*(a1 + 128) + 16) objectAtIndexedSubscript:v14];
      if (v16)
      {
        goto LABEL_19;
      }
    }

    return 0;
  }

  return v59;
}

uint64_t MPSNDArrayConvolutionDeviceBehaviorA14::IsConvolutionSupported(uint64_t a1, uint64_t a2)
{
  HaveRectangularStrides = mainSourcesHaveRectangularStrides(a2);
  if (HaveRectangularStrides)
  {
    IsWinogradSupported = MPSNDArrayConvolutionDeviceBehaviorA14::IsWinogradSupported(HaveRectangularStrides, a2);
    if (IsWinogradSupported)
    {
      return 1;
    }

    else
    {

      return MPSNDArrayConvolutionDeviceBehaviorA14::IsIntrinsicsSupported(IsWinogradSupported, a2);
    }
  }

  else
  {
    MPSKernel_LogInfo(*(a2 + 136), 4uLL, "Non rectangular strides are not supported by A14 convolution. Falling back.\n");
    return 0;
  }
}

uint64_t MPSNDArrayConvolutionDeviceBehaviorA14::EncodeNDArrayConvolutionWinograd(uint64_t a1, void *a2, void *a3, int32x4_t *a4)
{
  v222 = *MEMORY[0x277D85DE8];
  v5 = a4->i32[3];
  v186 = a4->u32[2];
  v187 = a4[1].u64[0];
  v173 = a4[2].i64[1];
  v174 = a4[2].i64[0];
  v177 = a4[1].i64[1];
  v179 = a4[5].u64[0];
  v180 = a4[5].i64[1];
  v172 = a4[6].i64[0];
  v7 = a4[8].i64[0];
  v6 = a4[8].i64[1];
  v160 = *(v6 + *MEMORY[0x277CD7368]);
  v8 = &OBJC_IVAR___MPSNDArrayConvolution2D__ndArrayIdentity;
  v188 = a4[7].u8[8];
  if (a4[7].i8[8])
  {
    v8 = &OBJC_IVAR___MPSNDArrayConvolution2DGradientWithInput__ndArrayIdentity;
  }

  v9 = *(v6 + *v8);
  v161 = *(v6 + *MEMORY[0x277CD7360]);
  [v9 setLabel:?];
  v162 = *(a4[8].i64[1] + *MEMORY[0x277CD7378]);
  v184 = v7;
  v183 = [*(v7 + 232) inputTensorAtIndex:1];
  v10 = [*(a4[8].i64[0] + 232) graph];
  v11 = *(v10 + 64);
  v12 = *v11;
  v13 = v11[1];
  if (*v11 == v13)
  {
    v16 = 0;
    goto LABEL_15;
  }

  v14 = v10;
  v15 = -1;
  v16 = -1;
  do
  {
    v17 = *v12;
    CoreOpInputAtIndex = MPSKernelDAG::GetCoreOpInputAtIndex(v14);
    v19 = *v12;
    if (v17 == *(CoreOpInputAtIndex + 32))
    {
      v15 = *(v19 + 76);
      if (v19 != *(MPSKernelDAG::GetCoreOpInputAtIndex(v14) + 32))
      {
        goto LABEL_5;
      }
    }

    else if (v19 != *(MPSKernelDAG::GetCoreOpInputAtIndex(v14) + 32))
    {
      goto LABEL_5;
    }

    v16 = *(*v12 + 76);
LABEL_5:
    ++v12;
  }

  while (v12 != v13);
  if (v16 == -1)
  {
    v16 = 0;
    if (MTLReportFailureTypeEnabled())
    {
LABEL_16:
      MTLReportFailure();
    }

LABEL_17:
    v15 = 0;
  }

  else if (v15 == -1)
  {
LABEL_15:
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v20 = *(v183 + 16);
  v204 = 0;
  v205 = 0;
  v203 = 0;
  v22 = *v20;
  v21 = v20[1];
  if (v21 != v22)
  {
    if (((v21 - v22) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v23 = [*(v184 + 16) objectAtIndexedSubscript:v16];
  v159 = *(*(v184 + 8) + 80 * v16 + 64);
  v24 = [*(v184 + 16) objectAtIndexedSubscript:v15];
  v25 = v23;
  if (v188)
  {
    v26 = (v184 + 96);
    v27 = *(v184 + 112);
  }

  else
  {
    v27 = v24;
    v26 = (*(v184 + 8) + 80 * v15 + 64);
  }

  v158 = *v26;
  v28 = MEMORY[0x277CD73D8];
  v29 = *MEMORY[0x277CD73D8];
  if (vmovn_s16(vzip1q_s8(*&v27[v29], *&v27[v29])).u32[0] == 50462976)
  {
    v182 = v27;
  }

  else
  {
    v30 = [objc_msgSend(v27 "descriptor")];
    v31 = [MEMORY[0x277CD7268] descriptorWithDataType:*&v27[*MEMORY[0x277CD73C8]] shape:v30];
    v182 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:a3 descriptor:v31];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v27 setReadCount:{objc_msgSend(v27, "readCount") + 1}];
    }

    v206 = v27;
    [v9 encodeToMPSCommandEncoder:a2 commandBuffer:a3 sourceArrays:objc_msgSend(MEMORY[0x277CBEA60] resultState:"arrayWithObjects:count:" destinationArray:&v206 kernelDAGObject:{1), 0, v182, 0}];
    v29 = *v28;
  }

  v32 = *&v23[v29];
  if (v32 > 3u || BYTE1(v32) > 3u || BYTE2(*&v23[v29]) > 3u || BYTE3(*&v23[v29]) > 3u)
  {
    goto LABEL_40;
  }

  if (v32 != 50462976)
  {
    if (v5 == 1)
    {
      if (v32 != 16777731)
      {
        goto LABEL_40;
      }

      v165 = 0;
      v168 = 0;
    }

    else
    {
      if (v5 || v32 != 16777731)
      {
        goto LABEL_40;
      }

      v165 = 0;
      v168 = 1;
    }

LABEL_55:
    v38 = [*(v184 + 232) inputTensorAtIndex:0];
    v39 = [*(v184 + 232) inputTensorAtIndex:2];
    v40 = [*(v184 + 232) outputTensorAtIndex:0];
    v41 = WORD2(v180);
    v157 = [*(v184 + 16) count];
    v163 = v39;
    if (v188)
    {
      v156 = v180 + v172;
      v41 = WORD2(v172) + WORD2(v180);
      v38 = v39;
      v181 = v187;
      v187 = v177;
    }

    else
    {
      v156 = v180;
      v181 = v177;
    }

    v42 = *(v38 + 8);
    v43 = *(v183 + 8);
    v44 = *(v40 + 8);
    if (v42 != -1879048176 && v42 != 268435472 && v42 != 268435488 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v43 != -1879048176 && v43 != 268435472 && v43 != 268435488 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v44 != -1879048176 && v44 != 268435472 && v44 != 268435488 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v186 >= 2 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*v38 != 4 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*v183 != 4 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*v40 != 4 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v169 = v42;
    v171 = v43;
    v45 = *(v38 + 16);
    v47 = *v45;
    v46 = v45[1];
    if (v46 != v47)
    {
      if (((v46 - v47) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<long>::__throw_length_error[abi:ne200100]();
    }

    v58 = v25;
    v59 = *(v40 + 16);
    v61 = *v59;
    v60 = v59[1];
    if (v60 != v61)
    {
      if (((v60 - v61) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<long>::__throw_length_error[abi:ne200100]();
    }

    if (v186)
    {
      v48 = 8;
      v49 = 8;
      v50 = 16;
      v51 = 0;
      v52 = 0;
      v53 = v203;
      v54 = v203 + 2;
      v151 = v41;
      if (!v5)
      {
LABEL_87:
        v57 = v54;
        v54 = v53 + 1;
        v56 = 3;
        v55 = v53;
LABEL_88:
        v62 = MEMORY[0x18];
        v166 = *v49;
        v63 = *v52;
        v149 = *v48;
        v150 = *v50;
        v178 = *v51;
        v64 = *v50;
        v167 = MEMORY[0x18];
        v65 = *v55;
        v66 = *v54 * v179;
        v67 = *v57;
        v68 = LODWORD(v53[v56]);
        if (v188)
        {
          if (v66 != v181 && MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }

          if (v187 != v65 && MTLReportFailureTypeEnabled())
          {
LABEL_396:
            MTLReportFailure();
          }
        }

        else
        {
          if (v66 != v187 && MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }

          if (v181 != v65 && (MTLReportFailureTypeEnabled() & 1) != 0)
          {
            goto LABEL_396;
          }
        }

        if (v68 != v173 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        if (v67 != v174 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        if (v62 != v167 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        if (v63 != v187 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        if (v178 != v181 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        v69 = *(v38 + 8);
        if (v69 > 285212703)
        {
          if (v69 <= 536870915)
          {
            if (v69 > 301989895)
            {
              if (v69 == 301989896)
              {
                v70 = 512;
                goto LABEL_144;
              }

              if (v69 == 335544328)
              {
                v70 = 544;
                goto LABEL_144;
              }
            }

            else
            {
              if (v69 == 285212704)
              {
                v70 = 416;
                goto LABEL_144;
              }

              if (v69 == 285212736)
              {
                v70 = 448;
                goto LABEL_144;
              }
            }
          }

          else if (v69 <= 536870927)
          {
            if (v69 == 536870916)
            {
              v70 = 0;
              goto LABEL_144;
            }

            if (v69 == 536870920)
            {
              v70 = 32;
              goto LABEL_144;
            }
          }

          else
          {
            switch(v69)
            {
              case 536870928:
                v70 = 64;
                goto LABEL_144;
              case 536870944:
                v70 = 96;
                goto LABEL_144;
              case 536870976:
                v70 = 128;
                goto LABEL_144;
            }
          }
        }

        else if (v69 <= 31)
        {
          if (v69 > 7)
          {
            if (v69 == 8)
            {
              v70 = 192;
              goto LABEL_144;
            }

            if (v69 == 16)
            {
              v70 = 224;
              goto LABEL_144;
            }
          }

          else
          {
            if (v69 == -1879048176)
            {
              v70 = 384;
              goto LABEL_144;
            }

            if (v69 == 4)
            {
              v70 = 160;
              goto LABEL_144;
            }
          }
        }

        else if (v69 <= 268435463)
        {
          if (v69 == 32)
          {
            v70 = 256;
            goto LABEL_144;
          }

          if (v69 == 64)
          {
            v70 = 288;
            goto LABEL_144;
          }
        }

        else
        {
          switch(v69)
          {
            case 268435464:
              v70 = 480;
              goto LABEL_144;
            case 268435472:
              v70 = 320;
              goto LABEL_144;
            case 268435488:
              v70 = 352;
              goto LABEL_144;
          }
        }

        v70 = 576;
LABEL_144:
        v71 = *(v183 + 8);
        v148 = v65;
        if (v71 > 285212703)
        {
          if (v71 <= 536870915)
          {
            if (v71 > 301989895)
            {
              if (v71 == 301989896)
              {
                v72 = 0x4000;
                goto LABEL_188;
              }

              if (v71 == 335544328)
              {
                v72 = 17408;
                goto LABEL_188;
              }
            }

            else
            {
              if (v71 == 285212704)
              {
                v72 = 13312;
                goto LABEL_188;
              }

              if (v71 == 285212736)
              {
                v72 = 14336;
                goto LABEL_188;
              }
            }
          }

          else if (v71 <= 536870927)
          {
            if (v71 == 536870916)
            {
              v72 = 0;
              goto LABEL_188;
            }

            if (v71 == 536870920)
            {
              v72 = 1024;
              goto LABEL_188;
            }
          }

          else
          {
            switch(v71)
            {
              case 536870928:
                v72 = 2048;
                goto LABEL_188;
              case 536870944:
                v72 = 3072;
                goto LABEL_188;
              case 536870976:
                v72 = 4096;
                goto LABEL_188;
            }
          }
        }

        else if (v71 <= 31)
        {
          if (v71 > 7)
          {
            if (v71 == 8)
            {
              v72 = 6144;
              goto LABEL_188;
            }

            if (v71 == 16)
            {
              v72 = 7168;
              goto LABEL_188;
            }
          }

          else
          {
            if (v71 == -1879048176)
            {
              v72 = 12288;
              goto LABEL_188;
            }

            if (v71 == 4)
            {
              v72 = 5120;
              goto LABEL_188;
            }
          }
        }

        else if (v71 <= 268435463)
        {
          if (v71 == 32)
          {
            v72 = 0x2000;
            goto LABEL_188;
          }

          if (v71 == 64)
          {
            v72 = 9216;
            goto LABEL_188;
          }
        }

        else
        {
          switch(v71)
          {
            case 268435464:
              v72 = 15360;
              goto LABEL_188;
            case 268435472:
              v72 = 10240;
              goto LABEL_188;
            case 268435488:
              v72 = 11264;
              goto LABEL_188;
          }
        }

        v72 = 18432;
LABEL_188:
        v73 = v62;
        v74 = v72 | v70;
        if (!v188)
        {
          goto LABEL_234;
        }

        v75 = *(v163 + 8);
        if (v75 > 285212703)
        {
          if (v75 <= 536870915)
          {
            if (v75 > 301989895)
            {
              if (v75 == 301989896)
              {
                v76 = 0x80000;
                goto LABEL_233;
              }

              if (v75 == 335544328)
              {
                v76 = 557056;
                goto LABEL_233;
              }
            }

            else
            {
              if (v75 == 285212704)
              {
                v76 = 425984;
                goto LABEL_233;
              }

              if (v75 == 285212736)
              {
                v76 = 458752;
                goto LABEL_233;
              }
            }
          }

          else if (v75 <= 536870927)
          {
            if (v75 == 536870916)
            {
              v76 = 0;
              goto LABEL_233;
            }

            if (v75 == 536870920)
            {
              v76 = 0x8000;
              goto LABEL_233;
            }
          }

          else
          {
            switch(v75)
            {
              case 536870928:
                v76 = 0x10000;
                goto LABEL_233;
              case 536870944:
                v76 = 98304;
                goto LABEL_233;
              case 536870976:
                v76 = 0x20000;
                goto LABEL_233;
            }
          }
        }

        else if (v75 <= 31)
        {
          if (v75 > 7)
          {
            if (v75 == 8)
            {
              v76 = 196608;
              goto LABEL_233;
            }

            if (v75 == 16)
            {
              v76 = 229376;
              goto LABEL_233;
            }
          }

          else
          {
            if (v75 == -1879048176)
            {
              v76 = 393216;
              goto LABEL_233;
            }

            if (v75 == 4)
            {
              v76 = 163840;
              goto LABEL_233;
            }
          }
        }

        else if (v75 <= 268435463)
        {
          if (v75 == 32)
          {
            v76 = 0x40000;
            goto LABEL_233;
          }

          if (v75 == 64)
          {
            v76 = 294912;
            goto LABEL_233;
          }
        }

        else
        {
          switch(v75)
          {
            case 268435464:
              v76 = 491520;
              goto LABEL_233;
            case 268435472:
              v76 = 327680;
              goto LABEL_233;
            case 268435488:
              v76 = 360448;
LABEL_233:
              v74 |= v76;
LABEL_234:
              v77 = *(v40 + 8);
              v155 = v74;
              if (v77 > 285212703)
              {
                if (v77 <= 536870915)
                {
                  if (v77 > 301989895)
                  {
                    if (v77 == 301989896)
                    {
                      v78 = 16;
                      goto LABEL_278;
                    }

                    if (v77 == 335544328)
                    {
                      v78 = 17;
                      goto LABEL_278;
                    }
                  }

                  else
                  {
                    if (v77 == 285212704)
                    {
                      v78 = 13;
                      goto LABEL_278;
                    }

                    if (v77 == 285212736)
                    {
                      v78 = 14;
                      goto LABEL_278;
                    }
                  }
                }

                else if (v77 <= 536870927)
                {
                  if (v77 == 536870916)
                  {
                    v154 = 0;
                    goto LABEL_279;
                  }

                  if (v77 == 536870920)
                  {
                    v78 = 1;
                    goto LABEL_278;
                  }
                }

                else
                {
                  switch(v77)
                  {
                    case 536870928:
                      v78 = 2;
                      goto LABEL_278;
                    case 536870944:
                      v78 = 3;
                      goto LABEL_278;
                    case 536870976:
                      v78 = 4;
                      goto LABEL_278;
                  }
                }
              }

              else if (v77 <= 31)
              {
                if (v77 > 7)
                {
                  if (v77 == 8)
                  {
                    v78 = 6;
                    goto LABEL_278;
                  }

                  if (v77 == 16)
                  {
                    v78 = 7;
                    goto LABEL_278;
                  }
                }

                else
                {
                  if (v77 == -1879048176)
                  {
                    v78 = 12;
                    goto LABEL_278;
                  }

                  if (v77 == 4)
                  {
                    v78 = 5;
                    goto LABEL_278;
                  }
                }
              }

              else if (v77 <= 268435463)
              {
                if (v77 == 32)
                {
                  v78 = 8;
                  goto LABEL_278;
                }

                if (v77 == 64)
                {
                  v78 = 9;
                  goto LABEL_278;
                }
              }

              else
              {
                switch(v77)
                {
                  case 268435464:
                    v78 = 15;
                    goto LABEL_278;
                  case 268435472:
                    v78 = 10;
                    goto LABEL_278;
                  case 268435488:
                    v78 = 11;
LABEL_278:
                    v154 = v78;
LABEL_279:
                    if (v169 == 268435472)
                    {
                      v79 = 4;
                    }

                    else
                    {
                      v79 = 8 * (v169 == -1879048176);
                    }

                    if (v171 == 268435472)
                    {
                      v80 = 32;
                    }

                    else
                    {
                      v80 = (v171 == -1879048176) << 6;
                    }

                    v164 = v64;
                    v81 = *(*(a1 + 16) + 1480);
                    v82 = ((v64 + 1) >> 1) * ((v166 + 1) >> 1);
                    v83 = v82 * v62;
                    if (v83 < 0x11)
                    {
                      v84 = 4;
                    }

                    else
                    {
                      v84 = 5;
                    }

                    v85 = v83 * v178;
                    if (v82 * v62 < 0x11)
                    {
                      v86 = 4;
                    }

                    else
                    {
                      v86 = 5;
                    }

                    v87 = 16 * (v81 << v86);
                    if (v85 <= v87)
                    {
                      v84 = 4;
                    }

                    v152 = v80;
                    v153 = v79;
                    if (v186 == 1)
                    {
                      if (v82 <= 0x80)
                      {
                        v88 = 0;
                      }

                      else
                      {
                        v88 = -1;
                      }

                      if (v82 <= 0x300)
                      {
                        v89 = v82 > 0x80;
                      }

                      else
                      {
                        v89 = 3;
                      }

                      if (v82 > 0x300)
                      {
                        v88 = -3;
                      }

                      v90 = v84 + v88;
                      if ((((1 << (v84 + v88)) - 1) & v62) != 0)
                      {
                        do
                        {
                          ++v89;
                          --v90;
                        }

                        while (v62 % (1 << v90));
                        v146 = 1 << v90;
                      }

                      else
                      {
                        v146 = 1 << v90;
                      }
                    }

                    else
                    {
                      v91 = v82 - 1;
                      v92 = (((v82 - 1 + (1 << (v84 - 2))) >> (v84 - 2)) * ((v62 + 3) >> 2)) / 0.97;
                      v93 = (((v82 - 1 + (1 << v84)) >> v84) * v62);
                      v94 = (((v82 - 1 + (1 << (v84 - 1))) >> (v84 - 1)) * ((v62 + 1) >> 1)) / 0.99;
                      v95 = v94 < v93;
                      if (v94 >= v93)
                      {
                        v94 = (((v91 + (1 << v84)) >> v84) * v62);
                      }

                      if (v92 < v94)
                      {
                        v95 = 2;
                      }

                      else
                      {
                        v92 = v94;
                      }

                      v96 = (v62 + 7) >> 3;
                      if (((((v91 + (1 << (v84 - 3))) >> (v84 - 3)) * v96) / 0.925) < v92)
                      {
                        v95 = 3;
                        v92 = (((v91 + (1 << (v84 - 3))) >> (v84 - 3)) * v96) / 0.925;
                      }

                      if (((((v91 + (1 << (v84 - 4))) >> (v84 - 4)) * ((v62 + 15) >> 4)) / 0.85) >= v92)
                      {
                        v97 = v95;
                      }

                      else
                      {
                        v97 = 4;
                      }

                      if (v83 < 0x11)
                      {
                        v97 = v95;
                      }

                      if (v85 > v87)
                      {
                        v90 = v97;
                      }

                      else
                      {
                        v90 = v95;
                      }

                      v89 = v84 - v90;
                      v146 = 1 << v90;
                    }

                    v98 = v81 << v84;
                    v99 = v83 >= 0x11 && v85 > v87;
                    v100 = !v99;
                    v101 = 2;
                    if (!v99)
                    {
                      v101 = 3;
                    }

                    if (v85 > 32 * v98 && v178 >= 0x11)
                    {
                      v103 = v100;
                    }

                    else
                    {
                      v103 = v101;
                    }

                    v104 = &a14WinogradLaunchParams + 6 * v103;
                    v105 = *(v104 + 2);
                    if (v105 >= 2)
                    {
                      v106 = 16;
                    }

                    else
                    {
                      v106 = 32;
                    }

                    v147 = v104[5];
                    v107 = *(&v58->super.super.isa + *MEMORY[0x277CD7400]);
                    v176 = *(&v58->super.super.isa + *MEMORY[0x277CD7410]);
                    v108 = v169 == 268435472 && v171 == 268435472;
                    if (v108)
                    {
                      v109 = (v162 >> 1) & 1;
                    }

                    else
                    {
                      v109 = 0;
                    }

                    v110 = [*(v184 + 232) graph];
                    v170 = v109;
                    v108 = v109 == 0;
                    v111 = v181 / v179;
                    if (v108)
                    {
                      v112 = 0;
                    }

                    else
                    {
                      v112 = 0x800000;
                    }

                    v113 = (((v186 & 3) << 8) | (2 * (v179 == 1))) & 0xFBFF | ((v168 & 1) << 10) | ((v156 - v174 / 2) >> 44) & 0x80000 | v153 | v152 | v112 | ((((v187 / v179) & 7) == 0) << 18) | ((v89 & 7) << 14) | ((v90 & 7) << 11) | ((v105 & 3) << 20) | ((((v106 - 1) & v111) == 0) << 17) | ((v107 != (v171 >> 3) * v176) << 22);
                    if (*(v110 + 84))
                    {
                      v114 = 0x1000000;
                    }

                    else
                    {
                      v114 = 0;
                    }

                    v195 = -1;
                    v196 = -1;
                    v197 = v113 | v114 | v188;
                    v198 = v154 | v155;
                    v199 = 0u;
                    v200 = 0u;
                    v201 = v157 | (v188 << 8) | 0x10000;
                    v202 = 0;
                    v145 = *(v184 + 232);
                    MPSLibrary::CreateUberShaderKey();
                    [a2 setComputePipelineState:{MPSLibrary::GetPipelineStateForMPSKey(), v145, v161, v160, 0, 0}];
                    MPSLibrary::ReleaseComputeState();
                    MPSLibrary::ReleaseMPSKey();
                    if (v105 >= 2)
                    {
                      v115 = 4;
                    }

                    else
                    {
                      v115 = 5;
                    }

                    v193 = *(v104 + 1);
                    v194 = v104[4];
                    v116 = *(v184 + 208);
                    v117 = *(v184 + 192);
                    MPSSetNDArraysOnComputeEncoder(a2, v184, 4, 0, 0);
                    [a2 setBuffer:objc_msgSend(v182 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v182, 0, 4, 0, 0) + v158, 29}];
                    if (v165)
                    {
                      v118 = 0;
                    }

                    else
                    {
                      v118 = v159;
                    }

                    [a2 setBuffer:-[MPSTemporaryNDArray buffer](v58 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v58, 0, 4, 0, 0) + v118, 28}];
                    [a2 setBuffer:objc_msgSend(v116 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v116, 0, 4, 0, 0) + v117, 27}];
                    v119 = ((v111 + v106 - 1) >> v115) * v179;
                    v209 = 0u;
                    v221 = 0u;
                    v220 = 0u;
                    v219 = 0u;
                    LODWORD(v206) = v179;
                    v120 = v187 / v179;
                    HIDWORD(v206) = v181 / v179;
                    v207 = v120;
                    v208 = v187;
                    LODWORD(v209) = v181;
                    v210 = v149;
                    v211 = v150;
                    v212 = v166;
                    v213 = v164;
                    v214 = v167;
                    v215 = v156 - v174 / 2;
                    v216 = v151 - v173 / 2;
                    LODWORD(v219) = 0;
                    v218 = 0u;
                    v217 = 0u;
                    WORD2(v219) = v119 / v179;
                    MPSGetUShortDivisorMagicNumber();
                    *(&v219 + 1) = v121;
                    LOWORD(v220) = (v166 + 1) >> 1;
                    MPSGetUIntDivisorMagicNumber();
                    v221 = v122;
                    v123 = *MEMORY[0x277CD7400];
                    v124 = *MEMORY[0x277CD73C8];
                    v125 = *&v182[v123] / (*&v182[v124] >> 3);
                    v126 = *MEMORY[0x277CD73D0];
                    v127 = &v116[v126];
                    v129 = *&v182[v126 + 4];
                    v128 = *&v182[v126 + 8];
                    v130 = *&v116[v123] / (*&v116[v124] >> 3);
                    v131 = *(v127 + 1);
                    v132 = *(v127 + 2);
                    if (v186)
                    {
                      v133 = v129 * v125;
                      v134 = v131 * v130;
                      v135 = 1;
                      v136 = *&v182[v123] / (*&v182[v124] >> 3);
                      LODWORD(v125) = v133;
                      v137 = *&v116[v123] / (*&v116[v124] >> 3);
                      LODWORD(v130) = v131 * v130;
                      v138 = 1;
                    }

                    else
                    {
                      v120 = v129 * v125 * (v187 / v179);
                      v133 = v129 * v125;
                      v134 = v131 * v130;
                      LODWORD(v136) = v128;
                      v135 = v133;
                      LODWORD(v137) = v132;
                      v138 = v131 * v130;
                      LODWORD(v111) = v131 * v130 * v111;
                    }

                    HIDWORD(v217) = v111;
                    DWORD2(v218) = v133 * v128;
                    HIDWORD(v218) = v134 * v132;
                    *(&v209 + 4) = __PAIR64__(v137, v136);
                    LODWORD(v217) = v125;
                    *(&v217 + 4) = __PAIR64__(v120, v130);
                    *&v218 = __PAIR64__(v138, v135);
                    v139 = *(&v58->super.super.isa + v123) / (*(&v58->super.super.isa + v124) >> 3);
                    if (v168 == 1)
                    {
                      v140 = v139;
                    }

                    else
                    {
                      v140 = 3;
                    }

                    if (v168 == 1)
                    {
                      LODWORD(v139) = v148;
                    }

                    LODWORD(v219) = v140;
                    HIDWORD(v209) = v139;
                    if ((atomic_load_explicit(&qword_27DF869E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DF869E0))
                    {
                      xmmword_27DF86A00 = 0u;
                      xmmword_27DF869F0 = 0u;
                      dword_27DF86A10 = 1065353216;
                      qword_27DF86A18 = 850045863;
                      xmmword_27DF86A20 = 0u;
                      unk_27DF86A30 = 0u;
                      xmmword_27DF86A40 = 0u;
                      qword_27DF86A50 = 0;
                      __cxa_atexit(MPSBufferCache::~MPSBufferCache, &xmmword_27DF869F0, &dword_2399F7000);
                      __cxa_guard_release(&qword_27DF869E0);
                    }

                    Buffer = MPSBufferCache::getBuffer(&xmmword_27DF869F0, [objc_msgSend(a3 "commandQueue")], 0x10uLL, 0);
                    v142 = [Buffer contents];
                    *v142 = 0;
                    v142[1] = 0;
                    [a2 setBuffer:Buffer offset:0 atIndex:24];
                    objc_msgSend_setBytes_length_atIndex_(a2);
                    v143 = 1;
                    if (!v170)
                    {
                      v143 = 2;
                    }

                    [a2 setThreadgroupMemoryLength:v147 << v143 atIndex:0];
                    [a2 setBuffer:0 offset:0 atIndex:25];
                    v192[0] = v119;
                    v192[1] = ((1 << v89) + ((v164 + 1) >> 1) * ((v166 + 1) >> 1) - 1) / (1 << v89);
                    v192[2] = (v73 + v146 - 1) / v146;
                    v190 = v193;
                    v191 = v194;
                    [a2 dispatchThreadgroups:v192 threadsPerThreadgroup:&v190];
                    if (v165)
                    {
                      MPSDecrementReadCount(v58);
                    }

                    v36 = 0;
                    v37 = v203;
                    if (!v203)
                    {
                      return v36;
                    }

LABEL_371:
                    v204 = v37;
                    operator delete(v37);
                    return v36;
                }
              }

              v78 = 18;
              goto LABEL_278;
          }
        }

        v76 = 589824;
        goto LABEL_233;
      }
    }

    else
    {
      v52 = 16;
      v51 = 16;
      v50 = 8;
      v49 = 0;
      v48 = 0;
      v53 = v203;
      v54 = v203 + 2;
      v151 = v41;
      if (!v5)
      {
        goto LABEL_87;
      }
    }

    v55 = v53 + 3;
    v56 = 1;
    v57 = v53;
    goto LABEL_88;
  }

  if (v5 != -1)
  {
    v165 = 0;
    v168 = v5;
    goto LABEL_55;
  }

LABEL_40:
  v25 = MPSNDArrayConvolutionDeviceBehavior::transposedWeights(a1, v9, a3, a2, v23, &v203, -1, 0);
  if (v25)
  {
    v165 = 1;
    v168 = v5;
    goto LABEL_55;
  }

  v36 = MPSNDArrayConvolutionDeviceBehaviorPreG13::EncodeNDArrayConvolution(a1, a2, a3, a4);
  v37 = v203;
  if (v203)
  {
    goto LABEL_371;
  }

  return v36;
}

void sub_239ACEF04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39)
{
  operator delete(__p);
  if (a39)
  {
    operator delete(a39);
    v40 = STACK[0x228];
    if (STACK[0x228])
    {
LABEL_6:
      STACK[0x230] = v40;
      operator delete(v40);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v40 = STACK[0x228];
    if (STACK[0x228])
    {
      goto LABEL_6;
    }
  }

  _Unwind_Resume(a1);
}

uint16x4_t MPSNDArrayConvolutionDeviceBehaviorA16::GetKernelDispatchParametersForKeyIntrinsics@<D0>(int32x4_t *a1@<X1>, uint64_t a2@<X8>, uint64_t a3@<X0>, int a4@<W2>, int a5@<W3>, uint64_t a6@<X4>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  GetKernelDispatchParametersForKeyIntrinsicsCommon(a2, a1, a4, a6, *(a3 + 8 * (a4 + 2 * a5) + 88), *(a3 + 128), *(a3 + 120), *(a3 + 16));
  *(a2 + 13) = 0;
  v9 = a1[1].i32[0];
  v8 = a1[1].i32[1];
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(*a1, xmmword_239B1F420)))) & 1) == 0 && v8 == 5 && v9 == 5 || (result = vmovn_s32(vmvnq_s8(vceqq_s32(*a1, xmmword_239B1F430))), result.i16[0] = vmaxv_u16(result), (result.i8[0] & 1) == 0) && v9 == 5 && v8 == 5)
  {
    result = 0x1000000020;
    *a2 = 0x1000000020;
    *(a2 + 8) = 16;
    *(a2 + 12) = 0;
  }

  return result;
}

double GetKernelDispatchParametersForKeyIntrinsicsCommon(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  if (!a6)
  {
    goto LABEL_14;
  }

  v8 = (a5 + 13);
  while (1)
  {
    v9 = *a7 == *a2 && a7[1] == *(a2 + 8);
    if (v9 && a7[2] == *(a2 + 16))
    {
      break;
    }

    v8 += 16;
    a7 += 3;
    if (!--a6)
    {
      goto LABEL_14;
    }
  }

  if (a5)
  {
    v11 = *(v8 - 13);
    v12 = *(v8 - 9);
    v13 = *(v8 - 5);
    v14 = *v8;
    v15 = *(v8 - 1);
  }

  else
  {
LABEL_14:
    v14 = 0;
    v15 = 0;
    v16 = (*a2 * *(a2 + 4) * *(a2 + 12) * *(a2 + 28));
    v17 = *(a8 + 1480) << 13;
    if (v17 <= v16)
    {
      v12 = 32;
    }

    else
    {
      v12 = 16;
    }

    v18 = 4;
    if (v17 <= v16)
    {
      v18 = 5;
    }

    v19 = *(a8 + 1480) << 8 << v18;
    if (v19 <= v16)
    {
      v11 = 32;
    }

    else
    {
      v11 = 16;
    }

    if ((*(a2 + 16) * *(a2 + 8) * *(a2 + 20)) < 0x20 || a3 == 1 || v19 > v16 || v17 > v16)
    {
      v13 = 16;
    }

    else
    {
      v13 = 32;
    }
  }

  *a1 = v11;
  *(a1 + 4) = v12;
  *(a1 + 8) = xmmword_239B0C120;
  *(a1 + 8) = v13;
  *(a1 + 12) = v15 & 1;
  *(a1 + 13) = v14 & 1;
  *&result = 32;
  *(a1 + 24) = xmmword_239B1F440;
  if (a4)
  {
    result = *a4;
    *a1 = *a4;
    *(a1 + 8) = *(a4 + 8);
    *(a1 + 12) = *(a4 + 12);
  }

  return result;
}

uint64_t MPSNDArrayConvolutionDeviceBehaviorA14::EncodeNDArrayConvolutionIntrinsics(uint64_t a1, void *a2, void *a3, int32x4_t *a4)
{
  v187 = *MEMORY[0x277D85DE8];
  v133 = a4->u32[2];
  v128 = a4->i32[3];
  v140 = a4[1].i64[0];
  v134 = a4[1].u64[1];
  v5 = a4[2].i64[1];
  v127 = a4[2].i64[0];
  v123 = a4[3].i64[1];
  v124 = a4[3].i64[0];
  v115 = a4[4].i64[1];
  v116 = a4[4].i64[0];
  v146 = a4[5].u64[0];
  v120 = a4[6].i64[0];
  v131 = a4[5].i64[1];
  v7 = a4[8].i64[0];
  v6 = a4[8].i64[1];
  v110 = *(v6 + *MEMORY[0x277CD7368]);
  v8 = &OBJC_IVAR___MPSNDArrayConvolution2D__ndArrayIdentity;
  v147 = a4[7].u8[8];
  if (a4[7].i8[8])
  {
    v8 = &OBJC_IVAR___MPSNDArrayConvolution2DGradientWithInput__ndArrayIdentity;
  }

  v9 = *(v6 + *v8);
  v111 = *(v6 + *MEMORY[0x277CD7360]);
  [v9 setLabel:?];
  v118 = [*(v7 + 232) inputTensorAtIndex:0];
  v142 = [*(v7 + 232) inputTensorAtIndex:1];
  v112 = [*(v7 + 232) inputTensorAtIndex:2];
  v136 = [*(v7 + 232) outputTensorAtIndex:0];
  v145 = v7;
  v109 = [*(v7 + 16) count];
  v10 = [*(a4[8].i64[0] + 232) graph];
  v11 = *(v10 + 64);
  v12 = *v11;
  v13 = v11[1];
  v126 = v5;
  if (*v11 == v13)
  {
    v16 = -1;
    goto LABEL_15;
  }

  v14 = v10;
  v15 = -1;
  v16 = -1;
  do
  {
    v17 = *v12;
    CoreOpInputAtIndex = MPSKernelDAG::GetCoreOpInputAtIndex(v14);
    v19 = *v12;
    if (v17 == *(CoreOpInputAtIndex + 32))
    {
      v15 = *(v19 + 76);
      if (v19 != *(MPSKernelDAG::GetCoreOpInputAtIndex(v14) + 32))
      {
        goto LABEL_5;
      }
    }

    else if (v19 != *(MPSKernelDAG::GetCoreOpInputAtIndex(v14) + 32))
    {
      goto LABEL_5;
    }

    v16 = *(*v12 + 76);
LABEL_5:
    ++v12;
  }

  while (v12 != v13);
  if (v16 == -1)
  {
LABEL_15:
    v20 = a2;
    v21 = v145;
    goto LABEL_16;
  }

  v20 = a2;
  if (v147)
  {
    v15 = -1;
    v21 = v145;
    goto LABEL_19;
  }

  v21 = v145;
  if (v15 == -1)
  {
LABEL_16:
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v15 = -1;
  }

LABEL_19:
  v22 = [*(v21 + 16) objectAtIndexedSubscript:v16];
  v23 = *(*(v21 + 8) + 80 * v16 + 64);
  if (v147)
  {
    v24 = *(v21 + 112);
    v25 = v21 + 32;
  }

  else
  {
    v24 = [*(v21 + 16) objectAtIndexedSubscript:v15];
    v25 = *(v21 + 8) + 80 * v15;
  }

  v107 = *(v25 + 64);
  v106 = v23;
  if (vmovn_s16(vzip1q_s8(*&v24[*MEMORY[0x277CD73D8]], *&v24[*MEMORY[0x277CD73D8]])).u32[0] == 50462976)
  {
    v26 = v24;
  }

  else
  {
    v27 = [objc_msgSend(v24 "descriptor")];
    v28 = [MEMORY[0x277CD7268] descriptorWithDataType:*&v24[*MEMORY[0x277CD73C8]] shape:v27];
    v29 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:a3 descriptor:v28];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v24 setReadCount:{objc_msgSend(v24, "readCount") + 1}];
    }

    v165 = v24;
    [v9 encodeToMPSCommandEncoder:v20 commandBuffer:a3 sourceArrays:objc_msgSend(MEMORY[0x277CBEA60] resultState:"arrayWithObjects:count:" destinationArray:&v165 kernelDAGObject:{1), 0, v29, 0}];
    v26 = v29;
  }

  v108 = v26;
  v125 = (*(*a1 + 48))(a1);
  if (v125)
  {
    v30 = *(v142 + 16);
    v166 = 0;
    v167 = 0;
    v165 = 0;
    v32 = *v30;
    v31 = v30[1];
    if (v31 != v32)
    {
      if (((v31 - v32) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<long>::__throw_length_error[abi:ne200100]();
    }

    v22 = MPSNDArrayConvolutionDeviceBehavior::transposedWeights(a1, v9, a3, v20, v22, &v165, v128, 0);
    if (v165)
    {
      v166 = v165;
      operator delete(v165);
    }
  }

  if (!v22)
  {
    return MPSNDArrayConvolutionDeviceBehaviorPreG13::EncodeNDArrayConvolution(a1, v20, a3, a4);
  }

  v33 = v131;
  v34 = HIDWORD(v131);
  v114 = v22;
  if (v147)
  {
    v33 = v120 + v124 * v131;
    v34 = HIDWORD(v120) + v123 * HIDWORD(v131);
    v35 = v112;
    v121 = v140;
  }

  else
  {
    v121 = v134;
    v134 = v140;
    v35 = v118;
  }

  v37 = v35;
  v141 = *(v142 + 8);
  v113 = *(v136 + 8);
  v132 = *(v35 + 8);
  if (v132 != -1879048176 && v132 != 268435472 && v132 != 268435488 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v141 != -1879048176 && v141 != 268435472 && v141 != 268435488 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v133 >= 2 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*v37 != 4 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*v142 != 4 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*v136 != 4 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v38 = *(v37 + 16);
  v40 = *v38;
  v39 = v38[1];
  if (v39 != v40)
  {
    if (((v39 - v40) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v50 = *(v142 + 16);
  v52 = *v50;
  v51 = v50[1];
  if (v51 != v52)
  {
    if (((v51 - v52) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v53 = *(v136 + 16);
  v55 = *v53;
  v54 = v53[1];
  if (v54 != v55)
  {
    if (((v54 - v55) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  if (v133)
  {
    v41 = 8;
    v42 = 8;
    v43 = 16;
    v44 = 0;
    v45 = 0;
    v46 = 16;
    v104 = v33;
    v105 = v34;
    if (!v128)
    {
      goto LABEL_65;
    }

    goto LABEL_60;
  }

  v45 = 16;
  v44 = 16;
  v43 = 8;
  v42 = 0;
  v41 = 0;
  v46 = 16;
  v104 = v33;
  v105 = v34;
  if (v128)
  {
LABEL_60:
    v47 = 24;
    v48 = 8;
    v49 = 0;
    goto LABEL_66;
  }

LABEL_65:
  v49 = 16;
  v46 = 8;
  v48 = 24;
  v47 = 0;
LABEL_66:
  v129 = MEMORY[0x18];
  v56 = *v45;
  v57 = *v44;
  v117 = *v43;
  v119 = *v42;
  LODWORD(v103) = *v41;
  HIDWORD(v103) = *v43;
  v58 = MEMORY[0x18];
  v59 = *v47;
  v60 = *v46 * v146;
  v61 = *v49;
  v62 = *v48;
  if (v147)
  {
    if (v60 != v121 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v59 != v134 && MTLReportFailureTypeEnabled())
    {
      goto LABEL_371;
    }
  }

  else
  {
    if (v60 != v134 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v59 != v121 && (MTLReportFailureTypeEnabled() & 1) != 0)
    {
LABEL_371:
      MTLReportFailure();
    }
  }

  if (v62 != v126 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v61 != v127 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v58 != v129 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v56 != v134 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v57 != v121 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v63 = *(v37 + 8);
  if (v63 > 285212703)
  {
    v64 = v126;
    if (v63 <= 536870915)
    {
      if (v63 > 301989895)
      {
        if (v63 == 301989896)
        {
          v65 = 512;
          v66 = *(v142 + 8);
          if (v66 <= 285212703)
          {
            goto LABEL_140;
          }
        }

        else
        {
          if (v63 != 335544328)
          {
            goto LABEL_161;
          }

          v65 = 544;
          v66 = *(v142 + 8);
          if (v66 <= 285212703)
          {
            goto LABEL_140;
          }
        }
      }

      else if (v63 == 285212704)
      {
        v65 = 416;
        v66 = *(v142 + 8);
        if (v66 <= 285212703)
        {
          goto LABEL_140;
        }
      }

      else
      {
        if (v63 != 285212736)
        {
          goto LABEL_161;
        }

        v65 = 448;
        v66 = *(v142 + 8);
        if (v66 <= 285212703)
        {
          goto LABEL_140;
        }
      }
    }

    else if (v63 <= 536870927)
    {
      if (v63 == 536870916)
      {
        v65 = 0;
        v66 = *(v142 + 8);
        if (v66 > 285212703)
        {
          goto LABEL_162;
        }

        goto LABEL_140;
      }

      if (v63 != 536870920)
      {
        goto LABEL_161;
      }

      v65 = 32;
      v66 = *(v142 + 8);
      if (v66 <= 285212703)
      {
        goto LABEL_140;
      }
    }

    else
    {
      switch(v63)
      {
        case 536870928:
          v65 = 64;
          v66 = *(v142 + 8);
          if (v66 <= 285212703)
          {
            goto LABEL_140;
          }

          break;
        case 536870944:
          v65 = 96;
          v66 = *(v142 + 8);
          if (v66 <= 285212703)
          {
            goto LABEL_140;
          }

          break;
        case 536870976:
          v65 = 128;
          v66 = *(v142 + 8);
          if (v66 <= 285212703)
          {
            goto LABEL_140;
          }

          break;
        default:
          goto LABEL_161;
      }
    }
  }

  else
  {
    v64 = v126;
    if (v63 <= 31)
    {
      if (v63 > 7)
      {
        if (v63 == 8)
        {
          v65 = 192;
          v66 = *(v142 + 8);
          if (v66 <= 285212703)
          {
            goto LABEL_140;
          }
        }

        else
        {
          if (v63 != 16)
          {
            goto LABEL_161;
          }

          v65 = 224;
          v66 = *(v142 + 8);
          if (v66 <= 285212703)
          {
            goto LABEL_140;
          }
        }
      }

      else if (v63 == -1879048176)
      {
        v65 = 384;
        v66 = *(v142 + 8);
        if (v66 <= 285212703)
        {
          goto LABEL_140;
        }
      }

      else
      {
        if (v63 != 4)
        {
          goto LABEL_161;
        }

        v65 = 160;
        v66 = *(v142 + 8);
        if (v66 <= 285212703)
        {
          goto LABEL_140;
        }
      }
    }

    else if (v63 <= 268435463)
    {
      if (v63 == 32)
      {
        v65 = 256;
        v66 = *(v142 + 8);
        if (v66 <= 285212703)
        {
          goto LABEL_140;
        }
      }

      else
      {
        if (v63 != 64)
        {
          goto LABEL_161;
        }

        v65 = 288;
        v66 = *(v142 + 8);
        if (v66 <= 285212703)
        {
          goto LABEL_140;
        }
      }
    }

    else
    {
      switch(v63)
      {
        case 268435464:
          v65 = 480;
          v66 = *(v142 + 8);
          if (v66 <= 285212703)
          {
            goto LABEL_140;
          }

          break;
        case 268435472:
          v65 = 320;
          v66 = *(v142 + 8);
          if (v66 <= 285212703)
          {
            goto LABEL_140;
          }

          break;
        case 268435488:
          v65 = 352;
          v66 = *(v142 + 8);
          if (v66 > 285212703)
          {
            break;
          }

LABEL_140:
          if (v66 <= 31)
          {
            if (v66 > 7)
            {
              if (v66 == 8)
              {
                v67 = 6144;
              }

              else
              {
                if (v66 != 16)
                {
                  goto LABEL_183;
                }

                v67 = 7168;
              }
            }

            else if (v66 == -1879048176)
            {
              v67 = 12288;
            }

            else
            {
              if (v66 != 4)
              {
                goto LABEL_183;
              }

              v67 = 5120;
            }
          }

          else if (v66 <= 268435463)
          {
            if (v66 == 32)
            {
              v67 = 0x2000;
            }

            else
            {
              if (v66 != 64)
              {
                goto LABEL_183;
              }

              v67 = 9216;
            }
          }

          else
          {
            switch(v66)
            {
              case 268435464:
                v67 = 15360;
                break;
              case 268435472:
                v67 = 10240;
                break;
              case 268435488:
                v67 = 11264;
                goto LABEL_184;
              default:
LABEL_183:
                v67 = 18432;
                break;
            }
          }

          goto LABEL_184;
        default:
LABEL_161:
          v65 = 576;
          v66 = *(v142 + 8);
          if (v66 > 285212703)
          {
            break;
          }

          goto LABEL_140;
      }
    }
  }

LABEL_162:
  if (v66 <= 536870915)
  {
    if (v66 > 301989895)
    {
      if (v66 == 301989896)
      {
        v67 = 0x4000;
      }

      else
      {
        if (v66 != 335544328)
        {
          goto LABEL_183;
        }

        v67 = 17408;
      }
    }

    else if (v66 == 285212704)
    {
      v67 = 13312;
    }

    else
    {
      if (v66 != 285212736)
      {
        goto LABEL_183;
      }

      v67 = 14336;
    }
  }

  else if (v66 <= 536870927)
  {
    if (v66 == 536870916)
    {
      v67 = 0;
    }

    else
    {
      if (v66 != 536870920)
      {
        goto LABEL_183;
      }

      v67 = 1024;
    }
  }

  else
  {
    switch(v66)
    {
      case 536870928:
        v67 = 2048;
        break;
      case 536870944:
        v67 = 3072;
        break;
      case 536870976:
        v67 = 4096;
        break;
      default:
        goto LABEL_183;
    }
  }

LABEL_184:
  v68 = v121 / v146;
  v69 = v67 | v65;
  v70 = v134 / v146;
  if (v147)
  {
    v71 = *(v112 + 8);
    if (v71 > 285212703)
    {
      if (v71 <= 536870915)
      {
        if (v71 > 301989895)
        {
          if (v71 == 301989896)
          {
            v72 = 0x80000;
          }

          else
          {
            if (v71 != 335544328)
            {
              goto LABEL_228;
            }

            v72 = 557056;
          }
        }

        else if (v71 == 285212704)
        {
          v72 = 425984;
        }

        else
        {
          if (v71 != 285212736)
          {
            goto LABEL_228;
          }

          v72 = 458752;
        }
      }

      else if (v71 <= 536870927)
      {
        if (v71 == 536870916)
        {
          v72 = 0;
        }

        else
        {
          if (v71 != 536870920)
          {
            goto LABEL_228;
          }

          v72 = 0x8000;
        }
      }

      else
      {
        switch(v71)
        {
          case 536870928:
            v72 = 0x10000;
            break;
          case 536870944:
            v72 = 98304;
            break;
          case 536870976:
            v72 = 0x20000;
            break;
          default:
            goto LABEL_228;
        }
      }
    }

    else if (v71 <= 31)
    {
      if (v71 > 7)
      {
        if (v71 == 8)
        {
          v72 = 196608;
        }

        else
        {
          if (v71 != 16)
          {
            goto LABEL_228;
          }

          v72 = 229376;
        }
      }

      else if (v71 == -1879048176)
      {
        v72 = 393216;
      }

      else
      {
        if (v71 != 4)
        {
          goto LABEL_228;
        }

        v72 = 163840;
      }
    }

    else if (v71 <= 268435463)
    {
      if (v71 == 32)
      {
        v72 = 0x40000;
      }

      else
      {
        if (v71 != 64)
        {
          goto LABEL_228;
        }

        v72 = 294912;
      }
    }

    else
    {
      switch(v71)
      {
        case 268435464:
          v72 = 491520;
          break;
        case 268435472:
          v72 = 327680;
          break;
        case 268435488:
          v72 = 360448;
          break;
        default:
LABEL_228:
          v72 = 589824;
          break;
      }
    }

    v69 |= v72;
  }

  v73 = *(v136 + 8);
  if (v73 > 285212703)
  {
    if (v73 <= 536870915)
    {
      if (v73 > 301989895)
      {
        if (v73 == 301989896)
        {
          v74 = 16;
        }

        else
        {
          if (v73 != 335544328)
          {
            goto LABEL_273;
          }

          v74 = 17;
        }
      }

      else if (v73 == 285212704)
      {
        v74 = 13;
      }

      else
      {
        if (v73 != 285212736)
        {
          goto LABEL_273;
        }

        v74 = 14;
      }
    }

    else if (v73 <= 536870927)
    {
      if (v73 == 536870916)
      {
        v74 = 0;
      }

      else
      {
        if (v73 != 536870920)
        {
          goto LABEL_273;
        }

        v74 = 1;
      }
    }

    else
    {
      switch(v73)
      {
        case 536870928:
          v74 = 2;
          break;
        case 536870944:
          v74 = 3;
          break;
        case 536870976:
          v74 = 4;
          break;
        default:
          goto LABEL_273;
      }
    }
  }

  else if (v73 <= 31)
  {
    if (v73 > 7)
    {
      if (v73 == 8)
      {
        v74 = 6;
      }

      else
      {
        if (v73 != 16)
        {
          goto LABEL_273;
        }

        v74 = 7;
      }
    }

    else if (v73 == -1879048176)
    {
      v74 = 12;
    }

    else
    {
      if (v73 != 4)
      {
        goto LABEL_273;
      }

      v74 = 5;
    }
  }

  else if (v73 <= 268435463)
  {
    if (v73 == 32)
    {
      v74 = 8;
    }

    else
    {
      if (v73 != 64)
      {
        goto LABEL_273;
      }

      v74 = 9;
    }
  }

  else
  {
    switch(v73)
    {
      case 268435464:
        v74 = 15;
        break;
      case 268435472:
        v74 = 10;
        break;
      case 268435488:
        v74 = 11;
        break;
      default:
LABEL_273:
        v74 = 18;
        break;
    }
  }

  v157 = v119;
  v158 = v117;
  v159 = v134 / v146;
  v160 = v121 / v146;
  v161 = v127;
  v162 = v64;
  v163 = v146;
  v164 = v129;
  if (v147)
  {
    v159 = v121 / v146;
    v160 = v134 / v146;
  }

  v156 = 0;
  memset(v155, 0, sizeof(v155));
  (*(*a1 + 128))(v155);
  if (((v121 / v146) & 0x1F) == 0x10)
  {
    v75 = 16;
  }

  else
  {
    v75 = DWORD2(v155[0]);
  }

  v143 = v75;
  if (((v121 / v146) & 0x1F) == 0x10)
  {
    v76 = 16;
  }

  else
  {
    v76 = LODWORD(v155[0]);
  }

  v102 = *(v145 + 208);
  v139 = DWORD1(v155[0]);
  v77 = BYTE12(v155[0]);
  v137 = BYTE13(v155[0]);
  v78 = *(v145 + 192);
  v79 = [*(v145 + 232) finalOp];
  (*(*v79 + 16))(v79);
  v135 = v77;
  if (v141 > 268435487)
  {
    if (v141 <= 335544327)
    {
      if (v141 == 268435488)
      {
        goto LABEL_322;
      }

      if (v141 != 301989896)
      {
        goto LABEL_320;
      }

      v80 = v132;
      if (v132 > 268435487)
      {
        goto LABEL_312;
      }
    }

    else
    {
      switch(v141)
      {
        case 335544328:
          v80 = v132;
          if (v132 > 268435487)
          {
            goto LABEL_312;
          }

          break;
        case 536870920:
          v80 = v132;
          if (v132 <= 268435487)
          {
            break;
          }

          goto LABEL_312;
        case 536870944:
          v80 = v132;
          if (v132 > 268435487)
          {
            goto LABEL_312;
          }

          break;
        default:
          goto LABEL_320;
      }
    }
  }

  else if (v141 <= 31)
  {
    if (v141 == -1879048176)
    {
      v80 = v132;
      if (v132 > 268435487)
      {
        goto LABEL_312;
      }
    }

    else
    {
      if (v141 != 8)
      {
        goto LABEL_320;
      }

      v80 = v132;
      if (v132 > 268435487)
      {
        goto LABEL_312;
      }
    }
  }

  else
  {
    switch(v141)
    {
      case 32:
        v80 = v132;
        if (v132 > 268435487)
        {
          goto LABEL_312;
        }

        break;
      case 268435464:
        v80 = v132;
        if (v132 > 268435487)
        {
          goto LABEL_312;
        }

        break;
      case 268435472:
        v80 = v132;
        if (v132 <= 268435487)
        {
          break;
        }

LABEL_312:
        if (v80 <= 335544327)
        {
          if (v80 == 268435488 || v80 == 301989896)
          {
            goto LABEL_337;
          }
        }

        else if (v80 == 335544328 || v80 == 536870920 || v80 == 536870944)
        {
          goto LABEL_337;
        }

LABEL_335:
        if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        goto LABEL_337;
      default:
LABEL_320:
        if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

LABEL_322:
        v80 = v132;
        if (v132 <= 268435487)
        {
          break;
        }

        goto LABEL_312;
    }
  }

  if (v80 <= 31)
  {
    if (v80 != -1879048176 && v80 != 8)
    {
      goto LABEL_335;
    }
  }

  else if (v80 != 32 && v80 != 268435464 && v80 != 268435472)
  {
    goto LABEL_335;
  }

LABEL_337:
  v122 = v141 >> 3;
  memset(&v150[3], 255, 24);
  v150[6] = v74 | v69;
  v151 = 0u;
  v152 = 0u;
  v153 = v109 | (v147 << 8) | 0x10000;
  v154 = 0;
  v101 = *(v145 + 232);
  MPSLibrary::CreateUberShaderKey();
  [a2 setComputePipelineState:{MPSLibrary::GetPipelineStateForMPSKey(), v101, v111, v110, 0, 0}];
  MPSLibrary::ReleaseComputeState();
  MPSLibrary::ReleaseMPSKey();
  memset(v186, 0, 128);
  v184 = 0u;
  v185 = 0u;
  v182 = 0u;
  v183 = 0u;
  v180 = 0u;
  v181 = 0u;
  LODWORD(v165) = v70;
  HIDWORD(v165) = (v70 + 3) & 0xFFFFFFFC;
  LODWORD(v166) = log2(((v70 + 3) & 0xFFFFFFFFFFFFFFFCLL));
  HIDWORD(v166) = 0;
  LODWORD(v167) = v68;
  WORD2(v167) = v127;
  HIWORD(v167) = v126;
  v168 = v146;
  v169 = 0;
  v171 = v103;
  v172 = 0;
  v170 = v129;
  v173 = __PAIR64__(v117, v119);
  v174 = v103;
  LODWORD(v81) = v104 - (v116 * (v127 - 1) + 1) / 2;
  DWORD1(v81) = v105 - (v115 * (v126 - 1) + 1) / 2;
  v175 = v81;
  v177 = v123;
  v176 = v124;
  v179 = v115;
  v178 = v116;
  v82 = *MEMORY[0x277CD7400];
  v83 = *&v108[v82];
  v84 = *MEMORY[0x277CD73D0];
  v85 = v83 * *&v108[v84 + 4];
  v86 = v132 >> 3;
  HIDWORD(v81) = 1;
  LODWORD(v81) = v85 * *&v108[v84 + 8] / v86;
  DWORD1(v81) = v85 / v86;
  DWORD2(v81) = v83 / v86;
  v181 = v81;
  v87 = *&v102[v82];
  v88 = v87 * *&v102[v84 + 4];
  v89 = v113 >> 3;
  HIDWORD(v81) = 1;
  LODWORD(v81) = v88 * *&v102[v84 + 8] / v89;
  DWORD1(v81) = v88 / v89;
  DWORD2(v81) = v87 / v89;
  HIDWORD(v90) = 1;
  v182 = v81;
  v91 = *&v108[v82];
  v92 = v91 * *&v108[v84 + 4];
  HIDWORD(v81) = 1;
  LODWORD(v81) = v92 * *&v108[v84 + 8] / v86;
  DWORD1(v81) = v92 / v86;
  DWORD2(v81) = v91 / v86;
  v183 = v81;
  v93 = *(&v114->super.super.isa + v82);
  v94 = v114 + v84;
  v95 = v93 * *(v94 + 1);
  LODWORD(v90) = v95 * *(v94 + 2) / v122;
  DWORD1(v90) = v95 / v122;
  DWORD2(v90) = v93 / v122;
  v184 = v90;
  v186[0] = 0;
  v185 = 0uLL;
  memset(&v186[2], 0, 112);
  MPSSetNDArraysOnComputeEncoder(a2, v145, 4, 0, 0);
  [a2 setBuffer:objc_msgSend(v108 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v108, 0, 4, 0, 0) + v107, 29}];
  if (v125)
  {
    v96 = 0;
  }

  else
  {
    v96 = v106;
  }

  [a2 setBuffer:-[MPSTemporaryNDArray buffer](v114 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v114, 0, 4, 0, 0) + v96, 28}];
  [a2 setBuffer:objc_msgSend(v102 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v102, 0, 4, 0, 0) + v78, 27}];
  if ((atomic_load_explicit(&qword_27DF869E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DF869E8))
  {
    xmmword_27DF86A68 = 0u;
    xmmword_27DF86A58 = 0u;
    dword_27DF86A78 = 1065353216;
    qword_27DF86A80 = 850045863;
    xmmword_27DF86A88 = 0u;
    unk_27DF86A98 = 0u;
    xmmword_27DF86AA8 = 0u;
    qword_27DF86AB8 = 0;
    __cxa_atexit(MPSBufferCache::~MPSBufferCache, &xmmword_27DF86A58, &dword_2399F7000);
    __cxa_guard_release(&qword_27DF869E8);
  }

  Buffer = MPSBufferCache::getBuffer(&xmmword_27DF86A58, [objc_msgSend(a3 "commandQueue")], 0x10uLL, 0);
  v98 = [Buffer contents];
  *v98 = 0;
  v98[1] = 0;
  [a2 setBuffer:Buffer offset:0 atIndex:24];
  objc_msgSend_setBytes_length_atIndex_(a2);
  v99 = (v132 >> 3) * (v143 * v139);
  if (!v135)
  {
    v99 = 0;
  }

  v100 = (v141 >> 3) * (v143 * v76);
  if (!v137)
  {
    v100 = 0;
  }

  [a2 setThreadgroupMemoryLength:v99 + v100 atIndex:0];
  [a2 setBuffer:0 offset:0 atIndex:25];
  v150[0] = (v68 + v76 - 1) / v76 * v146;
  v150[1] = (v139 + v117 * v119 - 1) / v139;
  v150[2] = v129;
  v148 = xmmword_239B1F450;
  v149 = 1;
  [a2 dispatchThreadgroups:v150 threadsPerThreadgroup:&v148];
  if (v125)
  {
    MPSDecrementReadCount(v114);
  }

  operator delete(0);
  operator delete(0);
  operator delete(0);
  return 0;
}

void sub_239AD132C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, void *a21, void *a22)
{
  operator delete(__p);
  operator delete(a21);
  if (!a22)
  {
    _Unwind_Resume(a1);
  }

  operator delete(a22);
  _Unwind_Resume(a1);
}

uint64_t MPSNDArrayConvolutionA14FunctionConstructor(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = a2[8];
  v7 = MPSCreateFunctionConstantValues();
  v8 = v7;
  v35 = v6 >> 4;
  v34 = (v6 >> 8) & 0xF;
  v33[1] = v6 >> 12;
  v33[0] = v6 >> 12;
  v32 = BYTE2(v6) & 0xF;
  v31 = (v6 >> 20) & 0xF;
  v30 = BYTE3(v6) & 1;
  v29 = (v6 >> 25) & 7;
  v28 = (v6 >> 28) & 7;
  v27 = (v6 & 0x80000000) != 0;
  v26 = BYTE4(v6) & 1;
  v25 = (v6 & 0x200000000) != 0;
  v24 = (v6 & 0x400000000) != 0;
  v23 = (v6 & 0x800000000) != 0;
  v22 = (v6 & 0x1000000000) != 0;
  v21 = (v6 & 0x2000000000) != 0;
  v20 = (v6 & 0x4000000000) != 0;
  v19 = (v6 >> 39) & 7;
  v18 = (v6 >> 42) & 7;
  v17 = (v6 >> 45) & 7;
  v16 = BYTE6(v6) & 1;
  v15 = (v6 & 0x2000000000000) != 0;
  v14 = (v6 & 0x4000000000000) != 0;
  v13 = (v6 & 0x8000000000000) != 0;
  v12 = (v6 & 0x10000000000000) != 0;
  v11 = (v6 & 0x20000000000000) != 0;
  v36 = v6 & 0xF;
  if ((v6 & 0xF) != 0)
  {
    [v7 setConstantValue:&v36 type:37 atIndex:115];
  }

  if (v35)
  {
    [v8 setConstantValue:&v35 type:37 atIndex:114];
  }

  if (v6 >= 0x1000u)
  {
    [v8 setConstantValue:v33 type:42 atIndex:113];
  }

  if (v34)
  {
    [v8 setConstantValue:&v34 type:41 atIndex:112];
  }

  if (v32)
  {
    [v8 setConstantValue:&v32 type:37 atIndex:111];
  }

  if (v31)
  {
    [v8 setConstantValue:&v31 type:37 atIndex:110];
  }

  [v8 setConstantValue:&v30 type:53 atIndex:109];
  [v8 setConstantValue:&v29 type:37 atIndex:108];
  [v8 setConstantValue:&v28 type:37 atIndex:107];
  [v8 setConstantValue:&v27 type:53 atIndex:106];
  [v8 setConstantValue:&v26 type:53 atIndex:105];
  [v8 setConstantValue:&v25 type:53 atIndex:104];
  [v8 setConstantValue:&v24 type:53 atIndex:103];
  [v8 setConstantValue:&v23 type:53 atIndex:102];
  [v8 setConstantValue:&v22 type:53 atIndex:101];
  [v8 setConstantValue:&v21 type:53 atIndex:100];
  [v8 setConstantValue:&v20 type:53 atIndex:99];
  [v8 setConstantValue:&v19 type:41 atIndex:98];
  [v8 setConstantValue:&v18 type:41 atIndex:97];
  [v8 setConstantValue:&v17 type:41 atIndex:96];
  [v8 setConstantValue:&v16 type:53 atIndex:95];
  [v8 setConstantValue:&v15 type:53 atIndex:94];
  [v8 setConstantValue:&v14 type:53 atIndex:93];
  [v8 setConstantValue:&v13 type:53 atIndex:92];
  [v8 setConstantValue:&v12 type:53 atIndex:91];
  [v8 setConstantValue:&v11 type:53 atIndex:90];
  AddFunctionConstantList(v8, a3);
  v9 = _MPSNewSpecializedFunction();

  return v9;
}

uint64_t MPSNDArrayConvolutionDeviceBehaviorA14::EncodeNDArrayConvolution(uint64_t a1, void *a2, void *a3, int32x4_t *a4)
{
  HaveRectangularStrides = mainSourcesHaveRectangularStrides(a4);
  if (HaveRectangularStrides)
  {
    if (a4[7].i8[8])
    {
      goto LABEL_3;
    }

    v11 = *(a4[8].i64[1] + 304);
    if (v11 == 1)
    {
LABEL_14:

      return MPSNDArrayConvolutionDeviceBehaviorA14::EncodeNDArrayConvolutionIntrinsics(a1, a2, a3, a4);
    }

    if (v11 != 2)
    {
LABEL_3:
      IsWinogradSupported = MPSNDArrayConvolutionDeviceBehaviorA14::IsWinogradSupported(HaveRectangularStrides, a4);
      if (IsWinogradSupported)
      {

        return MPSNDArrayConvolutionDeviceBehaviorA14::EncodeNDArrayConvolutionWinograd(a1, a2, a3, a4);
      }

      if (MPSNDArrayConvolutionDeviceBehaviorA14::IsIntrinsicsSupported(IsWinogradSupported, a4))
      {
        goto LABEL_14;
      }
    }

    return MPSNDArrayConvolutionDeviceBehaviorPreG13::EncodeNDArrayConvolution(a1, a2, a3, a4);
  }

  else
  {

    return MPSNDArrayConvolutionDeviceBehavior::EncodeNDArrayConvolution(a1, a2, a3, a4->i64);
  }
}

BOOL ParseAutoTuningKernelParameters(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (a1)
  {
    v3 = *a2;
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = a2[1] * v3;
      v6 = a2[11];
      v7 = *(a1 + 32);
      if (v7)
      {
        LOBYTE(v4) = 0;
        v8 = 1;
        v6 = (v6 + v7 - 1) / v7;
      }

      else
      {
        LOBYTE(v4) = 1;
        v8 = 1;
        v5 = (v5 + *(a1 + 36) - 1) / *(a1 + 36);
      }
    }

    else
    {
      if (*(a1 + 45))
      {
        v3 = (v3 + 1) & 0xFFFFFFFE;
      }

      v5 = v3 * a2[1];
      v9 = a2[11];
      v10 = *(a1 + 32);
      v12 = v5 * v9;
      if (v10)
      {
        v6 = (v9 + v10 - 1) / v10;
      }

      else
      {
        v6 = 0;
      }

      if (v10)
      {
        v12 = v5;
      }

      v11 = *(a1 + 36) * (1 << *(a1 + 8));
      v8 = (v12 + v11 - 1) / v11;
    }

    v13 = *(a1 + 44);
    v14 = *(a1 + 8);
    *&v15 = *a1;
    *(&v15 + 1) = HIDWORD(*a1);
    v16 = v15;
    *&v15 = v14;
    *(&v15 + 1) = HIDWORD(v14);
    *a3 = v16;
    *(a3 + 16) = v15;
    *&v16 = *(a1 + 16);
    v17 = *(a1 + 24);
    *&v15 = v16;
    *(&v15 + 1) = DWORD1(v16);
    v18 = v15;
    *&v15 = v17;
    *(&v15 + 1) = HIDWORD(v17);
    *(a3 + 32) = v18;
    *(a3 + 48) = v15;
    *(a3 + 64) = v6;
    *(a3 + 72) = v8;
    *(a3 + 80) = *(a1 + 40);
    *(a3 + 84) = 0;
    *(a3 + 86) = v13;
    *(a3 + 88) = v5;
    *(a3 + 96) = v4;
  }

  return a1 != 0;
}

void MPSNDArrayConvolutionDeviceBehaviorA16::GetKernelParameters(void *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  if (a4)
  {
    if (ParseAutoTuningKernelParameters(a4, a3, a6))
    {
      return;
    }
  }

  else if (ParseAutoTuningKernelParameters(a1[19], a3, a6))
  {
    return;
  }

  v12 = *(a3 + 11);
  *v54 = v12;
  v13 = *a3;
  *&v54[4] = vuzp1q_s32(*(a3 + 2), *a3);
  *&v54[20] = vmovn_s64(*(a3 + 56));
  *&v54[28] = a5;
  v55 = *(a3 + 32);
  if (*v54 ^ 0x1C000000010 | *&v54[8] ^ 0x1000000180 | *&v54[16] ^ 0x300000010 | *&v54[24] ^ 0x1000001000000003 | v55)
  {
    if (*v54 ^ 0x6000000010 | *&v54[8] ^ 0x1C00000100 | *&v54[16] ^ 0x50000001CLL | *&v54[24] ^ 0x1000001000000005 | v55)
    {
      if (*v54 ^ 0x40000000040 | *&v54[8] ^ 0x700000800 | *&v54[16] ^ 0x100000007 | *&v54[24] ^ 0x1000001000000001 | v55)
      {
        if (*v54 ^ 0x3000000010 | *&v54[8] ^ 0x2300000040 | *&v54[16] ^ 0x500000023 | *&v54[24] ^ 0x1000001000000005 | v55)
        {
          if (*v54 ^ 0x1C000000010 | *&v54[8] ^ 0x1000000180 | *&v54[16] ^ 0x300000010 | *&v54[24] ^ 0x1000002000000003 | v55)
          {
            if (*v54 ^ 0x6000000010 | *&v54[8] ^ 0x1C00000100 | *&v54[16] ^ 0x50000001CLL | *&v54[24] ^ 0x1000002000000005 | v55)
            {
              if (*v54 ^ 0x40000000040 | *&v54[8] ^ 0x700000800 | *&v54[16] ^ 0x100000007 | *&v54[24] ^ 0x1000002000000001 | v55)
              {
                if (*v54 ^ 0x3000000010 | *&v54[8] ^ 0x2300000040 | *&v54[16] ^ 0x500000023 | *&v54[24] ^ 0x1000002000000005 | v55)
                {
                  if (*v54 == 0x1C000000010 && *&v54[8] == 0x1000000180 && *&v54[16] == 0x300000010 && *&v54[24] == 0x1000001000000003 && v55 == 1)
                  {
                    v46 = &unk_239B4DDB0;
                  }

                  else if (*v54 == 0x6000000010 && *&v54[8] == 0x1C00000100 && *&v54[16] == 0x50000001CLL && *&v54[24] == 0x1000001000000005 && v55 == 1)
                  {
                    v46 = &unk_239B4DDD8;
                  }

                  else if (*v54 == 0x40000000040 && *&v54[8] == 0x700000800 && *&v54[16] == 0x100000007 && *&v54[24] == 0x1000001000000001 && v55 == 1)
                  {
                    v46 = &unk_239B4DE00;
                  }

                  else if (*v54 == 0x3000000010 && *&v54[8] == 0x2300000040 && *&v54[16] == 0x500000023 && *&v54[24] == 0x1000001000000005 && v55 == 1)
                  {
                    v46 = &unk_239B4DE28;
                  }

                  else if (*v54 == 0x1C000000010 && *&v54[8] == 0x1000000180 && *&v54[16] == 0x300000010 && *&v54[24] == 0x1000002000000003 && v55 == 1)
                  {
                    v46 = &unk_239B4DE50;
                  }

                  else if (*v54 == 0x6000000010 && *&v54[8] == 0x1C00000100 && *&v54[16] == 0x50000001CLL && *&v54[24] == 0x1000002000000005 && v55 == 1)
                  {
                    v46 = &unk_239B4DE78;
                  }

                  else if (*v54 == 0x40000000040 && *&v54[8] == 0x700000800 && *&v54[16] == 0x100000007 && *&v54[24] == 0x1000002000000001 && v55 == 1)
                  {
                    v46 = &unk_239B4DEA0;
                  }

                  else
                  {
                    if (*v54 != 0x3000000010 || *&v54[8] != 0x2300000040 || *&v54[16] != 0x500000023 || *&v54[24] != 0x1000002000000005 || v55 != 1)
                    {
                      MPSNDArrayConvolutionDeviceBehaviorA15X::GetKernelParameters(a1, a2, a3, a4, a6);
                      return;
                    }

                    v46 = &unk_239B4DEC8;
                  }
                }

                else
                {
                  v46 = &unk_239B4DD88;
                }
              }

              else
              {
                v46 = &unk_239B4DD60;
              }
            }

            else
            {
              v46 = &unk_239B4DD38;
            }
          }

          else
          {
            v46 = &unk_239B4DD10;
          }
        }

        else
        {
          v46 = &unk_239B4DCE8;
        }
      }

      else
      {
        v46 = &unk_239B4DCC0;
      }
    }

    else
    {
      v46 = &unk_239B4DC98;
    }
  }

  else
  {
    v46 = &a16KernelParams;
  }

  v47 = v46[9];
  *a6 = v47 & 7;
  *(a6 + 8) = (v47 >> 3) & 7;
  v48 = vdup_n_s32(v47);
  v49 = vand_s8(vshl_u32(v48, 0xFFFFFFF7FFFFFFFALL), 0x300000007);
  v50 = vand_s8(vshl_u32(v48, 0xFFFFFFF5FFFFFFF3), 0x300000003);
  *&v51 = v49.u32[0];
  *(&v51 + 1) = v49.u32[1];
  v52 = v51;
  *&v51 = v50.u32[0];
  *(&v51 + 1) = v50.u32[1];
  *(a6 + 16) = v52;
  *(a6 + 32) = v51;
  *(a6 + 48) = vdupq_n_s64(1uLL);
  *(a6 + 80) = 0;
  *(a6 + 81) = (v47 & 0x8000000) != 0;
  *(a6 + 82) = (v47 & 0x10000000) != 0;
  *(a6 + 83) = 0;
  *(a6 + 85) = 0;
  *(a6 + 86) = (v47 & 0x20000000) != 0;
  *(a6 + 87) = (v47 & 0x40000000) != 0;
  *(a6 + 88) = 0;
  *(a6 + 96) = 0;
  v53 = (v12 + ((v47 >> 15) & 0x3F) - 1) / ((v47 >> 15) & 0x3F);
  if ((v47 & 0x1F8000) != 0)
  {
    v12 = 1;
  }

  *(a6 + 64) = v53;
  *(a6 + 72) = ((((v47 >> 21) & 0x3F) << v49.i8[0]) + *(&v13 + 1) * v13 * v12 - 1) / (((v47 >> 21) & 0x3F) << v49.i8[0]);
}

int64x2_t MPSNDArrayConvolutionDeviceBehaviorA15X::GetKernelParameters@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a4 || (a4 = a1[19]) != 0)
  {
    v5 = *a3;
    v6 = *(a3 + 32);
    if (v6)
    {
      v7 = a3[1] * v5;
      v8 = a3[11];
      v9 = *(a4 + 32);
      if (v9)
      {
        LOBYTE(v6) = 0;
        v10 = 1;
        v8 = (v8 + v9 - 1) / v9;
      }

      else
      {
        LOBYTE(v6) = 1;
        v10 = 1;
        v7 = (v7 + *(a4 + 36) - 1) / *(a4 + 36);
      }
    }

    else
    {
      if (*(a4 + 45))
      {
        v5 = (v5 + 1) & 0xFFFFFFFE;
      }

      v7 = v5 * a3[1];
      v11 = a3[11];
      v12 = *(a4 + 32);
      v14 = v7 * v11;
      if (v12)
      {
        v8 = (v11 + v12 - 1) / v12;
      }

      else
      {
        v8 = 0;
      }

      if (v12)
      {
        v14 = v7;
      }

      v13 = *(a4 + 36) * (1 << *(a4 + 8));
      v10 = (v14 + v13 - 1) / v13;
    }

    v15 = *(a4 + 44);
    v16 = *(a4 + 8);
    v17.i64[0] = *a4;
    v17.i64[1] = HIDWORD(*a4);
    v18 = v17;
    v17.i64[0] = v16;
    v17.i64[1] = HIDWORD(v16);
    *a5 = v18;
    *(a5 + 16) = v17;
    v18.i64[0] = *(a4 + 16);
    v19 = *(a4 + 24);
    v17.i64[0] = v18.u32[0];
    v17.i64[1] = v18.u32[1];
    result = v17;
    v17.i64[0] = v19;
    v17.i64[1] = HIDWORD(v19);
    *(a5 + 32) = result;
    *(a5 + 48) = v17;
    *(a5 + 64) = v8;
    *(a5 + 72) = v10;
    *(a5 + 80) = *(a4 + 40);
    *(a5 + 84) = 0;
    *(a5 + 86) = v15;
    *(a5 + 88) = v7;
    *(a5 + 96) = v6;
    return result;
  }

  if (*(a3 + 32))
  {
    v22 = a3[4];
    v21 = a3[5];
    v23 = a3[1] * *a3;
    v24 = a3[11];
    v25 = v23 * v24;
    v27 = a3[12] == 1 && a3[13] == 1;
    v29 = a3[7] == 1 && a3[8] == 1;
    if (v21 <= 0x10)
    {
      if (v22 > 8)
      {
        if (v22 > 0x10)
        {
          LOBYTE(v29) = v25 > 0x8000;
          if (v25 > 0x8000)
          {
            v30 = 3;
          }

          else
          {
            v30 = 4;
          }

          if (v25 <= 0x8000)
          {
            v31 = 3;
          }

          else
          {
            v31 = 4;
          }

          if (v25 <= 0x8000)
          {
            v33 = 5;
          }

          else
          {
            v33 = 6;
          }

          v35 = 32;
          v32 = 1;
          v36 = 4;
          v34 = 4;
          LOBYTE(v27) = v29;
        }

        else
        {
          v34 = 4;
          v51 = v25 > 0x8000;
          if (v25 > 0x8000)
          {
            v52 = 3;
          }

          else
          {
            v52 = 4;
          }

          if (v51)
          {
            v53 = 2;
          }

          else
          {
            v53 = 1;
          }

          v36 = 4;
          if (v29)
          {
            v34 = 4;
          }

          v33 = 6;
          if (v29)
          {
            v32 = v53;
          }

          else
          {
            v32 = 2;
          }

          if (v29)
          {
            v31 = v52;
          }

          else
          {
            v31 = 3;
          }

          if (v29)
          {
            v30 = 4;
          }

          else
          {
            v30 = 3;
          }

          v35 = 32;
          LOBYTE(v29) = v29 == 0;
          LOBYTE(v27) = 0;
        }

        goto LABEL_286;
      }

      LOBYTE(v27) = 0;
      LOBYTE(v29) = v25 <= 0x8000;
      v30 = 3;
      if (v25 > 0x8000)
      {
        v31 = 3;
      }

      else
      {
        v31 = 4;
      }

      v32 = 1;
      if (v25 > 0x8000)
      {
        v32 = 2;
      }

      v33 = 6;
      v34 = 4;
      v35 = 32;
      v36 = 3;
      goto LABEL_125;
    }

    if (v21 <= 0x20)
    {
      if (v22 <= 8)
      {
        LOBYTE(v27) = 0;
        v34 = 5;
        if (v25 < 0x100001)
        {
          v33 = 5;
        }

        else
        {
          v33 = 6;
        }

        v31 = 3;
        LOBYTE(v29) = 1;
        v32 = 2;
        v35 = 32;
        v30 = 3;
        v36 = 3;
        goto LABEL_125;
      }

      if (v22 >= 0x21)
      {
        LOBYTE(v29) = 0;
        LOBYTE(v27) = 0;
        v30 = 3;
        v33 = 4;
        v35 = 32;
        v32 = 1;
        v36 = 5;
        v34 = 5;
        v31 = 4;
        goto LABEL_286;
      }

      LOBYTE(v29) = 0;
      LOBYTE(v27) = 0;
      v31 = 3;
      v33 = 6;
      v35 = 32;
      goto LABEL_82;
    }

    if (v21 <= 0x30)
    {
      v33 = 4;
      v36 = 6;
      if (v22 < 0xC1)
      {
        LOBYTE(v27) = 0;
        LOBYTE(v29) = 0;
        v30 = 3;
        v32 = 1;
        v35 = 32;
        v31 = 3;
        v34 = 4;
        goto LABEL_125;
      }

      LOBYTE(v29) = 0;
      LOBYTE(v27) = 0;
      v35 = 32;
      if (v22 >= 0x101)
      {
        v35 = 16;
      }

      v32 = 1;
      if (v22 < 0x101)
      {
        v33 = 4;
      }

      else
      {
        v32 = 2;
        v33 = 6;
      }

      if (v22 >= 0x101)
      {
        v36 = 5;
      }

      else
      {
        v36 = 6;
      }

      v31 = 3;
LABEL_111:
      v34 = 4;
      v30 = 3;
      goto LABEL_286;
    }

    if (v21 <= 0x40)
    {
      if (v22 <= 8)
      {
        LOBYTE(v27) = 0;
        v32 = v25 > 0x80000;
        v31 = 4;
        if (v25 <= 0x80000)
        {
          v33 = 4;
        }

        else
        {
          v33 = 5;
        }

        v36 = 3;
        LOBYTE(v29) = 1;
        v34 = 6;
        v35 = 32;
        v30 = 3;
        goto LABEL_125;
      }

      if (v22 <= 0x10)
      {
        LOBYTE(v29) = 0;
        LOBYTE(v27) = 0;
        v31 = 3;
        if (v25 <= 0x8000)
        {
          v30 = 3;
        }

        else
        {
          v30 = 4;
        }

        v33 = 6;
        v35 = 16;
        v32 = 2;
        v36 = 4;
        v34 = 4;
        goto LABEL_286;
      }

      if (v22 < 0x21)
      {
        LOBYTE(v29) = 0;
        LOBYTE(v27) = 0;
        v31 = 3;
        v36 = 5;
        v35 = 32;
LABEL_137:
        v32 = 2;
        goto LABEL_138;
      }

      if (v22 < 0x31)
      {
        v32 = 0;
        LOBYTE(v27) = 0;
        LOBYTE(v29) = 1;
        v30 = 3;
        v36 = 4;
        v35 = 32;
        v34 = 6;
        goto LABEL_151;
      }

      if (v22 <= 0x40)
      {
        if (v29)
        {
          if (v25 > 0x2000)
          {
            v31 = 3;
            v33 = 5;
            if (v25 > 0x4000)
            {
              LOBYTE(v27) = 0;
              LOBYTE(v29) = v25 > 0x20000;
              if (v25 <= 0x20000)
              {
                v31 = 3;
              }

              else
              {
                v31 = 4;
              }

              v32 = 1;
              if (v25 > 0x20000)
              {
                v33 = 6;
              }

              else
              {
                v32 = 2;
                v33 = 5;
              }

              v30 = 3;
              v35 = 32;
              v36 = 5;
              v34 = 5;
            }

            else
            {
              LOBYTE(v29) = 0;
              LOBYTE(v27) = 0;
              v34 = 4;
              v35 = 16;
              v32 = 2;
              v36 = 6;
              v30 = 4;
            }

            goto LABEL_286;
          }

          LOBYTE(v29) = 0;
          LOBYTE(v27) = 0;
          v31 = 3;
          v33 = 5;
          v35 = 16;
          v32 = 1;
          v36 = 4;
          goto LABEL_111;
        }

        if (v25 > 0x4000)
        {
          if (v25 <= 0x10000)
          {
            LOBYTE(v29) = 0;
            LOBYTE(v27) = 0;
            v31 = 3;
            v36 = 5;
            v35 = 32;
            v32 = 1;
            goto LABEL_138;
          }

          v30 = 3;
          v36 = 4;
          v34 = 6;
          if (v25 >= 0x20001)
          {
            LOBYTE(v29) = 0;
            v86 = v27 == 0;
            v31 = 3;
            if (v27)
            {
              LODWORD(v27) = 3;
            }

            else
            {
              LODWORD(v27) = 4;
            }

            v32 = 2;
            if (v86)
            {
              v32 = 0;
            }

            if (v86)
            {
              v33 = 4;
            }

            else
            {
              v33 = 6;
            }

            v35 = 32;
            v36 = 5;
            v34 = 5;
            v30 = v27;
            LOBYTE(v27) = 0;
            goto LABEL_286;
          }

          v32 = 0;
          LOBYTE(v27) = 0;
          LOBYTE(v29) = 1;
          v35 = 32;
LABEL_151:
          v33 = 4;
          v31 = 4;
          goto LABEL_286;
        }

        goto LABEL_259;
      }

      if (v22 <= 0x80)
      {
        LOBYTE(v27) = 0;
        LOBYTE(v29) = v25 <= 0x2000;
        v31 = 3;
        if (v25 <= 0x2000)
        {
          v30 = 3;
        }

        else
        {
          v30 = 4;
        }

        v33 = 4;
        if (v25 <= 0x2000)
        {
          v36 = 4;
        }

        else
        {
          v36 = 5;
        }

        v35 = 32;
        v32 = 1;
        v34 = 5;
        goto LABEL_286;
      }

      if (v22 < 0xC1)
      {
        LOBYTE(v29) = 0;
        LOBYTE(v27) = 0;
        v31 = 3;
        v33 = 4;
        v35 = 32;
        v32 = 1;
        goto LABEL_83;
      }

      if (v22 > 0x100)
      {
        LOBYTE(v29) = 0;
        LOBYTE(v27) = 0;
        v31 = 3;
        v36 = 5;
        v35 = 16;
        goto LABEL_137;
      }

      if (v25 > 0x10000)
      {
        LOBYTE(v29) = 0;
        LOBYTE(v27) = 0;
        v30 = 3;
        v33 = 4;
        v35 = 16;
        v32 = 1;
        v36 = 5;
        v34 = 5;
        goto LABEL_285;
      }

      LOBYTE(v29) = 0;
      LOBYTE(v27) = 0;
      v31 = 3;
      v33 = 5;
      v35 = 16;
      v32 = 1;
      v34 = 4;
LABEL_263:
      v36 = 6;
      v30 = 3;
      goto LABEL_286;
    }

    if (v21 < 0x51)
    {
      LOBYTE(v27) = 0;
      LOBYTE(v29) = 0;
      v33 = 5;
      v30 = 3;
      v36 = 6;
      v34 = 4;
      v32 = 1;
      v35 = 32;
      v31 = 3;
      goto LABEL_125;
    }

    if (v21 <= 0x60)
    {
      LOBYTE(v27) = 0;
      LOBYTE(v29) = 0;
      v35 = 32;
      if (v22 >= 0x41)
      {
        v35 = 16;
      }

      v33 = 4;
      v30 = 3;
      v34 = 5;
      v32 = 1;
      v31 = 3;
      goto LABEL_124;
    }

    if (v21 <= 0x80)
    {
      if (v22 <= 0x40)
      {
        if (v29)
        {
          if (v25 > 0x2000)
          {
            LOBYTE(v29) = 0;
            v30 = 3;
            if (v27)
            {
              v31 = 4;
            }

            else
            {
              v31 = 3;
            }

            v34 = 5;
            v32 = 2;
            v35 = 16;
            v33 = 5;
            v36 = 5;
            LOBYTE(v27) = 0;
          }

          else
          {
            LOBYTE(v29) = 0;
            v32 = 1;
            if (!v27)
            {
              v32 = 2;
            }

            v33 = 5;
            if (v27)
            {
              v36 = 5;
            }

            else
            {
              v36 = 6;
            }

            v30 = 3;
            v34 = 4;
            v35 = 16;
            v31 = 3;
          }

          goto LABEL_125;
        }

        LOBYTE(v27) = 0;
        v34 = 5;
        v30 = 3;
        goto LABEL_174;
      }

      if (v22 <= 0x80)
      {
        if (v29)
        {
          v33 = 5;
          if (v25 < 0x801)
          {
            LOBYTE(v29) = 0;
            LOBYTE(v27) = 0;
            v34 = 4;
            v31 = 3;
            v35 = 16;
            v32 = 1;
            v36 = 7;
            v30 = 4;
            goto LABEL_286;
          }

          LOBYTE(v29) = 0;
          LOBYTE(v27) = 0;
          v59 = v25 > 0x1000;
          v35 = 8;
          if (v59)
          {
            v35 = 32;
          }

          if (v59)
          {
            v33 = 5;
          }

          else
          {
            v33 = 6;
          }

          v31 = 3;
LABEL_82:
          v32 = 2;
LABEL_83:
          v36 = 5;
LABEL_84:
          v34 = 5;
          v30 = 3;
          goto LABEL_286;
        }

        if (v25 <= 0x1000)
        {
          v32 = 0;
          LOBYTE(v27) = 0;
          LOBYTE(v29) = 1;
          v30 = 3;
          v35 = 4;
          v34 = 6;
          v36 = 5;
          v33 = 4;
          v31 = 4;
          goto LABEL_286;
        }

        if (v25 <= 0x4000)
        {
          if (v27)
          {
            v35 = 16;
          }

          else
          {
            v35 = 8;
          }

          v30 = 3;
          if (v27)
          {
            v31 = 4;
          }

          else
          {
            v31 = 3;
          }

          v32 = v27 ^ 1;
          v36 = 5;
          if (v27)
          {
            v34 = 6;
          }

          else
          {
            v34 = 5;
          }

          v33 = 4;
          goto LABEL_370;
        }

        if (v25 > 0x8000)
        {
          v31 = 3;
          if (v25 > 0x10000)
          {
            v32 = 0;
            LOBYTE(v29) = 0;
            LOBYTE(v27) = 1;
            v33 = 4;
            v35 = 16;
            v34 = 6;
            v36 = 5;
            v30 = 4;
          }

          else
          {
            LOBYTE(v29) = 0;
            if (v27)
            {
              v30 = 4;
            }

            else
            {
              v30 = 3;
            }

            v32 = v27 ^ 1;
            v34 = 5;
            if (v27)
            {
              v36 = 6;
            }

            else
            {
              v36 = 5;
            }

            v33 = 4;
            v35 = 32;
            LOBYTE(v27) = 0;
          }

          goto LABEL_286;
        }

        v32 = 0;
        v30 = 3;
        v33 = 4;
        v35 = 32;
        goto LABEL_369;
      }

      if (v22 <= 0x100)
      {
        if (v25 < 0x801)
        {
          LOBYTE(v29) = 0;
          LOBYTE(v27) = 0;
          v30 = 3;
          v36 = 4;
          v34 = 5;
          v32 = 1;
          v33 = 5;
          v31 = 4;
          v35 = 4;
          goto LABEL_286;
        }

        v36 = 5;
        if (v25 <= 0x1000)
        {
          LOBYTE(v29) = 0;
          LOBYTE(v27) = 0;
          v31 = 3;
          v34 = 4;
          v35 = 8;
          v32 = 1;
          v33 = 4;
          v30 = 3;
          goto LABEL_286;
        }

        LOBYTE(v29) = 0;
        LOBYTE(v27) = 0;
        if (v25 <= 0x10000)
        {
          v33 = 5;
        }

        else
        {
          v33 = 6;
        }

        v31 = 3;
        v35 = 32;
        v32 = 2;
        goto LABEL_84;
      }

      if (v22 <= 0x200)
      {
        v30 = 3;
        v32 = 0;
        if (v29)
        {
          LOBYTE(v29) = 0;
          LOBYTE(v27) = 0;
          if (v25 <= 0x8000)
          {
            v31 = 3;
          }

          else
          {
            v31 = 4;
          }

          if (v25 > 0x8000)
          {
            v30 = 3;
          }

          else
          {
            v30 = 4;
          }

          v33 = 4;
          if (v25 > 0x8000)
          {
            v34 = 6;
          }

          else
          {
            v34 = 4;
          }

          v36 = 7;
          if (v25 > 0x8000)
          {
            v36 = 5;
          }

          v35 = 32;
          goto LABEL_286;
        }

        LOBYTE(v27) = 0;
        LOBYTE(v29) = 1;
        goto LABEL_283;
      }

LABEL_366:
      LOBYTE(v29) = 0;
      LOBYTE(v27) = 0;
      v31 = 3;
      v33 = 4;
      v35 = 16;
      v32 = 1;
      goto LABEL_83;
    }

    if (v21 <= 0xA0)
    {
      LOBYTE(v27) = 0;
      LOBYTE(v29) = 0;
      v32 = v22 < 0xA1;
      v35 = 16;
      if (v22 < 0xA1)
      {
        v35 = 8;
      }

      v30 = 3;
      if (v22 < 0xA1)
      {
        v31 = 3;
      }

      else
      {
        v31 = 4;
      }

      v34 = 5;
      if (v22 < 0xA1)
      {
        v36 = 5;
      }

      else
      {
        v36 = 6;
      }

      v33 = 4;
LABEL_125:
      if (v22 <= 1)
      {
        v56 = (v22 == 0) << 63;
LABEL_287:
        if (v56 >= v36)
        {
          v56 = v36;
        }

        if (v56 <= 3)
        {
          LODWORD(v56) = 3;
        }

        if (v21 > 1)
        {
          v62 = 64 - __clz(v21 - 1);
        }

        else
        {
          v62 = (v21 == 0) << 63;
        }

        if (v62 >= v34)
        {
          v62 = v34;
        }

        v63 = 3;
        if (v62 > 3)
        {
          v63 = v62;
        }

        if (v30 >= v56)
        {
          v64 = v56;
        }

        else
        {
          v64 = v30;
        }

        v65 = (v64 - 3);
        if (v31 >= v63)
        {
          v31 = v63;
        }

        v66 = v31 - 3;
        v67 = 64 - __clz(v24 - 1);
        if (v24 <= 1)
        {
          v68 = 0;
        }

        else
        {
          v68 = v67;
        }

        v69 = (1 << v68);
        if (v35 >= v69)
        {
          LODWORD(v35) = v69;
        }

        v70 = v69 / v35;
        v71 = v33;
        if (v23 <= 0x100)
        {
          v72 = v23 - 1;
          v73 = ((v23 - 1 + (1 << v33)) & -(1 << v33)) - v23;
          if (v73)
          {
            v74 = v32 + 9;
            do
            {
              v75 = v74 - 9;
              if (((v72 + (1 << (v74 - 6))) & -(1 << (v74 - 6))) - v23 < v73)
              {
                v32 = v74 - 9;
                v71 = v74 - 6;
                v73 = ((v72 + (1 << (v74 - 6))) & -(1 << (v74 - 6))) - v23;
              }

              if (v74 != 12)
              {
                if (((v72 + (1 << (v74 - 5))) & -(1 << (v74 - 5))) - v23 < v73)
                {
                  v32 = v74 - 9;
                  v71 = v74 - 5;
                  v73 = ((v72 + (1 << (v74 - 5))) & -(1 << (v74 - 5))) - v23;
                }

                if (v74 != 11)
                {
                  if (((v72 + (1 << (v74 - 4))) & -(1 << (v74 - 4))) - v23 < v73)
                  {
                    v32 = v74 - 9;
                    v71 = v74 - 4;
                    v73 = ((v72 + (1 << (v74 - 4))) & -(1 << (v74 - 4))) - v23;
                  }

                  if (v74 != 10)
                  {
                    if (((v72 + (1 << (v74 - 3))) & -(1 << (v74 - 3))) - v23 < v73)
                    {
                      v32 = v74 - 9;
                      v71 = v74 - 3;
                      v73 = ((v72 + (1 << (v74 - 3))) & -(1 << (v74 - 3))) - v23;
                    }

                    if (v74 != 9)
                    {
                      v76 = ((v72 + (1 << (v74 - 1))) & -(1 << (v74 - 1))) - v23;
                      v77 = ((v72 + (1 << (v74 - 2))) & -(1 << (v74 - 2))) - v23;
                      if (v77 >= v73)
                      {
                        v78 = v73;
                      }

                      else
                      {
                        v78 = ((v72 + (1 << (v74 - 2))) & -(1 << (v74 - 2))) - v23;
                      }

                      if (v77 < v73)
                      {
                        v71 = v74 - 2;
                      }

                      v79 = v76 >= v78;
                      if (v76 < v78)
                      {
                        v80 = 1;
                      }

                      else
                      {
                        v76 = v78;
                        v80 = 0;
                      }

                      if (!v79)
                      {
                        v71 = v74 - 1;
                      }

                      if (v77 < v73)
                      {
                        v81 = 1;
                      }

                      else
                      {
                        v81 = v80;
                      }

                      v82 = ((v72 + (1 << v74)) & -(1 << v74)) - v23;
                      v83 = (v82 < v76) | v81;
                      if (v82 >= v76)
                      {
                        v73 = v76;
                      }

                      else
                      {
                        v71 = v74;
                        v73 = ((v72 + (1 << v74)) & -(1 << v74)) - v23;
                      }

                      if (v83)
                      {
                        v32 = v74 - 9;
                      }
                    }
                  }
                }
              }

              --v74;
            }

            while (v75 > 0);
          }
        }

        *a5 = v56;
        *(a5 + 8) = v63;
        *(a5 + 16) = v71;
        *(a5 + 24) = v32;
        *(a5 + 32) = v66;
        *(a5 + 40) = v65;
        result = vdupq_n_s64(1uLL);
        *(a5 + 48) = result;
        *(a5 + 64) = v70;
        *(a5 + 72) = 1;
        *(a5 + 80) = 0;
        *(a5 + 81) = v29;
        *(a5 + 82) = v27;
        *(a5 + 83) = 0;
        *(a5 + 89) = 0;
        return result;
      }

LABEL_286:
      v56 = 64 - __clz(v22 - 1);
      goto LABEL_287;
    }

    if (v21 > 0xC0)
    {
      if (v21 <= 0x100)
      {
        if (v22 <= 0x40)
        {
          v34 = 5;
          v30 = 3;
          if (v25 > 0x10000)
          {
            LOBYTE(v27) = 0;
            LOBYTE(v29) = 0;
            v60 = v25 >= 0x20001;
            v61 = v25 < 0x20001;
            v35 = 32;
            if (v60)
            {
              v33 = 3;
            }

            else
            {
              v35 = 8;
              v33 = 5;
            }

            if (v60)
            {
              v30 = 3;
            }

            else
            {
              v30 = 4;
            }

            v32 = 2 * v61;
            if (v60)
            {
              v36 = 5;
            }

            else
            {
              v36 = 6;
            }

            if (v60)
            {
              v34 = 5;
            }

            else
            {
              v34 = 4;
            }

            v31 = 3;
            goto LABEL_125;
          }

          LOBYTE(v27) = 0;
          LOBYTE(v29) = 0;
LABEL_174:
          v32 = 2;
          v35 = 32;
          v31 = 3;
          v33 = 5;
LABEL_124:
          v36 = 5;
          goto LABEL_125;
        }

        if (v22 <= 0x80)
        {
          if (v29)
          {
            if (v25 > 0x800)
            {
              LOBYTE(v29) = 0;
              v35 = 8;
              if (!v27)
              {
                v35 = 16;
              }

              v30 = 3;
              if (v27)
              {
                v31 = 3;
              }

              else
              {
                v31 = 4;
              }

              v33 = 4;
              if (v27)
              {
                v34 = 4;
              }

              else
              {
                v34 = 6;
              }

              v36 = 5;
              v32 = v27;
              LOBYTE(v27) = 0;
            }

            else
            {
              LOBYTE(v29) = 0;
              if (v27)
              {
                v31 = 4;
              }

              else
              {
                v31 = 3;
              }

              if (v27)
              {
                v33 = 4;
              }

              else
              {
                v33 = 5;
              }

              if (v27)
              {
                v34 = 6;
              }

              else
              {
                v34 = 4;
              }

              if (v27)
              {
                v36 = 5;
              }

              else
              {
                v36 = 6;
              }

              v35 = 8;
              v32 = 1;
              v30 = v31;
              LOBYTE(v27) = 0;
            }

            goto LABEL_286;
          }

          v32 = 0;
          LOBYTE(v27) = 0;
          LOBYTE(v29) = 1;
          v30 = 3;
          v33 = 4;
          v35 = 32;
          goto LABEL_284;
        }

        if (v22 > 0x100)
        {
          if (v22 >= 0x201)
          {
            v32 = 0;
            LOBYTE(v29) = 0;
            LOBYTE(v27) = 0;
            v51 = v25 > 0x2000;
            v35 = 16;
            if (!v51)
            {
              v35 = 8;
            }

            v31 = 3;
            v33 = 4;
          }

          else
          {
            v32 = 0;
            LOBYTE(v29) = 0;
            LOBYTE(v27) = 0;
            v31 = 3;
            v33 = 4;
            v35 = 16;
          }
        }

        else
        {
          if (v29)
          {
            goto LABEL_366;
          }

          if (v25 > 0x1000)
          {
            v30 = 3;
            if (v25 > 0x2000)
            {
              v32 = 0;
              LOBYTE(v29) = v27 ^ 1;
              v35 = 8;
              if (v27)
              {
                v33 = 3;
              }

              else
              {
                v35 = 16;
                v33 = 4;
              }

              if (v27)
              {
                v34 = 6;
              }

              else
              {
                v34 = 7;
              }

              v31 = 4;
              if (v27)
              {
                v36 = 5;
              }

              else
              {
                v36 = 4;
              }

              LOBYTE(v27) = 0;
              goto LABEL_286;
            }

            v32 = 0;
            v33 = 4;
            v35 = 8;
LABEL_369:
            v34 = 6;
            v36 = 5;
            v31 = 4;
            goto LABEL_370;
          }

          v32 = 0;
          LOBYTE(v29) = 0;
          LOBYTE(v27) = 0;
          v31 = 3;
          v33 = 4;
          v35 = 8;
        }

LABEL_450:
        v34 = 5;
        v36 = 6;
        v30 = 4;
        goto LABEL_286;
      }

      if (v21 <= 0x140)
      {
        v35 = 4;
        v30 = 3;
        if (v22 >= 0xC1)
        {
          LOBYTE(v29) = 0;
          LOBYTE(v27) = 0;
          v32 = v22 < 0x501;
          if (v22 >= 0x501)
          {
            v33 = 4;
          }

          else
          {
            v33 = 5;
          }

          if (v22 < 0x501)
          {
            v31 = 3;
          }

          else
          {
            v35 = 1;
            v31 = 4;
          }

          v34 = 5;
          if (v22 < 0x501)
          {
            v36 = 5;
          }

          else
          {
            v36 = 6;
          }

          goto LABEL_286;
        }

        LOBYTE(v27) = 0;
        v32 = 0;
        LOBYTE(v29) = 1;
        v36 = 5;
        v34 = 6;
        v31 = 4;
        v33 = 4;
        goto LABEL_125;
      }

      if (v21 <= 0x180)
      {
        if (v22 < 0x121)
        {
          LOBYTE(v27) = 0;
          v32 = 0;
          v31 = 4;
          v30 = 3;
          LOBYTE(v29) = 1;
          v36 = 5;
          v34 = 6;
          v35 = 8;
          v33 = 4;
          goto LABEL_125;
        }

        if (v22 <= 0x180)
        {
          v32 = 0;
          LOBYTE(v27) = 0;
          v85 = v25 >= 0x801;
          v33 = 4;
          if (v25 >= 0x801)
          {
            v35 = 8;
          }

          else
          {
            v35 = 4;
          }

          if (v85)
          {
            v36 = 5;
          }

          else
          {
            v36 = 4;
          }

          LOBYTE(v29) = 1;
          v30 = 3;
          v34 = 6;
          v31 = 4;
          goto LABEL_286;
        }

        v31 = 3;
        if (v22 <= 0x1C0)
        {
          v32 = 0;
          LOBYTE(v27) = 0;
          v87 = v25 >= 0x801;
          if (v25 >= 0x801)
          {
            v31 = 3;
          }

          else
          {
            v31 = 4;
          }

          if (v25 < 0x801)
          {
            v34 = 6;
          }

          else
          {
            v34 = 7;
          }

          v35 = 4;
          if (v87)
          {
            v36 = 4;
          }

          else
          {
            v36 = 5;
          }

          LOBYTE(v29) = 1;
          v30 = 3;
          v33 = 4;
          goto LABEL_286;
        }

        LOBYTE(v29) = 0;
        LOBYTE(v27) = 0;
        v36 = 5;
        v35 = 2;
        v32 = 1;
LABEL_138:
        v34 = 5;
        v33 = 5;
        v30 = 3;
        goto LABEL_286;
      }

      if (v21 > 0x1C0)
      {
        if (v21 > 0x200)
        {
          if (v21 < 0x3F1)
          {
            LOBYTE(v27) = 0;
            v32 = 0;
            v31 = 4;
            v30 = 3;
            LOBYTE(v29) = 1;
            v36 = 5;
            v34 = 6;
            v35 = 1;
            v33 = 4;
            goto LABEL_125;
          }

          if (v21 > 0x400)
          {
            LOBYTE(v29) = v25 < 0x801;
            if (v22 > 0x200)
            {
              v32 = 0;
              LOBYTE(v29) = 0;
              LOBYTE(v27) = 0;
              v93 = v25 >= 0x801;
              v35 = 1;
              if (v93)
              {
                v35 = 2;
              }

              v31 = 3;
              if (v93)
              {
                v33 = 4;
              }

              else
              {
                v33 = 3;
              }

              if (v93)
              {
                v34 = 4;
              }

              else
              {
                v34 = 5;
              }

              if (v93)
              {
                v36 = 7;
              }

              else
              {
                v36 = 6;
              }

              v30 = v33;
              goto LABEL_286;
            }

            LOBYTE(v27) = 0;
            v32 = 0;
            v60 = v25 >= 0x801;
            v31 = 4;
            v35 = 2;
            if (v60)
            {
              v35 = 4;
            }

            v30 = 3;
            v36 = 5;
            v34 = 6;
            v33 = 4;
            goto LABEL_125;
          }

          if (v22 > 0x100)
          {
            v32 = 0;
            LOBYTE(v29) = 0;
            LOBYTE(v27) = 0;
            v30 = 3;
            if (v25 > 0x2000)
            {
              v33 = 3;
            }

            else
            {
              v33 = 4;
            }

            v31 = 4;
            v35 = 8;
            v34 = 6;
            v36 = 5;
            goto LABEL_286;
          }

          v30 = 3;
          if (v25 <= 0x1000)
          {
            LOBYTE(v27) = 0;
            LOBYTE(v29) = 0;
            v35 = 4;
            v34 = 5;
            v32 = 1;
            v31 = 3;
            v33 = 4;
            goto LABEL_124;
          }

          LOBYTE(v27) = 0;
          LOBYTE(v29) = 0;
          v32 = 0;
          v89 = v25 > 0x2000;
          v35 = 16;
          v90 = 8;
        }

        else
        {
          if (v22 > 0x80)
          {
            if (v22 <= 0x100)
            {
              if (v25 > 0x8000)
              {
                v32 = 0;
                LOBYTE(v29) = 0;
                LOBYTE(v27) = 0;
                v33 = 4;
                if (v25 > 0x10000)
                {
                  v34 = 4;
                }

                else
                {
                  v34 = 5;
                }

                if (v25 <= 0x10000)
                {
                  v36 = 6;
                }

                else
                {
                  v36 = 7;
                }

                v31 = 3;
                v35 = 32;
                v30 = 4;
                goto LABEL_286;
              }

              LOBYTE(v29) = 0;
              LOBYTE(v27) = 0;
              v31 = 3;
              v33 = 4;
              v35 = 16;
              v32 = 1;
              v34 = 5;
              goto LABEL_263;
            }

            if (v22 > 0x200)
            {
              if (v22 > 0x400)
              {
                LOBYTE(v29) = 0;
                LOBYTE(v27) = 0;
                v94 = v25 >= 0x801;
                v32 = v25 < 0x801;
                v33 = 4;
                if (v25 < 0x801)
                {
                  v35 = 1;
                }

                else
                {
                  v35 = 4;
                }

                v31 = 3;
                if (v94)
                {
                  v30 = 4;
                }

                else
                {
                  v30 = 3;
                }

                v34 = 5;
                if (v94)
                {
                  v36 = 6;
                }

                else
                {
                  v36 = 5;
                }
              }

              else
              {
                v32 = 0;
                LOBYTE(v27) = 0;
                v92 = v25 > 0x1000;
                LOBYTE(v29) = v25 <= 0x1000;
                v35 = 8;
                v33 = 4;
                if (v92)
                {
                  v30 = 4;
                }

                else
                {
                  v35 = 4;
                  v30 = 3;
                }

                if (v92)
                {
                  v31 = 3;
                }

                else
                {
                  v31 = 4;
                }

                v36 = 5;
                if (v92)
                {
                  v34 = 5;
                }

                else
                {
                  v34 = 6;
                }

                if (v92)
                {
                  v36 = 6;
                }
              }

              goto LABEL_286;
            }

            v30 = 3;
            if (v25 > 0x800)
            {
              v32 = 0;
              LOBYTE(v27) = 0;
              LOBYTE(v29) = 1;
              v33 = 4;
              v35 = 2;
              goto LABEL_284;
            }

            v32 = 0;
            if (v27)
            {
              v35 = 2;
            }

            else
            {
              v35 = 1;
            }

            if (v27)
            {
              v31 = 4;
            }

            else
            {
              v31 = 3;
            }

            if (v27)
            {
              v91 = 3;
            }

            else
            {
              v91 = 4;
            }

            v34 = 7;
            if (!v27)
            {
              v34 = 5;
            }

            v33 = 4;
            if (v27)
            {
              v36 = 4;
            }

            else
            {
              v36 = 6;
            }

            v30 = v91;
LABEL_370:
            LOBYTE(v29) = v27;
            LOBYTE(v27) = 0;
            goto LABEL_286;
          }

          v30 = 3;
          if (v25 <= 0x4000)
          {
            LOBYTE(v27) = 0;
            LOBYTE(v29) = 0;
            v32 = 0;
            v31 = 4;
            v36 = 5;
            v34 = 6;
            v35 = 32;
            v33 = 4;
            goto LABEL_125;
          }

          LOBYTE(v27) = 0;
          LOBYTE(v29) = 0;
          v89 = v25 > 0x8000;
          v32 = v25 <= 0x8000;
          v35 = 32;
          v90 = 16;
        }

        if (v89)
        {
          v30 = 4;
        }

        else
        {
          v35 = v90;
          v30 = 3;
        }

        v34 = 5;
        if (v89)
        {
          v36 = 6;
        }

        else
        {
          v36 = 5;
        }

        v33 = 4;
        v31 = 3;
        goto LABEL_125;
      }

      v31 = 3;
      if (v22 <= 0x500)
      {
        LOBYTE(v27) = 0;
        LOBYTE(v29) = 0;
        v84 = v25 >= 0x801;
        v32 = v25 < 0x801;
        v35 = 8;
        if (v84)
        {
          v30 = 4;
        }

        else
        {
          v35 = 2;
          v30 = 3;
        }

        if (v84)
        {
          v33 = 4;
        }

        else
        {
          v33 = 5;
        }

        v34 = 5;
        if (v84)
        {
          v36 = 6;
        }

        else
        {
          v36 = 5;
        }

        goto LABEL_125;
      }

      LOBYTE(v29) = 0;
      LOBYTE(v27) = 0;
      v36 = 5;
      v32 = 1;
      v34 = 5;
      v33 = 5;
    }

    else
    {
      if (v22 < 0x51)
      {
        LOBYTE(v27) = 0;
        LOBYTE(v29) = 0;
        v32 = 0;
        v36 = 4;
        v30 = 3;
        v34 = 6;
        v35 = 32;
        v31 = 3;
        v33 = 4;
        goto LABEL_125;
      }

      if (v22 < 0x81)
      {
        v32 = 0;
        LOBYTE(v27) = 0;
        LOBYTE(v29) = 1;
        v30 = 3;
LABEL_283:
        v33 = 4;
        v35 = 8;
        goto LABEL_284;
      }

      if (v22 < 0xA1)
      {
LABEL_259:
        v32 = 0;
        LOBYTE(v27) = 0;
        LOBYTE(v29) = 1;
        v30 = 3;
        v33 = 4;
        v35 = 16;
LABEL_284:
        v34 = 6;
        v36 = 5;
LABEL_285:
        v31 = 4;
        goto LABEL_286;
      }

      if (v22 <= 0xC0)
      {
        v32 = 0;
        LOBYTE(v27) = 0;
        v60 = v25 >= 0x801;
        v35 = 2;
        if (v60)
        {
          v35 = 16;
        }

        LOBYTE(v29) = 1;
        v30 = 3;
        v33 = 4;
        goto LABEL_284;
      }

      if (v22 < 0x301)
      {
        LOBYTE(v29) = 0;
        LOBYTE(v27) = 0;
        v31 = 3;
        v33 = 4;
        v35 = 8;
        v32 = 1;
        goto LABEL_450;
      }

      if (v22 <= 0x500)
      {
        LOBYTE(v29) = 0;
        LOBYTE(v27) = 0;
        v88 = v25 >= 0x801;
        v35 = 4;
        if (v88)
        {
          v34 = 4;
        }

        else
        {
          v34 = 5;
        }

        v33 = 5;
        if (v88)
        {
          v36 = 6;
        }

        else
        {
          v36 = 5;
        }

        v31 = 3;
        v32 = 1;
        v30 = 3;
        goto LABEL_286;
      }

      LOBYTE(v29) = 0;
      LOBYTE(v27) = 0;
      v31 = 3;
      v33 = 4;
      v32 = 1;
      v36 = 5;
      v34 = 5;
    }

    v30 = 3;
    v35 = 1;
    goto LABEL_286;
  }

  *(a5 + 96) = 0;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  MPSNDArrayConvolutionDeviceBehaviorA14::GetKernelParameters(a1, a2, a3, 0, a5);
  v40 = *(*(a2 + *MEMORY[0x277CD7350]) + 1480);
  v41 = a3[11];
  v42 = a3[1] * *a3;
  v43 = *(a5 + 64);
  if (v43)
  {
    v44 = a3[1] * *a3;
  }

  else
  {
    v44 = v42 * v41;
  }

  v45 = 1;
  v47 = 1 << *(a5 + 16);
  if (v43)
  {
    v45 = (v41 + v43 - 1) / v43;
  }

  v48 = (v44 + *(a5 + 72) * v47 - 1) / (*(a5 + 72) * v47);
  v46 = 1 << *(a5 + 8);
  v49 = a3[8] * a3[7] * ((a3[4] + (1 << *a5) - 1) / (1 << *a5)) * ((a3[5] + v46 - 1) / v46);
  if (v45 * v49 * v48 >= v40)
  {
    v42 = v44;
  }

  else
  {
    *result.i32 = (v47 - 1 - (v42 + v47 - 1) % v47) / v42;
    v50 = 3 * v40;
    if (*result.i32 <= 0.1)
    {
      if (v49 >= v50)
      {
        v43 = a3[11];
      }

      else
      {
        v54 = v41 - 1;
        v55 = 1;
        while (2 * v55 <= v41)
        {
          v49 *= 2;
          v43 = (2 * v55 + v54) / (2 * v55);
          if (v43 != 1)
          {
            v55 *= 2;
            if (v49 < v50)
            {
              continue;
            }
          }

          goto LABEL_128;
        }

        v43 = ((v55 & 0x7FFFFFFFFFFFFFFFLL) + v54) / (v55 & 0x7FFFFFFFFFFFFFFFuLL);
      }
    }

    else
    {
      v43 = 0;
      v42 *= v41;
    }

LABEL_128:
    v57 = 1;
    while (1)
    {
      v48 = v57;
      if (v49 >= v50)
      {
        break;
      }

      v57 *= 2;
      v49 *= 2;
      if ((v42 - 1 + 2 * v48) / (2 * v48) <= 7)
      {
        v48 &= ~0x8000000000000000;
        break;
      }
    }
  }

  v58 = (v48 + (v47 + v42 - 1) / v47 - 1) / v48;
  if (v43 < v41)
  {
    v41 = v43;
  }

  *(a5 + 64) = v41;
  *(a5 + 72) = v58;
  return result;
}