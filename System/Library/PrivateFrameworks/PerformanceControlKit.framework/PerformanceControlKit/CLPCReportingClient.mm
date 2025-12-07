@interface CLPCReportingClient
- (BOOL)enableStats:(id)stats error:(id *)error;
- (BOOL)setTGSortingMetric:(unint64_t)metric error:(id *)error;
- (CLPCReportingReadResult)convertSampleList:(uint64_t)list error:(uint64_t *)error;
- (__n128)buildSchemas:error:;
- (id).cxx_construct;
- (id)buildSchemas:(void *)schemas error:;
- (id)clearSchemas;
- (id)enabledStats;
- (id)init:(id *)init;
- (id)readDeltaStats:(id *)stats;
- (id)readStats:(id *)stats;
- (id)supportedStats;
- (uint64_t)buildSchemas:error:;
- (uint64_t)decodeTGRawData:(char)data delta:(void *)delta error:;
- (uint64_t)ensureStatsEnabled:(uint64_t)result;
- (unint64_t)schemaIDForStatID:(unint64_t)d error:(id *)error;
- (void)buildSchemas:error:;
- (void)clearSchemas;
- (void)convertSampleList:error:;
@end

@implementation CLPCReportingClient

- (id)clearSchemas
{
  if (result)
  {
    v1 = result;
    v2 = 0;
    std::array<CLPCReportingRows * {__strong},11ul>::fill[abi:ne200100](result + 35, &v2);
    return [(CLPCReportingClient *)&v2 clearSchemas];
  }

  return result;
}

- (void)clearSchemas
{
  array = [MEMORY[0x277CBEA60] array];
  v4 = *(a2 + 368);
  *(a2 + 368) = array;

  v5 = (a2 + 376);
  v6 = 440;
  do
  {
    result = std::__hash_table<std::__hash_value_type<unsigned long long,CLPCReportingStatID>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CLPCReportingStatID>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CLPCReportingStatID>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CLPCReportingStatID>>>::clear(v5);
    v5 += 5;
    v6 -= 40;
  }

  while (v6);
  return result;
}

- (id)init:(id *)init
{
  v116[9] = *MEMORY[0x277D85DE8];
  v107.receiver = self;
  v107.super_class = CLPCReportingClient;
  v108 = 0;
  v4 = [(CLPCUserClient *)&v107 init:?];
  v108 = v4;
  if (!v4)
  {
    return 0;
  }

  v5 = *MEMORY[0x277CBECE8];
  CFProperty = IORegistryEntryCreateCFProperty(v4[4], @"CFBundleIdentifierKernel", *MEMORY[0x277CBECE8], 0);
  if (CFProperty && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = [CFProperty dataUsingEncoding:4];
    if (v7)
    {
      v87 = v7;
      v8 = IORegistryEntryCreateCFProperty(v108[4], @"#cpu-num-clusters", v5, 0);
      v86 = v8;
      if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        unsignedIntValue = [v8 unsignedIntValue];
        v108[10] = unsignedIntValue;
        v10 = IORegistryEntryCreateCFProperty(v108[4], @"#cpu-num-cores", v5, 0);
        v85 = v10;
        if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          unsignedIntValue2 = [v10 unsignedIntValue];
          v108[13] = unsignedIntValue2;
          v80 = clpc::user::iokit::RegistryEntry::createProperty((v108 + 2), @"#ane-num-clusters");
          if (v80 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            unsignedIntValue3 = [v80 unsignedIntValue];
            v108[11] = unsignedIntValue3;
            for (v108[12] = 1; ; ++v108[12])
            {
              v13 = v108;
              v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"#pkg-power-zone-target-%u", v108[12]];
              v15 = IORegistryEntryCreateCFProperty(v13[4], v14, v5, 0);
              LOBYTE(v13) = v15 == 0;

              if (v13)
              {
                break;
              }
            }

            memcpy(__dst, "emit", sizeof(__dst));
            std::__hash_table<std::__hash_value_type<unsigned long long,CLPCReportingStatID>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CLPCReportingStatID>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CLPCReportingStatID>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CLPCReportingStatID>>>::__assign_unique<std::pair<unsigned long long const,CLPCReportingStatID> const*>(v108 + 9, __dst, v115);
            v17 = v108;
            if (v108[10])
            {
              v18 = 0;
              do
              {
                v19 = 48;
                if (v18 > 9)
                {
                  v19 = 87;
                }

                v20 = v19 + v18;
                v21 = ((v19 + v18) | 0x4C506300);
                v116[0] = v21;
                *&__dst[0] = v116;
                std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v17 + 18, v116, &std::piecewise_construct, __dst)[3] = 0x400000001;
                v116[0] = v21;
                *&__dst[0] = v116;
                *(std::__hash_table<std::__hash_value_type<unsigned long long,unsigned int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned int>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v108 + 14, v116, &std::piecewise_construct, __dst) + 6) = v18;
                v22 = (v20 | 0x43436300);
                v116[0] = v22;
                *&__dst[0] = v116;
                std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v108 + 18, v116, &std::piecewise_construct, __dst)[3] = 0x600000000;
                v116[0] = v22;
                *&__dst[0] = v116;
                *(std::__hash_table<std::__hash_value_type<unsigned long long,unsigned int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned int>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v108 + 14, v116, &std::piecewise_construct, __dst) + 6) = v18++;
                v17 = v108;
              }

              while (v18 < v108[10]);
            }

            if (*(v17 + 11))
            {
              v23 = 0;
              do
              {
                if (v23 <= 9)
                {
                  v24 = 48;
                }

                else
                {
                  v24 = 87;
                }

                v25 = ((v24 + v23) | 0x414C6300);
                v116[0] = v25;
                *&__dst[0] = v116;
                std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v17 + 18, v116, &std::piecewise_construct, __dst)[3] = 0x400000003;
                v116[0] = v25;
                *&__dst[0] = v116;
                *(std::__hash_table<std::__hash_value_type<unsigned long long,unsigned int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned int>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v108 + 14, v116, &std::piecewise_construct, __dst) + 6) = v23++;
                v17 = v108;
              }

              while (v23 < v108[11]);
            }

            v26 = CCDigestCreate();
            v81 = [(io_registry_entry_t *)v108 reportingObfuscationData:init];
            if (v26 && v81 && [v81 length] > 0x1F)
            {
              memset(v105, 0, sizeof(v105));
              v106 = 1065353216;
              memset(v103, 0, sizeof(v103));
              v104 = 1065353216;
              std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__rehash<true>(v105, *(v108 + 12));
              std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__rehash<true>(v103, vcvtps_u32_f32(*(v108 + 17) / 1.0));
              for (i = *(v108 + 11); i; i = *i)
              {
                LODWORD(v116[0]) = i[2];
                v28 = v81;
                v29 = v87;
                memset(__dst, 0, 64);
                v30 = v28;
                [v28 bytes];
                CCDigestUpdate();
                v31 = v29;
                [v29 bytes];
                [v29 length];
                CCDigestUpdate();
                CCDigestUpdate();
                v32 = v28;
                [v28 bytes];
                CCDigestUpdate();
                CCDigestFinal();
                CCDigestReset();
                v33 = LODWORD(__dst[0]);

                v34 = i[3];
                v116[0] = v33;
                *&__dst[0] = v116;
                std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v105, v116, &std::piecewise_construct, __dst)[3] = v34;
                v35 = std::__hash_table<std::__hash_value_type<unsigned long long,CLPCReportingStatID>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CLPCReportingStatID>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CLPCReportingStatID>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CLPCReportingStatID>>>::find<unsigned long long>(v108 + 14, i + 2);
                if (v35)
                {
                  v36 = *(v35 + 6);
                  v116[0] = v33;
                  *&__dst[0] = v116;
                  *(std::__hash_table<std::__hash_value_type<unsigned long long,unsigned int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned int>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v103, v116, &std::piecewise_construct, __dst) + 6) = v36;
                }
              }

              v37 = 0;
              v101 = 0uLL;
              v102 = 0;
              memset(v99, 0, sizeof(v99));
              v100 = 1065353216;
              __p = 0;
              v97 = 0;
              v98 = 0;
              do
              {
                if (v37 > 0x22)
                {
                  v38 = 0;
                }

                else
                {
                  v38 = *&aEnon[8 * v37];
                }

                *&__dst[0] = v38;
                DWORD2(__dst[0]) = v37;
                std::vector<std::pair<unsigned long,int>>::push_back[abi:ne200100](&__p, __dst);
                ++v37;
              }

              while (v37 != 35);
              *&__dst[0] = 0x534D43504F574552;
              DWORD2(__dst[0]) = -1;
              std::vector<std::pair<unsigned long,int>>::push_back[abi:ne200100](&__p, __dst);
              *&__dst[0] = 0x424C4B44534C4F54;
              DWORD2(__dst[0]) = -1;
              std::vector<std::pair<unsigned long,int>>::push_back[abi:ne200100](&__p, __dst);
              std::random_device::random_device[abi:ne200100](&v95);
              v39 = MEMORY[0x25F8B1000](&v95);
              LODWORD(__dst[0]) = v39;
              for (j = 1; j != 624; ++j)
              {
                v39 = j + 1812433253 * (v39 ^ (v39 >> 30));
                *(__dst + j) = v39;
              }

              v115[260] = 0;
              std::__shuffle[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<std::pair<unsigned long,int> *>,std::__wrap_iter<std::pair<unsigned long,int> *>,std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u> &>(__p, v97, __dst);
              v42 = __p;
              v41 = v97;
              obj = v97;
              while (v42 != v41)
              {
                v43 = v42[2];
                v93 = *v42;
                v44 = v81;
                v45 = v87;
                memset(v116, 0, 64);
                v46 = v44;
                [v44 bytes];
                CCDigestUpdate();
                v47 = v45;
                [v45 bytes];
                [v45 length];
                CCDigestUpdate();
                CCDigestUpdate();
                v48 = v44;
                [v44 bytes];
                CCDigestUpdate();
                CCDigestFinal();
                CCDigestReset();
                v49 = LODWORD(v116[0]);

                v50 = v101;
                v116[0] = v49;
                std::vector<unsigned long long>::push_back[abi:ne200100](&v101, v116);
                v93 = v49;
                v116[0] = &v93;
                v51 = (*(&v50 + 1) - v50) >> 3;
                std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v99, &v93, &std::piecewise_construct, v116)[3] = v51;
                if (v43 <= 0x22u)
                {
                  v93 = *&aEnon_0[8 * (v43 & 0x3F)];
                  v116[0] = &v93;
                  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v99, &v93, &std::piecewise_construct, v116)[3] = v51;
                  v93 = qword_25E3CC988[v43 & 0x3F];
                  v116[0] = &v93;
                  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v99, &v93, &std::piecewise_construct, v116)[3] = v51;
                }

                v42 += 4;
                v41 = obj;
              }

              v52 = v108 + 48;
              v53 = *(v108 + 24);
              if (v53)
              {
                *(v108 + 25) = v53;
                operator delete(v53);
                *v52 = 0;
                v52[1] = 0;
                v52[2] = 0;
              }

              *v52 = v101;
              v52[2] = v102;
              v101 = 0uLL;
              v102 = 0;
              std::__hash_table<std::__hash_value_type<unsigned long long,CLPCReportingStatID>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CLPCReportingStatID>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CLPCReportingStatID>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CLPCReportingStatID>>>::__move_assign((v108 + 18), v105);
              std::__hash_table<std::__hash_value_type<unsigned long long,CLPCReportingStatID>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CLPCReportingStatID>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CLPCReportingStatID>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CLPCReportingStatID>>>::__move_assign((v108 + 28), v103);
              std::__hash_table<std::__hash_value_type<unsigned long long,CLPCReportingStatID>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CLPCReportingStatID>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CLPCReportingStatID>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CLPCReportingStatID>>>::__move_assign((v108 + 38), v99);
              CCDigestDestroy();
              clpc::user::ioreport::ChannelList::fromProvider(v116);
              if (v116[1])
              {
                v54 = v108;
                ChannelCount = IOReportGetChannelCount();
                if (ChannelCount < 0)
                {
                  v56 = 2;
                }

                else
                {
                  v56 = ChannelCount;
                }

                std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__rehash<true>((v54 + 54), vcvtps_u32_f32(v56 / v54[62]));
                v113[0] = &unk_287018808;
                v113[1] = &v108;
                v113[3] = v113;
                clpc::user::ioreport::ChannelList::iterate(v116, v113);
                std::__function::__value_func<void ()(clpc::user::ioreport::Channel)>::~__value_func[abi:ne200100](v113);
                v57 = v108;
                clpc::user::iokit::Service::firstMatching("AGXAccelerator", 0, &v93);
                v58 = (v57 + 204);
                if (*(v57 + 832) == 1)
                {
                  clpc::user::iokit::Service::~Service(v58);
                }

                v59 = v94;
                *v58 = &unk_287018598;
                *(v58 + 3) = HIDWORD(v94);
                v94 = 0;
                *(v58 + 2) = v59;
                v58[16] = 1;
                clpc::user::iokit::Service::~Service(&v93);
                if (v108[208])
                {
                  clpc::user::ioreport::ChannelList::fromProvider(&v93);
                  if (v94 == 1)
                  {
                    v112[0] = &unk_287018898;
                    v112[1] = &v108;
                    v112[3] = v112;
                    clpc::user::ioreport::ChannelList::iterate(&v93, v112);
                    std::__function::__value_func<void ()(clpc::user::ioreport::Channel)>::~__value_func[abi:ne200100](v112);
                    if (v94)
                    {
                    }
                  }
                }

                for (k = 0; k != 40; ++k)
                {
                  {
                    goto LABEL_78;
                  }
                }

                v110[0] = &unk_28701A3D8;
                v110[1] = &unk_28701A420;
                v111[0] = &unk_28701A588;
                v111[1] = &unk_28701A5B0;
                v110[2] = &unk_28701A438;
                v110[3] = &unk_28701A468;
                v111[2] = &unk_28701A5D8;
                v111[3] = &unk_28701A600;
                v110[4] = &unk_28701A480;
                v110[5] = &unk_28701A498;
                v111[4] = &unk_28701A628;
                v111[5] = &unk_28701A650;
                v110[6] = &unk_28701A4B0;
                v110[7] = &unk_28701A4C8;
                v111[6] = &unk_28701A678;
                v111[7] = &unk_28701A6A0;
                v110[8] = &unk_28701A4E0;
                v110[9] = &unk_28701A4F8;
                v111[8] = &unk_28701A6C8;
                v111[9] = &unk_28701A6F0;
                v110[10] = &unk_28701A510;
                v111[10] = &unk_28701A718;
                v61 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v111 forKeys:v110 count:11];
                v62 = *(v108 + 128);
                *(v108 + 128) = v61;

                v91 = 0u;
                v92 = 0u;
                v89 = 0u;
                v90 = 0u;
                obja = *(v108 + 128);
                v63 = [obja countByEnumeratingWithState:&v89 objects:v109 count:16];
                if (v63)
                {
                  v84 = *v90;
                  do
                  {
                    for (m = 0; m != v63; ++m)
                    {
                      if (*v90 != v84)
                      {
                        objc_enumerationMutation(obja);
                      }

                      v65 = *(*(&v89 + 1) + 8 * m);
                      v66 = [*(v108 + 128) objectForKeyedSubscript:v65];
                      v67 = [v66 objectForKeyedSubscript:@"name"];
                      v68 = v108;
                      unsignedLongLongValue = [v65 unsignedLongLongValue];
                      v93 = &unsignedLongLongValue;
                      v69 = std::__hash_table<std::__hash_value_type<CLPCReportingStatID,NSString * {__strong}>,std::__unordered_map_hasher<CLPCReportingStatID,std::__hash_value_type<CLPCReportingStatID,NSString * {__strong}>,std::hash<CLPCReportingStatID>,std::equal_to<CLPCReportingStatID>,true>,std::__unordered_map_equal<CLPCReportingStatID,std::__hash_value_type<CLPCReportingStatID,NSString * {__strong}>,std::equal_to<CLPCReportingStatID>,std::hash<CLPCReportingStatID>,true>,std::allocator<std::__hash_value_type<CLPCReportingStatID,NSString * {__strong}>>>::__emplace_unique_key_args<CLPCReportingStatID,std::piecewise_construct_t const&,std::tuple<CLPCReportingStatID&&>,std::tuple<>>(v68 + 110, &unsignedLongLongValue, &std::piecewise_construct, &v93);
                      v70 = v69[3];
                      v69[3] = v67;

                      v71 = [v66 objectForKeyedSubscript:@"type"];
                      unsignedLongLongValue2 = [v71 unsignedLongLongValue];
                      v73 = v108;
                      unsignedLongLongValue = [v65 unsignedLongLongValue];
                      v93 = &unsignedLongLongValue;
                      std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v73 + 240, &unsignedLongLongValue, &std::piecewise_construct, &v93)[3] = unsignedLongLongValue2;

                      v74 = [v66 objectForKeyedSubscript:@"format"];
                      unsignedLongLongValue3 = [v74 unsignedLongLongValue];
                      v76 = v108;
                      unsignedLongLongValue = [v65 unsignedLongLongValue];
                      v93 = &unsignedLongLongValue;
                      std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v76 + 230, &unsignedLongLongValue, &std::piecewise_construct, &v93)[3] = unsignedLongLongValue3;

                      v10 = v85;
                    }

                    v63 = [obja countByEnumeratingWithState:&v89 objects:v109 count:16];
                  }

                  while (v63);
                }

                v108[14] = 0;
                *(v108 + 8) = 0;
                *(v108 + 1192) = 0;
                *(v108 + 150) = 0x900000000;
                *(v108 + 33) = *(v108 + 32);
                v77 = (v108 + 2);
                if (*(v108 + 4) != 0x10000)
                {
                  v78 = *(v108 + 3);
                  *(v108 + 3) = 0;
                  *(v77 + 3) = 0x10000;
                  if (v78)
                  {
                    MEMORY[0x25F8B1020](v78, 0x1000C8077774924);
                  }
                }

                v16 = v108;
              }

              else
              {
LABEL_78:
                v16 = 0;
              }

              if (LOBYTE(v116[1]) == 1)
              {
              }

              std::random_device::~random_device(&v95);
              if (__p)
              {
                v97 = __p;
                operator delete(__p);
              }

              std::__hash_table<CLPCReportingStatID,std::hash<CLPCReportingStatID>,std::equal_to<CLPCReportingStatID>,std::allocator<CLPCReportingStatID>>::~__hash_table(v99);
              if (v101)
              {
                *(&v101 + 1) = v101;
                operator delete(v101);
              }

              std::__hash_table<CLPCReportingStatID,std::hash<CLPCReportingStatID>,std::equal_to<CLPCReportingStatID>,std::allocator<CLPCReportingStatID>>::~__hash_table(v103);
              std::__hash_table<CLPCReportingStatID,std::hash<CLPCReportingStatID>,std::equal_to<CLPCReportingStatID>,std::allocator<CLPCReportingStatID>>::~__hash_table(v105);
            }

            else
            {
              v16 = 0;
            }
          }

          else
          {
            v16 = 0;
          }
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }

      v7 = v87;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (unint64_t)schemaIDForStatID:(unint64_t)d error:(id *)error
{
  result = HIDWORD(d);
  if (HIDWORD(d) >= 0xB)
  {
    return 0;
  }

  return result;
}

- (id)supportedStats
{
  v3 = objc_opt_new();
  v4 = v3;
  next = self->available_stat_ids.__table_.__first_node_.__next_;
  if (next)
  {
    [(CLPCReportingClient *)v3 supportedStats];
  }

  return v4;
}

- (id)enabledStats
{
  v3 = objc_opt_new();
  v4 = v3;
  begin = self->configured_stat_ids.__begin_;
  end = self->configured_stat_ids.__end_;
  if (begin != end)
  {
    [(CLPCReportingClient *)v3 enabledStats];
  }

  return v4;
}

- (BOOL)enableStats:(id)stats error:(id *)error
{
  v66[4] = *MEMORY[0x277D85DE8];
  statsCopy = stats;
  p_configured_stat_ids = &self->configured_stat_ids;
  self->configured_stat_ids.__end_ = self->configured_stat_ids.__begin_;
  channels = self->reporting_channels.channels;
  self->reporting_channels.channels = 0;

  v63 = 0;
  v64 = 0;
  v62 = &unk_2870185D8;
  subscribed_channels = self->reporting_subscription.subscribed_channels;
  self->reporting_subscription.subscription = 0;
  self->reporting_subscription.subscribed_channels = 0;

  v63 = 0;
  clpc::user::ioreport::Subscription::~Subscription(&v62);
  v53 = 0u;
  v54 = 0u;
  v55 = 1065353216;
  v50 = 0u;
  v51 = 0u;
  v52 = 1065353216;
  [(CLPCReportingStatSelection *)statsCopy selectedStats];
  for (i = v64; i; i = *i)
  {
    *&v47 = *(i + 2);
    if (std::__hash_table<CLPCReportingStatID,std::hash<CLPCReportingStatID>,std::equal_to<CLPCReportingStatID>,std::allocator<CLPCReportingStatID>>::find<CLPCReportingStatID>(&self->available_stat_ids.__table_.__bucket_list_.__ptr_, &v47))
    {
      std::__hash_table<CLPCReportingStatID,std::hash<CLPCReportingStatID>,std::equal_to<CLPCReportingStatID>,std::allocator<CLPCReportingStatID>>::__emplace_unique_key_args<CLPCReportingStatID,CLPCReportingStatID const&>(&v53, &v47, &v47);
    }

    if (DWORD1(v47) <= 0xA && DWORD1(v47) - 8 <= 2)
    {
      std::__hash_table<CLPCReportingStatID,std::hash<CLPCReportingStatID>,std::equal_to<CLPCReportingStatID>,std::allocator<CLPCReportingStatID>>::__emplace_unique_key_args<CLPCReportingStatID,CLPCReportingStatID const&>(&v50, &v47, &v47);
    }
  }

  std::__hash_table<CLPCReportingStatID,std::hash<CLPCReportingStatID>,std::equal_to<CLPCReportingStatID>,std::allocator<CLPCReportingStatID>>::~__hash_table(&v62);
  v62 = 1;
  if (std::__hash_table<CLPCReportingStatID,std::hash<CLPCReportingStatID>,std::equal_to<CLPCReportingStatID>,std::allocator<CLPCReportingStatID>>::find<CLPCReportingStatID>(&self->available_stat_ids.__table_.__bucket_list_.__ptr_, &v62))
  {
    v62 = 1;
    std::__hash_table<CLPCReportingStatID,std::hash<CLPCReportingStatID>,std::equal_to<CLPCReportingStatID>,std::allocator<CLPCReportingStatID>>::__emplace_unique_key_args<CLPCReportingStatID,CLPCReportingStatID const&>(&v53, &v62, &v62);
  }

  v12 = BYTE8(v51);
  if (*(&v51 + 1))
  {
    v62 = 2;
    std::__hash_table<CLPCReportingStatID,std::hash<CLPCReportingStatID>,std::equal_to<CLPCReportingStatID>,std::allocator<CLPCReportingStatID>>::__emplace_unique_key_args<CLPCReportingStatID,CLPCReportingStatID const&>(&v50, &v62, &v62);
    v12 = 1;
  }

  self->thread_group_stats_requested = v12;
  [statsCopy deselectAll];
  v47 = 0u;
  v48 = 0u;
  v49 = 1065353216;
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__rehash<true>(&v47, (*(&v54 + 1) + (4 * self->num_cpu_clusters)));
  v13 = v54;
  if (!v54)
  {
LABEL_22:
    v40 = statsCopy;
    clpc::user::ioreport::ChannelList::fromProvider(&obj);
    if (v46)
    {
      v44 = 0;
      v59[0] = &unk_287018918;
      v59[1] = &v47;
      v59[2] = &v44;
      v59[3] = v59;
      v62 = MEMORY[0x277D85DD0];
      v63 = 3321888768;
      v64 = ___ZN4clpc4user8ioreport11ChannelList6filterENSt3__18functionIFbNS1_7ChannelEEEE_block_invoke;
      v65 = &__block_descriptor_64_ea8_32c55_ZTSNSt3__18functionIFbN4clpc4user8ioreport7ChannelEEEE_e25_i16__0____CFDictionary__8l;
      std::__function::__value_func<BOOL ()(clpc::user::ioreport::Channel)>::__value_func[abi:ne200100](v66, v59);
      IOReportPrune();
      std::__function::__value_func<BOOL ()(clpc::user::ioreport::Channel)>::~__value_func[abi:ne200100](v66);
      std::__function::__value_func<BOOL ()(clpc::user::ioreport::Channel)>::~__value_func[abi:ne200100](v59);
      if (self->agx_service.__engaged_)
      {
        clpc::user::ioreport::ChannelList::fromProvider(&v42);
        v41 = 0;
        v58[0] = &unk_2870189A8;
        v58[1] = &v47;
        v58[2] = &v41;
        v58[3] = v58;
        v17 = v42;
        v62 = MEMORY[0x277D85DD0];
        v63 = 3321888768;
        v64 = ___ZN4clpc4user8ioreport11ChannelList6filterENSt3__18functionIFbNS1_7ChannelEEEE_block_invoke;
        v65 = &__block_descriptor_64_ea8_32c55_ZTSNSt3__18functionIFbN4clpc4user8ioreport7ChannelEEEE_e25_i16__0____CFDictionary__8l;
        std::__function::__value_func<BOOL ()(clpc::user::ioreport::Channel)>::__value_func[abi:ne200100](v66, v58);
        IOReportPrune();
        std::__function::__value_func<BOOL ()(clpc::user::ioreport::Channel)>::~__value_func[abi:ne200100](v66);
        std::__function::__value_func<BOOL ()(clpc::user::ioreport::Channel)>::~__value_func[abi:ne200100](v58);
        if (v41)
        {
          v44 += v41;
          v18 = v17;
          IOReportMergeChannels();
        }

        if (v43 == 1)
        {
        }
      }

      if (*(&v48 + 1) == v44)
      {
        clpc::user::ioreport::ChannelList::subscribe(&v62);
        v19 = v65;
        if (v65)
        {
          std::vector<CLPCReportingStatID>::reserve(&self->configured_stat_ids.__begin_, *(&v54 + 1));
          v20 = 0;
          v21 = statsCopy + 8;
          do
          {
            if (std::__hash_table<CLPCReportingStatID,std::hash<CLPCReportingStatID>,std::equal_to<CLPCReportingStatID>,std::allocator<CLPCReportingStatID>>::find<CLPCReportingStatID>(&v53, &v42) || std::__hash_table<CLPCReportingStatID,std::hash<CLPCReportingStatID>,std::equal_to<CLPCReportingStatID>,std::allocator<CLPCReportingStatID>>::find<CLPCReportingStatID>(&v50, &v42))
            {
              end = self->configured_stat_ids.__end_;
              cap = self->configured_stat_ids.__cap_;
              if (end >= cap)
              {
                begin = p_configured_stat_ids->__begin_;
                v26 = end - p_configured_stat_ids->__begin_;
                v27 = v26 >> 3;
                v28 = (v26 >> 3) + 1;
                if (v28 >> 61)
                {
                  std::vector<std::pair<unsigned long,int>>::__throw_length_error[abi:ne200100]();
                }

                v29 = cap - begin;
                if (v29 >> 2 > v28)
                {
                  v28 = v29 >> 2;
                }

                v30 = v29 >= 0x7FFFFFFFFFFFFFF8;
                v31 = 0x1FFFFFFFFFFFFFFFLL;
                if (!v30)
                {
                  v31 = v28;
                }

                if (v31)
                {
                  std::allocator<CLPCReportingStatID>::allocate_at_least[abi:ne200100](&self->configured_stat_ids, v31);
                }

                *(8 * v27) = v42;
                v24 = (8 * v27 + 8);
                memcpy(0, begin, v26);
                v32 = p_configured_stat_ids->__begin_;
                p_configured_stat_ids->__begin_ = 0;
                self->configured_stat_ids.__end_ = v24;
                self->configured_stat_ids.__cap_ = 0;
                if (v32)
                {
                  operator delete(v32);
                }

                statsCopy = v40;
              }

              else
              {
                *end = v42;
                v24 = end + 1;
              }

              self->configured_stat_ids.__end_ = v24;
              if (statsCopy)
              {
                v33 = 0;
                {
                  if (++v33 == 40)
                  {
                    goto LABEL_51;
                  }
                }

                v21[v33] = 1;
              }
            }

LABEL_51:
            ++v20;
          }

          while (v20 != 40);
          objc_storeStrong(&self->reporting_channels.channels, obj);
          v34 = v64;
          *(v39 + 8) = v63;
          objc_storeStrong(v38, v34);
          v63 = 0;
        }

        else if (error)
        {
          v56 = *MEMORY[0x277CCA068];
          v57 = @"Failed to subscribe to AppleCLPC IOReporting channels.";
          v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
          *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"CLPCErrorDomain" code:-536870212 userInfo:v37];
        }

        if (v65 == 1)
        {
          clpc::user::ioreport::Subscription::~Subscription(&v62);
        }

        goto LABEL_58;
      }
    }

    else if (error)
    {
      v60 = *MEMORY[0x277CCA068];
      v61 = @"Failed to list AppleCLPC IOReporting channels.";
      v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"CLPCErrorDomain" code:-536870212 userInfo:v35];
    }

    v19 = 0;
LABEL_58:
    if (v46 == 1)
    {
    }

    goto LABEL_60;
  }

  while (1)
  {
    next = self->channel_to_stat_map.__table_.__first_node_.__next_;
    if (!next)
    {
      break;
    }

    v15 = 0;
    v16 = v13[2];
    do
    {
      if (next[3] == v16)
      {
        std::__hash_table<CLPCReportingStatID,std::hash<CLPCReportingStatID>,std::equal_to<CLPCReportingStatID>,std::allocator<CLPCReportingStatID>>::__emplace_unique_key_args<CLPCReportingStatID,CLPCReportingStatID const&>(&v47, next + 2, next + 2);
        ++v15;
      }

      next = *next;
    }

    while (next);
    if (!v15)
    {
      break;
    }

    v13 = *v13;
    if (!v13)
    {
      goto LABEL_22;
    }
  }

  v19 = 0;
LABEL_60:
  std::__hash_table<CLPCReportingStatID,std::hash<CLPCReportingStatID>,std::equal_to<CLPCReportingStatID>,std::allocator<CLPCReportingStatID>>::~__hash_table(&v47);
  std::__hash_table<CLPCReportingStatID,std::hash<CLPCReportingStatID>,std::equal_to<CLPCReportingStatID>,std::allocator<CLPCReportingStatID>>::~__hash_table(&v50);
  std::__hash_table<CLPCReportingStatID,std::hash<CLPCReportingStatID>,std::equal_to<CLPCReportingStatID>,std::allocator<CLPCReportingStatID>>::~__hash_table(&v53);

  return v19;
}

- (uint64_t)ensureStatsEnabled:(uint64_t)result
{
  v5[1] = *MEMORY[0x277D85DE8];
  if (result)
  {
    if (*(result + 264) == *(result + 256))
    {
      if (a2)
      {
        v4 = *MEMORY[0x277CCA068];
        v5[0] = @"No stats enabled.";
        v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
        *a2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CLPCErrorDomain" code:-536870206 userInfo:v3];
      }

      return 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

- (id)buildSchemas:(void *)schemas error:
{
  v23[14] = *MEMORY[0x277D85DE8];
  v19[0] = result;
  if (result)
  {
    v3 = result;
    [(CLPCReportingClient *)result clearSchemas];
    v18 = v19;
    *(v23 + 7) = 0;
    v23[0] = 0;
    *(v22 + 7) = 0;
    v22[0] = 0;
    v5 = v3[32];
    v4 = v3[33];
    if (v5 == v4)
    {
LABEL_11:
      v9 = 0;
      while (1)
      {
        v10 = qword_25E3CC088[v9];
        if (*(v22 + v10) == 1 && ([CLPCReportingClient buildSchemas:error:]::$_12::operator()(&v18, v10, 1, 1, 1uLL, 0, 0, @"Time") & 1) == 0)
        {
          break;
        }

        if (++v9 == 4)
        {
          v11 = 0;
          while (1)
          {
            v12 = qword_25E3CC070[v11];
            if (*(v22 + v12) == 1 && ([CLPCReportingClient buildSchemas:error:]::$_12::operator()(&v18, v12, 1, 2, 0, 1, 0, @"ID") & 1) == 0)
            {
              goto LABEL_30;
            }

            if (++v11 == 3)
            {
              v13 = 0;
              while (1)
              {
                v14 = qword_25E3CC0A8[v13];
                if (*(v22 + v14) == 1 && (([CLPCReportingClient buildSchemas:error:]::$_12::operator()(&v18, qword_25E3CC0A8[v13], 1, 1, 1uLL, 0, 0, @"Time") & 1) == 0 || ([CLPCReportingClient buildSchemas:error:]::$_12::operator()(&v18, v14, 1, 1, 2uLL, 0, 0, @"Group ID") & 1) == 0))
                {
                  goto LABEL_30;
                }

                if (++v13 == 3)
                {
                  if ([CLPCReportingClient buildSchemas:error:]::$_12::operator()(&v18, 10, 1, 2, 0, 1, 0, @"ID"))
                  {
                    v15 = 0;
                    while (1)
                    {
                      v16 = qword_25E3CC088[v15];
                      if (*(v22 + v16) == 1)
                      {
                        [(CLPCReportingSchema *)*(v19[0] + 280 + 8 * v16) finalizeColumns];
                      }

                      *(v23 + v16) = 1;
                      if (++v15 == 4)
                      {
                        LOBYTE(v20) = 1;
                        operator new();
                      }
                    }
                  }

                  goto LABEL_30;
                }
              }
            }
          }
        }
      }
    }

    else
    {
      while (1)
      {
        v6 = *v5;
        v7 = HIDWORD(*v5);
        if (v7 >= 0xB)
        {
          break;
        }

        if (v7)
        {
          *(v22 + v7) = 1;
          if (v7 <= 7 && ((1 << v7) & 0x8E) != 0)
          {
            v20 = 0;
            v21 = v6;
            v19[1] = 0;
            v23[5] = 0;
            operator new();
          }
        }

        if (++v5 == v4)
        {
          goto LABEL_11;
        }
      }
    }

LABEL_30:
    return 0;
  }

  return result;
}

- (uint64_t)buildSchemas:error:
{
  {
    return self + 8;
  }

  else
  {
    return 0;
  }
}

- (CLPCReportingReadResult)convertSampleList:(uint64_t)list error:(uint64_t *)error
{
  v12 = *MEMORY[0x277D85DE8];
  listCopy = list;
  if (list)
  {
    v2 = 0;
    v9 = 0;
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    while (1)
    {
      v3 = *(listCopy + 280 + v2);
      if (v3 && [*(v3 + 24) count])
      {
        array = [MEMORY[0x277CBEB18] array];
        v5 = *(v7 + v2);
        *(v7 + v2) = array;
      }

      v2 += 8;
      if (v2 == 88)
      {
        v11 = 0;
        operator new();
      }
    }
  }

  return 0;
}

- (void)convertSampleList:error:
{
  v17 = a5;
  columns = [*(**self + 280 + 8 * a2) columns];
  v10 = [columns count];

  if (v10 > a4)
  {
    v11 = *(self + 8);
    while ([*(v11 + 8 * a2) count] <= a3)
    {
      v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:v10];
      v13 = 1;
      do
      {
        [v12 addObject:&unk_28701A528];
      }

      while (v10 > v13++);
      [*(v11 + 8 * a2) addObject:v12];
    }

    if (v17)
    {
      null = [*(v11 + 8 * a2) objectAtIndexedSubscript:a3];
      [null setObject:v17 atIndexedSubscript:a4];
    }

    else
    {
      null = [MEMORY[0x277CBEB68] null];
      v16 = [*(v11 + 8 * a2) objectAtIndexedSubscript:a3];
      [v16 setObject:null atIndexedSubscript:a4];
    }
  }
}

- (id)readStats:(id *)stats
{
  v21[3] = *MEMORY[0x277D85DE8];
  if ([(CLPCReportingClient *)self ensureStatsEnabled:stats]&& (v17[0] = 0, (Samples = IOReportCreateSamples()) != 0))
  {
    if (self->thread_group_stats_requested)
    {
      if (self->previous_timestamp)
      {
        v20[0] = @"format";
        v20[1] = @"group_ids";
        v21[0] = @"shared_report";
        v21[1] = @"all";
        v20[2] = @"last_request_time";
        v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
        v21[2] = v6;
        v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3];
      }

      else
      {
        v7 = &unk_28701A740;
      }

      clpc::user::iokit::CLPC::performRPC(v17, &self->super.clpc, @"getThreadGroup", v7);
      v10 = v17[0];
      if (stats && !v17[0])
      {
        v18 = *MEMORY[0x277CCA068];
        v19 = @"Unable to query thread groups.";
        v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
        *stats = [MEMORY[0x277CCA9B8] errorWithDomain:@"CLPCErrorDomain" code:-536870199 userInfo:v11];

        v10 = v17[0];
      }

      v9 = v10;
      [(CLPCReportingClient *)self decodeTGRawData:v9 delta:0 error:stats];
    }

    else
    {
      v9 = 0;
    }

    v12 = Samples;
    v16 = v12;
    v13 = [(CLPCReportingClient *)&self->super.super.isa buildSchemas:stats error:?];

    if (v13)
    {
      v15 = v12;
      v8 = [CLPCReportingClient convertSampleList:&v15 error:?];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (uint64_t)decodeTGRawData:(char)data delta:(void *)delta error:
{
  v104 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v72 = v5;
  if (self)
  {
    v96 = 0;
    v97 = 0;
    v94 = 0;
    v95 = &v96;
    __src = 0;
    v93 = 0;
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    obj = [v5 objectForKeyedSubscript:@"shared_reports"];
    v6 = [obj countByEnumeratingWithState:&v88 objects:v103 count:16];
    if (v6)
    {
      v7 = *v89;
      selfCopy = self;
      v75 = *v89;
      do
      {
        v8 = 0;
        v76 = v6;
        do
        {
          if (*v89 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v88 + 1) + 8 * v8);
          if ([v9 length] >= 0x49)
          {
            v85 = 0u;
            v86 = 0u;
            v87 = 1065353216;
            v82 = 0u;
            v83 = 0u;
            v84 = 1065353216;
            memset(v102, 0, 41);
            v100 = 0u;
            v101 = 0u;
            [v9 getBytes:&v100 length:73];
            v10 = *(&v102[1] + 9);
            v11 = *(&v102[2] + 1);
            v12 = [v9 length];
            v13 = 16 * v11;
            v14 = 16 * v11 + *(&v102[2] + 5);
            self = selfCopy;
            if (v12 >= v14)
            {
              v81[0] = &v100 + 1;
              v15 = std::__tree<std::__value_type<unsigned long long,clpc::shared::rpc::ThreadGroupReporting>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,clpc::shared::rpc::ThreadGroupReporting>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,clpc::shared::rpc::ThreadGroupReporting>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&v95, (&v100 + 1), &std::piecewise_construct, v81);
              v16 = *(&v102[1] + 9);
              v18 = v102[0];
              v17 = v102[1];
              v19 = v100;
              *(v15 + 7) = v101;
              *(v15 + 9) = v18;
              *(v15 + 11) = v17;
              *(v15 + 97) = v16;
              *(v15 + 5) = v19;
              v20 = *(v102 + 9);
              __p[0] = 0x900000000;
              v81[0] = __p;
              std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&v85, __p, &std::piecewise_construct, v81)[3] = v20;
              v21 = *(&v102[1] + 1);
              __p[0] = 0x900000001;
              v81[0] = __p;
              std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&v85, __p, &std::piecewise_construct, v81)[3] = v21;
              std::vector<clpc::shared::rpc::ThreadGroupReportingCPUCluster>::vector[abi:ne200100](v81, *(&v102[1] + 9));
              std::vector<clpc::shared::rpc::ThreadGroupReportingANECluster>::vector[abi:ne200100](__p, *(&v102[2] + 1));
              [v9 getBytes:v81[0] range:{*(&v102[1] + 13), 40 * v10}];
              self = selfCopy;
              [v9 getBytes:__p[0] range:{*(&v102[2] + 5), v13}];
              if (*(&v102[1] + 9))
              {
                v22 = 0;
                v23 = 0;
                do
                {
                  v79 = 0xA00000000;
                  v99 = &v79;
                  v24 = std::__hash_table<std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>,std::__unordered_map_hasher<CLPCReportingStatID,std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>,std::hash<CLPCReportingStatID>,std::equal_to<CLPCReportingStatID>,true>,std::__unordered_map_equal<CLPCReportingStatID,std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>,std::equal_to<CLPCReportingStatID>,std::hash<CLPCReportingStatID>,true>,std::allocator<std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>>>::__emplace_unique_key_args<CLPCReportingStatID,std::piecewise_construct_t const&,std::tuple<CLPCReportingStatID const&>,std::tuple<>>(&v82, &v79, &std::piecewise_construct, &v99);
                  std::vector<unsigned long long>::push_back[abi:ne200100](v24 + 3, (v81[0] + v22));
                  v79 = 0xA00000002;
                  v99 = &v79;
                  v25 = std::__hash_table<std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>,std::__unordered_map_hasher<CLPCReportingStatID,std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>,std::hash<CLPCReportingStatID>,std::equal_to<CLPCReportingStatID>,true>,std::__unordered_map_equal<CLPCReportingStatID,std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>,std::equal_to<CLPCReportingStatID>,std::hash<CLPCReportingStatID>,true>,std::allocator<std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>>>::__emplace_unique_key_args<CLPCReportingStatID,std::piecewise_construct_t const&,std::tuple<CLPCReportingStatID const&>,std::tuple<>>(&v82, &v79, &std::piecewise_construct, &v99);
                  std::vector<unsigned long long>::push_back[abi:ne200100](v25 + 3, (v81[0] + v22 + 24));
                  v79 = 0xA00000003;
                  v99 = &v79;
                  v26 = std::__hash_table<std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>,std::__unordered_map_hasher<CLPCReportingStatID,std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>,std::hash<CLPCReportingStatID>,std::equal_to<CLPCReportingStatID>,true>,std::__unordered_map_equal<CLPCReportingStatID,std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>,std::equal_to<CLPCReportingStatID>,std::hash<CLPCReportingStatID>,true>,std::allocator<std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>>>::__emplace_unique_key_args<CLPCReportingStatID,std::piecewise_construct_t const&,std::tuple<CLPCReportingStatID const&>,std::tuple<>>(&v82, &v79, &std::piecewise_construct, &v99);
                  std::vector<unsigned long long>::push_back[abi:ne200100](v26 + 3, (v81[0] + v22 + 32));
                  v79 = 0xA00000001;
                  v99 = &v79;
                  v27 = std::__hash_table<std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>,std::__unordered_map_hasher<CLPCReportingStatID,std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>,std::hash<CLPCReportingStatID>,std::equal_to<CLPCReportingStatID>,true>,std::__unordered_map_equal<CLPCReportingStatID,std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>,std::equal_to<CLPCReportingStatID>,std::hash<CLPCReportingStatID>,true>,std::allocator<std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>>>::__emplace_unique_key_args<CLPCReportingStatID,std::piecewise_construct_t const&,std::tuple<CLPCReportingStatID const&>,std::tuple<>>(&v82, &v79, &std::piecewise_construct, &v99);
                  v99 = (*(v81[0] + v22 + 16) + *(v81[0] + v22 + 8));
                  std::vector<unsigned long long>::push_back[abi:ne200100](v27 + 3, &v99);
                  ++v23;
                  v22 += 40;
                }

                while (v23 < *(&v102[1] + 9));
              }

              if (*(&v102[2] + 1))
              {
                v28 = 0;
                v29 = 0;
                do
                {
                  v30 = *(__p[0] + v28 + 8);
                  v79 = 0x900000003;
                  v99 = &v79;
                  v31 = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&v85, &v79, &std::piecewise_construct, &v99);
                  v31[3] += v30;
                  v32 = *(__p[0] + v28);
                  v79 = 0x900000002;
                  v99 = &v79;
                  v33 = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&v85, &v79, &std::piecewise_construct, &v99);
                  v33[3] += v32;
                  ++v29;
                  v28 += 16;
                }

                while (v29 < *(&v102[2] + 1));
              }

              if (data)
              {
                if (std::__hash_table<CLPCReportingStatID,std::hash<CLPCReportingStatID>,std::equal_to<CLPCReportingStatID>,std::allocator<CLPCReportingStatID>>::find<CLPCReportingStatID>((selfCopy + 1032), (&v100 + 1)) && std::__hash_table<CLPCReportingStatID,std::hash<CLPCReportingStatID>,std::equal_to<CLPCReportingStatID>,std::allocator<CLPCReportingStatID>>::find<CLPCReportingStatID>((selfCopy + 1072), (&v100 + 1)))
                {
                  if (![CLPCReportingClient computeTGDiff:selfCopy cluster_acc:&v85 tg_id:&v82 error:*(&v100 + 1)])
                  {
                  }
                }

                else
                {
                  v99 = (&v100 + 1);
                  v36 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<CLPCReportingStatID,unsigned long long>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<CLPCReportingStatID,unsigned long long>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<CLPCReportingStatID,unsigned long long>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<CLPCReportingStatID,unsigned long long>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((selfCopy + 1032), (&v100 + 1), &std::piecewise_construct, &v99);
                  if (v36 + 3 != &v85)
                  {
                    *(v36 + 14) = v87;
                    std::__hash_table<std::__hash_value_type<CLPCReportingStatID,unsigned long long>,std::__unordered_map_hasher<CLPCReportingStatID,std::__hash_value_type<CLPCReportingStatID,unsigned long long>,std::hash<CLPCReportingStatID>,std::equal_to<CLPCReportingStatID>,true>,std::__unordered_map_equal<CLPCReportingStatID,std::__hash_value_type<CLPCReportingStatID,unsigned long long>,std::equal_to<CLPCReportingStatID>,std::hash<CLPCReportingStatID>,true>,std::allocator<std::__hash_value_type<CLPCReportingStatID,unsigned long long>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<CLPCReportingStatID,unsigned long long>,void *> *>>(v36 + 3, v86, 0);
                  }

                  v99 = (&v100 + 1);
                  v37 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<CLPCReportingStatID,std::vector<unsigned long long>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<CLPCReportingStatID,std::vector<unsigned long long>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<CLPCReportingStatID,std::vector<unsigned long long>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<CLPCReportingStatID,std::vector<unsigned long long>>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((selfCopy + 1072), (&v100 + 1), &std::piecewise_construct, &v99);
                  if (v37 + 3 != &v82)
                  {
                    *(v37 + 14) = v84;
                    std::__hash_table<std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>,std::__unordered_map_hasher<CLPCReportingStatID,std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>,std::hash<CLPCReportingStatID>,std::equal_to<CLPCReportingStatID>,true>,std::__unordered_map_equal<CLPCReportingStatID,std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>,std::equal_to<CLPCReportingStatID>,std::hash<CLPCReportingStatID>,true>,std::allocator<std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>,void *> *>>(v37 + 3, v83, 0);
                  }
                }
              }

              else
              {
                v99 = (&v100 + 1);
                v34 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<CLPCReportingStatID,unsigned long long>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<CLPCReportingStatID,unsigned long long>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<CLPCReportingStatID,unsigned long long>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<CLPCReportingStatID,unsigned long long>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((selfCopy + 1032), (&v100 + 1), &std::piecewise_construct, &v99);
                if (v34 + 3 != &v85)
                {
                  *(v34 + 14) = v87;
                  std::__hash_table<std::__hash_value_type<CLPCReportingStatID,unsigned long long>,std::__unordered_map_hasher<CLPCReportingStatID,std::__hash_value_type<CLPCReportingStatID,unsigned long long>,std::hash<CLPCReportingStatID>,std::equal_to<CLPCReportingStatID>,true>,std::__unordered_map_equal<CLPCReportingStatID,std::__hash_value_type<CLPCReportingStatID,unsigned long long>,std::equal_to<CLPCReportingStatID>,std::hash<CLPCReportingStatID>,true>,std::allocator<std::__hash_value_type<CLPCReportingStatID,unsigned long long>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<CLPCReportingStatID,unsigned long long>,void *> *>>(v34 + 3, v86, 0);
                }

                v99 = (&v100 + 1);
                v35 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<CLPCReportingStatID,std::vector<unsigned long long>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<CLPCReportingStatID,std::vector<unsigned long long>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<CLPCReportingStatID,std::vector<unsigned long long>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<CLPCReportingStatID,std::vector<unsigned long long>>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((selfCopy + 1072), (&v100 + 1), &std::piecewise_construct, &v99);
                if (v35 + 3 != &v82)
                {
                  *(v35 + 14) = v84;
                  std::__hash_table<std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>,std::__unordered_map_hasher<CLPCReportingStatID,std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>,std::hash<CLPCReportingStatID>,std::equal_to<CLPCReportingStatID>,true>,std::__unordered_map_equal<CLPCReportingStatID,std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>,std::equal_to<CLPCReportingStatID>,std::hash<CLPCReportingStatID>,true>,std::allocator<std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>,void *> *>>(v35 + 3, v83, 0);
                }
              }

              v99 = (&v100 + 1);
              v38 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<CLPCReportingStatID,unsigned long long>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<CLPCReportingStatID,unsigned long long>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<CLPCReportingStatID,unsigned long long>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<CLPCReportingStatID,unsigned long long>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((selfCopy + 1112), (&v100 + 1), &std::piecewise_construct, &v99);
              std::__hash_table<std::__hash_value_type<unsigned long long,CLPCReportingStatID>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CLPCReportingStatID>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CLPCReportingStatID>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CLPCReportingStatID>>>::__move_assign((v38 + 3), &v85);
              v99 = (&v100 + 1);
              v39 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<CLPCReportingStatID,std::vector<unsigned long long>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<CLPCReportingStatID,std::vector<unsigned long long>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<CLPCReportingStatID,std::vector<unsigned long long>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<CLPCReportingStatID,std::vector<unsigned long long>>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((selfCopy + 1152), (&v100 + 1), &std::piecewise_construct, &v99);
              std::__hash_table<std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>,std::__unordered_map_hasher<CLPCReportingStatID,std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>,std::hash<CLPCReportingStatID>,std::equal_to<CLPCReportingStatID>,true>,std::__unordered_map_equal<CLPCReportingStatID,std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>,std::equal_to<CLPCReportingStatID>,std::hash<CLPCReportingStatID>,true>,std::allocator<std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>>>::__move_assign((v39 + 3), &v82);
              v40 = *(&v100 + 1);
              v41 = *(selfCopy + 1200);
              if (HIDWORD(v41) <= 0xA && (v41 & 0xFFFFFFFF00000000) == 0xA00000000)
              {
                v99 = (&v100 + 1);
                v42 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<CLPCReportingStatID,std::vector<unsigned long long>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<CLPCReportingStatID,std::vector<unsigned long long>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<CLPCReportingStatID,std::vector<unsigned long long>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<CLPCReportingStatID,std::vector<unsigned long long>>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((selfCopy + 1152), (&v100 + 1), &std::piecewise_construct, &v99);
                v99 = (selfCopy + 1200);
                v43 = std::__hash_table<std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>,std::__unordered_map_hasher<CLPCReportingStatID,std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>,std::hash<CLPCReportingStatID>,std::equal_to<CLPCReportingStatID>,true>,std::__unordered_map_equal<CLPCReportingStatID,std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>,std::equal_to<CLPCReportingStatID>,std::hash<CLPCReportingStatID>,true>,std::allocator<std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>>>::__emplace_unique_key_args<CLPCReportingStatID,std::piecewise_construct_t const&,std::tuple<CLPCReportingStatID const&>,std::tuple<>>(v42 + 3, (selfCopy + 1200), &std::piecewise_construct, &v99);
                v44 = *(selfCopy + 40);
                if (v44)
                {
                  v45 = 0;
                  v46 = v43[3];
                  do
                  {
                    v47 = *v46++;
                    v45 += v47;
                    --v44;
                  }

                  while (v44);
                }

                else
                {
                  v45 = 0;
                }
              }

              else
              {
                v99 = (&v100 + 1);
                v48 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<CLPCReportingStatID,unsigned long long>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<CLPCReportingStatID,unsigned long long>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<CLPCReportingStatID,unsigned long long>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<CLPCReportingStatID,unsigned long long>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((selfCopy + 1112), (&v100 + 1), &std::piecewise_construct, &v99);
                v99 = (selfCopy + 1200);
                v45 = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v48 + 6, (selfCopy + 1200), &std::piecewise_construct, &v99)[3];
              }

              v49 = v93;
              if (v93 >= v94)
              {
                v51 = __src;
                v52 = v93 - __src;
                v53 = (v93 - __src) >> 4;
                v54 = v53 + 1;
                if ((v53 + 1) >> 60)
                {
                  std::vector<std::pair<unsigned long,int>>::__throw_length_error[abi:ne200100]();
                }

                v55 = v94 - __src;
                if ((v94 - __src) >> 3 > v54)
                {
                  v54 = v55 >> 3;
                }

                v56 = v55 >= 0x7FFFFFFFFFFFFFF0;
                v57 = 0xFFFFFFFFFFFFFFFLL;
                if (!v56)
                {
                  v57 = v54;
                }

                if (v57)
                {
                  std::allocator<clpc::shared::rpc::ThreadGroupReportingANECluster>::allocate_at_least[abi:ne200100](&__src, v57);
                }

                v58 = (16 * v53);
                *v58 = v40;
                v58[1] = v45;
                v50 = (16 * v53 + 16);
                memcpy(0, v51, v52);
                v59 = __src;
                __src = 0;
                v93 = v50;
                v94 = 0;
                if (v59)
                {
                  operator delete(v59);
                }

                self = selfCopy;
              }

              else
              {
                *v93 = v40;
                *(v49 + 1) = v45;
                v50 = v49 + 16;
              }

              v93 = v50;
              if (__p[0])
              {
                __p[1] = __p[0];
                operator delete(__p[0]);
              }

              if (v81[0])
              {
                v81[1] = v81[0];
                operator delete(v81[0]);
              }
            }

            std::__hash_table<std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>,std::__unordered_map_hasher<CLPCReportingStatID,std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>,std::hash<CLPCReportingStatID>,std::equal_to<CLPCReportingStatID>,true>,std::__unordered_map_equal<CLPCReportingStatID,std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>,std::equal_to<CLPCReportingStatID>,std::hash<CLPCReportingStatID>,true>,std::allocator<std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>>>::~__hash_table(&v82);
            std::__hash_table<CLPCReportingStatID,std::hash<CLPCReportingStatID>,std::equal_to<CLPCReportingStatID>,std::allocator<CLPCReportingStatID>>::~__hash_table(&v85);
            v7 = v75;
            v6 = v76;
          }

          ++v8;
        }

        while (v8 != v6);
        v6 = [obj countByEnumeratingWithState:&v88 objects:v103 count:16];
      }

      while (v6);
    }

    v60 = 126 - 2 * __clz((v93 - __src) >> 4);
    if (v93 == __src)
    {
      v61 = 0;
    }

    else
    {
      v61 = v60;
    }

    std::__introsort<std::_ClassicAlgPolicy,[CLPCReportingClient decodeTGRawData:delta:error:]::$_10 &,std::pair<unsigned long long,unsigned long long> *,false>(__src, v93, v61, 1);
    v62 = __src;
    v63 = *(self + 56);
    if ((v93 - __src) >> 4 >= v63)
    {
      v64 = *(self + 56);
    }

    else
    {
      v64 = (v93 - __src) >> 4;
    }

    if (v63)
    {
      v65 = v64;
    }

    else
    {
      v65 = (v93 - __src) >> 4;
    }

    if (v65 < (v93 - __src) >> 4)
    {
      v66 = 16 * v65;
      do
      {
        std::__tree<std::__value_type<unsigned long long,clpc::shared::rpc::ThreadGroupReporting>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,clpc::shared::rpc::ThreadGroupReporting>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,clpc::shared::rpc::ThreadGroupReporting>>>::__erase_unique<unsigned long long>(&v95, &v62[v66]);
        ++v65;
        v62 = __src;
        v66 += 16;
      }

      while (v65 < (v93 - __src) >> 4);
    }

    v67 = self + 1008;
    std::__tree<std::__value_type<unsigned long long,clpc::shared::rpc::ThreadGroupReporting>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,clpc::shared::rpc::ThreadGroupReporting>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,clpc::shared::rpc::ThreadGroupReporting>>>::destroy(self + 1000, *(self + 1008));
    v68 = v96;
    *(self + 1000) = v95;
    *(self + 1008) = v68;
    v69 = v97;
    *(self + 1016) = v97;
    if (v69)
    {
      v68[2] = v67;
      v95 = &v96;
      v96 = 0;
      v97 = 0;
      v68 = 0;
    }

    else
    {
      *(self + 1000) = v67;
    }

    v98 = 1;
    if (__src)
    {
      v93 = __src;
      operator delete(__src);
      v68 = v96;
    }

    std::__tree<std::__value_type<unsigned long long,clpc::shared::rpc::ThreadGroupReporting>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,clpc::shared::rpc::ThreadGroupReporting>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,clpc::shared::rpc::ThreadGroupReporting>>>::destroy(&v95, v68);
    v70 = v98;
  }

  else
  {
    v70 = 0;
  }

  return v70;
}

- (id)readDeltaStats:(id *)stats
{
  v29[3] = *MEMORY[0x277D85DE8];
  if ([(CLPCReportingClient *)self ensureStatsEnabled:stats]&& (v25[0] = 0, (v5 = IOReportCreateSamples()) != 0))
  {
    if (self->thread_group_stats_requested)
    {
      if (self->previous_timestamp)
      {
        v28[0] = @"format";
        v28[1] = @"group_ids";
        v29[0] = @"shared_report";
        v29[1] = @"all";
        v28[2] = @"last_request_time";
        v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
        v29[2] = v6;
        v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:3];
      }

      else
      {
        v7 = &unk_28701A790;
      }

      v10 = [&unk_28701A768 objectForKeyedSubscript:@"method"];
      clpc::user::iokit::CLPC::performRPC(v25, &self->super.clpc, v10, v7);

      v11 = v25[0];
      if (stats && !v25[0])
      {
        v26 = *MEMORY[0x277CCA068];
        v27 = @"Unable to query thread groups.";
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
        *stats = [MEMORY[0x277CCA9B8] errorWithDomain:@"CLPCErrorDomain" code:-536870199 userInfo:v12];

        v11 = v25[0];
      }

      v9 = v11;
      if (self->prev_report_acc.__table_.__size_)
      {
        v13 = 1;
      }

      else
      {
        v13 = self->prev_report_cluster_acc.__table_.__size_ != 0;
      }

      [(CLPCReportingClient *)self decodeTGRawData:v9 delta:v13 error:stats];
    }

    else
    {
      v9 = 0;
    }

    v14 = v5;
    v24 = v14;
    v15 = [(CLPCReportingClient *)&self->super.super.isa buildSchemas:stats error:?];

    if (v15)
    {
      samples = self->prev_sample_list.samples;
      if (samples)
      {
        v17 = samples;
        v25[0] = 0;
        SamplesDelta = IOReportCreateSamplesDelta();
        if (v25[0])
        {
          *stats = v25[0];
        }

        if (SamplesDelta)
        {
          objc_storeStrong(&self->prev_sample_list.samples, v5);
          v22 = SamplesDelta;
          v19 = SamplesDelta;
          v8 = [CLPCReportingClient convertSampleList:&v22 error:?];
        }

        else
        {
          v20 = v14;
          v8 = 0;
          v19 = self->prev_sample_list.samples;
          self->prev_sample_list.samples = v20;
        }
      }

      else
      {
        objc_storeStrong(&self->prev_sample_list.samples, v5);
        v23 = v14;
        v8 = [CLPCReportingClient convertSampleList:&v23 error:?];
        v19 = v23;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)setTGSortingMetric:(unint64_t)metric error:(id *)error
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = HIDWORD(metric) < 0xB && HIDWORD(metric) == 9;
  v5 = v4;
  if (v4)
  {
    self->tg_sorting_metric = metric;
  }

  else if (error)
  {
    v9 = *MEMORY[0x277CCA068];
    v10[0] = @"Invalid stat ID provided to sort TG stats by.";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"CLPCErrorDomain" code:-536870206 userInfo:v7];
  }

  return v5;
}

- (id).cxx_construct
{
  *(self + 72) = 0u;
  *(self + 88) = 0u;
  *(self + 26) = 1065353216;
  *(self + 7) = 0u;
  *(self + 8) = 0u;
  *(self + 36) = 1065353216;
  *(self + 152) = 0u;
  *(self + 168) = 0u;
  *(self + 46) = 1065353216;
  *(self + 25) = 0;
  *(self + 26) = 0;
  *(self + 24) = 0;
  *(self + 216) = 0u;
  *(self + 232) = 0u;
  *(self + 62) = 1065353216;
  *(self + 33) = 0;
  *(self + 34) = 0;
  *(self + 32) = 0;
  *(self + 45) = 0;
  *(self + 328) = 0u;
  *(self + 344) = 0u;
  *(self + 296) = 0u;
  *(self + 312) = 0u;
  *(self + 280) = 0u;
  v2 = self + 408;
  v3 = 440;
  do
  {
    *(v2 - 2) = 0uLL;
    *(v2 - 1) = 0uLL;
    *v2 = 1065353216;
    v2 += 10;
    v3 -= 40;
  }

  while (v3);
  *(self + 816) = 0;
  *(self + 832) = 0;
  *(self + 105) = 0;
  *(self + 107) = 0;
  *(self + 108) = 0;
  *(self + 109) = 0;
  *(self + 106) = &unk_2870185D8;
  *(self + 55) = 0u;
  *(self + 56) = 0u;
  *(self + 228) = 1065353216;
  *(self + 920) = 0u;
  *(self + 936) = 0u;
  *(self + 238) = 1065353216;
  *(self + 60) = 0u;
  *(self + 61) = 0u;
  *(self + 248) = 1065353216;
  *(self + 127) = 0;
  *(self + 126) = 0;
  *(self + 125) = self + 1008;
  *(self + 1032) = 0u;
  *(self + 1048) = 0u;
  *(self + 266) = 1065353216;
  *(self + 67) = 0u;
  *(self + 68) = 0u;
  *(self + 276) = 1065353216;
  *(self + 1112) = 0u;
  *(self + 1128) = 0u;
  *(self + 286) = 1065353216;
  *(self + 72) = 0u;
  *(self + 73) = 0u;
  *(self + 296) = 1065353216;
  return self;
}

- (__n128)buildSchemas:error:
{
  *a2 = &unk_287018748;
  result = *(self + 8);
  *(a2 + 24) = *(self + 24);
  *(a2 + 8) = result;
  return result;
}

- (void)buildSchemas:error:
{
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  v13 = &unk_2870186A0;
  v14 = v3;
  ChannelID = IOReportChannelGetChannelID();
  v5 = **(self + 8);
  v15 = ChannelID;
  v6 = std::__hash_table<std::__hash_value_type<unsigned long long,CLPCReportingStatID>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CLPCReportingStatID>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CLPCReportingStatID>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CLPCReportingStatID>>>::find<unsigned long long>((v5 + 72), &v15);
  if (v6 && v6[3] == **(self + 16))
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", ChannelID, v13, v14];
    v8 = *(self + 24);
    v9 = *v8;
    *v8 = v7;

    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:ChannelID];
    v11 = *(self + 32);
    v12 = *v11;
    *v11 = v10;
  }

  clpc::user::ioreport::Sample::~Sample(&v13);
}

@end